Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/transform?download=true
inline.NumInlined: 2588
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK4pbrt9TransformclERKNS_7Bounds3IfEE:bb.a
  %.sroa.495.0.i.7 = select i1 %i.la, float %i.kt, float %i.lb ; 4 uses
  %i.lc = fcmp olt float %.sroa.495.0.i.7, %.sroa.speculated.i.i.6
  %.sroa.speculated.i.i.7 = select i1 %i.lc, float %.sroa.495.0.i.7, float %.sroa.speculated.i.i.6
  %i.ld = insertelement <2 x float> poison, float %.sroa.013.0.vec.extract.i.7, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fmul <2 x float> %i.le, %i.e
  %i.lg = insertelement <2 x float> poison, float %.sroa.013.4.vec.extract.i.7, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x float> %i.lh, %i.d
  %i.lj = fadd <2 x float> %i.lf, %i.li
  %i.lk = insertelement <2 x float> poison, float %.sroa.22.0.copyload.i27.i.7, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul <2 x float> %i.ll, %i.c
  %i.ln = fadd <2 x float> %i.lj, %i.lm
  %i.lo = fadd <2 x float> %i.f, %i.ln            ; 2 uses
  %i.lp = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fdiv <2 x float> %i.lo, %i.lq
  %i.ls = insertelement <2 x i1> poison, i1 %i.la, i64 0
  %i.lt = shufflevector <2 x i1> %i.ls, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.lu = select <2 x i1> %i.lt, <2 x float> %i.lo, <2 x float> %i.lr ; 4 uses
  %i.lv = fcmp olt <2 x float> %i.lu, %i.ki
  %i.lw = select <2 x i1> %i.lv, <2 x float> %i.lu, <2 x float> %i.ki
  %i.lx = fcmp olt <2 x float> %i.kk, %i.lu
  %i.ly = select <2 x i1> %i.lx, <2 x float> %i.lu, <2 x float> %i.kk
  %i.lz = fcmp olt float %.sroa.speculated.i33.i.6, %.sroa.495.0.i.7
  %.sroa.speculated.i33.i.7 = select i1 %i.lz, float %.sroa.495.0.i.7, float %.sroa.speculated.i33.i.6
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.lw, ptr %0, align 4
  store float %.sroa.speculated.i.i.7, ptr %i.mb, align 4
  store <2 x float> %i.ly, ptr %i.a, align 4
  store float %.sroa.speculated.i33.i.7, ptr %i.ma, align 4
  ret void
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
  %i.am = load i32, ptr %i.al, align 4, !tbaa !26
  %i.an = sext i32 %i.am to i64                   ; 6 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZNK4pbrt9TransformcvNS_10QuaternionEEv.nxt, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !26
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
  %4 = alloca %"class.pstd::optional", align 4    ; 19 uses
  %5 = alloca %"class.pstd::optional", align 4    ; 6 uses
  %6 = alloca %"class.pbrt::SquareMatrix.0", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !11
  store float %i.b, ptr %1, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.d, ptr %i.e, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load float, ptr %i.f, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.g, ptr %i.h, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.9195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.14209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.15.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load <2 x float>, ptr %0, align 4        ; 2 uses
  %i.j = load <2 x float>, ptr %.sroa.9195.0..sroa_idx, align 4 ; 2 uses
  %i.k = load <2 x float>, ptr %.sroa.14209.0..sroa_idx, align 4 ; 2 uses
  %7 = extractelement <2 x float> %i.i, i64 0     ; 5 uses
  %.sroa.5.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.6188.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = load <2 x float>, ptr %.sroa.5.0..sroa_idx184, align 4 ; 4 uses
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.7.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.9195.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = extractelement <2 x float> %i.j, i64 0   ; 5 uses
  %.sroa.10.0..sroa_idx200 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = load <2 x float>, ptr %.sroa.10.0..sroa_idx198, align 4 ; 4 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.12206.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.14209.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.o = extractelement <2 x float> %i.k, i64 0   ; 5 uses
  %.sroa.15.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.p = load <2 x float>, ptr %.sroa.15.0..sroa_idx212, align 4 ; 4 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  store float %7, ptr %2, align 4
  store <2 x float> %8, ptr %.sroa.5.0..sroa_idx186, align 4
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx193, align 4
  store float %i.l, ptr %.sroa.9195.0..sroa_idx196, align 4
  store <2 x float> %i.m, ptr %.sroa.10.0..sroa_idx200, align 4
  store float 0.000000e+00, ptr %.sroa.12206.0..sroa_idx207, align 4
  store float %i.o, ptr %.sroa.14209.0..sroa_idx210, align 4
  store <2 x float> %i.p, ptr %.sroa.15.0..sroa_idx214, align 4
  %.sroa.17220.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.23230.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %2, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.17220.0..sroa_idx221, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.23230.0..sroa_idx231, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.11141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %10 = shufflevector <2 x float> %i.i, <2 x float> %i.j, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison>
  %11 = shufflevector <8 x float> %10, <8 x float> <float poison, float poison, float poison, float 0.000000e+00, float poison, float poison, float poison, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 poison, i32 11, i32 4, i32 5, i32 poison, i32 15>
  %12 = shufflevector <2 x float> %i.k, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <8 x float> %11, <8 x float> %12, <8 x i32> <i32 0, i32 1, i32 8, i32 3, i32 4, i32 5, i32 9, i32 7>
  %14 = shufflevector <8 x float> <float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <8 x float> %9, <8 x i32> <i32 9, i32 poison, i32 poison, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.t = shufflevector <8 x float> %14, <8 x float> %i.n, <8 x i32> <i32 0, i32 9, i32 poison, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.u = shufflevector <8 x float> %i.t, <8 x float> %i.q, <8 x i32> <i32 0, i32 1, i32 9, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit, %bb.a
  %.025 = phi i32 [ 0, %bb.a ], [ %i.bj, %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit ] ; 2 uses
  %i.v = phi <8 x float> [ %13, %bb.a ], [ %i.bo, %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit ]
  %i.w = phi <8 x float> [ %i.u, %bb.a ], [ %i.bp, %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store <8 x float> %i.v, ptr %6, align 4, !tbaa !11, !alias.scope !120
  store <8 x float> %i.w, ptr %i.r, align 4, !tbaa !11, !alias.scope !120
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !121
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %5, ptr noundef nonnull align 4 dereferenceable(64) %6), !noalias !121
  %i.x = load i8, ptr %i.s, align 4, !tbaa !14, !range !15, !noalias !121, !noundef !16
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA16_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 1435, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(16) @.str.26) #29, !noalias !121
  unreachable

_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit: ; preds = %bb.b
  %i.z = load <8 x float>, ptr %5, align 4
  %i.aa = load <8 x float>, ptr %.sroa.11141.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ab = load <8 x float>, ptr %2, align 4       ; 4 uses
  %.sroa.899.0.copyload = load float, ptr %.sroa.6188.0..sroa_idx189, align 4
  %.sroa.696.0.copyload = load float, ptr %.sroa.5.0..sroa_idx186, align 4
  %i.ac = load <8 x float>, ptr %.sroa.14209.0..sroa_idx210, align 4 ; 3 uses
  %.sroa.22.0.copyload = load float, ptr %.sroa.15.0..sroa_idx214, align 4
  %i.ad = fadd <8 x float> %i.z, %i.ab
  %i.ae = fadd <8 x float> %i.aa, %i.ac
  %i.af = fmul <8 x float> %i.ad, splat (float 5.000000e-01) ; 7 uses
  %i.ag = fmul <8 x float> %i.ae, splat (float 5.000000e-01) ; 5 uses
  %i.ah = shufflevector <8 x float> %i.ab, <8 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ai = insertelement <2 x float> %i.ah, float %.sroa.696.0.copyload, i64 1
  %i.aj = shufflevector <8 x float> %i.af, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  %i.al = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ak) ; 2 uses
  %shift = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.al, %shift
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = extractelement <8 x float> %i.af, i64 2
  %i.ao = fsub float %.sroa.899.0.copyload, %i.an
  %i.ap = call noundef float @llvm.fabs.f32(float %i.ao)
  %i.aq = fadd float %i.am, %i.ap                 ; 2 uses
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  %.sroa.speculated = select i1 %i.ar, float %i.aq, float 0.000000e+00 ; 2 uses
  %i.as = shufflevector <8 x float> %i.ab, <8 x float> poison, <2 x i32> <i32 4, i32 5>
  %i.at = shufflevector <8 x float> %i.af, <8 x float> poison, <2 x i32> <i32 4, i32 5>
  %i.au = fsub <2 x float> %i.as, %i.at
  %i.av = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.au) ; 2 uses
  %shift234 = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop235 = fadd <2 x float> %i.av, %shift234
  %i.aw = shufflevector <8 x float> %i.ac, <8 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ax = insertelement <2 x float> %i.aw, float %.sroa.22.0.copyload, i64 1
  %i.ay = shufflevector <8 x float> %i.ag, <8 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.az = fsub <2 x float> %i.ax, %i.ay
  %i.ba = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.az) ; 2 uses
  %shift237 = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop238 = fadd <2 x float> %i.ba, %shift237
  %i.bb = shufflevector <8 x float> %i.ab, <8 x float> %i.ac, <2 x i32> <i32 6, i32 10>
  %i.bc = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <2 x i32> <i32 6, i32 10>
  %i.bd = fsub <2 x float> %i.bb, %i.bc
  %i.be = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bd) ; 2 uses
  %foldExtExtBinop240 = fadd <2 x float> %foldExtExtBinop235, %i.be
  %i.bf = extractelement <2 x float> %foldExtExtBinop240, i64 0 ; 2 uses
  %i.bg = fcmp olt float %.sroa.speculated, %i.bf
  %.sroa.speculated.1 = select i1 %i.bg, float %i.bf, float %.sroa.speculated ; 2 uses
  %shift242 = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop243 = fadd <2 x float> %foldExtExtBinop238, %shift242
  %i.bh = extractelement <2 x float> %foldExtExtBinop243, i64 0 ; 2 uses
  %i.bi = fcmp olt float %.sroa.speculated.1, %i.bh
  %.sroa.speculated.2 = select i1 %i.bi, float %i.bh, float %.sroa.speculated.1
  store <8 x float> %i.af, ptr %2, align 4
  store <8 x float> %i.ag, ptr %.sroa.14209.0..sroa_idx210, align 4
  %i.bj = add nuw nsw i32 %.025, 1
  %i.bk = icmp samesign ult i32 %.025, 99
  %i.bl = fpext float %.sroa.speculated.2 to double
  %i.bm = fcmp ogt double %i.bl, 1.000000e-04
  %i.bn = select i1 %i.bk, i1 %i.bm, i1 false
  %i.bo = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bp = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  br i1 %i.bn, label %bb.b, label %bb.d, !llvm.loop !117

bb.d:                                             ; preds = %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !122
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %4, ptr noundef nonnull align 4 dereferenceable(64) %2), !noalias !122
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !14, !range !15, !noalias !122, !noundef !16
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4pbrt8LogFatalIJRA16_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 1435, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(16) @.str.26) #29, !noalias !122
  unreachable

_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_.exit50: ; preds = %bb.d
  %15 = extractelement <2 x float> %8, i64 1      ; 4 uses
  %i.bt = extractelement <2 x float> %i.m, i64 1  ; 4 uses
  %i.bu = extractelement <2 x float> %i.p, i64 1  ; 4 uses
  %i.bv = extractelement <2 x float> %i.p, i64 0  ; 4 uses
  %i.bw = extractelement <2 x float> %i.m, i64 0  ; 4 uses
  %16 = extractelement <2 x float> %8, i64 0      ; 4 uses
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.sroa.12.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.14.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 44
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.16.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 52
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.18.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 60
  %17 = load <16 x float>, ptr %4, align 4        ; 6 uses
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx.a, align 4, !tbaa !9 ; 3 uses
  %.sroa.17.0.copyload.a = load float, ptr %.sroa.17.0..sroa_idx, align 4 ; 3 uses
  %.sroa.16.0.copyload = load float, ptr %.sroa.16.0..sroa_idx.a, align 4 ; 3 uses
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 4 ; 3 uses
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx.a, align 4 ; 3 uses
  %.sroa.13.0.copyload.a = load float, ptr %.sroa.13.0..sroa_idx, align 4 ; 3 uses
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx.a, align 4 ; 3 uses
  %.sroa.10.0.copyload.a = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 3 uses
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 3 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx.a, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !122
  %i.bx = extractelement <16 x float> %17, i64 0  ; 3 uses
  %i.by = call noundef float @llvm.fma.f32(float %i.bx, float %7, float 0.000000e+00)
  %i.bz = call noundef float @llvm.fma.f32(float %.sroa.4.0.copyload, float %i.l, float %i.by)
  %i.ca = call noundef float @llvm.fma.f32(float %.sroa.5.0.copyload, float %i.o, float %i.bz)
  %i.cb = call noundef float @llvm.fma.f32(float %.sroa.6.0.copyload, float 0.000000e+00, float %i.ca)
  %i.cc = call noundef float @llvm.fma.f32(float %i.bx, float %16, float 0.000000e+00)
  %i.cd = call noundef float @llvm.fma.f32(float %.sroa.4.0.copyload, float %i.bw, float %i.cc)
  %i.ce = call noundef float @llvm.fma.f32(float %.sroa.5.0.copyload, float %i.bv, float %i.cd)
  %i.cf = call noundef float @llvm.fma.f32(float %.sroa.6.0.copyload, float 0.000000e+00, float %i.ce)
  %i.cg = call noundef float @llvm.fma.f32(float %i.bx, float %15, float 0.000000e+00)
  %i.ch = call noundef float @llvm.fma.f32(float %.sroa.4.0.copyload, float %i.bt, float %i.cg)
  %i.ci = call noundef float @llvm.fma.f32(float %.sroa.5.0.copyload, float %i.bu, float %i.ch)
  %i.cj = call noundef float @llvm.fma.f32(float %.sroa.6.0.copyload, float 0.000000e+00, float %i.ci)
  %i.ck = call noundef float @llvm.fma.f32(float %.sroa.7.0.copyload, float %7, float 0.000000e+00)
  %i.cl = call noundef float @llvm.fma.f32(float %.sroa.8.0.copyload, float %i.l, float %i.ck)
  %i.cm = call noundef float @llvm.fma.f32(float %.sroa.9.0.copyload, float %i.o, float %i.cl)
  %i.cn = call noundef float @llvm.fma.f32(float %.sroa.10.0.copyload.a, float 0.000000e+00, float %i.cm)
  %i.co = call noundef float @llvm.fma.f32(float %.sroa.7.0.copyload, float %16, float 0.000000e+00)
  %i.cp = call noundef float @llvm.fma.f32(float %.sroa.8.0.copyload, float %i.bw, float %i.co)
  %i.cq = call noundef float @llvm.fma.f32(float %.sroa.9.0.copyload, float %i.bv, float %i.cp)
  %i.cr = call noundef float @llvm.fma.f32(float %.sroa.10.0.copyload.a, float 0.000000e+00, float %i.cq)
  %i.cs = call noundef float @llvm.fma.f32(float %.sroa.7.0.copyload, float %15, float 0.000000e+00)
  %i.ct = call noundef float @llvm.fma.f32(float %.sroa.8.0.copyload, float %i.bt, float %i.cs)
  %i.cu = call noundef float @llvm.fma.f32(float %.sroa.9.0.copyload, float %i.bu, float %i.ct)
  %i.cv = call noundef float @llvm.fma.f32(float %.sroa.10.0.copyload.a, float 0.000000e+00, float %i.cu)
  %18 = extractelement <16 x float> %17, i64 8    ; 3 uses
  %i.cw = call noundef float @llvm.fma.f32(float %18, float %7, float 0.000000e+00)
  %19 = call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload, float %i.l, float %i.cw)
  %20 = call noundef float @llvm.fma.f32(float %.sroa.13.0.copyload.a, float %i.o, float %19)
  %21 = call noundef float @llvm.fma.f32(float %.sroa.14.0.copyload, float 0.000000e+00, float %20)
  %i.cx = call noundef float @llvm.fma.f32(float %18, float %16, float 0.000000e+00)
  %i.cy = call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload, float %i.bw, float %i.cx)
  %i.cz = call noundef float @llvm.fma.f32(float %.sroa.13.0.copyload.a, float %i.bv, float %i.cy)
  %i.da = call noundef float @llvm.fma.f32(float %.sroa.14.0.copyload, float 0.000000e+00, float %i.cz)
  %i.db = call noundef float @llvm.fma.f32(float %18, float %15, float 0.000000e+00)
  %i.dc = call noundef float @llvm.fma.f32(float %.sroa.12.0.copyload, float %i.bt, float %i.db)
  %i.dd = call noundef float @llvm.fma.f32(float %.sroa.13.0.copyload.a, float %i.bu, float %i.dc)
  %i.de = call noundef float @llvm.fma.f32(float %.sroa.14.0.copyload, float 0.000000e+00, float %i.dd)
  %i.df = call noundef float @llvm.fma.f32(float %.sroa.15.0.copyload, float %7, float 0.000000e+00)
  %22 = call noundef float @llvm.fma.f32(float %.sroa.16.0.copyload, float %i.l, float %i.df)
  %23 = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload.a, float %i.o, float %22)
  %24 = call noundef float @llvm.fma.f32(float %.sroa.18.0.copyload, float 0.000000e+00, float %23)
  %25 = call noundef float @llvm.fma.f32(float %.sroa.15.0.copyload, float %16, float 0.000000e+00)
  %26 = call noundef float @llvm.fma.f32(float %.sroa.16.0.copyload, float %i.bw, float %25)
  %27 = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload.a, float %i.bv, float %26)
  %28 = call noundef float @llvm.fma.f32(float %.sroa.18.0.copyload, float 0.000000e+00, float %27)
  %29 = call noundef float @llvm.fma.f32(float %.sroa.15.0.copyload, float %15, float 0.000000e+00)
  %30 = call noundef float @llvm.fma.f32(float %.sroa.16.0.copyload, float %i.bt, float %29)
  %31 = call noundef float @llvm.fma.f32(float %.sroa.17.0.copyload.a, float %i.bu, float %30)
  %32 = call noundef float @llvm.fma.f32(float %.sroa.18.0.copyload, float 0.000000e+00, float %31)
  %33 = shufflevector <16 x float> %17, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.dg = call <4 x float> @llvm.fma.v4f32(<4 x float> %33, <4 x float> zeroinitializer, <4 x float> zeroinitializer)
  %34 = shufflevector <16 x float> %17, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %35 = call <4 x float> @llvm.fma.v4f32(<4 x float> %34, <4 x float> zeroinitializer, <4 x float> %i.dg)
  %36 = shufflevector <16 x float> %17, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.dh = call <4 x float> @llvm.fma.v4f32(<4 x float> %36, <4 x float> zeroinitializer, <4 x float> %35)
  %37 = shufflevector <16 x float> %17, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %38 = fadd <4 x float> %37, %i.dh               ; 4 uses
  store float %i.cb, ptr %3, align 4
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.cf, ptr %.sroa.467.0..sroa_idx, align 4
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cj, ptr %.sroa.568.0..sroa_idx, align 4
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %39 = extractelement <4 x float> %38, i64 0
  store float %39, ptr %.sroa.669.0..sroa_idx, align 4
  %.sroa.770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.cn, ptr %.sroa.770.0..sroa_idx, align 4
  %.sroa.871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.cr, ptr %.sroa.871.0..sroa_idx, align 4
  %.sroa.972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.cv, ptr %.sroa.972.0..sroa_idx, align 4
  %.sroa.1073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %40 = extractelement <4 x float> %38, i64 1
  store float %40, ptr %.sroa.1073.0..sroa_idx, align 4
  %.sroa.1174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %21, ptr %.sroa.1174.0..sroa_idx, align 4
  %.sroa.1275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  store float %i.da, ptr %.sroa.1275.0..sroa_idx, align 4
  %.sroa.1376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.de, ptr %.sroa.1376.0..sroa_idx, align 4
  %.sroa.1477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %41 = extractelement <4 x float> %38, i64 2
  store float %41, ptr %.sroa.1477.0..sroa_idx, align 4
  %.sroa.1578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %24, ptr %.sroa.1578.0..sroa_idx, align 4
  %.sroa.1679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store float %28, ptr %.sroa.1679.0..sroa_idx, align 4
  %.sroa.1780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store float %32, ptr %.sroa.1780.0..sroa_idx, align 4
  %.sroa.1881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60
  %42 = extractelement <4 x float> %38, i64 3
  store float %42, ptr %.sroa.1881.0..sroa_idx, align 4, !tbaa !9
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
  %.sroa.2159.0.copyload = load float, ptr %.sroa.2159.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load float, ptr %i.f, align 4, !tbaa !11 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load float, ptr %i.h, align 4, !tbaa !11 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = load float, ptr %i.j, align 4, !tbaa !11 ; 5 uses
  %i.l = load <2 x float>, ptr %i.c, align 4, !tbaa !11 ; 6 uses
  %i.m = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, %i.l
  %i.o = load <2 x float>, ptr %i.d, align 4, !tbaa !11 ; 6 uses
  %i.p = shufflevector <2 x float> %.sroa.0158.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x float> %i.p, %i.o
  %i.r = fadd <2 x float> %i.n, %i.q
  %i.s = load <2 x float>, ptr %i.e, align 4, !tbaa !11 ; 6 uses
  %i.t = insertelement <2 x float> poison, float %.sroa.2159.0.copyload, i64 0 ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = fadd <2 x float> %i.r, %i.v              ; 3 uses
  %i.x = fmul <2 x float> %i.w, %i.w              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.z, align 4 ; 2 uses
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 4 ; 3 uses
  %i.aa = load float, ptr %1, align 4, !tbaa !11  ; 7 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 0 ; 3 uses
  %i.ab = fmul float %.sroa.03.0.vec.extract.i, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11 ; 7 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0140.0.copyload, i64 1 ; 3 uses
  %i.ae = fmul float %.sroa.03.4.vec.extract.i, %i.ad
  %i.af = fadd float %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !11 ; 7 uses
  %i.ai = fmul float %.sroa.2141.0.copyload, %i.ah
  %i.aj = fadd float %i.af, %i.ai                 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !11 ; 7 uses
  %i.am = fmul float %.sroa.03.0.vec.extract.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !11 ; 7 uses
  %i.ap = fmul float %.sroa.03.4.vec.extract.i, %i.ao
  %i.aq = fadd float %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load float, ptr %i.ar, align 4, !tbaa !11 ; 7 uses
  %i.at = fmul float %.sroa.2141.0.copyload, %i.as
  %i.au = fadd float %i.aq, %i.at                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load float, ptr %i.av, align 4, !tbaa !11 ; 7 uses
  %i.ax = fmul float %.sroa.03.0.vec.extract.i, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11 ; 7 uses
  %i.ba = fmul float %.sroa.03.4.vec.extract.i, %i.az
  %i.bb = fadd float %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11 ; 7 uses
  %i.be = fmul float %.sroa.2141.0.copyload, %i.bd
  %i.bf = fadd float %i.bb, %i.be                 ; 3 uses
  %i.bg = fmul float %i.aj, %i.aj
  %i.bh = fmul float %i.au, %i.au
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = fmul float %i.bf, %i.bf
  %i.bk = fadd float %i.bi, %i.bj
  %sqrt.i.i206 = tail call noundef float @llvm.sqrt.f32(float %i.bk) ; 3 uses
  %i.bl = fdiv float %i.aj, %sqrt.i.i206
  %i.bm = fdiv float %i.au, %sqrt.i.i206
  %i.bn = fdiv float %i.bf, %sqrt.i.i206
  %.sroa.0.0.vec.insert.i.i207 = insertelement <2 x float> poison, float %i.bl, i64 0
  %.sroa.0.4.vec.insert.i.i208 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i207, float %i.bm, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %.sroa.0.4.vec.insert.i.i208, ptr %i.bo, align 4
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bn, ptr %.sroa.4145.0..sroa_idx, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bq, ptr %i.br, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bw = load i64, ptr %i.bu, align 4
  store i64 %i.bw, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.0124.0.copyload = load <2 x float>, ptr %i.bx, align 8 ; 2 uses
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.2125.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i211 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 0 ; 3 uses
  %i.by = fmul float %i.aa, %.sroa.03.0.vec.extract.i211
  %.sroa.03.4.vec.extract.i212 = extractelement <2 x float> %.sroa.0124.0.copyload, i64 1 ; 3 uses
  %i.bz = fmul float %i.ad, %.sroa.03.4.vec.extract.i212
  %i.ca = fadd float %i.by, %i.bz
  %i.cb = fmul float %i.ah, %.sroa.2125.0.copyload
  %i.cc = fadd float %i.cb, %i.ca
  %i.cd = fmul float %i.al, %.sroa.03.0.vec.extract.i211
  %i.ce = fmul float %i.ao, %.sroa.03.4.vec.extract.i212
  %i.cf = fadd float %i.cd, %i.ce
  %i.cg = fmul float %i.as, %.sroa.2125.0.copyload
  %i.ch = fadd float %i.cg, %i.cf
  %i.ci = fmul float %i.aw, %.sroa.03.0.vec.extract.i211
  %i.cj = fmul float %i.az, %.sroa.03.4.vec.extract.i212
  %i.ck = fadd float %i.ci, %i.cj
  %i.cl = fmul float %i.bd, %.sroa.2125.0.copyload
  %i.cm = fadd float %i.cl, %i.ck
  %.sroa.046.0.vec.insert.i213 = insertelement <2 x float> poison, float %i.cc, i64 0
  %.sroa.046.4.vec.insert.i214 = insertelement <2 x float> %.sroa.046.0.vec.insert.i213, float %i.ch, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.046.4.vec.insert.i214, ptr %i.cn, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.cm, ptr %.sroa.4127.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 92
  %.sroa.0114.0.copyload = load <2 x float>, ptr %i.co, align 4 ; 2 uses
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 100
  %.sroa.2115.0.copyload = load float, ptr %.sroa.2115.0..sroa_idx, align 4 ; 3 uses
  %.sroa.03.0.vec.extract.i217 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 0 ; 3 uses
  %i.cp = fmul float %i.aa, %.sroa.03.0.vec.extract.i217
  %.sroa.03.4.vec.extract.i218 = extractelement <2 x float> %.sroa.0114.0.copyload, i64 1 ; 3 uses
  %i.cq = fmul float %i.ad, %.sroa.03.4.vec.extract.i218
  %i.cr = fadd float %i.cp, %i.cq
  %i.cs = fmul float %i.ah, %.sroa.2115.0.copyload
  %i.ct = fadd float %i.cs, %i.cr
  %i.cu = fmul float %i.al, %.sroa.03.0.vec.extract.i217
  %i.cv = fmul float %i.ao, %.sroa.03.4.vec.extract.i218
  %i.cw = fadd float %i.cu, %i.cv
  %i.cx = fmul float %i.as, %.sroa.2115.0.copyload
  %i.cy = fadd float %i.cx, %i.cw
  %i.cz = fmul float %i.aw, %.sroa.03.0.vec.extract.i217
  %i.da = fmul float %i.az, %.sroa.03.4.vec.extract.i218
  %i.db = fadd float %i.cz, %i.da
  %i.dc = fmul float %i.bd, %.sroa.2115.0.copyload
  %i.dd = fadd float %i.dc, %i.db
  %.sroa.046.0.vec.insert.i219 = insertelement <2 x float> poison, float %i.ct, i64 0
  %.sroa.046.4.vec.insert.i220 = insertelement <2 x float> %.sroa.046.0.vec.insert.i219, float %i.cy, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <2 x float> %.sroa.046.4.vec.insert.i220, ptr %i.de, align 4
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.dd, ptr %.sroa.4117.0..sroa_idx, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.0104.0.copyload = load <2 x float>, ptr %i.df, align 8 ; 4 uses
  %.sroa.2105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.2105.0.copyload = load float, ptr %.sroa.2105.0..sroa_idx, align 8 ; 2 uses
  %.sroa.012.0.vec.extract.i223 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i224 = extractelement <2 x float> %.sroa.0104.0.copyload, i64 1
  %i.dg = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.l, %i.dg
  %i.di = shufflevector <2 x float> %.sroa.0104.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = fmul <2 x float> %i.o, %i.di
  %i.dk = fadd <2 x float> %i.dh, %i.dj
  %i.dl = insertelement <2 x float> poison, float %.sroa.2105.0.copyload, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.s, %i.dm
  %i.do = fadd <2 x float> %i.dn, %i.dk
  %i.dp = fmul float %i.g, %.sroa.012.0.vec.extract.i223
  %i.dq = fmul float %i.i, %.sroa.012.4.vec.extract.i224
  %i.dr = fadd float %i.dp, %i.dq
  %i.ds = fmul float %i.k, %.sroa.2105.0.copyload
  %i.dt = fadd float %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x float> %i.do, ptr %i.du, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.dt, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 116
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.dv, align 4 ; 4 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 124
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 2 uses
  %.sroa.012.0.vec.extract.i229 = extractelement <2 x float> %.sroa.094.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i230 = extractelement <2 x float> %.sroa.094.0.copyload, i64 1
  %i.dw = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.l, %i.dw
  %i.dy = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x float> %i.o, %i.dy
  %i.ea = fadd <2 x float> %i.dx, %i.dz
  %i.eb = insertelement <2 x float> poison, float %.sroa.295.0.copyload, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.s, %i.ec
  %i.ee = fadd <2 x float> %i.ed, %i.ea
  %i.ef = fmul float %i.g, %.sroa.012.0.vec.extract.i229
  %i.eg = fmul float %i.i, %.sroa.012.4.vec.extract.i230
  %i.eh = fadd float %i.ef, %i.eg
  %i.ei = fmul float %i.k, %.sroa.295.0.copyload
  %i.ej = fadd float %i.ei, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 116
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRmJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i49, %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.bt
  br i1 %i.ds, label %.body47, label %.body47.sink.split

.body47.sink.split:                               ; preds = %bb.u, %bb.q
  %.sink125 = phi ptr [ %i.cc, %bb.q ], [ %i.dr, %bb.u ]
  %.pn24.ph = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %i.dq, %bb.u ]
  %i.dt = load i64, ptr %i.bt, align 8, !tbaa !9
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %.sink125, i64 noundef %i.du) #30
  br label %.body47

.body47:                                          ; preds = %.body47.sink.split, %bb.u, %bb.q
  %.pn24 = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %i.dq, %bb.u ], [ %.pn24.ph, %.body47.sink.split ] ; 2 uses
  %i.dv = load ptr, ptr %7, align 8, !tbaa !25    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.ay
  br i1 %i.dw, label %.body41, label %.body41.sink.split

.body41.sink.split:                               ; preds = %.body47, %bb.n
  %.sink128 = phi ptr [ %i.bm, %bb.n ], [ %i.dv, %.body47 ]
  %.pn24.pn.ph = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %.pn24, %.body47 ]
  %i.dx = load i64, ptr %i.ay, align 8, !tbaa !9
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %.sink128, i64 noundef %i.dy) #30
  br label %.body41

.body41:                                          ; preds = %.body41.sink.split, %.body47, %bb.n
  %.pn24.pn = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %.pn24, %.body47 ], [ %.pn24.pn.ph, %.body41.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.v

bb.v:                                             ; preds = %.body41, %bb.t
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %.body41 ], [ %i.dp, %bb.t ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.v ], [ %i.do, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.af

bb.x:                                             ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !24
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.invoke, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ec = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.ed = load i64, ptr %2, align 8, !tbaa !55, !noalias !675
  %i.ee = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.ec, i64 noundef %i.ed) #28, !noalias !675
  %i.ef = add nsw i32 %i.ee, 1
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.eh, ptr %8, align 8, !tbaa !21, !alias.scope !675
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !24, !alias.scope !675
  store i8 0, ptr %i.eh, align 8, !tbaa !9, !alias.scope !675
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.eg, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i68 unwind label %bb.aa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i68: ; preds = %bb.y
  %i.ej = load ptr, ptr %8, align 8, !tbaa !25, !alias.scope !675
  %i.ek = load i64, ptr %2, align 8, !tbaa !55, !noalias !675
  %i.el = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ej, i64 noundef %i.eg, ptr noundef %i.ec, i64 noundef %i.ek) #28 ; 0 uses
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !24, !alias.scope !675
  %i.en = add i64 %i.em, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.en, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit71 unwind label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i68
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #31
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %8, align 8, !tbaa !25, !alias.scope !675 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eh
  br i1 %i.es, label %.body69, label %.body69.sink.split

_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i68
  %i.et = load i64, ptr %i.ei, align 8, !tbaa !24 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !24
  %i.ew = sub i64 4611686018427387903, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.et
  br i1 %i.ex, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72

bb.ab:                                            ; preds = %_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit71
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc73 unwind label %bb.ac

.noexc73:                                         ; preds = %bb.ab
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72: ; preds = %_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit71
  %i.ey = load ptr, ptr %8, align 8, !tbaa !25
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ey, i64 noundef %i.et)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75 unwind label %bb.ac ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72
  %i.fa = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.eh
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75
  %i.fc = load i64, ptr %i.eh, align 8, !tbaa !9
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i72, %bb.ab
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eh
  br i1 %i.fg, label %.body69, label %.body69.sink.split

.body69.sink.split:                               ; preds = %bb.ac, %bb.aa
  %.sink131 = phi ptr [ %i.er, %bb.aa ], [ %i.ff, %bb.ac ]
  %.pn.ph = phi { ptr, i32 } [ %i.eq, %bb.aa ], [ %i.fe, %bb.ac ]
  %i.fh = load i64, ptr %i.eh, align 8, !tbaa !9
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %.sink131, i64 noundef %i.fi) #30
  br label %.body69

.body69:                                          ; preds = %.body69.sink.split, %bb.ac, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.aa ], [ %i.fe, %bb.ac ], [ %.pn.ph, %.body69.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.af

bb.ad:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !74
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.fj)
          to label %bb.ae unwind label %bb.b

bb.ae:                                            ; preds = %bb.ad
  %i.fk = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ae
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !9
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.af:                                            ; preds = %.body69, %bb.w, %.body, %bb.b
  %.pn31 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn29, %.body ], [ %.pn24.pn.pn.pn, %bb.w ], [ %.pn, %.body69 ]
  %i.fp = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.af
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !9
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn31
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr captures(none), <16 x i1>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <12 x float> @llvm.masked.load.v12f32.p0(ptr captures(none), <12 x i1>, <12 x float>) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"_ZTSN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEE", !5, i64 0, !12, i64 64}
!14 = !{!13, !12, i64 64}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{i64 0, i64 64, !9}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !22, i64 8, !5, i64 16}
!24 = !{!23, !22, i64 8}
!25 = !{!23, !19, i64 0}
!26 = !{!6, !6, i64 0}
!27 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !10, i64 0, !10, i64 4, !10, i64 8}
!28 = !{!27, !10, i64 0}
!29 = !{!27, !10, i64 4}
!30 = !{!27, !10, i64 8}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"_ZTSN4pbrt8IntervalE", !10, i64 0, !10, i64 4}
!33 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3ENS_8IntervalEEE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSN4pbrt6Point3INS_8IntervalEEE", !33, i64 0}
!35 = !{!"_ZTSN4pbrt8Point3fiE", !34, i64 0}
!36 = !{!"_ZTSN4pbrt7Vector3IfEE", !27, i64 0}
!37 = !{!"_ZTSN4pbrt6Tuple3INS_7Normal3EfEE", !10, i64 0, !10, i64 4, !10, i64 8}
!38 = !{!"_ZTSN4pbrt7Normal3IfEE", !37, i64 0}
!39 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !10, i64 0, !10, i64 4}
!40 = !{!"_ZTSN4pbrt6Point2IfEE", !39, i64 0}
!41 = !{!"p1 _ZTSN4pbrt15MediumInterfaceE", !18, i64 0}
!42 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !22, i64 0}
!43 = !{!"_ZTSN4pbrt6MediumE", !42, i64 0}
!44 = !{!"_ZTSN4pbrt11InteractionE", !35, i64 0, !10, i64 24, !36, i64 28, !38, i64 40, !40, i64 52, !41, i64 64, !43, i64 72}
!45 = !{!44, !10, i64 24}
!46 = !{!44, !41, i64 64}
!47 = !{!"_ZTSN4pbrt18SurfaceInteractionUt_E", !38, i64 0, !36, i64 12, !36, i64 24, !38, i64 36, !38, i64 48}
!48 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEEE", !22, i64 0}
!49 = !{!"_ZTSN4pbrt8MaterialE", !48, i64 0}
!50 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEEE", !22, i64 0}
!51 = !{!"_ZTSN4pbrt5LightE", !50, i64 0}
!52 = !{!"_ZTSN4pbrt18SurfaceInteractionE", !44, i64 0, !36, i64 80, !36, i64 92, !38, i64 104, !38, i64 116, !47, i64 128, !6, i64 188, !49, i64 192, !51, i64 200, !36, i64 208, !36, i64 220, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244}
!53 = !{!52, !10, i64 232}
!54 = !{!52, !10, i64 244}
!55 = !{!22, !22, i64 0}
!56 = !{!52, !6, i64 188}
!57 = !{!32, !10, i64 0}
!58 = !{!32, !10, i64 4}
!59 = !{i64 0, i64 64, !9, i64 64, i64 64, !9}
!60 = !{!"_ZTSN4pbrt12SquareMatrixILi4EEE", !5, i64 0}
!61 = !{!"_ZTSN4pbrt9TransformE", !60, i64 0, !60, i64 64}
!62 = !{!"_ZTSN4pbrt17AnimatedTransformE", !61, i64 0, !61, i64 128, !10, i64 256, !10, i64 260, !12, i64 264, !5, i64 268, !5, i64 292, !5, i64 324, !12, i64 452, !5, i64 456, !5, i64 504, !5, i64 552, !5, i64 600, !5, i64 648}
!63 = !{!62, !10, i64 256}
!64 = !{!62, !10, i64 260}
!65 = !{!62, !12, i64 264}
!66 = !{!62, !12, i64 452}
!67 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !10, i64 0, !10, i64 4, !10, i64 8}
!68 = !{!"_ZTSN4pbrt6Point3IfEE", !67, i64 0}
!69 = !{!"_ZTSN4pbrt3RayE", !68, i64 0, !36, i64 12, !10, i64 24, !43, i64 32}
!70 = !{!69, !10, i64 24}
!71 = !{!42, !22, i64 0}
!72 = !{!"double", !5, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!19, !19, i64 0}
!75 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!76 = !{!"_ZTSSt6locale", !75, i64 0}
!77 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !76, i64 56}
!78 = !{!77, !19, i64 40}
!79 = !{!77, !19, i64 32}
!80 = !{!"vtable pointer", !4, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"_ZTSSi", !22, i64 8}
!83 = !{!82, !22, i64 8}
!84 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!85 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!86 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!87 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !22, i64 8}
!88 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!89 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !84, i64 24, !85, i64 28, !85, i64 32, !86, i64 40, !87, i64 48, !5, i64 64, !6, i64 192, !88, i64 200, !76, i64 208}
!90 = !{!89, !85, i64 32}
!91 = !{!12, !12, i64 0}
!92 = distinct !{!92, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!93 = distinct !{!93, !92, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!94 = !{!93}
!95 = distinct !{!95, !"_ZN4pbrt12StringPrintfIJRfS1_S1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!96 = distinct !{!96, !95, !"_ZN4pbrt12StringPrintfIJRfS1_S1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!97 = !{!96}
!98 = distinct !{!98, !"_ZN4pbrt5ScaleEfff"}
!99 = distinct !{!99, !98, !"_ZN4pbrt5ScaleEfff: argument 0"}
!100 = distinct !{!100, !"_ZN4pbrt9TranslateENS_7Vector3IfEE"}
!101 = distinct !{!101, !100, !"_ZN4pbrt9TranslateENS_7Vector3IfEE: argument 0"}
!102 = !{!99}
!103 = !{!101}
!104 = distinct !{!104, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_"}
!105 = distinct !{!105, !104, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_: argument 0"}
!106 = distinct !{!106, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_"}
!107 = distinct !{!107, !106, !"_ZN4pbrtmlILi4EEENS_12SquareMatrixIXT_EEERKS2_S4_: argument 0"}
!108 = !{!105}
!109 = !{!107}
!110 = distinct !{!110, !"_ZN4pbrt5ScaleEfff"}
!111 = distinct !{!111, !110, !"_ZN4pbrt5ScaleEfff: argument 0"}
!112 = !{!111}
!113 = distinct !{!113, !"_ZN4pbrt9TransposeILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!114 = distinct !{!114, !113, !"_ZN4pbrt9TransposeILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!115 = distinct !{!115, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!116 = distinct !{!116, !115, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!117 = distinct !{!117, !31}
!118 = distinct !{!118, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_"}
!119 = distinct !{!119, !118, !"_ZN4pbrt12InvertOrExitILi4EEENS_12SquareMatrixIXT_EEERKS2_: argument 0"}
!120 = !{!114}
!121 = !{!116}
!122 = !{!119}
!123 = distinct !{!123, !"_ZN4pbrt12StringPrintfIJRKNS_12SquareMatrixILi4EEES4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!124 = distinct !{!124, !123, !"_ZN4pbrt12StringPrintfIJRKNS_12SquareMatrixILi4EEES4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!125 = !{!124}
!126 = distinct !{!126, !"_ZNK4pbrt9TransformclERKNS_3RayEPf"}
!127 = distinct !{!127, !126, !"_ZNK4pbrt9TransformclERKNS_3RayEPf: argument 0"}
!128 = distinct !{!128, !"_ZNK4pbrt9TransformclERKNS_3RayEPf"}
!129 = distinct !{!129, !128, !"_ZNK4pbrt9TransformclERKNS_3RayEPf: argument 0"}
!130 = distinct !{!130, !"_ZNK4pbrt9TransformclERKNS_3RayEPf"}
!131 = distinct !{!131, !130, !"_ZNK4pbrt9TransformclERKNS_3RayEPf: argument 0"}
!132 = !{!127}
!133 = !{!129}
!134 = !{!131}
!135 = distinct !{!135, !"_ZNK4pbrt12SquareMatrixILi4EEplERKS1_"}
!136 = distinct !{!136, !135, !"_ZNK4pbrt12SquareMatrixILi4EEplERKS1_: argument 0"}
!137 = distinct !{!137, !"_ZN4pbrt9TranslateENS_7Vector3IfEE"}
!138 = distinct !{!138, !137, !"_ZN4pbrt9TranslateENS_7Vector3IfEE: argument 0"}
!139 = !{!136}
!140 = !{!138}
!141 = distinct !{!141, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf"}
!142 = distinct !{!142, !141, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf: argument 0"}
!143 = distinct !{!143, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf"}
!144 = distinct !{!144, !143, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf: argument 0"}
!145 = distinct !{!145, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf"}
!146 = distinct !{!146, !145, !"_ZNK4pbrt9Transform12ApplyInverseERKNS_3RayEPf: argument 0"}
!147 = !{!142}
!148 = !{!144}
!149 = !{!146}
end_hunk_1
