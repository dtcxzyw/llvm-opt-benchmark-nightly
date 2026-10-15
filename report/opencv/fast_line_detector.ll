Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_line_detector?download=true
inline.NumInlined: 679
inline.NumDeleted: 291
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv8ximgproc20FastLineDetectorImpl13getPointChainERKNS_3MatENS_6Point_IiEERS6_Rfi:bb.a
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
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !29
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
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !29
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
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !29
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
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !29
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
  store i32 %.us-phi74, ptr %3, align 4, !tbaa !71
  %i.ob = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.us-phi73, ptr %i.ob, align 4, !tbaa !72
  %i.oc = sitofp i32 %5 to float
  %i.od = sitofp i32 %.us-phi76 to float
  %i.oe = tail call float @llvm.fmuladd.f32(float %i.m, float %i.oc, float %i.od)
  %i.of = add nsw i32 %5, 1
  %i.og = sitofp i32 %i.of to float
  %i.oh = fdiv float %i.oe, %i.og
  br label %.critedge.thread.sink.split

.critedge.thread.sink.split:                      ; preds = %bb.bq, %.split70.us.thread, %bb.cu
  %.sink = phi float [ %i.oh, %bb.cu ], [ %.048.lcssa58.us, %bb.bq ], [ %.048.lcssa58.us.ph, %.split70.us.thread ]
  store float %.sink, ptr %4, align 4, !tbaa !58
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
  br i1 %i.d, label %bb.i, label %.preheader133

.preheader133:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = shufflevector <4 x float> %.fr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.g = shufflevector <4 x float> %.fr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.h = fsub <2 x float> %i.f, %i.g              ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = extractelement <2 x float> %i.h, i64 1
  %i.k = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.j, float noundef %i.i)
  %i.l = fdiv float %i.k, 1.800000e+02
  %i.m = fpext float %i.l to double
  %i.n = fmul double %i.m, f0x400921FB54442D18
  %i.o = fptrunc double %i.n to float             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store float %i.o, ptr %i.p, align 4, !tbaa !85
  %i.q = load <2 x float>, ptr %2, align 4, !tbaa !58 ; 6 uses
  %i.r = load <2 x float>, ptr %i.e, align 4, !tbaa !58 ; 2 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znam(i64 noundef 80) #22 ; 9 uses
  %i.t = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  store <2 x float> %i.q, ptr %i.s, align 4, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store <2 x float> %i.r, ptr %i.u, align 4, !tbaa !58
  %i.v = fsub <2 x float> %i.r, %i.q
  %i.w = fdiv <2 x float> %i.v, splat (float 9.000000e+00) ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %6 = fadd <2 x float> %i.w, %i.q
  store <2 x float> %6, ptr %5, align 4, !tbaa !58
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> <float 2.000000e+00, float 2.000000e+00, float 3.000000e+00, float 3.000000e+00>, <4 x float> %i.t)
  store <4 x float> %i.z, ptr %i.y, align 4, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> <float 4.000000e+00, float 4.000000e+00, float 5.000000e+00, float 5.000000e+00>, <4 x float> %i.t)
  store <4 x float> %i.ab, ptr %i.aa, align 4, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> <float 6.000000e+00, float 6.000000e+00, float 7.000000e+00, float 7.000000e+00>, <4 x float> %i.t)
  store <4 x float> %i.ad, ptr %i.ac, align 4, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> splat (float 8.000000e+00), <2 x float> %i.q)
  store <2 x float> %i.af, ptr %i.ae, align 4, !tbaa !58
  %i.ag = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znam(i64 noundef 80) #22 ; 25 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.ag, i8 0, i64 80, i1 false), !tbaa !53
  %i.ah = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znam(i64 noundef 80) #22 ; 25 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.ah, i8 0, i64 80, i1 false), !tbaa !53
  %i.ai = fpext float %i.o to double
  %i.aj = fadd double %i.ai, f0x3FF921FB54442D18  ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !226 ; 5 uses
  %i.am = icmp slt i32 %i.al, 3
  %i.an = icmp sgt i32 %i.al, 0                   ; 2 uses
  %i.ao = icmp eq i32 %i.al, 0
  %i.ap = zext i1 %i.ao to i32                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.ar = icmp eq i32 %i.al, 2                    ; 2 uses
  %i.as = zext i1 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.as ; 2 uses
  %i.au = icmp sgt i32 %i.al, -1
  %i.av = zext i1 %i.au to i32
  br i1 %i.am, label %.preheader133.split.us, label %.preheader133.split

.preheader133.split.us:                           ; preds = %.preheader133, %_ZNK2cv8MatShapeclEv.exit121.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2cv8MatShapeclEv.exit121.us ], [ 0, %.preheader133 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.ax = tail call double @cos(double noundef %i.aj) #24
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv ; 3 uses
  %i.az = tail call double @sin(double noundef %i.aj) #24
  %i.ba = load <2 x float>, ptr %i.aw, align 4, !tbaa !58
  %i.bb = fpext <2 x float> %i.ba to <2 x double> ; 2 uses
  %i.bc = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.az, i64 1
  %i.be = fadd <2 x double> %i.bd, %i.bb          ; 2 uses
  %i.bf = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.be) ; 3 uses
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !71
  %i.bg = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bh = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bg) ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !72
  %i.bj = tail call double @cos(double noundef %i.aj) #24
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv ; 3 uses
  %i.bl = tail call double @sin(double noundef %i.aj) #24
  %i.bm = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1
  %i.bo = fsub <2 x double> %i.bb, %i.bn          ; 2 uses
  %i.bp = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bo) ; 3 uses
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !71
  %i.bq = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bq) ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !72
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader133.split.us
  %i.bt = load i32, ptr %i.at, align 4, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %.preheader133.split.us, %bb.b
  %i.bu = phi i32 [ %i.bt, %bb.b ], [ %i.ap, %.preheader133.split.us ]
  %i.bv = load i32, ptr %i.aq, align 4
  %i.bw = select i1 %i.ar, i32 %i.bv, i32 %i.av
  %i.bx = add nsw i32 %i.bu, -5
  %..i.us = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.bx)
  %.inv.i.us = icmp sgt i32 %i.bf, 5
  %i.by = select i1 %.inv.i.us, i32 %..i.us, i32 5
  store i32 %i.by, ptr %i.ay, align 4, !tbaa !71
  %i.bz = add nsw i32 %i.bw, -5                   ; 2 uses
  %.14.i.us = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bz)
  %.inv15.i.us = icmp sgt i32 %i.bh, 5
  %i.ca = select i1 %.inv15.i.us, i32 %.14.i.us, i32 5
  store i32 %i.ca, ptr %i.bi, align 4, !tbaa !72
  br i1 %i.an, label %bb.d, label %_ZNK2cv8MatShapeclEv.exit121.us

bb.d:                                             ; preds = %bb.c
  %i.cb = load i32, ptr %i.at, align 4, !tbaa !53
  br label %_ZNK2cv8MatShapeclEv.exit121.us

_ZNK2cv8MatShapeclEv.exit121.us:                  ; preds = %bb.c, %bb.d
  %i.cc = phi i32 [ %i.cb, %bb.d ], [ %i.ap, %bb.c ]
  %i.cd = add nsw i32 %i.cc, -5
  %..i123.us = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.cd)
  %.inv.i124.us = icmp sgt i32 %i.bp, 5
  %i.ce = select i1 %.inv.i124.us, i32 %..i123.us, i32 5
  store i32 %i.ce, ptr %i.bk, align 4, !tbaa !71
  %.14.i125.us = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bz)
  %.inv15.i126.us = icmp sgt i32 %i.br, 5
  %i.cf = select i1 %.inv15.i126.us, i32 %.14.i125.us, i32 5
  store i32 %i.cf, ptr %i.bs, align 4, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %.preheader, label %.preheader133.split.us, !llvm.loop !225

.preheader:                                       ; preds = %_ZNK2cv8MatShapeclEv.exit121.us
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !49
  %i.ci = icmp slt i32 %i.ch, 2                   ; 20 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !54 ; 20 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cm = load i64, ptr %i.cl, align 8            ; 20 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !72
  %i.cp = load i32, ptr %i.ag, align 4, !tbaa !71
  %i.cq = sext i32 %i.co to i64
  %i.cr = mul i64 %i.cm, %i.cq
  %.sink.idx.i = select i1 %i.ci, i64 0, i64 %i.cr
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i
  %i.cs = sext i32 %i.cp to i64
  %i.ct = getelementptr inbounds i8, ptr %.sink.i, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.cv = zext i8 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !72
  %i.cy = load i32, ptr %i.ah, align 4, !tbaa !71
  %i.cz = sext i32 %i.cx to i64
  %i.da = mul i64 %i.cm, %i.cz
  %.sink.idx.i127 = select i1 %i.ci, i64 0, i64 %i.da
  %.sink.i128 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i127
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds i8, ptr %.sink.i128, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !29
  %i.de = zext i8 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !72
  %i.di = load i32, ptr %i.df, align 4, !tbaa !71
  %i.dj = sext i32 %i.dh to i64
  %i.dk = mul i64 %i.cm, %i.dj
  %.sink.idx.i.1 = select i1 %i.ci, i64 0, i64 %i.dk
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i.1
  %i.dl = sext i32 %i.di to i64
  %i.dm = getelementptr inbounds i8, ptr %.sink.i.1, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !29
  %i.do = zext i8 %i.dn to i32
  %i.dp = add nuw nsw i32 %i.cv, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !72
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !71
  %i.du = sext i32 %i.ds to i64
  %i.dv = mul i64 %i.cm, %i.du
  %.sink.idx.i127.1 = select i1 %i.ci, i64 0, i64 %i.dv
  %.sink.i128.1 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i127.1
  %i.dw = sext i32 %i.dt to i64
  %i.dx = getelementptr inbounds i8, ptr %.sink.i128.1, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !29
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nuw nsw i32 %i.de, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !72
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !71
  %i.ef = sext i32 %i.ed to i64
  %i.eg = mul i64 %i.cm, %i.ef
  %.sink.idx.i.2 = select i1 %i.ci, i64 0, i64 %i.eg
  %.sink.i.2 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i.2
  %i.eh = sext i32 %i.ee to i64
  %i.ei = getelementptr inbounds i8, ptr %.sink.i.2, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !29
  %i.ek = zext i8 %i.ej to i32
  %i.el = add nuw nsw i32 %i.dp, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !72
  %i.ep = load i32, ptr %i.em, align 4, !tbaa !71
  %i.eq = sext i32 %i.eo to i64
  %i.er = mul i64 %i.cm, %i.eq
  %.sink.idx.i127.2 = select i1 %i.ci, i64 0, i64 %i.er
  %.sink.i128.2 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i127.2
  %i.es = sext i32 %i.ep to i64
  %i.et = getelementptr inbounds i8, ptr %.sink.i128.2, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !29
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nuw nsw i32 %i.ea, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !72
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !71
  %i.fb = sext i32 %i.ez to i64
  %i.fc = mul i64 %i.cm, %i.fb
  %.sink.idx.i.3 = select i1 %i.ci, i64 0, i64 %i.fc
  %.sink.i.3 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i.3
  %i.fd = sext i32 %i.fa to i64
  %i.fe = getelementptr inbounds i8, ptr %.sink.i.3, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !29
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.el, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
end_hunk_0
