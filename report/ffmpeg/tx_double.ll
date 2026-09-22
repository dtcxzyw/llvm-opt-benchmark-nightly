Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_double?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 33
begin_hunk_0_@ff_tx_fft5_double_c:bb.a
  %i.au = fadd nsz <2 x double> %i.ap, %i.at      ; 2 uses
  %i.av = fsub nsz <2 x double> %i.ap, %i.at      ; 2 uses
  %i.aw = shufflevector <2 x double> %i.au, <2 x double> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ax = shufflevector <2 x double> %i.av, <2 x double> %i.au, <2 x i32> <i32 0, i32 3>
  %i.ay = fadd nsz <2 x double> %i.j, %i.ax
  store <2 x double> %i.ay, ptr %i.g, align 8, !tbaa !24
  %i.az = fadd nsz <2 x double> %i.j, %i.aw
  store <2 x double> %i.az, ptr %i.h, align 8, !tbaa !24
  %i.ba = fadd nsz <2 x double> %i.j, %i.ak
  store <2 x double> %i.ba, ptr %i.i, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft7_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 4                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx163.i = mul nuw nsw i64 %i.a, 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx163.i
  %.idx164.i = shl nuw nsw i64 %i.a, 6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx164.i
  %.idx165.i = mul nuw nsw i64 %i.a, 80
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx165.i
  %.idx166.i = mul nuw nsw i64 %i.a, 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx166.i
  %i.o = load <2 x double>, ptr %2, align 8, !tbaa !24 ; 7 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !24 ; 3 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !24 ; 3 uses
  %i.r = fadd nsz <2 x double> %i.p, %i.q         ; 3 uses
  %i.s = load <2 x double>, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.t = load <2 x double>, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.u = load <2 x double>, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  %i.v = load <2 x double>, ptr %i.h, align 8, !tbaa !24 ; 2 uses
  %i.w = fsub nsz <2 x double> %i.s, %i.t         ; 4 uses
  %i.x = load <2 x double>, ptr %i.g, align 8, !tbaa !24 ; 4 uses
  %i.y = shufflevector <2 x double> %i.p, <2 x double> %i.u, <2 x i32> <i32 1, i32 3>
  %i.z = shufflevector <2 x double> %i.q, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.aa = fsub nsz <2 x double> %i.y, %i.z        ; 4 uses
  %i.ab = shufflevector <2 x double> %i.t, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ac = fadd nsz <2 x double> %i.u, %i.ab       ; 3 uses
  %i.ad = shufflevector <2 x double> %i.x, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.ae = shufflevector <2 x double> %i.v, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.af = fsub nsz <2 x double> %i.ad, %i.ae      ; 4 uses
  %i.ag = shufflevector <2 x double> %i.x, <2 x double> %i.s, <2 x i32> <i32 2, i32 0>
  %i.ah = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fadd nsz <2 x double> %i.ag, %i.ah      ; 3 uses
  %i.aj = fadd nsz <2 x double> %i.o, %i.r
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> %i.ac, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.al = fadd nsz <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.ac, <2 x double> %i.ai, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.an = fadd nsz <2 x double> %i.al, %i.am
  store <2 x double> %i.an, ptr %1, align 8, !tbaa !24
  %i.ao = load <2 x double>, ptr @ff_tx_tab_7_double, align 16
  %i.ap = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 8), align 8, !tbaa !24 ; 6 uses
  %i.aq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 16), align 16
  %i.ar = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 32), align 16, !tbaa !24 ; 4 uses
  %i.as = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 40), align 8, !tbaa !30 ; 3 uses
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> %i.ar, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.au = fneg nsz <2 x double> %i.at             ; 3 uses
  %i.av = fneg nsz <2 x double> %i.ac
  %i.aw = fmul nsz <2 x double> %i.at, %i.av
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.az = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.r, <2 x double> %i.ax)
  %i.ba = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.ai, <2 x double> %i.az) ; 2 uses
  %i.bb = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 24), align 8, !tbaa !30 ; 2 uses
  %i.bc = extractelement <2 x double> %i.ap, i64 0
  %i.bd = fneg nsz double %i.bc
  %i.be = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = fneg nsz double %i.bb
  %i.bg = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = fmul nsz <2 x double> %i.w, %i.bh
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = shufflevector <2 x double> %i.ar, <2 x double> %i.ap, <2 x i32> <i32 1, i32 2>
  %i.bl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.af, <2 x double> %i.bj)
  %i.bm = shufflevector <2 x double> %i.ap, <2 x double> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.bn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.aa, <2 x double> %i.bl) ; 2 uses
  %i.bo = fsub nsz <2 x double> %i.ba, %i.bn      ; 2 uses
  %i.bp = fadd nsz <2 x double> %i.ba, %i.bn      ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bo, <2 x double> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.br = shufflevector <2 x double> %i.bp, <2 x double> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.bs = fadd nsz <2 x double> %i.o, %i.br
  store <2 x double> %i.bs, ptr %i.i, align 8, !tbaa !24
  %i.bt = fneg nsz <2 x double> %i.r              ; 2 uses
  %i.bu = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul nsz <2 x double> %i.bu, %i.bt
  %i.bw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.am, <2 x double> %i.bv)
  %i.bx = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.by = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ak, <2 x double> %i.bw) ; 2 uses
  %i.bz = shufflevector <2 x double> %i.w, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ca = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x double> %i.ca, double %i.as, i64 0
  %i.cc = fmul nsz <2 x double> %i.bz, %i.cb
  %i.cd = insertelement <2 x double> %i.ap, double %i.as, i64 1
  %i.ce = shufflevector <2 x double> %i.af, <2 x double> %i.w, <2 x i32> <i32 0, i32 2>
  %i.cf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.ce, <2 x double> %i.cc)
  %i.cg = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = shufflevector <2 x double> %i.aa, <2 x double> %i.af, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ci, <2 x double> %i.cf) ; 2 uses
  %i.ck = fadd nsz <2 x double> %i.by, %i.cj      ; 2 uses
  %i.cl = fsub nsz <2 x double> %i.by, %i.cj      ; 2 uses
  %i.cm = shufflevector <2 x double> %i.ck, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.cn = shufflevector <2 x double> %i.cl, <2 x double> %i.ck, <2 x i32> <i32 0, i32 3>
  %i.co = fadd nsz <2 x double> %i.o, %i.cn
  store <2 x double> %i.co, ptr %i.j, align 8, !tbaa !24
  %i.cp = shufflevector <2 x double> %i.af, <2 x double> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.cq = fmul nsz <2 x double> %i.cp, %i.bh
  %i.cr = insertelement <2 x double> poison, double %i.as, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.ci, <2 x double> %i.cq)
  %i.cu = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.be, <2 x double> %i.ct) ; 2 uses
  %i.cx = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul nsz <2 x double> %i.cx, %i.bt
  %i.cz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ak, <2 x double> %i.cy)
  %i.da = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.am, <2 x double> %i.cz) ; 2 uses
  %i.dc = fsub nsz <2 x double> %i.db, %i.cw      ; 2 uses
  %i.dd = fadd nsz <2 x double> %i.db, %i.cw      ; 2 uses
  %i.de = shufflevector <2 x double> %i.dc, <2 x double> %i.dd, <2 x i32> <i32 0, i32 3>
  %i.df = shufflevector <2 x double> %i.dd, <2 x double> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.dg = fadd nsz <2 x double> %i.o, %i.df
  store <2 x double> %i.dg, ptr %i.k, align 8, !tbaa !24
  %i.dh = fadd nsz <2 x double> %i.o, %i.de
  store <2 x double> %i.dh, ptr %i.l, align 8, !tbaa !24
  %i.di = fadd nsz <2 x double> %i.o, %i.cm
  store <2 x double> %i.di, ptr %i.m, align 8, !tbaa !24
  %i.dj = fadd nsz <2 x double> %i.o, %i.bq
  store <2 x double> %i.dj, ptr %i.n, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft9_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 4                           ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx196.i = mul nuw nsw i64 %i.a, 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx196.i
  %.idx197.i = shl nuw nsw i64 %i.a, 6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx197.i
  %.idx198.i = mul nuw nsw i64 %i.a, 80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx198.i
  %.idx199.i = mul nuw nsw i64 %i.a, 96
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx199.i
  %.idx200.i = mul nuw nsw i64 %i.a, 112
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.idx200.i
  %.idx201.i = shl nuw nsw i64 %i.a, 7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx201.i
  %i.r = load <2 x double>, ptr %2, align 8, !tbaa !24 ; 2 uses
  %i.s = load <2 x double>, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.t = load <2 x double>, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %i.u = fsub nsz <2 x double> %i.s, %i.t         ; 2 uses
  %i.v = fadd nsz <2 x double> %i.s, %i.t         ; 2 uses
  %i.w = load <2 x double>, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.x = load <2 x double>, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.y = fsub nsz <2 x double> %i.w, %i.x         ; 2 uses
  %i.z = fadd nsz <2 x double> %i.w, %i.x         ; 2 uses
  %i.aa = load <2 x double>, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  %i.ab = load <2 x double>, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.ac = fsub nsz <2 x double> %i.aa, %i.ab
  %i.ad = fadd nsz <2 x double> %i.aa, %i.ab      ; 2 uses
  %i.ae = load <2 x double>, ptr %i.h, align 8, !tbaa !24 ; 2 uses
  %i.af = load <2 x double>, ptr %i.i, align 8, !tbaa !24 ; 2 uses
  %i.ag = fsub nsz <2 x double> %i.ae, %i.af      ; 3 uses
  %i.ah = fadd nsz <2 x double> %i.ae, %i.af      ; 3 uses
  %i.ai = fsub nsz <2 x double> %i.v, %i.ah       ; 2 uses
  %i.aj = fsub nsz <2 x double> %i.z, %i.ah       ; 2 uses
  %i.ak = fsub nsz <2 x double> %i.u, %i.ag       ; 2 uses
  %i.al = fadd nsz <2 x double> %i.y, %i.ag       ; 2 uses
  %i.am = fneg nsz <2 x double> %i.aj
  %i.an = fneg nsz <2 x double> %i.al
  %i.ao = fadd nsz <2 x double> %i.r, %i.ad       ; 2 uses
  %i.ap = fadd nsz <2 x double> %i.v, %i.z
  %i.aq = fadd nsz <2 x double> %i.ap, %i.ah      ; 2 uses
  %i.ar = fadd nsz <2 x double> %i.ao, %i.aq
  store <2 x double> %i.ar, ptr %1, align 8, !tbaa !24
  %4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 24), align 8
  %5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 16), align 16
  %6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 8), align 8
  %7 = load <2 x double>, ptr @ff_tx_tab_9_double, align 16
  %i.as = fsub nsz <2 x double> %i.u, %i.y
  %i.at = fadd nsz <2 x double> %i.as, %i.ag
  %8 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = fmul nsz <2 x double> %i.at, %8
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.aq, <2 x double> %i.ao) ; 2 uses
  %i.ay = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.ad, <2 x double> %i.r) ; 3 uses
  %9 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul nsz <2 x double> %i.ac, %8         ; 3 uses
  %11 = fsub nsz <2 x double> %i.ax, %i.av        ; 2 uses
  %12 = fadd nsz <2 x double> %i.ax, %i.av        ; 2 uses
  %13 = shufflevector <2 x double> %11, <2 x double> %12, <2 x i32> <i32 0, i32 3>
  %14 = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 56), align 8, !tbaa !30
  %15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 32), align 16
  %16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 48), align 16
  %17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 40), align 8
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = fmul nsz <2 x double> %i.aj, %18
  %19 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.ai, <2 x double> %i.ba) ; 2 uses
  %20 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = fmul nsz <2 x double> %20, %i.am
  %22 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.ai, <2 x double> %21) ; 2 uses
  %23 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %24 = fmul nsz <2 x double> %i.al, %23
  %25 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %i.ak, <2 x double> %24) ; 2 uses
  %26 = insertelement <2 x double> poison, double %14, i64 0
  %i.bb = shufflevector <2 x double> %26, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul nsz <2 x double> %i.bb, %i.an
  %i.bd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.ak, <2 x double> %i.bc) ; 2 uses
  %27 = fadd nsz <2 x double> %i.ay, %19          ; 2 uses
  %28 = fadd nsz <2 x double> %i.az, %25
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.be = fadd nsz <2 x double> %i.ay, %22        ; 2 uses
  %i.bf = fsub nsz <2 x double> %i.bd, %i.az
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bh = fadd nsz <2 x double> %27, %29          ; 2 uses
  %i.bi = fsub nsz <2 x double> %27, %29          ; 2 uses
  %i.bj = shufflevector <2 x double> %i.bh, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bj, ptr %i.j, align 8, !tbaa !24
  %i.bk = fadd nsz <2 x double> %i.be, %i.bg      ; 2 uses
  %i.bl = fsub nsz <2 x double> %i.be, %i.bg      ; 2 uses
  %i.bm = shufflevector <2 x double> %i.bk, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bm, ptr %i.k, align 8, !tbaa !24
  %i.bn = shufflevector <2 x double> %12, <2 x double> %11, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bn, ptr %i.l, align 8, !tbaa !24
  %i.bo = fadd nsz <2 x double> %19, %22
  %i.bp = fsub nsz <2 x double> %i.ay, %i.bo      ; 2 uses
  %i.bq = fsub nsz <2 x double> %i.bd, %25
  %i.br = fadd nsz <2 x double> %i.az, %i.bq
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bt = fadd nsz <2 x double> %i.bp, %i.bs      ; 2 uses
  %i.bu = fsub nsz <2 x double> %i.bp, %i.bs      ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bt, <2 x double> %i.bu, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bv, ptr %i.m, align 8, !tbaa !24
  %i.bw = shufflevector <2 x double> %i.bu, <2 x double> %i.bt, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bw, ptr %i.n, align 8, !tbaa !24
  store <2 x double> %13, ptr %i.o, align 8, !tbaa !24
  %i.bx = shufflevector <2 x double> %i.bl, <2 x double> %i.bk, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bx, ptr %i.p, align 8, !tbaa !24
  %i.by = shufflevector <2 x double> %i.bi, <2 x double> %i.bh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.by, ptr %i.q, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft15_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
fft15.exit:
  %i.a = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.p = lshr i64 %3, 4                           ; 14 uses
  %.idx.i = mul nuw nsw i64 %i.p, 96
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx88.i = mul nuw nsw i64 %i.p, 192
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i
  %.idx89.i = mul nuw nsw i64 %i.p, 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i
  %.idx90.i = mul nuw nsw i64 %i.p, 144
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i
  %.idx.i5 = mul nuw nsw i64 %i.p, 160
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i5
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.p
  %.idx88.i6 = mul nuw nsw i64 %i.p, 112
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i6
  %.idx89.i7 = mul nuw nsw i64 %i.p, 208
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i7
  %.idx90.i8 = shl nuw nsw i64 %i.p, 6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i8
  %.idx.i12 = mul nuw nsw i64 %i.p, 80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i12
  %.idx88.i13 = mul nuw nsw i64 %i.p, 176
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i13
  %.idx89.i14 = shl nuw nsw i64 %i.p, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i14
  %.idx90.i15 = shl nuw nsw i64 %i.p, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i15
  %.idx91.i = mul nuw nsw i64 %i.p, 224
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx91.i
  %i.ae = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24 ; 5 uses
  %i.af = load <2 x double>, ptr %2, align 8, !tbaa !24 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.ah = load <2 x double>, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %i.ai = fsub nsz <2 x double> %i.ag, %i.ah
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fadd nsz <2 x double> %i.ag, %i.ah      ; 2 uses
  %i.al = fmul nsz <2 x double> %i.aj, %i.ae      ; 2 uses
  %i.am = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.an = fmul nsz <2 x double> %i.ak, %i.am
  %i.ao = fsub nsz <2 x double> %i.af, %i.an      ; 2 uses
  %i.ap = fsub nsz <2 x double> %i.ao, %i.al      ; 2 uses
  %i.aq = fadd nsz <2 x double> %i.ao, %i.al      ; 2 uses
  %i.ar = shufflevector <2 x double> %i.ap, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.as = load <2 x double>, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.at = load <2 x double>, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.au = load <2 x double>, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  %i.av = fsub nsz <2 x double> %i.at, %i.au
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ax = fadd nsz <2 x double> %i.at, %i.au      ; 2 uses
  %i.ay = fmul nsz <2 x double> %i.aw, %i.ae      ; 2 uses
  %i.az = fmul nsz <2 x double> %i.ax, %i.am
  %i.ba = fsub nsz <2 x double> %i.as, %i.az      ; 2 uses
  %i.bb = fsub nsz <2 x double> %i.ba, %i.ay      ; 4 uses
  %i.bc = fadd nsz <2 x double> %i.ba, %i.ay      ; 4 uses
  %i.bd = shufflevector <2 x double> %i.bb, <2 x double> %i.bc, <2 x i32> <i32 0, i32 3>
  %i.be = load <2 x double>, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.h, align 8, !tbaa !24 ; 2 uses
  %i.bg = load <2 x double>, ptr %i.i, align 8, !tbaa !24 ; 2 uses
  %i.bh = fsub nsz <2 x double> %i.bf, %i.bg
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = fadd nsz <2 x double> %i.bf, %i.bg      ; 2 uses
  %i.bk = fmul nsz <2 x double> %i.bi, %i.ae      ; 2 uses
  %i.bl = fmul nsz <2 x double> %i.bj, %i.am
  %i.bm = fsub nsz <2 x double> %i.be, %i.bl      ; 2 uses
  %i.bn = fsub nsz <2 x double> %i.bm, %i.bk      ; 4 uses
  %i.bo = fadd nsz <2 x double> %i.bm, %i.bk      ; 4 uses
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.bq = load <2 x double>, ptr %i.j, align 8, !tbaa !24 ; 2 uses
  %i.br = load <2 x double>, ptr %i.k, align 8, !tbaa !24 ; 2 uses
  %i.bs = load <2 x double>, ptr %i.l, align 8, !tbaa !24 ; 2 uses
  %i.bt = fsub nsz <2 x double> %i.br, %i.bs
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = fadd nsz <2 x double> %i.br, %i.bs      ; 2 uses
  %i.bw = fmul nsz <2 x double> %i.bu, %i.ae      ; 2 uses
  %i.bx = fmul nsz <2 x double> %i.bv, %i.am
  %i.by = fsub nsz <2 x double> %i.bq, %i.bx      ; 2 uses
  %i.bz = fsub nsz <2 x double> %i.by, %i.bw      ; 4 uses
  %i.ca = fadd nsz <2 x double> %i.by, %i.bw      ; 4 uses
  %i.cb = shufflevector <2 x double> %i.bz, <2 x double> %i.ca, <2 x i32> <i32 0, i32 3>
  %i.cc = load <2 x double>, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.n, align 8, !tbaa !24 ; 2 uses
  %i.ce = load <2 x double>, ptr %i.o, align 8, !tbaa !24 ; 2 uses
  %i.cf = fsub nsz <2 x double> %i.cd, %i.ce
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = fadd nsz <2 x double> %i.cd, %i.ce      ; 2 uses
  %i.ci = fmul nsz <2 x double> %i.cg, %i.ae      ; 2 uses
  %i.cj = fmul nsz <2 x double> %i.ch, %i.am
  %i.ck = fsub nsz <2 x double> %i.cc, %i.cj      ; 2 uses
  %i.cl = fsub nsz <2 x double> %i.ck, %i.ci      ; 4 uses
  %i.cm = fadd nsz <2 x double> %i.ck, %i.ci      ; 4 uses
  %i.cn = shufflevector <2 x double> %i.cl, <2 x double> %i.cm, <2 x i32> <i32 0, i32 3>
  %i.co = fadd nsz <2 x double> %i.af, %i.ak      ; 5 uses
  %i.cp = fadd nsz <2 x double> %i.as, %i.ax      ; 2 uses
  %i.cq = fadd nsz <2 x double> %i.be, %i.bj      ; 2 uses
  %i.cr = fadd nsz <2 x double> %i.bq, %i.bv      ; 2 uses
  %i.cs = fadd nsz <2 x double> %i.cc, %i.ch      ; 2 uses
  %i.ct = fsub nsz <2 x double> %i.cp, %i.cs      ; 2 uses
  %i.cu = fadd nsz <2 x double> %i.cp, %i.cs      ; 3 uses
  %i.cv = fsub nsz <2 x double> %i.cq, %i.cr      ; 2 uses
  %i.cw = fadd nsz <2 x double> %i.cq, %i.cr      ; 3 uses
  %i.cx = fadd nsz <2 x double> %i.co, %i.cu
  %i.cy = fadd nsz <2 x double> %i.cx, %i.cw
  store <2 x double> %i.cy, ptr %1, align 8, !tbaa !24
  %i.cz = load <2 x double>, ptr @ff_tx_tab_53_double, align 16
  %i.da = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.db = fneg nsz <2 x double> %i.cw
  %i.dc = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = fmul nsz <2 x double> %i.dc, %i.db
  %i.de = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.cu, <2 x double> %i.dd) ; 2 uses
  %i.dg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %i.dh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = fmul nsz <2 x double> %i.cv, %i.di
  %i.dk = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.ct, <2 x double> %i.dj)
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dn = fsub nsz <2 x double> %i.df, %i.dm      ; 2 uses
  %i.do = fadd nsz <2 x double> %i.df, %i.dm      ; 2 uses
  %i.dp = shufflevector <2 x double> %i.dn, <2 x double> %i.do, <2 x i32> <i32 0, i32 3>
  %i.dq = shufflevector <2 x double> %i.do, <2 x double> %i.dn, <2 x i32> <i32 0, i32 3>
  %i.dr = fadd nsz <2 x double> %i.co, %i.dq
  store <2 x double> %i.dr, ptr %i.q, align 8, !tbaa !24
  %i.ds = fneg nsz <2 x double> %i.cu
  %i.dt = fmul nsz <2 x double> %i.dc, %i.ds
  %i.du = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.cw, <2 x double> %i.dt) ; 2 uses
  %i.dv = fneg nsz <2 x double> %i.ct
  %i.dw = fmul nsz <2 x double> %i.di, %i.dv
  %i.dx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.cv, <2 x double> %i.dw)
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dz = fadd nsz <2 x double> %i.du, %i.dy      ; 2 uses
  %i.ea = fsub nsz <2 x double> %i.du, %i.dy      ; 2 uses
  %i.eb = shufflevector <2 x double> %i.dz, <2 x double> %i.ea, <2 x i32> <i32 0, i32 3>
  %i.ec = shufflevector <2 x double> %i.ea, <2 x double> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.ed = fadd nsz <2 x double> %i.co, %i.ec
  store <2 x double> %i.ed, ptr %i.r, align 8, !tbaa !24
  %i.ee = fadd nsz <2 x double> %i.co, %i.eb
  store <2 x double> %i.ee, ptr %i.s, align 8, !tbaa !24
  %i.ef = fadd nsz <2 x double> %i.co, %i.dp
  store <2 x double> %i.ef, ptr %i.t, align 8, !tbaa !24
  %i.eg = shufflevector <2 x double> %i.aq, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.eh = shufflevector <2 x double> %i.bc, <2 x double> %i.bb, <2 x i32> <i32 0, i32 3>
  %i.ei = shufflevector <2 x double> %i.bo, <2 x double> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.ej = shufflevector <2 x double> %i.ca, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.ek = shufflevector <2 x double> %i.cm, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.el = shufflevector <2 x double> %i.bb, <2 x double> %i.bc, <2 x i32> <i32 1, i32 2>
  %i.em = shufflevector <2 x double> %i.cl, <2 x double> %i.cm, <2 x i32> <i32 1, i32 2>
  %i.en = fsub nsz <2 x double> %i.el, %i.em      ; 2 uses
  %i.eo = fadd nsz <2 x double> %i.eh, %i.ek      ; 3 uses
  %i.ep = shufflevector <2 x double> %i.bn, <2 x double> %i.bo, <2 x i32> <i32 1, i32 2>
  %i.eq = shufflevector <2 x double> %i.bz, <2 x double> %i.ca, <2 x i32> <i32 1, i32 2>
  %i.er = fsub nsz <2 x double> %i.ep, %i.eq      ; 2 uses
  %i.es = fadd nsz <2 x double> %i.ei, %i.ej      ; 3 uses
  %i.et = fadd nsz <2 x double> %i.eg, %i.eo
  %i.eu = fadd nsz <2 x double> %i.et, %i.es
  store <2 x double> %i.eu, ptr %i.u, align 8, !tbaa !24
  %i.ev = load <2 x double>, ptr @ff_tx_tab_53_double, align 16
  %i.ew = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.ex = fneg nsz <2 x double> %i.es
  %i.ey = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = fmul nsz <2 x double> %i.ey, %i.ex
  %i.fa = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.eo, <2 x double> %i.ez) ; 2 uses
  %i.fc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %i.fd = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = fmul nsz <2 x double> %i.er, %i.fe
  %i.fg = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.en, <2 x double> %i.ff) ; 2 uses
  %i.fi = fsub nsz <2 x double> %i.fb, %i.fh      ; 2 uses
  %i.fj = fadd nsz <2 x double> %i.fb, %i.fh      ; 2 uses
  %i.fk = shufflevector <2 x double> %i.fi, <2 x double> %i.fj, <2 x i32> <i32 0, i32 3>
  %i.fl = shufflevector <2 x double> %i.fj, <2 x double> %i.fi, <2 x i32> <i32 0, i32 3>
  %i.fm = fadd nsz <2 x double> %i.eg, %i.fl
  store <2 x double> %i.fm, ptr %i.v, align 8, !tbaa !24
  %i.fn = fneg nsz <2 x double> %i.eo
end_hunk_0
begin_hunk_1_@ff_tx_mdct_pfa_7xM_fwd_double_c:bb.a
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !30 ; 2 uses
  %i.sy = sext i32 %i.sq to i64
  %i.sz = getelementptr inbounds [16 x i8], ptr %i.sk, i64 %i.sy ; 2 uses
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !29 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !30 ; 2 uses
  %i.td = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.sm ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  %i.tf = load double, ptr %i.te, align 8, !tbaa !30
  %i.tg = load double, ptr %i.td, align 8, !tbaa !29
  %i.th = fneg nsz double %i.tg
  %i.ti = fmul nsz double %i.tc, %i.th
  %i.tj = tail call nsz double @llvm.fmuladd.f64(double %i.ta, double %i.tf, double %i.ti)
  %i.tk = shl nsw i64 %i.so, 1
  %i.tl = mul nsw i64 %i.p, %i.tk
  %i.tm = getelementptr [8 x i8], ptr %1, i64 %i.tl ; 2 uses
  %i.tn = getelementptr [8 x i8], ptr %i.tm, i64 %i.p
  store double %i.tj, ptr %i.tn, align 8, !tbaa !24
  %i.to = load double, ptr %i.td, align 8, !tbaa !29
  %i.tp = load double, ptr %i.te, align 8, !tbaa !30
  %i.tq = fmul nsz double %i.tc, %i.tp
  %i.tr = tail call nsz double @llvm.fmuladd.f64(double %i.ta, double %i.to, double %i.tq)
  %i.ts = shl nuw nsw i64 %i.sm, 1
  %i.tt = mul nuw nsw i64 %i.p, %i.ts
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.tt ; 2 uses
  store double %i.tr, ptr %i.tu, align 8, !tbaa !24
  %i.tv = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.so ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8 ; 2 uses
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !30
  %i.ty = load double, ptr %i.tv, align 8, !tbaa !29
  %i.tz = fneg nsz double %i.ty
  %i.ua = fmul nsz double %i.sx, %i.tz
  %i.ub = tail call nsz double @llvm.fmuladd.f64(double %i.sv, double %i.tx, double %i.ua)
  %i.uc = getelementptr [8 x i8], ptr %i.tu, i64 %i.p
  store double %i.ub, ptr %i.uc, align 8, !tbaa !24
  %i.ud = load double, ptr %i.tv, align 8, !tbaa !29
  %i.ue = load double, ptr %i.tw, align 8, !tbaa !30
  %i.uf = fmul nsz double %i.sx, %i.ue
  %i.ug = tail call nsz double @llvm.fmuladd.f64(double %i.sv, double %i.ud, double %i.uf)
  store double %i.ug, ptr %i.tm, align 8, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.w, !llvm.loop !99
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [9 x %struct.AVComplexDouble], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 9                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 27                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.idx.i = shl nuw nsw i64 %i.u, 5
  %.idx196.i = mul nuw nsw i64 %i.u, 48
  %.idx197.i = shl nuw nsw i64 %i.u, 6
  %.idx198.i = mul nuw nsw i64 %i.u, 80
  %.idx199.i = mul nuw nsw i64 %i.u, 96
  %.idx200.i = mul nuw nsw i64 %i.u, 112
  %.idx201.i = shl nuw nsw i64 %i.u, 7
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 36
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ad = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ag = sext i32 %i.e to i64                    ; 8 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  tail call void %i.ah(ptr noundef %i.ad, ptr noundef %i.ai, ptr noundef %i.ai, i64 noundef 16) #16
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ag ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 16) #16
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx160 = shl nsw i64 %i.ag, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx160 ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 16) #16
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx161 = mul nsw i64 %i.ag, 48
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx161 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 16) #16
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx162 = shl nsw i64 %i.ag, 6
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx162 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 16) #16
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx163 = mul nsw i64 %i.ag, 80
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.idx163 ; 2 uses
  tail call void %i.az(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef %i.bc, i64 noundef 16) #16
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx164 = mul nsw i64 %i.ag, 96
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %.idx164 ; 2 uses
  tail call void %i.bd(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bg, i64 noundef 16) #16
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx165 = mul nsw i64 %i.ag, 112
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx165 ; 2 uses
  tail call void %i.bh(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk, i64 noundef 16) #16
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx166 = shl nsw i64 %i.ag, 7
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %.idx166 ; 2 uses
  tail call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bo, i64 noundef 16) #16
  %i.bp = icmp sgt i32 %i.i, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.bs ; 9 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx196.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx197.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx198.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx199.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx200.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx201.i
  %i.cc = load <2 x double>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.v, align 16, !tbaa !24 ; 2 uses
  %i.ce = load <2 x double>, ptr %i.w, align 16, !tbaa !24 ; 2 uses
  %i.cf = fsub nsz <2 x double> %i.cd, %i.ce      ; 2 uses
  %i.cg = fadd nsz <2 x double> %i.cd, %i.ce      ; 2 uses
  %i.ch = load <2 x double>, ptr %i.x, align 16, !tbaa !24 ; 2 uses
  %i.ci = load <2 x double>, ptr %i.y, align 16, !tbaa !24 ; 2 uses
  %i.cj = fsub nsz <2 x double> %i.ch, %i.ci      ; 2 uses
  %i.ck = fadd nsz <2 x double> %i.ch, %i.ci      ; 2 uses
  %i.cl = load <2 x double>, ptr %i.z, align 16, !tbaa !24 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.cn = fsub nsz <2 x double> %i.cl, %i.cm
  %i.co = fadd nsz <2 x double> %i.cl, %i.cm      ; 2 uses
  %i.cp = load <2 x double>, ptr %i.ab, align 16, !tbaa !24 ; 2 uses
  %i.cq = load <2 x double>, ptr %i.ac, align 16, !tbaa !24 ; 2 uses
  %i.cr = fsub nsz <2 x double> %i.cp, %i.cq      ; 3 uses
  %i.cs = fadd nsz <2 x double> %i.cp, %i.cq      ; 3 uses
  %i.ct = fsub nsz <2 x double> %i.cg, %i.cs      ; 2 uses
  %i.cu = fsub nsz <2 x double> %i.ck, %i.cs      ; 2 uses
  %i.cv = fsub nsz <2 x double> %i.cf, %i.cr      ; 2 uses
  %i.cw = fadd nsz <2 x double> %i.cj, %i.cr      ; 2 uses
  %i.cx = fneg nsz <2 x double> %i.cu
  %i.cy = fneg nsz <2 x double> %i.cw
  %i.cz = fadd nsz <2 x double> %i.cc, %i.co      ; 2 uses
  %i.da = fadd nsz <2 x double> %i.cg, %i.ck
  %i.db = fadd nsz <2 x double> %i.da, %i.cs      ; 2 uses
  %i.dc = fadd nsz <2 x double> %i.cz, %i.db
  store <2 x double> %i.dc, ptr %i.bt, align 8, !tbaa !24
  %5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 24), align 8
  %6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 16), align 16
  %7 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 8), align 8
  %8 = load <2 x double>, ptr @ff_tx_tab_9_double, align 16
  %i.dd = fsub nsz <2 x double> %i.cf, %i.cj
  %i.de = fadd nsz <2 x double> %i.dd, %i.cr
  %9 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = fmul nsz <2 x double> %i.de, %9
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dh = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.db, <2 x double> %i.cz) ; 2 uses
  %i.dj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.co, <2 x double> %i.cc) ; 3 uses
  %10 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fmul nsz <2 x double> %i.cn, %9         ; 3 uses
  %12 = fsub nsz <2 x double> %i.di, %i.dg        ; 2 uses
  %13 = fadd nsz <2 x double> %i.di, %i.dg        ; 2 uses
  %14 = shufflevector <2 x double> %12, <2 x double> %13, <2 x i32> <i32 0, i32 3>
  %15 = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 56), align 8, !tbaa !30
  %16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 32), align 16
  %17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 48), align 16
  %18 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 40), align 8
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = fmul nsz <2 x double> %i.cu, %19
  %20 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %i.ct, <2 x double> %i.dl) ; 2 uses
  %21 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = fmul nsz <2 x double> %21, %i.cx
  %23 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %i.ct, <2 x double> %22) ; 2 uses
  %24 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %25 = fmul nsz <2 x double> %i.cw, %24
  %26 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %i.cv, <2 x double> %25) ; 2 uses
  %27 = insertelement <2 x double> poison, double %15, i64 0
  %i.dm = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul nsz <2 x double> %i.dm, %i.cy
  %i.do = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> %i.cv, <2 x double> %i.dn) ; 2 uses
  %28 = fadd nsz <2 x double> %i.dj, %20          ; 2 uses
  %29 = fadd nsz <2 x double> %i.dk, %26
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dp = fadd nsz <2 x double> %i.dj, %23        ; 2 uses
  %i.dq = fsub nsz <2 x double> %i.do, %i.dk
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ds = fadd nsz <2 x double> %28, %30          ; 2 uses
  %i.dt = fsub nsz <2 x double> %28, %30          ; 2 uses
  %i.du = shufflevector <2 x double> %i.ds, <2 x double> %i.dt, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.du, ptr %i.bu, align 8, !tbaa !24
  %i.dv = fadd nsz <2 x double> %i.dp, %i.dr      ; 2 uses
  %i.dw = fsub nsz <2 x double> %i.dp, %i.dr      ; 2 uses
  %i.dx = shufflevector <2 x double> %i.dv, <2 x double> %i.dw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dx, ptr %i.bv, align 8, !tbaa !24
  %i.dy = shufflevector <2 x double> %13, <2 x double> %12, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dy, ptr %i.bw, align 8, !tbaa !24
  %i.dz = fadd nsz <2 x double> %20, %23
  %i.ea = fsub nsz <2 x double> %i.dj, %i.dz      ; 2 uses
  %i.eb = fsub nsz <2 x double> %i.do, %26
  %i.ec = fadd nsz <2 x double> %i.dk, %i.eb
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ee = fadd nsz <2 x double> %i.ea, %i.ed      ; 2 uses
  %i.ef = fsub nsz <2 x double> %i.ea, %i.ed      ; 2 uses
  %i.eg = shufflevector <2 x double> %i.ee, <2 x double> %i.ef, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.eg, ptr %i.bx, align 8, !tbaa !24
  %i.eh = shufflevector <2 x double> %i.ef, <2 x double> %i.ee, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.eh, ptr %i.by, align 8, !tbaa !24
  store <2 x double> %14, ptr %i.bz, align 8, !tbaa !24
  %i.ei = shufflevector <2 x double> %i.dw, <2 x double> %i.dv, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ei, ptr %i.ca, align 8, !tbaa !24
  %i.ej = shufflevector <2 x double> %i.dt, <2 x double> %i.ds, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ej, ptr %i.cb, align 8, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !100

bb.c:                                             ; preds = %.preheader137, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ek = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.el = icmp slt i32 %i.ek, %i.f
  %i.em = add nsw i32 %i.ek, %i.f
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !24 ; 2 uses
  %i.eq = xor i32 %i.ek, -1                       ; 4 uses
  br i1 %i.el, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.er = add i32 %i.f, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %2, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !24
  %i.ev = fsub nsz double %i.eu, %i.ep
  %i.ew = add nsw i32 %i.ek, %i.g
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !24
  %i.fa = add i32 %i.g, %i.eq
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !24
  %i.fe = fadd nsz double %i.ez, %i.fd
  %i.ff = fneg nsz double %i.fe
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.fg = add i32 %i.r, %i.eq
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !24
  %i.fk = fadd nsz double %i.ep, %i.fj
  %i.fl = fneg nsz double %i.fk
  %i.fm = sub nuw nsw i32 %i.ek, %i.f
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !24
  %i.fq = add i32 %i.g, %i.eq
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !24
  %i.fu = fsub nsz double %i.fp, %i.ft
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.077.0 = phi nsz double [ %i.ev, %bb.d ], [ %i.fl, %bb.e ]
  %.sroa.6.0 = phi nsz double [ %i.ff, %bb.d ], [ %i.fu, %bb.e ]
  %i.fv = ashr i32 %i.ek, 1
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.fz = load <2 x double>, ptr %i.fx, align 8, !tbaa !24 ; 2 uses
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gb = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = fneg nsz <2 x double> %i.ga
  %i.ge = shufflevector <2 x double> %i.fz, <2 x double> %i.gd, <2 x i32> <i32 0, i32 2>
  %i.gf = fmul nsz <2 x double> %i.gc, %i.ge
  %i.gg = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.ga, <2 x double> %i.gf)
  store <2 x double> %i.gi, ptr %i.fy, align 16, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !101

.lr.ph:                                           ; preds = %.preheader136
  %i.gj = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.gk = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.gl = add nuw nsw i64 %indvars.iv151, %i.gk   ; 3 uses
  %i.gm = xor i64 %indvars.iv151, -1
  %i.gn = add nsw i64 %i.gk, %i.gm                ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.gl
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !12
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.gn
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !12
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %i.gs ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !29 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !30 ; 2 uses
  %i.gx = sext i32 %i.gp to i64
  %i.gy = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %i.gx ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !29 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !30 ; 2 uses
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.gl ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !30
  %i.hf = load double, ptr %i.hc, align 8, !tbaa !29
  %i.hg = fneg nsz double %i.hf
  %i.hh = fmul nsz double %i.hb, %i.hg
  %i.hi = tail call nsz double @llvm.fmuladd.f64(double %i.gz, double %i.he, double %i.hh)
  %i.hj = shl nsw i64 %i.gn, 1
  %i.hk = mul nsw i64 %i.p, %i.hj
  %i.hl = getelementptr [8 x i8], ptr %1, i64 %i.hk ; 2 uses
  %i.hm = getelementptr [8 x i8], ptr %i.hl, i64 %i.p
  store double %i.hi, ptr %i.hm, align 8, !tbaa !24
  %i.hn = load double, ptr %i.hc, align 8, !tbaa !29
  %i.ho = load double, ptr %i.hd, align 8, !tbaa !30
  %i.hp = fmul nsz double %i.hb, %i.ho
  %i.hq = tail call nsz double @llvm.fmuladd.f64(double %i.gz, double %i.hn, double %i.hp)
  %i.hr = shl nuw nsw i64 %i.gl, 1
  %i.hs = mul nuw nsw i64 %i.p, %i.hr
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hs ; 2 uses
  store double %i.hq, ptr %i.ht, align 8, !tbaa !24
  %i.hu = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.gn ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !30
  %i.hx = load double, ptr %i.hu, align 8, !tbaa !29
  %i.hy = fneg nsz double %i.hx
  %i.hz = fmul nsz double %i.gw, %i.hy
  %i.ia = tail call nsz double @llvm.fmuladd.f64(double %i.gu, double %i.hw, double %i.hz)
  %i.ib = getelementptr [8 x i8], ptr %i.ht, i64 %i.p
  store double %i.ia, ptr %i.ib, align 8, !tbaa !24
  %i.ic = load double, ptr %i.hu, align 8, !tbaa !29
  %i.id = load double, ptr %i.hv, align 8, !tbaa !30
  %i.ie = fmul nsz double %i.gw, %i.id
  %i.if = tail call nsz double @llvm.fmuladd.f64(double %i.gu, double %i.ic, double %i.ie)
  store double %i.if, ptr %i.hl, align 8, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !102
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexDouble], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 15                     ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 45                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader151.lr.ph, label %.preheader150

.preheader151.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 15 uses
  %.idx.i = mul nuw nsw i64 %i.u, 96
  %.idx88.i = mul nuw nsw i64 %i.u, 192
  %.idx89.i = mul nuw nsw i64 %i.u, 48
  %.idx90.i = mul nuw nsw i64 %i.u, 144
  %.idx.i139 = mul nuw nsw i64 %i.u, 160
  %.idx88.i140 = mul nuw nsw i64 %i.u, 112
  %.idx89.i141 = mul nuw nsw i64 %i.u, 208
  %.idx90.i142 = shl nuw nsw i64 %i.u, 6
  %.idx.i146 = mul nuw nsw i64 %i.u, 80
  %.idx88.i147 = mul nuw nsw i64 %i.u, 176
  %.idx89.i148 = shl nuw nsw i64 %i.u, 5
  %.idx90.i149 = shl nuw nsw i64 %i.u, 7
  %.idx91.i = mul nuw nsw i64 %i.u, 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 192
end_hunk_1
begin_hunk_2_@ff_tx_mdct_pfa_9xM_inv_double_c:bb.a
  %i.bs = mul nsw i64 %i.n, %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %.0118, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %.0118, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %.0107117, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12 ; 2 uses
  %i.bz = sub nsw i32 0, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.n, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !24
  %i.ce = sext i32 %i.by to i64
  %i.cf = mul nsw i64 %i.n, %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %.0118, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %.0118, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %.0107117, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12 ; 2 uses
  %i.cm = sub nsw i32 0, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %i.n, %i.cn
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24
  %i.cr = sext i32 %i.cl to i64
  %i.cs = mul nsw i64 %i.n, %i.cr
  %i.ct = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %.0118, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %.0118, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %.0107117, i64 24
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !12 ; 2 uses
  %i.cz = sub nsw i32 0, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = mul nsw i64 %i.n, %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24
  %i.de = sext i32 %i.cy to i64
  %i.df = mul nsw i64 %i.n, %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %.0118, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %.0118, i64 104
  %i.dk = getelementptr inbounds nuw i8, ptr %.0107117, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12 ; 2 uses
  %i.dm = sub nsw i32 0, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul nsw i64 %i.n, %i.dn
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !24
  %i.dr = sext i32 %i.dl to i64
  %i.ds = mul nsw i64 %i.n, %i.dr
  %i.dt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %.0118, i64 112
  %i.dw = getelementptr inbounds nuw i8, ptr %.0118, i64 120
  %i.dx = getelementptr inbounds nuw i8, ptr %.0107117, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !12 ; 2 uses
  %i.dz = sub nsw i32 0, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul nsw i64 %i.n, %i.ea
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !24
  %i.ee = sext i32 %i.dy to i64
  %i.ef = mul nsw i64 %i.n, %i.ee
  %i.eg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !24
  %i.ei = getelementptr inbounds nuw i8, ptr %.0118, i64 128
  %i.ej = getelementptr inbounds nuw i8, ptr %.0118, i64 136
  %i.ek = getelementptr inbounds nuw i8, ptr %.0110115, i64 4
  %i.el = load i32, ptr %.0110115, align 4, !tbaa !12
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.em ; 9 uses
  %i.eo = getelementptr inbounds [16 x i8], ptr %i.en, i64 %i.y
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %.idx.i
  %i.eq = getelementptr inbounds i8, ptr %i.en, i64 %.idx196.i
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %.idx197.i
  %i.es = getelementptr inbounds i8, ptr %i.en, i64 %.idx198.i
  %i.et = getelementptr inbounds i8, ptr %i.en, i64 %.idx199.i
  %i.eu = getelementptr inbounds i8, ptr %i.en, i64 %.idx200.i
  %i.ev = getelementptr inbounds i8, ptr %i.en, i64 %.idx201.i
  %i.ew = load double, ptr %i.aj, align 8, !tbaa !30
  %i.ex = load <2 x double>, ptr %.0118, align 8, !tbaa !24 ; 2 uses
  %i.ey = fneg nsz double %i.ew
  %i.ez = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fc = insertelement <2 x double> %i.fb, double %i.ey, i64 0
  %i.fd = fmul nsz <2 x double> %i.fa, %i.fc
  %i.fe = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.ex, <2 x double> %i.fd) ; 2 uses
  %i.fh = load double, ptr %i.aw, align 8, !tbaa !30
  %i.fi = load <2 x double>, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %i.fj = fneg nsz double %i.fh
  %i.fk = insertelement <2 x double> poison, double %i.au, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fn = insertelement <2 x double> %i.fm, double %i.fj, i64 0
  %i.fo = fmul nsz <2 x double> %i.fl, %i.fn
  %i.fp = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fi, <2 x double> %i.fo) ; 2 uses
  %i.fs = load double, ptr %i.bj, align 8, !tbaa !30
  %i.ft = load <2 x double>, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.fu = fneg nsz double %i.fs
  %i.fv = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fy = insertelement <2 x double> %i.fx, double %i.fu, i64 0
  %i.fz = fmul nsz <2 x double> %i.fw, %i.fy
  %i.ga = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.ft, <2 x double> %i.fz) ; 2 uses
  %i.gd = load double, ptr %i.bw, align 8, !tbaa !30
  %i.ge = load <2 x double>, ptr %i.bv, align 8, !tbaa !24 ; 2 uses
  %i.gf = fneg nsz double %i.gd
  %i.gg = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gj = insertelement <2 x double> %i.gi, double %i.gf, i64 0
  %i.gk = fmul nsz <2 x double> %i.gh, %i.gj
  %i.gl = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.ge, <2 x double> %i.gk) ; 2 uses
  %i.go = load double, ptr %i.cj, align 8, !tbaa !30
  %i.gp = load <2 x double>, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.gq = fneg nsz double %i.go
  %i.gr = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gu = insertelement <2 x double> %i.gt, double %i.gq, i64 0
  %i.gv = fmul nsz <2 x double> %i.gs, %i.gu
  %i.gw = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gp, <2 x double> %i.gv) ; 2 uses
  %i.gz = load double, ptr %i.cw, align 8, !tbaa !30
  %i.ha = load <2 x double>, ptr %i.cv, align 8, !tbaa !24 ; 2 uses
  %i.hb = fneg nsz double %i.gz
  %i.hc = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hf = insertelement <2 x double> %i.he, double %i.hb, i64 0
  %i.hg = fmul nsz <2 x double> %i.hd, %i.hf
  %i.hh = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.ha, <2 x double> %i.hg) ; 2 uses
  %i.hk = load double, ptr %i.dj, align 8, !tbaa !30
  %i.hl = load <2 x double>, ptr %i.di, align 8, !tbaa !24 ; 2 uses
  %i.hm = fneg nsz double %i.hk
  %i.hn = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hp = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hq = insertelement <2 x double> %i.hp, double %i.hm, i64 0
  %i.hr = fmul nsz <2 x double> %i.ho, %i.hq
  %i.hs = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hl, <2 x double> %i.hr) ; 2 uses
  %i.hv = load double, ptr %i.dw, align 8, !tbaa !30
  %i.hw = load <2 x double>, ptr %i.dv, align 8, !tbaa !24 ; 2 uses
  %i.hx = fneg nsz double %i.hv
  %i.hy = insertelement <2 x double> poison, double %i.du, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ib = insertelement <2 x double> %i.ia, double %i.hx, i64 0
  %i.ic = fmul nsz <2 x double> %i.hz, %i.ib
  %i.id = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.hw, <2 x double> %i.ic) ; 2 uses
  %i.ig = load double, ptr %i.ej, align 8, !tbaa !30
  %i.ih = load <2 x double>, ptr %i.ei, align 8, !tbaa !24 ; 2 uses
  %i.ii = fneg nsz double %i.ig
  %i.ij = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.im = insertelement <2 x double> %i.il, double %i.ii, i64 0
  %i.in = fmul nsz <2 x double> %i.ik, %i.im
  %i.io = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ih, <2 x double> %i.in) ; 2 uses
  %i.ir = fsub nsz <2 x double> %i.fr, %i.iq      ; 2 uses
  %i.is = fadd nsz <2 x double> %i.fr, %i.iq      ; 2 uses
  %i.it = fsub nsz <2 x double> %i.gc, %i.if      ; 2 uses
  %i.iu = fadd nsz <2 x double> %i.gc, %i.if      ; 2 uses
  %i.iv = fsub nsz <2 x double> %i.gn, %i.hu
  %i.iw = fadd nsz <2 x double> %i.gn, %i.hu      ; 2 uses
  %i.ix = fsub nsz <2 x double> %i.gy, %i.hj      ; 3 uses
  %i.iy = fadd nsz <2 x double> %i.gy, %i.hj      ; 3 uses
  %i.iz = fsub nsz <2 x double> %i.is, %i.iy      ; 2 uses
  %i.ja = fsub nsz <2 x double> %i.iu, %i.iy      ; 2 uses
  %i.jb = fsub nsz <2 x double> %i.ir, %i.ix      ; 2 uses
  %i.jc = fadd nsz <2 x double> %i.it, %i.ix      ; 2 uses
  %i.jd = fneg nsz <2 x double> %i.ja
  %i.je = fneg nsz <2 x double> %i.jc
  %i.jf = fadd nsz <2 x double> %i.fg, %i.iw      ; 2 uses
  %i.jg = fadd nsz <2 x double> %i.is, %i.iu
  %i.jh = fadd nsz <2 x double> %i.jg, %i.iy      ; 2 uses
  %i.ji = fadd nsz <2 x double> %i.jf, %i.jh
  store <2 x double> %i.ji, ptr %i.en, align 8, !tbaa !24
  %4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 24), align 8
  %5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 16), align 16
  %6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 8), align 8
  %7 = load <2 x double>, ptr @ff_tx_tab_9_double, align 16
  %i.jj = fsub nsz <2 x double> %i.ir, %i.it
  %i.jk = fadd nsz <2 x double> %i.jj, %i.ix
  %8 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jl = fmul nsz <2 x double> %i.jk, %8
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jn = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jh, <2 x double> %i.jf) ; 2 uses
  %i.jp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.iw, <2 x double> %i.fg) ; 3 uses
  %9 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = fmul nsz <2 x double> %i.iv, %8         ; 3 uses
  %11 = fsub nsz <2 x double> %i.jo, %i.jm        ; 2 uses
  %12 = fadd nsz <2 x double> %i.jo, %i.jm        ; 2 uses
  %13 = shufflevector <2 x double> %11, <2 x double> %12, <2 x i32> <i32 0, i32 3>
  %14 = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 56), align 8, !tbaa !30
  %15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 32), align 16
  %16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 48), align 16
  %17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 40), align 8
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jr = fmul nsz <2 x double> %i.ja, %18
  %19 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.iz, <2 x double> %i.jr) ; 2 uses
  %20 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = fmul nsz <2 x double> %20, %i.jd
  %22 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.iz, <2 x double> %21) ; 2 uses
  %23 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %24 = fmul nsz <2 x double> %i.jc, %23
  %25 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %i.jb, <2 x double> %24) ; 2 uses
  %26 = insertelement <2 x double> poison, double %14, i64 0
  %i.js = shufflevector <2 x double> %26, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fmul nsz <2 x double> %i.js, %i.je
  %i.ju = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.jb, <2 x double> %i.jt) ; 2 uses
  %27 = fadd nsz <2 x double> %i.jp, %19          ; 2 uses
  %28 = fadd nsz <2 x double> %i.jq, %25
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jv = fadd nsz <2 x double> %i.jp, %22        ; 2 uses
  %i.jw = fsub nsz <2 x double> %i.ju, %i.jq
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jy = fadd nsz <2 x double> %27, %29          ; 2 uses
  %i.jz = fsub nsz <2 x double> %27, %29          ; 2 uses
  %i.ka = shufflevector <2 x double> %i.jy, <2 x double> %i.jz, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ka, ptr %i.eo, align 8, !tbaa !24
  %i.kb = fadd nsz <2 x double> %i.jv, %i.jx      ; 2 uses
  %i.kc = fsub nsz <2 x double> %i.jv, %i.jx      ; 2 uses
  %i.kd = shufflevector <2 x double> %i.kb, <2 x double> %i.kc, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.kd, ptr %i.ep, align 8, !tbaa !24
  %i.ke = shufflevector <2 x double> %12, <2 x double> %11, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ke, ptr %i.eq, align 8, !tbaa !24
  %i.kf = fadd nsz <2 x double> %19, %22
  %i.kg = fsub nsz <2 x double> %i.jp, %i.kf      ; 2 uses
  %i.kh = fsub nsz <2 x double> %i.ju, %25
  %i.ki = fadd nsz <2 x double> %i.jq, %i.kh
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kk = fadd nsz <2 x double> %i.kg, %i.kj      ; 2 uses
  %i.kl = fsub nsz <2 x double> %i.kg, %i.kj      ; 2 uses
  %i.km = shufflevector <2 x double> %i.kk, <2 x double> %i.kl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.km, ptr %i.er, align 8, !tbaa !24
  %i.kn = shufflevector <2 x double> %i.kl, <2 x double> %i.kk, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.kn, ptr %i.es, align 8, !tbaa !24
  store <2 x double> %13, ptr %i.et, align 8, !tbaa !24
  %i.ko = shufflevector <2 x double> %i.kc, <2 x double> %i.kb, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ko, ptr %i.eu, align 8, !tbaa !24
  %i.kp = shufflevector <2 x double> %i.jz, <2 x double> %i.jy, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.kp, ptr %i.ev, align 8, !tbaa !24
  %i.kq = getelementptr inbounds nuw i8, ptr %.0118, i64 144 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0107117, i64 36
  %i.ks = add nuw nsw i32 %.0109116, 9            ; 2 uses
  %i.kt = icmp slt i32 %i.ks, %i.e
  br i1 %i.kt, label %.preheader113, label %.preheader112.loopexit, !llvm.loop !112

.preheader112.loopexit:                           ; preds = %.preheader113
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %.preheader112

.preheader112:                                    ; preds = %..preheader112_crit_edge, %.preheader112.loopexit
  %.pre-phi = phi i64 [ %.pre124, %..preheader112_crit_edge ], [ %i.y, %.preheader112.loopexit ] ; 8 uses
  %i.ku = phi ptr [ %i.g, %..preheader112_crit_edge ], [ %.pre, %.preheader112.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader112_crit_edge ], [ %i.kq, %.preheader112.loopexit ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !10
  %i.ky = load ptr, ptr %i.kw, align 8, !tbaa !32 ; 2 uses
  tail call void %i.kx(ptr noundef %i.ku, ptr noundef %i.ky, ptr noundef %i.ky, i64 noundef 16) #16
  %i.kz = load ptr, ptr %i.kv, align 8, !tbaa !10
  %i.la = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.lb = load ptr, ptr %i.kw, align 8, !tbaa !32
  %i.lc = getelementptr inbounds [16 x i8], ptr %i.lb, i64 %.pre-phi ; 2 uses
  tail call void %i.kz(ptr noundef %i.la, ptr noundef %i.lc, ptr noundef %i.lc, i64 noundef 16) #16
  %i.ld = load ptr, ptr %i.kv, align 8, !tbaa !10
  %i.le = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.lf = load ptr, ptr %i.kw, align 8, !tbaa !32
  %.idx = shl nsw i64 %.pre-phi, 5
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %.idx ; 2 uses
  tail call void %i.ld(ptr noundef %i.le, ptr noundef %i.lg, ptr noundef %i.lg, i64 noundef 16) #16
  %i.lh = load ptr, ptr %i.kv, align 8, !tbaa !10
  %i.li = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.lj = load ptr, ptr %i.kw, align 8, !tbaa !32
  %.idx126 = mul nsw i64 %.pre-phi, 48
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %.idx126 ; 2 uses
  tail call void %i.lh(ptr noundef %i.li, ptr noundef %i.lk, ptr noundef %i.lk, i64 noundef 16) #16
  %i.ll = load ptr, ptr %i.kv, align 8, !tbaa !10
  %i.lm = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ln = load ptr, ptr %i.kw, align 8, !tbaa !32
  %.idx127 = shl nsw i64 %.pre-phi, 6
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 %.idx127 ; 2 uses
  tail call void %i.ll(ptr noundef %i.lm, ptr noundef %i.lo, ptr noundef %i.lo, i64 noundef 16) #16
  %i.lp = load ptr, ptr %i.kv, align 8, !tbaa !10
  %i.lq = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.lr = load ptr, ptr %i.kw, align 8, !tbaa !32
  %.idx128 = mul nsw i64 %.pre-phi, 80
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 %.idx128 ; 2 uses
  tail call void %i.lp(ptr noundef %i.lq, ptr noundef %i.ls, ptr noundef %i.ls, i64 noundef 16) #16
  %i.lt = load ptr, ptr %i.kv, align 8, !tbaa !10
  %i.lu = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.lv = load ptr, ptr %i.kw, align 8, !tbaa !32
  %.idx129 = mul nsw i64 %.pre-phi, 96
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 %.idx129 ; 2 uses
  tail call void %i.lt(ptr noundef %i.lu, ptr noundef %i.lw, ptr noundef %i.lw, i64 noundef 16) #16
  %i.lx = load ptr, ptr %i.kv, align 8, !tbaa !10
  %i.ly = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.lz = load ptr, ptr %i.kw, align 8, !tbaa !32
  %.idx130 = mul nsw i64 %.pre-phi, 112
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 %.idx130 ; 2 uses
  tail call void %i.lx(ptr noundef %i.ly, ptr noundef %i.ma, ptr noundef %i.ma, i64 noundef 16) #16
  %i.mb = load ptr, ptr %i.kv, align 8, !tbaa !10
  %i.mc = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.md = load ptr, ptr %i.kw, align 8, !tbaa !32
  %.idx131 = shl nsw i64 %.pre-phi, 7
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 %.idx131 ; 2 uses
  tail call void %i.mb(ptr noundef %i.mc, ptr noundef %i.me, ptr noundef %i.me, i64 noundef 16) #16
  %i.mf = icmp sgt i32 %i.d, 0
  br i1 %i.mf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader112
  %i.mg = load ptr, ptr %i.kw, align 8, !tbaa !32 ; 2 uses
  %i.mh = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader112
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.mi = add nuw nsw i64 %indvars.iv, %i.mh      ; 3 uses
  %i.mj = xor i64 %indvars.iv, -1
  %i.mk = add nsw i64 %i.mh, %i.mj                ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mi
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !12
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.mk
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !12
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [16 x i8], ptr %i.mg, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !30 ; 2 uses
  %i.mt = load double, ptr %i.mq, align 8, !tbaa !29 ; 2 uses
  %i.mu = sext i32 %i.mm to i64
  %i.mv = getelementptr inbounds [16 x i8], ptr %i.mg, i64 %i.mu ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !30 ; 2 uses
  %i.my = load double, ptr %i.mv, align 8, !tbaa !29 ; 2 uses
  %i.mz = getelementptr inbounds [16 x i8], ptr %.0.lcssa, i64 %i.mk ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load double, ptr %i.na, align 8, !tbaa !30 ; 2 uses
  %i.nc = load double, ptr %i.mz, align 8, !tbaa !29
  %i.nd = fneg nsz double %i.nc
  %i.ne = fmul nsz double %i.mt, %i.nd
  %i.nf = tail call nsz double @llvm.fmuladd.f64(double %i.ms, double %i.nb, double %i.ne)
  %i.ng = getelementptr inbounds [16 x i8], ptr %1, i64 %i.mk ; 2 uses
  store double %i.nf, ptr %i.ng, align 8, !tbaa !29
  %i.nh = load double, ptr %i.mz, align 8, !tbaa !29
  %i.ni = fmul nsz double %i.mt, %i.nb
  %i.nj = tail call nsz double @llvm.fmuladd.f64(double %i.ms, double %i.nh, double %i.ni)
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.mi ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  store double %i.nj, ptr %i.nl, align 8, !tbaa !30
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %.0.lcssa, i64 %i.mi ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = load double, ptr %i.nn, align 8, !tbaa !30 ; 2 uses
  %i.np = load double, ptr %i.nm, align 8, !tbaa !29
  %i.nq = fneg nsz double %i.np
  %i.nr = fmul nsz double %i.my, %i.nq
  %i.ns = tail call nsz double @llvm.fmuladd.f64(double %i.mx, double %i.no, double %i.nr)
  store double %i.ns, ptr %i.nk, align 8, !tbaa !29
  %i.nt = load double, ptr %i.nm, align 8, !tbaa !29
  %i.nu = fmul nsz double %i.my, %i.no
  %i.nv = tail call nsz double @llvm.fmuladd.f64(double %i.mx, double %i.nt, double %i.nu)
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store double %i.nv, ptr %i.nw, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !113
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_inv_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexDouble], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = mul nsw i32 %i.h, 15
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 3                           ; 3 uses
  %i.o = mul nsw i32 %i.h, 30
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.r
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader127.lr.ph, label %..preheader126_crit_edge

..preheader126_crit_edge:                         ; preds = %bb.a
  %.pre149 = sext i32 %i.h to i64
  br label %.preheader126

.preheader127.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = sext i32 %i.h to i64                     ; 15 uses
  %.idx.i = mul nsw i64 %i.y, 96
  %.idx88.i = mul nsw i64 %i.y, 192
  %.idx89.i = mul nsw i64 %i.y, 48
  %.idx90.i = mul nsw i64 %i.y, 144
  %.idx.i115 = mul nsw i64 %i.y, 160
  %.idx88.i116 = mul nsw i64 %i.y, 112
  %.idx89.i117 = mul nsw i64 %i.y, 208
  %.idx90.i118 = shl nsw i64 %i.y, 6
  %.idx.i122 = mul nsw i64 %i.y, 80
  %.idx88.i123 = mul nsw i64 %i.y, 176
  %.idx89.i124 = shl nsw i64 %i.y, 5
  %.idx90.i125 = shl nsw i64 %i.y, 7
  %.idx91.i = mul nsw i64 %i.y, 224
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 224
  br label %.preheader127

end_hunk_2
