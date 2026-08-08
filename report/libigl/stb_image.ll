inline.NumInlined: 824
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.f, %bb.b
  %i.av = load i8, ptr %i.i, align 1, !tbaa !23   ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !712

._crit_edge:                                      ; preds = %bb.o, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #30

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZL17stbi__stdio_writePvS_i(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #12 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13stbiw__writefP19stbi__write_contextPKcz(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr noundef %0, ptr noundef nonnull @.str.106, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #26

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfS2_iPA2_KtS5_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #4 {
vector.ph:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca [64 x i32], align 16              ; 70 uses
  %i.r = load i16, ptr %7, align 2, !tbaa !30     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !30   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 960
  %i.v = load i16, ptr %i.u, align 2, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 962
  %i.x = load i16, ptr %i.w, align 2, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #33
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl nuw i64 %index, 3                    ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 9 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 108
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 84
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 116
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 92
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 124
  %i.bi = load float, ptr %i.z, align 4, !tbaa !58
  %i.bj = load float, ptr %i.ab, align 4, !tbaa !58
  %i.bk = load float, ptr %i.ad, align 4, !tbaa !58
  %i.bl = load float, ptr %i.af, align 4, !tbaa !58
  %i.bm = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 1
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 3 ; 2 uses
  %i.bq = load float, ptr %i.ag, align 4, !tbaa !58
  %i.br = load float, ptr %i.ah, align 4, !tbaa !58
  %i.bs = load float, ptr %i.ai, align 4, !tbaa !58
  %i.bt = load float, ptr %i.aj, align 4, !tbaa !58
  %i.bu = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3 ; 2 uses
  %i.by = load float, ptr %i.ak, align 4, !tbaa !58
  %i.bz = load float, ptr %i.al, align 4, !tbaa !58
  %i.ca = load float, ptr %i.am, align 4, !tbaa !58
  %i.cb = load float, ptr %i.an, align 4, !tbaa !58
  %i.cc = insertelement <4 x float> poison, float %i.by, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 3 ; 2 uses
  %i.cg = load float, ptr %i.ao, align 4, !tbaa !58
  %i.ch = load float, ptr %i.ap, align 4, !tbaa !58
  %i.ci = load float, ptr %i.aq, align 4, !tbaa !58
  %i.cj = load float, ptr %i.ar, align 4, !tbaa !58
  %i.ck = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 1
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 2
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 3 ; 2 uses
  %i.co = load float, ptr %i.as, align 4, !tbaa !58
  %i.cp = load float, ptr %i.at, align 4, !tbaa !58
  %i.cq = load float, ptr %i.au, align 4, !tbaa !58
  %i.cr = load float, ptr %i.av, align 4, !tbaa !58
  %i.cs = insertelement <4 x float> poison, float %i.co, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 3 ; 2 uses
  %i.cw = load float, ptr %i.aw, align 4, !tbaa !58
  %i.cx = load float, ptr %i.ax, align 4, !tbaa !58
  %i.cy = load float, ptr %i.ay, align 4, !tbaa !58
  %i.cz = load float, ptr %i.az, align 4, !tbaa !58
  %i.da = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.cx, i64 1
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 2
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 3 ; 2 uses
  %i.de = load float, ptr %i.ba, align 4, !tbaa !58
  %i.df = load float, ptr %i.bb, align 4, !tbaa !58
  %i.dg = load float, ptr %i.bc, align 4, !tbaa !58
  %i.dh = load float, ptr %i.bd, align 4, !tbaa !58
  %i.di = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 1
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 2
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 3 ; 2 uses
  %i.dm = load float, ptr %i.be, align 4, !tbaa !58
  %i.dn = load float, ptr %i.bf, align 4, !tbaa !58
  %i.do = load float, ptr %i.bg, align 4, !tbaa !58
  %i.dp = load float, ptr %i.bh, align 4, !tbaa !58
  %i.dq = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 1
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 2
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 3 ; 2 uses
  %i.du = fadd <4 x float> %i.bp, %i.dt           ; 2 uses
  %i.dv = fsub <4 x float> %i.bp, %i.dt           ; 3 uses
  %i.dw = fadd <4 x float> %i.bx, %i.dl           ; 2 uses
  %i.dx = fsub <4 x float> %i.bx, %i.dl           ; 2 uses
  %i.dy = fadd <4 x float> %i.cf, %i.dd           ; 2 uses
  %i.dz = fsub <4 x float> %i.cf, %i.dd           ; 2 uses
  %i.ea = fadd <4 x float> %i.cn, %i.cv           ; 2 uses
  %i.eb = fsub <4 x float> %i.cn, %i.cv
  %i.ec = fadd <4 x float> %i.ea, %i.du           ; 2 uses
  %i.ed = fsub <4 x float> %i.du, %i.ea           ; 3 uses
  %i.ee = fadd <4 x float> %i.dy, %i.dw           ; 2 uses
  %i.ef = fsub <4 x float> %i.dw, %i.dy
  %i.eg = fsub <4 x float> %i.ec, %i.ee
  %i.eh = fadd <4 x float> %i.ef, %i.ed
  %i.ei = fmul <4 x float> %i.eh, splat (float f0x3F3504F3) ; 2 uses
  %i.ej = fadd <4 x float> %i.ed, %i.ei
  %i.ek = fadd <4 x float> %i.eb, %i.dz           ; 2 uses
  %i.el = fadd <4 x float> %i.dz, %i.dx
  %i.em = fadd <4 x float> %i.dx, %i.dv           ; 2 uses
  %i.en = fsub <4 x float> %i.ek, %i.em
  %i.eo = fmul <4 x float> %i.en, splat (float f0x3EC3EF15) ; 2 uses
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.eo) ; 2 uses
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.eo) ; 2 uses
  %i.er = fmul <4 x float> %i.el, splat (float f0x3F3504F3) ; 2 uses
  %i.es = fadd <4 x float> %i.dv, %i.er           ; 2 uses
  %i.et = fsub <4 x float> %i.dv, %i.er           ; 2 uses
  %i.eu = fadd <4 x float> %i.et, %i.ep
  %i.ev = fsub <4 x float> %i.et, %i.ep
  %8 = shufflevector <4 x float> %i.ee, <4 x float> %i.es, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = shufflevector <4 x float> %i.ec, <4 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %10 = fadd <8 x float> %8, %9
  %i.ew = shufflevector <4 x float> %i.ej, <4 x float> %i.ev, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ex = shufflevector <4 x float> %i.eg, <4 x float> %i.eu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %11 = shufflevector <4 x float> %i.ed, <4 x float> %i.es, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = shufflevector <4 x float> %i.ei, <4 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %13 = fsub <8 x float> %11, %12
  %i.ey = shufflevector <8 x float> %10, <8 x float> %i.ew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ez = shufflevector <8 x float> %i.ex, <8 x float> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ey, <16 x float> %i.ez, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.z, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, 8
  br i1 %i.fa, label %vector.body328, label %vector.body, !llvm.loop !713

vector.body328:                                   ; preds = %vector.body
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %wide.load = load <4 x float>, ptr %3, align 4, !tbaa !58 ; 2 uses
  %wide.load330 = load <4 x float>, ptr %i.fb, align 4, !tbaa !58 ; 2 uses
  %wide.load331 = load <4 x float>, ptr %i.fc, align 4, !tbaa !58 ; 2 uses
  %wide.load332 = load <4 x float>, ptr %i.fd, align 4, !tbaa !58 ; 2 uses
  %wide.load333 = load <4 x float>, ptr %i.fe, align 4, !tbaa !58 ; 2 uses
  %wide.load334 = load <4 x float>, ptr %i.ff, align 4, !tbaa !58 ; 2 uses
  %wide.load335 = load <4 x float>, ptr %i.fg, align 4, !tbaa !58 ; 2 uses
  %wide.load336 = load <4 x float>, ptr %i.fh, align 4, !tbaa !58 ; 2 uses
  %i.fi = fadd <4 x float> %wide.load, %wide.load336 ; 2 uses
  %i.fj = fsub <4 x float> %wide.load, %wide.load336 ; 3 uses
  %i.fk = fadd <4 x float> %wide.load330, %wide.load335 ; 2 uses
  %i.fl = fsub <4 x float> %wide.load330, %wide.load335 ; 2 uses
  %i.fm = fadd <4 x float> %wide.load331, %wide.load334 ; 2 uses
  %i.fn = fsub <4 x float> %wide.load331, %wide.load334 ; 2 uses
  %i.fo = fadd <4 x float> %wide.load332, %wide.load333 ; 2 uses
  %i.fp = fsub <4 x float> %wide.load332, %wide.load333
  %i.fq = fadd <4 x float> %i.fo, %i.fi           ; 2 uses
  %i.fr = fsub <4 x float> %i.fi, %i.fo           ; 3 uses
  %i.fs = fadd <4 x float> %i.fm, %i.fk           ; 2 uses
  %i.ft = fsub <4 x float> %i.fk, %i.fm
  %i.fu = fadd <4 x float> %i.fs, %i.fq
  %i.fv = fsub <4 x float> %i.fq, %i.fs
  %i.fw = fadd <4 x float> %i.ft, %i.fr
  %i.fx = fmul <4 x float> %i.fw, splat (float f0x3F3504F3) ; 2 uses
  %i.fy = fadd <4 x float> %i.fr, %i.fx
  %i.fz = fsub <4 x float> %i.fr, %i.fx
  %i.ga = fadd <4 x float> %i.fp, %i.fn           ; 2 uses
  %i.gb = fadd <4 x float> %i.fn, %i.fl
  %i.gc = fadd <4 x float> %i.fl, %i.fj           ; 2 uses
  %i.gd = fsub <4 x float> %i.ga, %i.gc
  %i.ge = fmul <4 x float> %i.gd, splat (float f0x3EC3EF15) ; 2 uses
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.ge) ; 2 uses
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.ge) ; 2 uses
  %i.gh = fmul <4 x float> %i.gb, splat (float f0x3F3504F3) ; 2 uses
  %i.gi = fadd <4 x float> %i.fj, %i.gh           ; 2 uses
  %i.gj = fsub <4 x float> %i.fj, %i.gh           ; 2 uses
  %i.gk = fadd <4 x float> %i.gj, %i.gf
  store <4 x float> %i.gk, ptr %i.ff, align 4, !tbaa !58
  %i.gl = fsub <4 x float> %i.gj, %i.gf
  store <4 x float> %i.gl, ptr %i.fd, align 4, !tbaa !58
  %i.gm = fadd <4 x float> %i.gi, %i.gg
  store <4 x float> %i.gm, ptr %i.fb, align 4, !tbaa !58
  %i.gn = fsub <4 x float> %i.gi, %i.gg
  store <4 x float> %i.gn, ptr %i.fh, align 4, !tbaa !58
  store <4 x float> %i.fu, ptr %3, align 4, !tbaa !58
  store <4 x float> %i.fy, ptr %i.fc, align 4, !tbaa !58
  store <4 x float> %i.fv, ptr %i.fe, align 4, !tbaa !58
  store <4 x float> %i.fz, ptr %i.fg, align 4, !tbaa !58
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.go, align 4, !tbaa !58 ; 2 uses
  %wide.load330.1 = load <4 x float>, ptr %i.gp, align 4, !tbaa !58 ; 2 uses
  %wide.load331.1 = load <4 x float>, ptr %i.gq, align 4, !tbaa !58 ; 2 uses
  %wide.load332.1 = load <4 x float>, ptr %i.gr, align 4, !tbaa !58 ; 2 uses
  %wide.load333.1 = load <4 x float>, ptr %i.gs, align 4, !tbaa !58 ; 2 uses
  %wide.load334.1 = load <4 x float>, ptr %i.gt, align 4, !tbaa !58 ; 2 uses
  %wide.load335.1 = load <4 x float>, ptr %i.gu, align 4, !tbaa !58 ; 2 uses
  %wide.load336.1 = load <4 x float>, ptr %i.gv, align 4, !tbaa !58 ; 2 uses
  %i.gw = fadd <4 x float> %wide.load.1, %wide.load336.1 ; 2 uses
  %i.gx = fsub <4 x float> %wide.load.1, %wide.load336.1 ; 3 uses
  %i.gy = fadd <4 x float> %wide.load330.1, %wide.load335.1 ; 2 uses
  %i.gz = fsub <4 x float> %wide.load330.1, %wide.load335.1 ; 2 uses
  %i.ha = fadd <4 x float> %wide.load331.1, %wide.load334.1 ; 2 uses
  %i.hb = fsub <4 x float> %wide.load331.1, %wide.load334.1 ; 2 uses
  %i.hc = fadd <4 x float> %wide.load332.1, %wide.load333.1 ; 2 uses
  %i.hd = fsub <4 x float> %wide.load332.1, %wide.load333.1
  %i.he = fadd <4 x float> %i.hc, %i.gw           ; 2 uses
  %i.hf = fsub <4 x float> %i.gw, %i.hc           ; 3 uses
  %i.hg = fadd <4 x float> %i.ha, %i.gy           ; 2 uses
  %i.hh = fsub <4 x float> %i.gy, %i.ha
  %i.hi = fadd <4 x float> %i.hg, %i.he
  %i.hj = fsub <4 x float> %i.he, %i.hg
  %i.hk = fadd <4 x float> %i.hh, %i.hf
  %i.hl = fmul <4 x float> %i.hk, splat (float f0x3F3504F3) ; 2 uses
  %i.hm = fadd <4 x float> %i.hf, %i.hl
  %i.hn = fsub <4 x float> %i.hf, %i.hl
  %i.ho = fadd <4 x float> %i.hd, %i.hb           ; 2 uses
  %i.hp = fadd <4 x float> %i.hb, %i.gz
  %i.hq = fadd <4 x float> %i.gz, %i.gx           ; 2 uses
  %i.hr = fsub <4 x float> %i.ho, %i.hq
  %i.hs = fmul <4 x float> %i.hr, splat (float f0x3EC3EF15) ; 2 uses
  %i.ht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.hs) ; 2 uses
  %i.hu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hq, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.hs) ; 2 uses
  %i.hv = fmul <4 x float> %i.hp, splat (float f0x3F3504F3) ; 2 uses
  %i.hw = fadd <4 x float> %i.gx, %i.hv           ; 2 uses
  %i.hx = fsub <4 x float> %i.gx, %i.hv           ; 2 uses
  %i.hy = fadd <4 x float> %i.hx, %i.ht
  store <4 x float> %i.hy, ptr %i.gt, align 4, !tbaa !58
  %i.hz = fsub <4 x float> %i.hx, %i.ht
  store <4 x float> %i.hz, ptr %i.gr, align 4, !tbaa !58
  %i.ia = fadd <4 x float> %i.hw, %i.hu
  store <4 x float> %i.ia, ptr %i.gp, align 4, !tbaa !58
  %i.ib = fsub <4 x float> %i.hw, %i.hu
  store <4 x float> %i.ib, ptr %i.gv, align 4, !tbaa !58
  store <4 x float> %i.hi, ptr %i.go, align 4, !tbaa !58
  store <4 x float> %i.hm, ptr %i.gq, align 4, !tbaa !58
  store <4 x float> %i.hj, ptr %i.gs, align 4, !tbaa !58
  store <4 x float> %i.hn, ptr %i.gu, align 4, !tbaa !58
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213, %vector.body328
  %indvars.iv261 = phi i64 [ 0, %vector.body328 ], [ %indvars.iv.next262.1, %.preheader213 ] ; 5 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv261
  %i.id = load float, ptr %i.ic, align 4, !tbaa !58
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv261
  %i.if = load float, ptr %i.ie, align 4, !tbaa !58
  %i.ig = fmul float %i.id, %i.if                 ; 2 uses
  %i.ih = fcmp olt float %i.ig, 0.000000e+00
  %.v = select i1 %i.ih, float -5.000000e-01, float 5.000000e-01
  %i.ii = fadd float %i.ig, %.v
  %i.ij = fptosi float %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %indvars.iv261
  %i.il = load i8, ptr %i.ik, align 2, !tbaa !23
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.im
  store i32 %i.ij, ptr %i.in, align 4, !tbaa !12
  %indvars.iv.next262 = or disjoint i64 %indvars.iv261, 1 ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next262
  %i.ip = load float, ptr %i.io, align 4, !tbaa !58
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next262
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !58
  %i.is = fmul float %i.ip, %i.ir                 ; 2 uses
  %i.it = fcmp olt float %i.is, 0.000000e+00
  %.v.1 = select i1 %i.it, float -5.000000e-01, float 5.000000e-01
  %i.iu = fadd float %i.is, %.v.1
  %i.iv = fptosi float %i.iu to i32
  %i.iw = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %indvars.iv.next262
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !23
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.iy
  store i32 %i.iv, ptr %i.iz, align 4, !tbaa !12
  %indvars.iv.next262.1 = add nuw nsw i64 %indvars.iv261, 2 ; 2 uses
  %exitcond264.not.1 = icmp eq i64 %indvars.iv.next262.1, 64
  br i1 %exitcond264.not.1, label %bb.a, label %.preheader213, !llvm.loop !714

bb.a:                                             ; preds = %.preheader213
  %i.ja = load i32, ptr %i.q, align 16, !tbaa !12 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, %5
  br i1 %i.jb, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val127 = load i16, ptr %6, align 2, !tbaa !30
  %i.jc = getelementptr i8, ptr %6, i64 2
  %.val128 = load i16, ptr %i.jc, align 2, !tbaa !30
  %i.jd = load i32, ptr %1, align 4, !tbaa !12
  %i.je = load i32, ptr %2, align 4, !tbaa !12
  %i.jf = zext i16 %.val128 to i32
  %i.jg = add nsw i32 %i.je, %i.jf                ; 4 uses
  %i.jh = zext i16 %.val127 to i32
  %i.ji = sub nsw i32 24, %i.jg
  %i.jj = shl i32 %i.jh, %i.ji
  %i.jk = or i32 %i.jj, %i.jd                     ; 2 uses
  %i.jl = icmp sgt i32 %i.jg, 7
  br i1 %i.jl, label %.lr.ph.i, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.jm = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.02.i = phi i32 [ %i.jk, %.lr.ph.i ], [ %i.jr, %bb.e ] ; 3 uses
  %.0181.i = phi i32 [ %i.jg, %.lr.ph.i ], [ %i.js, %bb.e ] ; 2 uses
  %i.jn = lshr i32 %.02.i, 16
  %i.jo = trunc i32 %i.jn to i8
  %.val20.i = load ptr, ptr %0, align 8, !tbaa !108
  %.val21.i = load ptr, ptr %i.jm, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %i.jo, ptr %i.p, align 1, !tbaa !23
  call void %.val20.i(ptr noundef %.val21.i, ptr noundef nonnull %i.p, i32 noundef 1), !inline_history !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.jp = and i32 %.02.i, 16711680
  %i.jq = icmp eq i32 %i.jp, 16711680
  br i1 %i.jq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !108
  %.val19.i = load ptr, ptr %i.jm, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
end_hunk_0
