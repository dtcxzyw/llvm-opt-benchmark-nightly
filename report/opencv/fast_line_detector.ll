inline.NumInlined: 679
inline.NumDeleted: 291
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv8ximgproc20FastLineDetectorImpl13getPointChainERKNS_3MatENS_6Point_IiEERS6_Rfi:bb.a
  %i.ls = icmp slt i32 %.sroa.2.0.extract.trunc, 1
  br i1 %i.ls, label %.split.split.7, label %bb.ce

bb.ce:                                            ; preds = %.split.split.4
  %i.lt = icmp eq i32 %i.lr, %i.b
  %i.lu = icmp slt i32 %.sroa.0.0.extract.trunc, 1
  %or.cond.4 = select i1 %i.lt, i1 true, i1 %i.lu
  %i.lv = icmp eq i32 %i.lb, %i.d
  %or.cond113.4 = select i1 %or.cond.4, i1 true, i1 %i.lv
  br i1 %or.cond113.4, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lw = zext nneg i32 %i.lr to i64
  %i.lx = mul i64 %i.k, %i.lw
  %.sink.i.4 = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lx
  %i.ly = zext nneg i32 %i.lb to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %.sink.i.4, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !42
  %i.mb = icmp eq i8 %i.ma, 0
  br i1 %i.mb, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mc = fsub float 4.000000e+00, %i.m
  %i.md = tail call noundef float @llvm.fabs.f32(float %i.mc) ; 3 uses
  %i.me = fcmp ogt float %i.md, 4.000000e+00
  %i.mf = fsub float 8.000000e+00, %i.md
  %i.mg = select i1 %i.me, float %i.mf, float %i.md ; 2 uses
  %i.mh = fcmp ugt float %i.mg, %.252.3
  br i1 %i.mh, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %.sroa.5.1.4.ph = phi i32 [ %.sroa.5.1.3, %bb.cg ], [ %.sroa.5.1.3, %bb.cf ], [ %i.lr, %bb.ch ], [ %.sroa.5.1.3, %bb.ce ] ; 3 uses
  %.sroa.0.1.4.ph = phi i32 [ %.sroa.0.1.3, %bb.cg ], [ %.sroa.0.1.3, %bb.cf ], [ %i.lb, %bb.ch ], [ %.sroa.0.1.3, %bb.ce ] ; 3 uses
  %.252.4.ph = phi float [ %.252.3, %bb.cg ], [ %.252.3, %bb.cf ], [ %i.mg, %bb.ch ], [ %.252.3, %bb.ce ] ; 4 uses
  %.2.4.ph = phi i32 [ %.2.3, %bb.cg ], [ %.2.3, %bb.cf ], [ 4, %bb.ch ], [ %.2.3, %bb.ce ] ; 3 uses
  %i.mi = icmp eq i32 %i.lr, %i.b
  %i.mj = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %or.cond.5 = select i1 %i.mi, i1 true, i1 %i.mj
  %i.mk = icmp eq i32 %i.d, %.sroa.0.0.extract.trunc
  %or.cond113.5 = select i1 %or.cond.5, i1 true, i1 %i.mk
  br i1 %or.cond113.5, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ml = zext nneg i32 %i.lr to i64
  %i.mm = mul i64 %i.k, %i.ml
  %.sink.i.5 = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.mm
  %i.mn = and i64 %2, 2147483647
  %i.mo = getelementptr inbounds nuw i8, ptr %.sink.i.5, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !42
  %i.mq = icmp eq i8 %i.mp, 0
  br i1 %i.mq, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mr = fsub float -3.000000e+00, %i.m
  %i.ms = tail call noundef float @llvm.fabs.f32(float %i.mr) ; 3 uses
  %i.mt = fcmp ogt float %i.ms, 4.000000e+00
  %i.mu = fsub float 8.000000e+00, %i.ms
  %i.mv = select i1 %i.mt, float %i.mu, float %i.ms ; 2 uses
  %i.mw = fcmp ugt float %i.mv, %.252.4.ph
  br i1 %i.mw, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %.sroa.5.1.5.ph = phi i32 [ %.sroa.5.1.4.ph, %bb.cj ], [ %i.lr, %bb.cl ], [ %.sroa.5.1.4.ph, %bb.ci ], [ %.sroa.5.1.4.ph, %bb.ck ] ; 3 uses
  %.sroa.0.1.5.ph = phi i32 [ %.sroa.0.1.4.ph, %bb.cj ], [ %.sroa.0.0.extract.trunc, %bb.cl ], [ %.sroa.0.1.4.ph, %bb.ci ], [ %.sroa.0.1.4.ph, %bb.ck ] ; 3 uses
  %.252.5.ph = phi float [ %.252.4.ph, %bb.cj ], [ %i.mv, %bb.cl ], [ %.252.4.ph, %bb.ci ], [ %.252.4.ph, %bb.ck ] ; 4 uses
  %.2.5.ph = phi i32 [ %.2.4.ph, %bb.cj ], [ -3, %bb.cl ], [ %.2.4.ph, %bb.ci ], [ %.2.4.ph, %bb.ck ] ; 3 uses
  %i.mx = icmp eq i32 %i.lr, %i.b
  %i.my = icmp slt i32 %.sroa.0.0.extract.trunc, -1
  %or.cond.6 = select i1 %i.mx, i1 true, i1 %i.my
  %i.mz = icmp eq i32 %i.n, %i.d
  %or.cond113.6 = select i1 %or.cond.6, i1 true, i1 %i.mz
  br i1 %or.cond113.6, label %.split.split.7, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.na = zext nneg i32 %i.lr to i64
  %i.nb = mul i64 %i.k, %i.na
  %.sink.i.6 = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nb
  %i.nc = zext nneg i32 %i.n to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %.sink.i.6, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !42
  %i.nf = icmp eq i8 %i.ne, 0
  br i1 %i.nf, label %.split.split.7, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ng = fsub float -2.000000e+00, %i.m
  %i.nh = tail call noundef float @llvm.fabs.f32(float %i.ng) ; 3 uses
  %i.ni = fcmp ogt float %i.nh, 4.000000e+00
  %i.nj = fsub float 8.000000e+00, %i.nh
  %i.nk = select i1 %i.ni, float %i.nj, float %i.nh ; 2 uses
  %i.nl = fcmp ugt float %i.nk, %.252.5.ph
  br i1 %i.nl, label %.split.split.7, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br label %.split.split.7

.split.split.7:                                   ; preds = %.split.split.4, %bb.cp, %bb.co, %bb.cn, %bb.cm
  %.sroa.5.1.6 = phi i32 [ %.sroa.5.1.5.ph, %bb.co ], [ %.sroa.5.1.5.ph, %bb.cm ], [ %i.lr, %bb.cp ], [ %.sroa.5.1.5.ph, %bb.cn ], [ %.sroa.5.1.3, %.split.split.4 ] ; 4 uses
  %.sroa.0.1.6 = phi i32 [ %.sroa.0.1.5.ph, %bb.co ], [ %.sroa.0.1.5.ph, %bb.cm ], [ %i.n, %bb.cp ], [ %.sroa.0.1.5.ph, %bb.cn ], [ %.sroa.0.1.3, %.split.split.4 ] ; 4 uses
  %.252.6 = phi float [ %.252.5.ph, %bb.co ], [ %.252.5.ph, %bb.cm ], [ %i.nk, %bb.cp ], [ %.252.5.ph, %bb.cn ], [ %.252.3, %.split.split.4 ] ; 5 uses
  %.2.6 = phi i32 [ %.2.5.ph, %bb.co ], [ %.2.5.ph, %bb.cm ], [ -2, %bb.cp ], [ %.2.5.ph, %bb.cn ], [ %.2.3, %.split.split.4 ] ; 4 uses
  br i1 %i.lc, label %.critedge, label %bb.cq

bb.cq:                                            ; preds = %.split.split.7
  %i.nm = icmp eq i32 %i.b, %.sroa.2.0.extract.trunc
  %i.nn = icmp slt i32 %.sroa.0.0.extract.trunc, -1
  %or.cond.7 = select i1 %i.nm, i1 true, i1 %i.nn
  %i.no = icmp eq i32 %i.n, %i.d
  %or.cond113.7 = select i1 %or.cond.7, i1 true, i1 %i.no
  br i1 %or.cond113.7, label %.critedge, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.np = mul i64 %i.k, %.sroa.2.0.extract.shift
  %.sink.i.7 = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.np
  %i.nq = zext nneg i32 %i.n to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %.sink.i.7, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !42
  %i.nt = icmp eq i8 %i.ns, 0
  br i1 %i.nt, label %.critedge, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nu = fsub float -1.000000e+00, %i.m
  %i.nv = tail call noundef float @llvm.fabs.f32(float %i.nu) ; 3 uses
  %i.nw = fcmp ogt float %i.nv, 4.000000e+00
  %i.nx = fsub float 8.000000e+00, %i.nv
  %i.ny = select i1 %i.nw, float %i.nx, float %i.nv ; 2 uses
  %i.nz = fcmp ugt float %i.ny, %.252.6
  br i1 %i.nz, label %.critedge, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  br label %.critedge

.critedge:                                        ; preds = %.split.split.7, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %.split.split.us.7, %bb.bj, %bb.bk, %bb.bl, %bb.bm
  %.us-phi73 = phi i32 [ %.sroa.5.1.us87.6, %bb.bl ], [ %.sroa.5.1.us87.6, %bb.bk ], [ %.sroa.5.1.6, %.split.split.7 ], [ %.sroa.5.1.6, %bb.cq ], [ %.sroa.2.0.extract.trunc, %bb.ct ], [ %.sroa.5.1.6, %bb.cr ], [ %.sroa.5.1.6, %bb.cs ], [ %.sroa.5.1.us87.6, %.split.split.us.7 ], [ %.sroa.5.1.us87.6, %bb.bj ], [ %.sroa.2.0.extract.trunc, %bb.bm ]
  %.us-phi74 = phi i32 [ %.sroa.0.1.us88.6, %bb.bl ], [ %.sroa.0.1.us88.6, %bb.bk ], [ %.sroa.0.1.6, %.split.split.7 ], [ %.sroa.0.1.6, %bb.cq ], [ %i.n, %bb.ct ], [ %.sroa.0.1.6, %bb.cr ], [ %.sroa.0.1.6, %bb.cs ], [ %.sroa.0.1.us88.6, %.split.split.us.7 ], [ %.sroa.0.1.us88.6, %bb.bj ], [ %i.n, %bb.bm ]
  %.us-phi75 = phi float [ %.252.us89.6, %bb.bl ], [ %.252.us89.6, %bb.bk ], [ %.252.6, %.split.split.7 ], [ %.252.6, %bb.cq ], [ %i.ny, %bb.ct ], [ %.252.6, %bb.cr ], [ %.252.6, %bb.cs ], [ %.252.us89.6, %.split.split.us.7 ], [ %.252.us89.6, %bb.bj ], [ %i.jc, %bb.bm ]
  %.us-phi76 = phi i32 [ %.2.us90.6, %bb.bl ], [ %.2.us90.6, %bb.bk ], [ %.2.6, %.split.split.7 ], [ %.2.6, %bb.cq ], [ -1, %bb.ct ], [ %.2.6, %bb.cr ], [ %.2.6, %bb.cs ], [ %.2.us90.6, %.split.split.us.7 ], [ %.2.us90.6, %bb.bj ], [ -1, %bb.bm ]
  %i.oa = fcmp olt float %.us-phi75, 2.000000e+00
  br i1 %i.oa, label %bb.cu, label %.critedge.thread

bb.cu:                                            ; preds = %.critedge
  store i32 %.us-phi74, ptr %3, align 4, !tbaa !105
  %i.ob = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.us-phi73, ptr %i.ob, align 4, !tbaa !107
  %i.oc = sitofp i32 %5 to float
  %i.od = sitofp i32 %.us-phi76 to float
  %i.oe = tail call float @llvm.fmuladd.f32(float %i.m, float %i.oc, float %i.od)
  %i.of = add nsw i32 %5, 1
  %i.og = sitofp i32 %i.of to float
  %i.oh = fdiv float %i.oe, %i.og
  br label %.critedge.thread.sink.split

.critedge.thread.sink.split:                      ; preds = %bb.bq, %.split70.us.thread, %bb.cu
  %.sink = phi float [ %i.oh, %bb.cu ], [ %.048.lcssa58.us, %bb.bq ], [ %.048.lcssa58.us.ph, %.split70.us.thread ]
  store float %.sink, ptr %4, align 4, !tbaa !77
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %bb.af, %bb.ag, %bb.p, %bb.q, %.split.us.split.us.7, %.split.us.split.7, %.critedge
  %.154 = phi i1 [ false, %bb.ag ], [ false, %bb.af ], [ false, %.critedge ], [ false, %.split.us.split.7 ], [ false, %.split.us.split.us.7 ], [ false, %bb.q ], [ false, %bb.p ], [ true, %.critedge.thread.sink.split ]
  ret i1 %.154
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv5CannyERKNS_11_InputArrayERKNS_12_OutputArrayEddib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc20FastLineDetectorImpl29additionalOperationsOnSegmentERKNS_3MatER7SEGMENT(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(20) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load <4 x float>, ptr %2, align 4
  %.fr = freeze <4 x float> %i.a                  ; 3 uses
  %i.b = fcmp une <4 x float> %.fr, zeroinitializer
  %i.c = bitcast <4 x i1> %i.b to i4
  %i.d = icmp eq i4 %i.c, 0
  br i1 %i.d, label %bb.h, label %.preheader135

.preheader135:                                    ; preds = %bb.a
  %i.e = shufflevector <4 x float> %.fr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.f = shufflevector <4 x float> %.fr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.g = fsub <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = extractelement <2 x float> %i.g, i64 1
  %i.j = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.i, float noundef %i.h)
  %i.k = fdiv float %i.j, 1.800000e+02
  %i.l = fpext float %i.k to double
  %i.m = fmul double %i.l, f0x400921FB54442D18
  %i.n = fptrunc double %i.m to float             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store float %i.n, ptr %i.o, align 4, !tbaa !150
  %i.p = load <4 x float>, ptr %2, align 4, !tbaa !77 ; 7 uses
  %i.q = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znam(i64 noundef 80) #22 ; 8 uses
  %i.r = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 4 uses
  store <2 x float> %i.r, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.u = fsub <2 x float> %i.t, %i.r
  %i.v = fdiv <2 x float> %i.u, splat (float 9.000000e+00) ; 2 uses
  %i.w = fadd <2 x float> %i.v, %i.r
  store <2 x float> %i.w, ptr %i.s, align 4, !tbaa !77
  %i.x = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> <float 2.000000e+00, float 2.000000e+00, float 3.000000e+00, float 3.000000e+00>, <4 x float> %i.z)
  store <4 x float> %i.aa, ptr %i.y, align 4, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> <float 4.000000e+00, float 4.000000e+00, float 5.000000e+00, float 5.000000e+00>, <4 x float> %i.z)
  store <4 x float> %i.ac, ptr %i.ab, align 4, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> <float 6.000000e+00, float 6.000000e+00, float 7.000000e+00, float 7.000000e+00>, <4 x float> %i.z)
  store <4 x float> %i.ae, ptr %i.ad, align 4, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %5 = shufflevector <4 x float> %i.x, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %6 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> <float 8.000000e+00, float 8.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.p)
  store <4 x float> %6, ptr %i.af, align 4
  %i.ag = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znam(i64 noundef 80) #22 ; 25 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.ag, i8 0, i64 80, i1 false), !tbaa !71
  %i.ah = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znam(i64 noundef 80) #22 ; 25 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.ah, i8 0, i64 80, i1 false), !tbaa !71
  %i.ai = fpext float %i.n to double
  %i.aj = fadd double %i.ai, f0x3FF921FB54442D18  ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !236 ; 6 uses
  %i.am = icmp slt i32 %i.al, 3
  %i.an = icmp sgt i32 %i.al, 0
  %i.ao = icmp eq i32 %i.al, 0                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.aq = icmp eq i32 %i.al, 2
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %.not.i = icmp eq i32 %i.al, 1
  %i.at = icmp sgt i32 %i.al, -1                  ; 2 uses
  %i.au = zext i1 %i.at to i32                    ; 2 uses
  %i.av = zext i1 %i.ao to i32
  br i1 %i.am, label %.preheader135.split.us.preheader, label %.preheader135.split

.preheader135.split.us.preheader:                 ; preds = %.preheader135
  %i.aw = select i1 %i.ao, i32 -4, i32 -5
  %i.ax = select i1 %i.at, i32 -4, i32 -5
  br label %.preheader135.split.us

.preheader135.split.us:                           ; preds = %.preheader135.split.us.preheader, %_ZNK2cv8MatShapeclEv.exit123.us
  %indvars.iv = phi i64 [ 0, %.preheader135.split.us.preheader ], [ %indvars.iv.next, %_ZNK2cv8MatShapeclEv.exit123.us ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.az = tail call double @cos(double noundef %i.aj) #24
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv ; 5 uses
  %i.bb = tail call double @sin(double noundef %i.aj) #24
  %i.bc = load <2 x float>, ptr %i.ay, align 4, !tbaa !77
  %i.bd = fpext <2 x float> %i.bc to <2 x double> ; 2 uses
  %i.be = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bb, i64 1
  %i.bg = fadd <2 x double> %i.bf, %i.bd          ; 2 uses
  %i.bh = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bg) ; 6 uses
  store i32 %i.bh, ptr %i.ba, align 4, !tbaa !105
  %i.bi = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bi) ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 4 uses
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !107
  %i.bl = tail call double @cos(double noundef %i.aj) #24
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv ; 3 uses
  %i.bn = tail call double @sin(double noundef %i.aj) #24
  %i.bo = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bn, i64 1
  %i.bq = fsub <2 x double> %i.bd, %i.bp          ; 2 uses
  %i.br = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bq) ; 3 uses
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !105
  %i.bs = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bs) ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !107
  br i1 %i.an, label %bb.b, label %.thread.i117.us.critedge

bb.b:                                             ; preds = %.preheader135.split.us
  %i.bv = load i32, ptr %i.as, align 4, !tbaa !71 ; 4 uses
  br i1 %.not.i, label %_ZNK2cv8MatShapeclEv.exit123.us.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bw = load i32, ptr %i.ap, align 4, !tbaa !71
  %i.bx = add nsw i32 %i.bv, -5
  %..i.us = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bx)
  %.inv.i.us = icmp sgt i32 %i.bh, 5
  %i.by = select i1 %.inv.i.us, i32 %..i.us, i32 5
  store i32 %i.by, ptr %i.ba, align 4, !tbaa !105
  %i.bz = add nsw i32 %i.bw, -5
  %.14.i.us = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bz)
  %.inv15.i.us = icmp sgt i32 %i.bj, 5
  %i.ca = select i1 %.inv15.i.us, i32 %.14.i.us, i32 5
  store i32 %i.ca, ptr %i.bk, align 4, !tbaa !107
  %i.cb = load i32, ptr %i.ap, align 4, !tbaa !71
  br label %_ZNK2cv8MatShapeclEv.exit123.us

.thread.i117.us.critedge:                         ; preds = %.preheader135.split.us
  %.inv.i.us.c = icmp sgt i32 %i.bh, 5
  %i.cc = select i1 %.inv.i.us.c, i32 %i.aw, i32 5
  store i32 %i.cc, ptr %i.ba, align 4, !tbaa !105
  %.inv15.i.us.c = icmp sgt i32 %i.bj, 5
  %i.cd = select i1 %.inv15.i.us.c, i32 %i.ax, i32 5
  store i32 %i.cd, ptr %i.bk, align 4, !tbaa !107
  br label %_ZNK2cv8MatShapeclEv.exit123.us

_ZNK2cv8MatShapeclEv.exit123.us.critedge:         ; preds = %bb.b
  %i.ce = add nsw i32 %i.bv, -5
  %..i.us.c = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.ce)
  %.inv.i.us.c149 = icmp sgt i32 %i.bh, 5
  %i.cf = select i1 %.inv.i.us.c149, i32 %..i.us.c, i32 5
  store i32 %i.cf, ptr %i.ba, align 4, !tbaa !105
  %.inv15.i.us.c150 = icmp sgt i32 %i.bj, 5
  %i.cg = select i1 %.inv15.i.us.c150, i32 -4, i32 5
  store i32 %i.cg, ptr %i.bk, align 4, !tbaa !107
  br label %_ZNK2cv8MatShapeclEv.exit123.us

_ZNK2cv8MatShapeclEv.exit123.us:                  ; preds = %_ZNK2cv8MatShapeclEv.exit123.us.critedge, %.thread.i117.us.critedge, %bb.c
  %i.ch = phi i32 [ %i.bv, %bb.c ], [ %i.bv, %_ZNK2cv8MatShapeclEv.exit123.us.critedge ], [ %i.av, %.thread.i117.us.critedge ]
  %i.ci = phi i32 [ %i.cb, %bb.c ], [ %i.au, %_ZNK2cv8MatShapeclEv.exit123.us.critedge ], [ %i.au, %.thread.i117.us.critedge ]
  %i.cj = add nsw i32 %i.ch, -5
  %..i125.us = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.cj)
  %.inv.i126.us = icmp sgt i32 %i.br, 5
  %i.ck = select i1 %.inv.i126.us, i32 %..i125.us, i32 5
  store i32 %i.ck, ptr %i.bm, align 4, !tbaa !105
  %i.cl = add nsw i32 %i.ci, -5
  %.14.i127.us = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.cl)
  %.inv15.i128.us = icmp sgt i32 %i.bt, 5
  %i.cm = select i1 %.inv15.i128.us, i32 %.14.i127.us, i32 5
  store i32 %i.cm, ptr %i.bu, align 4, !tbaa !107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %.preheader, label %.preheader135.split.us, !llvm.loop !237

.preheader:                                       ; preds = %_ZNK2cv8MatShapeclEv.exit123.us
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !67
  %i.cp = icmp slt i32 %i.co, 2                   ; 20 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !73 ; 20 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ct = load i64, ptr %i.cs, align 8            ; 20 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !107
  %i.cw = load i32, ptr %i.ag, align 4, !tbaa !105
  %i.cx = sext i32 %i.cv to i64
  %i.cy = mul i64 %i.ct, %i.cx
  %.sink.idx.i = select i1 %i.cp, i64 0, i64 %i.cy
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink.idx.i
  %i.cz = sext i32 %i.cw to i64
  %i.da = getelementptr inbounds i8, ptr %.sink.i, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !42
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !107
  %i.df = load i32, ptr %i.ah, align 4, !tbaa !105
  %i.dg = sext i32 %i.de to i64
  %i.dh = mul i64 %i.ct, %i.dg
  %.sink.idx.i129 = select i1 %i.cp, i64 0, i64 %i.dh
  %.sink.i130 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink.idx.i129
  %i.di = sext i32 %i.df to i64
  %i.dj = getelementptr inbounds i8, ptr %.sink.i130, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !42
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !107
  %i.dp = load i32, ptr %i.dm, align 4, !tbaa !105
  %i.dq = sext i32 %i.do to i64
  %i.dr = mul i64 %i.ct, %i.dq
  %.sink.idx.i.1 = select i1 %i.cp, i64 0, i64 %i.dr
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink.idx.i.1
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds i8, ptr %.sink.i.1, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !42
  %i.dv = zext i8 %i.du to i32
  %i.dw = add nuw nsw i32 %i.dc, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !107
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !105
  %i.eb = sext i32 %i.dz to i64
  %i.ec = mul i64 %i.ct, %i.eb
  %.sink.idx.i129.1 = select i1 %i.cp, i64 0, i64 %i.ec
  %.sink.i130.1 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink.idx.i129.1
  %i.ed = sext i32 %i.ea to i64
  %i.ee = getelementptr inbounds i8, ptr %.sink.i130.1, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !42
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add nuw nsw i32 %i.dl, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !107
  %i.el = load i32, ptr %i.ei, align 4, !tbaa !105
  %i.em = sext i32 %i.ek to i64
  %i.en = mul i64 %i.ct, %i.em
  %.sink.idx.i.2 = select i1 %i.cp, i64 0, i64 %i.en
  %.sink.i.2 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink.idx.i.2
  %i.eo = sext i32 %i.el to i64
  %i.ep = getelementptr inbounds i8, ptr %.sink.i.2, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !42
  %i.er = zext i8 %i.eq to i32
  %i.es = add nuw nsw i32 %i.dw, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !107
  %i.ew = load i32, ptr %i.et, align 4, !tbaa !105
  %i.ex = sext i32 %i.ev to i64
  %i.ey = mul i64 %i.ct, %i.ex
  %.sink.idx.i129.2 = select i1 %i.cp, i64 0, i64 %i.ey
  %.sink.i130.2 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink.idx.i129.2
  %i.ez = sext i32 %i.ew to i64
  %i.fa = getelementptr inbounds i8, ptr %.sink.i130.2, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !42
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add nuw nsw i32 %i.eh, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !107
  %i.fh = load i32, ptr %i.fe, align 4, !tbaa !105
  %i.fi = sext i32 %i.fg to i64
end_hunk_0
