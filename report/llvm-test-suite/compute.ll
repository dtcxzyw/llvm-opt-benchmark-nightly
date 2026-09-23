Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/compute?download=true
inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@P = internal unnamed_addr global double 1.000000e+00, align 8
@Q = internal unnamed_addr global double 1.000000e+00, align 8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Compute_Tree(ptr nofree noundef captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.e = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.f = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.g = tail call { double, double } @Compute_Lateral(ptr noundef %i.d, double noundef %i.e, double noundef %i.f, double noundef %i.e, double noundef %i.f) ; 2 uses
  %i.h = extractvalue { double, double } %i.g, 0
  %i.i = extractvalue { double, double } %i.g, 1
  %i.j = fadd double %i.h, 0.000000e+00
  %i.k = fadd double %i.i, 0.000000e+00
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.o = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.p = tail call { double, double } @Compute_Lateral(ptr noundef %i.m, double noundef %i.n, double noundef %i.o, double noundef %i.n, double noundef %i.o) ; 2 uses
  %i.q = extractvalue { double, double } %i.p, 0
  %i.r = extractvalue { double, double } %i.p, 1
  %i.s = fadd double %i.j, %i.q
  %i.t = fadd double %i.k, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.w = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.x = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.y = tail call { double, double } @Compute_Lateral(ptr noundef %i.v, double noundef %i.w, double noundef %i.x, double noundef %i.w, double noundef %i.x) ; 2 uses
  %i.z = extractvalue { double, double } %i.y, 0
  %i.aa = extractvalue { double, double } %i.y, 1
  %i.ab = fadd double %i.s, %i.z
  %i.ac = fadd double %i.t, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.af = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.ag = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.ah = tail call { double, double } @Compute_Lateral(ptr noundef %i.ae, double noundef %i.af, double noundef %i.ag, double noundef %i.af, double noundef %i.ag) ; 2 uses
  %i.ai = extractvalue { double, double } %i.ah, 0
  %i.aj = extractvalue { double, double } %i.ah, 1
  %i.ak = fadd double %i.ab, %i.ai
  %i.al = fadd double %i.ac, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ao = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.ap = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.aq = tail call { double, double } @Compute_Lateral(ptr noundef %i.an, double noundef %i.ao, double noundef %i.ap, double noundef %i.ao, double noundef %i.ap) ; 2 uses
  %i.ar = extractvalue { double, double } %i.aq, 0
  %i.as = extractvalue { double, double } %i.aq, 1
  %i.at = fadd double %i.ak, %i.ar
  %i.au = fadd double %i.al, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.ax = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.ay = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.az = tail call { double, double } @Compute_Lateral(ptr noundef %i.aw, double noundef %i.ax, double noundef %i.ay, double noundef %i.ax, double noundef %i.ay) ; 2 uses
  %i.ba = extractvalue { double, double } %i.az, 0
  %i.bb = extractvalue { double, double } %i.az, 1
  %i.bc = fadd double %i.at, %i.ba
  %i.bd = fadd double %i.au, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17
  %i.bg = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.bh = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.bi = tail call { double, double } @Compute_Lateral(ptr noundef %i.bf, double noundef %i.bg, double noundef %i.bh, double noundef %i.bg, double noundef %i.bh) ; 2 uses
  %i.bj = extractvalue { double, double } %i.bi, 0
  %i.bk = extractvalue { double, double } %i.bi, 1
  %i.bl = fadd double %i.bc, %i.bj
  %i.bm = fadd double %i.bd, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !17
  %i.bp = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.bq = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.br = tail call { double, double } @Compute_Lateral(ptr noundef %i.bo, double noundef %i.bp, double noundef %i.bq, double noundef %i.bp, double noundef %i.bq) ; 2 uses
  %i.bs = extractvalue { double, double } %i.br, 0
  %i.bt = extractvalue { double, double } %i.br, 1
  %i.bu = fadd double %i.bl, %i.bs
  %i.bv = fadd double %i.bm, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !17
  %i.by = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.bz = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.ca = tail call { double, double } @Compute_Lateral(ptr noundef %i.bx, double noundef %i.by, double noundef %i.bz, double noundef %i.by, double noundef %i.bz) ; 2 uses
  %i.cb = extractvalue { double, double } %i.ca, 0
  %i.cc = extractvalue { double, double } %i.ca, 1
  %i.cd = fadd double %i.bu, %i.cb
  %i.ce = fadd double %i.bv, %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !17
  %i.ch = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.ci = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.cj = tail call { double, double } @Compute_Lateral(ptr noundef %i.cg, double noundef %i.ch, double noundef %i.ci, double noundef %i.ch, double noundef %i.ci) ; 2 uses
  %i.ck = extractvalue { double, double } %i.cj, 0
  %i.cl = extractvalue { double, double } %i.cj, 1
  %i.cm = fadd double %i.cd, %i.ck
  %i.cn = fadd double %i.ce, %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17
  %i.cq = load double, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.cr = load double, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %i.cs = tail call { double, double } @Compute_Lateral(ptr noundef %i.cp, double noundef %i.cq, double noundef %i.cr, double noundef %i.cq, double noundef %i.cr) ; 2 uses
  %i.ct = extractvalue { double, double } %i.cs, 0
  %i.cu = extractvalue { double, double } %i.cs, 1
  %i.cv = fadd double %i.cm, %i.ct
  %i.cw = fadd double %i.cn, %i.cu
  store double %i.cv, ptr %0, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.cw, ptr %i.cx, align 8, !tbaa !22
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @Compute_Lateral(ptr nofree noundef captures(none) initializes((0, 16)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %i.d = insertelement <2 x double> poison, double %1, i64 0
  %i.e = insertelement <2 x double> %i.d, double %2, i64 1 ; 2 uses
  %i.f = fmul <2 x double> %i.e, %i.c
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.h = fdiv <2 x double> %i.g, %i.c
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !12
  %i.j = fadd <2 x double> %i.e, %i.h
  %i.k = insertelement <2 x double> poison, double %3, i64 0
  %i.l = insertelement <2 x double> %i.k, double %4, i64 1
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.j, <2 x double> %i.l) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = extractelement <2 x double> %i.m, i64 0  ; 2 uses
  %i.q = extractelement <2 x double> %i.m, i64 1  ; 2 uses
  %i.r = tail call { double, double } @Compute_Lateral(ptr noundef nonnull %i.o, double noundef %1, double noundef %2, double noundef %i.p, double noundef %i.q) ; 2 uses
  %i.s = extractvalue { double, double } %i.r, 0
  %i.t = extractvalue { double, double } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = tail call { double, double } @Compute_Branch(ptr noundef %i.v, double noundef %1, double noundef %2, double noundef %i.p, double noundef %i.q) ; 2 uses
  %i.x = extractvalue { double, double } %i.w, 0
  %i.y = extractvalue { double, double } %i.w, 1
  %i.z = fadd double %i.s, %i.x
  %i.aa = fadd double %i.t, %i.y
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = extractelement <2 x double> %i.m, i64 0
  %i.ae = extractelement <2 x double> %i.m, i64 1
  %i.af = tail call { double, double } @Compute_Branch(ptr noundef %i.ac, double noundef %1, double noundef %2, double noundef %i.ad, double noundef %i.ae) ; 2 uses
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink86 = phi double [ %i.ag, %bb.c ], [ %i.z, %bb.b ] ; 3 uses
  %.sink = phi double [ %i.ah, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %i.ai = fneg double %.sink86                    ; 2 uses
  %i.aj = load <2 x double>, ptr %i.b, align 8, !tbaa !12 ; 4 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 1 ; 4 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = extractelement <2 x double> %i.aj, i64 0 ; 6 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.al) ; 2 uses
  %i.ao = fmul <2 x double> %i.aj, splat (double 2.000000e+00) ; 2 uses
  %i.ap = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x double> %i.ap, %i.ao          ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 1
  %i.as = fmul double %i.ar, %i.ai
  %i.at = extractelement <2 x double> %i.aq, i64 0
  %i.au = tail call double @llvm.fmuladd.f64(double %i.at, double %.sink, double %i.as)
  %i.av = fsub double %i.au, %i.am                ; 3 uses
  %i.aw = fmul double %i.ak, %i.ai
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.am, double %.sink, double %i.aw) ; 2 uses
  %i.ay = fmul double %i.am, %.sink86
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.ay)
  %i.ba = fneg double %i.av
  %i.bb = fmul double %i.an, 4.000000e+00
  %i.bc = fneg double %i.az
  %i.bd = fmul double %i.bb, %i.bc
  %i.be = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.bd)
  %i.bf = tail call double @sqrt(double noundef %i.be) #10, !tbaa !7
  %i.bg = fsub double %i.ba, %i.bf
  %i.bh = fmul double %i.an, 2.000000e+00
  %i.bi = fdiv double %i.bg, %i.bh                ; 3 uses
  %i.bj = fsub double %i.bi, %.sink86
  %i.bk = fmul double %i.ak, %i.bj
  %i.bl = fdiv double %i.bk, %i.am
  %i.bm = fadd double %.sink, %i.bl               ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1 ; 2 uses
  %i.bp = fmul <2 x double> %i.ao, %i.bo          ; 3 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = fsub double 1.000000e+00, %i.bq
  %i.bs = extractelement <2 x double> %i.bp, i64 1
  %i.bt = fsub double %i.br, %i.bs
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x double> %i.bp, %i.bv
  %5 = shufflevector <2 x double> %i.bo, <2 x double> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %5, ptr %0, align 8, !tbaa !12
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bi, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bm, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @Compute_Branch(ptr nofree noundef captures(none) initializes((0, 16)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %i.d = insertelement <2 x double> poison, double %1, i64 0
  %i.e = insertelement <2 x double> %i.d, double %2, i64 1 ; 2 uses
  %i.f = fmul <2 x double> %i.e, %i.c
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.h = fdiv <2 x double> %i.g, %i.c
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !12
  %i.j = fadd <2 x double> %i.e, %i.h
  %i.k = insertelement <2 x double> poison, double %3, i64 0
  %i.l = insertelement <2 x double> %i.k, double %4, i64 1
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.j, <2 x double> %i.l) ; 2 uses
  %i.n = extractelement <2 x double> %i.m, i64 1  ; 13 uses
  %i.o = extractelement <2 x double> %i.m, i64 0  ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.q, null                  ; 3 uses
  br i1 %.not, label %Compute_Leaf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call { double, double } @Compute_Branch(ptr noundef nonnull %i.q, double noundef %1, double noundef %2, double noundef %i.o, double noundef %i.n) ; 2 uses
  %i.s = extractvalue { double, double } %i.r, 0
  %i.t = extractvalue { double, double } %i.r, 1
  br label %Compute_Leaf.exit

Compute_Leaf.exit:                                ; preds = %bb.b, %bb.a
  %.sroa.44.0 = phi double [ %i.t, %bb.b ], [ undef, %bb.a ]
  %.sroa.03.0 = phi double [ %i.s, %bb.b ], [ undef, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 3 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !15
  store double %i.w, ptr @P, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !16
  store double %i.y, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.z = load double, ptr @P, align 8, !tbaa !12  ; 2 uses
  %i.aa = fcmp olt double %i.z, 0.000000e+00      ; 2 uses
  %.pre.i = load double, ptr @Q, align 8
  %i.ab = select i1 %i.aa, double 0.000000e+00, double %.pre.i ; 2 uses
  %i.ac = select i1 %i.aa, double 0.000000e+00, double %i.z ; 2 uses
  store double %i.ac, ptr %i.v, align 8, !tbaa !15
  store double %i.ab, ptr %i.x, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 3 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !15
  store double %i.af, ptr @P, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !16
  store double %i.ah, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.ai = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.aj = fcmp olt double %i.ai, 0.000000e+00     ; 2 uses
  %.pre.i.1 = load double, ptr @Q, align 8
  %i.ak = select i1 %i.aj, double 0.000000e+00, double %.pre.i.1 ; 2 uses
  %i.al = select i1 %i.aj, double 0.000000e+00, double %i.ai ; 2 uses
  store double %i.al, ptr %i.ae, align 8, !tbaa !15
  store double %i.ak, ptr %i.ag, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29 ; 3 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !15
  store double %i.ao, ptr @P, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !16
  store double %i.aq, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.ar = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00     ; 2 uses
  %.pre.i.2 = load double, ptr @Q, align 8
  %i.at = select i1 %i.as, double 0.000000e+00, double %.pre.i.2 ; 2 uses
  %i.au = select i1 %i.as, double 0.000000e+00, double %i.ar ; 2 uses
  store double %i.au, ptr %i.an, align 8, !tbaa !15
  store double %i.at, ptr %i.ap, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 3 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !15
  store double %i.ax, ptr @P, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !16
  store double %i.az, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.ba = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.bb = fcmp olt double %i.ba, 0.000000e+00     ; 2 uses
  %.pre.i.3 = load double, ptr @Q, align 8
  %i.bc = select i1 %i.bb, double 0.000000e+00, double %.pre.i.3 ; 2 uses
  %i.bd = select i1 %i.bb, double 0.000000e+00, double %i.ba ; 2 uses
  store double %i.bd, ptr %i.aw, align 8, !tbaa !15
  store double %i.bc, ptr %i.ay, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !29 ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !15
  store double %i.bg, ptr @P, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !16
  store double %i.bi, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.bj = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.bk = fcmp olt double %i.bj, 0.000000e+00     ; 2 uses
  %.pre.i.4 = load double, ptr @Q, align 8
  %i.bl = select i1 %i.bk, double 0.000000e+00, double %.pre.i.4 ; 2 uses
  %i.bm = select i1 %i.bk, double 0.000000e+00, double %i.bj ; 2 uses
  store double %i.bm, ptr %i.bf, align 8, !tbaa !15
  store double %i.bl, ptr %i.bh, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !29 ; 3 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !15
  store double %i.bp, ptr @P, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !16
  store double %i.br, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.bs = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.bt = fcmp olt double %i.bs, 0.000000e+00     ; 2 uses
  %.pre.i.5 = load double, ptr @Q, align 8
  %i.bu = select i1 %i.bt, double 0.000000e+00, double %.pre.i.5 ; 2 uses
  %i.bv = select i1 %i.bt, double 0.000000e+00, double %i.bs ; 2 uses
  store double %i.bv, ptr %i.bo, align 8, !tbaa !15
  store double %i.bu, ptr %i.bq, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29 ; 3 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !15
  store double %i.by, ptr @P, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !16
  store double %i.ca, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.cb = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.cc = fcmp olt double %i.cb, 0.000000e+00     ; 2 uses
  %.pre.i.6 = load double, ptr @Q, align 8
  %i.cd = select i1 %i.cc, double 0.000000e+00, double %.pre.i.6 ; 2 uses
  %i.ce = select i1 %i.cc, double 0.000000e+00, double %i.cb ; 2 uses
  store double %i.ce, ptr %i.bx, align 8, !tbaa !15
  store double %i.cd, ptr %i.bz, align 8, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !29 ; 3 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !15
  store double %i.ch, ptr @P, align 8, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !16
  store double %i.cj, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.ck = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.cl = fcmp olt double %i.ck, 0.000000e+00     ; 2 uses
  %.pre.i.7 = load double, ptr @Q, align 8
  %i.cm = select i1 %i.cl, double 0.000000e+00, double %.pre.i.7 ; 2 uses
  %i.cn = select i1 %i.cl, double 0.000000e+00, double %i.ck ; 2 uses
  store double %i.cn, ptr %i.cg, align 8, !tbaa !15
  store double %i.cm, ptr %i.ci, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !29 ; 3 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !15
  store double %i.cq, ptr @P, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !16
  store double %i.cs, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.ct = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.cu = fcmp olt double %i.ct, 0.000000e+00     ; 2 uses
  %.pre.i.8 = load double, ptr @Q, align 8
  %i.cv = select i1 %i.cu, double 0.000000e+00, double %.pre.i.8 ; 2 uses
  %i.cw = select i1 %i.cu, double 0.000000e+00, double %i.ct ; 2 uses
  store double %i.cw, ptr %i.cp, align 8, !tbaa !15
  store double %i.cv, ptr %i.cr, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !29 ; 3 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !15
  store double %i.cz, ptr @P, align 8, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !16
  store double %i.db, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.dc = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.dd = fcmp olt double %i.dc, 0.000000e+00     ; 2 uses
  %.pre.i.9 = load double, ptr @Q, align 8
  %i.de = select i1 %i.dd, double 0.000000e+00, double %.pre.i.9 ; 2 uses
  %i.df = select i1 %i.dd, double 0.000000e+00, double %i.dc ; 2 uses
  store double %i.df, ptr %i.cy, align 8, !tbaa !15
  store double %i.de, ptr %i.da, align 8, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !29 ; 3 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !15
  store double %i.di, ptr @P, align 8, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !16
  store double %i.dk, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.dl = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.dm = fcmp olt double %i.dl, 0.000000e+00     ; 2 uses
  %.pre.i.10 = load double, ptr @Q, align 8
  %i.dn = select i1 %i.dm, double 0.000000e+00, double %.pre.i.10 ; 2 uses
  %i.do = select i1 %i.dm, double 0.000000e+00, double %i.dl ; 2 uses
  store double %i.do, ptr %i.dh, align 8, !tbaa !15
  store double %i.dn, ptr %i.dj, align 8, !tbaa !16
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !29 ; 3 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !15
  store double %i.dr, ptr @P, align 8, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !16
  store double %i.dt, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %i.o, double noundef %i.n)
  %i.du = load double, ptr @P, align 8, !tbaa !12 ; 2 uses
  %i.dv = fcmp olt double %i.du, 0.000000e+00
  br i1 %i.dv, label %bb.c, label %._crit_edge.i.11

._crit_edge.i.11:                                 ; preds = %Compute_Leaf.exit
  %.pre.i.11 = load double, ptr @Q, align 8, !tbaa !12
  br label %Compute_Leaf.exit.11

bb.c:                                             ; preds = %Compute_Leaf.exit
  store double 0.000000e+00, ptr @P, align 8, !tbaa !12
  store double 0.000000e+00, ptr @Q, align 8, !tbaa !12
  br label %Compute_Leaf.exit.11

Compute_Leaf.exit.11:                             ; preds = %bb.c, %._crit_edge.i.11
  %i.dw = phi double [ 0.000000e+00, %bb.c ], [ %.pre.i.11, %._crit_edge.i.11 ] ; 2 uses
  %i.dx = phi double [ 0.000000e+00, %bb.c ], [ %i.du, %._crit_edge.i.11 ] ; 2 uses
  %i.dy = fadd double %i.ab, 0.000000e+00
  %i.dz = fadd double %i.dy, %i.ak
  %i.ea = fadd double %i.dz, %i.at
  %i.eb = fadd double %i.ea, %i.bc
  %i.ec = fadd double %i.eb, %i.bl
  %i.ed = fadd double %i.ec, %i.bu
  %i.ee = fadd double %i.ed, %i.cd
  %i.ef = fadd double %i.ee, %i.cm
  %i.eg = fadd double %i.ef, %i.cv
  %i.eh = fadd double %i.eg, %i.de
  %i.ei = fadd double %i.eh, %i.dn
  %i.ej = fadd double %i.ac, 0.000000e+00
  %i.ek = fadd double %i.ej, %i.al
  %i.el = fadd double %i.ek, %i.au
  %i.em = fadd double %i.el, %i.bd
  %i.en = fadd double %i.em, %i.bm
  %i.eo = fadd double %i.en, %i.bv
  %i.ep = fadd double %i.eo, %i.ce
  %i.eq = fadd double %i.ep, %i.cn
  %i.er = fadd double %i.eq, %i.cw
  %i.es = fadd double %i.er, %i.df
  %i.et = fadd double %i.es, %i.do
  store double %i.dx, ptr %i.dq, align 8, !tbaa !15
  store double %i.dw, ptr %i.ds, align 8, !tbaa !16
  %i.eu = fadd double %i.et, %i.dx                ; 2 uses
  %i.ev = fadd double %i.ei, %i.dw                ; 2 uses
  %i.ew = fadd double %.sroa.03.0, %i.eu
  %i.ex = fadd double %.sroa.44.0, %i.ev
  %.sink94 = select i1 %.not, double %i.eu, double %i.ew ; 3 uses
  %.sink = select i1 %.not, double %i.ev, double %i.ex ; 3 uses
  %i.ey = fneg double %.sink94                    ; 2 uses
  %i.ez = load <2 x double>, ptr %i.b, align 8, !tbaa !12 ; 4 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 1 ; 4 uses
  %i.fb = fmul double %i.fa, %i.fa
  %i.fc = extractelement <2 x double> %i.ez, i64 0 ; 6 uses
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fc, double %i.fb) ; 2 uses
  %i.fe = fmul <2 x double> %i.ez, splat (double 2.000000e+00) ; 2 uses
  %i.ff = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = fmul <2 x double> %i.ff, %i.fe          ; 2 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 1
  %i.fi = fmul double %i.fh, %i.ey
  %i.fj = extractelement <2 x double> %i.fg, i64 0
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fj, double %.sink, double %i.fi)
  %i.fl = fsub double %i.fk, %i.fc                ; 3 uses
  %i.fm = fmul double %i.fa, %i.ey
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fc, double %.sink, double %i.fm) ; 2 uses
  %i.fo = fmul double %i.fc, %.sink94
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fo)
  %i.fq = fneg double %i.fl
  %i.fr = fmul double %i.fd, 4.000000e+00
  %i.fs = fneg double %i.fp
  %i.ft = fmul double %i.fr, %i.fs
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fl, double %i.ft)
  %i.fv = tail call double @sqrt(double noundef %i.fu) #10, !tbaa !7
  %i.fw = fsub double %i.fq, %i.fv
  %i.fx = fmul double %i.fd, 2.000000e+00
  %i.fy = fdiv double %i.fw, %i.fx                ; 3 uses
  %i.fz = fsub double %i.fy, %.sink94
  %i.ga = fmul double %i.fa, %i.fz
  %i.gb = fdiv double %i.ga, %i.fc
  %i.gc = fadd double %.sink, %i.gb               ; 2 uses
  %i.gd = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.gc, i64 1 ; 2 uses
  %i.gf = fmul <2 x double> %i.fe, %i.ge          ; 3 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  %i.gh = fsub double 1.000000e+00, %i.gg
  %i.gi = extractelement <2 x double> %i.gf, i64 1
  %i.gj = fsub double %i.gh, %i.gi
  %i.gk = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fdiv <2 x double> %i.gf, %i.gl
  %5 = shufflevector <2 x double> %i.ge, <2 x double> %i.gm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %5, ptr %0, align 8, !tbaa !12
  %.fca.0.insert = insertvalue { double, double } poison, double %i.fy, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.gc, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @Compute_Leaf(ptr nofree noundef captures(none) %0, double noundef %1, double noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !15
  store double %i.a, ptr @P, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !16
  store double %i.c, ptr @Q, align 8, !tbaa !12
  tail call void @optimize_node(double noundef %1, double noundef %2)
  %i.d = load double, ptr @P, align 8, !tbaa !12  ; 2 uses
  %i.e = fcmp olt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load double, ptr @Q, align 8, !tbaa !12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr @P, align 8, !tbaa !12
  store double 0.000000e+00, ptr @Q, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.f = phi double [ 0.000000e+00, %bb.b ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.g = phi double [ 0.000000e+00, %bb.b ], [ %i.d, %._crit_edge ] ; 2 uses
  store double %i.g, ptr %0, align 8, !tbaa !15
  store double %i.f, ptr %i.b, align 8, !tbaa !16
  %.fca.0.insert = insertvalue { double, double } poison, double %i.g, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.f, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @optimize_node(double noundef %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  %P.promoted = load double, ptr @P, align 8, !tbaa !12
  %Q.promoted = load double, ptr @Q, align 8, !tbaa !12
  %i.a = insertelement <2 x double> poison, double %P.promoted, i64 0
  %i.b = insertelement <2 x double> %i.a, double %Q.promoted, i64 1
  %i.c = insertelement <2 x double> poison, double %0, i64 0
  %i.d = insertelement <2 x double> %i.c, double %1, i64 1 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.e = phi <2 x double> [ %i.b, %bb.a ], [ %i.dw, %.critedge.backedge ] ; 4 uses
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = extractelement <2 x double> %i.e, i64 1
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double -5.000000e+00, double %i.f) ; 2 uses
  %i.i = tail call double @llvm.fabs.f64(double %i.h)
  %i.j = fcmp ogt double %i.i, f0x3EB0C6F7A0B5ED8D
  %i.k = fdiv double %i.h, f0xC01465655F122FF6
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.e)
  %i.o = select i1 %i.j, <2 x double> %i.n, <2 x double> %i.e ; 6 uses
  %foldExtExtBinop = fmul <2 x double> %i.o, %i.o
  %i.p = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.q = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.p)
  %i.s = fadd double %i.r, -8.000000e-01          ; 2 uses
  %i.t = fcmp ogt double %i.s, f0x3EB0C6F7A0B5ED8D
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.critedge
  %i.u = fmul <2 x double> %i.o, splat (double 2.000000e+00) ; 3 uses
  %i.v = extractelement <2 x double> %i.u, i64 0  ; 2 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double 0.000000e+00)
  %i.x = extractelement <2 x double> %i.u, i64 1  ; 2 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.w)
  %sqrt59 = tail call double @llvm.sqrt.f64(double %i.y) ; 2 uses
  %i.z = insertelement <2 x double> poison, double %sqrt59, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %i.u, %i.aa           ; 3 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x3FC91A556151761C, double 0.000000e+00)
  %i.ae = extractelement <2 x double> %i.ab, i64 1
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double f0xBFEF60EAB9A5D3A3, double %i.ad) ; 2 uses
  %i.ag = fneg double %i.af                       ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.ab) ; 4 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 1 ; 2 uses
  %i.al = insertelement <2 x double> %i.aj, double %i.ag, i64 1
  %i.am = insertelement <2 x double> %i.aj, double %i.af, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.am, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.ao)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ap)
  %i.aq = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x double> %i.aj, %i.ar
  %i.at = extractelement <2 x double> %i.an, i64 1 ; 2 uses
  %i.au = fcmp olt double %i.at, 0.000000e+00
  br i1 %i.au, label %make_orthogonal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = tail call double @sqrt(double noundef %i.at) #10, !tbaa !7
  br label %make_orthogonal.exit

make_orthogonal.exit:                             ; preds = %bb.b, %bb.c
  %.031.i = phi double [ %i.av, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.aw = fmul double %sqrt59, %.031.i
  %i.ax = fneg double %i.s
  %i.ay = fdiv double %i.ax, %i.aw
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.as, <2 x double> %i.o)
  br label %bb.d

bb.d:                                             ; preds = %make_orthogonal.exit, %.critedge
  %i.bc = phi <2 x double> [ %i.bb, %make_orthogonal.exit ], [ %i.o, %.critedge ] ; 6 uses
  %i.bd = fadd <2 x double> %i.bc, splat (double 1.000000e+00)
  %i.be = fdiv <2 x double> splat (double 1.000000e+00), %i.bd ; 3 uses
  %i.bf = fsub <2 x double> %i.be, %i.d           ; 4 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 1 ; 4 uses
  %i.bh = fmul double %i.bg, %i.bg
  %i.bi = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bh, i64 1
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bi, <2 x double> %i.bj) ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bg, double %i.bl)
  %sqrt60 = tail call double @llvm.sqrt.f64(double %i.bm) ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %sqrt60, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x double> %i.bf, %i.bo          ; 3 uses
  %i.bq = extractelement <2 x double> %i.bk, i64 1
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bq)
  %i.br = fneg <2 x double> %i.be
  %i.bs = fmul <2 x double> %i.be, %i.br
  %i.bt = fmul <2 x double> %i.bs, %i.bf
  %i.bu = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x double> %i.bt, %i.bv          ; 2 uses
  %i.bx = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = insertelement <2 x double> %i.bw, double f0x3FC91A556151761C, i64 1
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.by, <2 x double> zeroinitializer)
  %i.ca = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = shufflevector <2 x double> %i.bw, <2 x double> <double poison, double f0xBFEF60EAB9A5D3A3>, <2 x i32> <i32 1, i32 3>
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cb, <2 x double> %i.bz) ; 3 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = tail call double @llvm.fabs.f64(double %i.cd)
  %i.cf = fdiv double %sqrt60, %i.ce
  %i.cg = extractelement <2 x double> %i.cc, i64 1
  %i.ch = fneg double %i.cg                       ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, <2 x double> %i.bp) ; 4 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 1 ; 2 uses
  %i.cm = insertelement <2 x double> %i.ck, double %i.ch, i64 1
  %i.cn = shufflevector <2 x double> %i.ck, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cn, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double %i.cp)
  %sqrt61 = tail call double @llvm.sqrt.f64(double %i.cq)
  %i.cr = insertelement <2 x double> poison, double %sqrt61, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fdiv <2 x double> %i.ck, %i.cs          ; 3 uses
  %i.cu = extractelement <2 x double> %i.co, i64 1 ; 2 uses
  %i.cv = fcmp olt double %i.cu, 0.000000e+00
  br i1 %i.cv, label %make_orthogonal.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cw = tail call double @sqrt(double noundef %i.cu) #10, !tbaa !7
  br label %make_orthogonal.exit50

make_orthogonal.exit50:                           ; preds = %bb.d, %bb.e
  %.031.i49 = phi double [ %i.cw, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.cx = fmul <2 x double> %i.bc, splat (double 2.000000e+00) ; 3 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 0 ; 2 uses
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cy, double 0.000000e+00)
  %i.da = extractelement <2 x double> %i.cx, i64 1 ; 2 uses
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.da, double %i.cz)
  %sqrt62 = tail call double @llvm.sqrt.f64(double %i.db)
  %i.dc = insertelement <2 x double> poison, double %sqrt62, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x double> %i.cx, %i.dd          ; 2 uses
  %i.df = extractelement <2 x double> %i.ct, i64 0
  %i.dg = extractelement <2 x double> %i.de, i64 0
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dg, double 0.000000e+00)
  %i.di = extractelement <2 x double> %i.ct, i64 1
  %i.dj = extractelement <2 x double> %i.de, i64 1
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dj, double %i.dh) ; 2 uses
  %i.dl = fmul double %i.cf, %.031.i49            ; 3 uses
  %i.dm = fcmp ogt double %i.dk, 0.000000e+00
  br i1 %i.dm, label %bb.f, label %bb.h

bb.f:                                             ; preds = %make_orthogonal.exit50
  %foldExtExtBinop87 = fmul <2 x double> %i.bc, %i.bc
  %i.dn = extractelement <2 x double> %foldExtExtBinop87, i64 1
  %i.do = extractelement <2 x double> %i.bc, i64 0 ; 2 uses
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.do, double %i.do, double %i.dn)
  %i.dq = fadd double %i.dp, -8.000000e-01
  %i.dr = fneg double %i.dq
  %i.ds = fdiv double %i.dr, %i.dk                ; 2 uses
  %i.dt = fcmp ogt double %i.dl, %i.ds
  br i1 %i.dt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %make_orthogonal.exit50
  %.044 = phi double [ %i.ds, %bb.g ], [ %i.dl, %bb.f ], [ %i.dl, %make_orthogonal.exit50 ]
  %i.du = insertelement <2 x double> poison, double %.044, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.ct, <2 x double> %i.bc) ; 4 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0 ; 4 uses
  %i.dy = extractelement <2 x double> %i.dw, i64 1 ; 4 uses
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dy, double -5.000000e+00, double %i.dx)
  %i.ea = fmul double %i.dy, %i.dy
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.ea)
  %i.ec = fadd double %i.eb, -8.000000e-01        ; 2 uses
  %i.ed = fadd <2 x double> %i.dw, splat (double 1.000000e+00)
  %i.ee = fdiv <2 x double> splat (double 1.000000e+00), %i.ed
  %i.ef = fsub <2 x double> %i.ee, %i.d           ; 3 uses
  %i.eg = extractelement <2 x double> %i.ef, i64 0 ; 2 uses
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double 0.000000e+00)
  %i.ei = extractelement <2 x double> %i.ef, i64 1 ; 2 uses
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.eh)
  %sqrt63 = tail call double @llvm.sqrt.f64(double %i.ej)
  %i.ek = insertelement <2 x double> poison, double %sqrt63, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fdiv <2 x double> %i.ef, %i.el          ; 2 uses
  %i.en = tail call double @llvm.fabs.f64(double %i.dz)
  %i.eo = fcmp ogt double %i.en, f0x3EB0C6F7A0B5ED8D
  %i.ep = fcmp ogt double %i.ec, f0x3EB0C6F7A0B5ED8D
  %or.cond = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eq = tail call double @llvm.fabs.f64(double %i.ec)
  %i.er = fcmp ogt double %i.eq, f0x3EB0C6F7A0B5ED8D
  br i1 %i.er, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %bb.i
  %i.es = extractelement <2 x double> %i.em, i64 1
  %i.et = fmul double %i.es, f0xBFC91A556151761C
  %i.eu = extractelement <2 x double> %i.em, i64 0
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.eu, double f0xBFEF60EAB9A5D3A3, double %i.et)
  %i.ew = tail call double @llvm.fabs.f64(double %i.ev)
  %i.ex = fcmp ogt double %i.ew, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ex, label %.critedge.backedge, label %.critedge3

.critedge.backedge:                               ; preds = %bb.j, %bb.h
  br label %.critedge, !llvm.loop !30

.critedge3:                                       ; preds = %bb.i, %bb.j
  store double %i.dx, ptr @P, align 8, !tbaa !12
  store double %i.dy, ptr @Q, align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef double @find_gradient_h(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #5 {
bb.a:
  store <2 x double> <double f0x3FC91A556151761C, double f0xBFEF60EAB9A5D3A3>, ptr %0, align 8, !tbaa !12
  ret double f0x401465655F122FF6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local double @find_gradient_g(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !12
  %i.b = load double, ptr @Q, align 8, !tbaa !12
  %i.c = insertelement <2 x double> poison, double %i.a, i64 0
  %i.d = insertelement <2 x double> %i.c, double %i.b, i64 1
  %i.e = fmul <2 x double> %i.d, splat (double 2.000000e+00) ; 3 uses
  %i.f = extractelement <2 x double> %i.e, i64 0  ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double 0.000000e+00)
  %i.h = extractelement <2 x double> %i.e, i64 1  ; 2 uses
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.g)
  %i.j = tail call double @sqrt(double noundef %i.i) #10, !tbaa !7 ; 2 uses
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x double> %i.e, %i.l
  store <2 x double> %i.m, ptr %0, align 8, !tbaa !12
  ret double %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local double @make_orthogonal(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
.preheader:
  %i.a = load double, ptr %0, align 8, !tbaa !12  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !12  ; 2 uses
  %i.c = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double 0.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !12
  %i.h = tail call double @llvm.fmuladd.f64(double %i.e, double %i.g, double %i.c) ; 2 uses
  %i.i = fneg double %i.h                         ; 3 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.b, double %i.a) ; 4 uses
  store double %i.j, ptr %0, align 8, !tbaa !12
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double 0.000000e+00)
  %i.l = load double, ptr %i.f, align 8, !tbaa !12
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.l, double %i.e) ; 3 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.k)
  %i.o = tail call double @sqrt(double noundef %i.n) #10, !tbaa !7
  %i.p = insertelement <2 x double> poison, double %i.j, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.m, i64 1
  %i.r = insertelement <2 x double> poison, double %i.o, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x double> %i.q, %i.s
  store <2 x double> %i.t, ptr %0, align 8, !tbaa !12
  %i.u = tail call double @llvm.fmuladd.f64(double %i.i, double %i.h, double 1.000000e+00) ; 2 uses
  %i.v = fcmp olt double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.w = tail call double @sqrt(double noundef %i.u) #10, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.a
  %.031 = phi double [ %i.w, %bb.a ], [ 0.000000e+00, %.preheader ]
  ret double %.031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local double @find_gradient_f(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !12
  %i.b = load double, ptr @Q, align 8, !tbaa !12
  %i.c = insertelement <2 x double> poison, double %i.a, i64 0
  %i.d = insertelement <2 x double> %i.c, double %i.b, i64 1
  %i.e = fadd <2 x double> %i.d, splat (double 1.000000e+00)
  %i.f = fdiv <2 x double> splat (double 1.000000e+00), %i.e
  %i.g = insertelement <2 x double> poison, double %0, i64 0
  %i.h = insertelement <2 x double> %i.g, double %1, i64 1
  %i.i = fsub <2 x double> %i.f, %i.h             ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double 0.000000e+00)
  %i.l = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %i.n = tail call double @sqrt(double noundef %i.m) #10, !tbaa !7 ; 2 uses
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.i, %i.p
  store <2 x double> %i.q, ptr %2, align 8, !tbaa !12
  ret double %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @find_dd_grad_f(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !12
  %i.b = load double, ptr @Q, align 8, !tbaa !12
  %i.c = insertelement <2 x double> poison, double %i.a, i64 0
  %i.d = insertelement <2 x double> %i.c, double %i.b, i64 1
  %i.e = fadd <2 x double> %i.d, splat (double 1.000000e+00)
  %i.f = fdiv <2 x double> splat (double 1.000000e+00), %i.e ; 3 uses
  %i.g = insertelement <2 x double> poison, double %0, i64 0
  %i.h = insertelement <2 x double> %i.g, double %1, i64 1
  %i.i = fsub <2 x double> %i.f, %i.h             ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.i, %i.i
  %i.j = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.k = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.j)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.l)
  %i.m = fneg <2 x double> %i.f
  %i.n = fmul <2 x double> %i.f, %i.m
  %i.o = fmul <2 x double> %i.n, %i.i
  %i.p = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> %i.o, %i.q
  store <2 x double> %i.r, ptr %2, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @find_g() local_unnamed_addr #9 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !12  ; 2 uses
  %i.b = load double, ptr @Q, align 8, !tbaa !12  ; 2 uses
  %i.c = fmul double %i.b, %i.b
  %i.d = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.c)
  %i.e = fadd double %i.d, -8.000000e-01
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @find_h() local_unnamed_addr #9 {
bb.a:
  %i.a = load double, ptr @P, align 8, !tbaa !12
  %i.b = load double, ptr @Q, align 8, !tbaa !12
  %i.c = tail call double @llvm.fmuladd.f64(double %i.b, double -5.000000e+00, double %i.a)
  ret double %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS7lateral", !8, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!"demand", !10, i64 0, !10, i64 8}
!12 = !{!10, !10, i64 0}
!13 = !{!"p1 _ZTS6branch", !8, i64 0}
!14 = !{!"leaf", !11, i64 0, !10, i64 16, !10, i64 24}
!15 = !{!14, !10, i64 0}
!16 = !{!14, !10, i64 8}
!17 = !{!9, !9, i64 0}
!18 = !{!"root", !11, i64 0, !10, i64 16, !10, i64 24, !11, i64 32, !10, i64 48, !10, i64 56, !5, i64 64}
!19 = !{!18, !10, i64 16}
!20 = !{!18, !10, i64 24}
!21 = !{!18, !10, i64 0}
!22 = !{!18, !10, i64 8}
!23 = !{!"lateral", !11, i64 0, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !9, i64 48, !13, i64 56}
!24 = !{!23, !9, i64 48}
!25 = !{!23, !13, i64 56}
!26 = !{!"branch", !11, i64 0, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !13, i64 48, !5, i64 56}
!27 = !{!26, !13, i64 48}
!28 = !{!"p1 _ZTS4leaf", !8, i64 0}
!29 = !{!28, !28, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
end_hunk_0
