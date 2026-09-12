Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@ExportImage:bb.a
  %i.aj = fmul double %i.ah, %i.ai
  %i.ak = fptosi double %i.aj to i32              ; 2 uses
  %i.al = icmp slt i32 %i.c, 4
  %i.am = icmp slt i32 %i.f, 4
  %or.cond.i = and i1 %i.al, %i.am
  br i1 %or.cond.i, label %bb.r, label %GetPixelDataSize.exit

bb.r:                                             ; preds = %bb.q
  %i.an = and i32 %i.k, -2
  %or.cond3.i = icmp eq i32 %i.an, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = and i32 %i.k, -8
  %or.cond5.i = icmp eq i32 %i.ao, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.ak
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.q, %bb.r, %bb.s
  %.016.i = phi i32 [ %i.ak, %bb.q ], [ 8, %bb.r ], [ %spec.select.i, %bb.s ]
  %i.ap = tail call zeroext i1 @SaveFileData(ptr noundef %1, ptr noundef nonnull %i.h, i32 noundef %.016.i) #52
  %i.aq = zext i1 %i.ap to i32
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.29) #52
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %stbi_write_bmp.exit, %GetPixelDataSize.exit, %bb.t, %bb.n, %bb.g
  %.036 = phi i32 [ %i.r, %bb.g ], [ %.0.i, %stbi_write_bmp.exit ], [ %i.ac, %bb.n ], [ 0, %bb.m ], [ %i.aq, %GetPixelDataSize.exit ], [ 0, %bb.t ]
  br i1 %.034, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %.033) #52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not = icmp eq i32 %.036, 0
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.30, ptr noundef %1) #52
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.31, ptr noundef %1) #52
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.y ], [ true, %bb.x ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @LoadImageColors(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = mul nsw i32 %i.e, %i.b                   ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #53 ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4              ; 4 uses
  %i.m = icmp sgt i32 %i.l, 13
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.59) #52
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, -8
  %or.cond8 = icmp ult i32 %i.n, 3
  br i1 %or.cond8, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, 10
  br i1 %i.o, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.str.70.sink = phi ptr [ @.str.70, %bb.d ], [ @.str.71, %bb.e ]
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull %.str.70.sink) #52
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %i.p = icmp sgt i32 %i.g, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8                ; 13 uses
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 18 uses
  %.0175195 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.u ] ; 23 uses
  switch i32 %i.l, label %bb.u [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 5, label %bb.j
    i32 3, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 4, label %bb.n
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.r
    i32 12, label %bb.s
    i32 13, label %bb.t
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.s, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 %i.s, ptr %i.u, align 1
  %i.v = load i8, ptr %i.r, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %i.v, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store i8 -1, ptr %i.x, align 1
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %.0175195 to i64
  %i.z = getelementptr inbounds i8, ptr %i.q, i64 %i.y ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = load i8, ptr %i.z, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = getelementptr i8, ptr %i.z, i64 1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = add nsw i32 %.0175195, 2
  br label %bb.u

bb.j:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2            ; 4 uses
  %i.al = lshr i16 %i.ak, 8
  %i.am = trunc nuw i16 %i.al to i8
  %i.an = and i8 %i.am, -8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = lshr i16 %i.ak, 3
  %i.aq = trunc i16 %i.ap to i8
  %i.ar = and i8 %i.aq, -8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.ar, ptr %i.as, align 1
  %.tr179 = trunc i16 %i.ak to i8
  %i.at = shl i8 %.tr179, 2
  %i.au = and i8 %i.at, -8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = trunc i16 %i.ak to i1
  %i.ax = sext i1 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  store i8 %i.ax, ptr %i.ay, align 1
  br label %bb.u

bb.k:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 2            ; 3 uses
  %i.bb = lshr i16 %i.ba, 8
  %i.bc = trunc nuw i16 %i.bb to i8
  %i.bd = and i8 %i.bc, -8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.bd, ptr %i.be, align 1
  %i.bf = lshr i16 %i.ba, 3
  %i.bg = trunc i16 %i.bf to i8
  %i.bh = and i8 %i.bg, -4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.bh, ptr %i.bi, align 1
  %.tr = trunc i16 %i.ba to i8
  %i.bj = shl i8 %.tr, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  store i8 -1, ptr %i.bl, align 1
  br label %bb.u

bb.l:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %2 = load i16, ptr %i.bm, align 2               ; 4 uses
  %3 = lshr i16 %2, 4
  %4 = lshr i16 %2, 8
  %i.bn = lshr i16 %2, 12
  %5 = insertelement <4 x i16> poison, i16 %3, i64 0
  %6 = insertelement <4 x i16> %5, i16 %2, i64 1
  %i.bo = trunc nuw i16 %4 to i8
  %7 = trunc nuw nsw i16 %i.bn to i8
  %8 = insertelement <4 x i8> poison, i8 %7, i64 0
  %i.bp = insertelement <4 x i8> %8, i8 %i.bo, i64 1
  %9 = trunc <4 x i16> %6 to <4 x i8>
  %10 = shufflevector <4 x i8> %i.bp, <4 x i8> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %11 = and <4 x i8> %10, <i8 -1, i8 15, i8 15, i8 15>
  %i.bq = mul nuw <4 x i8> %11, splat (i8 17)
  store <4 x i8> %i.bq, ptr %1, align 1
  br label %bb.u

bb.m:                                             ; preds = %bb.g
  %i.br = sext i32 %.0175195 to i64
  %i.bs = getelementptr inbounds i8, ptr %i.q, i64 %i.br ; 4 uses
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = getelementptr i8, ptr %i.bs, i64 1
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = getelementptr i8, ptr %i.bs, i64 2
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = getelementptr i8, ptr %i.bs, i64 3
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 %i.cc, ptr %i.cd, align 1
  %i.ce = add nsw i32 %.0175195, 4
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.cf = sext i32 %.0175195 to i64
  %i.cg = getelementptr inbounds i8, ptr %i.q, i64 %i.cf ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = getelementptr i8, ptr %i.cg, i64 1
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = getelementptr i8, ptr %i.cg, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  store i8 -1, ptr %i.cp, align 1
  %i.cq = add nsw i32 %.0175195, 3
  br label %bb.u

bb.o:                                             ; preds = %bb.g
  %i.cr = sext i32 %.0175195 to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = fmul float %i.ct, 2.550000e+02
  %i.cv = fptoui float %i.cu to i8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.cv, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 0, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 0, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store i8 -1, ptr %i.cz, align 1
  %i.da = add nsw i32 %.0175195, 1
  br label %bb.u

bb.p:                                             ; preds = %bb.g
  %i.db = sext i32 %.0175195 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.db ; 3 uses
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = fmul float %i.dd, 2.550000e+02
  %i.df = fptoui float %i.de to i8
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.df, ptr %i.dg, align 1
  %i.dh = getelementptr i8, ptr %i.dc, i64 4
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = fmul float %i.di, 2.550000e+02
  %i.dk = fptoui float %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store i8 %i.dk, ptr %i.dl, align 1
  %i.dm = getelementptr i8, ptr %i.dc, i64 8
  %i.dn = load float, ptr %i.dm, align 4
  %i.do = fmul float %i.dn, 2.550000e+02
  %i.dp = fptoui float %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  store i8 -1, ptr %i.dr, align 1
  %i.ds = add nsw i32 %.0175195, 3
  br label %bb.u

bb.q:                                             ; preds = %bb.g
  %i.dt = sext i32 %.0175195 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dt ; 4 uses
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = fmul float %i.dv, 2.550000e+02
  %i.dx = fptoui float %i.dw to i8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.dx, ptr %i.dy, align 1
  %i.dz = getelementptr i8, ptr %i.du, i64 4
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = fmul float %i.ea, 2.550000e+02
  %i.ec = fptoui float %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store i8 %i.ec, ptr %i.ed, align 1
  %i.ee = getelementptr i8, ptr %i.du, i64 8
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = fmul float %i.ef, 2.550000e+02
  %i.eh = fptoui float %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store i8 %i.eh, ptr %i.ei, align 1
  %i.ej = getelementptr i8, ptr %i.du, i64 12
  %i.ek = load float, ptr %i.ej, align 4
  %i.el = fmul float %i.ek, 2.550000e+02
  %i.em = fptoui float %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 3
  store i8 %i.em, ptr %i.en, align 1
  %i.eo = add nsw i32 %.0175195, 4
  br label %bb.u

bb.r:                                             ; preds = %bb.g
  %i.ep = sext i32 %.0175195 to i64
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2            ; 2 uses
  %i.es = zext i16 %i.er to i32                   ; 2 uses
  %i.et = lshr i32 %i.es, 10
  %i.eu = and i32 %i.et, 31                       ; 2 uses
  %i.ev = shl nuw nsw i32 %i.es, 13               ; 2 uses
  %i.ew = and i32 %i.ev, 8380416                  ; 3 uses
  %i.ex = uitofp nneg i32 %i.ew to float
  %i.ey = bitcast float %i.ex to i32              ; 2 uses
  %i.ez = lshr i32 %i.ey, 23
  %.signext.i = sext i16 %i.er to i32
  %i.fa = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.eu, 0                  ; 2 uses
  %i.fb = shl nuw nsw i32 %i.eu, 23
  %i.fc = add nuw nsw i32 %i.fb, 939524096
  %i.fd = or disjoint i32 %i.fc, %i.ew
  %i.fe = select i1 %.not.i, i32 0, i32 %i.fd
  %i.ff = or disjoint i32 %i.fe, %i.fa
  %i.fg = icmp ne i32 %i.ew, 0
  %i.fh = and i1 %.not.i, %i.fg
  %i.fi = and i32 %i.ey, 2139095040
  %i.fj = add nsw i32 %i.fi, -310378496
  %i.fk = sub nsw i32 150, %i.ez
  %i.fl = shl i32 %i.ev, %i.fk
  %i.fm = and i32 %i.fl, 8380416
  %i.fn = or disjoint i32 %i.fm, %i.fj
  %i.fo = select i1 %i.fh, i32 %i.fn, i32 0
  %i.fp = or i32 %i.ff, %i.fo
  %i.fq = bitcast i32 %i.fp to float
  %i.fr = fmul float %i.fq, 2.550000e+02
  %i.fs = fptoui float %i.fr to i8
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.fs, ptr %i.ft, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  store i8 0, ptr %i.fu, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  store i8 0, ptr %i.fv, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 3
  store i8 -1, ptr %i.fw, align 1
  %i.fx = add nsw i32 %.0175195, 1
  br label %bb.u

bb.s:                                             ; preds = %bb.g
  %i.fy = sext i32 %.0175195 to i64
  %i.fz = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.fy ; 3 uses
  %i.ga = load i16, ptr %i.fz, align 2            ; 2 uses
  %i.gb = zext i16 %i.ga to i32                   ; 2 uses
  %i.gc = lshr i32 %i.gb, 10
  %i.gd = and i32 %i.gc, 31                       ; 2 uses
  %i.ge = shl nuw nsw i32 %i.gb, 13               ; 2 uses
  %i.gf = and i32 %i.ge, 8380416                  ; 3 uses
  %i.gg = uitofp nneg i32 %i.gf to float
  %i.gh = bitcast float %i.gg to i32              ; 2 uses
  %i.gi = lshr i32 %i.gh, 23
  %.signext.i180 = sext i16 %i.ga to i32
  %i.gj = and i32 %.signext.i180, -2147483648
  %.not.i181 = icmp eq i32 %i.gd, 0               ; 2 uses
  %i.gk = shl nuw nsw i32 %i.gd, 23
  %i.gl = add nuw nsw i32 %i.gk, 939524096
  %i.gm = or disjoint i32 %i.gl, %i.gf
  %i.gn = select i1 %.not.i181, i32 0, i32 %i.gm
  %i.go = or disjoint i32 %i.gn, %i.gj
  %i.gp = icmp ne i32 %i.gf, 0
  %i.gq = and i1 %.not.i181, %i.gp
  %i.gr = and i32 %i.gh, 2139095040
  %i.gs = add nsw i32 %i.gr, -310378496
  %i.gt = sub nsw i32 150, %i.gi
  %i.gu = shl i32 %i.ge, %i.gt
  %i.gv = and i32 %i.gu, 8380416
  %i.gw = or disjoint i32 %i.gv, %i.gs
  %i.gx = select i1 %i.gq, i32 %i.gw, i32 0
  %i.gy = or i32 %i.go, %i.gx
  %i.gz = bitcast i32 %i.gy to float
  %i.ha = fmul float %i.gz, 2.550000e+02
  %i.hb = fptoui float %i.ha to i8
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.hb, ptr %i.hc, align 1
  %i.hd = getelementptr i8, ptr %i.fz, i64 2
  %i.he = load i16, ptr %i.hd, align 2            ; 2 uses
  %i.hf = zext i16 %i.he to i32                   ; 2 uses
  %i.hg = lshr i32 %i.hf, 10
  %i.hh = and i32 %i.hg, 31                       ; 2 uses
  %i.hi = shl nuw nsw i32 %i.hf, 13               ; 2 uses
  %i.hj = and i32 %i.hi, 8380416                  ; 3 uses
  %i.hk = uitofp nneg i32 %i.hj to float
end_hunk_0
begin_hunk_1_@LoadImagePalette:bb.a
  %i.ae = load i8, ptr %i.ap, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.w, %i.aj
  br i1 %i.ak, label %.loopexit.us, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge_crit_edge.us, label %bb.c

bb.h:                                             ; preds = %..critedge_crit_edge.us
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.72, i32 noundef %1) #52
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.f, %bb.h, %..critedge_crit_edge.us, %.lr.ph61.split.us
  %.246.us = phi i32 [ %.04459.us, %.lr.ph61.split.us ], [ %i.at, %..critedge_crit_edge.us ], [ %i.at, %bb.h ], [ %.04459.us, %bb.f ] ; 2 uses
  %.2.us = phi i32 [ %.04360.us, %.lr.ph61.split.us ], [ %.04360.us, %..critedge_crit_edge.us ], [ %i.l, %bb.h ], [ %.04360.us, %bb.f ]
  %i.al = add nuw nsw i32 %.2.us, 1               ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.l
  br i1 %i.am, label %.lr.ph61.split.us, label %._crit_edge

.preheader.us:                                    ; preds = %.lr.ph61.split.us
  %i.an = load i8, ptr %i.u, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  br label %bb.c

..critedge_crit_edge.us:                          ; preds = %bb.g
  %i.aq = sext i32 %.04459.us to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aq
  %i.as = load i32, ptr %i.u, align 1
  store i32 %i.as, ptr %i.ar, align 1
  %i.at = add nsw i32 %.04459.us, 1               ; 3 uses
  %.not54.us = icmp slt i32 %i.at, %1
  br i1 %.not54.us, label %.loopexit.us, label %bb.h

._crit_edge:                                      ; preds = %bb.j, %.loopexit.us, %.preheader55.thread, %.preheader55
  %.044.lcssa = phi i32 [ 0, %.preheader55 ], [ 0, %.preheader55.thread ], [ %.246.us, %.loopexit.us ], [ %.246, %bb.j ]
  tail call void @free(ptr noundef nonnull %i.a) #52
  br label %bb.k

.lr.ph61.split:                                   ; preds = %.preheader55.thread, %bb.j
  %.04360 = phi i32 [ %i.bc, %bb.j ], [ 0, %.preheader55.thread ] ; 3 uses
  %.04459 = phi i32 [ %.246, %bb.j ], [ 0, %.preheader55.thread ] ; 3 uses
  %i.au = zext nneg i32 %.04360 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.ax = load i8, ptr %i.aw, align 1
  %.not53 = icmp eq i8 %i.ax, 0
  br i1 %.not53, label %bb.j, label %.preheader

.preheader:                                       ; preds = %.lr.ph61.split
  %i.ay = sext i32 %.04459 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ay
  %i.ba = load i32, ptr %i.av, align 1
  store i32 %i.ba, ptr %i.az, align 1
  %i.bb = add nsw i32 %.04459, 1                  ; 3 uses
  %.not54 = icmp slt i32 %i.bb, %1
  br i1 %.not54, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.72, i32 noundef %1) #52
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader, %.lr.ph61.split
  %.246 = phi i32 [ %.04459, %.lr.ph61.split ], [ %i.bb, %.preheader ], [ %i.bb, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %.04360, %.lr.ph61.split ], [ %.04360, %.preheader ], [ %i.r, %bb.i ]
  %i.bc = add nuw nsw i32 %.2, 1                  ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.r
  br i1 %i.bd, label %.lr.ph61.split, label %._crit_edge

bb.k:                                             ; preds = %._crit_edge, %bb.a
  %.047 = phi ptr [ %i.d, %._crit_edge ], [ null, %bb.a ]
  %.3 = phi i32 [ %.044.lcssa, %._crit_edge ], [ 0, %bb.a ]
  store i32 %.3, ptr %2, align 4
  ret ptr %.047
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadImagePalette(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @free(ptr noundef %0) #52
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GetImageColor(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 14 uses
  %i.d = icmp slt i32 %1, %i.c
  %i.e = icmp sgt i32 %2, -1
  %or.cond = and i1 %i.e, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %2, %i.g
  %or.cond89 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond89, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %bb.q [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 5, label %bb.f
    i32 3, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 4, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.n
    i32 12, label %bb.o
    i32 13, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8
  %i.l = mul nuw nsw i32 %i.c, %2
  %i.m = add nuw nsw i32 %i.l, %1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.p, i64 0
  %i.r = shufflevector <4 x i8> %i.q, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8
  %i.t = mul nuw nsw i32 %i.c, %2
  %i.u = add nuw nsw i32 %i.t, %1
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = load <2 x i8>, ptr %i.x, align 1
  %i.z = shufflevector <2 x i8> %i.y, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = mul nuw nsw i32 %i.c, %2
  %i.ac = add nuw nsw i32 %i.ab, %1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2            ; 4 uses
  %i.ag = lshr i16 %i.af, 8
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = lshr i16 %i.af, 3
  %i.aj = trunc i16 %i.ai to i8
  %.tr86 = trunc i16 %i.af to i8
  %i.ak = shl i8 %.tr86, 2
  %i.al = trunc i16 %i.af to i1
  %i.am = sext i1 %i.al to i8
  %i.an = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.aj, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.ak, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 3
  %i.ar = and <4 x i8> %i.aq, <i8 -8, i8 -8, i8 -8, i8 -1>
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %0, align 8
  %i.at = mul nuw nsw i32 %i.c, %2
  %i.au = add nuw nsw i32 %i.at, %1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2            ; 3 uses
  %i.ay = lshr i16 %i.ax, 3
  %i.az = lshr i16 %i.ax, 8
  %i.ba = trunc i16 %i.ay to i8
  %i.bb = trunc nuw i16 %i.az to i8
  %i.bc = insertelement <2 x i8> poison, i8 %i.bb, i64 0
  %i.bd = insertelement <2 x i8> %i.bc, i8 %i.ba, i64 1
  %i.be = and <2 x i8> %i.bd, <i8 -8, i8 -4>
  %.tr = trunc i16 %i.ax to i8
  %i.bf = shl i8 %.tr, 3
  %i.bg = shufflevector <2 x i8> %i.be, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = insertelement <4 x i8> %i.bg, i8 -1, i64 3
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.bf, i64 2
  br label %bb.s

bb.h:                                             ; preds = %bb.c
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = mul nuw nsw i32 %i.c, %2
  %i.bl = add nuw nsw i32 %i.bk, %1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2            ; 4 uses
  %i.bp = lshr i16 %i.bo, 8
  %i.bq = lshr i16 %i.bo, 12
  %3 = lshr i16 %i.bo, 4
  %i.br = trunc nuw i16 %i.bp to i8
  %4 = trunc nuw nsw i16 %i.bq to i8
  %5 = insertelement <4 x i16> poison, i16 %3, i64 0
  %6 = insertelement <4 x i16> %5, i16 %i.bo, i64 1
  %7 = insertelement <4 x i8> poison, i8 %4, i64 0
  %8 = insertelement <4 x i8> %7, i8 %i.br, i64 1
  %9 = trunc <4 x i16> %6 to <4 x i8>
  %10 = shufflevector <4 x i8> %8, <4 x i8> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %11 = and <4 x i8> %10, <i8 -1, i8 15, i8 15, i8 15>
  %i.bs = mul nuw <4 x i8> %11, splat (i8 17)
  br label %bb.s

bb.i:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %0, align 8
  %i.bu = mul nuw nsw i32 %i.c, %2
  %i.bv = add nuw nsw i32 %i.bu, %1
  %i.bw = shl nsw i32 %i.bv, 2
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx
  %i.bz = load <4 x i8>, ptr %i.by, align 1
  br label %bb.s

bb.j:                                             ; preds = %bb.c
  %i.ca = load ptr, ptr %0, align 8
  %i.cb = mul nuw nsw i32 %i.c, %2
  %i.cc = add nuw nsw i32 %i.cb, %1
  %i.cd = mul nsw i32 %i.cc, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ce ; 2 uses
  %i.cg = load <2 x i8>, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = shufflevector <2 x i8> %i.cg, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = insertelement <4 x i8> %i.cj, i8 -1, i64 3
  %i.cl = insertelement <4 x i8> %i.ck, i8 %i.ci, i64 2
  br label %bb.s

bb.k:                                             ; preds = %bb.c
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = mul nuw nsw i32 %i.c, %2
  %i.co = add nuw nsw i32 %i.cn, %1
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4
  %i.cs = fmul float %i.cr, 2.550000e+02
  %i.ct = fptoui float %i.cs to i8
  %i.cu = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 -1>, i8 %i.ct, i64 0
  br label %bb.s

bb.l:                                             ; preds = %bb.c
  %i.cv = load ptr, ptr %0, align 8
  %i.cw = mul nuw nsw i32 %i.c, %2
  %i.cx = add nuw nsw i32 %i.cw, %1
  %i.cy = mul nsw i32 %i.cx, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cz ; 2 uses
  %i.db = load <2 x float>, ptr %i.da, align 4
  %i.dc = fmul <2 x float> %i.db, splat (float 2.550000e+02)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load float, ptr %i.dd, align 4
  %i.df = fmul float %i.de, 2.550000e+02
  %i.dg = fptoui float %i.df to i8
  %i.dh = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.dg, i64 2
  %i.di = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = fptoui <4 x float> %i.di to <4 x i8>
  %i.dk = shufflevector <4 x i8> %i.dj, <4 x i8> %i.dh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.s

bb.m:                                             ; preds = %bb.c
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = mul nuw nsw i32 %i.c, %2
  %i.dn = add nuw nsw i32 %i.dm, %1
  %i.do = shl nsw i32 %i.dn, 2
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dp
  %i.dr = load <4 x float>, ptr %i.dq, align 4
  %i.ds = fmul <4 x float> %i.dr, splat (float 2.550000e+02)
  %i.dt = fptoui <4 x float> %i.ds to <4 x i8>
  br label %bb.s

bb.n:                                             ; preds = %bb.c
  %i.du = load ptr, ptr %0, align 8
  %i.dv = mul nuw nsw i32 %i.c, %2
  %i.dw = add nuw nsw i32 %i.dv, %1
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2            ; 2 uses
  %i.ea = zext i16 %i.dz to i32                   ; 2 uses
  %i.eb = lshr i32 %i.ea, 10
  %i.ec = and i32 %i.eb, 31                       ; 2 uses
  %i.ed = shl nuw nsw i32 %i.ea, 13               ; 2 uses
  %i.ee = and i32 %i.ed, 8380416                  ; 3 uses
  %i.ef = uitofp nneg i32 %i.ee to float
  %i.eg = bitcast float %i.ef to i32              ; 2 uses
  %i.eh = lshr i32 %i.eg, 23
  %.signext.i = sext i16 %i.dz to i32
  %i.ei = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.ec, 0                  ; 2 uses
  %i.ej = shl nuw nsw i32 %i.ec, 23
  %i.ek = add nuw nsw i32 %i.ej, 939524096
  %i.el = or disjoint i32 %i.ek, %i.ee
  %i.em = select i1 %.not.i, i32 0, i32 %i.el
  %i.en = or disjoint i32 %i.em, %i.ei
  %i.eo = icmp ne i32 %i.ee, 0
  %i.ep = and i1 %.not.i, %i.eo
  %i.eq = and i32 %i.eg, 2139095040
  %i.er = add nsw i32 %i.eq, -310378496
  %i.es = sub nsw i32 150, %i.eh
  %i.et = shl i32 %i.ed, %i.es
  %i.eu = and i32 %i.et, 8380416
  %i.ev = or disjoint i32 %i.eu, %i.er
  %i.ew = select i1 %i.ep, i32 %i.ev, i32 0
  %i.ex = or i32 %i.en, %i.ew
  %i.ey = bitcast i32 %i.ex to float
  %i.ez = fmul float %i.ey, 2.550000e+02
  %i.fa = fptoui float %i.ez to i8
  %i.fb = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 -1>, i8 %i.fa, i64 0
  br label %bb.s

bb.o:                                             ; preds = %bb.c
  %i.fc = load ptr, ptr %0, align 8
  %i.fd = mul nuw nsw i32 %i.c, %2
  %i.fe = add nuw nsw i32 %i.fd, %1
  %i.ff = mul nsw i32 %i.fe, 3
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr [2 x i8], ptr %i.fc, i64 %i.fg ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2            ; 2 uses
  %i.fj = zext i16 %i.fi to i32                   ; 2 uses
  %i.fk = lshr i32 %i.fj, 10
  %i.fl = and i32 %i.fk, 31                       ; 2 uses
  %i.fm = shl nuw nsw i32 %i.fj, 13               ; 2 uses
  %i.fn = and i32 %i.fm, 8380416                  ; 3 uses
  %i.fo = uitofp nneg i32 %i.fn to float
  %i.fp = bitcast float %i.fo to i32              ; 2 uses
  %i.fq = lshr i32 %i.fp, 23
  %.signext.i90 = sext i16 %i.fi to i32
  %i.fr = and i32 %.signext.i90, -2147483648
  %.not.i91 = icmp eq i32 %i.fl, 0                ; 2 uses
  %i.fs = shl nuw nsw i32 %i.fl, 23
  %i.ft = add nuw nsw i32 %i.fs, 939524096
  %i.fu = or disjoint i32 %i.ft, %i.fn
  %i.fv = select i1 %.not.i91, i32 0, i32 %i.fu
  %i.fw = or disjoint i32 %i.fv, %i.fr
  %i.fx = icmp ne i32 %i.fn, 0
  %i.fy = and i1 %.not.i91, %i.fx
  %i.fz = and i32 %i.fp, 2139095040
  %i.ga = add nsw i32 %i.fz, -310378496
  %i.gb = sub nsw i32 150, %i.fq
  %i.gc = shl i32 %i.fm, %i.gb
  %i.gd = and i32 %i.gc, 8380416
  %i.ge = or disjoint i32 %i.gd, %i.ga
  %i.gf = select i1 %i.fy, i32 %i.ge, i32 0
  %i.gg = or i32 %i.fw, %i.gf
  %i.gh = bitcast i32 %i.gg to float
  %i.gi = fmul float %i.gh, 2.550000e+02
  %i.gj = fptoui float %i.gi to i8
  %i.gk = getelementptr i8, ptr %i.fh, i64 2
  %i.gl = load <2 x i16>, ptr %i.gk, align 2      ; 2 uses
  %i.gm = zext <2 x i16> %i.gl to <2 x i32>       ; 2 uses
  %i.gn = lshr <2 x i32> %i.gm, splat (i32 10)
  %i.go = and <2 x i32> %i.gn, splat (i32 31)     ; 2 uses
  %i.gp = shl nuw nsw <2 x i32> %i.gm, splat (i32 13) ; 3 uses
  %i.gq = and <2 x i32> %i.gp, splat (i32 8380416) ; 3 uses
  %i.gr = uitofp nneg <2 x i32> %i.gq to <2 x float>
  %i.gs = bitcast <2 x float> %i.gr to <2 x i32>  ; 2 uses
  %i.gt = lshr <2 x i32> %i.gs, splat (i32 23)
  %i.gu = sext <2 x i16> %i.gl to <2 x i32>
  %i.gv = and <2 x i32> %i.gu, splat (i32 -2147483648)
  %i.gw = icmp eq <2 x i32> %i.go, zeroinitializer ; 2 uses
  %i.gx = shl nuw nsw <2 x i32> %i.go, splat (i32 23)
  %i.gy = add nuw nsw <2 x i32> %i.gx, splat (i32 939524096)
  %i.gz = or disjoint <2 x i32> %i.gy, %i.gq
  %i.ha = select <2 x i1> %i.gw, <2 x i32> zeroinitializer, <2 x i32> %i.gz
  %i.hb = or disjoint <2 x i32> %i.ha, %i.gv
  %i.hc = icmp ne <2 x i32> %i.gq, zeroinitializer
  %i.hd = and <2 x i1> %i.gw, %i.hc
  %i.he = and <2 x i32> %i.gs, splat (i32 2139095040)
  %i.hf = add nsw <2 x i32> %i.he, splat (i32 -310378496)
  %i.hg = sub nsw <2 x i32> splat (i32 150), %i.gt ; 2 uses
  %i.hh = extractelement <2 x i32> %i.gp, i64 1
  %i.hi = extractelement <2 x i32> %i.hg, i64 1
  %i.hj = shl i32 %i.hh, %i.hi
  %i.hk = extractelement <2 x i32> %i.gp, i64 0
  %i.hl = extractelement <2 x i32> %i.hg, i64 0
  %i.hm = shl i32 %i.hk, %i.hl
  %i.hn = insertelement <2 x i32> poison, i32 %i.hm, i64 0
  %i.ho = insertelement <2 x i32> %i.hn, i32 %i.hj, i64 1
  %i.hp = and <2 x i32> %i.ho, splat (i32 8380416)
  %i.hq = or disjoint <2 x i32> %i.hp, %i.hf
  %i.hr = select <2 x i1> %i.hd, <2 x i32> %i.hq, <2 x i32> zeroinitializer
  %i.hs = or <2 x i32> %i.hb, %i.hr
  %i.ht = bitcast <2 x i32> %i.hs to <2 x float>
  %i.hu = fmul <2 x float> %i.ht, splat (float 2.550000e+02)
  %i.hv = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.gj, i64 0
  %i.hw = shufflevector <2 x float> %i.hu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hx = fptoui <4 x float> %i.hw to <4 x i8>
  %i.hy = shufflevector <4 x i8> %i.hv, <4 x i8> %i.hx, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.s

bb.p:                                             ; preds = %bb.c
  %i.hz = load ptr, ptr %0, align 8
  %i.ia = mul nuw nsw i32 %i.c, %2
  %i.ib = add nuw nsw i32 %i.ia, %1
  %i.ic = shl nsw i32 %i.ib, 2
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr [2 x i8], ptr %i.hz, i64 %i.id
  %i.if = load <4 x i16>, ptr %i.ie, align 2      ; 3 uses
  %i.ig = lshr <4 x i16> %i.if, splat (i16 10)
  %i.ih = and <4 x i16> %i.ig, splat (i16 31)     ; 2 uses
  %i.ii = zext <4 x i16> %i.if to <4 x i32>
end_hunk_1
begin_hunk_2_@ImageDrawTriangleLines:bb.a

.lr.ph55.i30:                                     ; preds = %.thread.i23, %.lr.ph55.i30
  %.03954.i31 = phi i32 [ %i.ak, %.lr.ph55.i30 ], [ 0, %.thread.i23 ] ; 2 uses
  %.04053.i32 = phi i32 [ %i.aj, %.lr.ph55.i30 ], [ 0, %.thread.i23 ] ; 2 uses
  %i.ag = ashr i32 %.03954.i31, 16
  %i.ah = add nsw i32 %i.ag, %i.c
  %i.ai = add nsw i32 %.04053.i32, %i.d
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.ah, i32 noundef %i.ai, i32 %4)
  %i.aj = add nsw i32 %.04053.i32, %.041.i22      ; 2 uses
  %i.ak = add nsw i32 %.03954.i31, %i.af
  %.not45.i33 = icmp eq i32 %i.aj, %i.y
  br i1 %.not45.i33, label %ImageDrawLine.exit34, label %.lr.ph55.i30

.lr.ph.i26:                                       ; preds = %.thread.i23, %.lr.ph.i26
  %.051.i27 = phi i32 [ %i.ap, %.lr.ph.i26 ], [ 0, %.thread.i23 ] ; 2 uses
  %.03850.i28 = phi i32 [ %i.ao, %.lr.ph.i26 ], [ 0, %.thread.i23 ] ; 2 uses
  %i.al = add nsw i32 %.03850.i28, %i.c
  %i.am = ashr i32 %.051.i27, 16
  %i.an = add nsw i32 %i.am, %i.d
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.al, i32 noundef %i.an, i32 %4)
  %i.ao = add nsw i32 %.03850.i28, %.041.i22      ; 2 uses
  %i.ap = add nsw i32 %.051.i27, %i.af
  %.not.i29 = icmp eq i32 %i.ao, %i.z
  br i1 %.not.i29, label %ImageDrawLine.exit34, label %.lr.ph.i26

ImageDrawLine.exit34:                             ; preds = %.lr.ph.i26, %.lr.ph55.i30, %ImageDrawLine.exit
  %i.aq = sub nsw i32 %i.b, %i.x                  ; 4 uses
  %i.ar = sub nsw i32 %i.a, %i.w                  ; 4 uses
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.at = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.au = icmp samesign ugt i32 %i.as, %i.at      ; 3 uses
  %spec.select.i35 = select i1 %i.au, i32 %i.aq, i32 %i.ar ; 3 uses
  %.inv.i36 = icmp sgt i32 %spec.select.i35, -1
  %.041.i37 = select i1 %.inv.i36, i32 1, i32 -1  ; 2 uses
  %i.av = icmp eq i32 %spec.select.i35, 0
  br i1 %i.av, label %ImageDrawLine.exit49, label %.thread.i38

.thread.i38:                                      ; preds = %ImageDrawLine.exit34
  %.1.i39 = tail call i32 @llvm.abs.i32(i32 %spec.select.i35, i1 true)
  %spec.select46.i40 = select i1 %i.au, i32 %i.ar, i32 %i.aq
  %i.aw = shl i32 %spec.select46.i40, 16
  %i.ax = sdiv i32 %i.aw, %.1.i39                 ; 2 uses
  br i1 %i.au, label %.lr.ph55.i45, label %.lr.ph.i41

.lr.ph55.i45:                                     ; preds = %.thread.i38, %.lr.ph55.i45
  %.03954.i46 = phi i32 [ %i.bc, %.lr.ph55.i45 ], [ 0, %.thread.i38 ] ; 2 uses
  %.04053.i47 = phi i32 [ %i.bb, %.lr.ph55.i45 ], [ 0, %.thread.i38 ] ; 2 uses
  %i.ay = ashr i32 %.03954.i46, 16
  %i.az = add nsw i32 %i.ay, %i.w
  %i.ba = add nsw i32 %.04053.i47, %i.x
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.az, i32 noundef %i.ba, i32 %4)
  %i.bb = add nsw i32 %.04053.i47, %.041.i37      ; 2 uses
  %i.bc = add nsw i32 %.03954.i46, %i.ax
  %.not45.i48 = icmp eq i32 %i.bb, %i.aq
  br i1 %.not45.i48, label %ImageDrawLine.exit49, label %.lr.ph55.i45

.lr.ph.i41:                                       ; preds = %.thread.i38, %.lr.ph.i41
  %.051.i42 = phi i32 [ %i.bh, %.lr.ph.i41 ], [ 0, %.thread.i38 ] ; 2 uses
  %.03850.i43 = phi i32 [ %i.bg, %.lr.ph.i41 ], [ 0, %.thread.i38 ] ; 2 uses
  %i.bd = add nsw i32 %.03850.i43, %i.w
  %i.be = ashr i32 %.051.i42, 16
  %i.bf = add nsw i32 %i.be, %i.x
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.bd, i32 noundef %i.bf, i32 %4)
  %i.bg = add nsw i32 %.03850.i43, %.041.i37      ; 2 uses
  %i.bh = add nsw i32 %.051.i42, %i.ax
  %.not.i44 = icmp eq i32 %i.bg, %i.ar
  br i1 %.not.i44, label %ImageDrawLine.exit49, label %.lr.ph.i41

ImageDrawLine.exit49:                             ; preds = %.lr.ph.i41, %.lr.ph55.i45, %ImageDrawLine.exit34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleFan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %2, -1
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.e = load <2 x float>, ptr %1, align 4
  %i.f = load <2 x float>, ptr %i.c, align 4
  %i.g = load <2 x float>, ptr %i.d, align 4
  tail call void @ImageDrawTriangle(ptr noundef %0, <2 x float> %i.e, <2 x float> %i.f, <2 x float> %i.g, i32 %3)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleStrip(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %i.a = icmp sgt i32 %2, 2
  br i1 %i.a, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ 2, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.b = and i64 %indvars.iv, 1
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.e = load <2 x float>, ptr %i.d, align 4
  %. = select i1 %i.c, i64 -16, i64 -8
  %.26 = select i1 %i.c, i64 -8, i64 -16
  %i.f = getelementptr i8, ptr %i.d, i64 %.
  %i.g = getelementptr i8, ptr %i.d, i64 %.26
  %i.h = load <2 x float>, ptr %i.f, align 4
  %i.i = load <2 x float>, ptr %i.g, align 4
  tail call void @ImageDrawTriangle(ptr noundef %0, <2 x float> %i.e, <2 x float> %i.h, <2 x float> %i.i, i32 %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @GetPixelColor(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #26 {
bb.a:
  switch i32 %1, label %bb.o [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 4, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  %i.b = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.a, i64 0
  %i.c = shufflevector <4 x i8> %i.b, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = load <2 x i8>, ptr %0, align 1
  %i.e = shufflevector <2 x i8> %i.d, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.f = load i16, ptr %0, align 2                ; 3 uses
  %i.g = lshr i16 %i.f, 11
  %i.h = mul nuw nsw i16 %i.g, 255
  %i.i = udiv i16 %i.h, 31
  %i.j = trunc i16 %i.i to i8
  %i.k = lshr i16 %i.f, 5
  %i.l = insertelement <2 x i16> poison, i16 %i.k, i64 0
  %i.m = insertelement <2 x i16> %i.l, i16 %i.f, i64 1
  %i.n = and <2 x i16> %i.m, <i16 63, i16 31>
  %i.o = mul nuw nsw <2 x i16> %i.n, <i16 85, i16 255>
  %i.p = udiv <2 x i16> %i.o, <i16 21, i16 31>
  %i.q = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.j, i64 0
  %i.r = shufflevector <2 x i16> %i.p, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.s = trunc <4 x i16> %i.r to <4 x i8>
  %i.t = shufflevector <4 x i8> %i.q, <4 x i8> %i.s, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.u = load i16, ptr %0, align 2                ; 4 uses
  %i.v = lshr i16 %i.u, 11
  %i.w = mul nuw nsw i16 %i.v, 255
  %i.x = udiv i16 %i.w, 31
  %i.y = trunc i16 %i.x to i8
  %i.z = lshr i16 %i.u, 6
  %i.aa = insertelement <2 x i16> poison, i16 %i.z, i64 0
  %i.ab = insertelement <2 x i16> %i.aa, i16 %i.u, i64 1
  %i.ac = and <2 x i16> %i.ab, splat (i16 31)
  %i.ad = mul nuw nsw <2 x i16> %i.ac, splat (i16 255)
  %i.ae = udiv <2 x i16> %i.ad, splat (i16 31)
  %.not = trunc i16 %i.u to i1
  %i.af = sext i1 %.not to i8
  %i.ag = insertelement <4 x i8> poison, i8 %i.y, i64 0
  %i.ah = shufflevector <2 x i16> %i.ae, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = trunc <4 x i16> %i.ah to <4 x i8>
  %i.aj = shufflevector <4 x i8> %i.ag, <4 x i8> %i.ai, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.af, i64 3
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.al = load i16, ptr %0, align 2               ; 4 uses
  %i.am = lshr i16 %i.al, 12
  %i.an = lshr i16 %i.al, 8
  %2 = lshr i16 %i.al, 4
  %i.ao = trunc nuw nsw i16 %i.am to i8
  %3 = trunc nuw i16 %i.an to i8
  %4 = insertelement <4 x i16> poison, i16 %2, i64 0
  %5 = insertelement <4 x i16> %4, i16 %i.al, i64 1
  %6 = insertelement <4 x i8> poison, i8 %i.ao, i64 0
  %7 = insertelement <4 x i8> %6, i8 %3, i64 1
  %8 = trunc <4 x i16> %5 to <4 x i8>
  %9 = shufflevector <4 x i8> %7, <4 x i8> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %10 = and <4 x i8> %9, <i8 -1, i8 15, i8 15, i8 15>
  %i.ap = mul nuw <4 x i8> %10, splat (i8 17)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.aq = load <4 x i8>, ptr %0, align 1
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.ar = load <2 x i8>, ptr %0, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = shufflevector <2 x i8> %i.ar, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = insertelement <4 x i8> %i.au, i8 -1, i64 3
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.at, i64 2
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.ax = load float, ptr %0, align 4
  %i.ay = fmul float %i.ax, 2.550000e+02
  %i.az = fptoui float %i.ay to i8
  %i.ba = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.az, i64 0
  %i.bb = shufflevector <4 x i8> %i.ba, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.bc = load <2 x float>, ptr %0, align 4
  %i.bd = fmul <2 x float> %i.bc, splat (float 2.550000e+02)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fmul float %i.bf, 2.550000e+02
  %i.bh = fptoui float %i.bg to i8
  %i.bi = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.bh, i64 2
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = fptoui <4 x float> %i.bj to <4 x i8>
  %i.bl = shufflevector <4 x i8> %i.bk, <4 x i8> %i.bi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.bm = load <4 x float>, ptr %0, align 4
  %i.bn = fmul <4 x float> %i.bm, splat (float 2.550000e+02)
  %i.bo = fptoui <4 x float> %i.bn to <4 x i8>
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.bp = load i16, ptr %0, align 2               ; 2 uses
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = lshr i32 %i.bq, 10
  %i.bs = and i32 %i.br, 31                       ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bq, 13               ; 2 uses
  %i.bu = and i32 %i.bt, 8380416                  ; 3 uses
  %i.bv = uitofp nneg i32 %i.bu to float
  %i.bw = bitcast float %i.bv to i32              ; 2 uses
  %i.bx = lshr i32 %i.bw, 23
  %.signext.i = sext i16 %i.bp to i32
  %i.by = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.bs, 0                  ; 2 uses
  %i.bz = shl nuw nsw i32 %i.bs, 23
  %i.ca = add nuw nsw i32 %i.bz, 939524096
  %i.cb = or disjoint i32 %i.ca, %i.bu
  %i.cc = select i1 %.not.i, i32 0, i32 %i.cb
  %i.cd = or disjoint i32 %i.cc, %i.by
  %i.ce = icmp ne i32 %i.bu, 0
  %i.cf = and i1 %.not.i, %i.ce
  %i.cg = and i32 %i.bw, 2139095040
  %i.ch = add nsw i32 %i.cg, -310378496
  %i.ci = sub nsw i32 150, %i.bx
  %i.cj = shl i32 %i.bt, %i.ci
  %i.ck = and i32 %i.cj, 8380416
  %i.cl = or disjoint i32 %i.ck, %i.ch
  %i.cm = select i1 %i.cf, i32 %i.cl, i32 0
  %i.cn = or i32 %i.cd, %i.cm
  %i.co = bitcast i32 %i.cn to float
  %i.cp = fmul float %i.co, 2.550000e+02
  %i.cq = fptoui float %i.cp to i8
  %i.cr = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.cq, i64 0
  %i.cs = shufflevector <4 x i8> %i.cr, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ct = load i16, ptr %0, align 2               ; 2 uses
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = lshr i32 %i.cu, 10
  %i.cw = and i32 %i.cv, 31                       ; 2 uses
  %i.cx = shl nuw nsw i32 %i.cu, 13               ; 2 uses
  %i.cy = and i32 %i.cx, 8380416                  ; 3 uses
  %i.cz = uitofp nneg i32 %i.cy to float
  %i.da = bitcast float %i.cz to i32              ; 2 uses
  %i.db = lshr i32 %i.da, 23
  %.signext.i62 = sext i16 %i.ct to i32
  %i.dc = and i32 %.signext.i62, -2147483648
  %.not.i63 = icmp eq i32 %i.cw, 0                ; 2 uses
  %i.dd = shl nuw nsw i32 %i.cw, 23
  %i.de = add nuw nsw i32 %i.dd, 939524096
  %i.df = or disjoint i32 %i.de, %i.cy
  %i.dg = select i1 %.not.i63, i32 0, i32 %i.df
  %i.dh = or disjoint i32 %i.dg, %i.dc
  %i.di = icmp ne i32 %i.cy, 0
  %i.dj = and i1 %.not.i63, %i.di
  %i.dk = and i32 %i.da, 2139095040
  %i.dl = add nsw i32 %i.dk, -310378496
  %i.dm = sub nsw i32 150, %i.db
  %i.dn = shl i32 %i.cx, %i.dm
  %i.do = and i32 %i.dn, 8380416
  %i.dp = or disjoint i32 %i.do, %i.dl
  %i.dq = select i1 %i.dj, i32 %i.dp, i32 0
  %i.dr = or i32 %i.dh, %i.dq
  %i.ds = bitcast i32 %i.dr to float
  %i.dt = fmul float %i.ds, 2.550000e+02
  %i.du = fptoui float %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dw = load <2 x i16>, ptr %i.dv, align 2      ; 2 uses
  %i.dx = zext <2 x i16> %i.dw to <2 x i32>       ; 2 uses
  %i.dy = lshr <2 x i32> %i.dx, splat (i32 10)
  %i.dz = and <2 x i32> %i.dy, splat (i32 31)     ; 2 uses
  %i.ea = shl nuw nsw <2 x i32> %i.dx, splat (i32 13) ; 3 uses
  %i.eb = and <2 x i32> %i.ea, splat (i32 8380416) ; 3 uses
  %i.ec = uitofp nneg <2 x i32> %i.eb to <2 x float>
  %i.ed = bitcast <2 x float> %i.ec to <2 x i32>  ; 2 uses
  %i.ee = lshr <2 x i32> %i.ed, splat (i32 23)
  %i.ef = sext <2 x i16> %i.dw to <2 x i32>
  %i.eg = and <2 x i32> %i.ef, splat (i32 -2147483648)
  %i.eh = icmp eq <2 x i32> %i.dz, zeroinitializer ; 2 uses
  %i.ei = shl nuw nsw <2 x i32> %i.dz, splat (i32 23)
  %i.ej = add nuw nsw <2 x i32> %i.ei, splat (i32 939524096)
  %i.ek = or disjoint <2 x i32> %i.ej, %i.eb
  %i.el = select <2 x i1> %i.eh, <2 x i32> zeroinitializer, <2 x i32> %i.ek
  %i.em = or disjoint <2 x i32> %i.el, %i.eg
  %i.en = icmp ne <2 x i32> %i.eb, zeroinitializer
  %i.eo = and <2 x i1> %i.eh, %i.en
  %i.ep = and <2 x i32> %i.ed, splat (i32 2139095040)
  %i.eq = add nsw <2 x i32> %i.ep, splat (i32 -310378496)
  %i.er = sub nsw <2 x i32> splat (i32 150), %i.ee ; 2 uses
  %i.es = extractelement <2 x i32> %i.ea, i64 1
  %i.et = extractelement <2 x i32> %i.er, i64 1
  %i.eu = shl i32 %i.es, %i.et
  %i.ev = extractelement <2 x i32> %i.ea, i64 0
  %i.ew = extractelement <2 x i32> %i.er, i64 0
  %i.ex = shl i32 %i.ev, %i.ew
  %i.ey = insertelement <2 x i32> poison, i32 %i.ex, i64 0
  %i.ez = insertelement <2 x i32> %i.ey, i32 %i.eu, i64 1
  %i.fa = and <2 x i32> %i.ez, splat (i32 8380416)
  %i.fb = or disjoint <2 x i32> %i.fa, %i.eq
  %i.fc = select <2 x i1> %i.eo, <2 x i32> %i.fb, <2 x i32> zeroinitializer
  %i.fd = or <2 x i32> %i.em, %i.fc
  %i.fe = bitcast <2 x i32> %i.fd to <2 x float>
  %i.ff = fmul <2 x float> %i.fe, splat (float 2.550000e+02)
  %i.fg = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.du, i64 0
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fi = fptoui <4 x float> %i.fh to <4 x i8>
  %i.fj = shufflevector <4 x i8> %i.fg, <4 x i8> %i.fi, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.fk = load <4 x i16>, ptr %0, align 2         ; 3 uses
  %i.fl = lshr <4 x i16> %i.fk, splat (i16 10)
  %i.fm = and <4 x i16> %i.fl, splat (i16 31)     ; 2 uses
  %i.fn = zext <4 x i16> %i.fk to <4 x i32>
  %i.fo = shl nuw nsw <4 x i32> %i.fn, splat (i32 13) ; 2 uses
  %i.fp = and <4 x i32> %i.fo, splat (i32 8380416) ; 3 uses
  %i.fq = uitofp nneg <4 x i32> %i.fp to <4 x float>
  %i.fr = bitcast <4 x float> %i.fq to <4 x i32>  ; 2 uses
  %i.fs = lshr <4 x i32> %i.fr, splat (i32 23)
  %i.ft = sext <4 x i16> %i.fk to <4 x i32>
  %i.fu = and <4 x i32> %i.ft, splat (i32 -2147483648)
  %i.fv = icmp eq <4 x i16> %i.fm, zeroinitializer ; 2 uses
  %i.fw = zext nneg <4 x i16> %i.fm to <4 x i32>
  %i.fx = shl nuw nsw <4 x i32> %i.fw, splat (i32 23)
  %i.fy = add nuw nsw <4 x i32> %i.fx, splat (i32 939524096)
  %i.fz = or disjoint <4 x i32> %i.fy, %i.fp
  %i.ga = select <4 x i1> %i.fv, <4 x i32> zeroinitializer, <4 x i32> %i.fz
  %i.gb = or disjoint <4 x i32> %i.ga, %i.fu
  %i.gc = icmp ne <4 x i32> %i.fp, zeroinitializer
  %i.gd = and <4 x i1> %i.fv, %i.gc
  %i.ge = and <4 x i32> %i.fr, splat (i32 2139095040)
  %i.gf = add nsw <4 x i32> %i.ge, splat (i32 -310378496)
  %i.gg = sub nsw <4 x i32> splat (i32 150), %i.fs
  %i.gh = shl <4 x i32> %i.fo, %i.gg
  %i.gi = and <4 x i32> %i.gh, splat (i32 8380416)
  %i.gj = or disjoint <4 x i32> %i.gi, %i.gf
  %i.gk = select <4 x i1> %i.gd, <4 x i32> %i.gj, <4 x i32> zeroinitializer
  %i.gl = or <4 x i32> %i.gb, %i.gk
  %i.gm = bitcast <4 x i32> %i.gl to <4 x float>
  %i.gn = fmul <4 x float> %i.gm, splat (float 2.550000e+02)
  %i.go = fptoui <4 x float> %i.gn to <4 x i8>
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.gp = phi <4 x i8> [ zeroinitializer, %bb.a ], [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.t, %bb.d ], [ %i.ak, %bb.e ], [ %i.ap, %bb.f ], [ %i.aq, %bb.g ], [ %i.aw, %bb.h ], [ %i.bb, %bb.i ], [ %i.bl, %bb.j ], [ %i.bo, %bb.k ], [ %i.cs, %bb.l ], [ %i.fj, %bb.m ], [ %i.go, %bb.n ]
  %i.gq = bitcast <4 x i8> %i.gp to i32
  ret i32 %i.gq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorAlphaBlend(i32 %0, i32 %1, i32 %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.316.0.extract.shift = lshr i32 %0, 8     ; 2 uses
  %.sroa.417.0.extract.shift = lshr i32 %0, 16    ; 2 uses
  %.sroa.518.0.extract.shift = lshr i32 %0, 24    ; 5 uses
  %.sroa.5.0.extract.shift = lshr i32 %1, 8
  %.sroa.8.0.extract.shift = lshr i32 %1, 16
  %.sroa.11.0.extract.shift = lshr i32 %1, 24
end_hunk_2
