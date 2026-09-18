Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/shapedescr?download=true
inline.NumInlined: 1222
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv15findSecondPointINS_6Point_IfEEEEvPKT_iRS2_Rf:bb.a
  %i.y = load <2 x float>, ptr %2, align 4, !tbaa !26
  %i.z = fsub <2 x float> %i.y, %i.x              ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = fpext float %i.aa to double             ; 2 uses
  %i.ac = extractelement <2 x float> %i.z, i64 1
  %i.ad = fpext float %i.ac to double             ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.ae)
  %sqrt.i37 = tail call noundef double @llvm.sqrt.f64(double %i.af)
  %i.ag = fpext float %i.v to double
  %i.ah = fcmp olt double %sqrt.i37, %i.ag
  br i1 %i.ah, label %_ZN2cvL14findThirdPointINS_6Point_IfEEEEvPKT_iiRS2_Rf.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ai = load <2 x float>, ptr %i.b, align 4, !tbaa !26
  %i.aj = fadd <2 x float> %i.x, %i.ai
  %i.ak = fmul <2 x float> %i.aj, splat (float 5.000000e-01)
  store <2 x float> %i.ak, ptr %2, align 4, !tbaa !26
  %i.al = load <2 x float>, ptr %i.w, align 4, !tbaa !26
  %i.am = load <2 x float>, ptr %i.b, align 4, !tbaa !26
  %i.an = fsub <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %i.ap = fpext float %i.ao to double             ; 2 uses
  %i.aq = extractelement <2 x float> %i.an, i64 1
  %i.ar = fpext float %i.aq to double             ; 2 uses
  %i.as = fmul double %i.ar, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.as)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.at)
  %i.au = fptrunc double %sqrt.i.i to float
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = fadd float %i.av, f0x38D1B717           ; 2 uses
  store float %i.aw, ptr %3, align 4, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i, %bb.b
  %i.ax = phi float [ %i.aw, %bb.b ], [ %i.dk, %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i ] ; 2 uses
  %i.ay = load float, ptr %2, align 4, !tbaa !30
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.ba = load float, ptr %i.d, align 4, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bc = load <2 x float>, ptr %i.az, align 4    ; 3 uses
  %i.bd = load float, ptr %i.bb, align 4
  %i.be = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bf = fsub float %i.ay, %i.be
  %i.bg = fsub float %i.ba, %i.bd
  %i.bh = fpext float %i.bf to double             ; 2 uses
  %i.bi = fpext float %i.bg to double             ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bj)
  %sqrt.i44.i = tail call noundef double @llvm.sqrt.f64(double %i.bk)
  %i.bl = fpext float %i.ax to double
  %i.bm = fcmp olt double %sqrt.i44.i, %i.bl
  br i1 %i.bm, label %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = load float, ptr %i.b, align 4           ; 4 uses
  %i.bo = load float, ptr %i.c, align 4           ; 2 uses
  %i.bp = load <2 x float>, ptr %i.w, align 4     ; 3 uses
  %i.bq = fsub float %i.be, %i.bn                 ; 3 uses
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = fsub <2 x float> %i.br, %i.bt           ; 4 uses
  %i.bv = extractelement <2 x float> %i.bp, i64 0
  %i.bw = fsub float %i.bv, %i.bn                 ; 3 uses
  %i.bx = fneg float %i.bq
  %i.by = extractelement <2 x float> %i.bu, i64 0 ; 2 uses
  %i.bz = fmul float %i.by, %i.bx
  %i.ca = extractelement <2 x float> %i.bu, i64 1
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ca, float %i.bz) ; 2 uses
  %i.cc = tail call float @llvm.fabs.f32(float %i.cb)
  %i.cd = fcmp ugt float %i.cc, f0x38D1B717
  br i1 %i.cd, label %bb.e, label %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ce = fadd <2 x float> %i.br, %i.bt
  %i.cf = shufflevector <2 x float> %i.bp, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.cg = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fadd <2 x float> %i.cf, %i.ch
  %i.cj = fmul <2 x float> %i.ce, splat (float 5.000000e-01)
  %i.ck = fmul <2 x float> %i.ci, splat (float 5.000000e-01)
  %i.cl = fmul <2 x float> %i.bu, %i.cj
  %i.cm = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.bq, i64 1
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cn, <2 x float> %i.cl) ; 3 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = fneg float %i.cp
  %i.cr = fneg float %i.by
  %i.cs = fmul float %i.bq, %i.cq
  %i.ct = extractelement <2 x float> %i.co, i64 1
  %i.cu = fmul float %i.ct, %i.cr
  %i.cv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x float> %i.cv, float %i.bw, i64 1
  %i.cx = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cs, i64 1
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cw, <2 x float> %i.cy)
  %i.da = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x float> %i.cz, %i.db           ; 3 uses
  store <2 x float> %i.dc, ptr %2, align 4, !tbaa !26
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  %i.de = fsub float %i.dd, %i.bn                 ; 2 uses
  %i.df = extractelement <2 x float> %i.dc, i64 1
  %i.dg = fsub float %i.df, %i.bo                 ; 2 uses
  %i.dh = fmul float %i.dg, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.dh)
  %sqrt.i45.i = tail call float @llvm.sqrt.f32(float %i.di)
  %i.dj = fadd float %sqrt.i45.i, f0x38D1B717     ; 2 uses
  store float %i.dj, ptr %3, align 4, !tbaa !26
  br label %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i

_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.dk = phi float [ %i.ax, %bb.c ], [ %i.ax, %bb.d ], [ %i.dj, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %_ZN2cvL14findThirdPointINS_6Point_IfEEEEvPKT_iiRS2_Rf.exit, label %bb.c, !llvm.loop !122

_ZN2cvL14findThirdPointINS_6Point_IfEEEEvPKT_iiRS2_Rf.exit: ; preds = %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i, %.lr.ph
  %i.dl = phi float [ %i.v, %.lr.ph ], [ %i.dk, %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv15findSecondPointINS_6Point_IiEEEEvPKT_iRNS1_IfEERf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.c = load <2 x i32>, ptr %i.b, align 4, !tbaa !28 ; 5 uses
  %i.d = load <2 x i32>, ptr %0, align 4, !tbaa !28 ; 2 uses
  %i.e = add nsw <2 x i32> %i.c, %i.d
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = fmul nnan <2 x float> %i.f, splat (float 5.000000e-01)
  store <2 x float> %i.g, ptr %2, align 4, !tbaa !26
  %i.h = sub nsw <2 x i32> %i.d, %i.c             ; 2 uses
  %i.i = extractelement <2 x i32> %i.h, i64 0
  %i.j = sitofp i32 %i.i to float
  %i.k = extractelement <2 x i32> %i.h, i64 1
  %i.l = sitofp i32 %i.k to float
  %i.m = fpext float %i.j to double               ; 2 uses
  %i.n = fpext float %i.l to double               ; 2 uses
  %i.o = fmul nnan double %i.n, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.o)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.p)
  %i.q = fptrunc double %sqrt.i to float
  %i.r = fmul float %i.q, 5.000000e-01
  %i.s = fadd float %i.r, f0x38D1B717             ; 2 uses
  store float %i.s, ptr %3, align 4, !tbaa !26
  %i.t = icmp sgt i32 %1, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.u = sitofp <2 x i32> %i.c to <2 x float>     ; 8 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2cvL14findThirdPointINS_6Point_IiEEEEvPKT_iiRNS1_IfEERf.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2cvL14findThirdPointINS_6Point_IiEEEEvPKT_iiRNS1_IfEERf.exit
  %i.v = phi float [ %i.s, %.lr.ph ], [ %i.cu, %_ZN2cvL14findThirdPointINS_6Point_IiEEEEvPKT_iiRNS1_IfEERf.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN2cvL14findThirdPointINS_6Point_IiEEEEvPKT_iiRNS1_IfEERf.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.x = load <2 x i32>, ptr %i.w, align 4, !tbaa !28 ; 3 uses
  %i.y = sitofp <2 x i32> %i.x to <2 x float>     ; 4 uses
  %i.z = load <2 x float>, ptr %2, align 4, !tbaa !26
  %i.aa = fsub <2 x float> %i.z, %i.y             ; 2 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0
  %i.ac = fpext float %i.ab to double             ; 2 uses
  %i.ad = extractelement <2 x float> %i.aa, i64 1
  %i.ae = fpext float %i.ad to double             ; 2 uses
  %i.af = fmul double %i.ae, %i.ae
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.af)
  %sqrt.i37 = tail call noundef double @llvm.sqrt.f64(double %i.ag)
  %i.ah = fpext float %i.v to double
  %i.ai = fcmp olt double %sqrt.i37, %i.ah
  br i1 %i.ai, label %_ZN2cvL14findThirdPointINS_6Point_IiEEEEvPKT_iiRNS1_IfEERf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = add nsw <2 x i32> %i.x, %i.c
  %i.ak = sitofp <2 x i32> %i.aj to <2 x float>
  %i.al = fmul nnan <2 x float> %i.ak, splat (float 5.000000e-01)
  store <2 x float> %i.al, ptr %2, align 4, !tbaa !26
  %i.am = sub nsw <2 x i32> %i.x, %i.c            ; 2 uses
  %i.an = extractelement <2 x i32> %i.am, i64 0
  %i.ao = sitofp i32 %i.an to float
  %i.ap = extractelement <2 x i32> %i.am, i64 1
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fpext float %i.ao to double             ; 2 uses
  %i.as = fpext float %i.aq to double             ; 2 uses
  %i.at = fmul nnan double %i.as, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %i.at)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.au)
  %i.av = fptrunc double %sqrt.i.i to float
  %i.aw = fmul float %i.av, 5.000000e-01
  %i.ax = fadd float %i.aw, f0x38D1B717           ; 2 uses
  store float %i.ax, ptr %3, align 4, !tbaa !26
  %foldExtExtBinop = fsub <2 x float> %i.y, %i.u
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop43 = fsub <2 x float> %i.y, %i.u ; 2 uses
  %i.az = extractelement <2 x float> %foldExtExtBinop43, i64 1 ; 2 uses
  %4 = fadd nnan <2 x float> %i.u, %i.y
  %5 = fmul nnan <2 x float> %4, <float 1.000000e+00, float 5.000000e-01>
  %6 = insertelement <2 x float> %foldExtExtBinop43, float 5.000000e-01, i64 0
  %7 = fmul <2 x float> %5, %6                    ; 2 uses
  %i.ba = extractelement <2 x float> %7, i64 0
  %8 = extractelement <2 x float> %7, i64 1
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ay, float %8) ; 2 uses
  %i.bc = fneg float %i.az
  %i.bd = fneg float %i.bb
  br label %bb.d

bb.d:                                             ; preds = %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i, %bb.c
  %i.be = phi float [ %i.ax, %bb.c ], [ %i.ct, %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !28
  %i.bh = sitofp <2 x i32> %i.bg to <2 x float>   ; 4 uses
  %i.bi = load <2 x float>, ptr %2, align 4, !tbaa !26
  %i.bj = fsub <2 x float> %i.bi, %i.bh           ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = fpext float %i.bk to double             ; 2 uses
  %i.bm = extractelement <2 x float> %i.bj, i64 1
  %i.bn = fpext float %i.bm to double             ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %i.bo)
  %sqrt.i46.i = tail call noundef double @llvm.sqrt.f64(double %i.bp)
  %i.bq = fpext float %i.be to double
  %i.br = fcmp olt double %sqrt.i46.i, %i.bq
  br i1 %i.br, label %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop45 = fsub <2 x float> %i.bh, %i.u
  %i.bs = extractelement <2 x float> %foldExtExtBinop45, i64 0 ; 3 uses
  %foldExtExtBinop47 = fsub <2 x float> %i.bh, %i.u
  %i.bt = extractelement <2 x float> %foldExtExtBinop47, i64 1 ; 3 uses
  %i.bu = fneg float %i.bs
  %i.bv = fmul float %i.az, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bt, float %i.bv) ; 2 uses
  %i.bx = tail call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp ugt float %i.bx, f0x38D1B717
  br i1 %i.by, label %bb.f, label %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bz = fadd nnan <2 x float> %i.u, %i.bh       ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 1
  %i.cb = fmul nnan float %i.ca, 5.000000e-01
  %i.cc = extractelement <2 x float> %i.bz, i64 0
  %i.cd = fmul nnan float %i.cc, 5.000000e-01
  %i.ce = fmul float %i.bt, %i.cb
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bs, float %i.ce) ; 2 uses
  %i.cg = fmul float %i.bs, %i.bd
  %i.ch = fmul float %i.cf, %i.bc
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.cf, float %i.cg)
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bt, float %i.ch)
  %i.ck = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.ci, i64 1
  %i.cm = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fdiv <2 x float> %i.cl, %i.cn           ; 3 uses
  store <2 x float> %i.co, ptr %2, align 4, !tbaa !26
  %foldExtExtBinop49 = fsub <2 x float> %i.co, %i.u
  %i.cp = extractelement <2 x float> %foldExtExtBinop49, i64 0 ; 2 uses
  %foldExtExtBinop51 = fsub <2 x float> %i.co, %i.u ; 2 uses
  %foldExtExtBinop53 = fmul <2 x float> %foldExtExtBinop51, %foldExtExtBinop51
  %i.cq = extractelement <2 x float> %foldExtExtBinop53, i64 1
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cq)
  %sqrt.i51.i = tail call float @llvm.sqrt.f32(float %i.cr)
  %i.cs = fadd float %sqrt.i51.i, f0x38D1B717     ; 2 uses
  store float %i.cs, ptr %3, align 4, !tbaa !26
  br label %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i

_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ct = phi float [ %i.be, %bb.d ], [ %i.be, %bb.e ], [ %i.cs, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %_ZN2cvL14findThirdPointINS_6Point_IiEEEEvPKT_iiRNS1_IfEERf.exit, label %bb.d, !llvm.loop !124

_ZN2cvL14findThirdPointINS_6Point_IiEEEEvPKT_iiRNS1_IfEERf.exit: ; preds = %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i, %bb.b
  %i.cu = phi float [ %i.v, %bb.b ], [ %i.ct, %_ZN2cvL14findCircle3ptsEPNS_6Point_IfEERS1_Rf.exit.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !125
}

declare noundef i32 @_ZN2cv2LUEPdmiS0_mi(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!10 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !9, i64 16}
!11 = !{!10, !8, i64 8}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!14 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!15 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!16 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !15, i64 4, !5, i64 8, !4, i64 12}
!17 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!18 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !14, i64 64, !16, i64 72, !17, i64 128}
!19 = !{!18, !5, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !4, i64 16}
!23 = !{!22, !12, i64 0}
!24 = !{!4, !4, i64 0}
!25 = !{!"float", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!18, !12, i64 24}
!28 = !{!5, !5, i64 0}
!29 = !{!"_ZTSN2cv6Point_IfEE", !25, i64 0, !25, i64 4}
!30 = !{!29, !25, i64 0}
!31 = !{!29, !25, i64 4}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !8, i64 0}
!34 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !33, i64 0, !5, i64 8}
!35 = !{!34, !5, i64 8}
!36 = !{!21, !21, i64 0}
!37 = !{!9, !5, i64 0}
!38 = !{!9, !5, i64 4}
!39 = !{!10, !5, i64 0}
!40 = !{!"double", !4, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!"_ZTSN2cv3RNGE", !21, i64 0}
!44 = !{!43, !21, i64 0}
!45 = !{!18, !5, i64 4}
!46 = !{!"_ZTSN2cv5Size_IfEE", !25, i64 0, !25, i64 4}
!47 = !{!"_ZTSN2cv11RotatedRectE", !29, i64 0, !46, i64 8, !25, i64 16}
!48 = !{!47, !25, i64 8}
!49 = !{!47, !25, i64 12}
!50 = !{!47, !25, i64 16}
!51 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26}
!52 = distinct !{!52, !"_ZNK2cv11_InputArray6getMatEi"}
!53 = distinct !{!53, !52, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!54 = distinct !{!54, !32}
!55 = distinct !{!55, !32}
!56 = distinct !{!56, !32}
!57 = distinct !{!57, !32}
!58 = !{!53}
!59 = !{!"p1 _ZTSN2cv6Point_IfEE", !8, i64 0}
!60 = !{!"_ZTSN2cv10AutoBufferINS_6Point_IfEELm1024EEE", !59, i64 0, !21, i64 8, !4, i64 16}
!61 = !{!60, !59, i64 0}
!62 = !{!60, !21, i64 8}
!63 = !{!"p1 _ZTSN2cv6Point_IiEE", !8, i64 0}
!64 = !{!"_ZTSN2cv10AutoBufferINS_6Point_IiEELm1024EEE", !63, i64 0, !21, i64 8, !4, i64 16}
!65 = !{!64, !63, i64 0}
!66 = !{!64, !21, i64 8}
!67 = !{!20, !12, i64 0}
!68 = !{!22, !21, i64 8}
!69 = distinct !{!69, !"_ZNK2cv11_InputArray6getMatEi"}
!70 = distinct !{!70, !69, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!71 = !{!70}
!72 = distinct !{!72, !"_ZNK2cv11_InputArray6getMatEi"}
!73 = distinct !{!73, !72, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!74 = distinct !{!74, !32}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !42}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = !{!73}
!81 = distinct !{!81, !"_ZNK2cv11_InputArray6getMatEi"}
!82 = distinct !{!82, !81, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!83 = distinct !{!83, !32}
!84 = distinct !{!84, !42}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !32}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = !{!82}
!92 = !{!"p1 double", !8, i64 0}
end_hunk_0
