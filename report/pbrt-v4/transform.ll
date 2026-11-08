Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform?download=true
inline.NumInlined: 2588
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK4pbrt9TransformclERKNS_7Bounds3IfEE:.peel.begin
  %i.hb = fadd float %i.gz, %i.ha
  %i.hc = fadd float %i.hb, %i.gh
  %i.hd = fadd float %i.q, %i.hc                  ; 2 uses
  %i.he = insertelement <2 x float> poison, float %.sroa.013.0.vec.extract.i, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = fmul <2 x float> %i.hf, %i.t
  %i.hh = insertelement <2 x float> poison, float %.sroa.013.4.vec.extract.i, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x float> %i.hi, %i.u
  %i.hk = fadd <2 x float> %i.hg, %i.hj
  %i.hl = fadd <2 x float> %i.hk, %i.gk
  %i.hm = fadd <2 x float> %i.s, %i.hl            ; 3 uses
  %i.hn = extractelement <2 x float> %i.hm, i64 1 ; 2 uses
  %i.ho = fcmp oeq float %i.hn, 1.000000e+00      ; 2 uses
  %i.hp = fdiv float %i.hd, %i.hn
  %.sroa.495.0.i = select i1 %i.ho, float %i.hd, float %i.hp ; 4 uses
  %i.hq = fcmp olt float %.sroa.495.0.i, %.sroa.speculated.i.i2027
  %.sroa.speculated.i.i = select i1 %i.hq, float %.sroa.495.0.i, float %.sroa.speculated.i.i2027 ; 2 uses
  %i.hr = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hs = insertelement <2 x float> %i.hr, float %i.gy, i64 0 ; 2 uses
  %i.ht = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fdiv <2 x float> %i.hs, %i.ht
  %i.hv = insertelement <2 x i1> poison, i1 %i.ho, i64 0
  %i.hw = shufflevector <2 x i1> %i.hv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.hx = select <2 x i1> %i.hw, <2 x float> %i.hs, <2 x float> %i.hu ; 4 uses
  %i.hy = fcmp olt <2 x float> %i.hx, %.sroa.015.4.vec.insert.i.i1828
  %i.hz = select <2 x i1> %i.hy, <2 x float> %i.hx, <2 x float> %.sroa.015.4.vec.insert.i.i1828 ; 2 uses
  %i.ia = fcmp olt <2 x float> %.sroa.015.4.vec.insert.i35.i2226, %i.hx
  %i.ib = select <2 x i1> %i.ia, <2 x float> %i.hx, <2 x float> %.sroa.015.4.vec.insert.i35.i2226 ; 2 uses
  %i.ic = fcmp olt float %.sroa.speculated.i33.i2425, %.sroa.495.0.i
  %.sroa.speculated.i33.i = select i1 %i.ic, float %.sroa.495.0.i, float %.sroa.speculated.i33.i2425 ; 2 uses
  %i.id = add nuw nsw i32 %.029, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.id, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.a, !llvm.loop !113
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4pbrt9Transform15SwapsHandednessEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !11 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !11 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load float, ptr %i.l, align 4, !tbaa !11 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load float, ptr %i.n, align 4, !tbaa !11 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !11 ; 2 uses
  %i.r = fmul float %i.k, %i.o                    ; 2 uses
  %i.s = fneg float %i.r
  %i.t = tail call noundef float @llvm.fma.f32(float %i.i, float %i.q, float %i.s)
  %i.u = fneg float %i.k                          ; 2 uses
  %i.v = tail call noundef float @llvm.fma.f32(float %i.u, float %i.o, float %i.r)
  %i.w = fadd float %i.t, %i.v
  %i.x = fmul float %i.k, %i.m                    ; 2 uses
  %i.y = fneg float %i.x
  %i.z = tail call noundef float @llvm.fma.f32(float %i.g, float %i.q, float %i.y)
  %i.aa = tail call noundef float @llvm.fma.f32(float %i.u, float %i.m, float %i.x)
  %i.ab = fadd float %i.aa, %i.z                  ; 2 uses
  %i.ac = fmul float %i.i, %i.m                   ; 2 uses
  %i.ad = fneg float %i.ac
  %i.ae = tail call noundef float @llvm.fma.f32(float %i.g, float %i.o, float %i.ad)
  %i.af = fneg float %i.i
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float %i.m, float %i.ac)
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = fmul float %i.c, %i.ab                  ; 2 uses
  %i.aj = fneg float %i.ai
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.a, float %i.w, float %i.aj)
  %i.al = fneg float %i.c
  %i.am = tail call noundef float @llvm.fma.f32(float %i.al, float %i.ab, float %i.ai)
  %i.an = fadd float %i.ak, %i.am
  %i.ao = tail call noundef float @llvm.fma.f32(float %i.e, float %i.ah, float %i.an)
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  ret i1 %i.ap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt9TransformcvNS_10QuaternionEEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !11 ; 2 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !11 ; 2 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = fadd float %i.h, 1.000000e+00
  %i.l = tail call noundef float @sqrtf(float noundef %i.k) #28 ; 2 uses
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fdiv float 5.000000e-01, %i.l            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load <8 x float>, ptr %i.o, align 4, !tbaa !11 ; 2 uses
  %i.q = shufflevector <8 x float> %i.p, <8 x float> poison, <2 x i32> <i32 0, i32 7>
  %i.r = shufflevector <8 x float> %i.p, <8 x float> poison, <2 x i32> <i32 6, i32 4>
  %i.s = fsub <2 x float> %i.q, %i.r
  %i.t = insertelement <2 x float> poison, float %i.n, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.w = fmul <2 x float> %i.u, %i.v
  %i.x = load float, ptr %i.j, align 4, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !11
  %i.aa = fsub float %i.x, %i.z
  %i.ab = fmul float %i.n, %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %.sroa.7.8.vec.insert138 = insertelement <2 x float> %i.ac, float %i.m, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ad = fcmp ogt float %i.d, %i.b               ; 2 uses
  %i.ae = zext i1 %i.ad to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !11
  %i.ai = fcmp ogt float %i.g, %i.ah
  %i.aj = zext i1 %i.ad to i64
  %i.ak = select i1 %i.ai, i64 2, i64 %i.aj       ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @__const._ZNK4pbrt9TransformcvNS_10QuaternionEEv.nxt, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27
  %i.an = sext i32 %i.am to i64                   ; 6 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZNK4pbrt9TransformcvNS_10QuaternionEEv.nxt, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ak ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ak
  %i.as = load float, ptr %i.ar, align 4, !tbaa !11
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %i.an ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.an
  %i.av = load float, ptr %i.au, align 4, !tbaa !11
  %i.aw = sext i32 %i.ap to i64                   ; 5 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11
  %i.ba = fadd float %i.av, %i.az
  %i.bb = fsub float %i.as, %i.ba
  %i.bc = fadd float %i.bb, 1.000000e+00          ; 2 uses
  %i.bd = fcmp ogt float %i.bc, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.bd, float %i.bc, float 0.000000e+00 ; 2 uses
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 3 uses
  %i.be = fmul float %sqrt.i, 5.000000e-01
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ak
  store float %i.be, ptr %i.bf, align 4, !tbaa !11
  %i.bg = fcmp une float %.sroa.speculated.i, 0.000000e+00
  %i.bh = fdiv float 5.000000e-01, %sqrt.i
  %.0 = select i1 %i.bg, float %i.bh, float %sqrt.i ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.an
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.aw
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !11
  %i.bm = fsub float %i.bj, %i.bl
  %i.bn = fmul float %i.bm, %.0
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ak
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !11
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.an
  %i.br = load float, ptr %i.bq, align 4, !tbaa !11
  %i.bs = fadd float %i.bp, %i.br
  %i.bt = fmul float %i.bs, %.0
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.an
  store float %i.bt, ptr %i.bu, align 4, !tbaa !11
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ak
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !11
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.aw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !11
  %i.bz = fadd float %i.bw, %i.by
  %i.ca = fmul float %.0, %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aw
  store float %i.ca, ptr %i.cb, align 4, !tbaa !11
  %i.cc = load <2 x float>, ptr %i.a, align 8, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !11
  %i.cf = insertelement <2 x float> poison, float %i.ce, i64 0
  %.sroa.7.8.vec.insert = insertelement <2 x float> %i.cf, float %i.bn, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0126.0 = phi <2 x float> [ %i.w, %bb.b ], [ %i.cc, %bb.c ]
  %.sroa.7.0 = phi <2 x float> [ %.sroa.7.8.vec.insert138, %bb.b ], [ %.sroa.7.8.vec.insert, %bb.c ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0126.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.7.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt9Transform9DecomposeEPNS_7Vector3IfEEPNS_12SquareMatrixILi4EEES6_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1, ptr noundef initializes((0, 64)) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pstd::optional", align 4    ; 17 uses
  %5 = alloca %"class.pstd::optional", align 4    ; 6 uses
  %6 = alloca %"class.pbrt::SquareMatrix.0", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !11
  store float %i.b, ptr %1, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.d, ptr %i.e, align 4, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load float, ptr %i.f, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.g, ptr %i.h, align 4, !tbaa !31
  %.sroa.6188.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.9195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.11.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.14209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.15.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.16.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load <2 x float>, ptr %0, align 4        ; 4 uses
  %7 = load <2 x float>, ptr %.sroa.9195.0..sroa_idx, align 4 ; 4 uses
  %8 = load <3 x float>, ptr %.sroa.14209.0..sroa_idx, align 4 ; 4 uses
  %9 = shufflevector <3 x float> %8, <3 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = load <2 x float>, ptr %.sroa.6188.0..sroa_idx.a, align 4 ; 4 uses
  %.sroa.6188.0.copyload = load float, ptr %.sroa.6188.0..sroa_idx, align 4 ; 3 uses
  %i.j = load <2 x float>, ptr %.sroa.10.0..sroa_idx198, align 4 ; 4 uses
  %.sroa.11.0.copyload203 = load float, ptr %.sroa.11.0..sroa_idx202, align 4 ; 3 uses
  %i.k = load <2 x float>, ptr %.sroa.15.0..sroa_idx212, align 4 ; 3 uses
  %.sroa.16.0.copyload217 = load float, ptr %.sroa.16.0..sroa_idx216, align 4 ; 3 uses
  %11 = extractelement <2 x float> %i.i, i64 0    ; 2 uses
  store float %11, ptr %2, align 4
  %.sroa.5.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %12 = extractelement <2 x float> %10, i64 0
  store float %12, ptr %.sroa.5.0..sroa_idx186, align 4
  %.sroa.6188.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float %.sroa.6188.0.copyload, ptr %.sroa.6188.0..sroa_idx189, align 4
  %.sroa.7.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx193, align 4
  %.sroa.9195.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = extractelement <2 x float> %7, i64 0     ; 2 uses
  store float %i.l, ptr %.sroa.9195.0..sroa_idx196, align 4
  %.sroa.10.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %13 = extractelement <2 x float> %i.j, i64 0
  store float %13, ptr %.sroa.10.0..sroa_idx200, align 4
  %.sroa.14209.0..sroa_idx210.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %.sroa.11.0.copyload203, ptr %.sroa.14209.0..sroa_idx210.a, align 4
  %.sroa.15.0..sroa_idx214.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float 0.000000e+00, ptr %.sroa.15.0..sroa_idx214.a, align 4
  %.sroa.14209.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %14 = extractelement <3 x float> %8, i64 0      ; 2 uses
  store float %14, ptr %.sroa.14209.0..sroa_idx210, align 4
  %.sroa.15.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %15 = extractelement <2 x float> %i.k, i64 0
  store float %15, ptr %.sroa.15.0..sroa_idx214, align 4
  %.sroa.16.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %.sroa.16.0.copyload217, ptr %.sroa.16.0..sroa_idx218, align 4
  %.sroa.17220.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.23230.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %2, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.17220.0..sroa_idx221, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.23230.0..sroa_idx231, align 4, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.11141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %16 = shufflevector <2 x float> %i.i, <2 x float> %7, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <8 x float> %16, <8 x float> <float poison, float poison, float poison, float 0.000000e+00, float poison, float poison, float poison, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 poison, i32 11, i32 poison, i32 poison, i32 poison, i32 15>
  %18 = shufflevector <8 x float> %17, <8 x float> %9, <8 x i32> <i32 0, i32 1, i32 8, i32 3, i32 poison, i32 poison, i32 poison, i32 7>
  %19 = shufflevector <2 x float> %10, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x float> %18, <8 x float> %19, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 7>
  %i.o = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <8 x float> %20, <8 x float> %i.o, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 7>
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.r = shufflevector <8 x float> %i.p, <8 x float> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 7>
  %i.s = insertelement <8 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, float %.sroa.6188.0.copyload, i64 0
  %21 = insertelement <8 x float> %i.s, float %.sroa.11.0.copyload203, i64 1
  %22 = insertelement <8 x float> %21, float %.sroa.16.0.copyload217, i64 2
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit, %bb.a
  %.025 = phi i32 [ 0, %bb.a ], [ %i.bh, %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit ] ; 2 uses
  %i.t = phi <8 x float> [ %i.r, %bb.a ], [ %i.bm, %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit ]
  %i.u = phi <8 x float> [ %22, %bb.a ], [ %i.bn, %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store <8 x float> %i.t, ptr %6, align 4, !tbaa !11, !alias.scope !122
  store <8 x float> %i.u, ptr %i.m, align 4, !tbaa !11, !alias.scope !122
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !123
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %5, ptr noundef nonnull align 4 dereferenceable(64) %6), !noalias !123
  %i.v = load i8, ptr %i.n, align 4, !tbaa !14, !range !15, !noalias !123, !noundef !16
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA16_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 1435, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(16) @.str.26) #29, !noalias !123
  unreachable

_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit: ; preds = %bb.b
  %i.x = load <8 x float>, ptr %5, align 4
  %i.y = load <8 x float>, ptr %.sroa.11141.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.z = load <8 x float>, ptr %2, align 4        ; 4 uses
  %.sroa.899.0.copyload = load float, ptr %.sroa.6188.0..sroa_idx189, align 4
  %.sroa.696.0.copyload = load float, ptr %.sroa.5.0..sroa_idx186, align 4
  %i.aa = load <8 x float>, ptr %.sroa.14209.0..sroa_idx210, align 4 ; 3 uses
  %.sroa.22.0.copyload = load float, ptr %.sroa.15.0..sroa_idx214, align 4
  %i.ab = fadd <8 x float> %i.x, %i.z
  %i.ac = fadd <8 x float> %i.y, %i.aa
  %i.ad = fmul <8 x float> %i.ab, splat (float 5.000000e-01) ; 7 uses
  %i.ae = fmul <8 x float> %i.ac, splat (float 5.000000e-01) ; 5 uses
  %i.af = shufflevector <8 x float> %i.z, <8 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.696.0.copyload, i64 1
  %i.ah = shufflevector <8 x float> %i.ad, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ai) ; 2 uses
  %shift = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aj, %shift
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = extractelement <8 x float> %i.ad, i64 2
  %i.am = fsub float %.sroa.899.0.copyload, %i.al
  %i.an = call noundef float @llvm.fabs.f32(float %i.am)
  %i.ao = fadd float %i.ak, %i.an                 ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 0.000000e+00
  %.sroa.speculated = select i1 %i.ap, float %i.ao, float 0.000000e+00 ; 2 uses
  %i.aq = shufflevector <8 x float> %i.z, <8 x float> poison, <2 x i32> <i32 4, i32 5>
  %i.ar = shufflevector <8 x float> %i.ad, <8 x float> poison, <2 x i32> <i32 4, i32 5>
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.as) ; 2 uses
  %shift234 = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop235 = fadd <2 x float> %i.at, %shift234
  %i.au = shufflevector <8 x float> %i.aa, <8 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %.sroa.22.0.copyload, i64 1
  %i.aw = shufflevector <8 x float> %i.ae, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %i.ay = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ax) ; 2 uses
  %shift237 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop238 = fadd <2 x float> %i.ay, %shift237
  %i.az = shufflevector <8 x float> %i.z, <8 x float> %i.aa, <2 x i32> <i32 6, i32 10>
  %i.ba = shufflevector <8 x float> %i.ad, <8 x float> %i.ae, <2 x i32> <i32 6, i32 10>
  %i.bb = fsub <2 x float> %i.az, %i.ba
  %i.bc = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bb) ; 2 uses
  %foldExtExtBinop240 = fadd <2 x float> %foldExtExtBinop235, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop240, i64 0 ; 2 uses
  %i.be = fcmp olt float %.sroa.speculated, %i.bd
  %.sroa.speculated.1 = select i1 %i.be, float %i.bd, float %.sroa.speculated ; 2 uses
  %shift242 = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop243 = fadd <2 x float> %foldExtExtBinop238, %shift242
  %i.bf = extractelement <2 x float> %foldExtExtBinop243, i64 0 ; 2 uses
  %i.bg = fcmp olt float %.sroa.speculated.1, %i.bf
  %.sroa.speculated.2 = select i1 %i.bg, float %i.bf, float %.sroa.speculated.1
  store <8 x float> %i.ad, ptr %2, align 4
  store <8 x float> %i.ae, ptr %.sroa.14209.0..sroa_idx210, align 4
  %i.bh = add nuw nsw i32 %.025, 1
  %i.bi = icmp samesign ult i32 %.025, 99
  %i.bj = fpext float %.sroa.speculated.2 to double
  %i.bk = fcmp ogt double %i.bj, 1.000000e-04
  %i.bl = select i1 %i.bi, i1 %i.bk, i1 false
  %i.bm = shufflevector <8 x float> %i.ad, <8 x float> %i.ae, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bn = shufflevector <8 x float> %i.ad, <8 x float> %i.ae, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  br i1 %i.bl, label %bb.b, label %bb.d, !llvm.loop !119

bb.d:                                             ; preds = %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !124
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %4, ptr noundef nonnull align 4 dereferenceable(64) %2), !noalias !124
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !14, !range !15, !noalias !124, !noundef !16
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4pbrt8LogFatalIJRA16_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 1435, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(16) @.str.26) #29, !noalias !124
  unreachable

_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit50: ; preds = %bb.d
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 52
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60
  %23 = load <8 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 5 uses
  %.sroa.16.0.copyload.a = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %.sroa.17.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4 ; 2 uses
  %.sroa.17.0.copyload.a = load float, ptr %.sroa.13.0..sroa_idx, align 4 ; 2 uses
  %.sroa.15.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4 ; 2 uses
  %.sroa.18.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.13.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.12.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.br = extractelement <8 x float> %23, i64 0   ; 2 uses
  %i.bs = call noundef float @llvm.fma.f32(float %i.br, float %11, float 0.000000e+00)
  %i.bt = call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload, float %i.l, float %i.bs)
  %i.bu = call noundef float @llvm.fma.f32(float %.sroa.13.0.copyload, float %14, float %i.bt)
  %i.bv = call noundef float @llvm.fma.f32(float %.sroa.18.0.copyload, float 0.000000e+00, float %i.bu)
  %i.bw = call noundef float @llvm.fma.f32(float %i.br, float 0.000000e+00, float 0.000000e+00)
  %i.bx = call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload, float 0.000000e+00, float %i.bw)
  %i.by = call noundef float @llvm.fma.f32(float %.sroa.13.0.copyload, float 0.000000e+00, float %i.bx)
  %24 = fadd float %.sroa.18.0.copyload, %i.by
  %25 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %26 = shufflevector <2 x float> %i.i, <2 x float> %10, <4 x i32> <i32 2, i32 3, i32 0, i32 2>
  %27 = call <4 x float> @llvm.fma.v4f32(<4 x float> %25, <4 x float> %26, <4 x float> zeroinitializer)
  %28 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %29 = shufflevector <2 x float> %7, <2 x float> %i.j, <4 x i32> <i32 2, i32 3, i32 0, i32 2>
  %30 = call <4 x float> @llvm.fma.v4f32(<4 x float> %28, <4 x float> %29, <4 x float> %27)
  %31 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 6, i32 6>
  %32 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %33 = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %34 = shufflevector <4 x float> %33, <4 x float> %32, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %35 = call <4 x float> @llvm.fma.v4f32(<4 x float> %31, <4 x float> %34, <4 x float> %30)
  %36 = shufflevector <8 x float> %23, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %37 = call <4 x float> @llvm.fma.v4f32(<4 x float> %36, <4 x float> zeroinitializer, <4 x float> %35) ; 4 uses
  %i.bz = call noundef float @llvm.fma.f32(float %.sroa.15.0.copyload, float %.sroa.6188.0.copyload, float 0.000000e+00)
  %i.ca = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload.a, float %.sroa.11.0.copyload203, float %i.bz)
  %i.cb = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float %.sroa.16.0.copyload217, float %i.ca)
  %i.cc = call noundef float @llvm.fma.f32(float %.sroa.16.0.copyload.a, float 0.000000e+00, float %i.cb)
  %i.cd = call noundef float @llvm.fma.f32(float %.sroa.15.0.copyload, float 0.000000e+00, float 0.000000e+00)
  %i.ce = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload.a, float 0.000000e+00, float %i.cd)
  %i.cf = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload, float 0.000000e+00, float %i.ce)
  %i.cg = fadd float %.sroa.16.0.copyload.a, %i.cf
  %38 = load <8 x float>, ptr %4, align 4         ; 5 uses
  %.sroa.4.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %39 = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %40 = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %41 = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !124
  %42 = shufflevector <8 x float> %38, <8 x float> poison, <2 x i32> <i32 0, i32 poison>
  %43 = shufflevector <2 x float> %42, <2 x float> %40, <2 x i32> <i32 0, i32 3>
  %i.ch = call <2 x float> @llvm.fma.v2f32(<2 x float> %43, <2 x float> zeroinitializer, <2 x float> zeroinitializer)
  %44 = shufflevector <2 x float> %41, <2 x float> %39, <2 x i32> <i32 0, i32 2>
  %45 = call <2 x float> @llvm.fma.v2f32(<2 x float> %44, <2 x float> zeroinitializer, <2 x float> %i.ch)
  %46 = shufflevector <2 x float> %41, <2 x float> %39, <2 x i32> <i32 1, i32 3>
  %47 = call <2 x float> @llvm.fma.v2f32(<2 x float> %46, <2 x float> zeroinitializer, <2 x float> %45)
  %48 = insertelement <2 x float> %40, float %.sroa.4.0.copyload, i64 1
  %49 = fadd <2 x float> %48, %47
  %50 = shufflevector <8 x float> %38, <8 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 0, i32 0, i32 9, i32 4, i32 4, i32 4, i32 11>
  %51 = shufflevector <2 x float> %i.i, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %52 = shufflevector <8 x float> %51, <8 x float> <float poison, float poison, float poison, float -0.000000e+00, float poison, float poison, float poison, float -0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 poison, i32 11, i32 0, i32 1, i32 poison, i32 15>
  %53 = shufflevector <2 x float> %10, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 1, i32 poison>
  %54 = shufflevector <8 x float> %52, <8 x float> %53, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 5, i32 14, i32 7>
  %55 = shufflevector <2 x float> %49, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %56 = shufflevector <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <8 x float> %55, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 12>
  %57 = call <8 x float> @llvm.fma.v8f32(<8 x float> %50, <8 x float> %54, <8 x float> %56)
  %58 = shufflevector <8 x float> %38, <8 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 1, i32 1, i32 1, i32 9, i32 5, i32 5, i32 5, i32 11>
  %59 = shufflevector <2 x float> %7, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %60 = shufflevector <8 x float> %59, <8 x float> <float poison, float poison, float poison, float -0.000000e+00, float poison, float poison, float poison, float -0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 poison, i32 11, i32 0, i32 1, i32 poison, i32 15>
  %61 = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 1, i32 poison>
  %62 = shufflevector <8 x float> %60, <8 x float> %61, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 5, i32 14, i32 7>
  %63 = call <8 x float> @llvm.fma.v8f32(<8 x float> %58, <8 x float> %62, <8 x float> %57)
  %64 = shufflevector <8 x float> %38, <8 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 2, i32 2, i32 2, i32 9, i32 6, i32 6, i32 6, i32 11>
  %65 = shufflevector <3 x float> %8, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 0, i32 1, i32 2, i32 poison>
  %66 = shufflevector <8 x float> %65, <8 x float> <float poison, float poison, float poison, float -0.000000e+00, float poison, float poison, float poison, float -0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 4, i32 5, i32 6, i32 15>
  %67 = call <8 x float> @llvm.fma.v8f32(<8 x float> %64, <8 x float> %66, <8 x float> %63)
  %68 = shufflevector <8 x float> %38, <8 x float> <float poison, float -0.000000e+00, float poison, float -0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 3, i32 3, i32 3, i32 9, i32 7, i32 7, i32 7, i32 11>
  %69 = call <8 x float> @llvm.fma.v8f32(<8 x float> %68, <8 x float> zeroinitializer, <8 x float> %67)
  store <8 x float> %69, ptr %3, align 4
  %.sroa.972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.bv, ptr %.sroa.972.0..sroa_idx, align 4
  %.sroa.1073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %70 = extractelement <4 x float> %37, i64 0
  store float %70, ptr %.sroa.1073.0..sroa_idx, align 4
  %.sroa.1275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %71 = extractelement <4 x float> %37, i64 1
  store float %71, ptr %.sroa.1275.0..sroa_idx, align 4
  %.sroa.1477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float %24, ptr %.sroa.1477.0..sroa_idx, align 4
  %.sroa.1578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %72 = extractelement <4 x float> %37, i64 2
  store float %72, ptr %.sroa.1578.0..sroa_idx, align 4
  %.sroa.1679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %73 = extractelement <4 x float> %37, i64 3
  store float %73, ptr %.sroa.1679.0..sroa_idx, align 4
  %.sroa.1780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store float %i.cc, ptr %.sroa.1780.0..sroa_idx, align 4
  %.sroa.1881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60
  store float %i.cg, ptr %.sroa.1881.0..sroa_idx, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt9TransformclERKNS_18SurfaceInteractionE(ptr dead_on_unwind noalias nofree writable sret(%"class.pbrt::SurfaceInteraction") align 8 captures(none) initializes((64, 248)) %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i8 0, i64 184, i1 false)
  tail call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.0158.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 4 uses
  %.sroa.2159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.c = load <1 x float>, ptr %.sroa.2159.0..sroa_idx, align 8 ; 2 uses
  %i.d = shufflevector <1 x float> %i.c, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load float, ptr %i.h, align 4, !tbaa !11 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load float, ptr %i.j, align 4, !tbaa !11 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load float, ptr %i.l, align 4, !tbaa !11 ; 5 uses
  %i.n = load <2 x float>, ptr %i.e, align 4, !tbaa !11 ; 6 uses
  %i.o = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.o, %i.n
  %i.q = load <2 x float>, ptr %i.f, align 4, !tbaa !11 ; 6 uses
  %i.r = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = fmul <2 x float> %i.r, %i.q
  %i.t = fadd <2 x float> %i.p, %i.s
  %i.u = load <2 x float>, ptr %i.g, align 4, !tbaa !11 ; 6 uses
  %i.v = shufflevector <1 x float> %i.c, <1 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.v, %i.u
  %i.x = fadd <2 x float> %i.t, %i.w              ; 3 uses
  %i.y = fmul <2 x float> %i.x, %i.x              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.aa, align 4 ; 2 uses
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 4 ; 3 uses
  %i.ab = load float, ptr %1, align 4, !tbaa !11  ; 7 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 0 ; 3 uses
  %i.ac = fmul float %.sroa.03.0.vec.extract.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !11 ; 7 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 1 ; 3 uses
  %i.af = fmul float %.sroa.03.4.vec.extract.i, %i.ae
  %i.ag = fadd float %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11 ; 7 uses
  %i.aj = fmul float %.sroa.2141.0.copyload, %i.ai
  %i.ak = fadd float %i.ag, %i.aj                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !11 ; 7 uses
  %i.an = fmul float %.sroa.03.0.vec.extract.i, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !11 ; 7 uses
  %i.aq = fmul float %.sroa.03.4.vec.extract.i, %i.ap
  %i.ar = fadd float %i.an, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load float, ptr %i.as, align 4, !tbaa !11 ; 7 uses
  %i.au = fmul float %.sroa.2141.0.copyload, %i.at
  %i.av = fadd float %i.ar, %i.au                 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !11 ; 7 uses
  %i.ay = fmul float %.sroa.03.0.vec.extract.i, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ba = load float, ptr %i.az, align 4, !tbaa !11 ; 7 uses
  %i.bb = fmul float %.sroa.03.4.vec.extract.i, %i.ba
  %i.bc = fadd float %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load float, ptr %i.bd, align 4, !tbaa !11 ; 7 uses
  %i.bf = fmul float %.sroa.2141.0.copyload, %i.be
  %i.bg = fadd float %i.bc, %i.bf                 ; 3 uses
  %i.bh = fmul float %i.ak, %i.ak
  %i.bi = fmul float %i.av, %i.av
  %i.bj = fadd float %i.bh, %i.bi
  %i.bk = fmul float %i.bg, %i.bg
  %i.bl = fadd float %i.bj, %i.bk
  %sqrt.i.i206 = tail call noundef float @llvm.sqrt.f32(float %i.bl) ; 3 uses
  %i.bm = fdiv float %i.ak, %sqrt.i.i206
  %i.bn = fdiv float %i.av, %sqrt.i.i206
  %i.bo = fdiv float %i.bg, %sqrt.i.i206
  %.sroa.0.0.vec.insert.i.i207 = insertelement <2 x float> poison, float %i.bm, i64 0
  %.sroa.0.4.vec.insert.i.i208 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i207, float %i.bn, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i.i208, ptr %i.bp, align 4
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bo, ptr %.sroa.4145.0..sroa_idx, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load float, ptr %i.bq, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.br, ptr %i.bs, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !46
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bx = load i64, ptr %i.bv, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.0124.0.copyload = load <2 x float>, ptr %i.by, align 8 ; 2 uses
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.2125.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i211 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 0 ; 3 uses
  %i.bz = fmul float %i.ab, %.sroa.03.0.vec.extract.i211
  %.sroa.03.4.vec.extract.i212 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 1 ; 3 uses
  %i.ca = fmul float %i.ae, %.sroa.03.4.vec.extract.i212
  %i.cb = fadd float %i.bz, %i.ca
  %i.cc = fmul float %i.ai, %.sroa.2125.0.copyload
  %i.cd = fadd float %i.cc, %i.cb
  %i.ce = fmul float %i.am, %.sroa.03.0.vec.extract.i211
  %i.cf = fmul float %i.ap, %.sroa.03.4.vec.extract.i212
  %i.cg = fadd float %i.ce, %i.cf
  %i.ch = fmul float %i.at, %.sroa.2125.0.copyload
  %i.ci = fadd float %i.ch, %i.cg
  %i.cj = fmul float %i.ax, %.sroa.03.0.vec.extract.i211
  %i.ck = fmul float %i.ba, %.sroa.03.4.vec.extract.i212
  %i.cl = fadd float %i.cj, %i.ck
  %i.cm = fmul float %i.be, %.sroa.2125.0.copyload
  %i.cn = fadd float %i.cm, %i.cl
  %.sroa.046.0.vec.insert.i213 = insertelement <2 x float> poison, float %i.cd, i64 0
  %.sroa.046.4.vec.insert.i214 = insertelement <2 x float> %.sroa.046.0.vec.insert.i213, float %i.ci, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.046.4.vec.insert.i214, ptr %i.co, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.cn, ptr %.sroa.4127.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 92
  %.sroa.0114.0.copyload = load <2 x float>, ptr %i.cp, align 4 ; 2 uses
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100
  %.sroa.2115.0.copyload = load float, ptr %.sroa.2115.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i217 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 0 ; 3 uses
  %i.cq = fmul float %i.ab, %.sroa.03.0.vec.extract.i217
  %.sroa.03.4.vec.extract.i218 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 1 ; 3 uses
  %i.cr = fmul float %i.ae, %.sroa.03.4.vec.extract.i218
  %i.cs = fadd float %i.cq, %i.cr
  %i.ct = fmul float %i.ai, %.sroa.2115.0.copyload
  %i.cu = fadd float %i.ct, %i.cs
  %i.cv = fmul float %i.am, %.sroa.03.0.vec.extract.i217
  %i.cw = fmul float %i.ap, %.sroa.03.4.vec.extract.i218
  %i.cx = fadd float %i.cv, %i.cw
  %i.cy = fmul float %i.at, %.sroa.2115.0.copyload
  %i.cz = fadd float %i.cy, %i.cx
  %i.da = fmul float %i.ax, %.sroa.03.0.vec.extract.i217
  %i.db = fmul float %i.ba, %.sroa.03.4.vec.extract.i218
  %i.dc = fadd float %i.da, %i.db
  %i.dd = fmul float %i.be, %.sroa.2115.0.copyload
  %i.de = fadd float %i.dd, %i.dc
  %.sroa.046.0.vec.insert.i219 = insertelement <2 x float> poison, float %i.cu, i64 0
  %.sroa.046.4.vec.insert.i220 = insertelement <2 x float> %.sroa.046.0.vec.insert.i219, float %i.cz, i64 1
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <2 x float> %.sroa.046.4.vec.insert.i220, ptr %i.df, align 4
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.de, ptr %.sroa.4117.0..sroa_idx, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.0104.0.copyload = load <2 x float>, ptr %i.dg, align 8 ; 4 uses
  %.sroa.2105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.2105.0.copyload = load float, ptr %.sroa.2105.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i223 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i224 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 1
  %i.dh = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.n, %i.dh
  %i.dj = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dk = fmul <2 x float> %i.q, %i.dj
  %i.dl = fadd <2 x float> %i.di, %i.dk
  %i.dm = insertelement <2 x float> poison, float %.sroa.2105.0.copyload, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.u, %i.dn
  %i.dp = fadd <2 x float> %i.do, %i.dl
  %i.dq = fmul float %i.i, %.sroa.012.0.vec.extract.i223
  %i.dr = fmul float %i.k, %.sroa.012.4.vec.extract.i224
  %i.ds = fadd float %i.dq, %i.dr
  %i.dt = fmul float %i.m, %.sroa.2105.0.copyload
  %i.du = fadd float %i.dt, %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x float> %i.dp, ptr %i.dv, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.du, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 116
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.dw, align 4 ; 4 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 2 uses
  %.sroa.012.0.vec.extract.i229 = extractelement <2 x float> %.sroa.094.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i230 = extractelement <2 x float> %.sroa.094.0.copyload, i64 1
  %i.dx = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x float> %i.n, %i.dx
  %i.dz = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = fmul <2 x float> %i.q, %i.dz
  %i.eb = fadd <2 x float> %i.dy, %i.ea
  %i.ec = insertelement <2 x float> poison, float %.sroa.295.0.copyload, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.u, %i.ed
  %i.ef = fadd <2 x float> %i.ee, %i.eb
  %i.eg = fmul float %i.i, %.sroa.012.0.vec.extract.i229
  %i.eh = fmul float %i.k, %.sroa.012.4.vec.extract.i230
end_hunk_0
