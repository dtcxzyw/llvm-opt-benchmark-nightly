Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_sba_cam?download=true
inline.NumInlined: 3273
inline.NumDeleted: 1816
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE16allVerticesFixedEv:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !228, !range !240, !noundef !113
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10EdgeSBACam20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(736) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6ENS_7SE3QuatEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6ENS_7SE3QuatEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi6ENS_7SE3QuatEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi6ENS_7SE3QuatEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi6ENS_7SE3QuatEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !55
  %i.d = load <2 x double>, ptr %i.a, align 16    ; 2 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.j = load <1 x double>, ptr %i.i, align 8
  %i.k = shufflevector <1 x double> %i.j, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.q = load <2 x double>, ptr %i.p, align 16    ; 2 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.s = fmul <2 x double> %i.o, %i.r
  %i.t = fadd <2 x double> %i.m, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.x = load <1 x double>, ptr %i.w, align 8
  %i.y = shufflevector <1 x double> %i.x, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x double> %i.v, %i.y
  %i.aa = fadd <2 x double> %i.t, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ac = load <2 x double>, ptr %i.ab, align 16, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ae = load <2 x double>, ptr %i.ad, align 16  ; 3 uses
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ag = fmul <2 x double> %i.ac, %i.af
  %i.ah = fadd <2 x double> %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aj = load <2 x double>, ptr %i.ai, align 16, !tbaa !55
  %i.ak = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = fadd <2 x double> %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !55
  %i.ap = fmul <2 x double> %i.e, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !55
  %i.as = fmul <2 x double> %i.k, %i.ar
  %i.at = fadd <2 x double> %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.av = load <2 x double>, ptr %i.au, align 16, !tbaa !55
  %i.aw = fmul <2 x double> %i.r, %i.av
  %i.ax = fadd <2 x double> %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.az = load <2 x double>, ptr %i.ay, align 16, !tbaa !55
  %i.ba = fmul <2 x double> %i.y, %i.az
  %i.bb = fadd <2 x double> %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !55
  %i.be = fmul <2 x double> %i.af, %i.bd
  %i.bf = fadd <2 x double> %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !55
  %i.bi = fmul <2 x double> %i.ak, %i.bh
  %i.bj = fadd <2 x double> %i.bi, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bl = load <2 x double>, ptr %i.bk, align 16, !tbaa !55
  %i.bm = fmul <2 x double> %i.e, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bo = load <2 x double>, ptr %i.bn, align 16, !tbaa !55
  %i.bp = fmul <2 x double> %i.k, %i.bo
  %i.bq = fadd <2 x double> %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !55
  %i.bt = fmul <2 x double> %i.r, %i.bs
  %i.bu = fadd <2 x double> %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bw = load <2 x double>, ptr %i.bv, align 16, !tbaa !55
  %i.bx = fmul <2 x double> %i.y, %i.bw
  %i.by = fadd <2 x double> %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ca = load <2 x double>, ptr %i.bz, align 16, !tbaa !55
  %i.cb = fmul <2 x double> %i.af, %i.ca
  %i.cc = fadd <2 x double> %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !55
  %i.cf = fmul <2 x double> %i.ak, %i.ce
  %i.cg = fadd <2 x double> %i.cf, %i.cc
  %i.ch = fmul <2 x double> %i.d, %i.am
  %i.ci = fmul <2 x double> %i.q, %i.bj
  %i.cj = fmul <2 x double> %i.ae, %i.cg
  %i.ck = fadd <2 x double> %i.ci, %i.cj
  %i.cl = fadd <2 x double> %i.ch, %i.ck          ; 2 uses
  %shift = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cl, %shift
  %i.cm = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %i.cm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(648) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i = alloca <2 x double>, align 16      ; 5 uses
  %1 = alloca %"class.Eigen::Matrix.18", align 8  ; 4 uses
  %2 = alloca %"class.Eigen::Matrix.38", align 16 ; 7 uses
  %3 = alloca %"class.Eigen::Matrix.28", align 16 ; 22 uses
  %4 = alloca %"class.Eigen::Matrix.38", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !241
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(576) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !241 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.m = load <2 x i64>, ptr %i.k, align 16, !tbaa !55
  %i.n = xor <2 x i64> %i.m, splat (i64 -9223372036854775808)
  %i.o = bitcast <2 x i64> %i.n to <2 x double>
  %i.p = load <1 x double>, ptr %i.l, align 16
  %i.q = shufflevector <1 x double> %i.p, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.r = fmul <2 x double> %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.t = load <2 x i64>, ptr %i.s, align 16, !tbaa !55
  %i.u = xor <2 x i64> %i.t, splat (i64 -9223372036854775808)
  %i.v = bitcast <2 x i64> %i.u to <2 x double>
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.x = load <1 x double>, ptr %i.w, align 8
  %i.y = shufflevector <1 x double> %i.x, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x double> %i.y, %i.v
  %i.aa = fadd <2 x double> %i.r, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ac = load <2 x i64>, ptr %i.ab, align 16, !tbaa !55
  %i.ad = xor <2 x i64> %i.ac, splat (i64 -9223372036854775808)
  %i.ae = bitcast <2 x i64> %i.ad to <2 x double>
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ag = load <1 x double>, ptr %i.af, align 16
  %i.ah = shufflevector <1 x double> %i.ag, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ai = fmul <2 x double> %i.ah, %i.ae
  %i.aj = fadd <2 x double> %i.aa, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.al = load <2 x i64>, ptr %i.ak, align 16, !tbaa !55
  %i.am = xor <2 x i64> %i.al, splat (i64 -9223372036854775808)
  %i.an = bitcast <2 x i64> %i.am to <2 x double>
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 552
  %5 = load <2 x double>, ptr %i.ao, align 8      ; 2 uses
  %i.ap = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aq = fmul <2 x double> %i.ap, %i.an
  %i.ar = fadd <2 x double> %i.aj, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.at = load <2 x i64>, ptr %i.as, align 16, !tbaa !55
  %i.au = xor <2 x i64> %i.at, splat (i64 -9223372036854775808)
  %i.av = bitcast <2 x i64> %i.au to <2 x double>
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.aw = fmul <2 x double> %6, %i.av
  %i.ax = fadd <2 x double> %i.ar, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.az = load <2 x i64>, ptr %i.ay, align 16, !tbaa !55
  %i.ba = xor <2 x i64> %i.az, splat (i64 -9223372036854775808)
  %i.bb = bitcast <2 x i64> %i.ba to <2 x double>
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %8 = load double, ptr %7, align 8, !tbaa !8
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bc = fmul <2 x double> %10, %i.bb
  %i.bd = fadd <2 x double> %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bg = load <2 x i64>, ptr %i.bf, align 16, !tbaa !55
  %i.bh = xor <2 x i64> %i.bg, splat (i64 -9223372036854775808)
  %i.bi = bitcast <2 x i64> %i.bh to <2 x double>
  %i.bj = fmul <2 x double> %i.q, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bl = load <2 x i64>, ptr %i.bk, align 16, !tbaa !55
  %i.bm = xor <2 x i64> %i.bl, splat (i64 -9223372036854775808)
  %i.bn = bitcast <2 x i64> %i.bm to <2 x double>
  %i.bo = fmul <2 x double> %i.y, %i.bn
  %i.bp = fadd <2 x double> %i.bj, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.br = load <2 x i64>, ptr %i.bq, align 16, !tbaa !55
  %i.bs = xor <2 x i64> %i.br, splat (i64 -9223372036854775808)
  %i.bt = bitcast <2 x i64> %i.bs to <2 x double>
  %i.bu = fmul <2 x double> %i.ah, %i.bt
  %i.bv = fadd <2 x double> %i.bp, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bx = load <2 x i64>, ptr %i.bw, align 16, !tbaa !55
  %i.by = xor <2 x i64> %i.bx, splat (i64 -9223372036854775808)
  %i.bz = bitcast <2 x i64> %i.by to <2 x double>
  %i.ca = fmul <2 x double> %i.ap, %i.bz
  %i.cb = fadd <2 x double> %i.bv, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cd = load <2 x i64>, ptr %i.cc, align 16, !tbaa !55
  %i.ce = xor <2 x i64> %i.cd, splat (i64 -9223372036854775808)
  %i.cf = bitcast <2 x i64> %i.ce to <2 x double>
  %i.cg = fmul <2 x double> %6, %i.cf
  %i.ch = fadd <2 x double> %i.cb, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cj = load <2 x i64>, ptr %i.ci, align 16, !tbaa !55
  %i.ck = xor <2 x i64> %i.cj, splat (i64 -9223372036854775808)
  %i.cl = bitcast <2 x i64> %i.ck to <2 x double>
  %i.cm = fmul <2 x double> %10, %i.cl
  %i.cn = fadd <2 x double> %i.ch, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cq = load <2 x i64>, ptr %i.cp, align 16, !tbaa !55
  %i.cr = xor <2 x i64> %i.cq, splat (i64 -9223372036854775808)
  %i.cs = bitcast <2 x i64> %i.cr to <2 x double>
  %i.ct = fmul <2 x double> %i.q, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cv = load <2 x i64>, ptr %i.cu, align 16, !tbaa !55
  %i.cw = xor <2 x i64> %i.cv, splat (i64 -9223372036854775808)
  %i.cx = bitcast <2 x i64> %i.cw to <2 x double>
  %i.cy = fmul <2 x double> %i.y, %i.cx
  %i.cz = fadd <2 x double> %i.ct, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.db = load <2 x i64>, ptr %i.da, align 16, !tbaa !55
  %i.dc = xor <2 x i64> %i.db, splat (i64 -9223372036854775808)
  %i.dd = bitcast <2 x i64> %i.dc to <2 x double>
  %i.de = fmul <2 x double> %i.ah, %i.dd
  %i.df = fadd <2 x double> %i.cz, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dh = load <2 x i64>, ptr %i.dg, align 16, !tbaa !55
  %i.di = xor <2 x i64> %i.dh, splat (i64 -9223372036854775808)
  %i.dj = bitcast <2 x i64> %i.di to <2 x double>
  %i.dk = fmul <2 x double> %i.ap, %i.dj
  %i.dl = fadd <2 x double> %i.df, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.dn = load <2 x i64>, ptr %i.dm, align 16, !tbaa !55
  %i.do = xor <2 x i64> %i.dn, splat (i64 -9223372036854775808)
  %i.dp = bitcast <2 x i64> %i.do to <2 x double>
  %i.dq = fmul <2 x double> %6, %i.dp
  %i.dr = fadd <2 x double> %i.dl, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dt = load <2 x i64>, ptr %i.ds, align 16, !tbaa !55
  %i.du = xor <2 x i64> %i.dt, splat (i64 -9223372036854775808)
  %i.dv = bitcast <2 x i64> %i.du to <2 x double>
  %i.dw = fmul <2 x double> %10, %i.dv
  %i.dx = fadd <2 x double> %i.dr, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !8, !noalias !242 ; 2 uses
  %i.ea = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ec = fmul <2 x double> %i.bd, %i.eb
  store <2 x double> %i.ec, ptr %2, align 16, !tbaa !55
  %i.ed = fmul <2 x double> %i.cn, %i.eb
  store <2 x double> %i.ed, ptr %i.be, align 16, !tbaa !55
  %i.ee = fmul <2 x double> %i.eb, %i.dx
  store <2 x double> %i.ee, ptr %i.co, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  store double %i.dz, ptr %.sroa.2.i, align 16, !tbaa !248, !alias.scope !250, !noalias !245
  %.sroa.2.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i, i64 8
  store ptr %i.k, ptr %.sroa.2.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !253, !alias.scope !250, !noalias !245
  %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i = load <2 x double>, ptr %.sroa.2.i, align 16, !noalias !245 ; 2 uses
  %bc.i.i.i.i.i.i.i = bitcast <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i to <2 x i64>
  %i.ef = extractelement <2 x i64> %bc.i.i.i.i.i.i.i, i64 1
  %i.eg = inttoptr i64 %i.ef to ptr               ; 18 uses
  %i.eh = shufflevector <2 x double> %.sroa.2.i.0..sroa.2.i.0..sroa.2.i.0..sroa.2.0..sroa.2.0..sroa.2.16..i, <2 x double> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.ei = load <2 x double>, ptr %i.eg, align 16, !tbaa !55, !noalias !245
  %i.ej = fmul <2 x double> %i.eh, %i.ei
  store <2 x double> %i.ej, ptr %3, align 16, !tbaa !55, !alias.scope !245
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.em = load <2 x double>, ptr %i.el, align 16, !tbaa !55, !noalias !245
  %i.en = fmul <2 x double> %i.eh, %i.em
  store <2 x double> %i.en, ptr %i.ek, align 16, !tbaa !55, !alias.scope !245
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.eq = load <2 x double>, ptr %i.ep, align 16, !tbaa !55, !noalias !245
  %i.er = fmul <2 x double> %i.eh, %i.eq
  store <2 x double> %i.er, ptr %i.eo, align 16, !tbaa !55, !alias.scope !245
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.eu = load <2 x double>, ptr %i.et, align 16, !tbaa !55, !noalias !245
  %i.ev = fmul <2 x double> %i.eh, %i.eu
  store <2 x double> %i.ev, ptr %i.es, align 16, !tbaa !55, !alias.scope !245
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ey = load <2 x double>, ptr %i.ex, align 16, !tbaa !55, !noalias !245
  %i.ez = fmul <2 x double> %i.eh, %i.ey
  store <2 x double> %i.ez, ptr %i.ew, align 16, !tbaa !55, !alias.scope !245
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  %i.fc = load <2 x double>, ptr %i.fb, align 16, !tbaa !55, !noalias !245
  %i.fd = fmul <2 x double> %i.eh, %i.fc
  store <2 x double> %i.fd, ptr %i.fa, align 16, !tbaa !55, !alias.scope !245
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eg, i64 96
  %i.fg = load <2 x double>, ptr %i.ff, align 16, !tbaa !55, !noalias !245
  %i.fh = fmul <2 x double> %i.eh, %i.fg
  store <2 x double> %i.fh, ptr %i.fe, align 16, !tbaa !55, !alias.scope !245
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eg, i64 112
  %i.fk = load <2 x double>, ptr %i.fj, align 16, !tbaa !55, !noalias !245
  %i.fl = fmul <2 x double> %i.eh, %i.fk
  store <2 x double> %i.fl, ptr %i.fi, align 16, !tbaa !55, !alias.scope !245
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  %i.fo = load <2 x double>, ptr %i.fn, align 16, !tbaa !55, !noalias !245
  %i.fp = fmul <2 x double> %i.eh, %i.fo
  store <2 x double> %i.fp, ptr %i.fm, align 16, !tbaa !55, !alias.scope !245
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  %i.fs = load <2 x double>, ptr %i.fr, align 16, !tbaa !55, !noalias !245
  %i.ft = fmul <2 x double> %i.eh, %i.fs
  store <2 x double> %i.ft, ptr %i.fq, align 16, !tbaa !55, !alias.scope !245
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eg, i64 160
  %i.fw = load <2 x double>, ptr %i.fv, align 16, !tbaa !55, !noalias !245
  %i.fx = fmul <2 x double> %i.eh, %i.fw
  store <2 x double> %i.fx, ptr %i.fu, align 16, !tbaa !55, !alias.scope !245
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eg, i64 176
  %i.ga = load <2 x double>, ptr %i.fz, align 16, !tbaa !55, !noalias !245
  %i.gb = fmul <2 x double> %i.eh, %i.ga
  store <2 x double> %i.gb, ptr %i.fy, align 16, !tbaa !55, !alias.scope !245
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eg, i64 192
  %i.ge = load <2 x double>, ptr %i.gd, align 16, !tbaa !55, !noalias !245
  %i.gf = fmul <2 x double> %i.eh, %i.ge
  store <2 x double> %i.gf, ptr %i.gc, align 16, !tbaa !55, !alias.scope !245
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eg, i64 208
  %i.gi = load <2 x double>, ptr %i.gh, align 16, !tbaa !55, !noalias !245
  %i.gj = fmul <2 x double> %i.eh, %i.gi
  store <2 x double> %i.gj, ptr %i.gg, align 16, !tbaa !55, !alias.scope !245
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eg, i64 224
  %i.gm = load <2 x double>, ptr %i.gl, align 16, !tbaa !55, !noalias !245
  %i.gn = fmul <2 x double> %i.eh, %i.gm
  store <2 x double> %i.gn, ptr %i.gk, align 16, !tbaa !55, !alias.scope !245
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eg, i64 240
  %i.gq = load <2 x double>, ptr %i.gp, align 16, !tbaa !55, !noalias !245
  %i.gr = fmul <2 x double> %i.eh, %i.gq
  store <2 x double> %i.gr, ptr %i.go, align 16, !tbaa !55, !alias.scope !245
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eg, i64 256
  %i.gu = load <2 x double>, ptr %i.gt, align 16, !tbaa !55, !noalias !245
  %i.gv = fmul <2 x double> %i.eh, %i.gu
  store <2 x double> %i.gv, ptr %i.gs, align 16, !tbaa !55, !alias.scope !245
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eg, i64 272
  %i.gy = load <2 x double>, ptr %i.gx, align 16, !tbaa !55, !noalias !245
  %i.gz = fmul <2 x double> %i.eh, %i.gy
  store <2 x double> %i.gz, ptr %i.gw, align 16, !tbaa !55, !alias.scope !245
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE23constructQuadraticFormNILi0EEEvRKN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS6_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(648) %0, ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE23constructQuadraticFormNILi1EEEvRKN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS6_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(648) %0, ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.hc = load <2 x i64>, ptr %i.ha, align 16, !tbaa !55
  %i.hd = xor <2 x i64> %i.hc, splat (i64 -9223372036854775808)
  %i.he = bitcast <2 x i64> %i.hd to <2 x double>
  %i.hf = load <1 x double>, ptr %i.hb, align 16
  %i.hg = shufflevector <1 x double> %i.hf, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hh = fmul <2 x double> %i.hg, %i.he
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.hj = load <2 x i64>, ptr %i.hi, align 16, !tbaa !55
  %i.hk = xor <2 x i64> %i.hj, splat (i64 -9223372036854775808)
  %i.hl = bitcast <2 x i64> %i.hk to <2 x double>
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.hn = load <1 x double>, ptr %i.hm, align 8
  %i.ho = shufflevector <1 x double> %i.hn, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hp = fmul <2 x double> %i.ho, %i.hl
  %i.hq = fadd <2 x double> %i.hh, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hs = load <2 x i64>, ptr %i.hr, align 16, !tbaa !55
  %i.ht = xor <2 x i64> %i.hs, splat (i64 -9223372036854775808)
  %i.hu = bitcast <2 x i64> %i.ht to <2 x double>
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hw = load <1 x double>, ptr %i.hv, align 16
  %i.hx = shufflevector <1 x double> %i.hw, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hy = fmul <2 x double> %i.hx, %i.hu
  %i.hz = fadd <2 x double> %i.hq, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ib = load <2 x i64>, ptr %i.ia, align 16, !tbaa !55
  %i.ic = xor <2 x i64> %i.ib, splat (i64 -9223372036854775808)
  %i.id = bitcast <2 x i64> %i.ic to <2 x double>
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 552
  %11 = load <2 x double>, ptr %i.ie, align 8     ; 2 uses
  %i.if = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ig = fmul <2 x double> %i.if, %i.id
  %i.ih = fadd <2 x double> %i.hz, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ij = load <2 x i64>, ptr %i.ii, align 16, !tbaa !55
  %i.ik = xor <2 x i64> %i.ij, splat (i64 -9223372036854775808)
  %i.il = bitcast <2 x i64> %i.ik to <2 x double>
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.im = fmul <2 x double> %12, %i.il
  %i.in = fadd <2 x double> %i.ih, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ip = load <2 x i64>, ptr %i.io, align 16, !tbaa !55
  %i.iq = xor <2 x i64> %i.ip, splat (i64 -9223372036854775808)
  %i.ir = bitcast <2 x i64> %i.iq to <2 x double>
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %14 = load double, ptr %13, align 8, !tbaa !8
  %15 = insertelement <2 x double> poison, double %14, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.is = fmul <2 x double> %16, %i.ir
  %i.it = fadd <2 x double> %i.in, %i.is
  store <2 x double> %i.it, ptr %4, align 16, !tbaa !55
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.iw = load <2 x i64>, ptr %i.iv, align 16, !tbaa !55
  %i.ix = xor <2 x i64> %i.iw, splat (i64 -9223372036854775808)
  %i.iy = bitcast <2 x i64> %i.ix to <2 x double>
  %i.iz = fmul <2 x double> %i.hg, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.jb = load <2 x i64>, ptr %i.ja, align 16, !tbaa !55
  %i.jc = xor <2 x i64> %i.jb, splat (i64 -9223372036854775808)
  %i.jd = bitcast <2 x i64> %i.jc to <2 x double>
  %i.je = fmul <2 x double> %i.ho, %i.jd
  %i.jf = fadd <2 x double> %i.iz, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.jh = load <2 x i64>, ptr %i.jg, align 16, !tbaa !55
  %i.ji = xor <2 x i64> %i.jh, splat (i64 -9223372036854775808)
  %i.jj = bitcast <2 x i64> %i.ji to <2 x double>
  %i.jk = fmul <2 x double> %i.hx, %i.jj
  %i.jl = fadd <2 x double> %i.jf, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.jn = load <2 x i64>, ptr %i.jm, align 16, !tbaa !55
  %i.jo = xor <2 x i64> %i.jn, splat (i64 -9223372036854775808)
  %i.jp = bitcast <2 x i64> %i.jo to <2 x double>
  %i.jq = fmul <2 x double> %i.if, %i.jp
  %i.jr = fadd <2 x double> %i.jl, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.jt = load <2 x i64>, ptr %i.js, align 16, !tbaa !55
  %i.ju = xor <2 x i64> %i.jt, splat (i64 -9223372036854775808)
  %i.jv = bitcast <2 x i64> %i.ju to <2 x double>
  %i.jw = fmul <2 x double> %12, %i.jv
  %i.jx = fadd <2 x double> %i.jr, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.jz = load <2 x i64>, ptr %i.jy, align 16, !tbaa !55
  %i.ka = xor <2 x i64> %i.jz, splat (i64 -9223372036854775808)
  %i.kb = bitcast <2 x i64> %i.ka to <2 x double>
  %i.kc = fmul <2 x double> %16, %i.kb
  %i.kd = fadd <2 x double> %i.jx, %i.kc
  store <2 x double> %i.kd, ptr %i.iu, align 16, !tbaa !55
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.kg = load <2 x i64>, ptr %i.kf, align 16, !tbaa !55
  %i.kh = xor <2 x i64> %i.kg, splat (i64 -9223372036854775808)
  %i.ki = bitcast <2 x i64> %i.kh to <2 x double>
  %i.kj = fmul <2 x double> %i.hg, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.kl = load <2 x i64>, ptr %i.kk, align 16, !tbaa !55
  %i.km = xor <2 x i64> %i.kl, splat (i64 -9223372036854775808)
  %i.kn = bitcast <2 x i64> %i.km to <2 x double>
  %i.ko = fmul <2 x double> %i.ho, %i.kn
  %i.kp = fadd <2 x double> %i.kj, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.kr = load <2 x i64>, ptr %i.kq, align 16, !tbaa !55
  %i.ks = xor <2 x i64> %i.kr, splat (i64 -9223372036854775808)
  %i.kt = bitcast <2 x i64> %i.ks to <2 x double>
  %i.ku = fmul <2 x double> %i.hx, %i.kt
  %i.kv = fadd <2 x double> %i.kp, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.kx = load <2 x i64>, ptr %i.kw, align 16, !tbaa !55
  %i.ky = xor <2 x i64> %i.kx, splat (i64 -9223372036854775808)
  %i.kz = bitcast <2 x i64> %i.ky to <2 x double>
  %i.la = fmul <2 x double> %i.if, %i.kz
  %i.lb = fadd <2 x double> %i.kv, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ld = load <2 x i64>, ptr %i.lc, align 16, !tbaa !55
  %i.le = xor <2 x i64> %i.ld, splat (i64 -9223372036854775808)
  %i.lf = bitcast <2 x i64> %i.le to <2 x double>
  %i.lg = fmul <2 x double> %12, %i.lf
  %i.lh = fadd <2 x double> %i.lb, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.lj = load <2 x i64>, ptr %i.li, align 16, !tbaa !55
  %i.lk = xor <2 x i64> %i.lj, splat (i64 -9223372036854775808)
  %i.ll = bitcast <2 x i64> %i.lk to <2 x double>
  %i.lm = fmul <2 x double> %16, %i.ll
  %i.ln = fadd <2 x double> %i.lh, %i.lm
  store <2 x double> %i.ln, ptr %i.ke, align 16, !tbaa !55
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE23constructQuadraticFormNILi0EEEvRKN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS6_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(648) %0, ptr noundef nonnull align 16 dereferenceable(288) %i.ha, ptr noundef nonnull align 16 dereferenceable(48) %4)
  call void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE23constructQuadraticFormNILi1EEEvRKN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEERKNS6_IdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(648) %0, ptr noundef nonnull align 16 dereferenceable(288) %i.ha, ptr noundef nonnull align 16 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE16mapHessianMemoryEPdiib(ptr noundef nonnull align 16 dereferenceable(648) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = add nsw i32 %3, -1
  %i.c = mul nsw i32 %i.b, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = add nsw i32 %i.d, %2                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 %i.a, ptr %i.h, align 1, !tbaa !255
  %i.i = icmp eq i32 %i.e, 0
  br i1 %i.i, label %_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit.sink.split, label %_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit

_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit.sink.split: ; preds = %bb.a
  %. = select i1 %4, i64 600, i64 584
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store ptr %1, ptr %i.j, align 8, !tbaa !256
  br label %_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit

_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit: ; preds = %bb.a, %_ZN3g2o13tuple_apply_iINS_17MapHessianMemoryKESt5tupleIJN5Eigen3MapINS3_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS3_6StrideILi0ELi0EEEEEEEEEvOT_RT0_i.exit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE14linearizeOplusERNS_17JacobianWorkspaceE(ptr noundef nonnull align 16 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.c = load ptr, ptr %1, align 8, !tbaa !260    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !263
  store ptr %i.d, ptr %i.b, align 8, !tbaa !265
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263
  store ptr %i.f, ptr %i.a, align 8, !tbaa !265
  %i.g = load ptr, ptr %0, align 16, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 16 dereferenceable(648) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZN3g2o10EdgeSBACam23initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr noundef nonnull align 16 dereferenceable(736) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  ret double 1.000000e+00
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o16OptimizableGraph4Edge10createFromEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o16OptimizableGraph4Edge8createToEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o16OptimizableGraph4Edge12createVertexEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge13resolveCachesEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o8BaseEdgeILi6ENS_7SE3QuatEE4rankEv(ptr noundef nonnull align 16 dereferenceable(576) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE14linearizeOplusEv(ptr noundef nonnull align 16 dereferenceable(648) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 16 dereferenceable(648) %0)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %.sroa.0.0.copyload = load <2 x double>, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.sroa.4.0.copyload = load <2 x double>, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %.sroa.5.0.copyload = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !55
  tail call void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE15linearizeOplusNILi0EEEvv(ptr noundef nonnull align 16 dereferenceable(648) %0)
  tail call void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EE15linearizeOplusNILi1EEEvv(ptr noundef nonnull align 16 dereferenceable(648) %0)
  store <2 x double> %.sroa.0.0.copyload, ptr %i.e, align 16, !tbaa !55
  store <2 x double> %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !55
  store <2 x double> %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o10EdgeSBACamD1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(736) dereferenceable(736) %i.a) #21
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o10EdgeSBACamD0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(736) dereferenceable(736) %i.a) #21
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(736) %i.a, i64 noundef 736) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse3.addsub.pd(<2 x double>, <2 x double>) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #13

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge18setMeasurementDataEPKd(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph4Edge18getMeasurementDataEPd(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) unnamed_addr #3

declare noundef i32 @_ZNK3g2o16OptimizableGraph4Edge20measurementDimensionEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #3

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o8BaseEdgeILi6ENS_7SE3QuatEE15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS6_ESaIS6_EEPNS_16OptimizableGraph6VertexE(ptr noundef nonnull align 16 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZN3g2o16OptimizableGraph4Edge23initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS5_ESaIS5_EEPNS0_6VertexE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  ret double -1.000000e+00
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o8BaseEdgeILi6ENS_7SE3QuatEE14setMeasurementERKS1_(ptr noundef nonnull align 16 dereferenceable(576) %0, ptr noundef nonnull align 16 dereferenceable(56) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %1, align 16, !tbaa !55
  store <2 x double> %i.b, ptr %i.a, align 16, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !55
  store <2 x double> %i.e, ptr %i.c, align 16, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !55
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load double, ptr %i.j, align 16, !tbaa !8
  store double %i.k, ptr %i.i, align 16, !tbaa !8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EED0Ev(ptr noundef nonnull align 16 dereferenceable(648) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn40_N3g2o18BaseFixedSizedEdgeILi6ENS_7SE3QuatEJNS_9VertexCamES2_EED1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 {
bb.a:
end_hunk_0
