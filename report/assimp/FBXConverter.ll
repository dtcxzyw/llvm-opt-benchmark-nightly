begin_hunk_0
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %5 = alloca [17 x %class.aiMatrix4x4t], align 16 ; 337 uses
  %6 = alloca %class.aiVector3t, align 8          ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %class.aiVector3t, align 8          ; 6 uses
end_hunk_0
begin_hunk_1
  %i.h = tail call noundef i32 @_ZNK6Assimp3FBX5Model13RotationOrderEv(ptr noundef nonnull align 8 dereferenceable(208) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store float 1.000000e+00, ptr %5, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 108
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store <2 x float> splat (float 1.000000e+00), ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 132
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 172
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %5, i64 192
  store <2 x float> splat (float 1.000000e+00), ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 196
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 236
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 252
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %5, i64 256
  store <2 x float> splat (float 1.000000e+00), ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 260
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 300
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %5, i64 320
  store <2 x float> splat (float 1.000000e+00), ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 324
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 364
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 380
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %5, i64 384
  store <2 x float> splat (float 1.000000e+00), ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 388
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 404
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 408
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 428
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 444
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %5, i64 448
  store <2 x float> splat (float 1.000000e+00), ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 452
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 492
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 508
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %5, i64 512 ; 3 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 516
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 532
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 536
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 556
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %5, i64 576
  store <2 x float> splat (float 1.000000e+00), ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 580
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 596
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 600
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 620
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 636
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %5, i64 640
  store <2 x float> splat (float 1.000000e+00), ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 644
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 664
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 684
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %5, i64 704
  store <2 x float> splat (float 1.000000e+00), ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 708
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 724
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 728
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 748
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 764
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %5, i64 768
  store <2 x float> splat (float 1.000000e+00), ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 772
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 788
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 792
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 812
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 828
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %5, i64 832
  store <2 x float> splat (float 1.000000e+00), ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 836
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 852
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 856
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 876
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 892
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %5, i64 896
  store <2 x float> splat (float 1.000000e+00), ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 900
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 916
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 920
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 940
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 956
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %5, i64 960
  store <2 x float> splat (float 1.000000e+00), ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 964
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 984
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 1000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 1004
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 1020
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  store <2 x float> splat (float 1.000000e+00), ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 1028
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 1044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 1048
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 1064
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 1068
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 1084
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.df, align 4
  store float 1.000000e+00, ptr %5, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 60
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx, align 4
  %.06.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.1, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.1, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 84
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.1, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.1, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.1, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.1, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 124
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.1, align 4
  %.06.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.2, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.2, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 148
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.2, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.2, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.2, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.2, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.2, align 4
  %.06.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %5, i64 192
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.3, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.3, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 212
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.3, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.3, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 232
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.3, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.3, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 252
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.3, align 4
  %.06.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %5, i64 256
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.4, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.4 = getelementptr inbounds nuw i8, ptr %5, i64 260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.4, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.4 = getelementptr inbounds nuw i8, ptr %5, i64 276
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.4, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.4 = getelementptr inbounds nuw i8, ptr %5, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.4, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.4 = getelementptr inbounds nuw i8, ptr %5, i64 296
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.4, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.4 = getelementptr inbounds nuw i8, ptr %5, i64 300
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.4, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.4 = getelementptr inbounds nuw i8, ptr %5, i64 316
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.4, align 4
  %.06.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %5, i64 320
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.5, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.5 = getelementptr inbounds nuw i8, ptr %5, i64 324
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.5, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.5 = getelementptr inbounds nuw i8, ptr %5, i64 340
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.5, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.5 = getelementptr inbounds nuw i8, ptr %5, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.5, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.5 = getelementptr inbounds nuw i8, ptr %5, i64 360
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.5, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.5 = getelementptr inbounds nuw i8, ptr %5, i64 364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.5, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.5 = getelementptr inbounds nuw i8, ptr %5, i64 380
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.5, align 4
  %.06.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %5, i64 384
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.6, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.6 = getelementptr inbounds nuw i8, ptr %5, i64 388
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.6, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.6 = getelementptr inbounds nuw i8, ptr %5, i64 404
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.6, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.6 = getelementptr inbounds nuw i8, ptr %5, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.6, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.6 = getelementptr inbounds nuw i8, ptr %5, i64 424
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.6, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.6 = getelementptr inbounds nuw i8, ptr %5, i64 428
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.6, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.6 = getelementptr inbounds nuw i8, ptr %5, i64 444
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.6, align 4
  %.06.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %5, i64 448
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.7, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %5, i64 452
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.7, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %5, i64 468
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.7, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %5, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.7, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %5, i64 488
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.7, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %5, i64 492
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.7, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %5, i64 508
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.7, align 4
  %.06.i.i.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %5, i64 512
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.8, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.8 = getelementptr inbounds nuw i8, ptr %5, i64 516
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.8, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.8 = getelementptr inbounds nuw i8, ptr %5, i64 532
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.8, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.8 = getelementptr inbounds nuw i8, ptr %5, i64 536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.8, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.8 = getelementptr inbounds nuw i8, ptr %5, i64 552
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.8, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.8 = getelementptr inbounds nuw i8, ptr %5, i64 556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.8, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.8 = getelementptr inbounds nuw i8, ptr %5, i64 572
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.8, align 4
  %.06.i.i.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %5, i64 576
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.9, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.9 = getelementptr inbounds nuw i8, ptr %5, i64 580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.9, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.9 = getelementptr inbounds nuw i8, ptr %5, i64 596
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.9, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.9 = getelementptr inbounds nuw i8, ptr %5, i64 600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.9, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.9 = getelementptr inbounds nuw i8, ptr %5, i64 616
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.9, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.9 = getelementptr inbounds nuw i8, ptr %5, i64 620
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.9, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.9 = getelementptr inbounds nuw i8, ptr %5, i64 636
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.9, align 4
  %.06.i.i.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %5, i64 640
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.10, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.10 = getelementptr inbounds nuw i8, ptr %5, i64 644
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.10, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.10 = getelementptr inbounds nuw i8, ptr %5, i64 660
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.10, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.10 = getelementptr inbounds nuw i8, ptr %5, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.10, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.10 = getelementptr inbounds nuw i8, ptr %5, i64 680
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.10, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.10 = getelementptr inbounds nuw i8, ptr %5, i64 684
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.10, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.10 = getelementptr inbounds nuw i8, ptr %5, i64 700
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.10, align 4
  %.06.i.i.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %5, i64 704
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.11, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.11 = getelementptr inbounds nuw i8, ptr %5, i64 708
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.11, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.11 = getelementptr inbounds nuw i8, ptr %5, i64 724
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.11, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.11 = getelementptr inbounds nuw i8, ptr %5, i64 728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.11, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.11 = getelementptr inbounds nuw i8, ptr %5, i64 744
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.11, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.11 = getelementptr inbounds nuw i8, ptr %5, i64 748
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.11, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.11 = getelementptr inbounds nuw i8, ptr %5, i64 764
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.11, align 4
  %.06.i.i.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %5, i64 768
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.12, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.12 = getelementptr inbounds nuw i8, ptr %5, i64 772
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.12, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.12 = getelementptr inbounds nuw i8, ptr %5, i64 788
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.12, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.12 = getelementptr inbounds nuw i8, ptr %5, i64 792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.12, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.12 = getelementptr inbounds nuw i8, ptr %5, i64 808
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.12, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.12 = getelementptr inbounds nuw i8, ptr %5, i64 812
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.12, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.12 = getelementptr inbounds nuw i8, ptr %5, i64 828
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.12, align 4
  %.06.i.i.i.i.ptr.13 = getelementptr inbounds nuw i8, ptr %5, i64 832
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.13, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.13 = getelementptr inbounds nuw i8, ptr %5, i64 836
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.13, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.13 = getelementptr inbounds nuw i8, ptr %5, i64 852
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.13, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.13 = getelementptr inbounds nuw i8, ptr %5, i64 856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.13, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.13 = getelementptr inbounds nuw i8, ptr %5, i64 872
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.13, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.13 = getelementptr inbounds nuw i8, ptr %5, i64 876
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.13, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.13 = getelementptr inbounds nuw i8, ptr %5, i64 892
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.13, align 4
  %.06.i.i.i.i.ptr.14 = getelementptr inbounds nuw i8, ptr %5, i64 896
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.14, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.14 = getelementptr inbounds nuw i8, ptr %5, i64 900
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.14, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.14 = getelementptr inbounds nuw i8, ptr %5, i64 916
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.14, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.14 = getelementptr inbounds nuw i8, ptr %5, i64 920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.14, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.14 = getelementptr inbounds nuw i8, ptr %5, i64 936
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.14, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.14 = getelementptr inbounds nuw i8, ptr %5, i64 940
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.14, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.14 = getelementptr inbounds nuw i8, ptr %5, i64 956
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.14, align 4
  %.06.i.i.i.i.ptr.15 = getelementptr inbounds nuw i8, ptr %5, i64 960
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.15, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.15 = getelementptr inbounds nuw i8, ptr %5, i64 964
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.15, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.15 = getelementptr inbounds nuw i8, ptr %5, i64 980
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.15, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.15 = getelementptr inbounds nuw i8, ptr %5, i64 984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.15, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.15 = getelementptr inbounds nuw i8, ptr %5, i64 1000
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.15, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.15 = getelementptr inbounds nuw i8, ptr %5, i64 1004
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.15, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.15 = getelementptr inbounds nuw i8, ptr %5, i64 1020
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.15, align 4
  %.06.i.i.i.i.ptr.16 = getelementptr inbounds nuw i8, ptr %5, i64 1024
  store float 1.000000e+00, ptr %.06.i.i.i.i.ptr.16, align 16
  %.sroa.4.0..06.i.i.i.i.sroa_idx.16 = getelementptr inbounds nuw i8, ptr %5, i64 1028
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..06.i.i.i.i.sroa_idx.16, i8 0, i64 16, i1 false)
  %.sroa.5733.0..06.i.i.i.i.sroa_idx.16 = getelementptr inbounds nuw i8, ptr %5, i64 1044
  store float 1.000000e+00, ptr %.sroa.5733.0..06.i.i.i.i.sroa_idx.16, align 4
  %.sroa.6734.0..06.i.i.i.i.sroa_idx.16 = getelementptr inbounds nuw i8, ptr %5, i64 1048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6734.0..06.i.i.i.i.sroa_idx.16, i8 0, i64 16, i1 false)
  %.sroa.7735.0..06.i.i.i.i.sroa_idx.16 = getelementptr inbounds nuw i8, ptr %5, i64 1064
  store float 1.000000e+00, ptr %.sroa.7735.0..06.i.i.i.i.sroa_idx.16, align 8
  %.sroa.8736.0..06.i.i.i.i.sroa_idx.16 = getelementptr inbounds nuw i8, ptr %5, i64 1068
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8736.0..06.i.i.i.i.sroa_idx.16, i8 0, i64 16, i1 false)
  %.sroa.9737.0..06.i.i.i.i.sroa_idx.16 = getelementptr inbounds nuw i8, ptr %5, i64 1084
  store float 1.000000e+00, ptr %.sroa.9737.0..06.i.i.i.i.sroa_idx.16, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
end_hunk_1
begin_hunk_2
define linkonce_odr hidden { <2 x float>, float } @_ZNK6Assimp3FBX5Light5ColorEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca { float, float }, align 8     ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
end_hunk_2
begin_hunk_3
  %16 = alloca %"class.std::vector.582", align 16 ; 10 uses
  %17 = alloca %class.aiVector3t, align 8         ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0609 = alloca { float, float }, align 8  ; 6 uses
  %.sroa.6610 = alloca float, align 4             ; 5 uses
  %19 = alloca %class.aiVector3t, align 8         ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0606 = alloca { float, float }, align 8  ; 6 uses
  %.sroa.6607 = alloca float, align 4             ; 5 uses
  %21 = alloca %class.aiVector3t, align 8         ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca { float, float }, align 8     ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %23 = alloca %class.aiVector3t, align 8         ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_3
begin_hunk_4
define linkonce_odr hidden { <2 x float>, float } @_ZNK6Assimp3FBX18FileGlobalSettings12AmbientColorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca { float, float }, align 8     ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
end_hunk_4
