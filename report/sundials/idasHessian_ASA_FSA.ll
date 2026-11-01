Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idasHessian_ASA_FSA?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@resBS1:bb.a
  %i.bb = load <2 x double>, ptr %i.w, align 8, !tbaa !12
  %i.bc = insertelement <2 x double> %i.ax, double %i.an, i64 1
  %i.bd = fneg double %i.ay
  %i.be = fmul double %i.ai, %i.bd
  %i.bf = extractelement <2 x double> %i.az, i64 0 ; 2 uses
  %i.bg = fsub double %i.ba, %i.bf
  %i.bh = fmul double %i.ay, %i.au                ; 2 uses
  %i.bi = shufflevector <2 x double> %i.ax, <2 x double> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bj = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bh, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bk, <2 x double> %i.bb) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  %i.bn = fsub double %i.bm, %i.r
  %i.bo = fsub double %i.bf, %i.ba
  %i.bp = fneg double %i.bh
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.au, double %i.am)
  %i.br = fneg double %i.bq
  %i.bs = extractelement <2 x double> %i.bl, i64 1
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.br, double %i.ba, double %i.bs)
  %i.bu = fsub double %i.bt, %i.r
  %i.bv = fneg double %i.aw
  %i.bw = fmul double %i.ay, %i.bv
  %i.bx = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.by = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.ai, i64 1
  %i.ca = fmul <2 x double> %i.bx, %i.bz          ; 2 uses
  %i.cb = load <2 x double>, ptr %i.k, align 8, !tbaa !12 ; 4 uses
  %i.cc = load double, ptr %i.l, align 8, !tbaa !12
  %i.cd = extractelement <2 x double> %i.cb, i64 0
  %i.ce = fsub double %i.cc, %i.cd                ; 4 uses
  %i.cf = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cg = insertelement <2 x double> %i.cb, double %i.ce, i64 0
  %i.ch = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.be, i64 1
  %i.cj = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x double> poison, double %i.al, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.ar, i64 1
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cj, <2 x double> %i.cl) ; 2 uses
  %i.cn = shufflevector <2 x double> %i.ao, <2 x double> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.cg, <2 x double> %i.cn)
  %i.cp = fsub <2 x double> %i.co, %i.aq
  %i.cq = fadd <2 x double> %i.aj, %i.cp
  store <2 x double> %i.cq, ptr %i.ag, align 8, !tbaa !12
  %i.cr = fadd double %i.ce, %i.bn
  %i.cs = extractelement <2 x double> %i.ca, i64 0
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.aw, double %i.cs)
  %i.cu = fneg double %i.ct
  %i.cv = insertelement <2 x double> %i.cb, double %i.bo, i64 1
  %i.cw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.at, i64 1
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cv, <2 x double> %i.cx)
  %i.cz = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.bw, i64 1
  %i.db = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = insertelement <2 x double> %i.db, double %i.ce, i64 1
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.dc, <2 x double> %i.cy)
  %i.de = insertelement <4 x double> poison, double %i.au, i64 0
  %i.df = insertelement <4 x double> %i.de, double %i.cr, i64 1
  %i.dg = shufflevector <2 x double> %i.dd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x double> %i.df, <4 x double> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.di = shufflevector <2 x double> %i.cm, <2 x double> %i.av, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.dj = insertelement <4 x double> %i.di, double %i.ad, i64 3
  %i.dk = fadd <4 x double> %i.dh, %i.dj
  store <4 x double> %i.dk, ptr %i.as, align 8, !tbaa !12
  ret i32 0
}

declare i32 @IDASStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @IDASetUserDataB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetMaxNumStepsB(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @IDASetLinearSolverB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAQuadInitBS(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @rhsQBS1(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree readnone captures(none) %8) #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 3 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load ptr, ptr %3, align 8, !tbaa !21
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !12
  %i.w = fsub double %i.n, %i.l                   ; 4 uses
  %i.x = fneg double %i.d
  %i.y = fmul double %i.w, %i.x
  %i.z = load ptr, ptr %7, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 3 uses
  %i.ac = fmul double %i.f, %i.h                  ; 2 uses
  %i.ad = fmul double %i.ac, %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = fmul double %i.f, %i.v
  %i.ah = load <2 x double>, ptr %i.o, align 8, !tbaa !12 ; 2 uses
  %i.ai = load <2 x double>, ptr %i.s, align 8, !tbaa !12
  %i.aj = load double, ptr %i.t, align 8, !tbaa !12
  store double %i.y, ptr %i.ab, align 8, !tbaa !12
  store double %i.ad, ptr %i.ae, align 8, !tbaa !12
  %i.ak = fneg double %i.w
  %i.al = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.am = fsub <2 x double> %i.ah, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.h, double %i.aj, double %i.ag)
  %i.ao = insertelement <2 x double> %i.ai, double %i.w, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.an, i64 1
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.d, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ac, i64 1
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.am, <2 x double> %i.ar)
  store <2 x double> %i.au, ptr %i.af, align 8, !tbaa !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @resBS2(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) #5 {
bb.a:
  %i.a = load double, ptr %8, align 8, !tbaa !12  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = load ptr, ptr %1, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %5, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !12 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.p = load double, ptr %i.o, align 8, !tbaa !12 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.r = load double, ptr %i.q, align 8, !tbaa !12 ; 3 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load double, ptr %i.y, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %7, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.aj = load <2 x double>, ptr %i.e, align 8, !tbaa !12
  %i.ak = load double, ptr %i.u, align 8, !tbaa !12
  %i.al = load double, ptr %i.v, align 8, !tbaa !12
  %i.am = insertelement <2 x double> poison, double %i.a, i64 0
  %i.an = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ao = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fneg double %i.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.as = fsub double %i.p, %i.n
  %i.at = tail call double @llvm.fmuladd.f64(double %i.a, double %i.as, double %i.x)
  %i.au = fsub double %i.n, %i.p
  %i.av = fneg double %i.r
  %i.aw = load <2 x double>, ptr %i.ae, align 8, !tbaa !12
  %i.ax = fsub double %i.at, %i.r
  %i.ay = load <2 x double>, ptr %i.i, align 8, !tbaa !12 ; 4 uses
  %i.az = load double, ptr %i.j, align 8, !tbaa !12
  %i.ba = load <2 x double>, ptr %i.af, align 8, !tbaa !12 ; 3 uses
  %i.bb = extractelement <2 x double> %i.ay, i64 0
  %i.bc = fsub double %i.az, %i.bb                ; 4 uses
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = insertelement <2 x double> %i.ay, double %i.bc, i64 0
  %i.bf = load <2 x double>, ptr %i.f, align 8, !tbaa !12 ; 7 uses
  %i.bg = insertelement <2 x double> %i.bd, double %i.n, i64 1
  %i.bh = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.z, i64 1
  %i.bj = extractelement <2 x double> %i.bf, i64 1
  %i.bk = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bl = load <2 x double>, ptr %i.b, align 8, !tbaa !12 ; 5 uses
  %i.bm = fmul <2 x double> %i.bl, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  %i.bn = extractelement <2 x double> %i.bl, i64 0 ; 2 uses
  %i.bo = fneg double %i.bn
  %shift = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.bf ; 2 uses
  %i.bp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bq = fneg <2 x double> %foldExtExtBinop
  %i.br = shufflevector <2 x double> %i.am, <2 x double> %i.bq, <2 x i32> <i32 0, i32 2>
  %foldExtExtBinop85 = fmul <2 x double> %i.bl, %i.bf
  %i.bs = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bu = fmul <2 x double> %i.bf, %i.bt          ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 1
  %i.bw = fneg double %i.bv
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bc, double %i.al)
  %i.by = insertelement <2 x double> %i.an, double %i.bx, i64 1
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.be, <2 x double> %i.by)
  %i.ca = fsub <2 x double> %i.bz, %i.ap
  %i.cb = fadd <2 x double> %i.aj, %i.ca
  store <2 x double> %i.cb, ptr %i.ai, align 8, !tbaa !12
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bg, <2 x double> %i.bi) ; 2 uses
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bj, double %i.bp)
  %i.ce = fneg double %i.cd
  %i.cf = extractelement <2 x double> %i.cc, i64 1
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.p, double %i.cf)
  %i.ch = fsub double %i.cg, %i.r
  %i.ci = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bk, <2 x double> %i.ci) ; 2 uses
  %i.ck = shufflevector <2 x double> %foldExtExtBinop85, <2 x double> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.cl = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = insertelement <2 x double> %i.cl, double %i.au, i64 0
  %i.cn = insertelement <2 x double> poison, double %i.av, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.ch, i64 1
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cm, <2 x double> %i.co)
  %i.cq = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <2 x double> %i.bf, <2 x double> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.ba, <2 x double> %i.cr)
  %i.ct = fneg <2 x double> %i.cs
  %i.cu = insertelement <2 x double> %i.ay, double %i.bc, i64 0
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cu, <2 x double> %i.cp)
  %i.cw = shufflevector <2 x double> %i.bf, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cx = insertelement <4 x double> %i.cw, double %i.ax, i64 1
  %i.cy = shufflevector <2 x double> %i.cv, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x double> %i.cx, <4 x double> %i.cy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.da = shufflevector <2 x double> %i.aw, <2 x double> %i.cc, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %i.db = shufflevector <2 x double> %i.ba, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x double> %i.da, <4 x double> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dd = fadd <4 x double> %i.cz, %i.dc
  store <4 x double> %i.dd, ptr %i.ar, align 8, !tbaa !12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @rhsQBS2(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree readnone captures(none) %8) #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !12 ; 2 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 3 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !12
  %i.x = fsub double %i.n, %i.l                   ; 4 uses
  %i.y = fneg double %i.d
  %i.z = fmul double %i.x, %i.y
  %i.aa = load ptr, ptr %7, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 3 uses
  %i.ad = fmul double %i.f, %i.h                  ; 2 uses
  %i.ae = fmul double %i.ad, %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = fmul double %i.f, %i.w
  %i.ai = load <2 x double>, ptr %i.o, align 8, !tbaa !12 ; 2 uses
  %i.aj = load <2 x double>, ptr %i.t, align 8, !tbaa !12
  %i.ak = load double, ptr %i.u, align 8, !tbaa !12
  store double %i.z, ptr %i.ac, align 8, !tbaa !12
  store double %i.ae, ptr %i.af, align 8, !tbaa !12
  %i.al = fneg double %i.x
  %i.am = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.an = fsub <2 x double> %i.ai, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ak, double %i.ah)
  %i.ap = insertelement <2 x double> %i.aj, double %i.x, i64 1
  %i.aq = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ao, i64 1
  %i.as = fmul <2 x double> %i.ap, %i.ar
  %i.at = insertelement <2 x double> poison, double %i.d, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.ad, i64 1
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.an, <2 x double> %i.as)
  store <2 x double> %i.av, ptr %i.ag, align 8, !tbaa !12
  ret i32 0
}

declare i32 @IDASolveB(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDAGetB(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetQuadB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IDAFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @IDASolve(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @IDAReInit(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAQuadReInit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!14 = !{!"_generic_N_Vector", !9, i64 0, !13, i64 8, !10, i64 16}
!15 = !{!14, !9, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"p1 double", !9, i64 0}
!18 = !{!"_N_VectorContent_Serial", !16, i64 0, !6, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 16}
!20 = !{!"p1 _ZTS17_generic_N_Vector", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!9, !9, i64 0}
!24 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!6, !6, i64 0}
end_hunk_0
