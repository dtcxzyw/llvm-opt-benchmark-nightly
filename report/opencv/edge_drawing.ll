Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl19EnumerateRectPointsEddddPiS2_S2_:bb.a
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !46 ; 11 uses
  %i.bj = tail call double @llvm.ceil.f64(double %i.ap)
  %i.bk = fptosi double %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -1
  %i.bm = tail call double @llvm.ceil.f64(double %i.ar)
  %i.bn = fptosi double %i.bm to i32
  %i.bo = fsub double %i.bg, %i.ba
  %i.bp = tail call double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ugt double %i.bp, 1.000000e-02
  %i.br = fcmp olt double %i.bi, %i.bc
  %i.bs = fsub double %3, %i.bi
  %i.bt = fsub double %i.ba, %i.bg                ; 2 uses
  %i.bu = fsub double %i.bc, %i.bi
  %i.bv = fsub double %i.ap, %i.bg
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ugt double %i.bw, 1.000000e-02
  %i.by = fcmp olt double %i.ar, %i.bi
  %i.bz = fsub double %i.bi, %i.ar                ; 2 uses
  %i.ca = fsub double %i.bg, %i.ap                ; 2 uses
  %i.cb = fsub double %i.av, %i.ba
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp ugt double %i.cc, 1.000000e-02
  %i.ce = fcmp olt double %i.ax, %i.bc
  %i.cf = fsub double %i.bc, %i.ax                ; 2 uses
  %i.cg = fsub double %i.ba, %i.av                ; 2 uses
  %i.ch = fsub double %i.ap, %i.av
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ugt double %i.ci, 1.000000e-02
  %i.ck = fcmp olt double %i.ar, %i.ax
  %i.cl = fsub double %i.ax, %i.ar                ; 2 uses
  %i.cm = fsub double %i.av, %i.ap                ; 2 uses
  %brmerge128 = fcmp ueq double %i.bi, %i.bc
  %.mux129 = select i1 %i.br, double %i.bi, double %i.bc
  %brmerge = fcmp ueq double %i.ar, %i.bi
  %.mux = select i1 %i.by, double %i.ar, double %i.bi
  %brmerge132 = fcmp ueq double %i.ax, %i.bc
  %.mux133 = select i1 %i.ce, double %i.bc, double %i.ax
  %brmerge130 = fcmp ueq double %i.ar, %i.ax
  %.mux131 = select i1 %i.ck, double %i.ax, double %i.ar
  br label %bb.e

bb.e:                                             ; preds = %bb.x, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.d ] ; 4 uses
  %.091 = phi i32 [ %.293, %bb.x ], [ %i.bl, %bb.d ] ; 3 uses
  %.089 = phi i32 [ %.190.lcssa, %bb.x ], [ %i.bn, %bb.d ]
  %.087 = phi double [ %.1.lcssa, %bb.x ], [ f0xFFEFFFFFFFFFFFFF, %bb.d ] ; 3 uses
  %i.cn = add nsw i32 %.089, 1                    ; 3 uses
  %i.co = sitofp i32 %i.cn to double
  %i.cp = fcmp olt double %.087, %i.co
  %i.cq = sitofp i32 %.091 to double              ; 2 uses
  %i.cr = fcmp oge double %i.ba, %i.cq
  %i.cs = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %i.cs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ct = add nsw i32 %.091, 1                    ; 3 uses
  %i.cu = sitofp i32 %i.ct to double              ; 3 uses
  %i.cv = fcmp olt double %i.ba, %i.cu
  br i1 %i.cv, label %._crit_edge, label %.lr.ph154

.lr.ph:                                           ; preds = %bb.w
  %i.cw = add nsw i32 %i.da, 1                    ; 3 uses
  %i.cx = sitofp i32 %i.cw to double              ; 3 uses
  %i.cy = fcmp olt double %i.ba, %i.cx
  br i1 %i.cy, label %._crit_edge, label %.lr.ph154, !llvm.loop !510

.lr.ph154:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cz = phi double [ %i.cx, %.lr.ph ], [ %i.cu, %.lr.ph.preheader ] ; 12 uses
  %i.da = phi i32 [ %i.cw, %.lr.ph ], [ %i.ct, %.lr.ph.preheader ] ; 2 uses
  %i.db = fcmp ogt double %i.bg, %i.cz
  br i1 %i.db, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph154
  br i1 %i.bx, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %brmerge, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.dc = fsub double %i.cz, %i.ap
  %i.dd = fmul double %i.dc, %i.bz
  %i.de = fdiv double %i.dd, %i.ca
  %i.df = fadd double %i.ar, %i.de
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.dg = fsub double %i.cz, %i.ap
  %i.dh = fmul double %i.dg, %i.bz
  %i.di = fdiv double %i.dh, %i.ca
  %i.dj = fadd double %i.ar, %i.di
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph154
  br i1 %i.bq, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %brmerge128, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dk = fsub double %i.cz, %i.bg
  %i.dl = fmul double %i.dk, %i.bs
  %i.dm = fdiv double %i.dl, %i.bt
  %i.dn = fadd double %i.bi, %i.dm
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.do = fsub double %i.cz, %i.bg
  %i.dp = fmul double %i.do, %i.bu
  %i.dq = fdiv double %i.dp, %i.bt
  %i.dr = fadd double %i.bi, %i.dq
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.g, %bb.m, %bb.l, %bb.i, %bb.h
  %.088 = phi double [ %i.dr, %bb.m ], [ %.mux, %bb.g ], [ %i.df, %bb.h ], [ %i.dj, %bb.i ], [ %i.dn, %bb.l ], [ %.mux129, %bb.k ]
  %i.ds = fcmp ogt double %i.av, %i.cz
  br i1 %i.ds, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.cj, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %brmerge130, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.dt = fsub double %i.cz, %i.ap
  %i.du = fmul double %i.dt, %i.cl
  %i.dv = fdiv double %i.du, %i.cm
  %i.dw = fadd double %i.ar, %i.dv
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.dx = fsub double %i.cz, %i.ap
  %i.dy = fmul double %i.dx, %i.cl
  %i.dz = fdiv double %i.dy, %i.cm
  %i.ea = fadd double %i.ar, %i.dz
  br label %bb.w

bb.s:                                             ; preds = %bb.n
  br i1 %i.cd, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %brmerge132, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.eb = fsub double %i.cz, %i.av
  %i.ec = fmul double %i.eb, %i.cf
  %i.ed = fdiv double %i.ec, %i.cg
  %i.ee = fadd double %i.ax, %i.ed
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ef = fsub double %i.cz, %i.av
  %i.eg = fmul double %i.ef, %i.cf
  %i.eh = fdiv double %i.eg, %i.cg
  %i.ei = fadd double %i.ax, %i.eh
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.p, %bb.v, %bb.u, %bb.r, %bb.q
  %.2 = phi double [ %i.ei, %bb.v ], [ %.mux131, %bb.p ], [ %i.dw, %bb.q ], [ %i.ea, %bb.r ], [ %i.ee, %bb.u ], [ %.mux133, %bb.t ] ; 3 uses
  %i.ej = tail call double @llvm.ceil.f64(double %.088)
  %i.ek = fptosi double %i.ej to i32              ; 3 uses
  %i.el = sitofp i32 %i.ek to double
  %i.em = fcmp olt double %.2, %i.el
  %i.en = fcmp oge double %i.ba, %i.cz
  %i.eo = select i1 %i.em, i1 %i.en, i1 false
  br i1 %i.eo, label %.lr.ph, label %.._crit_edge.loopexit_crit_edge, !llvm.loop !510

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.w
  br label %._crit_edge, !llvm.loop !510

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %.._crit_edge.loopexit_crit_edge, %bb.e
  %.pre-phi = phi double [ %i.cq, %bb.e ], [ %i.cu, %.lr.ph.preheader ], [ %i.cz, %.._crit_edge.loopexit_crit_edge ], [ %i.cx, %.lr.ph ]
  %.190.lcssa = phi i32 [ %i.cn, %bb.e ], [ %i.cn, %.lr.ph.preheader ], [ %i.ek, %.._crit_edge.loopexit_crit_edge ], [ %i.ek, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi double [ %.087, %bb.e ], [ %.087, %.lr.ph.preheader ], [ %.2, %.._crit_edge.loopexit_crit_edge ], [ %.2, %.lr.ph ]
  %.293 = phi i32 [ %.091, %bb.e ], [ %i.ct, %.lr.ph.preheader ], [ %i.da, %.._crit_edge.loopexit_crit_edge ], [ %i.cw, %.lr.ph ] ; 2 uses
  %i.ep = fcmp olt double %i.ba, %.pre-phi
  br i1 %i.ep, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %.293, ptr %i.eq, align 4, !tbaa !44
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 %.190.lcssa, ptr %i.er, align 4, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.e, !llvm.loop !511

bb.y:                                             ; preds = %._crit_edge
  %i.es = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.es, ptr %6, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl33ComputeMinDistanceBetweenTwoLinesEP13EDLineSegmentS3_Pi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %3 = load <2 x double>, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %i.e = load <4 x double>, ptr %i.b, align 8, !tbaa !46 ; 3 uses
  %i.f = load double, ptr %i.d, align 8, !tbaa !233
  %i.g = load double, ptr %i.c, align 8, !tbaa !229
  %i.h = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = shufflevector <4 x double> %i.e, <4 x double> poison, <2 x i32> <i32 2, i32 0>
  %i.j = fsub <2 x double> %i.h, %i.i             ; 2 uses
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.k = shufflevector <4 x double> %i.e, <4 x double> poison, <2 x i32> <i32 3, i32 1>
  %i.l = fsub <2 x double> %4, %i.k               ; 2 uses
  %i.m = fmul <2 x double> %i.l, %i.l
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.j, <2 x double> %i.m)
  %i.o = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.n) ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.q = extractelement <2 x double> %i.o, i64 1  ; 2 uses
  %i.r = fcmp olt double %i.p, %i.q               ; 2 uses
  %.045 = select i1 %i.r, double %i.p, double %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load double, ptr %i.t, align 8, !tbaa !233
  %i.v = load double, ptr %i.s, align 8, !tbaa !232
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = shufflevector <4 x double> %i.e, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.z = fsub <2 x double> %i.x, %i.y             ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x double> poison, double %i.g, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.f, i64 1
  %i.ae = fsub <2 x double> %i.ab, %i.ad          ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.af)
  %i.ah = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ag) ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0 ; 2 uses
  %i.aj = fcmp olt double %i.ai, %.045            ; 2 uses
  %.146 = select i1 %i.aj, double %i.ai, double %.045 ; 2 uses
  %i.ak = extractelement <2 x double> %i.ah, i64 1 ; 2 uses
  %i.al = fcmp olt double %i.ak, %.146            ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0 = zext i1 %i.r to i32
  %.1 = select i1 %i.aj, i32 2, i32 %.0
  %.2 = select i1 %i.al, i32 3, i32 %.1
  store i32 %.2, ptr %2, align 4, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.247 = select i1 %i.al, double %i.ak, double %.146
  ret double %.247
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl20UpdateLineParametersEP13EDLineSegment(ptr nofree noundef captures(none) initializes((0, 20)) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load double, ptr %i.a, align 8, !tbaa !232 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !230 ; 4 uses
  %i.e = fsub double %i.b, %i.d                   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load double, ptr %i.f, align 8, !tbaa !233 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !229 ; 4 uses
  %i.j = fsub double %i.g, %i.i                   ; 3 uses
  %i.k = tail call double @llvm.fabs.f64(double %i.e) ; 2 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.j) ; 2 uses
  %i.m = fcmp ult double %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.n, align 8, !tbaa !226
  %i.o = fcmp olt double %i.l, 1.000000e-03
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !227
  %i.q = fadd double %i.g, %i.i
  %i.r = fmul double %i.q, 5.000000e-01
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = fdiv double %i.j, %i.e                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.s, ptr %i.t, align 8, !tbaa !227
  %i.u = fneg double %i.s
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.d, double %i.i)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  store i32 1, ptr %i.n, align 8, !tbaa !226
  %i.w = fcmp olt double %i.k, 1.000000e-03
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !227
  %i.y = fadd double %i.b, %i.d
  %i.z = fmul double %i.y, 5.000000e-01
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = fdiv double %i.e, %i.j                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.aa, ptr %i.ab, align 8, !tbaa !227
  %i.ac = fneg double %i.aa
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.i, double %i.d)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %.sink = phi double [ %i.z, %bb.f ], [ %i.ad, %bb.g ], [ %i.r, %bb.c ], [ %i.v, %bb.d ]
  store double %.sink, ptr %0, align 8, !tbaa !231
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl3NFAEdi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2216) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load i32, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.c = sitofp i32 %i.b to double                ; 2 uses
  %i.d = icmp sgt i32 %2, 0
  %i.e = icmp sgt i32 %i.b, 1
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.07.lcssa = phi double [ %i.c, %bb.a ], [ %i.g, %.lr.ph ]
  ret double %.07.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  %.078 = phi double [ %i.g, %.lr.ph ], [ %i.c, %bb.a ]
  %i.g = fmul double %1, %.078                    ; 3 uses
  %i.h = add nuw nsw i32 %.09, 1                  ; 2 uses
  %i.i = icmp slt i32 %i.h, %2
  %i.j = fcmp ogt double %i.g, 1.000000e+00
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !153    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = tail call noundef ptr @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !154  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !149 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !150
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #43
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IiEESaIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exit

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exitthread-pre-split, %bb.c
  %i.z = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IiEESaIS3_EEEvT_S7_.exit
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.ab = ptrtoint ptr %i.aa to i64
end_hunk_0
