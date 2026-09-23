Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/arch_dump?download=true
inline.NumInlined: 34
inline.NumDeleted: 7
begin_hunk_0_@x86_cpu_write_elf64_note:bb.a
  %i.cn = trunc i32 %i.cm to i16
  %i.co = load i32, ptr %i.ce, align 8
  %i.cp = trunc i32 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16904
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 16928
  %i.cu = load i32, ptr %i.ct, align 16
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = load <2 x i64>, ptr %i.br, align 16
  %i.cx = load <2 x i64>, ptr %i.bs, align 8
  %i.cy = shufflevector <2 x i64> %i.cx, <2 x i64> %i.cw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cz = trunc <4 x i64> %i.cy to <4 x i32>
  %i.da = tail call noalias dereferenceable_or_null(164) ptr @g_malloc0(i64 noundef 164) #8 ; 28 uses
  store i32 5, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 144, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 1, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.dd, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 noundef 5, i1 noundef false) #7
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.de, i8 0, i64 24, i1 false)
  %.sroa.5.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.da, i64 44
  store i32 %2, ptr %.sroa.5.0..sroa_idx.i13, align 4
  %.sroa.6.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx.i14, i8 0, i64 44, i1 false)
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 92
  store i32 %i.bv, ptr %.sroa.624.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  store <4 x i32> %i.cz, ptr %.sroa.7.0..sroa_idx.i15, align 4
  %.sroa.11.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  store i32 %i.bn, ptr %.sroa.11.0..sroa_idx.i19, align 4
  %.sroa.12.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.da, i64 116
  store i32 %i.bx, ptr %.sroa.12.0..sroa_idx.i20, align 4
  %.sroa.13.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.da, i64 120
  store i16 %i.cn, ptr %.sroa.13.0..sroa_idx.i21, align 4
  %.sroa.14.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.da, i64 122
  store i16 0, ptr %.sroa.14.0..sroa_idx.i22, align 2
  %.sroa.1425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 124
  store i16 %i.cp, ptr %.sroa.1425.0..sroa_idx.i, align 4
  %.sroa.15.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.da, i64 126
  store i16 0, ptr %.sroa.15.0..sroa_idx.i23, align 2
  %.sroa.1526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  store i16 %i.cs, ptr %.sroa.1526.0..sroa_idx.i, align 4
  %.sroa.16.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.da, i64 130
  store i16 0, ptr %.sroa.16.0..sroa_idx.i24, align 2
  %.sroa.1627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 132
  store i16 %i.cv, ptr %.sroa.1627.0..sroa_idx.i, align 4
  %.sroa.17.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.da, i64 134
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17.0..sroa_idx.i25, i8 0, i64 6, i1 false)
  %.sroa.1728.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 140
  store i32 %i.ca, ptr %.sroa.1728.0..sroa_idx.i, align 4
  %.sroa.18.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.da, i64 144
  store i16 %i.ch, ptr %.sroa.18.0..sroa_idx.i26, align 4
  %.sroa.19.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.da, i64 146
  store i16 0, ptr %.sroa.19.0..sroa_idx.i27, align 2
  %.sroa.1929.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 148
  store i32 %i.cd, ptr %.sroa.1929.0..sroa_idx.i, align 4
  %.sroa.20.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.da, i64 152
  store i32 %i.bq, ptr %.sroa.20.0..sroa_idx.i28, align 4
  %.sroa.21.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.da, i64 156
  store i16 %i.ck, ptr %.sroa.21.0..sroa_idx.i29, align 4
  %.sroa.22.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.da, i64 158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.0..sroa_idx.i30, i8 0, i64 6, i1 false)
  %i.df = tail call i32 %0(ptr noundef nonnull %i.da, i64 noundef 164, ptr noundef %3) #7, !inline_history !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.da, %bb.c ], [ %i.be, %bb.b ]
  %.0.in = phi i32 [ %i.df, %bb.c ], [ %i.bk, %bb.b ]
  tail call void @g_free(ptr noundef nonnull %.sink) #7
  %.0 = ashr i32 %.0.in, 31
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @x86_cpu_write_elf32_note(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16496
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16536
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16528
  %i.g = load i64, ptr %i.f, align 16
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16544
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16504
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16520
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = load i64, ptr %i.b, align 16
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16752
  %i.q = load i64, ptr %i.p, align 16
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16760
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16808
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16832
  %i.x = load i32, ptr %i.w, align 16
  %i.y = trunc i32 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16856
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16880
  %i.ad = load i32, ptr %i.ac, align 16
  %i.ae = trunc i32 %i.ad to i16
  %i.af = load i32, ptr %i.v, align 8
  %i.ag = trunc i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16904
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16928
  %i.al = load i32, ptr %i.ak, align 16
  %i.am = trunc i32 %i.al to i16
  %i.an = load <2 x i64>, ptr %i.i, align 16
  %i.ao = load <2 x i64>, ptr %i.j, align 8
  %i.ap = shufflevector <2 x i64> %i.ao, <2 x i64> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aq = trunc <4 x i64> %i.ap to <4 x i32>
  %i.ar = tail call noalias dereferenceable_or_null(164) ptr @g_malloc0(i64 noundef 164) #8 ; 28 uses
  store i32 5, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 144, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 1, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.au, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 noundef 5, i1 noundef false) #7
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.6.0..sroa_idx, i8 0, i64 44, i1 false)
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 92
  store i32 %i.m, ptr %.sroa.625.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store <4 x i32> %i.aq, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  store i32 %i.e, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 116
  store i32 %i.o, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store i16 %i.ae, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 122
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.1426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 124
  store i16 %i.ag, ptr %.sroa.1426.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 126
  store i16 0, ptr %.sroa.15.0..sroa_idx, align 2
  %.sroa.1527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  store i16 %i.aj, ptr %.sroa.1527.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 130
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 2
  %.sroa.1628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 132
  store i16 %i.am, ptr %.sroa.1628.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 134
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17.0..sroa_idx, i8 0, i64 6, i1 false)
  %.sroa.1729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 140
  store i32 %i.r, ptr %.sroa.1729.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  store i16 %i.y, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 146
  store i16 0, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.1930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 148
  store i32 %i.u, ptr %.sroa.1930.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  store i32 %i.h, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 156
  store i16 %i.ab, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 158
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.0..sroa_idx, i8 0, i64 6, i1 false)
  %i.aw = tail call i32 %0(ptr noundef nonnull %i.ar, i64 noundef 164, ptr noundef %3) #7
  tail call void @g_free(ptr noundef nonnull %i.ar) #7
  %.lobit = ashr i32 %i.aw, 31
  ret i32 %.lobit
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @x86_cpu_write_elf64_qemunote(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16496
  %i.c = tail call fastcc i32 @cpu_write_qemu_note(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2)
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @cpu_write_qemu_note(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %3 = load i64, ptr %1, align 16
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.g = load i32, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.l = load i32, ptr %i.k, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.o = load i64, ptr %i.n, align 8
  %i.p = load i32, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.s = load i64, ptr %i.r, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.x = load i64, ptr %i.w, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.z = load i32, ptr %i.y, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.ah = load i64, ptr %i.ag, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.am = load i64, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ao = load i32, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.aw = load i64, ptr %i.av, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ay = load i32, ptr %i.ax, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 11464
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = load <2 x i32>, ptr %i.h, align 16
  %i.bj = load <2 x i32>, ptr %i.m, align 16
  %i.bk = load <2 x i32>, ptr %i.q, align 8
  %i.bl = load <2 x i32>, ptr %i.v, align 8
  %i.bm = load <2 x i32>, ptr %i.aa, align 16
  %i.bn = load <2 x i32>, ptr %i.af, align 8
  %i.bo = load <2 x i32>, ptr %i.ak, align 8
  %i.bp = load <2 x i32>, ptr %i.ap, align 16
  %i.bq = load <2 x i32>, ptr %i.au, align 8
  %i.br = load <2 x i32>, ptr %i.az, align 16
  %10 = load <2 x i64>, ptr %6, align 8
  %11 = load <2 x i64>, ptr %7, align 16
  %12 = load <2 x i64>, ptr %i.a, align 16
  %13 = load <2 x i64>, ptr %i.b, align 16
  %14 = load <2 x i64>, ptr %8, align 16
  %15 = load <2 x i64>, ptr %i.c, align 16
  %16 = load <2 x i64>, ptr %9, align 16
  %i.bs = load <2 x i64>, ptr %i.d, align 16
  %i.bt = load <2 x i64>, ptr %i.bc, align 8
  %i.bu = load <2 x i64>, ptr %i.bd, align 8
  %i.bv = tail call noalias dereferenceable_or_null(460) ptr @g_malloc0(i64 noundef 460) #8 ; 62 uses
  store i32 5, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 440, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 0, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.by, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 noundef 5, i1 noundef false) #7
  %17 = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store i32 1, ptr %17, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i32 440, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  store i64 %3, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 36
  store i64 %5, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 44
  store <2 x i64> %10, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bv, i64 60
  store <2 x i64> %11, ptr %.sroa.11.0..sroa_idx.a, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 76
  store <2 x i64> %12, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bv, i64 92
  store <2 x i64> %13, ptr %.sroa.15.0..sroa_idx.a, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 108
  store <2 x i64> %14, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bv, i64 124
  store <2 x i64> %15, ptr %.sroa.19.0..sroa_idx.a, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 140
  store <2 x i64> %16, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 156
  store <2 x i64> %i.bs, ptr %.sroa.23.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 172
  store i32 %i.g, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  store <2 x i32> %i.bi, ptr %.sroa.26.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  store i32 0, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 188
  store i64 %i.j, ptr %.sroa.29.0..sroa_idx, align 4
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 196
  store i32 %i.l, ptr %.sroa.30.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 200
  store <2 x i32> %i.bj, ptr %.sroa.31.0..sroa_idx, align 4
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 208
  store i32 0, ptr %.sroa.33.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 212
  store i64 %i.o, ptr %.sroa.34.0..sroa_idx, align 4
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 220
  store i32 %i.p, ptr %.sroa.35.0..sroa_idx, align 4
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  store <2 x i32> %i.bk, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  store i32 0, ptr %.sroa.38.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 236
  store i64 %i.s, ptr %.sroa.39.0..sroa_idx, align 4
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 244
  store i32 %i.u, ptr %.sroa.40.0..sroa_idx, align 4
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 248
  store <2 x i32> %i.bl, ptr %.sroa.41.0..sroa_idx, align 4
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 256
  store i32 0, ptr %.sroa.43.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 260
  store i64 %i.x, ptr %.sroa.44.0..sroa_idx, align 4
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 268
  store i32 %i.z, ptr %.sroa.45.0..sroa_idx, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 272
  store <2 x i32> %i.bm, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 280
  store i32 0, ptr %.sroa.48.0..sroa_idx, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 284
  store i64 %i.ac, ptr %.sroa.49.0..sroa_idx, align 4
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 292
  store i32 %i.ae, ptr %.sroa.50.0..sroa_idx, align 4
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 296
  store <2 x i32> %i.bn, ptr %.sroa.51.0..sroa_idx, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 304
  store i32 0, ptr %.sroa.53.0..sroa_idx, align 4
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 308
  store i64 %i.ah, ptr %.sroa.54.0..sroa_idx, align 4
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 316
  store i32 %i.aj, ptr %.sroa.55.0..sroa_idx, align 4
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 320
  store <2 x i32> %i.bo, ptr %.sroa.56.0..sroa_idx, align 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 328
  store i32 0, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 332
  store i64 %i.am, ptr %.sroa.59.0..sroa_idx, align 4
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 340
  store i32 %i.ao, ptr %.sroa.60.0..sroa_idx, align 4
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 344
  store <2 x i32> %i.bp, ptr %.sroa.61.0..sroa_idx, align 4
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 352
  store i32 0, ptr %.sroa.63.0..sroa_idx, align 4
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 356
  store i64 %i.ar, ptr %.sroa.64.0..sroa_idx, align 4
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 364
  store i32 %i.at, ptr %.sroa.65.0..sroa_idx, align 4
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 368
  store <2 x i32> %i.bq, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 376
  store i32 0, ptr %.sroa.68.0..sroa_idx, align 4
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 380
  store i64 %i.aw, ptr %.sroa.69.0..sroa_idx, align 4
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 388
  store i32 %i.ay, ptr %.sroa.70.0..sroa_idx, align 4
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 392
  store <2 x i32> %i.br, ptr %.sroa.71.0..sroa_idx, align 4
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 400
  store i32 0, ptr %.sroa.73.0..sroa_idx, align 4
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 404
  store i64 %i.bb, ptr %.sroa.74.0..sroa_idx, align 4
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 412
  store <2 x i64> %i.bt, ptr %.sroa.75.0..sroa_idx, align 4
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 428
  store <2 x i64> %i.bu, ptr %.sroa.77.0..sroa_idx, align 4
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 444
  store i64 %i.bf, ptr %.sroa.79.0..sroa_idx, align 4
  %.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 452
  store i64 %i.bh, ptr %.sroa.80.0..sroa_idx, align 4
  %i.bz = tail call i32 %0(ptr noundef nonnull %i.bv, i64 noundef 460, ptr noundef %2) #7
  tail call void @g_free(ptr noundef nonnull %i.bv) #7
  %.lobit = ashr i32 %i.bz, 31
  ret i32 %.lobit
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @x86_cpu_write_elf32_qemunote(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16496
  %i.c = tail call fastcc i32 @cpu_write_qemu_note(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %2)
  ret i32 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @cpu_get_dump_info(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @cpus_queue monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !11
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.c = load atomic ptr, ptr @cpus_queue monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !12
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16800
  %i.e = load i32, ptr %i.d, align 16
  %i.f = and i32 %i.e, 16384
  %.not17 = icmp eq i32 %i.f, 0                   ; 2 uses
  %. = select i1 %.not17, i32 3, i32 62
  store i32 %., ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.g, align 4
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.h, align 8
  br label %.loopexit

.critedge:                                        ; preds = %bb.a
  store i32 3, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.018 = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not1619 = icmp eq ptr %.018, null
  br i1 %.not1619, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 32
  %.0 = load ptr, ptr %i.l, align 8               ; 2 uses
  %.not16 = icmp eq ptr %.0, null
  br i1 %.not16, label %.loopexit, label %.lr.ph, !llvm.loop !10

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.020 = phi ptr [ %.0, %bb.e ], [ %.018, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp ugt i64 %i.n, 4294967295
  br i1 %i.o, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph
  store i32 2, ptr %i.j, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 -1752346656768, 1752346655953) i64 @cpu_get_note_size(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  %. = select i1 %i.a, i64 624, i64 816
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %., %i.b
  ret i64 %i.c
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
