Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_cam?download=true
inline.NumInlined: 6028
inline.NumDeleted: 3464
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN3g2o10BaseVertexILi6ENS_6SBACamEE3popEv:bb.a
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -456
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !37
  store <2 x double> %i.z, ptr %i.x, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 -440
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !39
  store double %i.ac, ptr %i.aa, align 8, !tbaa !39
  %i.ad = getelementptr inbounds i8, ptr %i.b, i64 -432
  %i.ae = load double, ptr %i.ad, align 16, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.ae, ptr %i.af, align 16, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 -416
  %i.ai = load <2 x double>, ptr %i.ah, align 16, !tbaa !37
  store <2 x double> %i.ai, ptr %i.ag, align 16, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ak = getelementptr inbounds i8, ptr %i.b, i64 -400
  %i.al = load <2 x double>, ptr %i.ak, align 16, !tbaa !37
  store <2 x double> %i.al, ptr %i.aj, align 16, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.an = getelementptr inbounds i8, ptr %i.b, i64 -384
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !37
  store <2 x double> %i.ao, ptr %i.am, align 16, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.aq = getelementptr inbounds i8, ptr %i.b, i64 -368
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !37
  store <2 x double> %i.ar, ptr %i.ap, align 16, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.at = getelementptr inbounds i8, ptr %i.b, i64 -352
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !37
  store <2 x double> %i.au, ptr %i.as, align 16, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.aw = getelementptr inbounds i8, ptr %i.b, i64 -336
  %i.ax = load <2 x double>, ptr %i.aw, align 16, !tbaa !37
  store <2 x double> %i.ax, ptr %i.av, align 16, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.az = getelementptr inbounds i8, ptr %i.b, i64 -320
  %i.ba = load <2 x double>, ptr %i.az, align 16, !tbaa !37
  store <2 x double> %i.ba, ptr %i.ay, align 16, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bc = getelementptr inbounds i8, ptr %i.b, i64 -304
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !37
  store <2 x double> %i.bd, ptr %i.bb, align 16, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bf = getelementptr inbounds i8, ptr %i.b, i64 -288
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !37
  store <2 x double> %i.bg, ptr %i.be, align 16, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bi = getelementptr inbounds i8, ptr %i.b, i64 -272
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !37
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bl = getelementptr inbounds i8, ptr %i.b, i64 -256
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !tbaa !37
  store <2 x double> %i.bm, ptr %i.bk, align 16, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bo = getelementptr inbounds i8, ptr %i.b, i64 -240
  %i.bp = load <2 x double>, ptr %i.bo, align 16, !tbaa !37
  store <2 x double> %i.bp, ptr %i.bn, align 16, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.br = getelementptr inbounds i8, ptr %i.b, i64 -224
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !37
  store <2 x double> %i.bs, ptr %i.bq, align 16, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bu = getelementptr inbounds i8, ptr %i.b, i64 -208
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !37
  store <2 x double> %i.bv, ptr %i.bt, align 16, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bx = getelementptr inbounds i8, ptr %i.b, i64 -192
  %i.by = load <2 x double>, ptr %i.bx, align 16, !tbaa !37
  store <2 x double> %i.by, ptr %i.bw, align 16, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ca = getelementptr inbounds i8, ptr %i.b, i64 -176
  %i.cb = load <2 x double>, ptr %i.ca, align 16, !tbaa !37
  store <2 x double> %i.cb, ptr %i.bz, align 16, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cd = getelementptr inbounds i8, ptr %i.b, i64 -160
  %i.ce = load double, ptr %i.cd, align 16, !tbaa !39
  store double %i.ce, ptr %i.cc, align 16, !tbaa !39
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cg = getelementptr inbounds i8, ptr %i.b, i64 -152
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !37
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cj = getelementptr inbounds i8, ptr %i.b, i64 -136
  %i.ck = load <2 x double>, ptr %i.cj, align 8, !tbaa !37
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !37
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cm = getelementptr inbounds i8, ptr %i.b, i64 -120
  %i.cn = load <2 x double>, ptr %i.cm, align 8, !tbaa !37
  store <2 x double> %i.cn, ptr %i.cl, align 8, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cp = getelementptr inbounds i8, ptr %i.b, i64 -104
  %i.cq = load <2 x double>, ptr %i.cp, align 8, !tbaa !37
  store <2 x double> %i.cq, ptr %i.co, align 8, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cs = getelementptr inbounds i8, ptr %i.b, i64 -88
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !39
  store double %i.ct, ptr %i.cr, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cv = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.cw = load <2 x double>, ptr %i.cv, align 16, !tbaa !37
  store <2 x double> %i.cw, ptr %i.cu, align 16, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cy = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.cz = load <2 x double>, ptr %i.cy, align 16, !tbaa !37
  store <2 x double> %i.cz, ptr %i.cx, align 16, !tbaa !37
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.db = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !37
  store <2 x double> %i.dc, ptr %i.da, align 16, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.de = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.df = load <2 x double>, ptr %i.de, align 16, !tbaa !37
  store <2 x double> %i.df, ptr %i.dd, align 16, !tbaa !37
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.dh = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.di = load double, ptr %i.dh, align 16, !tbaa !39
  store double %i.di, ptr %i.dg, align 16, !tbaa !39
  store ptr %i.c, ptr %i.a, align 8, !tbaa !95
  %i.dj = load ptr, ptr %0, align 16, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 216
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6ENS_6SBACamEE10discardTopEv(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -560
  store ptr %i.c, ptr %i.a, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi6ENS_6SBACamEE9stackSizeEv(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !62
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 560
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexCam9oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %.sroa.11.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !37
  store <2 x double> %i.b, ptr %2, align 16, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 1, !tbaa !37
  store <2 x double> %i.e, ptr %i.c, align 16, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 1, !tbaa !37
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !37
  call void @_ZN3g2o6SBACam6updateERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(552) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZN3g2o6SBACam12transformW2FERN5Eigen6MatrixIdLi3ELi4ELi0ELi3ELi4EEERKNS2_IdLi3ELi1ELi0ELi3ELi1EEERKNS1_10QuaternionIdLi0EEE(ptr noundef nonnull align 16 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 16 dereferenceable(552) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !37 ; 4 uses
  %i.n = load <2 x double>, ptr %i.i, align 16    ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load <2 x double>, ptr %i.q, align 16, !tbaa !37 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.t = load <2 x double>, ptr %i.s, align 8     ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.r, %i.u
  %i.w = fadd <2 x double> %i.p, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !37 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aa = load <2 x double>, ptr %i.z, align 16   ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x double> %i.y, %i.ab
  %i.ad = fadd <2 x double> %i.w, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  %3 = load <2 x double>, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  %4 = load <2 x double>, ptr %i.af, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 312
  %5 = load <2 x double>, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ai = load <2 x double>, ptr %i.ah, align 8   ; 2 uses
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.m, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.am = load <2 x double>, ptr %i.al, align 16  ; 2 uses
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.r, %i.an
  %i.ap = fadd <2 x double> %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ar = load <2 x double>, ptr %i.aq, align 8   ; 2 uses
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.y, %i.as
  %i.au = fadd <2 x double> %i.ap, %i.at
  %.sroa.4.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 8
  store <2 x double> %i.au, ptr %.sroa.4.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.aw = load <2 x double>, ptr %i.av, align 16  ; 2 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.m, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ba = load <2 x double>, ptr %i.az, align 8   ; 2 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.r, %i.bb
  %i.bd = fadd <2 x double> %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bf = load <2 x double>, ptr %i.be, align 16  ; 2 uses
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x double> %i.y, %i.bg
  %i.bi = fadd <2 x double> %i.bd, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bk = load <2 x double>, ptr %i.bj, align 8   ; 2 uses
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.m, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bo = load <2 x double>, ptr %i.bn, align 16  ; 4 uses
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.r, %i.bp
  %i.br = fadd <2 x double> %i.bm, %i.bq
  %i.bs = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x double> %i.y, %i.bs
  %i.bu = fadd <2 x double> %i.bt, %i.br
  %.sroa.11.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 8
  store <2 x double> %i.bu, ptr %.sroa.11.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !37
  %i.bv = shufflevector <2 x double> %i.n, <2 x double> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.bw = shufflevector <2 x double> %i.aw, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.bx = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.by = shufflevector <2 x double> %3, <2 x double> poison, <4 x i32> zeroinitializer
  %i.bz = fmul <4 x double> %i.bx, %i.by
  %i.ca = shufflevector <2 x double> %i.t, <2 x double> %i.am, <2 x i32> <i32 0, i32 2>
  %i.cb = shufflevector <2 x double> %i.ba, <2 x double> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = shufflevector <2 x double> %4, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ce = fmul <4 x double> %i.cc, %i.cd
  %i.cf = shufflevector <2 x double> %i.aa, <2 x double> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.cg = shufflevector <2 x double> %i.bf, <2 x double> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.ch = shufflevector <2 x double> %i.cf, <2 x double> %i.cg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ci = shufflevector <2 x double> %5, <2 x double> poison, <4 x i32> zeroinitializer
  %i.cj = fmul <4 x double> %i.ch, %i.ci
  %i.ck = fadd <4 x double> %i.ce, %i.cj
  %i.cl = fadd <4 x double> %i.bz, %i.ck          ; 4 uses
  %i.cm = extractelement <4 x double> %i.cl, i64 0
  store double %i.cm, ptr %.sroa.4.i.i.i.i.i, align 16, !tbaa !39
  %i.cn = extractelement <4 x double> %i.cl, i64 1
  %.sroa.4.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 24
  store double %i.cn, ptr %.sroa.4.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !39
  %i.co = extractelement <4 x double> %i.cl, i64 2
  store double %i.co, ptr %.sroa.11.i.i.i.i.i, align 16, !tbaa !39
  %i.cp = extractelement <4 x double> %i.cl, i64 3
  %.sroa.11.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 24
  store double %i.cp, ptr %.sroa.11.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !39
  store <2 x double> %i.ad, ptr %i.l, align 16, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i, align 16, !tbaa !37
  store <2 x double> %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i, ptr %i.cq, align 16, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.4.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !37
  store <2 x double> %.sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i, ptr %i.cr, align 16, !tbaa !37
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <2 x double> %i.bi, ptr %i.cs, align 16, !tbaa !37
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i, align 16, !tbaa !37
  store <2 x double> %.sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i, ptr %i.ct, align 16, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.sroa.11.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 16
  %.sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !37
  store <2 x double> %.sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i, ptr %i.cu, align 16, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  call void @_ZN3g2o6SBACam5setDrEv(ptr noundef nonnull align 16 dereferenceable(552) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexCam15setToOriginImplEv(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.g2o::SBACam", align 16      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @_ZN3g2o6SBACamC1Ev(ptr noundef nonnull align 16 dereferenceable(552) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(552) %i.a, ptr noundef nonnull align 16 dereferenceable(552) %1, i64 32, i1 false), !tbaa.struct !96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !tbaa.struct !98
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = load double, ptr %i.f, align 16, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.g, ptr %i.h, align 16, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.j, i64 96, i1 false), !tbaa.struct !99
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.l, i64 96, i1 false), !tbaa.struct !99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.m, ptr noundef nonnull align 16 dereferenceable(72) %i.n, i64 72, i1 false), !tbaa.struct !98
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !tbaa.struct !98
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.q, ptr noundef nonnull align 16 dereferenceable(72) %i.r, i64 72, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexCam19setEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !37 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <2 x double>, ptr %i.e, align 1, !tbaa !37 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 48
  %i.h = load double, ptr %i.g, align 8, !tbaa !39
  %.sroa.8.40.vec.extract = extractelement <2 x double> %i.f, i64 1
  %i.i = shufflevector <2 x double> %i.d, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.i, ptr %i.a, align 16
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %.sroa.8.40.vec.extract, ptr %.sroa.510.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %i.h, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !37
  %.sroa.5.16.vec.extract = extractelement <2 x double> %i.d, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> %i.b, ptr %i.j, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %.sroa.5.16.vec.extract, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !37
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexCam26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x double>, ptr %i.b, align 1, !tbaa !37 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x double>, ptr %i.d, align 1, !tbaa !37 ; 4 uses
  %.sroa.5.24.vec.extract = extractelement <2 x double> %i.c, i64 1 ; 3 uses
  %i.f = fneg double %.sroa.5.24.vec.extract      ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %.sroa.5.24.vec.extract, double 1.000000e+00)
  %.sroa.8.32.vec.extract = extractelement <2 x double> %i.e, i64 0
  %.sroa.8.40.vec.extract = extractelement <2 x double> %i.e, i64 1
  %i.h = fneg <2 x double> %i.e                   ; 3 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %.sroa.8.32.vec.extract, double %i.g)
  %i.k = extractelement <2 x double> %i.h, i64 1
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %.sroa.8.40.vec.extract, double %i.j) ; 2 uses
  %i.m = fcmp ogt double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.b, label %_ZN3g2o7SE3Quat17fromMinimalVectorERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call double @sqrt(double noundef %i.l) #19
  br label %_ZN3g2o7SE3Quat17fromMinimalVectorERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE.exit

_ZN3g2o7SE3Quat17fromMinimalVectorERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE.exit: ; preds = %bb.a, %bb.b
  %.sink31.i = phi double [ %.sroa.5.24.vec.extract, %bb.b ], [ %i.f, %bb.a ]
  %.sink.i = phi double [ %i.n, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.o = phi <2 x double> [ %i.e, %bb.b ], [ %i.h, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %.sink31.i, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store <2 x double> %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %.sink.i, ptr %i.r, align 8, !tbaa !37
  %.sroa.5.16.vec.extract = extractelement <2 x double> %i.c, i64 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> %i.a, ptr %i.s, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %.sroa.5.16.vec.extract, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !37
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexCam11setEstimateERKNS_6SBACamE(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef nonnull align 16 dereferenceable(552) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %.sroa.11.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = load <2 x double>, ptr %1, align 16, !tbaa !37
  store <2 x double> %i.b, ptr %i.a, align 16, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !37
  store <2 x double> %i.e, ptr %i.c, align 16, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !37
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load double, ptr %i.j, align 16, !tbaa !39
  store double %i.k, ptr %i.i, align 16, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !37
  store <2 x double> %i.n, ptr %i.l, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !37
  store <2 x double> %i.q, ptr %i.o, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !37
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !37
  store <2 x double> %i.w, ptr %i.u, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load double, ptr %i.y, align 8, !tbaa !39
  store double %i.z, ptr %i.x, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ab = load double, ptr %i.aa, align 16, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.ab, ptr %i.ac, align 16, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.af = load <2 x double>, ptr %i.ae, align 16, !tbaa !37
  store <2 x double> %i.af, ptr %i.ad, align 16, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ai = load <2 x double>, ptr %i.ah, align 16, !tbaa !37
  store <2 x double> %i.ai, ptr %i.ag, align 16, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.al = load <2 x double>, ptr %i.ak, align 16, !tbaa !37
  store <2 x double> %i.al, ptr %i.aj, align 16, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !37
  store <2 x double> %i.ao, ptr %i.am, align 16, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !37
  store <2 x double> %i.ar, ptr %i.ap, align 16, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !37
  store <2 x double> %i.au, ptr %i.as, align 16, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ax = load <2 x double>, ptr %i.aw, align 16, !tbaa !37
  store <2 x double> %i.ax, ptr %i.av, align 16, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ba = load <2 x double>, ptr %i.az, align 16, !tbaa !37
  store <2 x double> %i.ba, ptr %i.ay, align 16, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !37
  store <2 x double> %i.bd, ptr %i.bb, align 16, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !37
  store <2 x double> %i.bg, ptr %i.be, align 16, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !37
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !tbaa !37
  store <2 x double> %i.bm, ptr %i.bk, align 16, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bp = load <2 x double>, ptr %i.bo, align 16, !tbaa !37
  store <2 x double> %i.bp, ptr %i.bn, align 16, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !37
  store <2 x double> %i.bs, ptr %i.bq, align 16, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !37
  store <2 x double> %i.bv, ptr %i.bt, align 16, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.by = load <2 x double>, ptr %i.bx, align 16, !tbaa !37
  store <2 x double> %i.by, ptr %i.bw, align 16, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cb = load double, ptr %i.ca, align 16, !tbaa !39
  store double %i.cb, ptr %i.bz, align 16, !tbaa !39
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ce = load <2 x double>, ptr %i.cd, align 8, !tbaa !37
  store <2 x double> %i.ce, ptr %i.cc, align 8, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !37
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ck = load <2 x double>, ptr %i.cj, align 8, !tbaa !37
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !37
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.cn = load <2 x double>, ptr %i.cm, align 8, !tbaa !37
  store <2 x double> %i.cn, ptr %i.cl, align 8, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !39
  store double %i.cq, ptr %i.co, align 8, !tbaa !39
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ct = load <2 x double>, ptr %i.cs, align 16, !tbaa !37
  store <2 x double> %i.ct, ptr %i.cr, align 16, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.cw = load <2 x double>, ptr %i.cv, align 16, !tbaa !37
  store <2 x double> %i.cw, ptr %i.cu, align 16, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.cz = load <2 x double>, ptr %i.cy, align 16, !tbaa !37
  store <2 x double> %i.cz, ptr %i.cx, align 16, !tbaa !37
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !37
  store <2 x double> %i.dc, ptr %i.da, align 16, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.df = load double, ptr %i.de, align 16, !tbaa !39
  store double %i.df, ptr %i.dd, align 16, !tbaa !39
  %i.dg = load ptr, ptr %0, align 16, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 216
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 16 dereferenceable(776) %0), !inline_history !203
  tail call void @_ZN3g2o6SBACam12transformW2FERN5Eigen6MatrixIdLi3ELi4ELi0ELi3ELi4EEERKNS2_IdLi3ELi1ELi0ELi3ELi1EEERKNS1_10QuaternionIdLi0EEE(ptr noundef nonnull align 16 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(552) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  %i.dj = load <2 x double>, ptr %i.l, align 8, !tbaa !37 ; 4 uses
  %i.dk = load <2 x double>, ptr %i.ad, align 16  ; 2 uses
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.do = load <2 x double>, ptr %i.dn, align 16, !tbaa !37 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dq = load <2 x double>, ptr %i.dp, align 8   ; 2 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x double> %i.do, %i.dr
  %i.dt = fadd <2 x double> %i.dm, %i.ds
  %i.du = load <2 x double>, ptr %i.u, align 8, !tbaa !37 ; 4 uses
  %i.dv = load <2 x double>, ptr %i.ag, align 16  ; 2 uses
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.du, %i.dw
  %i.dy = fadd <2 x double> %i.dt, %i.dx
  %2 = load <2 x double>, ptr %i.o, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %3 = load <2 x double>, ptr %i.dz, align 16
  %4 = load <2 x double>, ptr %i.x, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eb = load <2 x double>, ptr %i.ea, align 8   ; 2 uses
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.dj, %i.ec
  %i.ee = load <2 x double>, ptr %i.aj, align 16  ; 2 uses
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x double> %i.do, %i.ef
  %i.eh = fadd <2 x double> %i.ed, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ej = load <2 x double>, ptr %i.ei, align 8   ; 2 uses
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.du, %i.ek
  %i.em = fadd <2 x double> %i.eh, %i.el
  %.sroa.4.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 8
  store <2 x double> %i.em, ptr %.sroa.4.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !37
  %i.en = load <2 x double>, ptr %i.am, align 16  ; 2 uses
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x double> %i.dj, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.er = load <2 x double>, ptr %i.eq, align 8   ; 2 uses
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x double> %i.do, %i.es
  %i.eu = fadd <2 x double> %i.ep, %i.et
  %i.ev = load <2 x double>, ptr %i.ap, align 16  ; 2 uses
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x double> %i.du, %i.ew
  %i.ey = fadd <2 x double> %i.eu, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fa = load <2 x double>, ptr %i.ez, align 8   ; 2 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x double> %i.dj, %i.fb
  %i.fd = load <2 x double>, ptr %i.as, align 16  ; 4 uses
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x double> %i.do, %i.fe
  %i.fg = fadd <2 x double> %i.fc, %i.ff
  %i.fh = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fi = fmul <2 x double> %i.du, %i.fh
  %i.fj = fadd <2 x double> %i.fi, %i.fg
  %.sroa.11.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 8
  store <2 x double> %i.fj, ptr %.sroa.11.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !37
  %i.fk = shufflevector <2 x double> %i.dk, <2 x double> %i.eb, <2 x i32> <i32 0, i32 2>
  %i.fl = shufflevector <2 x double> %i.en, <2 x double> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.fm = shufflevector <2 x double> %i.fk, <2 x double> %i.fl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fn = shufflevector <2 x double> %2, <2 x double> poison, <4 x i32> zeroinitializer
  %i.fo = fmul <4 x double> %i.fm, %i.fn
  %i.fp = shufflevector <2 x double> %i.dq, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.fq = shufflevector <2 x double> %i.er, <2 x double> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.fr = shufflevector <2 x double> %i.fp, <2 x double> %i.fq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fs = shufflevector <2 x double> %3, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ft = fmul <4 x double> %i.fr, %i.fs
  %i.fu = shufflevector <2 x double> %i.dv, <2 x double> %i.ej, <2 x i32> <i32 0, i32 2>
  %i.fv = shufflevector <2 x double> %i.ev, <2 x double> %i.fd, <2 x i32> <i32 0, i32 3>
  %i.fw = shufflevector <2 x double> %i.fu, <2 x double> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fx = shufflevector <2 x double> %4, <2 x double> poison, <4 x i32> zeroinitializer
  %i.fy = fmul <4 x double> %i.fw, %i.fx
  %i.fz = fadd <4 x double> %i.ft, %i.fy
  %i.ga = fadd <4 x double> %i.fo, %i.fz          ; 4 uses
  %i.gb = extractelement <4 x double> %i.ga, i64 0
  store double %i.gb, ptr %.sroa.4.i.i.i.i.i, align 16, !tbaa !39
  %i.gc = extractelement <4 x double> %i.ga, i64 1
  %.sroa.4.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 24
  store double %i.gc, ptr %.sroa.4.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !39
  %i.gd = extractelement <4 x double> %i.ga, i64 2
  store double %i.gd, ptr %.sroa.11.i.i.i.i.i, align 16, !tbaa !39
  %i.ge = extractelement <4 x double> %i.ga, i64 3
  %.sroa.11.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 24
  store double %i.ge, ptr %.sroa.11.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !39
  store <2 x double> %i.dy, ptr %i.av, align 16, !tbaa !37
  %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i, align 16, !tbaa !37
  store <2 x double> %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i, ptr %i.ay, align 16, !tbaa !37
  %.sroa.4.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !37
  store <2 x double> %.sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i, ptr %i.bb, align 16, !tbaa !37
  store <2 x double> %i.ey, ptr %i.be, align 16, !tbaa !37
  %.sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i, align 16, !tbaa !37
  store <2 x double> %.sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i, ptr %i.bh, align 16, !tbaa !37
  %.sroa.11.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 16
  %.sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !37
  store <2 x double> %.sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i, ptr %i.bk, align 16, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  tail call void @_ZN3g2o6SBACam5setDrEv(ptr noundef nonnull align 16 dereferenceable(552) %i.a)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o9VertexCamD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 16), ptr %i.a, align 16, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 288), ptr %0, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !62  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !63
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !64
  br label %_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit

_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(776) %i.a) #19, !inline_history !64
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o9VertexCamD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 16), ptr %i.a, align 16, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 288), ptr %0, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !62  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3g2o9VertexCamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !63
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !64
  br label %_ZN3g2o9VertexCamD0Ev.exit

_ZN3g2o9VertexCamD0Ev.exit:                       ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(776) %i.a) #19, !inline_history !64
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(776) %i.a, i64 noundef 784) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev(ptr noundef nonnull align 16 dead_on_return(776) dereferenceable(776) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 16), ptr %0, align 16, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 288), ptr %i.a, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !62  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIN3g2o6SBACamESt6vectorIS1_SaIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !63
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20
  br label %_ZNSt5stackIN3g2o6SBACamESt6vectorIS1_SaIS1_EEED2Ev.exit

_ZNSt5stackIN3g2o6SBACamESt6vectorIS1_SaIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6ENS_6SBACamEED0Ev(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex17estimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6ENS_6SBACamEED1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 16), ptr %i.a, align 16, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 288), ptr %0, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !62  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !63
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !64
  br label %_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit

_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(776) %i.a) #19, !inline_history !64
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6ENS_6SBACamEED0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !94     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !204
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
end_hunk_0
