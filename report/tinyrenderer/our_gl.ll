Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/our_gl?download=true
inline.NumInlined: 150
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z12init_zbufferii:bb.a
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [3 x %struct.vec], align 16         ; 8 uses
  %4 = alloca %struct.mat.2, align 8              ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !42
  %i.f = load <2 x double>, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !42
  %i.j = load double, ptr %i.i, align 8, !tbaa !16, !noalias !43
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !tbaa.struct !42
  %i.n = load double, ptr %i.m, align 8, !tbaa !16, !noalias !44
  %i.o = load <8 x double>, ptr %3, align 16, !tbaa !16 ; 4 uses
  %i.p = shufflevector <8 x double> %i.o, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.q = insertelement <2 x double> %i.f, double %i.j, i64 1 ; 4 uses
  %i.r = fdiv <2 x double> %i.p, %i.q             ; 3 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.t = shufflevector <8 x double> %i.o, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.u = fdiv <2 x double> %i.t, %i.q             ; 3 uses
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.w = shufflevector <8 x double> %i.o, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.x = fdiv <2 x double> %i.w, %i.q             ; 3 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.z = shufflevector <8 x double> %i.o, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.aa = fdiv <2 x double> %i.z, %i.q            ; 3 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ac = shufflevector <2 x double> %i.aa, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x double> %i.u, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> %i.ad, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.ae, ptr %3, align 16, !tbaa !16, !alias.scope !45
  %i.af = shufflevector <2 x double> %i.aa, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x double> %i.u, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.ah, ptr %i.g, align 16, !tbaa !16, !alias.scope !43
  %i.ai = load <8 x double>, ptr @Viewport, align 64, !tbaa !16, !noalias !46 ; 6 uses
  %i.aj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 56), align 8
  %i.ak = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 40), align 8
  %i.al = load double, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 24), align 8, !tbaa !16, !noalias !46
  %i.am = load double, ptr getelementptr inbounds nuw (i8, ptr @Viewport, i64 8), align 8, !tbaa !16, !noalias !46
  %i.an = shufflevector <8 x double> %i.ai, <8 x double> poison, <4 x i32> <i32 7, i32 3, i32 7, i32 3>
  %i.ao = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.an, <4 x double> %i.s, <4 x double> zeroinitializer)
  %i.ap = shufflevector <8 x double> %i.ai, <8 x double> poison, <4 x i32> <i32 6, i32 2, i32 6, i32 2>
  %i.aq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ap, <4 x double> %i.v, <4 x double> %i.ao)
  %i.ar = shufflevector <8 x double> %i.ai, <8 x double> poison, <4 x i32> <i32 5, i32 1, i32 5, i32 1>
  %i.as = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ar, <4 x double> %i.y, <4 x double> %i.aq)
  %i.at = shufflevector <8 x double> %i.ai, <8 x double> poison, <4 x i32> <i32 4, i32 0, i32 4, i32 0>
  %i.au = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.at, <4 x double> %i.ab, <4 x double> %i.as) ; 10 uses
  %i.av = load <4 x double>, ptr %i.k, align 16, !tbaa !16, !alias.scope !44
  %i.aw = insertelement <4 x double> poison, double %i.n, i64 0
  %i.ax = shufflevector <4 x double> %i.aw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ay = fdiv <4 x double> %i.av, %i.ax          ; 5 uses
  store <4 x double> %i.ay, ptr %i.k, align 16, !tbaa !16, !alias.scope !44
  %i.az = insertelement <2 x double> %i.aj, double %i.al, i64 1
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.ba, <2 x double> zeroinitializer)
  %i.bc = shufflevector <8 x double> %i.ai, <8 x double> poison, <2 x i32> <i32 6, i32 2>
  %i.bd = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.bb)
  %i.bf = insertelement <2 x double> %i.ak, double %i.am, i64 1
  %i.bg = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bg, <2 x double> %i.be)
  %i.bi = shufflevector <8 x double> %i.ai, <8 x double> poison, <2 x i32> <i32 4, i32 0>
  %i.bj = shufflevector <4 x double> %i.ay, <4 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bj, <2 x double> %i.bh) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.bl = extractelement <4 x double> %i.au, i64 1
  %i.bm = extractelement <4 x double> %i.au, i64 0
  %i.bn = extractelement <4 x double> %i.au, i64 3 ; 2 uses
  %i.bo = shufflevector <4 x double> %i.au, <4 x double> <double poison, double poison, double 1.000000e+00, double poison>, <4 x i32> <i32 1, i32 0, i32 6, i32 3>
  store <4 x double> %i.bo, ptr %4, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bq = extractelement <4 x double> %i.au, i64 2 ; 2 uses
  %i.br = extractelement <2 x double> %i.bk, i64 1 ; 2 uses
  %i.bs = extractelement <2 x double> %i.bk, i64 0 ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x double> %i.au, <4 x double> %i.bt, <4 x i32> <i32 2, i32 poison, i32 5, i32 4>
  %i.bv = insertelement <4 x double> %i.bu, double 1.000000e+00, i64 1
  store <4 x double> %i.bv, ptr %i.bp, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 64
  store double 1.000000e+00, ptr %i.bw, align 8, !tbaa !47
  %i.bx = fneg double %i.br
  %i.by = fsub double 0.000000e+00, %i.br
  %i.bz = fadd double %i.bn, %i.by
  %i.ca = fneg double %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bx, double 0.000000e+00)
  %i.cc = tail call noundef double @llvm.fmuladd.f64(double %i.bn, double %i.bs, double %i.cb)
  %i.cd = fadd double %i.cc, 0.000000e+00
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.ca, double %i.cd)
  %i.cf = fsub double 0.000000e+00, %i.bs
  %i.cg = fadd double %i.bq, %i.cf
  %i.ch = tail call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.cg, double %i.ce)
  %i.ci = fcmp olt double %i.ch, 1.000000e+00
  br i1 %i.ci, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cj = shufflevector <4 x double> %i.au, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ck = fcmp olt <4 x double> %i.au, %i.cj      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.cl = shufflevector <4 x i1> %i.ck, <4 x i1> poison, <2 x i32> <i32 2, i32 3>
  %i.cm = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.cn = shufflevector <4 x double> %i.au, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.co = select <2 x i1> %i.cl, <2 x double> %i.cm, <2 x double> %i.cn ; 2 uses
  %i.cp = fcmp olt <2 x double> %i.bk, %i.co
  %i.cq = select <2 x i1> %i.cp, <2 x double> %i.bk, <2 x double> %i.co ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 1
  store double %i.cr, ptr %i.a, align 8, !tbaa !16
  %i.cs = extractelement <2 x double> %i.cq, i64 0
  store double %i.cs, ptr %i.c, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.ct = shufflevector <4 x i1> %i.ck, <4 x i1> poison, <2 x i32> <i32 0, i32 1>
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cm, <2 x double> %i.cn ; 2 uses
  %i.cv = fcmp olt <2 x double> %i.cu, %i.bk
  %i.cw = select <2 x i1> %i.cv, <2 x double> %i.bk, <2 x double> %i.cu ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 1
  store double %i.cx, ptr %i.b, align 8, !tbaa !16
  %i.cy = extractelement <2 x double> %i.cw, i64 0
  store double %i.cy, ptr %i.d, align 8, !tbaa !16
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage.omp_outlined, ptr nonnull %i.b, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %4, ptr nonnull %0, ptr nonnull %3, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z9rasterizeRA3_K3vecILi4EERK7IShaderR8TGAImage.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.std::pair", align 8       ; 4 uses
  %12 = alloca %struct.vec.0, align 16            ; 3 uses
  %i.e = load double, ptr %4, align 8, !tbaa !16
  %i.f = fptosi double %i.e to i32
  %.sroa.speculated99 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 3 uses
  %i.g = load double, ptr %2, align 8, !tbaa !16
  %i.h = invoke noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.i = fptosi double %i.g to i32
  %i.j = add nsw i32 %i.h, -1
  %.sroa.speculated93 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.i) ; 2 uses
  %.not = icmp sgt i32 %.sroa.speculated99, %.sroa.speculated93
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw nsw i32 %.sroa.speculated93, %.sroa.speculated99 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.k, ptr %i.b, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !51
  %i.l = load i32, ptr %0, align 4, !tbaa !51     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !51
  %i.n = call i32 @llvm.umin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !51
  %i.o = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %.not53104 = icmp ugt i32 %i.o, %i.n
  br i1 %.not53104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.050105 = phi i32 [ %i.o, %.lr.ph ], [ %i.al, %bb.g ] ; 2 uses
  %i.ab = add i32 %.050105, %.sroa.speculated99   ; 4 uses
  %i.ac = load double, ptr %5, align 8, !tbaa !16
  %i.ad = fptosi double %i.ac to i32
  %.sroa.speculated87 = call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.ae = sitofp i32 %i.ab to double              ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.p, %bb.d
  %.0 = phi i32 [ %.sroa.speculated87, %bb.d ], [ %i.dm, %bb.p ] ; 6 uses
  %i.ah = load double, ptr %6, align 8, !tbaa !16
  %i.ai = invoke noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.aj = fptosi double %i.ah to i32
  %i.ak = add nsw i32 %i.ai, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.aj)
  %.not54 = icmp sgt i32 %.0, %.sroa.speculated
  br i1 %.not54, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = add i32 %.050105, 1                     ; 2 uses
  %i.am = load i32, ptr %i.b, align 4, !tbaa !51
  %.not53 = icmp ugt i32 %i.al, %i.am
  br i1 %.not53, label %._crit_edge, label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.an = uitofp nneg i32 %.0 to double           ; 2 uses
  %i.ao = load <2 x double>, ptr %i.u, align 8
  %i.ap = load double, ptr %i.v, align 8, !tbaa !53
  %14 = load <2 x double>, ptr %i.s, align 8, !tbaa !16, !noalias !54 ; 3 uses
  %i.aq = load double, ptr %i.t, align 8, !tbaa !16, !noalias !54 ; 4 uses
  %15 = extractelement <2 x double> %14, i64 0
  %i.ar = fneg double %15                         ; 2 uses
  %16 = load double, ptr %7, align 8, !tbaa !16, !noalias !54 ; 2 uses
  %17 = insertelement <2 x double> poison, double %16, i64 0 ; 3 uses
  %18 = insertelement <2 x double> %14, double %16, i64 1
  %19 = load <4 x double>, ptr %i.q, align 8, !tbaa !16, !noalias !54 ; 6 uses
  %20 = load double, ptr %13, align 8, !tbaa !16, !noalias !54 ; 2 uses
  %i.as = load double, ptr %i.r, align 8, !tbaa !16, !noalias !54 ; 4 uses
  %i.at = extractelement <4 x double> %19, i64 2
  %21 = fneg double %i.at
  %i.au = call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double 0.000000e+00)
  %22 = load <2 x double>, ptr %i.p, align 8, !tbaa !16, !noalias !54 ; 4 uses
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x double> %19, <4 x double> %23, <2 x i32> <i32 3, i32 5>
  %25 = fneg <2 x double> %24                     ; 2 uses
  %26 = shufflevector <4 x double> %19, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.av = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %25, <2 x double> zeroinitializer)
  %27 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.aw = insertelement <2 x double> %27, double %i.as, i64 0
  %28 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ax = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %28, <2 x double> zeroinitializer)
  %29 = shufflevector <4 x double> %19, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %30 = shufflevector <2 x double> %22, <2 x double> %14, <2 x i32> <i32 0, i32 2>
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %30, <2 x double> %i.av) ; 2 uses
  %i.ay = shufflevector <2 x double> %22, <2 x double> %31, <2 x i32> <i32 0, i32 3>
  %32 = insertelement <2 x double> poison, double %i.ar, i64 0
  %33 = insertelement <2 x double> %32, double %i.as, i64 1
  %34 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %33, <2 x double> zeroinitializer) ; 2 uses
  %i.az = extractelement <2 x double> %34, i64 0
  %i.ba = call noundef double @llvm.fmuladd.f64(double %20, double %i.aq, double %i.az) ; 2 uses
  %35 = insertelement <2 x double> %34, double 0.000000e+00, i64 0
  %36 = extractelement <4 x double> %19, i64 0
  %37 = insertelement <2 x double> %29, double %i.as, i64 1
  %i.bb = insertelement <2 x double> poison, double %21, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %37, <2 x double> %i.bc, <2 x double> zeroinitializer)
  %38 = call noundef double @llvm.fmuladd.f64(double %36, double %i.aq, double %i.au)
  %39 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = insertelement <2 x double> %27, double %20, i64 0
  %41 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %40, <2 x double> %i.bd) ; 2 uses
  %i.be = insertelement <2 x double> %29, double %i.aq, i64 0
  %i.bf = insertelement <2 x double> %17, double %i.aq, i64 1
  %i.bg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bf, <2 x double> %i.ax) ; 2 uses
  %42 = extractelement <2 x double> %i.bg, i64 1
  %43 = fneg double %42                           ; 2 uses
  %44 = insertelement <2 x double> %28, double %43, i64 1
  %45 = fneg double %38
  %46 = shufflevector <4 x double> %19, <4 x double> poison, <2 x i32> zeroinitializer
  %i.bh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> %44, <2 x double> %35)
  %47 = insertelement <2 x double> %17, double %i.ba, i64 1
  %i.bi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %47, <2 x double> %18, <2 x double> %i.bh) ; 3 uses
  %48 = fneg <2 x double> %41
  %49 = shufflevector <2 x double> %41, <2 x double> %48, <2 x i32> <i32 0, i32 3>
  %50 = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %51 = fdiv <2 x double> %49, %50                ; 2 uses
  %i.bj = fdiv <2 x double> %31, %50              ; 2 uses
  %i.bk = insertelement <2 x double> poison, double %43, i64 0
  %52 = shufflevector <2 x double> %i.bk, <2 x double> %i.bg, <2 x i32> <i32 0, i32 2>
  %53 = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bl = fdiv <2 x double> %52, %53
  %54 = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bm = insertelement <2 x double> %54, double %45, i64 1
  %i.bn = fdiv <2 x double> %i.bm, %53
  %55 = extractelement <2 x double> %51, i64 0
  %i.bo = extractelement <2 x double> %51, i64 1
  %56 = extractelement <2 x double> %i.bj, i64 0
  %i.bp = shufflevector <2 x double> %i.bj, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bq = insertelement <2 x double> poison, double %i.an, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = insertelement <2 x double> %i.ao, double %i.ap, i64 1
  %i.bt = load double, ptr %i.w, align 8, !tbaa !53
  %57 = fadd double %55, 0.000000e+00
  %58 = call double @llvm.fmuladd.f64(double %i.bo, double %i.an, double %57)
  %59 = call noundef double @llvm.fmuladd.f64(double %56, double %i.ae, double %58) ; 3 uses
  %i.bu = insertelement <2 x double> %i.bi, double %59, i64 1
  %i.bv = insertelement <2 x double> %50, double %i.bt, i64 1
  %i.bw = fdiv <2 x double> %i.bu, %i.bv          ; 2 uses
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> <double -0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.by = fsub <2 x double> %i.bp, %i.bx
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.br, <2 x double> %i.by)
  %i.ca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.ag, <2 x double> %i.bz) ; 3 uses
  %i.cb = fdiv <2 x double> %i.ca, %i.bs          ; 3 uses
  %shift = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cb, %shift
  %i.cc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cd = extractelement <2 x double> %i.bw, i64 1 ; 2 uses
  %i.ce = fadd double %i.cd, %i.cc                ; 2 uses
  %i.cf = fdiv double %i.cd, %i.ce
  %i.cg = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fdiv <2 x double> %i.cb, %i.ch
  %i.cj = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.ck = fcmp olt double %i.cj, 0.000000e+00
  %i.cl = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.cm = fcmp olt double %i.cl, 0.000000e+00
  %or.cond = or i1 %i.ck, %i.cm
  %i.cn = fcmp olt double %59, 0.000000e+00
  %or.cond5 = or i1 %i.cn, %or.cond
  br i1 %or.cond5, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = load double, ptr %i.x, align 16, !tbaa !55
  %i.cp = load double, ptr %i.y, align 16, !tbaa !55
  %i.cq = load double, ptr %i.z, align 16, !tbaa !55
  %i.cr = call double @llvm.fmuladd.f64(double %59, double %i.cq, double 0.000000e+00)
  %i.cs = call double @llvm.fmuladd.f64(double %i.cl, double %i.cp, double %i.cr)
  %i.ct = call noundef double @llvm.fmuladd.f64(double %i.cj, double %i.co, double %i.cs) ; 2 uses
  %i.cu = invoke noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.cv = mul nsw i32 %i.cu, %.0
  %i.cw = add nsw i32 %i.cv, %i.ab
  %i.cx = sext i32 %i.cw to i64
  %i.cy = load ptr, ptr @zbuffer, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  %i.da = load double, ptr %i.cz, align 8, !tbaa !16
  %i.db = fcmp ugt double %i.ct, %i.da
  br i1 %i.db, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store <2 x double> %i.ci, ptr %12, align 16, !tbaa !16
  store double %i.cf, ptr %.sroa.11.0..sroa_idx, align 16, !tbaa !16
  %i.dc = load ptr, ptr %10, align 8, !tbaa !57
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke i48 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull byval(%struct.vec.0) align 8 %12)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %bb.k
  store i48 %i.de, ptr %11, align 8
  %i.df = trunc i48 %i.de to i1
  br i1 %i.df, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = invoke noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.dh = mul nsw i32 %i.dg, %.0
  %i.di = add nsw i32 %i.dh, %i.ab
  %i.dj = sext i32 %i.di to i64
  %i.dk = load ptr, ptr @zbuffer, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  store double %i.ct, ptr %i.dl, align 8, !tbaa !16
  invoke void @_ZN8TGAImage3setEiiRK8TGAColor(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ab, i32 noundef %.0, ptr noundef nonnull align 1 dereferenceable(5) %i.aa)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j, %bb.h
  %i.dm = add nuw nsw i32 %.0, 1
  br label %bb.e, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.g, %bb.c
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.b
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.e, %bb.a
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %lpad.loopexit.split-lp114, 0
  call void @__clang_call_terminate(ptr %i.dn) #19
  unreachable
}

declare noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #15

declare noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #14

declare void @_ZN8TGAImage3setEiiRK8TGAColor(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(5)) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare !callback !21 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_our_gl.cpp() #16 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @zbuffer, ptr nonnull @__dso_handle) #15 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 double", !10, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !11, i64 16}
!15 = !{!"double", !6, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTS3vecILi3EE", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{i64 2, i64 -1, i64 -1, i1 true}
!21 = !{!20}
!22 = distinct !{!22, i1 true, !"_ZmiILi3EE3vecIXT_EERKS1_S3_"}
!23 = distinct !{!23, !22, !"_ZmiILi3EE3vecIXT_EERKS1_S3_: argument 0"}
!24 = distinct !{!24, i1 true, !"_Z5crossRK3vecILi3EES2_"}
!25 = distinct !{!25, !24, !"_Z5crossRK3vecILi3EES2_: argument 0"}
!26 = !{!23}
!27 = !{!17, !15, i64 0}
!28 = !{!25}
!29 = distinct !{!29, !19, !31, !32}
!30 = distinct !{!30, !19, !32, !31}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!12, !11, i64 8}
!34 = distinct !{!34, i1 true, !"_ZdvILi4EE3vecIXT_EERKS1_RKd"}
!35 = distinct !{!35, !34, !"_ZdvILi4EE3vecIXT_EERKS1_RKd: argument 0"}
!36 = distinct !{!36, i1 true, !"_ZdvILi4EE3vecIXT_EERKS1_RKd"}
!37 = distinct !{!37, !36, !"_ZdvILi4EE3vecIXT_EERKS1_RKd: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZdvILi4EE3vecIXT_EERKS1_RKd"}
!39 = distinct !{!39, !38, !"_ZdvILi4EE3vecIXT_EERKS1_RKd: argument 0"}
!40 = distinct !{!40, i1 true, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!41 = distinct !{!41, !40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!42 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 8, !16, i64 24, i64 8, !16}
!43 = !{!35}
!44 = !{!37}
!45 = !{!39}
!46 = !{!41}
!47 = !{!17, !15, i64 16}
!48 = distinct !{!48, i1 true, !"_ZNK3matILi3ELi3EE16invert_transposeEv"}
!49 = distinct !{!49, !48, !"_ZNK3matILi3ELi3EE16invert_transposeEv: argument 0"}
!50 = distinct !{!50, !19}
!51 = !{!7, !7, i64 0}
!52 = !{!"_ZTS3vecILi4EE", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!53 = !{!52, !15, i64 24}
!54 = !{!49}
!55 = !{!52, !15, i64 16}
!56 = !{!"vtable pointer", !5, i64 0}
!57 = !{!56, !56, i64 0}
end_hunk_0
