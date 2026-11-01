Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_draw_list_stroke_poly_line:bb.a
  %i.n = fptoui float %i.m to i8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %3, 16
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %i.o = bitcast i32 %3 to <4 x i8>
  %i.p = shufflevector <4 x i8> %i.o, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.q = uitofp <2 x i8> %i.p to <2 x float>
  %i.r = fmul nnan <2 x float> %i.q, splat (float f0x3B808081) ; 11 uses
  %i.s = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i, i64 0
  %i.t = insertelement <2 x i8> %i.s, i8 %i.n, i64 1
  %i.u = uitofp <2 x i8> %i.t to <2 x float>
  %i.v = fmul nnan <2 x float> %i.u, splat (float f0x3B808081) ; 8 uses
  %.sroa.7.12.vec.insert = insertelement <2 x float> %i.v, float 0.000000e+00, i64 1 ; 4 uses
  %i.w = icmp eq i32 %6, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 5 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !159  ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.z = zext i32 %i.y to i64                     ; 4 uses
  %.v = select i1 %i.k, i64 18, i64 12
  %i.aa = mul nuw nsw i64 %.v, %.0                ; 2 uses
  %i.ab = shl i32 %2, 2
  %i.ac = mul i32 %2, 3
  %i.ad = select i1 %i.k, i32 %i.ab, i32 %i.ac    ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !155
  %i.ah = getelementptr i8, ptr %0, i64 160       ; 8 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !164
  %i.aj = mul i64 %i.ai, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !165
  %i.am = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.ag, i32 noundef 0, i64 noundef %i.aj, i64 noundef %i.al) ; 2 uses
  %.not.i = icmp eq ptr %i.am, null               ; 2 uses
  br i1 %.not.i, label %nk_draw_list_alloc_vertices.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i32, ptr %i.x, align 4, !tbaa !159
  %i.ao = add i32 %i.an, %i.ad
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !159
  br label %nk_draw_list_alloc_vertices.exit

nk_draw_list_alloc_vertices.exit:                 ; preds = %bb.c, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !154
  %i.ar = shl nuw nsw i64 %i.aa, 1
  %i.as = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.aq, i32 noundef 0, i64 noundef %i.ar, i64 noundef 2) ; 3 uses
  %.not.i650 = icmp eq ptr %i.as, null
  br i1 %.not.i650, label %.critedge628, label %nk_draw_list_alloc_elements.exit

nk_draw_list_alloc_elements.exit:                 ; preds = %nk_draw_list_alloc_vertices.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !151, !nonnull !89, !noundef !89 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !160
  %i.bb = sub i64 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !161
  %i.bf = add i32 %i.be, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [32 x i8], ptr %i.bc, i64 %i.bh ; 2 uses
  %i.bj = trunc i64 %i.aa to i32                  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !158
  %i.bm = add i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !158
  %i.bn = load i32, ptr %i.bi, align 8, !tbaa !167
  %i.bo = add i32 %i.bn, %i.bj
  store i32 %i.bo, ptr %i.bi, align 8, !tbaa !167
  br i1 %.not.i, label %.critedge628, label %nk_buffer_mark.exit

nk_buffer_mark.exit:                              ; preds = %nk_draw_list_alloc_elements.exit
  %i.bp = load ptr, ptr %i.af, align 8, !tbaa !155 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !69
  store i8 1, ptr %i.bp, align 8, !tbaa !86
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !79
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !87
  %i.bv = select i1 %i.k, i64 40, i64 24
  %i.bw = mul nuw nsw i64 %i.bv, %i.h
  %i.bx = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.bp, i32 noundef 0, i64 noundef %i.bw, i64 noundef 4) ; 12 uses
  %.not626 = icmp eq ptr %i.bx, null
  br i1 %.not626, label %.critedge628, label %.lr.ph780.preheader

.lr.ph780.preheader:                              ; preds = %nk_buffer_mark.exit
  %i.by = ptrtoint ptr %i.am to i64
  %i.bz = ptrtoint ptr %i.br to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.h ; 16 uses
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !155
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !69
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ca ; 2 uses
  br label %.lr.ph780

.lr.ph780:                                        ; preds = %.lr.ph780.preheader, %bb.f
  %.0603779 = phi i64 [ %i.cg, %bb.f ], [ 0, %.lr.ph780.preheader ] ; 3 uses
  %i.cg = add nuw nsw i64 %.0603779, 1            ; 4 uses
  %i.ch = icmp eq i64 %i.cg, %i.h
  %i.ci = select i1 %i.ch, i64 0, i64 %i.cg
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0603779
  %i.cl = load <2 x float>, ptr %i.cj, align 4, !tbaa !54
  %i.cm = load <2 x float>, ptr %i.ck, align 4, !tbaa !54
  %i.cn = fsub <2 x float> %i.cl, %i.cm           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cn, %i.cn
  %i.co = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cp = extractelement <2 x float> %i.cn, i64 0 ; 2 uses
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.co) ; 3 uses
  %i.cr = fcmp une float %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph780
  %i.cs = bitcast float %i.cq to i32
  %i.ct = fmul float %i.cq, 5.000000e-01
  %i.cu = lshr i32 %i.cs, 1
  %i.cv = sub nsw i32 1597463172, %i.cu
  %i.cw = bitcast i32 %i.cv to float              ; 3 uses
  %i.cx = fneg float %i.cw
  %i.cy = fmul float %i.ct, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cw, float 1.500000e+00)
  %i.da = fmul float %i.cz, %i.cw
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph780, %bb.e
  %.0609 = phi float [ %i.da, %bb.e ], [ 1.000000e+00, %.lr.ph780 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.0603779
  %i.dc = fneg float %.0609
  %i.dd = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %.0609, i64 1
  %i.df = fmul <2 x float> %i.cn, %i.de
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.dg, ptr %i.db, align 4, !tbaa !54
  %exitcond803.not = icmp eq i64 %i.cg, %.0
  br i1 %exitcond803.not, label %._crit_edge, label %.lr.ph780, !llvm.loop !734

._crit_edge:                                      ; preds = %bb.f
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %._crit_edge
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.j ; 3 uses
  %i.di = add i32 %2, -2
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 4, !tbaa !54
  store i64 %i.dl, ptr %i.dh, align 4, !tbaa !54
  br i1 %i.k, label %bb.l, label %bb.h

.thread:                                          ; preds = %._crit_edge
  br i1 %i.k, label %.thread766, label %.lr.ph784.preheader

.lr.ph784.preheader:                              ; preds = %bb.h, %.thread
  br label %.lr.ph784

.thread766:                                       ; preds = %.thread
  %i.dm = fadd nnan float %5, -1.000000e+00
  %i.dn = fmul nnan float %i.dm, 5.000000e-01
  br label %.lr.ph792

bb.h:                                             ; preds = %bb.g
  %i.do = load <2 x float>, ptr %i.bx, align 4, !tbaa !54
  %i.dp = load <2 x float>, ptr %1, align 4, !tbaa !54
  %i.dq = fadd <2 x float> %i.do, %i.dp
  store <2 x float> %i.dq, ptr %i.cb, align 4, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ds = load <2 x float>, ptr %i.bx, align 4, !tbaa !54
  %i.dt = load <2 x float>, ptr %1, align 4, !tbaa !54
  %i.du = fsub <2 x float> %i.dt, %i.ds
  store <2 x float> %i.du, ptr %i.dr, align 4, !tbaa !54
  %i.dv = shl i32 %i.i, 1                         ; 2 uses
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.dz = load <2 x float>, ptr %i.dh, align 4, !tbaa !54 ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dy, align 4, !tbaa !54
  %i.eb = fadd <2 x float> %i.dz, %i.ea
  store <2 x float> %i.eb, ptr %i.dx, align 4, !tbaa !54
  %i.ec = or disjoint i32 %i.dv, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ed
  %i.ef = load <2 x float>, ptr %i.dy, align 4, !tbaa !54
  %i.eg = fsub <2 x float> %i.ef, %i.dz
  store <2 x float> %i.eg, ptr %i.ee, align 4, !tbaa !54
  br label %.lr.ph784.preheader

.lr.ph787:                                        ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ei = getelementptr i8, ptr %0, i64 152       ; 3 uses
  br label %bb.k

.lr.ph784:                                        ; preds = %.lr.ph784.preheader, %bb.j
  %.1604783 = phi i64 [ %i.ej, %bb.j ], [ 0, %.lr.ph784.preheader ] ; 2 uses
  %.0607782 = phi ptr [ %i.gb, %bb.j ], [ %i.as, %.lr.ph784.preheader ] ; 9 uses
  %.0610781 = phi i64 [ %i.en, %bb.j ], [ %i.z, %.lr.ph784.preheader ] ; 3 uses
  %i.ej = add nuw nsw i64 %.1604783, 1            ; 4 uses
  %i.ek = icmp eq i64 %i.ej, %i.h                 ; 2 uses
  %i.el = select i1 %i.ek, i64 0, i64 %i.ej       ; 3 uses
  %i.em = add i64 %.0610781, 3
  %i.en = select i1 %i.ek, i64 %i.z, i64 %i.em    ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.1604783
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.el
  %i.eq = load <2 x float>, ptr %i.eo, align 4, !tbaa !54
  %i.er = load <2 x float>, ptr %i.ep, align 4, !tbaa !54
  %i.es = fadd <2 x float> %i.eq, %i.er
  %i.et = fmul <2 x float> %i.es, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop828 = fmul <2 x float> %i.et, %i.et
  %i.eu = extractelement <2 x float> %foldExtExtBinop828, i64 1
  %i.ev = extractelement <2 x float> %i.et, i64 0 ; 2 uses
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.eu) ; 2 uses
  %i.ex = fcmp ogt float %i.ew, f0x358637BD
  br i1 %i.ex, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph784
  %i.ey = fdiv float 1.000000e+00, %i.ew          ; 2 uses
  %i.ez = fcmp ogt float %i.ey, 1.000000e+02
  %i.fa = select i1 %i.ez, float 1.000000e+02, float %i.ey
  %i.fb = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.et, %i.fc
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph784
  %.sroa.0246.0 = phi <2 x float> [ %i.fd, %bb.i ], [ %i.et, %.lr.ph784 ] ; 2 uses
  %.idx770 = shl nuw nsw i64 %i.el, 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx770 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.el ; 2 uses
  %i.fg = load <2 x float>, ptr %i.ff, align 4, !tbaa !54
  %i.fh = fadd <2 x float> %i.fg, %.sroa.0246.0
  store <2 x float> %i.fh, ptr %i.fe, align 4, !tbaa !54
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fj = load <2 x float>, ptr %i.ff, align 4, !tbaa !54
  %i.fk = fsub <2 x float> %i.fj, %.sroa.0246.0
  store <2 x float> %i.fk, ptr %i.fi, align 4, !tbaa !54
  %i.fl = trunc i64 %i.en to i16
  %i.fm = insertelement <2 x i16> poison, i16 %i.fl, i64 0
  %i.fn = trunc i64 %.0610781 to i16
  %i.fo = insertelement <2 x i16> %i.fm, i16 %i.fn, i64 1
  %i.fp = shufflevector <2 x i16> %i.fo, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fq = trunc i64 %.0610781 to i16              ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0607782, i64 2
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !106
  %i.fs = add i16 %i.fq, 2                        ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0607782, i64 4
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !106
  %i.fu = getelementptr inbounds nuw i8, ptr %.0607782, i64 6
  store i16 %i.fs, ptr %i.fu, align 2, !tbaa !106
  %i.fv = getelementptr inbounds nuw i8, ptr %.0607782, i64 8
  %i.fw = trunc i64 %i.en to i16
  store i16 %i.fw, ptr %.0607782, align 2, !tbaa !106
  %i.fx = add <4 x i16> %i.fp, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.fx, ptr %i.fv, align 2, !tbaa !106
  %i.fy = getelementptr inbounds nuw i8, ptr %.0607782, i64 16
  store i16 %i.fq, ptr %i.fy, align 2, !tbaa !106
  %i.fz = getelementptr inbounds nuw i8, ptr %.0607782, i64 18
  store i16 %i.fq, ptr %i.fz, align 2, !tbaa !106
  %i.ga = getelementptr inbounds nuw i8, ptr %.0607782, i64 20
  %7 = shufflevector <4 x i16> %i.fx, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i16> %7, ptr %i.ga, align 2, !tbaa !106
  %i.gb = getelementptr inbounds nuw i8, ptr %.0607782, i64 24
  %exitcond804.not = icmp eq i64 %i.ej, %.0
  br i1 %exitcond804.not, label %.lr.ph787, label %.lr.ph784, !llvm.loop !735

bb.k:                                             ; preds = %.lr.ph787, %bb.k
  %.0605786 = phi ptr [ %i.cf, %.lr.ph787 ], [ %i.gk, %bb.k ]
  %.0611785 = phi i64 [ 0, %.lr.ph787 ], [ %i.gl, %bb.k ] ; 3 uses
  %.sroa.0213.0.copyload = load <2 x float>, ptr %i.eh, align 8, !tbaa !54 ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0611785
  %i.gd = load <2 x float>, ptr %i.gc, align 4
  %.val648 = load ptr, ptr %i.ei, align 8, !tbaa !168
  %.val649 = load i64, ptr %i.ah, align 8, !tbaa !169
  %i.ge = tail call fastcc ptr @nk_draw_vertex(ptr noundef %.0605786, ptr %.val648, i64 %.val649, <2 x float> %i.gd, <2 x float> %.sroa.0213.0.copyload, <2 x float> %i.r, <2 x float> %i.v)
  %.idx = shl nuw nsw i64 %.0611785, 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx ; 2 uses
  %i.gg = load <2 x float>, ptr %i.gf, align 4
  %.val646 = load ptr, ptr %i.ei, align 8, !tbaa !168
  %.val647 = load i64, ptr %i.ah, align 8, !tbaa !169
  %i.gh = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.ge, ptr %.val646, i64 %.val647, <2 x float> %i.gg, <2 x float> %.sroa.0213.0.copyload, <2 x float> %i.r, <2 x float> %.sroa.7.12.vec.insert)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gj = load <2 x float>, ptr %i.gi, align 4
  %.val644 = load ptr, ptr %i.ei, align 8, !tbaa !168
  %.val645 = load i64, ptr %i.ah, align 8, !tbaa !169
  %i.gk = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.gh, ptr %.val644, i64 %.val645, <2 x float> %i.gj, <2 x float> %.sroa.0213.0.copyload, <2 x float> %i.r, <2 x float> %.sroa.7.12.vec.insert)
  %i.gl = add nuw nsw i64 %.0611785, 1            ; 2 uses
  %exitcond805.not = icmp eq i64 %i.gl, %i.h
  br i1 %exitcond805.not, label %.critedge, label %bb.k, !llvm.loop !736

bb.l:                                             ; preds = %bb.g
  %i.gm = fadd nnan float %5, -1.000000e+00
  %i.gn = fmul nnan float %i.gm, 5.000000e-01     ; 3 uses
  %i.go = fadd float %i.gn, 1.000000e+00
  %i.gp = load <2 x float>, ptr %i.bx, align 4, !tbaa !54 ; 2 uses
  %i.gq = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gs = fmul <2 x float> %i.gr, %i.gp           ; 2 uses
  %i.gt = load <2 x float>, ptr %1, align 4, !tbaa !54
  %i.gu = fadd <2 x float> %i.gs, %i.gt
  store <2 x float> %i.gu, ptr %i.cb, align 4, !tbaa !54
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.gw = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gy = fmul <2 x float> %i.gx, %i.gp           ; 2 uses
  %i.gz = load <2 x float>, ptr %1, align 4, !tbaa !54
  %i.ha = fadd <2 x float> %i.gy, %i.gz
  store <2 x float> %i.ha, ptr %i.gv, align 4, !tbaa !54
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.hc = load <2 x float>, ptr %1, align 4, !tbaa !54
  %i.hd = fsub <2 x float> %i.hc, %i.gy
  store <2 x float> %i.hd, ptr %i.hb, align 4, !tbaa !54
  %i.he = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.hf = load <2 x float>, ptr %1, align 4, !tbaa !54
  %i.hg = fsub <2 x float> %i.hf, %i.gs
  store <2 x float> %i.hg, ptr %i.he, align 4, !tbaa !54
  %i.hh = shl i32 %i.i, 2                         ; 4 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.j ; 4 uses
  %i.hl = load <2 x float>, ptr %i.dh, align 4, !tbaa !54 ; 2 uses
  %i.hm = fmul <2 x float> %i.gr, %i.hl           ; 2 uses
  %i.hn = load <2 x float>, ptr %i.hk, align 4, !tbaa !54
  %i.ho = fadd <2 x float> %i.hm, %i.hn
  store <2 x float> %i.ho, ptr %i.hj, align 4, !tbaa !54
  %i.hp = or disjoint i32 %i.hh, 1
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.hq
  %i.hs = fmul <2 x float> %i.gx, %i.hl           ; 2 uses
  %i.ht = load <2 x float>, ptr %i.hk, align 4, !tbaa !54
  %i.hu = fadd <2 x float> %i.hs, %i.ht
  store <2 x float> %i.hu, ptr %i.hr, align 4, !tbaa !54
  %i.hv = or disjoint i32 %i.hh, 2
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.hw
  %i.hy = load <2 x float>, ptr %i.hk, align 4, !tbaa !54
  %i.hz = fsub <2 x float> %i.hy, %i.hs
  store <2 x float> %i.hz, ptr %i.hx, align 4, !tbaa !54
  %i.ia = or disjoint i32 %i.hh, 3
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ib
  %i.id = load <2 x float>, ptr %i.hk, align 4, !tbaa !54
  %i.ie = fsub <2 x float> %i.id, %i.hm
  store <2 x float> %i.ie, ptr %i.ic, align 4, !tbaa !54
  br label %.lr.ph792

.lr.ph792:                                        ; preds = %bb.l, %.thread766
  %i.if = phi float [ %i.dn, %.thread766 ], [ %i.gn, %bb.l ] ; 2 uses
  %i.ig = fadd float %i.if, 1.000000e+00
  %i.ih = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = insertelement <2 x float> poison, float %i.if, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

.lr.ph795:                                        ; preds = %bb.o
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.im = getelementptr i8, ptr %0, i64 152       ; 4 uses
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph792, %bb.o
  %.2790 = phi i64 [ 0, %.lr.ph792 ], [ %i.in, %bb.o ] ; 2 uses
  %.1608789 = phi ptr [ %i.as, %.lr.ph792 ], [ %i.ku, %bb.o ] ; 9 uses
  %.0612788 = phi i64 [ %i.z, %.lr.ph792 ], [ %i.ir, %bb.o ] ; 3 uses
  %i.in = add nuw nsw i64 %.2790, 1               ; 4 uses
  %i.io = icmp eq i64 %i.in, %i.h                 ; 2 uses
  %i.ip = select i1 %i.io, i64 0, i64 %i.in       ; 3 uses
  %i.iq = add i64 %.0612788, 4
  %i.ir = select i1 %i.io, i64 %i.z, i64 %i.iq    ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.2790
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ip
  %i.iu = load <2 x float>, ptr %i.is, align 4, !tbaa !54
  %i.iv = load <2 x float>, ptr %i.it, align 4, !tbaa !54
  %i.iw = fadd <2 x float> %i.iu, %i.iv
  %i.ix = fmul <2 x float> %i.iw, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop830 = fmul <2 x float> %i.ix, %i.ix
  %i.iy = extractelement <2 x float> %foldExtExtBinop830, i64 1
  %i.iz = extractelement <2 x float> %i.ix, i64 0 ; 2 uses
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.iz, float %i.iy) ; 2 uses
  %i.jb = fcmp ogt float %i.ja, f0x358637BD
  br i1 %i.jb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jc = fdiv float 1.000000e+00, %i.ja          ; 2 uses
  %i.jd = fcmp ogt float %i.jc, 1.000000e+02
  %i.je = select i1 %i.jd, float 1.000000e+02, float %i.jc
  %i.jf = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x float> %i.ix, %i.jg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.096.0 = phi <2 x float> [ %i.jh, %bb.n ], [ %i.ix, %bb.m ] ; 2 uses
  %.idx772 = shl nuw nsw i64 %i.ip, 5
  %i.ji = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx772 ; 4 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ip ; 4 uses
  %i.jk = fmul <2 x float> %i.ii, %.sroa.096.0    ; 2 uses
  %i.jl = load <2 x float>, ptr %i.jj, align 4, !tbaa !54
  %i.jm = fadd <2 x float> %i.jl, %i.jk
  store <2 x float> %i.jm, ptr %i.ji, align 4, !tbaa !54
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jo = fmul <2 x float> %i.ik, %.sroa.096.0    ; 2 uses
  %i.jp = load <2 x float>, ptr %i.jj, align 4, !tbaa !54
  %i.jq = fadd <2 x float> %i.jo, %i.jp
  store <2 x float> %i.jq, ptr %i.jn, align 4, !tbaa !54
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.js = load <2 x float>, ptr %i.jj, align 4, !tbaa !54
  %i.jt = fsub <2 x float> %i.js, %i.jo
  store <2 x float> %i.jt, ptr %i.jr, align 4, !tbaa !54
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jv = load <2 x float>, ptr %i.jj, align 4, !tbaa !54
  %i.jw = fsub <2 x float> %i.jv, %i.jk
  store <2 x float> %i.jw, ptr %i.ju, align 4, !tbaa !54
  %i.jx = trunc i64 %i.ir to i16
  %i.jy = insertelement <2 x i16> poison, i16 %i.jx, i64 0
  %i.jz = trunc i64 %.0612788 to i16
  %i.ka = insertelement <2 x i16> %i.jy, i16 %i.jz, i64 1
  %i.kb = shufflevector <2 x i16> %i.ka, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kc = trunc i64 %i.ir to i16                  ; 3 uses
  %i.kd = trunc i64 %.0612788 to i16              ; 3 uses
  %i.ke = add <4 x i16> %i.kb, <i16 1, i16 1, i16 2, i16 2> ; 3 uses
  %i.kf = shufflevector <4 x i16> %i.ke, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 2, i32 3, i32 0, i32 0, i32 1>
  %i.kg = add i16 %i.kc, 1
  store <8 x i16> %i.kf, ptr %.1608789, align 2, !tbaa !106
  %i.kh = getelementptr inbounds nuw i8, ptr %.1608789, i64 16
  store i16 %i.kd, ptr %i.kh, align 2, !tbaa !106
  %i.ki = getelementptr inbounds nuw i8, ptr %.1608789, i64 18
  store i16 %i.kd, ptr %i.ki, align 2, !tbaa !106
  %i.kj = getelementptr inbounds nuw i8, ptr %.1608789, i64 20
  store i16 %i.kc, ptr %i.kj, align 2, !tbaa !106
  %i.kk = getelementptr inbounds nuw i8, ptr %.1608789, i64 22
  store i16 %i.kg, ptr %i.kk, align 2, !tbaa !106
  %i.kl = getelementptr inbounds nuw i8, ptr %.1608789, i64 24
  %i.km = extractelement <4 x i16> %i.ke, i64 3   ; 2 uses
  store i16 %i.km, ptr %i.kl, align 2, !tbaa !106
  %i.kn = getelementptr inbounds nuw i8, ptr %.1608789, i64 26
  %i.ko = shufflevector <4 x i16> %i.ke, <4 x i16> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.kp = insertelement <4 x i16> %i.ko, i16 %i.kd, i64 1
  %i.kq = insertelement <4 x i16> %i.kp, i16 %i.kc, i64 3
  %i.kr = add <4 x i16> %i.kq, <i16 0, i16 3, i16 poison, i16 3>
  %i.ks = shufflevector <4 x i16> %i.kr, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x i16> %i.ks, ptr %i.kn, align 2, !tbaa !106
  %i.kt = getelementptr inbounds nuw i8, ptr %.1608789, i64 34
  store i16 %i.km, ptr %i.kt, align 2, !tbaa !106
  %i.ku = getelementptr inbounds nuw i8, ptr %.1608789, i64 36
  %exitcond806.not = icmp eq i64 %i.in, %.0
  br i1 %exitcond806.not, label %.lr.ph795, label %bb.m, !llvm.loop !737

bb.p:                                             ; preds = %.lr.ph795, %bb.p
  %.1606794 = phi ptr [ %i.cf, %.lr.ph795 ], [ %i.lg, %bb.p ]
  %.0613793 = phi i64 [ 0, %.lr.ph795 ], [ %i.lh, %bb.p ] ; 2 uses
  %.sroa.077.0.copyload = load <2 x float>, ptr %i.il, align 8, !tbaa !54 ; 4 uses
  %.idx771 = shl nuw nsw i64 %.0613793, 5
  %i.kv = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx771 ; 4 uses
  %i.kw = load <2 x float>, ptr %i.kv, align 4
  %.val642 = load ptr, ptr %i.im, align 8, !tbaa !168
  %.val643 = load i64, ptr %i.ah, align 8, !tbaa !169
  %i.kx = tail call fastcc ptr @nk_draw_vertex(ptr noundef %.1606794, ptr %.val642, i64 %.val643, <2 x float> %i.kw, <2 x float> %.sroa.077.0.copyload, <2 x float> %i.r, <2 x float> %.sroa.7.12.vec.insert)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kz = load <2 x float>, ptr %i.ky, align 4
  %.val640 = load ptr, ptr %i.im, align 8, !tbaa !168
  %.val641 = load i64, ptr %i.ah, align 8, !tbaa !169
end_hunk_0
