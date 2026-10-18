Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/wrpng-16?download=true
inline.NumInlined: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@put_rgb:bb.a
  store i8 0, ptr %i.de, align 1, !tbaa !38
  %i.df = load ptr, ptr %0, align 8, !tbaa !34
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !39
  tail call void %i.dg(ptr noundef nonnull %0) #10, !inline_history !61
  br label %put_pixel_rows.exit

put_pixel_rows.exit:                              ; preds = %.loopexit, %.loopexit, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_cmyk(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.j = icmp eq i32 %i.i, 16
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52   ; 7 uses
  %.not5474 = icmp eq i32 %i.l, 0
  br i1 %.not5474, label %.loopexit, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %bb.b
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %.lr.ph78.preheader95, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph78.preheader
  %i.n = add i32 %i.l, -1
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = mul nuw nsw i64 %i.o, 6
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 6
  %i.s = shl nuw nsw i64 %i.o, 3
  %i.t = getelementptr i8, ptr %i.e, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %bound0 = icmp ult ptr %i.g, %i.u
  %bound1 = icmp ult ptr %i.e, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph78.preheader95, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4294967288               ; 5 uses
  %i.v = mul nuw nsw i64 %n.vec, 6
  %i.w = getelementptr i8, ptr %i.g, i64 %i.v
  %i.x = shl nuw nsw i64 %n.vec, 3
  %i.y = getelementptr i8, ptr %i.e, i64 %i.x
  %i.z = trunc nuw i64 %n.vec to i32
  %i.aa = sub i32 %i.l, %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.ab
  %i.ac = shl i64 %index, 3                       ; 8 uses
  %next.gep84 = getelementptr i8, ptr %i.e, i64 %i.ac ; 4 uses
  %i.ad = getelementptr i8, ptr %i.e, i64 %i.ac   ; 4 uses
  %next.gep85 = getelementptr i8, ptr %i.ad, i64 8
  %i.ae = getelementptr i8, ptr %i.e, i64 %i.ac   ; 4 uses
  %next.gep86 = getelementptr i8, ptr %i.ae, i64 16
  %i.af = getelementptr i8, ptr %i.e, i64 %i.ac   ; 4 uses
  %next.gep87 = getelementptr i8, ptr %i.af, i64 24
  %i.ag = getelementptr i8, ptr %i.e, i64 %i.ac   ; 4 uses
  %next.gep88 = getelementptr i8, ptr %i.ag, i64 32
  %i.ah = getelementptr i8, ptr %i.e, i64 %i.ac   ; 4 uses
  %next.gep89 = getelementptr i8, ptr %i.ah, i64 40
  %i.ai = getelementptr i8, ptr %i.e, i64 %i.ac   ; 4 uses
  %next.gep90 = getelementptr i8, ptr %i.ai, i64 48
  %i.aj = getelementptr i8, ptr %i.e, i64 %i.ac   ; 4 uses
  %next.gep91 = getelementptr i8, ptr %i.aj, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %next.gep84, i64 2
  %i.al = getelementptr i8, ptr %i.ad, i64 10
  %i.am = getelementptr i8, ptr %i.ae, i64 18
  %i.an = getelementptr i8, ptr %i.af, i64 26
  %i.ao = getelementptr i8, ptr %i.ag, i64 34
  %i.ap = getelementptr i8, ptr %i.ah, i64 42
  %i.aq = getelementptr i8, ptr %i.ai, i64 50
  %i.ar = getelementptr i8, ptr %i.aj, i64 58
  %i.as = load i16, ptr %next.gep84, align 2, !tbaa !54, !alias.scope !91
  %i.at = load i16, ptr %next.gep85, align 2, !tbaa !54, !alias.scope !91
  %i.au = load i16, ptr %next.gep86, align 2, !tbaa !54, !alias.scope !91
  %i.av = load i16, ptr %next.gep87, align 2, !tbaa !54, !alias.scope !91
  %i.aw = load i16, ptr %next.gep88, align 2, !tbaa !54, !alias.scope !91
  %i.ax = load i16, ptr %next.gep89, align 2, !tbaa !54, !alias.scope !91
  %i.ay = load i16, ptr %next.gep90, align 2, !tbaa !54, !alias.scope !91
  %i.az = load i16, ptr %next.gep91, align 2, !tbaa !54, !alias.scope !91
  %i.ba = insertelement <8 x i16> poison, i16 %i.as, i64 0
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 1
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 2
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 3
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 4
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 5
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 6
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.az, i64 7
  %i.bi = getelementptr inbounds nuw i8, ptr %next.gep84, i64 4
  %i.bj = getelementptr i8, ptr %i.ad, i64 12
  %i.bk = getelementptr i8, ptr %i.ae, i64 20
  %i.bl = getelementptr i8, ptr %i.af, i64 28
  %i.bm = getelementptr i8, ptr %i.ag, i64 36
  %i.bn = getelementptr i8, ptr %i.ah, i64 44
  %i.bo = getelementptr i8, ptr %i.ai, i64 52
  %i.bp = getelementptr i8, ptr %i.aj, i64 60
  %i.bq = load i16, ptr %i.ak, align 2, !tbaa !54, !alias.scope !91
  %i.br = load i16, ptr %i.al, align 2, !tbaa !54, !alias.scope !91
  %i.bs = load i16, ptr %i.am, align 2, !tbaa !54, !alias.scope !91
  %i.bt = load i16, ptr %i.an, align 2, !tbaa !54, !alias.scope !91
  %i.bu = load i16, ptr %i.ao, align 2, !tbaa !54, !alias.scope !91
  %i.bv = load i16, ptr %i.ap, align 2, !tbaa !54, !alias.scope !91
  %i.bw = load i16, ptr %i.aq, align 2, !tbaa !54, !alias.scope !91
  %i.bx = load i16, ptr %i.ar, align 2, !tbaa !54, !alias.scope !91
  %i.by = insertelement <8 x i16> poison, i16 %i.bq, i64 0
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 1
  %i.ca = insertelement <8 x i16> %i.bz, i16 %i.bs, i64 2
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bt, i64 3
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bu, i64 4
  %i.cd = insertelement <8 x i16> %i.cc, i16 %i.bv, i64 5
  %i.ce = insertelement <8 x i16> %i.cd, i16 %i.bw, i64 6
  %i.cf = insertelement <8 x i16> %i.ce, i16 %i.bx, i64 7
  %i.cg = getelementptr inbounds nuw i8, ptr %next.gep84, i64 6
  %i.ch = getelementptr i8, ptr %i.ad, i64 14
  %i.ci = getelementptr i8, ptr %i.ae, i64 22
  %i.cj = getelementptr i8, ptr %i.af, i64 30
  %i.ck = getelementptr i8, ptr %i.ag, i64 38
  %i.cl = getelementptr i8, ptr %i.ah, i64 46
  %i.cm = getelementptr i8, ptr %i.ai, i64 54
  %i.cn = getelementptr i8, ptr %i.aj, i64 62
  %i.co = load i16, ptr %i.bi, align 2, !tbaa !54, !alias.scope !91
  %i.cp = load i16, ptr %i.bj, align 2, !tbaa !54, !alias.scope !91
  %i.cq = load i16, ptr %i.bk, align 2, !tbaa !54, !alias.scope !91
  %i.cr = load i16, ptr %i.bl, align 2, !tbaa !54, !alias.scope !91
  %i.cs = load i16, ptr %i.bm, align 2, !tbaa !54, !alias.scope !91
  %i.ct = load i16, ptr %i.bn, align 2, !tbaa !54, !alias.scope !91
  %i.cu = load i16, ptr %i.bo, align 2, !tbaa !54, !alias.scope !91
  %i.cv = load i16, ptr %i.bp, align 2, !tbaa !54, !alias.scope !91
  %i.cw = insertelement <8 x i16> poison, i16 %i.co, i64 0
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 1
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 2
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 3
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 4
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 5
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 6
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 7
  %i.de = load i16, ptr %i.cg, align 2, !tbaa !54, !alias.scope !91
  %i.df = load i16, ptr %i.ch, align 2, !tbaa !54, !alias.scope !91
  %i.dg = load i16, ptr %i.ci, align 2, !tbaa !54, !alias.scope !91
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !54, !alias.scope !91
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !54, !alias.scope !91
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !54, !alias.scope !91
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !54, !alias.scope !91
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !54, !alias.scope !91
  %i.dm = insertelement <8 x i16> poison, i16 %i.de, i64 0
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.df, i64 1
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 2
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 3
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 4
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 5
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 6
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 7
  %i.du = uitofp <8 x i16> %i.dt to <8 x double>  ; 2 uses
  %i.dv = uitofp <8 x i16> %i.dd to <8 x double>
  %i.dw = fmul nnan <8 x double> %i.dv, %i.du
  %i.dx = fdiv <8 x double> %i.dw, splat (double 6.553500e+04)
  %i.dy = fadd <8 x double> %i.dx, splat (double 5.000000e-01)
  %i.dz = fptoui <8 x double> %i.dy to <8 x i16>
  %i.ea = shufflevector <8 x i16> %i.bh, <8 x i16> %i.cf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eb = uitofp <16 x i16> %i.ea to <16 x double>
  %i.ec = shufflevector <8 x double> %i.du, <8 x double> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ed = fmul nnan <16 x double> %i.ec, %i.eb
  %i.ee = fdiv <16 x double> %i.ed, splat (double 6.553500e+04)
  %i.ef = fadd <16 x double> %i.ee, splat (double 5.000000e-01)
  %i.eg = fptoui <16 x double> %i.ef to <16 x i16>
  %i.eh = shufflevector <8 x i16> %i.dz, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.eg, <16 x i16> %i.eh, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !54, !alias.scope !92, !noalias !91
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.loopexit, label %.lr.ph78.preheader95

.lr.ph78.preheader95:                             ; preds = %vector.memcheck, %.lr.ph78.preheader, %middle.block
  %.077.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph78.preheader ], [ %i.w, %middle.block ]
  %.04776.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph78.preheader ], [ %i.y, %middle.block ]
  %.04975.ph = phi i32 [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph78.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader95, %.lr.ph78
  %.077 = phi ptr [ %i.ev, %.lr.ph78 ], [ %.077.ph, %.lr.ph78.preheader95 ] ; 3 uses
  %.04776 = phi ptr [ %4, %.lr.ph78 ], [ %.04776.ph, %.lr.ph78.preheader95 ] ; 4 uses
  %.04975 = phi i32 [ %i.ew, %.lr.ph78 ], [ %.04975.ph, %.lr.ph78.preheader95 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.04776, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.04776, i64 6
  %3 = load i16, ptr %i.ej, align 2, !tbaa !54
  %4 = getelementptr inbounds nuw i8, ptr %.04776, i64 8
  %5 = load i16, ptr %i.ek, align 2, !tbaa !54
  %6 = uitofp i16 %5 to double                    ; 2 uses
  %7 = uitofp i16 %3 to double
  %8 = fmul nnan double %7, %6
  %i.el = fdiv double %8, 6.553500e+04
  %i.em = fadd double %i.el, 5.000000e-01
  %i.en = fptoui double %i.em to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %.077, i64 4
  %i.ep = load <2 x i16>, ptr %.04776, align 2, !tbaa !54
  %i.eq = uitofp <2 x i16> %i.ep to <2 x double>
  %9 = insertelement <2 x double> poison, double %6, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul nnan <2 x double> %10, %i.eq
  %i.es = fdiv <2 x double> %i.er, splat (double 6.553500e+04)
  %i.et = fadd <2 x double> %i.es, splat (double 5.000000e-01)
  %i.eu = fptoui <2 x double> %i.et to <2 x i16>
  store <2 x i16> %i.eu, ptr %.077, align 2, !tbaa !54
  %i.ev = getelementptr inbounds nuw i8, ptr %.077, i64 6
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !54
  %i.ew = add i32 %.04975, -1                     ; 2 uses
  %.not54 = icmp eq i32 %i.ew, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph78, !llvm.loop !89

bb.c:                                             ; preds = %bb.a
  %notmask = shl nsw i32 -1, %i.i
  %i.ex = xor i32 %notmask, -1                    ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !52 ; 2 uses
  %.not70 = icmp eq i32 %i.ez, 0
  br i1 %.not70, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.173 = phi ptr [ %i.gq, %bb.e ], [ %i.g, %bb.c ] ; 4 uses
  %.14872 = phi ptr [ %i.fb, %bb.e ], [ %i.e, %bb.c ] ; 3 uses
  %.15071 = phi i32 [ %i.gr, %bb.e ], [ %i.ez, %bb.c ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.14872, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.14872, i64 8
  %i.fc = load i32, ptr %i.h, align 8, !tbaa !33
  %notmask53 = shl nsw i32 -1, %i.fc
  %i.fd = xor i32 %notmask53, -1
  %i.fe = uitofp nneg i32 %i.fd to double         ; 2 uses
  %i.ff = load <2 x i16>, ptr %.14872, align 2, !tbaa !54
  %i.fg = uitofp <2 x i16> %i.ff to <2 x double>
  %i.fh = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = load <2 x i16>, ptr %i.fa, align 2, !tbaa !54
  %i.fk = uitofp <2 x i16> %i.fj to <2 x double>  ; 3 uses
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fm = fmul nnan <2 x double> %i.fl, %i.fg
  %i.fn = fdiv <2 x double> %i.fm, %i.fi
  %i.fo = fadd <2 x double> %i.fn, splat (double 5.000000e-01)
  %i.fp = fptoui <2 x double> %i.fo to <2 x i16>  ; 2 uses
  %shift.a = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fmul nnan <2 x double> %shift.a, %i.fk
  %i.fq = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.fr = fdiv double %i.fq, %i.fe
  %i.fs = fadd double %i.fr, 5.000000e-01
  %i.ft = fptoui double %i.fs to i16              ; 2 uses
  %i.fu = extractelement <2 x i16> %i.fp, i64 0   ; 2 uses
  %i.fv = zext i16 %i.fu to i32
  %i.fw = icmp samesign ugt i32 %i.fv, %i.ex
  %i.fx = extractelement <2 x i16> %i.fp, i64 1   ; 2 uses
  %i.fy = zext i16 %i.fx to i32
  %i.fz = icmp samesign ugt i32 %i.fy, %i.ex
  %or.cond = select i1 %i.fw, i1 true, i1 %i.fz
  %i.ga = zext i16 %i.ft to i32
  %i.gb = icmp samesign ugt i32 %i.ga, %i.ex
  %or.cond60 = select i1 %or.cond, i1 true, i1 %i.gb
  br i1 %or.cond60, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.gc = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store i32 1031, ptr %i.gd, align 8, !tbaa !37
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !39
  tail call void %i.ge(ptr noundef nonnull %0) #10
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.gf = zext i16 %i.fu to i64
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !54
  %i.gi = getelementptr inbounds nuw i8, ptr %.173, i64 2
  store i16 %i.gh, ptr %.173, align 2, !tbaa !54
  %i.gj = zext i16 %i.fx to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !54
  %i.gm = getelementptr inbounds nuw i8, ptr %.173, i64 4
  store i16 %i.gl, ptr %i.gi, align 2, !tbaa !54
  %i.gn = zext i16 %i.ft to i64
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !54
  %i.gq = getelementptr inbounds nuw i8, ptr %.173, i64 6
  store i16 %i.gp, ptr %i.gm, align 2, !tbaa !54
  %i.gr = add i32 %.15071, -1                     ; 2 uses
  %.not = icmp eq i32 %i.gr, 0
  br i1 %.not, label %.loopexit.loopexit79, label %.lr.ph, !llvm.loop !90

.loopexit.loopexit79:                             ; preds = %bb.e
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph78, %middle.block, %.loopexit.loopexit79, %bb.c, %bb.b
  %i.gs = phi ptr [ %.pre, %.loopexit.loopexit79 ], [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %middle.block ], [ %i.g, %.lr.ph78 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !56
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !47
  %i.gx = tail call i32 @spng_encode_row(ptr noundef %i.gu, ptr noundef %i.gs, i64 noundef %i.gw) #10 ; 2 uses
  switch i32 %i.gx, label %bb.f [
    i32 75, label %put_pixel_rows.exit
    i32 0, label %put_pixel_rows.exit
  ]

bb.f:                                             ; preds = %.loopexit
  %i.gy = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  store i32 1030, ptr %i.gz, align 8, !tbaa !37
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.hb = tail call ptr @spng_strerror(i32 noundef %i.gx) #10
  %i.hc = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ha, ptr noundef nonnull dereferenceable(1) %i.hb, i64 noundef 79) #10 ; 0 uses
  %i.hd = load ptr, ptr %0, align 8, !tbaa !34
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 123
  store i8 0, ptr %i.he, align 1, !tbaa !38
  %i.hf = load ptr, ptr %0, align 8, !tbaa !34
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !39
  tail call void %i.hg(ptr noundef nonnull %0) #10, !inline_history !61
  br label %put_pixel_rows.exit

put_pixel_rows.exit:                              ; preds = %.loopexit, %.loopexit, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_gray(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.025 = phi i32 [ %i.v, %bb.c ], [ %i.h, %.lr.ph.preheader ]
  %.01924 = phi ptr [ %i.l, %bb.c ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %.02023 = phi ptr [ %i.u, %bb.c ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01924, i64 2
  %i.m = load i16, ptr %.01924, align 2, !tbaa !54 ; 2 uses
  %i.n = zext i16 %i.m to i32
  %.highbits = lshr i32 %i.n, %i.d
  %.not21 = icmp eq i32 %.highbits, 0
  br i1 %.not21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 1031, ptr %i.p, align 8, !tbaa !37
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !39
  tail call void %i.q(ptr noundef nonnull %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.r = zext i16 %i.m to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %.02023, i64 2
  store i16 %i.t, ptr %.02023, align 2, !tbaa !54
  %i.v = add i32 %.025, -1                        ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !95

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.w = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  %i.ab = tail call i32 @spng_encode_row(ptr noundef %i.y, ptr noundef %i.w, i64 noundef %i.aa) #10 ; 2 uses
  switch i32 %i.ab, label %bb.d [
    i32 75, label %put_pixel_rows.exit
    i32 0, label %put_pixel_rows.exit
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 1030, ptr %i.ad, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.af = tail call ptr @spng_strerror(i32 noundef %i.ab) #10
  %i.ag = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %i.af, i64 noundef 79) #10 ; 0 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 123
  store i8 0, ptr %i.ai, align 1, !tbaa !38
  %i.aj = load ptr, ptr %0, align 8, !tbaa !34
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  tail call void %i.ak(ptr noundef nonnull %0) #10, !inline_history !61
  br label %put_pixel_rows.exit

end_hunk_0
