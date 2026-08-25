Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Scope?download=true
begin_hunk_0_@_ZN5clang5Scope9applyNRVOEv:bb.a
  %.not.i = icmp ne i32 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.z = load ptr, ptr %i.y, align 8
  %.not16 = icmp eq ptr %i.z, null
  %.not1 = select i1 %.not.i, i1 true, i1 %.not16
  br i1 %.not1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5clang5Scope11isDeclScopeEPKNS_4DeclE.exit.thread
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.ab = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 416
  store ptr %i.aa, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 424
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %_ZNK5clang5Scope11isDeclScopeEPKNS_4DeclE.exit.thread
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_ZNK5clang5Scope4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #10
  tail call void @_ZNK5clang5Scope8dumpImplERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang5Scope8dumpImplERN4llvm11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca [33 x %"struct.std::pair"], align 16 ; 69 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 7
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 7) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  store ptr %i.m, ptr %i.e, align 8, !tbaa !76
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i32 1, ptr %2, align 16, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.1, ptr %i.n, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2, ptr %i.o, align 16, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @.str.2, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 4, ptr %i.q, align 16, !tbaa !77
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.3, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 8, ptr %i.s, align 16, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.4, ptr %i.t, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 16, ptr %i.u, align 16, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @.str.5, ptr %i.v, align 8, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 32, ptr %i.w, align 16, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr @.str.6, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 64, ptr %i.y, align 16, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr @.str.7, ptr %i.z, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i32 128, ptr %i.aa, align 16, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr @.str.8, ptr %i.ab, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 256, ptr %i.ac, align 16, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 136
  store ptr @.str.9, ptr %i.ad, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 512, ptr %i.ae, align 16, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr @.str.10, ptr %i.af, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 1024, ptr %i.ag, align 16, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 168
  store ptr @.str.11, ptr %i.ah, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i32 2048, ptr %i.ai, align 16, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr @.str.12, ptr %i.aj, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i32 4096, ptr %i.ak, align 16, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr @.str.13, ptr %i.al, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i32 8192, ptr %i.am, align 16, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 216
  store ptr @.str.14, ptr %i.an, align 8, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i32 16384, ptr %i.ao, align 16, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 232
  store ptr @.str.15, ptr %i.ap, align 8, !tbaa !79
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 32768, ptr %i.aq, align 16, !tbaa !77
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 248
  store ptr @.str.16, ptr %i.ar, align 8, !tbaa !79
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 256
  store i32 65536, ptr %i.as, align 16, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 264
  store ptr @.str.17, ptr %i.at, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 272
  store i32 131072, ptr %i.au, align 16, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr @.str.18, ptr %i.av, align 8, !tbaa !79
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i32 262144, ptr %i.aw, align 16, !tbaa !77
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr @.str.19, ptr %i.ax, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i32 524288, ptr %i.ay, align 16, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 312
  store ptr @.str.20, ptr %i.az, align 8, !tbaa !79
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 320
  store i32 1048576, ptr %i.ba, align 16, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr @.str.21, ptr %i.bb, align 8, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i32 2097152, ptr %i.bc, align 16, !tbaa !77
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr @.str.22, ptr %i.bd, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i32 4194304, ptr %i.be, align 16, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 360
  store ptr @.str.23, ptr %i.bf, align 8, !tbaa !79
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 368
  store i32 8388608, ptr %i.bg, align 16, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 376
  store ptr @.str.24, ptr %i.bh, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 384
  store i32 16777216, ptr %i.bi, align 16, !tbaa !77
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 392
  store ptr @.str.25, ptr %i.bj, align 8, !tbaa !79
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i32 33554432, ptr %i.bk, align 16, !tbaa !77
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 408
  store ptr @.str.26, ptr %i.bl, align 8, !tbaa !79
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i32 67108864, ptr %i.bm, align 16, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 424
  store ptr @.str.27, ptr %i.bn, align 8, !tbaa !79
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i32 134217728, ptr %i.bo, align 16, !tbaa !77
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 440
  store ptr @.str.28, ptr %i.bp, align 8, !tbaa !79
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 448
  store i32 268435456, ptr %i.bq, align 16, !tbaa !77
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 456
  store ptr @.str.29, ptr %i.br, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i32 1073741824, ptr %i.bs, align 16, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 472
  store ptr @.str.30, ptr %i.bt, align 8, !tbaa !79
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i32 -2147483648, ptr %i.bu, align 16, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 488
  store ptr @.str.31, ptr %i.bv, align 8, !tbaa !79
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 496
  store i32 268435456, ptr %i.bw, align 16, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 504
  store ptr @.str.29, ptr %i.bx, align 8, !tbaa !79
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 512
  store i32 536870912, ptr %i.by, align 16, !tbaa !77
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 520
  store ptr @.str.32, ptr %i.bz, align 8, !tbaa !79
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 31 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit47
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEc.exit, label %bb.n

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit47
  %.0133 = phi i32 [ %i.b, %_ZN4llvm11raw_ostreamlsEPKc.exit ], [ %.1, %_ZN4llvm11raw_ostreamlsEPKc.exit47 ] ; 3 uses
  %.030.idx132 = phi i64 [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit ], [ %.030.add, %_ZN4llvm11raw_ostreamlsEPKc.exit47 ] ; 2 uses
  %.030.ptr134 = getelementptr inbounds nuw i8, ptr %2, i64 %.030.idx132 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.030.ptr134, align 16 ; 2 uses
  %i.cc = and i32 %.sroa.0.0.copyload, %.0133
  %.not39 = icmp eq i32 %i.cc, 0
  br i1 %.not39, label %_ZN4llvm11raw_ostreamlsEPKc.exit47, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.030.ptr134, i64 8
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.55.0.copyload, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit43, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.g
  %i.cd = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.55.0.copyload) #10 ; 5 uses
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !71
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = icmp ugt i64 %i.cd, %i.ci
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.ck = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %.sroa.55.0.copyload, i64 noundef %i.cd) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit43

bb.i:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i41 = icmp eq i64 %i.cd, 0
  br i1 %.not.i2.i41, label %_ZN4llvm11raw_ostreamlsEPKc.exit43, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 1 %.sroa.55.0.copyload, i64 %i.cd, i1 false)
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  store ptr %i.cm, ptr %i.cb, align 8, !tbaa !76
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit43

_ZN4llvm11raw_ostreamlsEPKc.exit43:               ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.cn = xor i32 %.sroa.0.0.copyload, -1
  %i.co = and i32 %.0133, %i.cn                   ; 3 uses
  %.not40 = icmp eq i32 %i.co, 0
  br i1 %.not40, label %_ZN4llvm11raw_ostreamlsEPKc.exit47, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit43
  %i.cp = load ptr, ptr %i.ca, align 8, !tbaa !71
  %i.cq = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ult i64 %i.ct, 3
  br i1 %i.cu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.33, i64 noundef 3) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit47

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cq, ptr noundef nonnull align 1 dereferenceable(3) @.str.33, i64 3, i1 false)
  %i.cw = load ptr, ptr %i.cb, align 8, !tbaa !76
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store ptr %i.cx, ptr %i.cb, align 8, !tbaa !76
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit47

_ZN4llvm11raw_ostreamlsEPKc.exit47:               ; preds = %bb.m, %bb.l, %_ZN4llvm11raw_ostreamlsEPKc.exit43, %bb.f
  %.1 = phi i32 [ %.0133, %bb.f ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit43 ], [ %i.co, %bb.l ], [ %i.co, %bb.m ]
  %.030.add = add nuw nsw i64 %.030.idx132, 16    ; 2 uses
  %.not35 = icmp eq i64 %.030.add, 528
  br i1 %.not35, label %bb.e, label %bb.f

bb.n:                                             ; preds = %bb.e
  %i.cy = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 3 uses
  %i.cz = load ptr, ptr %i.ca, align 8, !tbaa !71
  %.not.i = icmp ult ptr %i.cy, %i.cz
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 10) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.p:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store ptr %i.db, ptr %i.cb, align 8, !tbaa !76
  store i8 10, ptr %i.cy, align 1, !tbaa !80
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.p, %bb.o, %bb.e
  %i.dc = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %.not36 = icmp eq ptr %i.dc, null
  br i1 %.not36, label %_ZN4llvm11raw_ostreamlsEc.exit54, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.dd = load ptr, ptr %i.ca, align 8, !tbaa !71
  %i.de = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp ult i64 %i.dh, 23
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.34, i64 noundef 23) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.de, ptr noundef nonnull align 1 dereferenceable(23) @.str.34, i64 23, i1 false)
  %i.dk = load ptr, ptr %i.cb, align 8, !tbaa !76
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 23
  store ptr %i.dl, ptr %i.cb, align 8, !tbaa !76
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51

_ZN4llvm11raw_ostreamlsEPKc.exit51:               ; preds = %bb.r, %bb.s
  %.0.i.i50 = phi ptr [ %i.dj, %bb.r ], [ %1, %bb.s ]
  %i.dm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i50, ptr noundef nonnull %i.dc) #10 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !76 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !71
  %.not.i52 = icmp ult ptr %i.do, %i.dq
  br i1 %.not.i52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit51
  %i.dr = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.dm, i8 noundef zeroext 10) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit54

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit51
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !76
  store i8 10, ptr %i.do, align 1, !tbaa !80
  br label %_ZN4llvm11raw_ostreamlsEc.exit54

_ZN4llvm11raw_ostreamlsEc.exit54:                 ; preds = %bb.u, %bb.t, %_ZN4llvm11raw_ostreamlsEc.exit
  %i.dt = load ptr, ptr %i.ca, align 8, !tbaa !71
  %i.du = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp ult i64 %i.dx, 7
  br i1 %i.dy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit54
  %i.dz = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.35, i64 noundef 7) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit58

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.du, ptr noundef nonnull align 1 dereferenceable(7) @.str.35, i64 7, i1 false)
  %i.ea = load ptr, ptr %i.cb, align 8, !tbaa !76
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 7
  store ptr %i.eb, ptr %i.cb, align 8, !tbaa !76
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit58

_ZN4llvm11raw_ostreamlsEPKc.exit58:               ; preds = %bb.v, %bb.w
  %.0.i.i57 = phi ptr [ %i.dz, %bb.v ], [ %1, %bb.w ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ed = load i16, ptr %i.ec, align 4, !tbaa !36
  %i.ee = zext i16 %i.ed to i64
  %i.ef = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i57, i64 noundef %i.ee) #10 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !76 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !71
  %.not.i59 = icmp ult ptr %i.eh, %i.ej
  br i1 %.not.i59, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit58
  %i.ek = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, i8 noundef zeroext 10) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit61

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit58
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store ptr %i.el, ptr %i.eg, align 8, !tbaa !76
  store i8 10, ptr %i.eh, align 1, !tbaa !80
  br label %_ZN4llvm11raw_ostreamlsEc.exit61

_ZN4llvm11raw_ostreamlsEc.exit61:                 ; preds = %bb.x, %bb.y
  %i.em = load ptr, ptr %i.ca, align 8, !tbaa !71
  %i.en = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp ult i64 %i.eq, 22
  br i1 %i.er, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit61
  %i.es = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.36, i64 noundef 22) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.en, ptr noundef nonnull align 1 dereferenceable(22) @.str.36, i64 22, i1 false)
  %i.et = load ptr, ptr %i.cb, align 8, !tbaa !76
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 22
  store ptr %i.eu, ptr %i.cb, align 8, !tbaa !76
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

_ZN4llvm11raw_ostreamlsEPKc.exit65:               ; preds = %bb.z, %bb.aa
  %.0.i.i64 = phi ptr [ %i.es, %bb.z ], [ %1, %bb.aa ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !40 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ew, null
  br i1 %.not.not.i, label %_ZNK5clang5Scope23getMSLastManglingNumberEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 14
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !41
  %i.ez = zext i16 %i.ey to i64
  br label %_ZNK5clang5Scope23getMSLastManglingNumberEv.exit

_ZNK5clang5Scope23getMSLastManglingNumberEv.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65, %bb.ab
  %spec.select.i = phi i64 [ %i.ez, %bb.ab ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit65 ]
  %i.fa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i64, i64 noundef %spec.select.i) #10 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !76 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !71
  %.not.i66 = icmp ult ptr %i.fc, %i.fe
  br i1 %.not.i66, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5clang5Scope23getMSLastManglingNumberEv.exit
  %i.ff = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.fa, i8 noundef zeroext 10) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit68

bb.ad:                                            ; preds = %_ZNK5clang5Scope23getMSLastManglingNumberEv.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.fg, ptr %i.fb, align 8, !tbaa !76
  store i8 10, ptr %i.fc, align 1, !tbaa !80
  br label %_ZN4llvm11raw_ostreamlsEc.exit68

_ZN4llvm11raw_ostreamlsEc.exit68:                 ; preds = %bb.ac, %bb.ad
  %i.fh = load ptr, ptr %i.ca, align 8, !tbaa !71
  %i.fi = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = icmp ult i64 %i.fl, 21
  br i1 %i.fm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit68
  %i.fn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.37, i64 noundef 21) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit72

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.fi, ptr noundef nonnull align 1 dereferenceable(21) @.str.37, i64 21, i1 false)
  %i.fo = load ptr, ptr %i.cb, align 8, !tbaa !76
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 21
  store ptr %i.fp, ptr %i.cb, align 8, !tbaa !76
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit72

_ZN4llvm11raw_ostreamlsEPKc.exit72:               ; preds = %bb.ae, %bb.af
  %.0.i.i71 = phi ptr [ %i.fn, %bb.ae ], [ %1, %bb.af ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = load i16, ptr %i.fq, align 8, !tbaa !42
  %i.fs = zext i16 %i.fr to i64
  %i.ft = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i71, i64 noundef %i.fs) #10 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !76 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !71
  %.not.i73 = icmp ult ptr %i.fv, %i.fx
  br i1 %.not.i73, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit72
  %i.fy = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ft, i8 noundef zeroext 10) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit75

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit72
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  store ptr %i.fz, ptr %i.fu, align 8, !tbaa !76
end_hunk_0
