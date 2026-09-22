Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/newmdct?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mdct_init48:.preheader204
  store <2 x double> %i.ue, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1024), align 16, !tbaa !9
  %wide.load.11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 176), align 16, !tbaa !9
  %i.uf = fmul <2 x double> %broadcast.splat, %wide.load.11
  store <2 x double> %i.uf, ptr getelementptr inbounds nuw (i8, ptr @win, i64 176), align 16, !tbaa !9
  %wide.load308.11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 464), align 16, !tbaa !9
  %i.ug = fmul <2 x double> %broadcast.splat, %wide.load308.11
  store <2 x double> %i.ug, ptr getelementptr inbounds nuw (i8, ptr @win, i64 464), align 16, !tbaa !9
  %wide.load309.11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1040), align 16, !tbaa !9
  %i.uh = fmul <2 x double> %broadcast.splat, %wide.load309.11
  store <2 x double> %i.uh, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1040), align 16, !tbaa !9
  %wide.load.12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 192), align 16, !tbaa !9
  %i.ui = fmul <2 x double> %broadcast.splat, %wide.load.12
  store <2 x double> %i.ui, ptr getelementptr inbounds nuw (i8, ptr @win, i64 192), align 16, !tbaa !9
  %wide.load308.12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 480), align 16, !tbaa !9
  %i.uj = fmul <2 x double> %broadcast.splat, %wide.load308.12
  store <2 x double> %i.uj, ptr getelementptr inbounds nuw (i8, ptr @win, i64 480), align 16, !tbaa !9
  %wide.load309.12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1056), align 16, !tbaa !9
  %i.uk = fmul <2 x double> %broadcast.splat, %wide.load309.12
  store <2 x double> %i.uk, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1056), align 16, !tbaa !9
  %wide.load.13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 208), align 16, !tbaa !9
  %i.ul = fmul <2 x double> %broadcast.splat, %wide.load.13
  store <2 x double> %i.ul, ptr getelementptr inbounds nuw (i8, ptr @win, i64 208), align 16, !tbaa !9
  %wide.load308.13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 496), align 16, !tbaa !9
  %i.um = fmul <2 x double> %broadcast.splat, %wide.load308.13
  store <2 x double> %i.um, ptr getelementptr inbounds nuw (i8, ptr @win, i64 496), align 16, !tbaa !9
  %wide.load309.13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1072), align 16, !tbaa !9
  %i.un = fmul <2 x double> %broadcast.splat, %wide.load309.13
  store <2 x double> %i.un, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1072), align 16, !tbaa !9
  %wide.load.14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 224), align 16, !tbaa !9
  %i.uo = fmul <2 x double> %broadcast.splat, %wide.load.14
  store <2 x double> %i.uo, ptr getelementptr inbounds nuw (i8, ptr @win, i64 224), align 16, !tbaa !9
  %wide.load308.14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 512), align 16, !tbaa !9
  %i.up = fmul <2 x double> %broadcast.splat, %wide.load308.14
  store <2 x double> %i.up, ptr getelementptr inbounds nuw (i8, ptr @win, i64 512), align 16, !tbaa !9
  %wide.load309.14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1088), align 16, !tbaa !9
  %i.uq = fmul <2 x double> %broadcast.splat, %wide.load309.14
  store <2 x double> %i.uq, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1088), align 16, !tbaa !9
  %wide.load.15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 240), align 16, !tbaa !9
  %i.ur = fmul <2 x double> %broadcast.splat, %wide.load.15
  store <2 x double> %i.ur, ptr getelementptr inbounds nuw (i8, ptr @win, i64 240), align 16, !tbaa !9
  %wide.load308.15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 528), align 16, !tbaa !9
  %i.us = fmul <2 x double> %broadcast.splat, %wide.load308.15
  store <2 x double> %i.us, ptr getelementptr inbounds nuw (i8, ptr @win, i64 528), align 16, !tbaa !9
  %wide.load309.15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1104), align 16, !tbaa !9
  %i.ut = fmul <2 x double> %broadcast.splat, %wide.load309.15
  store <2 x double> %i.ut, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1104), align 16, !tbaa !9
  %wide.load.16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 256), align 16, !tbaa !9
  %i.uu = fmul <2 x double> %broadcast.splat, %wide.load.16
  store <2 x double> %i.uu, ptr getelementptr inbounds nuw (i8, ptr @win, i64 256), align 16, !tbaa !9
  %wide.load308.16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 544), align 16, !tbaa !9
  %i.uv = fmul <2 x double> %broadcast.splat, %wide.load308.16
  store <2 x double> %i.uv, ptr getelementptr inbounds nuw (i8, ptr @win, i64 544), align 16, !tbaa !9
  %wide.load309.16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1120), align 16, !tbaa !9
  %i.uw = fmul <2 x double> %broadcast.splat, %wide.load309.16
  store <2 x double> %i.uw, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1120), align 16, !tbaa !9
  %wide.load.17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 272), align 16, !tbaa !9
  %i.ux = fmul <2 x double> %broadcast.splat, %wide.load.17
  store <2 x double> %i.ux, ptr getelementptr inbounds nuw (i8, ptr @win, i64 272), align 16, !tbaa !9
  %wide.load308.17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 560), align 16, !tbaa !9
  %i.uy = fmul <2 x double> %broadcast.splat, %wide.load308.17
  store <2 x double> %i.uy, ptr getelementptr inbounds nuw (i8, ptr @win, i64 560), align 16, !tbaa !9
  %wide.load309.17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1136), align 16, !tbaa !9
  %i.uz = fmul <2 x double> %broadcast.splat, %wide.load309.17
  store <2 x double> %i.uz, ptr getelementptr inbounds nuw (i8, ptr @win, i64 1136), align 16, !tbaa !9
  %i.va = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.vb = shufflevector <2 x double> %i.va, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vc = fmul <2 x double> %i.vb, <double f0x3FEFB9EA92EC689B, double f0x3FED906BCF328D46>
  store <2 x double> <double f0x3FC0D9FD31C98BF8, double f0x3FDA827999FCEF32>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 576), align 16, !tbaa !9
  %i.vd = fmul <2 x double> %i.vc, splat (double f0x3F00000000000000)
  %i.ve = fmul <2 x double> %i.vd, splat (double f0x3FD5555555555555) ; 7 uses
  %i.vf = extractelement <2 x double> %i.ve, i64 0
  %i.vg = fmul double %i.vf, f0x3FEFB9EA92EC689C
  store double %i.vg, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 144), align 16, !tbaa !9
  %i.vh = fmul <2 x double> %i.ve, <double f0x3FE37AF93F9513EA, double f0x3FD87DE2A6AEA964>
  store <2 x double> %i.vh, ptr @cos_s, align 16, !tbaa !9
  %i.vi = fmul <2 x double> %i.ve, <double f0xBFED906BCF328D46, double f0xBFED906BCF328D47>
  store <2 x double> %i.vi, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 48), align 16, !tbaa !9
  %i.vj = fmul <2 x double> %i.ve, <double f0xBFC0B5150F6DA2F1, double f0x3FED906BCF328D44>
  store <2 x double> %i.vj, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 96), align 16, !tbaa !9
  %i.vk = fmul <2 x double> %i.ve, <double f0xBFD87DE2A6AEA965, double f0xBFD87DE2A6AEA971>
  store <2 x double> %i.vk, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 192), align 16, !tbaa !9
  %i.vl = fmul <2 x double> %i.ve, <double f0xBFE963268B572493, double f0x3FED906BCF328D4C>
  store <2 x double> %i.vl, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 240), align 16, !tbaa !9
  %i.vm = fmul double %i.dc, f0x3FE963268B572493
  %i.vn = fmul double %i.vm, f0x3F00000000000000
  store double f0x3FE88DF153D6A674, ptr getelementptr inbounds nuw (i8, ptr @win, i64 592), align 16, !tbaa !9
  %i.vo = shufflevector <2 x double> %i.ve, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vp = fmul double %i.vn, f0x3FD5555555555555  ; 2 uses
  %i.vq = insertelement <2 x double> %i.vo, double %i.vp, i64 0 ; 6 uses
  %i.vr = fmul <2 x double> %i.vq, <double f0x3FC0B5150F6DA2D5, double f0xBFE963268B572491>
  store <2 x double> %i.vr, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 16), align 16, !tbaa !9
  %i.vs = insertelement <2 x double> %i.vo, double %i.vp, i64 1 ; 6 uses
  %i.vt = fmul <2 x double> %i.vs, <double f0xBFED906BCF328D46, double f0xBFEFB9EA92EC689B>
  store <2 x double> %i.vt, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 32), align 16, !tbaa !9
  %i.vu = fmul <2 x double> %i.vq, <double f0xBFD87DE2A6AEA96D, double f0x3FD87DE2A6AEA96F>
  store <2 x double> %i.vu, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 64), align 16, !tbaa !9
  %i.vv = fmul <2 x double> %i.vs, <double f0xBFD87DE2A6AEA965, double f0xBFED906BCF328D43> ; 2 uses
  %i.vw = extractelement <2 x double> %i.vv, i64 0
  store double %i.vw, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 152), align 8, !tbaa !9
  store <2 x double> %i.vv, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 80), align 16, !tbaa !9
  %i.vx = fmul <2 x double> %i.vq, <double f0x3FE37AF93F9513F3, double f0x3FEFB9EA92EC689A>
  store <2 x double> %i.vx, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 112), align 16, !tbaa !9
  %i.vy = fmul <2 x double> %i.vs, <double f0x3FD87DE2A6AEA991, double f0xBFE963268B572484>
  store <2 x double> %i.vy, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 128), align 16, !tbaa !9
  %i.vz = fmul <2 x double> %i.vq, <double f0xBFE963268B572493, double f0x3FC0B5150F6DA293>
  store <2 x double> %i.vz, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 160), align 16, !tbaa !9
  %i.wa = fmul <2 x double> %i.vs, <double f0x3FED906BCF328D4D, double f0xBFE37AF93F9513D8>
  store <2 x double> %i.wa, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 176), align 16, !tbaa !9
  %i.wb = fmul <2 x double> %i.vq, <double f0x3FED906BCF328D46, double f0xBFED906BCF328D4E>
  store <2 x double> %i.wb, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 208), align 16, !tbaa !9
  %i.wc = fmul <2 x double> %i.vs, <double f0x3FED906BCF328D47, double f0xBFD87DE2A6AEA959>
  store <2 x double> %i.wc, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 224), align 16, !tbaa !9
  %i.wd = fmul <2 x double> %i.vq, <double f0xBFEFB9EA92EC689D, double f0xBFE37AF93F9513D7>
  store <2 x double> %i.wd, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 256), align 16, !tbaa !9
  %i.we = fmul <2 x double> %i.vs, <double f0x3FD87DE2A6AEA91B, double f0xBFC0B5150F6DA27E>
  store <2 x double> %i.we, ptr getelementptr inbounds nuw (i8, ptr @cos_s, i64 272), align 16, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @window_subband(ptr nofree noundef readonly %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 510
  %i.b = load i16, ptr %i.a, align 2, !tbaa !44
  %i.c = sitofp i16 %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 446
  %i.e = load i16, ptr %i.d, align 2, !tbaa !44
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.h = load i16, ptr %i.g, align 2, !tbaa !44
  %i.i = sext i16 %i.h to i32
  %i.j = sub nsw i32 %i.f, %i.i
  %i.k = sitofp i32 %i.j to double
  %i.l = load double, ptr @enwindow, align 16, !tbaa !9
  %i.m = tail call double @llvm.fmuladd.f64(double %i.k, double %i.l, double %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 382
  %i.o = load i16, ptr %i.n, align 2, !tbaa !44
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 638
  %i.r = load i16, ptr %i.q, align 2, !tbaa !44
  %i.s = sext i16 %i.r to i32
  %i.t = add nsw i32 %i.s, %i.p
  %i.u = sitofp i32 %i.t to double
  %i.v = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 8), align 8, !tbaa !9
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.m)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 318
  %i.y = load i16, ptr %i.x, align 2, !tbaa !44
  %i.z = sext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 702
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !44
  %i.ac = sext i16 %i.ab to i32
  %i.ad = sub nsw i32 %i.z, %i.ac
  %i.ae = sitofp i32 %i.ad to double
  %i.af = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 16), align 16, !tbaa !9
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.af, double %i.w)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 254
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !44
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 766
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !44
  %i.am = sext i16 %i.al to i32
  %i.an = add nsw i32 %i.am, %i.aj
  %i.ao = sitofp i32 %i.an to double
  %i.ap = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 24), align 8, !tbaa !9
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double %i.ag)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !44
  %i.at = sext i16 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 830
  %i.av = load i16, ptr %i.au, align 2, !tbaa !44
  %i.aw = sext i16 %i.av to i32
  %i.ax = sub nsw i32 %i.at, %i.aw
  %i.ay = sitofp i32 %i.ax to double
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 32), align 16, !tbaa !9
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double %i.aq)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !44
  %i.bd = sext i16 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 894
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !44
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 40), align 8, !tbaa !9
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bj, double %i.ba)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !44
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 958
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !44
  %i.bq = sext i16 %i.bp to i32
  %i.br = sub nsw i32 %i.bn, %i.bq
  %i.bs = sitofp i32 %i.br to double
  %i.bt = load double, ptr getelementptr inbounds nuw (i8, ptr @enwindow, i64 48), align 16, !tbaa !9
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.bk)
  store double %i.bu, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 14, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %.01991 = phi ptr [ getelementptr inbounds nuw (i8, ptr @enwindow, i64 56), %bb.a ], [ %i.fq, %bb.b ] ; 22 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 16 uses
  %i.bw = sub nsw i64 0, %indvars.iv
  %i.bx = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bw ; 16 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 540
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 480
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %.01991, i64 8
  %i.cd = load double, ptr %.01991, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 668
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !44
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 352
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !44
  %i.ci = insertelement <2 x i16> poison, i16 %i.bz, i64 0
  %i.cj = insertelement <2 x i16> %i.ci, i16 %i.cb, i64 1
  %i.ck = sitofp <2 x i16> %i.cj to <2 x double>
  %i.cl = insertelement <2 x i16> poison, i16 %i.cf, i64 0
  %i.cm = insertelement <2 x i16> %i.cl, i16 %i.ch, i64 1
  %i.cn = sitofp <2 x i16> %i.cm to <2 x double>
  %i.co = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cp, <2 x double> %i.ck)
  %i.cr = getelementptr inbounds nuw i8, ptr %.01991, i64 16
  %i.cs = load double, ptr %i.cc, align 8, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 796
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !44
  %i.cx = insertelement <2 x i16> poison, i16 %i.cu, i64 0
  %i.cy = insertelement <2 x i16> %i.cx, i16 %i.cw, i64 1
  %i.cz = sitofp <2 x i16> %i.cy to <2 x double>
  %i.da = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.db, <2 x double> %i.cq)
  %i.dd = getelementptr inbounds nuw i8, ptr %.01991, i64 24
  %i.de = load double, ptr %i.cr, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.bx, i64 924
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !44
  %i.dj = insertelement <2 x i16> poison, i16 %i.dg, i64 0
  %i.dk = insertelement <2 x i16> %i.dj, i16 %i.di, i64 1
  %i.dl = sitofp <2 x i16> %i.dk to <2 x double>
  %i.dm = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dn, <2 x double> %i.dc)
  %2 = getelementptr inbounds nuw i8, ptr %.01991, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !44
  %i.dr = sitofp i16 %i.dq to double
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bv, i64 992
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !44
  %i.du = sitofp i16 %i.dt to double
  %3 = getelementptr inbounds nuw i8, ptr %.01991, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bx, i64 156
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !44
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bv, i64 864
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !44
  %4 = getelementptr inbounds nuw i8, ptr %.01991, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bx, i64 284
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !44
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bv, i64 736
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !44
  %5 = getelementptr inbounds nuw i8, ptr %.01991, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bx, i64 412
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bv, i64 608
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %.01991, i64 64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !44
  %i.ej = sitofp i16 %i.ei to double
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bx, i64 988
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !44
  %7 = getelementptr inbounds nuw i8, ptr %.01991, i64 72
  %i.em = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  %i.en = load i16, ptr %i.em, align 2, !tbaa !44
  %i.eo = sitofp i16 %i.en to double
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bx, i64 860
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !44
  %8 = getelementptr inbounds nuw i8, ptr %.01991, i64 80
  %i.er = getelementptr inbounds nuw i8, ptr %i.bv, i64 288
  %i.es = load i16, ptr %i.er, align 2, !tbaa !44
  %i.et = sitofp i16 %i.es to double
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bx, i64 732
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !44
  %9 = getelementptr inbounds nuw i8, ptr %.01991, i64 88
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bv, i64 416
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !44
  %i.ey = sitofp i16 %i.ex to double
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bx, i64 604
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !44
  %10 = getelementptr inbounds nuw i8, ptr %.01991, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bv, i64 544
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bx, i64 476
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !44
  %i.ff = sitofp i16 %i.fe to double
  %11 = getelementptr inbounds nuw i8, ptr %.01991, i64 104
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bv, i64 672
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !44
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bx, i64 348
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !44
  %i.fk = sitofp i16 %i.fj to double
  %12 = getelementptr inbounds nuw i8, ptr %.01991, i64 112
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bv, i64 800
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !44
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bx, i64 220
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !44
  %i.fp = sitofp i16 %i.fo to double
  %i.fq = getelementptr inbounds nuw i8, ptr %.01991, i64 120 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bv, i64 928
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !44
  %i.ft = insertelement <8 x i16> poison, i16 %i.el, i64 0
  %i.fu = insertelement <8 x i16> %i.ft, i16 %i.eq, i64 1
  %i.fv = insertelement <8 x i16> %i.fu, i16 %i.ev, i64 2
  %i.fw = insertelement <8 x i16> %i.fv, i16 %i.fa, i64 3
  %i.fx = insertelement <8 x i16> %i.fw, i16 %i.fc, i64 4
  %i.fy = insertelement <8 x i16> %i.fx, i16 %i.fh, i64 5
  %i.fz = insertelement <8 x i16> %i.fy, i16 %i.fm, i64 6
  %i.ga = insertelement <8 x i16> %i.fz, i16 %i.fs, i64 7
  %i.gb = sitofp <8 x i16> %i.ga to <8 x double>
  %i.gc = fneg <8 x double> %i.gb                 ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bx, i64 92
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !44
  %i.gf = sitofp i16 %i.ge to double
  %13 = load double, ptr %i.dd, align 8, !tbaa !9
  %14 = load double, ptr %2, align 8, !tbaa !9
  %15 = load double, ptr %3, align 8, !tbaa !9
  %16 = load double, ptr %4, align 8, !tbaa !9
  %17 = load double, ptr %5, align 8, !tbaa !9
  %18 = load double, ptr %6, align 8, !tbaa !9
  %19 = load double, ptr %7, align 8, !tbaa !9
  %20 = load double, ptr %8, align 8, !tbaa !9
  %21 = load double, ptr %9, align 8, !tbaa !9
  %22 = load double, ptr %10, align 8, !tbaa !9
  %23 = load double, ptr %11, align 8, !tbaa !9
  %24 = load double, ptr %12, align 8, !tbaa !9
  %25 = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.gg = insertelement <2 x double> %25, double %i.du, i64 1
  %i.gh = insertelement <2 x double> poison, double %13, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.gi, <2 x double> %i.do)
  %i.gk = insertelement <2 x i16> poison, i16 %i.dw, i64 0
  %i.gl = insertelement <2 x i16> %i.gk, i16 %i.dy, i64 1
  %i.gm = sitofp <2 x i16> %i.gl to <2 x double>
  %26 = insertelement <2 x double> poison, double %14, i64 0
  %27 = shufflevector <2 x double> %26, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %27, <2 x double> %i.gj)
  %i.go = insertelement <2 x i16> poison, i16 %i.ea, i64 0
  %i.gp = insertelement <2 x i16> %i.go, i16 %i.ec, i64 1
  %i.gq = sitofp <2 x i16> %i.gp to <2 x double>
  %28 = insertelement <2 x double> poison, double %15, i64 0
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %29, <2 x double> %i.gn)
  %i.gs = insertelement <2 x i16> poison, i16 %i.ee, i64 0
  %i.gt = insertelement <2 x i16> %i.gs, i16 %i.eg, i64 1
  %i.gu = sitofp <2 x i16> %i.gt to <2 x double>
  %30 = insertelement <2 x double> poison, double %16, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %31, <2 x double> %i.gr)
  %i.gw = insertelement <8 x double> poison, double %i.ej, i64 0
  %i.gx = shufflevector <8 x double> %i.gw, <8 x double> %i.gc, <2 x i32> <i32 0, i32 8>
  %32 = insertelement <2 x double> poison, double %17, i64 0
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %33, <2 x double> %i.gv)
  %i.gz = insertelement <8 x double> poison, double %i.eo, i64 0
  %i.ha = shufflevector <8 x double> %i.gz, <8 x double> %i.gc, <2 x i32> <i32 0, i32 9>
  %34 = insertelement <2 x double> poison, double %18, i64 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %35, <2 x double> %i.gy)
  %i.hc = shufflevector <8 x double> %i.gc, <8 x double> poison, <2 x i32> <i32 4, i32 2> ; 2 uses
  %36 = insertelement <2 x double> %i.hc, double %i.et, i64 0
  %i.hd = insertelement <2 x double> poison, double %19, i64 0
  %37 = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %37, <2 x double> %i.hb)
  %i.hf = shufflevector <8 x double> %i.gc, <8 x double> poison, <2 x i32> <i32 5, i32 3> ; 2 uses
  %38 = insertelement <2 x double> %i.hf, double %i.ey, i64 0
  %i.hg = insertelement <2 x double> poison, double %20, i64 0
  %39 = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %39, <2 x double> %i.he)
  %40 = insertelement <2 x double> %i.hc, double %i.ff, i64 1
  %i.hi = insertelement <2 x double> poison, double %21, i64 0
  %41 = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %40, <2 x double> %41, <2 x double> %i.hh)
  %42 = insertelement <2 x double> %i.hf, double %i.fk, i64 1
  %i.hk = insertelement <2 x double> poison, double %22, i64 0
  %43 = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> %43, <2 x double> %i.hj)
  %i.hm = shufflevector <8 x double> %i.gc, <8 x double> poison, <2 x i32> <i32 6, i32 poison>
  %44 = insertelement <2 x double> %i.hm, double %i.fp, i64 1
  %i.hn = insertelement <2 x double> poison, double %23, i64 0
  %45 = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %45, <2 x double> %i.hl)
  %i.hp = shufflevector <8 x double> %i.gc, <8 x double> poison, <2 x i32> <i32 7, i32 poison>
  %46 = insertelement <2 x double> %i.hp, double %i.gf, i64 1
  %i.hq = insertelement <2 x double> poison, double %24, i64 0
  %47 = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> %47, <2 x double> %i.ho) ; 3 uses
  %i.hs = sub nuw nsw i64 30, %indvars.iv
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), i64 %i.hs
  %i.hu = extractelement <2 x double> %i.hr, i64 0
  store double %i.hu, ptr %i.ht, align 8, !tbaa !9
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @win, i64 608), i64 %indvars.iv
  %i.hw = extractelement <2 x double> %i.hr, i64 1 ; 2 uses
  store double %i.hw, ptr %i.hv, align 8, !tbaa !9
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %vector.memcheck, label %bb.b, !llvm.loop !37

vector.memcheck:                                  ; preds = %bb.b
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 478
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !44
  %i.hz = sitofp i16 %i.hy to double
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 350
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !44
  %i.ic = sitofp i16 %i.ib to double
  %i.id = getelementptr inbounds nuw i8, ptr %.01991, i64 128
  %i.ie = load double, ptr %i.fq, align 8, !tbaa !9
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.ie, double %i.hz)
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !44
  %i.ii = sitofp i16 %i.ih to double
  %i.ij = getelementptr inbounds nuw i8, ptr %.01991, i64 136
  %i.ik = load double, ptr %i.id, align 8, !tbaa !9
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.ik, double %i.if)
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 94
  %i.in = load i16, ptr %i.im, align 2, !tbaa !44
  %i.io = sitofp i16 %i.in to double
  %i.ip = getelementptr inbounds nuw i8, ptr %.01991, i64 144
  %i.iq = load double, ptr %i.ij, align 8, !tbaa !9
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.io, double %i.iq, double %i.il)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 606
  %i.it = load i16, ptr %i.is, align 2, !tbaa !44
  %i.iu = sitofp i16 %i.it to double
  %i.iv = getelementptr inbounds nuw i8, ptr %.01991, i64 152
  %i.iw = load double, ptr %i.ip, align 8, !tbaa !9
  %i.ix = fneg double %i.iu
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.ix, double %i.iw, double %i.ir)
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !44
  %i.jb = sitofp i16 %i.ja to double
  %i.jc = getelementptr inbounds nuw i8, ptr %.01991, i64 160
  %i.jd = load double, ptr %i.iv, align 8, !tbaa !9
  %i.je = fneg double %i.jb
  %i.jf = tail call double @llvm.fmuladd.f64(double %i.je, double %i.jd, double %i.iy)
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 862
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !44
  %i.ji = sitofp i16 %i.jh to double
  %i.jj = getelementptr inbounds nuw i8, ptr %.01991, i64 168
  %i.jk = load double, ptr %i.jc, align 8, !tbaa !9
  %i.jl = fneg double %i.ji
  %i.jm = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.jk, double %i.jf)
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 990
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !44
  %i.jp = sitofp i16 %i.jo to double
  %i.jq = load double, ptr %i.jj, align 8, !tbaa !9
  %i.jr = fneg double %i.jp
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jr, double %i.jq, double %i.jm) ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 256
  %bound0 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @mm, i64 3968)
  %bound1 = icmp ugt ptr %scevgep, @mm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.memcheck
  %i.jt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 616), align 8, !tbaa !9
  %i.ju = insertelement <2 x double> poison, double %i.js, i64 0
  %i.jv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 632), align 8, !tbaa !9
  %i.jw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 648), align 8, !tbaa !9
  %i.jx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 664), align 8, !tbaa !9
  %i.jy = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 680), align 8, !tbaa !9
  %i.jz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 696), align 8, !tbaa !9
  %i.ka = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 712), align 8, !tbaa !9
  %i.kb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8, !tbaa !9
  %i.kc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8, !tbaa !9
  %i.kd = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 760), align 8, !tbaa !9
  %i.ke = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 776), align 8, !tbaa !9
  %i.kf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 792), align 8, !tbaa !9
  %i.kg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 808), align 8, !tbaa !9
  %i.kh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 824), align 8, !tbaa !9
  %i.ki = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 840), align 8, !tbaa !9
  br label %scalar.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert23 = insertelement <2 x double> poison, double %i.js, i64 0
  %broadcast.splat24 = shufflevector <2 x double> %broadcast.splatinsert23, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 616), align 8
  %broadcast.splat27 = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 624), align 16
  %broadcast.splat29 = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 632), align 8
  %broadcast.splat31 = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 640), align 16
  %broadcast.splat33 = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 648), align 8
  %broadcast.splat35 = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ko = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 656), align 16
  %broadcast.splat37 = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 664), align 8
  %broadcast.splat39 = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 672), align 16
  %broadcast.splat41 = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kr = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 680), align 8
  %broadcast.splat43 = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ks = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 688), align 16
  %broadcast.splat45 = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 696), align 8
  %broadcast.splat47 = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ku = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 704), align 16
  %broadcast.splat49 = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 712), align 8
  %broadcast.splat51 = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 720), align 16
  %broadcast.splat53 = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kx = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 728), align 8
  %broadcast.splat55 = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 736), align 16
  %broadcast.splat57 = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 744), align 8
  %broadcast.splat59 = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 752), align 16
  %broadcast.splat61 = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 760), align 8
  %broadcast.splat63 = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 768), align 16
  %broadcast.splat65 = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ld = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 776), align 8
  %broadcast.splat67 = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.le = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 784), align 16
  %broadcast.splat69 = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 792), align 8
  %broadcast.splat71 = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 800), align 16
  %broadcast.splat73 = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 808), align 8
  %broadcast.splat75 = shufflevector <2 x double> %i.lh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 816), align 16
  %broadcast.splat77 = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 824), align 8
  %broadcast.splat79 = shufflevector <2 x double> %i.lj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 832), align 16
  %broadcast.splat81 = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ll = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 840), align 8
  %broadcast.splat83 = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @win, i64 848), align 16
  %broadcast.splat85 = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ln = sub i64 15, %index
  %i.lo = mul i64 %index, 248                     ; 2 uses
  %next.gep = getelementptr i8, ptr @mm, i64 %i.lo ; 31 uses
  %i.lp = getelementptr i8, ptr @mm, i64 %i.lo    ; 31 uses
  %next.gep25 = getelementptr i8, ptr %i.lp, i64 248
  %i.lq = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.lr = getelementptr i8, ptr %i.lp, i64 256
  %i.ls = load double, ptr %next.gep, align 16, !tbaa !9, !alias.scope !45
  %i.lt = load double, ptr %next.gep25, align 8, !tbaa !9, !alias.scope !45
  %i.lu = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lv = insertelement <2 x double> %i.lu, double %i.lt, i64 1
  %i.lw = fmul <2 x double> %broadcast.splat, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.ly = getelementptr i8, ptr %i.lp, i64 264
  %i.lz = load double, ptr %i.lq, align 8, !tbaa !9, !alias.scope !45
  %i.ma = load double, ptr %i.lr, align 16, !tbaa !9, !alias.scope !45
  %i.mb = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.ma, i64 1
  %i.md = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %broadcast.splat27, <2 x double> %broadcast.splat24)
  %i.me = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.mf = getelementptr i8, ptr %i.lp, i64 272
  %i.mg = load double, ptr %i.lx, align 16, !tbaa !9, !alias.scope !45
  %i.mh = load double, ptr %i.ly, align 8, !tbaa !9, !alias.scope !45
  %i.mi = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.mh, i64 1
  %i.mk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %broadcast.splat29, <2 x double> %i.lw)
  %i.ml = getelementptr inbounds nuw i8, ptr %next.gep, i64 32
  %i.mm = getelementptr i8, ptr %i.lp, i64 280
  %i.mn = load double, ptr %i.me, align 8, !tbaa !9, !alias.scope !45
  %i.mo = load double, ptr %i.mf, align 16, !tbaa !9, !alias.scope !45
  %i.mp = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.mo, i64 1
  %i.mr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %broadcast.splat31, <2 x double> %i.md)
  %i.ms = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %i.mt = getelementptr i8, ptr %i.lp, i64 288
  %i.mu = load double, ptr %i.ml, align 16, !tbaa !9, !alias.scope !45
  %i.mv = load double, ptr %i.mm, align 8, !tbaa !9, !alias.scope !45
  %i.mw = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.mv, i64 1
  %i.my = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %broadcast.splat33, <2 x double> %i.mk)
  %i.mz = getelementptr inbounds nuw i8, ptr %next.gep, i64 48
  %i.na = getelementptr i8, ptr %i.lp, i64 296
  %i.nb = load double, ptr %i.ms, align 8, !tbaa !9, !alias.scope !45
  %i.nc = load double, ptr %i.mt, align 16, !tbaa !9, !alias.scope !45
  %i.nd = insertelement <2 x double> poison, double %i.nb, i64 0
  %i.ne = insertelement <2 x double> %i.nd, double %i.nc, i64 1
  %i.nf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %broadcast.splat35, <2 x double> %i.mr)
end_hunk_0
