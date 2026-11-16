Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa?download=true
inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@dctInverse8x8_sse2_7:bb.a
  %i.ab = fadd <4 x float> %i.w, %i.aa            ; 2 uses
  %i.ac = fsub <4 x float> %i.w, %i.aa
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load <4 x float>, ptr %i.ae, align 16, !tbaa !60 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load <4 x float>, ptr %i.ag, align 16, !tbaa !60 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aj = load <4 x float>, ptr %i.ai, align 16, !tbaa !60 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !60 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !tbaa !60 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !60 ; 4 uses
  %i.as = fmul <4 x float> %i.ah, splat (float f0x3EEC8360)
  %i.at = fmul <4 x float> %i.ah, splat (float f0x3E43EF36)
  %i.au = fmul <4 x float> %i.ap, splat (float f0x3EEC8360)
  %i.av = fmul <4 x float> %i.ap, splat (float f0x3E43EF36)
  %i.aw = fmul <4 x float> %i.af, splat (float f0x3EFB14C1)
  %i.ax = fmul <4 x float> %i.aj, splat (float f0x3ED4DB34)
  %i.ay = fadd <4 x float> %i.aw, %i.ax
  %i.az = fmul <4 x float> %i.an, splat (float f0x3E8E39E7)
  %i.ba = fmul <4 x float> %i.ar, splat (float f0x3DC7C60E)
  %i.bb = fadd <4 x float> %i.az, %i.ba
  %i.bc = fadd <4 x float> %i.ay, %i.bb           ; 2 uses
  %i.bd = fmul <4 x float> %i.af, splat (float f0x3ED4DB34)
  %i.be = fmul <4 x float> %i.aj, splat (float f0x3DC7C60E)
  %i.bf = fsub <4 x float> %i.bd, %i.be
  %i.bg = fmul <4 x float> %i.an, splat (float f0x3EFB14C1)
  %i.bh = fmul <4 x float> %i.ar, splat (float f0x3E8E39E7)
  %i.bi = fadd <4 x float> %i.bg, %i.bh
  %i.bj = fsub <4 x float> %i.bf, %i.bi           ; 2 uses
  %i.bk = fmul <4 x float> %i.af, splat (float f0x3E8E39E7)
  %i.bl = fmul <4 x float> %i.aj, splat (float f0x3EFB14C1)
  %i.bm = fsub <4 x float> %i.bk, %i.bl
  %i.bn = fmul <4 x float> %i.an, splat (float f0x3DC7C60E)
  %i.bo = fmul <4 x float> %i.ar, splat (float f0x3ED4DB34)
  %i.bp = fadd <4 x float> %i.bn, %i.bo
  %i.bq = fadd <4 x float> %i.bm, %i.bp           ; 2 uses
  %i.br = fmul <4 x float> %i.af, splat (float f0x3DC7C60E)
  %i.bs = fmul <4 x float> %i.aj, splat (float f0x3E8E39E7)
  %i.bt = fsub <4 x float> %i.br, %i.bs
  %i.bu = fmul <4 x float> %i.an, splat (float f0x3ED4DB34)
  %i.bv = fmul <4 x float> %i.ar, splat (float f0x3EFB14C1)
  %i.bw = fsub <4 x float> %i.bu, %i.bv
  %i.bx = fadd <4 x float> %i.bt, %i.bw           ; 2 uses
  %i.by = fadd <4 x float> %i.ab, %i.al
  %i.bz = fmul <4 x float> %i.by, splat (float f0x3EB504FA) ; 2 uses
  %i.ca = fsub <4 x float> %i.ab, %i.al
  %i.cb = fmul <4 x float> %i.ca, splat (float f0x3EB504FA) ; 2 uses
  %i.cc = fadd <4 x float> %i.as, %i.av           ; 2 uses
  %i.cd = fsub <4 x float> %i.at, %i.au           ; 2 uses
  %i.ce = fadd <4 x float> %i.bz, %i.cc           ; 2 uses
  %i.cf = fadd <4 x float> %i.cb, %i.cd           ; 2 uses
  %i.cg = fsub <4 x float> %i.cb, %i.cd           ; 2 uses
  %i.ch = fsub <4 x float> %i.bz, %i.cc           ; 2 uses
  %i.ci = fadd <4 x float> %i.ce, %i.bc
  store <4 x float> %i.ci, ptr %0, align 16, !tbaa !60
  %i.cj = fadd <4 x float> %i.cf, %i.bj
  store <4 x float> %i.cj, ptr %i.ae, align 16, !tbaa !60
  %i.ck = fadd <4 x float> %i.cg, %i.bq
  store <4 x float> %i.ck, ptr %i.ag, align 16, !tbaa !60
  %i.cl = fadd <4 x float> %i.ch, %i.bx
  store <4 x float> %i.cl, ptr %i.ai, align 16, !tbaa !60
  %i.cm = fsub <4 x float> %i.ch, %i.bx
  store <4 x float> %i.cm, ptr %i.ak, align 16, !tbaa !60
  %i.cn = fsub <4 x float> %i.cg, %i.bq
  store <4 x float> %i.cn, ptr %i.am, align 16, !tbaa !60
  %i.co = fsub <4 x float> %i.cf, %i.bj
  store <4 x float> %i.co, ptr %i.ao, align 16, !tbaa !60
  %i.cp = fsub <4 x float> %i.ce, %i.bc
  store <4 x float> %i.cp, ptr %i.aq, align 16, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cr = load <4 x float>, ptr %i.cq, align 16, !tbaa !60 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ct = load <4 x float>, ptr %i.cs, align 16, !tbaa !60 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cv = load <4 x float>, ptr %i.cu, align 16, !tbaa !60 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cx = load <4 x float>, ptr %i.cw, align 16, !tbaa !60 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cz = load <4 x float>, ptr %i.cy, align 16, !tbaa !60 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.db = load <4 x float>, ptr %i.da, align 16, !tbaa !60 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.dd = load <4 x float>, ptr %i.dc, align 16, !tbaa !60 ; 4 uses
  %i.de = fmul <4 x float> %i.ct, splat (float f0x3EEC8360)
  %i.df = fmul <4 x float> %i.ct, splat (float f0x3E43EF36)
  %i.dg = fmul <4 x float> %i.db, splat (float f0x3EEC8360)
  %i.dh = fmul <4 x float> %i.db, splat (float f0x3E43EF36)
  %i.di = fmul <4 x float> %i.cr, splat (float f0x3EFB14C1)
  %i.dj = fmul <4 x float> %i.cv, splat (float f0x3ED4DB34)
  %i.dk = fadd <4 x float> %i.di, %i.dj
  %i.dl = fmul <4 x float> %i.cz, splat (float f0x3E8E39E7)
  %i.dm = fmul <4 x float> %i.dd, splat (float f0x3DC7C60E)
  %i.dn = fadd <4 x float> %i.dl, %i.dm
  %i.do = fadd <4 x float> %i.dk, %i.dn           ; 2 uses
  %i.dp = fmul <4 x float> %i.cr, splat (float f0x3ED4DB34)
  %i.dq = fmul <4 x float> %i.cv, splat (float f0x3DC7C60E)
  %i.dr = fsub <4 x float> %i.dp, %i.dq
  %i.ds = fmul <4 x float> %i.cz, splat (float f0x3EFB14C1)
  %i.dt = fmul <4 x float> %i.dd, splat (float f0x3E8E39E7)
  %i.du = fadd <4 x float> %i.ds, %i.dt
  %i.dv = fsub <4 x float> %i.dr, %i.du           ; 2 uses
  %i.dw = fmul <4 x float> %i.cr, splat (float f0x3E8E39E7)
  %i.dx = fmul <4 x float> %i.cv, splat (float f0x3EFB14C1)
  %i.dy = fsub <4 x float> %i.dw, %i.dx
  %i.dz = fmul <4 x float> %i.cz, splat (float f0x3DC7C60E)
  %i.ea = fmul <4 x float> %i.dd, splat (float f0x3ED4DB34)
  %i.eb = fadd <4 x float> %i.dz, %i.ea
  %i.ec = fadd <4 x float> %i.dy, %i.eb           ; 2 uses
  %i.ed = fmul <4 x float> %i.cr, splat (float f0x3DC7C60E)
  %i.ee = fmul <4 x float> %i.cv, splat (float f0x3E8E39E7)
  %i.ef = fsub <4 x float> %i.ed, %i.ee
  %i.eg = fmul <4 x float> %i.cz, splat (float f0x3ED4DB34)
  %i.eh = fmul <4 x float> %i.dd, splat (float f0x3EFB14C1)
  %i.ei = fsub <4 x float> %i.eg, %i.eh
  %i.ej = fadd <4 x float> %i.ef, %i.ei           ; 2 uses
  %i.ek = fadd <4 x float> %i.ad, %i.cx
  %i.el = fmul <4 x float> %i.ek, splat (float f0x3EB504FA) ; 2 uses
  %i.em = fsub <4 x float> %i.ad, %i.cx
  %i.en = fmul <4 x float> %i.em, splat (float f0x3EB504FA) ; 2 uses
  %i.eo = fadd <4 x float> %i.de, %i.dh           ; 2 uses
  %i.ep = fsub <4 x float> %i.df, %i.dg           ; 2 uses
  %i.eq = fadd <4 x float> %i.el, %i.eo           ; 2 uses
  %i.er = fadd <4 x float> %i.en, %i.ep           ; 2 uses
  %i.es = fsub <4 x float> %i.en, %i.ep           ; 2 uses
  %i.et = fsub <4 x float> %i.el, %i.eo           ; 2 uses
  %i.eu = fadd <4 x float> %i.eq, %i.do
  store <4 x float> %i.eu, ptr %i.e, align 16, !tbaa !60
  %i.ev = fadd <4 x float> %i.er, %i.dv
  store <4 x float> %i.ev, ptr %i.cq, align 16, !tbaa !60
  %i.ew = fadd <4 x float> %i.es, %i.ec
  store <4 x float> %i.ew, ptr %i.cs, align 16, !tbaa !60
  %i.ex = fadd <4 x float> %i.et, %i.ej
  store <4 x float> %i.ex, ptr %i.cu, align 16, !tbaa !60
  %i.ey = fsub <4 x float> %i.et, %i.ej
  store <4 x float> %i.ey, ptr %i.cw, align 16, !tbaa !60
  %i.ez = fsub <4 x float> %i.es, %i.ec
  store <4 x float> %i.ez, ptr %i.cy, align 16, !tbaa !60
  %i.fa = fsub <4 x float> %i.er, %i.dv
  store <4 x float> %i.fa, ptr %i.da, align 16, !tbaa !60
  %i.fb = fsub <4 x float> %i.eq, %i.do
  store <4 x float> %i.fb, ptr %i.dc, align 16, !tbaa !60
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dctInverse8x8_scalar(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 8) %1) unnamed_addr #8 {
bb.a:
  %i.a = sub nuw nsw i32 8, %1
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load float, ptr %i.e, align 4, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.n = load float, ptr %i.m, align 4, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.p = insertelement <4 x float> poison, float %i.j, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = fmul <4 x float> %i.q, <float f0x3ED4DB36, float f0xBDC7C60B, float f0xBEFB14BF, float f0xBE8E39E5>
  %i.s = insertelement <4 x float> poison, float %i.h, i64 0
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> <float f0x3EFB14BF, float f0x3ED4DB36, float f0x3E8E39E5, float f0x3DC7C60B>, <4 x float> %i.r)
  %i.v = insertelement <4 x float> poison, float %i.l, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> <float f0x3E8E39E5, float f0xBEFB14BF, float f0x3DC7C60B, float f0x3ED4DB36>, <4 x float> %i.u)
  %i.y = insertelement <4 x float> poison, float %i.n, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> <float f0x3DC7C60B, float f0xBE8E39E5, float f0x3ED4DB36, float f0xBEFB14BF>, <4 x float> %i.x) ; 2 uses
  %i.ab = load float, ptr %i.b, align 4, !tbaa !103
  %i.ac = load float, ptr %i.o, align 4, !tbaa !103
  %i.ad = insertelement <4 x float> poison, float %i.d, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.f, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.ac, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.ab, i64 3 ; 2 uses
  %i.ah = fmul <4 x float> %i.ag, <float f0x3EEC8361, float f0x3EEC8361, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ai = fmul <4 x float> %i.ag, <float f0x3E43EF33, float f0x3E43EF33, float 1.000000e+00, float 1.000000e+00>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ak = fadd <4 x float> %i.aj, %i.ah
  %i.al = fsub <4 x float> %i.aj, %i.ah
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.an = fmul <4 x float> %i.am, <float 1.000000e+00, float 1.000000e+00, float f0x3EB504FB, float f0x3EB504FB> ; 3 uses
  %2 = shufflevector <4 x float> %i.an, <4 x float> %i.am, <4 x i32> <i32 3, i32 2, i32 5, i32 4> ; 2 uses
  %i.ao = fadd <4 x float> %i.an, %2
  %i.ap = fsub <4 x float> %i.an, %2
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ar = fadd <4 x float> %i.aa, %i.aq
  store <4 x float> %i.ar, ptr %i.b, align 4, !tbaa !103
  %i.as = fsub <4 x float> %i.aq, %i.aa
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.at, ptr %i.o, align 4, !tbaa !103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %vector.body, label %bb.b, !llvm.loop !206

vector.body:                                      ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.au, align 4, !tbaa !103 ; 2 uses
  %i.av = fmul <4 x float> %wide.load, splat (float f0x3EEC8361)
  %i.aw = fmul <4 x float> %wide.load, splat (float f0x3E43EF33)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %wide.load204 = load <4 x float>, ptr %i.ax, align 4, !tbaa !103 ; 2 uses
  %i.ay = fmul <4 x float> %wide.load204, splat (float f0x3EEC8361)
  %i.az = fmul <4 x float> %wide.load204, splat (float f0x3E43EF33)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load205 = load <4 x float>, ptr %i.ba, align 4, !tbaa !103 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %wide.load206 = load <4 x float>, ptr %i.bb, align 4, !tbaa !103 ; 4 uses
  %i.bc = fmul <4 x float> %wide.load206, splat (float f0x3ED4DB36)
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load205, <4 x float> splat (float f0x3EFB14BF), <4 x float> %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %wide.load207 = load <4 x float>, ptr %i.be, align 4, !tbaa !103 ; 4 uses
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load207, <4 x float> splat (float f0x3E8E39E5), <4 x float> %i.bd)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %wide.load208 = load <4 x float>, ptr %i.bg, align 4, !tbaa !103 ; 4 uses
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load208, <4 x float> splat (float f0x3DC7C60B), <4 x float> %i.bf) ; 2 uses
  %i.bi = fmul <4 x float> %wide.load206, splat (float f0xBDC7C60B)
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load205, <4 x float> splat (float f0x3ED4DB36), <4 x float> %i.bi)
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load207, <4 x float> splat (float f0xBEFB14BF), <4 x float> %i.bj)
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load208, <4 x float> splat (float f0xBE8E39E5), <4 x float> %i.bk) ; 2 uses
  %i.bm = fmul <4 x float> %wide.load206, splat (float f0xBEFB14BF)
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load205, <4 x float> splat (float f0x3E8E39E5), <4 x float> %i.bm)
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load207, <4 x float> splat (float f0x3DC7C60B), <4 x float> %i.bn)
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load208, <4 x float> splat (float f0x3ED4DB36), <4 x float> %i.bo) ; 2 uses
  %i.bq = fmul <4 x float> %wide.load206, splat (float f0xBE8E39E5)
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load205, <4 x float> splat (float f0x3DC7C60B), <4 x float> %i.bq)
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load207, <4 x float> splat (float f0x3ED4DB36), <4 x float> %i.br)
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load208, <4 x float> splat (float f0xBEFB14BF), <4 x float> %i.bs) ; 2 uses
  %wide.load209 = load <4 x float>, ptr %0, align 4, !tbaa !103 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %wide.load210 = load <4 x float>, ptr %i.bu, align 4, !tbaa !103 ; 2 uses
  %i.bv = fadd <4 x float> %wide.load209, %wide.load210
  %i.bw = fmul <4 x float> %i.bv, splat (float f0x3EB504FB) ; 2 uses
  %i.bx = fsub <4 x float> %wide.load209, %wide.load210
  %i.by = fmul <4 x float> %i.bx, splat (float f0x3EB504FB) ; 2 uses
  %i.bz = fadd <4 x float> %i.av, %i.az           ; 2 uses
  %i.ca = fsub <4 x float> %i.aw, %i.ay           ; 2 uses
  %i.cb = fadd <4 x float> %i.bz, %i.bw           ; 2 uses
  %i.cc = fadd <4 x float> %i.ca, %i.by           ; 2 uses
  %i.cd = fsub <4 x float> %i.by, %i.ca           ; 2 uses
  %i.ce = fsub <4 x float> %i.bw, %i.bz           ; 2 uses
  %i.cf = fadd <4 x float> %i.bh, %i.cb
  store <4 x float> %i.cf, ptr %0, align 4, !tbaa !103
  %i.cg = fadd <4 x float> %i.bl, %i.cc
  store <4 x float> %i.cg, ptr %i.ba, align 4, !tbaa !103
  %i.ch = fadd <4 x float> %i.bp, %i.cd
  store <4 x float> %i.ch, ptr %i.au, align 4, !tbaa !103
  %i.ci = fadd <4 x float> %i.bt, %i.ce
  store <4 x float> %i.ci, ptr %i.bb, align 4, !tbaa !103
  %i.cj = fsub <4 x float> %i.ce, %i.bt
  store <4 x float> %i.cj, ptr %i.bu, align 4, !tbaa !103
  %i.ck = fsub <4 x float> %i.cd, %i.bp
  store <4 x float> %i.ck, ptr %i.be, align 4, !tbaa !103
  %i.cl = fsub <4 x float> %i.cc, %i.bl
  store <4 x float> %i.cl, ptr %i.ax, align 4, !tbaa !103
  %i.cm = fsub <4 x float> %i.cb, %i.bh
  store <4 x float> %i.cm, ptr %i.bg, align 4, !tbaa !103
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.co, align 4, !tbaa !103 ; 2 uses
  %i.cp = fmul <4 x float> %wide.load.1, splat (float f0x3EEC8361)
  %i.cq = fmul <4 x float> %wide.load.1, splat (float f0x3E43EF33)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %wide.load204.1 = load <4 x float>, ptr %i.cr, align 4, !tbaa !103 ; 2 uses
  %i.cs = fmul <4 x float> %wide.load204.1, splat (float f0x3EEC8361)
  %i.ct = fmul <4 x float> %wide.load204.1, splat (float f0x3E43EF33)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load205.1 = load <4 x float>, ptr %i.cu, align 4, !tbaa !103 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load206.1 = load <4 x float>, ptr %i.cv, align 4, !tbaa !103 ; 4 uses
  %i.cw = fmul <4 x float> %wide.load206.1, splat (float f0x3ED4DB36)
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load205.1, <4 x float> splat (float f0x3EFB14BF), <4 x float> %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %wide.load207.1 = load <4 x float>, ptr %i.cy, align 4, !tbaa !103 ; 4 uses
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load207.1, <4 x float> splat (float f0x3E8E39E5), <4 x float> %i.cx)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %wide.load208.1 = load <4 x float>, ptr %i.da, align 4, !tbaa !103 ; 4 uses
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load208.1, <4 x float> splat (float f0x3DC7C60B), <4 x float> %i.cz) ; 2 uses
  %i.dc = fmul <4 x float> %wide.load206.1, splat (float f0xBDC7C60B)
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load205.1, <4 x float> splat (float f0x3ED4DB36), <4 x float> %i.dc)
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load207.1, <4 x float> splat (float f0xBEFB14BF), <4 x float> %i.dd)
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load208.1, <4 x float> splat (float f0xBE8E39E5), <4 x float> %i.de) ; 2 uses
  %i.dg = fmul <4 x float> %wide.load206.1, splat (float f0xBEFB14BF)
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load205.1, <4 x float> splat (float f0x3E8E39E5), <4 x float> %i.dg)
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load207.1, <4 x float> splat (float f0x3DC7C60B), <4 x float> %i.dh)
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load208.1, <4 x float> splat (float f0x3ED4DB36), <4 x float> %i.di) ; 2 uses
  %i.dk = fmul <4 x float> %wide.load206.1, splat (float f0xBE8E39E5)
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load205.1, <4 x float> splat (float f0x3DC7C60B), <4 x float> %i.dk)
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load207.1, <4 x float> splat (float f0x3ED4DB36), <4 x float> %i.dl)
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load208.1, <4 x float> splat (float f0xBEFB14BF), <4 x float> %i.dm) ; 2 uses
  %wide.load209.1 = load <4 x float>, ptr %i.cn, align 4, !tbaa !103 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %wide.load210.1 = load <4 x float>, ptr %i.do, align 4, !tbaa !103 ; 2 uses
  %i.dp = fadd <4 x float> %wide.load209.1, %wide.load210.1
  %i.dq = fmul <4 x float> %i.dp, splat (float f0x3EB504FB) ; 2 uses
  %i.dr = fsub <4 x float> %wide.load209.1, %wide.load210.1
  %i.ds = fmul <4 x float> %i.dr, splat (float f0x3EB504FB) ; 2 uses
  %i.dt = fadd <4 x float> %i.cp, %i.ct           ; 2 uses
  %i.du = fsub <4 x float> %i.cq, %i.cs           ; 2 uses
  %i.dv = fadd <4 x float> %i.dt, %i.dq           ; 2 uses
  %i.dw = fadd <4 x float> %i.du, %i.ds           ; 2 uses
  %i.dx = fsub <4 x float> %i.ds, %i.du           ; 2 uses
  %i.dy = fsub <4 x float> %i.dq, %i.dt           ; 2 uses
  %i.dz = fadd <4 x float> %i.db, %i.dv
  store <4 x float> %i.dz, ptr %i.cn, align 4, !tbaa !103
  %i.ea = fadd <4 x float> %i.df, %i.dw
  store <4 x float> %i.ea, ptr %i.cu, align 4, !tbaa !103
  %i.eb = fadd <4 x float> %i.dj, %i.dx
  store <4 x float> %i.eb, ptr %i.co, align 4, !tbaa !103
  %i.ec = fadd <4 x float> %i.dn, %i.dy
  store <4 x float> %i.ec, ptr %i.cv, align 4, !tbaa !103
  %i.ed = fsub <4 x float> %i.dy, %i.dn
  store <4 x float> %i.ed, ptr %i.do, align 4, !tbaa !103
  %i.ee = fsub <4 x float> %i.dx, %i.dj
  store <4 x float> %i.ee, ptr %i.cy, align 4, !tbaa !103
  %i.ef = fsub <4 x float> %i.dw, %i.df
  store <4 x float> %i.ef, ptr %i.cr, align 4, !tbaa !103
  %i.eg = fsub <4 x float> %i.dv, %i.db
  store <4 x float> %i.eg, ptr %i.da, align 4, !tbaa !103
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dctInverse8x8_sse2(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 8) %1) unnamed_addr #10 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 16, !tbaa !60 ; 4 uses
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.c = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.d = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load <4 x float>, ptr %i.e, align 16, !tbaa !60 ; 4 uses
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  %i.h = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.i = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.j = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.k = fmul <4 x float> %i.a, <float f0x3EB504FA, float poison, float poison, float poison>
  %i.l = fmul <4 x float> %i.c, <float f0x3EEC8360, float f0x3E43EF36, float f0xBE43EF36, float f0xBEEC8360>
  %i.m = fmul <4 x float> %i.g, <float f0x3EB504FA, float f0xBEB504FA, float f0xBEB504FA, float f0x3EB504FA>
  %i.n = fmul <4 x float> %i.i, <float f0x3E43EF36, float f0xBEEC8360, float f0x3EEC8360, float f0xBE43EF36>
  %i.o = fmul <4 x float> %i.b, <float f0x3EFB14C1, float f0x3ED4DB34, float f0x3E8E39E7, float f0x3DC7C60E>
  %i.p = fmul <4 x float> %i.d, <float f0x3ED4DB34, float f0xBDC7C60E, float f0xBEFB14C1, float f0xBE8E39E7>
  %i.q = fmul <4 x float> %i.h, <float f0x3E8E39E7, float f0xBEFB14C1, float f0x3DC7C60E, float f0x3ED4DB34>
  %i.r = fmul <4 x float> %i.j, <float f0x3DC7C60E, float f0xBE8E39E7, float f0x3ED4DB34, float f0xBEFB14C1>
  %i.s = fadd <4 x float> %i.k, <float 0.000000e+00, float poison, float poison, float poison>
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer
  %i.u = fadd <4 x float> %i.l, %i.t
  %i.v = fadd <4 x float> %i.m, %i.u
  %i.w = fadd <4 x float> %i.n, %i.v              ; 2 uses
  %i.x = fadd <4 x float> %i.o, zeroinitializer
  %i.y = fadd <4 x float> %i.p, %i.x
  %i.z = fadd <4 x float> %i.q, %i.y
  %i.aa = fadd <4 x float> %i.r, %i.z             ; 2 uses
  %i.ab = fadd <4 x float> %i.w, %i.aa
  store <4 x float> %i.ab, ptr %0, align 16, !tbaa !60
  %i.ac = fsub <4 x float> %i.w, %i.aa
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.ad, ptr %i.e, align 16, !tbaa !60
  switch i32 %1, label %default.unreachable [
    i32 7, label %.preheader
    i32 1, label %.preheader.sink.split.sink.split.sink.split.sink.split.sink.split.sink.split
    i32 2, label %.preheader.sink.split.sink.split.sink.split.sink.split.sink.split
    i32 3, label %.preheader.sink.split.sink.split.sink.split.sink.split
    i32 4, label %.preheader.sink.split.sink.split.sink.split
    i32 5, label %.preheader.sink.split.sink.split
    i32 6, label %.preheader.sink.split
    i32 0, label %bb.b
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load <4 x float>, ptr %i.ae, align 16, !tbaa !60 ; 4 uses
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ai = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = load <4 x float>, ptr %i.aj, align 16, !tbaa !60 ; 4 uses
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0
