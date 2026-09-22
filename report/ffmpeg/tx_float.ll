Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_float?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_fft5_float_c:bb.a
  %i.au = fadd nsz <2 x float> %i.ap, %i.at       ; 2 uses
  %i.av = fsub nsz <2 x float> %i.ap, %i.at       ; 2 uses
  %i.aw = shufflevector <2 x float> %i.au, <2 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.au, <2 x i32> <i32 0, i32 3>
  %i.ay = fadd nsz <2 x float> %i.j, %i.ax
  store <2 x float> %i.ay, ptr %i.g, align 4, !tbaa !24
  %i.az = fadd nsz <2 x float> %i.j, %i.aw
  store <2 x float> %i.az, ptr %i.h, align 4, !tbaa !24
  %i.ba = fadd nsz <2 x float> %i.j, %i.ak
  store <2 x float> %i.ba, ptr %i.i, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft7_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 3                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx163.i = mul nuw nsw i64 %i.a, 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx163.i
  %.idx164.i = shl nuw nsw i64 %i.a, 5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx164.i
  %.idx165.i = mul nuw nsw i64 %i.a, 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx165.i
  %.idx166.i = mul nuw nsw i64 %i.a, 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx166.i
  %i.o = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 7 uses
  %i.p = load <2 x float>, ptr %i.b, align 4, !tbaa !24 ; 3 uses
  %i.q = load <2 x float>, ptr %i.c, align 4, !tbaa !24 ; 3 uses
  %i.r = fadd nsz <2 x float> %i.p, %i.q          ; 3 uses
  %i.s = load <2 x float>, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.t = load <2 x float>, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.u = load <2 x float>, ptr %i.f, align 4, !tbaa !24 ; 2 uses
  %i.v = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.w = fsub nsz <2 x float> %i.s, %i.t          ; 4 uses
  %i.x = load <2 x float>, ptr %i.g, align 4, !tbaa !24 ; 4 uses
  %i.y = shufflevector <2 x float> %i.p, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.z = shufflevector <2 x float> %i.q, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.aa = fsub nsz <2 x float> %i.y, %i.z         ; 4 uses
  %i.ab = shufflevector <2 x float> %i.t, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ac = fadd nsz <2 x float> %i.u, %i.ab        ; 3 uses
  %i.ad = shufflevector <2 x float> %i.x, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.ae = shufflevector <2 x float> %i.v, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.af = fsub nsz <2 x float> %i.ad, %i.ae       ; 4 uses
  %i.ag = shufflevector <2 x float> %i.x, <2 x float> %i.s, <2 x i32> <i32 2, i32 0>
  %i.ah = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fadd nsz <2 x float> %i.ag, %i.ah       ; 3 uses
  %i.aj = fadd nsz <2 x float> %i.o, %i.r
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> %i.ac, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.al = fadd nsz <2 x float> %i.aj, %i.ak
  %i.am = shufflevector <2 x float> %i.ac, <2 x float> %i.ai, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.an = fadd nsz <2 x float> %i.al, %i.am
  store <2 x float> %i.an, ptr %1, align 4, !tbaa !24
  %i.ao = load <4 x float>, ptr @ff_tx_tab_7_float, align 16
  %i.ap = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 4), align 4, !tbaa !24 ; 5 uses
  %i.aq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 8), align 8
  %i.ar = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 16), align 16, !tbaa !24 ; 3 uses
  %i.as = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 20), align 4, !tbaa !29 ; 3 uses
  %i.at = shufflevector <2 x float> %i.ap, <2 x float> %i.ar, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.au = fneg nsz <2 x float> %i.at              ; 3 uses
  %i.av = fneg nsz <2 x float> %i.ac
  %i.aw = fmul nsz <2 x float> %i.at, %i.av
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.az = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.r, <2 x float> %i.ax)
  %i.ba = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.ai, <2 x float> %i.az) ; 2 uses
  %i.bb = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 12), align 4, !tbaa !29 ; 2 uses
  %i.bc = extractelement <2 x float> %i.ap, i64 0
  %i.bd = fneg nsz float %i.bc
  %i.be = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = fneg nsz float %i.bb
  %i.bg = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = fmul nsz <2 x float> %i.w, %i.bh
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = shufflevector <2 x float> %i.ar, <2 x float> %i.ap, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.af, <2 x float> %i.bj)
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.aa, <2 x float> %i.bl) ; 2 uses
  %i.bo = fsub nsz <2 x float> %i.ba, %i.bn       ; 2 uses
  %i.bp = fadd nsz <2 x float> %i.ba, %i.bn       ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.bs = fadd nsz <2 x float> %i.o, %i.br
  store <2 x float> %i.bs, ptr %i.i, align 4, !tbaa !24
  %i.bt = fneg nsz <2 x float> %i.r               ; 2 uses
  %i.bu = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul nsz <2 x float> %i.bu, %i.bt
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.am, <2 x float> %i.bv)
  %i.bx = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.ak, <2 x float> %i.bw) ; 2 uses
  %i.bz = shufflevector <2 x float> %i.w, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ca = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x float> %i.ca, float %i.as, i64 0
  %i.cc = fmul nsz <2 x float> %i.bz, %i.cb
  %i.cd = insertelement <2 x float> %i.ap, float %i.as, i64 1
  %i.ce = shufflevector <2 x float> %i.af, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.ce, <2 x float> %i.cc)
  %i.cg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = shufflevector <2 x float> %i.aa, <2 x float> %i.af, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ci, <2 x float> %i.cf) ; 2 uses
  %i.ck = fadd nsz <2 x float> %i.by, %i.cj       ; 2 uses
  %i.cl = fsub nsz <2 x float> %i.by, %i.cj       ; 2 uses
  %i.cm = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> %i.ck, <2 x i32> <i32 0, i32 3>
  %i.co = fadd nsz <2 x float> %i.o, %i.cn
  store <2 x float> %i.co, ptr %i.j, align 4, !tbaa !24
  %i.cp = shufflevector <2 x float> %i.af, <2 x float> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.cq = fmul nsz <2 x float> %i.cp, %i.bh
  %i.cr = insertelement <2 x float> poison, float %i.as, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ci, <2 x float> %i.cq)
  %i.cu = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.be, <2 x float> %i.ct) ; 2 uses
  %i.cx = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul nsz <2 x float> %i.cx, %i.bt
  %i.cz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ak, <2 x float> %i.cy)
  %i.da = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.am, <2 x float> %i.cz) ; 2 uses
  %i.dc = fsub nsz <2 x float> %i.db, %i.cw       ; 2 uses
  %i.dd = fadd nsz <2 x float> %i.db, %i.cw       ; 2 uses
  %i.de = shufflevector <2 x float> %i.dc, <2 x float> %i.dd, <2 x i32> <i32 0, i32 3>
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.dg = fadd nsz <2 x float> %i.o, %i.df
  store <2 x float> %i.dg, ptr %i.k, align 4, !tbaa !24
  %i.dh = fadd nsz <2 x float> %i.o, %i.de
  store <2 x float> %i.dh, ptr %i.l, align 4, !tbaa !24
  %i.di = fadd nsz <2 x float> %i.o, %i.cm
  store <2 x float> %i.di, ptr %i.m, align 4, !tbaa !24
  %i.dj = fadd nsz <2 x float> %i.o, %i.bq
  store <2 x float> %i.dj, ptr %i.n, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft9_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 3                           ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx196.i = mul nuw nsw i64 %i.a, 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx196.i
  %.idx197.i = shl nuw nsw i64 %i.a, 5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx197.i
  %.idx198.i = mul nuw nsw i64 %i.a, 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx198.i
  %.idx199.i = mul nuw nsw i64 %i.a, 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx199.i
  %.idx200.i = mul nuw nsw i64 %i.a, 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.idx200.i
  %.idx201.i = shl nuw nsw i64 %i.a, 6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx201.i
  %i.r = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.s = load <2 x float>, ptr %i.b, align 4, !tbaa !24 ; 2 uses
  %i.t = load <2 x float>, ptr %i.c, align 4, !tbaa !24 ; 2 uses
  %i.u = fsub nsz <2 x float> %i.s, %i.t          ; 2 uses
  %i.v = fadd nsz <2 x float> %i.s, %i.t          ; 2 uses
  %i.w = load <2 x float>, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.x = load <2 x float>, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.y = fsub nsz <2 x float> %i.w, %i.x          ; 2 uses
  %i.z = fadd nsz <2 x float> %i.w, %i.x          ; 2 uses
  %i.aa = load <2 x float>, ptr %i.f, align 4, !tbaa !24 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.g, align 4, !tbaa !24 ; 2 uses
  %i.ac = fsub nsz <2 x float> %i.aa, %i.ab
  %i.ad = fadd nsz <2 x float> %i.aa, %i.ab       ; 2 uses
  %i.ae = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.af = load <2 x float>, ptr %i.i, align 4, !tbaa !24 ; 2 uses
  %i.ag = fsub nsz <2 x float> %i.ae, %i.af       ; 3 uses
  %i.ah = fadd nsz <2 x float> %i.ae, %i.af       ; 3 uses
  %i.ai = fsub nsz <2 x float> %i.v, %i.ah        ; 2 uses
  %i.aj = fsub nsz <2 x float> %i.z, %i.ah        ; 2 uses
  %i.ak = fsub nsz <2 x float> %i.u, %i.ag        ; 2 uses
  %i.al = fadd nsz <2 x float> %i.y, %i.ag        ; 2 uses
  %i.am = fneg nsz <2 x float> %i.aj
  %i.an = fneg nsz <2 x float> %i.al
  %i.ao = fadd nsz <2 x float> %i.r, %i.ad        ; 2 uses
  %i.ap = fadd nsz <2 x float> %i.v, %i.z
  %i.aq = fadd nsz <2 x float> %i.ap, %i.ah       ; 2 uses
  %i.ar = fadd nsz <2 x float> %i.ao, %i.aq
  store <2 x float> %i.ar, ptr %1, align 4, !tbaa !24
  %4 = load <6 x float>, ptr @ff_tx_tab_9_float, align 16, !tbaa !24 ; 6 uses
  %i.as = fsub nsz <2 x float> %i.u, %i.y
  %i.at = fadd nsz <2 x float> %i.as, %i.ag
  %5 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.au = fmul nsz <2 x float> %i.at, %5
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.aq, <2 x float> %i.ao) ; 2 uses
  %i.ay = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ad, <2 x float> %i.r) ; 3 uses
  %6 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.az = fmul nsz <2 x float> %i.aj, %6
  %7 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 2, i32 2>
  %8 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.ai, <2 x float> %i.az) ; 2 uses
  %9 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %10 = fmul nsz <2 x float> %i.al, %9
  %11 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ba = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.ak, <2 x float> %10) ; 2 uses
  %12 = fmul nsz <2 x float> %i.ac, %5            ; 3 uses
  %13 = fadd nsz <2 x float> %i.ay, %8            ; 2 uses
  %14 = fadd nsz <2 x float> %12, %i.ba
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %16 = fsub nsz <2 x float> %i.ax, %i.av         ; 2 uses
  %17 = fadd nsz <2 x float> %i.ax, %i.av         ; 2 uses
  %18 = shufflevector <2 x float> %16, <2 x float> %17, <2 x i32> <i32 0, i32 3>
  %19 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_float, i64 24), align 8, !tbaa !24 ; 2 uses
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul nsz <2 x float> %20, %i.am
  %i.bc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.ai, <2 x float> %i.bb) ; 2 uses
  %21 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %22 = fmul nsz <2 x float> %21, %i.an
  %23 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.ak, <2 x float> %22) ; 2 uses
  %i.bd = fadd nsz <2 x float> %i.ay, %i.bc       ; 2 uses
  %i.be = fsub nsz <2 x float> %23, %12
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bg = fadd nsz <2 x float> %13, %15           ; 2 uses
  %i.bh = fsub nsz <2 x float> %13, %15           ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bi, ptr %i.j, align 4, !tbaa !24
  %i.bj = fadd nsz <2 x float> %i.bd, %i.bf       ; 2 uses
  %i.bk = fsub nsz <2 x float> %i.bd, %i.bf       ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bl, ptr %i.k, align 4, !tbaa !24
  %i.bm = shufflevector <2 x float> %17, <2 x float> %16, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bm, ptr %i.l, align 4, !tbaa !24
  %i.bn = fadd nsz <2 x float> %8, %i.bc
  %i.bo = fsub nsz <2 x float> %i.ay, %i.bn       ; 2 uses
  %i.bp = fsub nsz <2 x float> %23, %i.ba
  %i.bq = fadd nsz <2 x float> %12, %i.bp
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bs = fadd nsz <2 x float> %i.bo, %i.br       ; 2 uses
  %i.bt = fsub nsz <2 x float> %i.bo, %i.br       ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bs, <2 x float> %i.bt, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bu, ptr %i.m, align 4, !tbaa !24
  %i.bv = shufflevector <2 x float> %i.bt, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bv, ptr %i.n, align 4, !tbaa !24
  store <2 x float> %18, ptr %i.o, align 4, !tbaa !24
  %i.bw = shufflevector <2 x float> %i.bk, <2 x float> %i.bj, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bw, ptr %i.p, align 4, !tbaa !24
  %i.bx = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bx, ptr %i.q, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft15_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
fft15.exit:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 40), align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.p = lshr i64 %3, 3                           ; 14 uses
  %.idx.i = mul nuw nsw i64 %i.p, 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx88.i = mul nuw nsw i64 %i.p, 96
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i
  %.idx89.i = mul nuw nsw i64 %i.p, 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i
  %.idx90.i = mul nuw nsw i64 %i.p, 72
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i
  %.idx.i5 = mul nuw nsw i64 %i.p, 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i5
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p
  %.idx88.i6 = mul nuw nsw i64 %i.p, 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i6
  %.idx89.i7 = mul nuw nsw i64 %i.p, 104
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i7
  %.idx90.i8 = shl nuw nsw i64 %i.p, 5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i8
  %.idx.i12 = mul nuw nsw i64 %i.p, 40
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i12
  %.idx88.i13 = mul nuw nsw i64 %i.p, 88
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i13
  %.idx89.i14 = shl nuw nsw i64 %i.p, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i14
  %.idx90.i15 = shl nuw nsw i64 %i.p, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i15
  %.idx91.i = mul nuw nsw i64 %i.p, 112
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx91.i
  %i.ae = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 32), align 16, !tbaa !24 ; 5 uses
  %i.af = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.b, align 4, !tbaa !24 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.c, align 4, !tbaa !24 ; 2 uses
  %i.ai = fsub nsz <2 x float> %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fadd nsz <2 x float> %i.ag, %i.ah       ; 2 uses
  %i.al = fmul nsz <2 x float> %i.aj, %i.ae       ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.a, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ao = fmul nsz <2 x float> %i.ak, %i.an
  %i.ap = fsub nsz <2 x float> %i.af, %i.ao       ; 2 uses
  %i.aq = fsub nsz <2 x float> %i.ap, %i.al       ; 2 uses
  %i.ar = fadd nsz <2 x float> %i.ap, %i.al       ; 2 uses
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.at = load <2 x float>, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.au = load <2 x float>, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.av = load <2 x float>, ptr %i.f, align 4, !tbaa !24 ; 2 uses
  %i.aw = fsub nsz <2 x float> %i.au, %i.av
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = fadd nsz <2 x float> %i.au, %i.av       ; 2 uses
  %i.az = fmul nsz <2 x float> %i.ax, %i.ae       ; 2 uses
  %i.ba = fmul nsz <2 x float> %i.ay, %i.an
  %i.bb = fsub nsz <2 x float> %i.at, %i.ba       ; 2 uses
  %i.bc = fsub nsz <2 x float> %i.bb, %i.az       ; 2 uses
  %i.bd = fadd nsz <2 x float> %i.bb, %i.az       ; 2 uses
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bf = load <2 x float>, ptr %i.g, align 4, !tbaa !24 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.i, align 4, !tbaa !24 ; 2 uses
  %i.bi = fsub nsz <2 x float> %i.bg, %i.bh
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = fadd nsz <2 x float> %i.bg, %i.bh       ; 2 uses
  %i.bl = fmul nsz <2 x float> %i.bj, %i.ae       ; 2 uses
  %i.bm = fmul nsz <2 x float> %i.bk, %i.an
  %i.bn = fsub nsz <2 x float> %i.bf, %i.bm       ; 2 uses
  %i.bo = fsub nsz <2 x float> %i.bn, %i.bl       ; 2 uses
  %i.bp = fadd nsz <2 x float> %i.bn, %i.bl       ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.br = load <2 x float>, ptr %i.j, align 4, !tbaa !24 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.k, align 4, !tbaa !24 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.l, align 4, !tbaa !24 ; 2 uses
  %i.bu = fsub nsz <2 x float> %i.bs, %i.bt
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = fadd nsz <2 x float> %i.bs, %i.bt       ; 2 uses
  %i.bx = fmul nsz <2 x float> %i.bv, %i.ae       ; 2 uses
  %i.by = fmul nsz <2 x float> %i.bw, %i.an
  %i.bz = fsub nsz <2 x float> %i.br, %i.by       ; 2 uses
  %i.ca = fsub nsz <2 x float> %i.bz, %i.bx       ; 2 uses
  %i.cb = fadd nsz <2 x float> %i.bz, %i.bx       ; 2 uses
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> %i.cb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cd = load <2 x float>, ptr %i.m, align 4, !tbaa !24 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.n, align 4, !tbaa !24 ; 2 uses
  %i.cf = load <2 x float>, ptr %i.o, align 4, !tbaa !24 ; 2 uses
  %i.cg = fsub nsz <2 x float> %i.ce, %i.cf
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = fadd nsz <2 x float> %i.ce, %i.cf       ; 2 uses
  %i.cj = fmul nsz <2 x float> %i.ch, %i.ae       ; 2 uses
  %i.ck = fmul nsz <2 x float> %i.ci, %i.an
  %i.cl = fsub nsz <2 x float> %i.cd, %i.ck       ; 2 uses
  %i.cm = fsub nsz <2 x float> %i.cl, %i.cj       ; 2 uses
  %i.cn = fadd nsz <2 x float> %i.cl, %i.cj       ; 2 uses
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cp = fadd nsz <2 x float> %i.af, %i.ak       ; 5 uses
  %i.cq = fadd nsz <2 x float> %i.at, %i.ay       ; 2 uses
  %i.cr = fadd nsz <2 x float> %i.bf, %i.bk       ; 2 uses
  %i.cs = fadd nsz <2 x float> %i.br, %i.bw       ; 2 uses
  %i.ct = fadd nsz <2 x float> %i.cd, %i.ci       ; 2 uses
  %i.cu = fsub nsz <2 x float> %i.cq, %i.ct       ; 2 uses
  %i.cv = fadd nsz <2 x float> %i.cq, %i.ct       ; 3 uses
  %i.cw = fsub nsz <2 x float> %i.cr, %i.cs       ; 2 uses
  %i.cx = fadd nsz <2 x float> %i.cr, %i.cs       ; 3 uses
  %i.cy = fadd nsz <2 x float> %i.cp, %i.cv
  %i.cz = fadd nsz <2 x float> %i.cy, %i.cx
  store <2 x float> %i.cz, ptr %1, align 4, !tbaa !24
  %i.da = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %i.db = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.dc = fneg nsz <2 x float> %i.cx
  %i.dd = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = fmul nsz <2 x float> %i.dd, %i.dc
  %i.df = shufflevector <4 x float> %i.da, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.cv, <2 x float> %i.de) ; 2 uses
  %i.dh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %i.di = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = fmul nsz <2 x float> %i.cw, %i.dj
  %i.dl = shufflevector <4 x float> %i.dh, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.cu, <2 x float> %i.dk)
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.do = fsub nsz <2 x float> %i.dg, %i.dn       ; 2 uses
  %i.dp = fadd nsz <2 x float> %i.dg, %i.dn       ; 2 uses
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> %i.dp, <2 x i32> <i32 0, i32 3>
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> %i.do, <2 x i32> <i32 0, i32 3>
  %i.ds = fadd nsz <2 x float> %i.cp, %i.dr
  store <2 x float> %i.ds, ptr %i.q, align 4, !tbaa !24
  %i.dt = fneg nsz <2 x float> %i.cv
  %i.du = fmul nsz <2 x float> %i.dd, %i.dt
  %i.dv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.cx, <2 x float> %i.du) ; 2 uses
  %i.dw = fneg nsz <2 x float> %i.cu
  %i.dx = fmul nsz <2 x float> %i.dj, %i.dw
  %i.dy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.cw, <2 x float> %i.dx)
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ea = fadd nsz <2 x float> %i.dv, %i.dz       ; 2 uses
  %i.eb = fsub nsz <2 x float> %i.dv, %i.dz       ; 2 uses
  %i.ec = shufflevector <2 x float> %i.ea, <2 x float> %i.eb, <2 x i32> <i32 0, i32 3>
  %i.ed = shufflevector <2 x float> %i.eb, <2 x float> %i.ea, <2 x i32> <i32 0, i32 3>
  %i.ee = fadd nsz <2 x float> %i.cp, %i.ed
  store <2 x float> %i.ee, ptr %i.r, align 4, !tbaa !24
  %i.ef = fadd nsz <2 x float> %i.cp, %i.ec
  store <2 x float> %i.ef, ptr %i.s, align 4, !tbaa !24
  %i.eg = fadd nsz <2 x float> %i.cp, %i.dq
  store <2 x float> %i.eg, ptr %i.t, align 4, !tbaa !24
  %i.eh = shufflevector <2 x float> %i.ar, <2 x float> %i.aq, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ei = shufflevector <2 x float> %i.bd, <2 x float> %i.bc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ej = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ek = shufflevector <2 x float> %i.cb, <2 x float> %i.ca, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.el = shufflevector <2 x float> %i.cn, <2 x float> %i.cm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.em = fsub nsz <2 x float> %i.ei, %i.el
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eo = fadd nsz <2 x float> %i.ei, %i.el       ; 3 uses
  %i.ep = fsub nsz <2 x float> %i.ej, %i.ek
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.er = fadd nsz <2 x float> %i.ej, %i.ek       ; 3 uses
  %i.es = fadd nsz <2 x float> %i.eh, %i.eo
  %i.et = fadd nsz <2 x float> %i.es, %i.er
  store <2 x float> %i.et, ptr %i.u, align 4, !tbaa !24
  %i.eu = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %i.ev = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.ew = fneg nsz <2 x float> %i.er
  %i.ex = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = fmul nsz <2 x float> %i.ex, %i.ew
  %i.ez = shufflevector <4 x float> %i.eu, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.eo, <2 x float> %i.ey) ; 2 uses
  %i.fb = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %i.fc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = fmul nsz <2 x float> %i.eq, %i.fd
  %i.ff = shufflevector <4 x float> %i.fb, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.en, <2 x float> %i.fe) ; 2 uses
  %i.fh = fsub nsz <2 x float> %i.fa, %i.fg       ; 2 uses
  %i.fi = fadd nsz <2 x float> %i.fa, %i.fg       ; 2 uses
  %i.fj = shufflevector <2 x float> %i.fh, <2 x float> %i.fi, <2 x i32> <i32 0, i32 3>
  %i.fk = shufflevector <2 x float> %i.fi, <2 x float> %i.fh, <2 x i32> <i32 0, i32 3>
  %i.fl = fadd nsz <2 x float> %i.eh, %i.fk
  store <2 x float> %i.fl, ptr %i.v, align 4, !tbaa !24
  %i.fm = fneg nsz <2 x float> %i.eo
  %i.fn = fmul nsz <2 x float> %i.ex, %i.fm
end_hunk_0
begin_hunk_1_@ff_tx_mdct_pfa_7xM_fwd_float_c:bb.a
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !29 ; 2 uses
  %i.ia = sext i32 %i.hs to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ia ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !28 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !29 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ho ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !29
  %i.ii = load float, ptr %i.if, align 4, !tbaa !28
  %i.ij = fneg nsz float %i.ii
  %i.ik = fmul nsz float %i.ie, %i.ij
  %i.il = tail call nsz float @llvm.fmuladd.f32(float %i.ic, float %i.ih, float %i.ik)
  %i.im = shl nsw i64 %i.hq, 1
  %i.in = mul nsw i64 %i.p, %i.im
  %i.io = getelementptr [4 x i8], ptr %1, i64 %i.in ; 2 uses
  %i.ip = getelementptr [4 x i8], ptr %i.io, i64 %i.p
  store float %i.il, ptr %i.ip, align 4, !tbaa !24
  %i.iq = load float, ptr %i.if, align 4, !tbaa !28
  %i.ir = load float, ptr %i.ig, align 4, !tbaa !29
  %i.is = fmul nsz float %i.ie, %i.ir
  %i.it = tail call nsz float @llvm.fmuladd.f32(float %i.ic, float %i.iq, float %i.is)
  %i.iu = shl nuw nsw i64 %i.ho, 1
  %i.iv = mul nuw nsw i64 %i.p, %i.iu
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iv ; 2 uses
  store float %i.it, ptr %i.iw, align 4, !tbaa !24
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hq ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4 ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !29
  %i.ja = load float, ptr %i.ix, align 4, !tbaa !28
  %i.jb = fneg nsz float %i.ja
  %i.jc = fmul nsz float %i.hz, %i.jb
  %i.jd = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.iz, float %i.jc)
  %i.je = getelementptr [4 x i8], ptr %i.iw, i64 %i.p
  store float %i.jd, ptr %i.je, align 4, !tbaa !24
  %i.jf = load float, ptr %i.ix, align 4, !tbaa !28
  %i.jg = load float, ptr %i.iy, align 4, !tbaa !29
  %i.jh = fmul nsz float %i.hz, %i.jg
  %i.ji = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.jf, float %i.jh)
  store float %i.ji, ptr %i.io, align 4, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !102
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [9 x %struct.AVComplexFloat], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 9                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 27                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = zext nneg i32 %i.e to i64                ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx196.i = mul nuw nsw i64 %i.u, 24
  %.idx197.i = shl nuw nsw i64 %i.u, 5
  %.idx198.i = mul nuw nsw i64 %i.u, 40
  %.idx199.i = mul nuw nsw i64 %i.u, 48
  %.idx200.i = mul nuw nsw i64 %i.u, 56
  %.idx201.i = shl nuw nsw i64 %i.u, 6
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 36
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ad = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ag = sext i32 %i.e to i64                    ; 8 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  tail call void %i.ah(ptr noundef %i.ad, ptr noundef %i.ai, ptr noundef %i.ai, i64 noundef 8) #16
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ag ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 8) #16
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx160 = shl nsw i64 %i.ag, 4
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx160 ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx161 = mul nsw i64 %i.ag, 24
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx161 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 8) #16
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx162 = shl nsw i64 %i.ag, 5
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx162 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 8) #16
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx163 = mul nsw i64 %i.ag, 40
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.idx163 ; 2 uses
  tail call void %i.az(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef %i.bc, i64 noundef 8) #16
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx164 = mul nsw i64 %i.ag, 48
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %.idx164 ; 2 uses
  tail call void %i.bd(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bg, i64 noundef 8) #16
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx165 = mul nsw i64 %i.ag, 56
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx165 ; 2 uses
  tail call void %i.bh(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk, i64 noundef 8) #16
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !31
  %.idx166 = shl nsw i64 %i.ag, 6
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %.idx166 ; 2 uses
  tail call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bo, i64 noundef 8) #16
  %i.bp = icmp sgt i32 %i.i, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bs ; 9 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx196.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx197.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx198.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx199.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx200.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx201.i
  %i.cc = load <2 x float>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.v, align 8, !tbaa !24 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.w, align 16, !tbaa !24 ; 2 uses
  %i.cf = fsub nsz <2 x float> %i.cd, %i.ce       ; 2 uses
  %i.cg = fadd nsz <2 x float> %i.cd, %i.ce       ; 2 uses
  %i.ch = load <2 x float>, ptr %i.x, align 16, !tbaa !24 ; 2 uses
  %i.ci = load <2 x float>, ptr %i.y, align 8, !tbaa !24 ; 2 uses
  %i.cj = fsub nsz <2 x float> %i.ch, %i.ci       ; 2 uses
  %i.ck = fadd nsz <2 x float> %i.ch, %i.ci       ; 2 uses
  %i.cl = load <2 x float>, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.cn = fsub nsz <2 x float> %i.cl, %i.cm
  %i.co = fadd nsz <2 x float> %i.cl, %i.cm       ; 2 uses
  %i.cp = load <2 x float>, ptr %i.ab, align 16, !tbaa !24 ; 2 uses
  %i.cq = load <2 x float>, ptr %i.ac, align 8, !tbaa !24 ; 2 uses
  %i.cr = fsub nsz <2 x float> %i.cp, %i.cq       ; 3 uses
  %i.cs = fadd nsz <2 x float> %i.cp, %i.cq       ; 3 uses
  %i.ct = fsub nsz <2 x float> %i.cg, %i.cs       ; 2 uses
  %i.cu = fsub nsz <2 x float> %i.ck, %i.cs       ; 2 uses
  %i.cv = fsub nsz <2 x float> %i.cf, %i.cr       ; 2 uses
  %i.cw = fadd nsz <2 x float> %i.cj, %i.cr       ; 2 uses
  %i.cx = fneg nsz <2 x float> %i.cu
  %i.cy = fneg nsz <2 x float> %i.cw
  %i.cz = fadd nsz <2 x float> %i.cc, %i.co       ; 2 uses
  %i.da = fadd nsz <2 x float> %i.cg, %i.ck
  %i.db = fadd nsz <2 x float> %i.da, %i.cs       ; 2 uses
  %i.dc = fadd nsz <2 x float> %i.cz, %i.db
  store <2 x float> %i.dc, ptr %i.bt, align 4, !tbaa !24
  %5 = load <6 x float>, ptr @ff_tx_tab_9_float, align 16, !tbaa !24 ; 6 uses
  %i.dd = fsub nsz <2 x float> %i.cf, %i.cj
  %i.de = fadd nsz <2 x float> %i.dd, %i.cr
  %6 = shufflevector <6 x float> %5, <6 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.df = fmul nsz <2 x float> %i.de, %6
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dh = shufflevector <6 x float> %5, <6 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.db, <2 x float> %i.cz) ; 2 uses
  %i.dj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.co, <2 x float> %i.cc) ; 3 uses
  %7 = shufflevector <6 x float> %5, <6 x float> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.dk = fmul nsz <2 x float> %i.cu, %7
  %8 = shufflevector <6 x float> %5, <6 x float> poison, <2 x i32> <i32 2, i32 2>
  %9 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.ct, <2 x float> %i.dk) ; 2 uses
  %10 = shufflevector <6 x float> %5, <6 x float> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %11 = fmul nsz <2 x float> %i.cw, %10
  %12 = shufflevector <6 x float> %5, <6 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.cv, <2 x float> %11) ; 2 uses
  %13 = fmul nsz <2 x float> %i.cn, %6            ; 3 uses
  %14 = fadd nsz <2 x float> %i.dj, %9            ; 2 uses
  %15 = fadd nsz <2 x float> %13, %i.dl
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %17 = fsub nsz <2 x float> %i.di, %i.dg         ; 2 uses
  %18 = fadd nsz <2 x float> %i.di, %i.dg         ; 2 uses
  %19 = shufflevector <2 x float> %17, <2 x float> %18, <2 x i32> <i32 0, i32 3>
  %20 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_float, i64 24), align 8, !tbaa !24 ; 2 uses
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul nsz <2 x float> %21, %i.cx
  %i.dn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.ct, <2 x float> %i.dm) ; 2 uses
  %22 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %23 = fmul nsz <2 x float> %22, %i.cy
  %24 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.cv, <2 x float> %23) ; 2 uses
  %i.do = fadd nsz <2 x float> %i.dj, %i.dn       ; 2 uses
  %i.dp = fsub nsz <2 x float> %24, %13
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dr = fadd nsz <2 x float> %14, %16           ; 2 uses
  %i.ds = fsub nsz <2 x float> %14, %16           ; 2 uses
  %i.dt = shufflevector <2 x float> %i.dr, <2 x float> %i.ds, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dt, ptr %i.bu, align 4, !tbaa !24
  %i.du = fadd nsz <2 x float> %i.do, %i.dq       ; 2 uses
  %i.dv = fsub nsz <2 x float> %i.do, %i.dq       ; 2 uses
  %i.dw = shufflevector <2 x float> %i.du, <2 x float> %i.dv, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dw, ptr %i.bv, align 4, !tbaa !24
  %i.dx = shufflevector <2 x float> %18, <2 x float> %17, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dx, ptr %i.bw, align 4, !tbaa !24
  %i.dy = fadd nsz <2 x float> %9, %i.dn
  %i.dz = fsub nsz <2 x float> %i.dj, %i.dy       ; 2 uses
  %i.ea = fsub nsz <2 x float> %24, %i.dl
  %i.eb = fadd nsz <2 x float> %13, %i.ea
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ed = fadd nsz <2 x float> %i.dz, %i.ec       ; 2 uses
  %i.ee = fsub nsz <2 x float> %i.dz, %i.ec       ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ef, ptr %i.bx, align 4, !tbaa !24
  %i.eg = shufflevector <2 x float> %i.ee, <2 x float> %i.ed, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.eg, ptr %i.by, align 4, !tbaa !24
  store <2 x float> %19, ptr %i.bz, align 4, !tbaa !24
  %i.eh = shufflevector <2 x float> %i.dv, <2 x float> %i.du, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.eh, ptr %i.ca, align 4, !tbaa !24
  %i.ei = shufflevector <2 x float> %i.ds, <2 x float> %i.dr, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ei, ptr %i.cb, align 4, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !103

bb.c:                                             ; preds = %.preheader137, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ej = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.ek = icmp slt i32 %i.ej, %i.f
  %i.el = add nsw i32 %i.ej, %i.f
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %2, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !24 ; 2 uses
  %i.ep = xor i32 %i.ej, -1                       ; 4 uses
  br i1 %i.ek, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eq = add i32 %i.f, %i.ep
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %2, i64 %i.er
  %i.et = load float, ptr %i.es, align 4, !tbaa !24
  %i.eu = fsub nsz float %i.et, %i.eo
  %i.ev = add nsw i32 %i.ej, %i.g
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !24
  %i.ez = add i32 %i.g, %i.ep
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !24
  %i.fd = fadd nsz float %i.ey, %i.fc
  %i.fe = fneg nsz float %i.fd
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ff = add i32 %i.r, %i.ep
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !24
  %i.fj = fadd nsz float %i.eo, %i.fi
  %i.fk = fneg nsz float %i.fj
  %i.fl = sub nuw nsw i32 %i.ej, %i.f
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !24
  %i.fp = add i32 %i.g, %i.ep
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !24
  %i.ft = fsub nsz float %i.fo, %i.fs
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.077.0 = phi nsz float [ %i.eu, %bb.d ], [ %i.fk, %bb.e ]
  %.sroa.6.0 = phi nsz float [ %i.fe, %bb.d ], [ %i.ft, %bb.e ]
  %i.fu = ashr i32 %i.ej, 1
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.fy = load <2 x float>, ptr %i.fw, align 4, !tbaa !24 ; 2 uses
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ga = insertelement <2 x float> poison, float %.sroa.6.0, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fneg nsz <2 x float> %i.fz
  %i.gd = shufflevector <2 x float> %i.fy, <2 x float> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.ge = fmul nsz <2 x float> %i.gb, %i.gd
  %i.gf = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.fz, <2 x float> %i.ge)
  store <2 x float> %i.gh, ptr %i.fx, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !104

.lr.ph:                                           ; preds = %.preheader136
  %i.gi = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.gj = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.gk = add nuw nsw i64 %indvars.iv151, %i.gj   ; 3 uses
  %i.gl = xor i64 %indvars.iv151, -1
  %i.gm = add nsw i64 %i.gj, %i.gl                ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.gk
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !12
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.gm
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !12
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gr ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !28 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !29 ; 2 uses
  %i.gw = sext i32 %i.go to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gw ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !28 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !29 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gk ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !29
  %i.he = load float, ptr %i.hb, align 4, !tbaa !28
  %i.hf = fneg nsz float %i.he
  %i.hg = fmul nsz float %i.ha, %i.hf
  %i.hh = tail call nsz float @llvm.fmuladd.f32(float %i.gy, float %i.hd, float %i.hg)
  %i.hi = shl nsw i64 %i.gm, 1
  %i.hj = mul nsw i64 %i.p, %i.hi
  %i.hk = getelementptr [4 x i8], ptr %1, i64 %i.hj ; 2 uses
  %i.hl = getelementptr [4 x i8], ptr %i.hk, i64 %i.p
  store float %i.hh, ptr %i.hl, align 4, !tbaa !24
  %i.hm = load float, ptr %i.hb, align 4, !tbaa !28
  %i.hn = load float, ptr %i.hc, align 4, !tbaa !29
  %i.ho = fmul nsz float %i.ha, %i.hn
  %i.hp = tail call nsz float @llvm.fmuladd.f32(float %i.gy, float %i.hm, float %i.ho)
  %i.hq = shl nuw nsw i64 %i.gk, 1
  %i.hr = mul nuw nsw i64 %i.p, %i.hq
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hr ; 2 uses
  store float %i.hp, ptr %i.hs, align 4, !tbaa !24
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gm ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !29
  %i.hw = load float, ptr %i.ht, align 4, !tbaa !28
  %i.hx = fneg nsz float %i.hw
  %i.hy = fmul nsz float %i.gv, %i.hx
  %i.hz = tail call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.hv, float %i.hy)
  %i.ia = getelementptr [4 x i8], ptr %i.hs, i64 %i.p
  store float %i.hz, ptr %i.ia, align 4, !tbaa !24
  %i.ib = load float, ptr %i.ht, align 4, !tbaa !28
  %i.ic = load float, ptr %i.hu, align 4, !tbaa !29
  %i.id = fmul nsz float %i.gv, %i.ic
  %i.ie = tail call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.ib, float %i.id)
  store float %i.ie, ptr %i.hk, align 4, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !105
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexFloat], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 15                     ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 45                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader151.lr.ph, label %.preheader150

.preheader151.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = zext nneg i32 %i.e to i64                ; 15 uses
  %.idx.i = mul nuw nsw i64 %i.u, 48
  %.idx88.i = mul nuw nsw i64 %i.u, 96
  %.idx89.i = mul nuw nsw i64 %i.u, 24
  %.idx90.i = mul nuw nsw i64 %i.u, 72
  %.idx.i139 = mul nuw nsw i64 %i.u, 80
  %.idx88.i140 = mul nuw nsw i64 %i.u, 56
  %.idx89.i141 = mul nuw nsw i64 %i.u, 104
  %.idx90.i142 = shl nuw nsw i64 %i.u, 5
  %.idx.i146 = mul nuw nsw i64 %i.u, 40
  %.idx88.i147 = mul nuw nsw i64 %i.u, 88
  %.idx89.i148 = shl nuw nsw i64 %i.u, 4
  %.idx90.i149 = shl nuw nsw i64 %i.u, 6
  %.idx91.i = mul nuw nsw i64 %i.u, 112
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 96
end_hunk_1
begin_hunk_2_@ff_tx_mdct_pfa_9xM_inv_float_c:bb.a
  %i.bs = mul nsw i64 %i.n, %i.br
  %i.bt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %.0118, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %.0118, i64 28
  %i.bx = getelementptr inbounds nuw i8, ptr %.0107117, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12 ; 2 uses
  %i.bz = sub nsw i32 0, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.n, %i.ca
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !24
  %i.ce = sext i32 %i.by to i64
  %i.cf = mul nsw i64 %i.n, %i.ce
  %i.cg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %.0118, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %.0118, i64 36
  %i.ck = getelementptr inbounds nuw i8, ptr %.0107117, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12 ; 2 uses
  %i.cm = sub nsw i32 0, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %i.n, %i.cn
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !24
  %i.cr = sext i32 %i.cl to i64
  %i.cs = mul nsw i64 %i.n, %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %.0118, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %.0118, i64 44
  %i.cx = getelementptr inbounds nuw i8, ptr %.0107117, i64 24
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !12 ; 2 uses
  %i.cz = sub nsw i32 0, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = mul nsw i64 %i.n, %i.da
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !24
  %i.de = sext i32 %i.cy to i64
  %i.df = mul nsw i64 %i.n, %i.de
  %i.dg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %.0118, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %.0118, i64 52
  %i.dk = getelementptr inbounds nuw i8, ptr %.0107117, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12 ; 2 uses
  %i.dm = sub nsw i32 0, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %i.n, %i.dn
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !24
  %i.dr = sext i32 %i.dl to i64
  %i.ds = mul nsw i64 %i.n, %i.dr
  %i.dt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %.0118, i64 56
  %i.dw = getelementptr inbounds nuw i8, ptr %.0118, i64 60
  %i.dx = getelementptr inbounds nuw i8, ptr %.0107117, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !12 ; 2 uses
  %i.dz = sub nsw i32 0, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul nsw i64 %i.n, %i.ea
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !24
  %i.ee = sext i32 %i.dy to i64
  %i.ef = mul nsw i64 %i.n, %i.ee
  %i.eg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !24
  %i.ei = getelementptr inbounds nuw i8, ptr %.0118, i64 64
  %i.ej = getelementptr inbounds nuw i8, ptr %.0118, i64 68
  %i.ek = getelementptr inbounds nuw i8, ptr %.0110115, i64 4
  %i.el = load i32, ptr %.0110115, align 4, !tbaa !12
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.em ; 9 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.y
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %.idx.i
  %i.eq = getelementptr inbounds i8, ptr %i.en, i64 %.idx196.i
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %.idx197.i
  %i.es = getelementptr inbounds i8, ptr %i.en, i64 %.idx198.i
  %i.et = getelementptr inbounds i8, ptr %i.en, i64 %.idx199.i
  %i.eu = getelementptr inbounds i8, ptr %i.en, i64 %.idx200.i
  %i.ev = getelementptr inbounds i8, ptr %i.en, i64 %.idx201.i
  %i.ew = load float, ptr %i.aj, align 4, !tbaa !29
  %i.ex = load <2 x float>, ptr %.0118, align 4, !tbaa !24 ; 2 uses
  %i.ey = fneg nsz float %i.ew
  %i.ez = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fc = insertelement <2 x float> %i.fb, float %i.ey, i64 0
  %i.fd = fmul nsz <2 x float> %i.fa, %i.fc
  %i.fe = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.ex, <2 x float> %i.fd) ; 2 uses
  %i.fh = load float, ptr %i.aw, align 4, !tbaa !29
  %i.fi = load <2 x float>, ptr %i.av, align 4, !tbaa !24 ; 2 uses
  %i.fj = fneg nsz float %i.fh
  %i.fk = insertelement <2 x float> poison, float %i.au, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fn = insertelement <2 x float> %i.fm, float %i.fj, i64 0
  %i.fo = fmul nsz <2 x float> %i.fl, %i.fn
  %i.fp = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fi, <2 x float> %i.fo) ; 2 uses
  %i.fs = load float, ptr %i.bj, align 4, !tbaa !29
  %i.ft = load <2 x float>, ptr %i.bi, align 4, !tbaa !24 ; 2 uses
  %i.fu = fneg nsz float %i.fs
  %i.fv = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fy = insertelement <2 x float> %i.fx, float %i.fu, i64 0
  %i.fz = fmul nsz <2 x float> %i.fw, %i.fy
  %i.ga = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.ft, <2 x float> %i.fz) ; 2 uses
  %i.gd = load float, ptr %i.bw, align 4, !tbaa !29
  %i.ge = load <2 x float>, ptr %i.bv, align 4, !tbaa !24 ; 2 uses
  %i.gf = fneg nsz float %i.gd
  %i.gg = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gj = insertelement <2 x float> %i.gi, float %i.gf, i64 0
  %i.gk = fmul nsz <2 x float> %i.gh, %i.gj
  %i.gl = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.ge, <2 x float> %i.gk) ; 2 uses
  %i.go = load float, ptr %i.cj, align 4, !tbaa !29
  %i.gp = load <2 x float>, ptr %i.ci, align 4, !tbaa !24 ; 2 uses
  %i.gq = fneg nsz float %i.go
  %i.gr = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gu = insertelement <2 x float> %i.gt, float %i.gq, i64 0
  %i.gv = fmul nsz <2 x float> %i.gs, %i.gu
  %i.gw = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gp, <2 x float> %i.gv) ; 2 uses
  %i.gz = load float, ptr %i.cw, align 4, !tbaa !29
  %i.ha = load <2 x float>, ptr %i.cv, align 4, !tbaa !24 ; 2 uses
  %i.hb = fneg nsz float %i.gz
  %i.hc = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hf = insertelement <2 x float> %i.he, float %i.hb, i64 0
  %i.hg = fmul nsz <2 x float> %i.hd, %i.hf
  %i.hh = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.ha, <2 x float> %i.hg) ; 2 uses
  %i.hk = load float, ptr %i.dj, align 4, !tbaa !29
  %i.hl = load <2 x float>, ptr %i.di, align 4, !tbaa !24 ; 2 uses
  %i.hm = fneg nsz float %i.hk
  %i.hn = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hq = insertelement <2 x float> %i.hp, float %i.hm, i64 0
  %i.hr = fmul nsz <2 x float> %i.ho, %i.hq
  %i.hs = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.hl, <2 x float> %i.hr) ; 2 uses
  %i.hv = load float, ptr %i.dw, align 4, !tbaa !29
  %i.hw = load <2 x float>, ptr %i.dv, align 4, !tbaa !24 ; 2 uses
  %i.hx = fneg nsz float %i.hv
  %i.hy = insertelement <2 x float> poison, float %i.du, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ib = insertelement <2 x float> %i.ia, float %i.hx, i64 0
  %i.ic = fmul nsz <2 x float> %i.hz, %i.ib
  %i.id = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.hw, <2 x float> %i.ic) ; 2 uses
  %i.ig = load float, ptr %i.ej, align 4, !tbaa !29
  %i.ih = load <2 x float>, ptr %i.ei, align 4, !tbaa !24 ; 2 uses
  %i.ii = fneg nsz float %i.ig
  %i.ij = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.im = insertelement <2 x float> %i.il, float %i.ii, i64 0
  %i.in = fmul nsz <2 x float> %i.ik, %i.im
  %i.io = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ih, <2 x float> %i.in) ; 2 uses
  %i.ir = fsub nsz <2 x float> %i.fr, %i.iq       ; 2 uses
  %i.is = fadd nsz <2 x float> %i.fr, %i.iq       ; 2 uses
  %i.it = fsub nsz <2 x float> %i.gc, %i.if       ; 2 uses
  %i.iu = fadd nsz <2 x float> %i.gc, %i.if       ; 2 uses
  %i.iv = fsub nsz <2 x float> %i.gn, %i.hu
  %i.iw = fadd nsz <2 x float> %i.gn, %i.hu       ; 2 uses
  %i.ix = fsub nsz <2 x float> %i.gy, %i.hj       ; 3 uses
  %i.iy = fadd nsz <2 x float> %i.gy, %i.hj       ; 3 uses
  %i.iz = fsub nsz <2 x float> %i.is, %i.iy       ; 2 uses
  %i.ja = fsub nsz <2 x float> %i.iu, %i.iy       ; 2 uses
  %i.jb = fsub nsz <2 x float> %i.ir, %i.ix       ; 2 uses
  %i.jc = fadd nsz <2 x float> %i.it, %i.ix       ; 2 uses
  %i.jd = fneg nsz <2 x float> %i.ja
  %i.je = fneg nsz <2 x float> %i.jc
  %i.jf = fadd nsz <2 x float> %i.fg, %i.iw       ; 2 uses
  %i.jg = fadd nsz <2 x float> %i.is, %i.iu
  %i.jh = fadd nsz <2 x float> %i.jg, %i.iy       ; 2 uses
  %i.ji = fadd nsz <2 x float> %i.jf, %i.jh
  store <2 x float> %i.ji, ptr %i.en, align 4, !tbaa !24
  %4 = load <6 x float>, ptr @ff_tx_tab_9_float, align 16, !tbaa !24 ; 6 uses
  %i.jj = fsub nsz <2 x float> %i.ir, %i.it
  %i.jk = fadd nsz <2 x float> %i.jj, %i.ix
  %5 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jl = fmul nsz <2 x float> %i.jk, %5
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jn = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> %i.jh, <2 x float> %i.jf) ; 2 uses
  %i.jp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> %i.iw, <2 x float> %i.fg) ; 3 uses
  %6 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.jq = fmul nsz <2 x float> %i.ja, %6
  %7 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 2, i32 2>
  %8 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.iz, <2 x float> %i.jq) ; 2 uses
  %9 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %10 = fmul nsz <2 x float> %i.jc, %9
  %11 = shufflevector <6 x float> %4, <6 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.jr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.jb, <2 x float> %10) ; 2 uses
  %12 = fmul nsz <2 x float> %i.iv, %5            ; 3 uses
  %13 = fadd nsz <2 x float> %i.jp, %8            ; 2 uses
  %14 = fadd nsz <2 x float> %12, %i.jr
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %16 = fsub nsz <2 x float> %i.jo, %i.jm         ; 2 uses
  %17 = fadd nsz <2 x float> %i.jo, %i.jm         ; 2 uses
  %18 = shufflevector <2 x float> %16, <2 x float> %17, <2 x i32> <i32 0, i32 3>
  %19 = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_float, i64 24), align 8, !tbaa !24 ; 2 uses
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = fmul nsz <2 x float> %20, %i.jd
  %i.jt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.iz, <2 x float> %i.js) ; 2 uses
  %21 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %22 = fmul nsz <2 x float> %21, %i.je
  %23 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.jb, <2 x float> %22) ; 2 uses
  %i.ju = fadd nsz <2 x float> %i.jp, %i.jt       ; 2 uses
  %i.jv = fsub nsz <2 x float> %23, %12
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jx = fadd nsz <2 x float> %13, %15           ; 2 uses
  %i.jy = fsub nsz <2 x float> %13, %15           ; 2 uses
  %i.jz = shufflevector <2 x float> %i.jx, <2 x float> %i.jy, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.jz, ptr %i.eo, align 4, !tbaa !24
  %i.ka = fadd nsz <2 x float> %i.ju, %i.jw       ; 2 uses
  %i.kb = fsub nsz <2 x float> %i.ju, %i.jw       ; 2 uses
  %i.kc = shufflevector <2 x float> %i.ka, <2 x float> %i.kb, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.kc, ptr %i.ep, align 4, !tbaa !24
  %i.kd = shufflevector <2 x float> %17, <2 x float> %16, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.kd, ptr %i.eq, align 4, !tbaa !24
  %i.ke = fadd nsz <2 x float> %8, %i.jt
  %i.kf = fsub nsz <2 x float> %i.jp, %i.ke       ; 2 uses
  %i.kg = fsub nsz <2 x float> %23, %i.jr
  %i.kh = fadd nsz <2 x float> %12, %i.kg
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kj = fadd nsz <2 x float> %i.kf, %i.ki       ; 2 uses
  %i.kk = fsub nsz <2 x float> %i.kf, %i.ki       ; 2 uses
  %i.kl = shufflevector <2 x float> %i.kj, <2 x float> %i.kk, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.kl, ptr %i.er, align 4, !tbaa !24
  %i.km = shufflevector <2 x float> %i.kk, <2 x float> %i.kj, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.km, ptr %i.es, align 4, !tbaa !24
  store <2 x float> %18, ptr %i.et, align 4, !tbaa !24
  %i.kn = shufflevector <2 x float> %i.kb, <2 x float> %i.ka, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.kn, ptr %i.eu, align 4, !tbaa !24
  %i.ko = shufflevector <2 x float> %i.jy, <2 x float> %i.jx, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ko, ptr %i.ev, align 4, !tbaa !24
  %i.kp = getelementptr inbounds nuw i8, ptr %.0118, i64 72 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0107117, i64 36
  %i.kr = add nuw nsw i32 %.0109116, 9            ; 2 uses
  %i.ks = icmp slt i32 %i.kr, %i.e
  br i1 %i.ks, label %.preheader113, label %.preheader112.loopexit, !llvm.loop !115

.preheader112.loopexit:                           ; preds = %.preheader113
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.preheader112

.preheader112:                                    ; preds = %..preheader112_crit_edge, %.preheader112.loopexit
  %.pre-phi = phi i64 [ %.pre124, %..preheader112_crit_edge ], [ %i.y, %.preheader112.loopexit ] ; 8 uses
  %i.kt = phi ptr [ %i.g, %..preheader112_crit_edge ], [ %.pre, %.preheader112.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader112_crit_edge ], [ %i.kp, %.preheader112.loopexit ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.kw = load ptr, ptr %i.ku, align 8, !tbaa !10
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !31 ; 2 uses
  tail call void %i.kw(ptr noundef %i.kt, ptr noundef %i.kx, ptr noundef %i.kx, i64 noundef 8) #16
  %i.ky = load ptr, ptr %i.ku, align 8, !tbaa !10
  %i.kz = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.la = load ptr, ptr %i.kv, align 8, !tbaa !31
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.la, i64 %.pre-phi ; 2 uses
  tail call void %i.ky(ptr noundef %i.kz, ptr noundef %i.lb, ptr noundef %i.lb, i64 noundef 8) #16
  %i.lc = load ptr, ptr %i.ku, align 8, !tbaa !10
  %i.ld = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.le = load ptr, ptr %i.kv, align 8, !tbaa !31
  %.idx = shl nsw i64 %.pre-phi, 4
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 %.idx ; 2 uses
  tail call void %i.lc(ptr noundef %i.ld, ptr noundef %i.lf, ptr noundef %i.lf, i64 noundef 8) #16
  %i.lg = load ptr, ptr %i.ku, align 8, !tbaa !10
  %i.lh = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.li = load ptr, ptr %i.kv, align 8, !tbaa !31
  %.idx126 = mul nsw i64 %.pre-phi, 24
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 %.idx126 ; 2 uses
  tail call void %i.lg(ptr noundef %i.lh, ptr noundef %i.lj, ptr noundef %i.lj, i64 noundef 8) #16
  %i.lk = load ptr, ptr %i.ku, align 8, !tbaa !10
  %i.ll = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.lm = load ptr, ptr %i.kv, align 8, !tbaa !31
  %.idx127 = shl nsw i64 %.pre-phi, 5
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 %.idx127 ; 2 uses
  tail call void %i.lk(ptr noundef %i.ll, ptr noundef %i.ln, ptr noundef %i.ln, i64 noundef 8) #16
  %i.lo = load ptr, ptr %i.ku, align 8, !tbaa !10
  %i.lp = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.lq = load ptr, ptr %i.kv, align 8, !tbaa !31
  %.idx128 = mul nsw i64 %.pre-phi, 40
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %.idx128 ; 2 uses
  tail call void %i.lo(ptr noundef %i.lp, ptr noundef %i.lr, ptr noundef %i.lr, i64 noundef 8) #16
  %i.ls = load ptr, ptr %i.ku, align 8, !tbaa !10
  %i.lt = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.lu = load ptr, ptr %i.kv, align 8, !tbaa !31
  %.idx129 = mul nsw i64 %.pre-phi, 48
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 %.idx129 ; 2 uses
  tail call void %i.ls(ptr noundef %i.lt, ptr noundef %i.lv, ptr noundef %i.lv, i64 noundef 8) #16
  %i.lw = load ptr, ptr %i.ku, align 8, !tbaa !10
  %i.lx = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ly = load ptr, ptr %i.kv, align 8, !tbaa !31
  %.idx130 = mul nsw i64 %.pre-phi, 56
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 %.idx130 ; 2 uses
  tail call void %i.lw(ptr noundef %i.lx, ptr noundef %i.lz, ptr noundef %i.lz, i64 noundef 8) #16
  %i.ma = load ptr, ptr %i.ku, align 8, !tbaa !10
  %i.mb = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.mc = load ptr, ptr %i.kv, align 8, !tbaa !31
  %.idx131 = shl nsw i64 %.pre-phi, 6
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 %.idx131 ; 2 uses
  tail call void %i.ma(ptr noundef %i.mb, ptr noundef %i.md, ptr noundef %i.md, i64 noundef 8) #16
  %i.me = icmp sgt i32 %i.d, 0
  br i1 %i.me, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader112
  %i.mf = load ptr, ptr %i.kv, align 8, !tbaa !31 ; 2 uses
  %i.mg = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader112
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.mh = add nuw nsw i64 %indvars.iv, %i.mg      ; 3 uses
  %i.mi = xor i64 %indvars.iv, -1
  %i.mj = add nsw i64 %i.mg, %i.mi                ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mh
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !12
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.mj
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !12
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !29 ; 2 uses
  %i.ms = load float, ptr %i.mp, align 4, !tbaa !28 ; 2 uses
  %i.mt = sext i32 %i.ml to i64
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !29 ; 2 uses
  %i.mx = load float, ptr %i.mu, align 4, !tbaa !28 ; 2 uses
  %i.my = getelementptr inbounds [8 x i8], ptr %.0.lcssa, i64 %i.mj ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.na = load float, ptr %i.mz, align 4, !tbaa !29 ; 2 uses
  %i.nb = load float, ptr %i.my, align 4, !tbaa !28
  %i.nc = fneg nsz float %i.nb
  %i.nd = fmul nsz float %i.ms, %i.nc
  %i.ne = tail call nsz float @llvm.fmuladd.f32(float %i.mr, float %i.na, float %i.nd)
  %i.nf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mj ; 2 uses
  store float %i.ne, ptr %i.nf, align 4, !tbaa !28
  %i.ng = load float, ptr %i.my, align 4, !tbaa !28
  %i.nh = fmul nsz float %i.ms, %i.na
  %i.ni = tail call nsz float @llvm.fmuladd.f32(float %i.mr, float %i.ng, float %i.nh)
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.mh ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store float %i.ni, ptr %i.nk, align 4, !tbaa !29
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa, i64 %i.mh ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !29 ; 2 uses
  %i.no = load float, ptr %i.nl, align 4, !tbaa !28
  %i.np = fneg nsz float %i.no
  %i.nq = fmul nsz float %i.mx, %i.np
  %i.nr = tail call nsz float @llvm.fmuladd.f32(float %i.mw, float %i.nn, float %i.nq)
  store float %i.nr, ptr %i.nj, align 4, !tbaa !28
  %i.ns = load float, ptr %i.nl, align 4, !tbaa !28
  %i.nt = fmul nsz float %i.mx, %i.nn
  %i.nu = tail call nsz float @llvm.fmuladd.f32(float %i.mw, float %i.ns, float %i.nt)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store float %i.nu, ptr %i.nv, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !116
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexFloat], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.k = mul nsw i32 %i.h, 15
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 2                           ; 3 uses
  %i.o = mul nsw i32 %i.h, 30
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader127.lr.ph, label %..preheader126_crit_edge

..preheader126_crit_edge:                         ; preds = %bb.a
  %.pre149 = sext i32 %i.h to i64
  br label %.preheader126

.preheader127.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.h to i64                     ; 15 uses
  %.idx.i = mul nsw i64 %i.y, 48
  %.idx88.i = mul nsw i64 %i.y, 96
  %.idx89.i = mul nsw i64 %i.y, 24
  %.idx90.i = mul nsw i64 %i.y, 72
  %.idx.i115 = mul nsw i64 %i.y, 80
  %.idx88.i116 = mul nsw i64 %i.y, 56
  %.idx89.i117 = mul nsw i64 %i.y, 104
  %.idx90.i118 = shl nsw i64 %i.y, 5
  %.idx.i122 = mul nsw i64 %i.y, 40
  %.idx88.i123 = mul nsw i64 %i.y, 88
  %.idx89.i124 = shl nsw i64 %i.y, 4
  %.idx90.i125 = shl nsw i64 %i.y, 6
  %.idx91.i = mul nsw i64 %i.y, 112
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %.preheader127

end_hunk_2
