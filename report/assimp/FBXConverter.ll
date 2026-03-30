begin_hunk_0
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %5 = alloca [17 x %class.aiMatrix4x4t], align 16 ; 219 uses
  %6 = alloca %class.aiVector3t, align 8          ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %class.aiVector3t, align 8          ; 6 uses
end_hunk_0
begin_hunk_1
  %i.h = tail call noundef i32 @_ZNK6Assimp3FBX5Model13RotationOrderEv(ptr noundef nonnull align 8 dereferenceable(208) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store float 1.000000e+00, ptr %5, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 108 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store <2 x float> splat (float 1.000000e+00), ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 148 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 172 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 188 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %5, i64 192
  store <2 x float> splat (float 1.000000e+00), ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 196 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 212 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 232 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 236 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 252 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %5, i64 256
  store <2 x float> splat (float 1.000000e+00), ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 260 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 276 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 280 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 296 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 300 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 316 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %5, i64 320
  store <2 x float> splat (float 1.000000e+00), ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 324 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 340 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 344 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 364 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 380 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %5, i64 384
  store <2 x float> splat (float 1.000000e+00), ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 388 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 404 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 408 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 424 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 428 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 444 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %5, i64 448
  store <2 x float> splat (float 1.000000e+00), ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 452 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 468 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 472 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 488 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 492 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 508 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 3 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 516 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 532 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 536 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 552 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 556 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 572 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %5, i64 576
  store <2 x float> splat (float 1.000000e+00), ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 580 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 596 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 600 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 616 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 620 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 636 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %5, i64 640
  store <2 x float> splat (float 1.000000e+00), ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 644 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 660 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 664 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 680 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 684 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 700 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %5, i64 704
  store <2 x float> splat (float 1.000000e+00), ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 708 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 724 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 728 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 744 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 748 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 764 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %5, i64 768
  store <2 x float> splat (float 1.000000e+00), ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 772 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 788 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 792 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 808 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 812 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 828 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %5, i64 832
  store <2 x float> splat (float 1.000000e+00), ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 836 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 852 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 856 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 872 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 876 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 892 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %5, i64 896
  store <2 x float> splat (float 1.000000e+00), ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 900 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 916 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 920 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 936 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 940 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 956 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %5, i64 960
  store <2 x float> splat (float 1.000000e+00), ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 964 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 980 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 984 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 1000 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 1004 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 1020 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  store <2 x float> splat (float 1.000000e+00), ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 1028 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 1044 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 1048 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 1064 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 1068 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 1084 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.df, align 4
  store float 1.000000e+00, ptr %5, align 16
  store <4 x float> zeroinitializer, ptr %i.i, align 4
  store float 1.000000e+00, ptr %i.j, align 4
  store <4 x float> zeroinitializer, ptr %i.k, align 8
  store float 1.000000e+00, ptr %i.l, align 8
  store <4 x float> zeroinitializer, ptr %i.m, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.n, align 4
  store <4 x float> zeroinitializer, ptr %i.o, align 4
  store float 1.000000e+00, ptr %i.p, align 4
  store <4 x float> zeroinitializer, ptr %i.q, align 8
  store float 1.000000e+00, ptr %i.r, align 8
  store <4 x float> zeroinitializer, ptr %i.s, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.t, align 4
  store <4 x float> zeroinitializer, ptr %i.u, align 4
  store float 1.000000e+00, ptr %i.v, align 4
  store <4 x float> zeroinitializer, ptr %i.w, align 8
  store float 1.000000e+00, ptr %i.x, align 8
  store <4 x float> zeroinitializer, ptr %i.y, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.z, align 4
  store <4 x float> zeroinitializer, ptr %i.aa, align 4
  store float 1.000000e+00, ptr %i.ab, align 4
  store <4 x float> zeroinitializer, ptr %i.ac, align 8
  store float 1.000000e+00, ptr %i.ad, align 8
  store <4 x float> zeroinitializer, ptr %i.ae, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.af, align 4
  store <4 x float> zeroinitializer, ptr %i.ag, align 4
  store float 1.000000e+00, ptr %i.ah, align 4
  store <4 x float> zeroinitializer, ptr %i.ai, align 8
  store float 1.000000e+00, ptr %i.aj, align 8
  store <4 x float> zeroinitializer, ptr %i.ak, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.al, align 4
  store <4 x float> zeroinitializer, ptr %i.am, align 4
  store float 1.000000e+00, ptr %i.an, align 4
  store <4 x float> zeroinitializer, ptr %i.ao, align 8
  store float 1.000000e+00, ptr %i.ap, align 8
  store <4 x float> zeroinitializer, ptr %i.aq, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.ar, align 4
  store <4 x float> zeroinitializer, ptr %i.as, align 4
  store float 1.000000e+00, ptr %i.at, align 4
  store <4 x float> zeroinitializer, ptr %i.au, align 8
  store float 1.000000e+00, ptr %i.av, align 8
  store <4 x float> zeroinitializer, ptr %i.aw, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.ax, align 4
  store <4 x float> zeroinitializer, ptr %i.ay, align 4
  store float 1.000000e+00, ptr %i.az, align 4
  store <4 x float> zeroinitializer, ptr %i.ba, align 8
  store float 1.000000e+00, ptr %i.bb, align 8
  store <4 x float> zeroinitializer, ptr %i.bc, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.bd, align 4
  store <4 x float> zeroinitializer, ptr %i.be, align 4
  store float 1.000000e+00, ptr %i.bf, align 4
  store <4 x float> zeroinitializer, ptr %i.bg, align 8
  store float 1.000000e+00, ptr %i.bh, align 8
  store <4 x float> zeroinitializer, ptr %i.bi, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.bj, align 4
  store <4 x float> zeroinitializer, ptr %i.bk, align 4
  store float 1.000000e+00, ptr %i.bl, align 4
  store <4 x float> zeroinitializer, ptr %i.bm, align 8
  store float 1.000000e+00, ptr %i.bn, align 8
  store <4 x float> zeroinitializer, ptr %i.bo, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.bp, align 4
  store <4 x float> zeroinitializer, ptr %i.bq, align 4
  store float 1.000000e+00, ptr %i.br, align 4
  store <4 x float> zeroinitializer, ptr %i.bs, align 8
  store float 1.000000e+00, ptr %i.bt, align 8
  store <4 x float> zeroinitializer, ptr %i.bu, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.bv, align 4
  store <4 x float> zeroinitializer, ptr %i.bw, align 4
  store float 1.000000e+00, ptr %i.bx, align 4
  store <4 x float> zeroinitializer, ptr %i.by, align 8
  store float 1.000000e+00, ptr %i.bz, align 8
  store <4 x float> zeroinitializer, ptr %i.ca, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.cb, align 4
  store <4 x float> zeroinitializer, ptr %i.cc, align 4
  store float 1.000000e+00, ptr %i.cd, align 4
  store <4 x float> zeroinitializer, ptr %i.ce, align 8
  store float 1.000000e+00, ptr %i.cf, align 8
  store <4 x float> zeroinitializer, ptr %i.cg, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.ch, align 4
  store <4 x float> zeroinitializer, ptr %i.ci, align 4
  store float 1.000000e+00, ptr %i.cj, align 4
  store <4 x float> zeroinitializer, ptr %i.ck, align 8
  store float 1.000000e+00, ptr %i.cl, align 8
  store <4 x float> zeroinitializer, ptr %i.cm, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.cn, align 4
  store <4 x float> zeroinitializer, ptr %i.co, align 4
  store float 1.000000e+00, ptr %i.cp, align 4
  store <4 x float> zeroinitializer, ptr %i.cq, align 8
  store float 1.000000e+00, ptr %i.cr, align 8
  store <4 x float> zeroinitializer, ptr %i.cs, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.ct, align 4
  store <4 x float> zeroinitializer, ptr %i.cu, align 4
  store float 1.000000e+00, ptr %i.cv, align 4
  store <4 x float> zeroinitializer, ptr %i.cw, align 8
  store float 1.000000e+00, ptr %i.cx, align 8
  store <4 x float> zeroinitializer, ptr %i.cy, align 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.cz, align 4
  store <4 x float> zeroinitializer, ptr %i.da, align 4
  store float 1.000000e+00, ptr %i.db, align 4
  store <4 x float> zeroinitializer, ptr %i.dc, align 8
  store float 1.000000e+00, ptr %i.dd, align 8
  store <4 x float> zeroinitializer, ptr %i.de, align 4
  store float 1.000000e+00, ptr %i.df, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
end_hunk_1
begin_hunk_2
define linkonce_odr hidden { <2 x float>, float } @_ZNK6Assimp3FBX5Light5ColorEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca <2 x float>, align 8          ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
end_hunk_2
begin_hunk_3
  %16 = alloca %"class.std::vector.582", align 16 ; 10 uses
  %17 = alloca %class.aiVector3t, align 8         ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0609 = alloca <2 x float>, align 8       ; 6 uses
  %.sroa.6610 = alloca float, align 4             ; 5 uses
  %19 = alloca %class.aiVector3t, align 8         ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0606 = alloca <2 x float>, align 8       ; 6 uses
  %.sroa.6607 = alloca float, align 4             ; 5 uses
  %21 = alloca %class.aiVector3t, align 8         ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca <2 x float>, align 8          ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %23 = alloca %class.aiVector3t, align 8         ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_3
begin_hunk_4
define linkonce_odr hidden { <2 x float>, float } @_ZNK6Assimp3FBX18FileGlobalSettings12AmbientColorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca <2 x float>, align 8          ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
end_hunk_4
