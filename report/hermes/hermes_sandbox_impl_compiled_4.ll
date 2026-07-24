inline.NumInlined: 16097
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeSplice0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.k = add i32 %i.b, -36                        ; 2 uses
  %i.l = add i32 %i.b, -176                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val2039 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val2039, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val1897 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val1897, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 388
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 384                ; 6 uses
  %.val2038 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val2038, i64 %i.q
  store i32 %i.k, ptr %i.r, align 1
  %.val2037 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val2037, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 252
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %i.u = add nuw nsw i64 %i.e, 420                ; 7 uses
  %.val2036 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val2036, i64 %i.u
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -48
  %i.x = add nuw nsw i64 %i.e, 416                ; 6 uses
  %.val2035 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val2035, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %i.e, 412                ; 7 uses
  %.val2034 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2034, i64 %i.z
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -184                      ; 2 uses
  %.val2033 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2033, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = add i32 %i.b, -200
  %i.ae = zext i32 %4 to i64                      ; 2 uses
  %.val1958 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val1958, i64 %i.ae
  %.0.copyload.i2073 = load i32, ptr %i.af, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2073) #7, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoObject0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.ad, i32 noundef %3, i32 noundef %.0.copyload.i2073) #7
  %.val1957 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1957, i64 %i.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  %.0.copyload.i2074 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2074) #7, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i2074, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %1 to i64
  %.val2032 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2032, i64 %i.ai
  store i32 0, ptr %i.aj, align 1
  br label %bb.cq

bb.c:                                             ; preds = %bb.a
  %.val2060 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2060, i64 %i.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 240
  %.0.copyload.i2075 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2075) #7, !srcloc !24
  %i.am = zext i32 %.0.copyload.i2075 to i64
  %i.an = or disjoint i64 %i.am, -281474976710656 ; 2 uses
  %.val1956 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1956, i64 %i.i
  %.0.copyload.i2076 = load i32, ptr %i.ao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2076) #7, !srcloc !13
  %i.ap = zext i32 %.0.copyload.i2076 to i64      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 164              ; 2 uses
  %.val1955 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1955, i64 %i.aq
  %.0.copyload.i2077 = load i32, ptr %i.ar, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2077) #7, !srcloc !13
  %.val1954 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val1954, i64 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  %.0.copyload.i2078 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2078) #7, !srcloc !13
  %i.au = icmp ult i32 %.0.copyload.i2077, %.0.copyload.i2078
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = add i32 %.0.copyload.i2077, 8
  %.val2031 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val2031, i64 %i.aq
  store i32 %i.av, ptr %i.aw, align 1
  %i.ax = zext i32 %.0.copyload.i2077 to i64
  %.val1896 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1896, i64 %i.ax
  store i64 %i.an, ptr %i.ay, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.az = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2076, i64 noundef %i.an) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.01807 = phi i32 [ %.0.copyload.i2077, %bb.d ], [ %i.az, %bb.e ] ; 19 uses
  %.val2030 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2030, i64 %i.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store i32 0, ptr %i.bb, align 1
  %i.bc = add nuw nsw i64 %i.e, 120               ; 13 uses
  %.val2029 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val2029, i64 %i.bc
  store i32 0, ptr %i.bd, align 1
  %i.be = add i32 %i.b, -216
  %i.bf = add i32 %i.b, -368
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.be, i32 noundef %.01807, i32 noundef %3, i32 noundef 85, i32 noundef %.01807, i32 noundef %i.bf, i32 noundef 0) #7
  %.val1953 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1953, i64 %i.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %.0.copyload.i2079 = load i32, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2079) #7, !srcloc !13
  %.not1836 = icmp eq i32 %.0.copyload.i2079, 0
  br i1 %.not1836, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = zext i32 %1 to i64
  %.val2028 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2028, i64 %i.bi
  store i32 0, ptr %i.bj, align 1
  br label %bb.cq

bb.h:                                             ; preds = %bb.f
  %.val2059 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val2059, i64 %i.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  %.0.copyload.i2080 = load i64, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2080) #7, !srcloc !21
  %.val1952 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1952, i64 %i.i
  %.0.copyload.i2081 = load i32, ptr %i.bm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2081) #7, !srcloc !13
  %i.bn = zext i32 %.0.copyload.i2081 to i64      ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 164              ; 2 uses
  %.val1951 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1951, i64 %i.bo
  %.0.copyload.i2082 = load i32, ptr %i.bp, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2082) #7, !srcloc !13
  %.val1950 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1950, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 168
  %.0.copyload.i2083 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2083) #7, !srcloc !13
  %i.bs = icmp ult i32 %.0.copyload.i2082, %.0.copyload.i2083
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = add i32 %.0.copyload.i2082, 8
  %.val2027 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2027, i64 %i.bo
  store i32 %i.bt, ptr %i.bu, align 1
  %i.bv = zext i32 %.0.copyload.i2082 to i64
  %.val1895 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1895, i64 %i.bv
  store i64 %.0.copyload.i2080, ptr %i.bw, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bx = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2081, i64 noundef %.0.copyload.i2080) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.01808 = phi i32 [ %.0.copyload.i2082, %bb.i ], [ %i.bx, %bb.j ]
  %i.by = add i32 %i.b, -232
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoLengthU640x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.by, i32 noundef %3, i32 noundef %.01808) #7
  %.val1949 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1949, i64 %i.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 200
  %.0.copyload.i2084 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2084) #7, !srcloc !13
  %.not1837 = icmp eq i32 %.0.copyload.i2084, 0
  br i1 %.not1837, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cb = zext i32 %1 to i64
  %.val2026 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val2026, i64 %i.cb
  store i32 0, ptr %i.cc, align 1
  br label %bb.cq

bb.m:                                             ; preds = %bb.k
  %.val2058 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val2058, i64 %i.e
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 208
  %.0.copyload.i2085 = load i64, ptr %i.ce, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2085) #7, !srcloc !21
  %i.cf = uitofp i64 %.0.copyload.i2085 to double ; 12 uses
  %.val2072 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val2072, i64 %i.e
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 192
  store double %i.cf, ptr %i.ch, align 1
  %i.ci = add i32 %i.b, -256
  %i.cj = add i32 %.0.copyload.i2073, -8          ; 2 uses
  %.val1948 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1948, i64 %i.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %.0.copyload.i2086 = load i32, ptr %i.cl, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2086) #7, !srcloc !13
  %.not1838 = icmp eq i32 %.0.copyload.i2086, 0
  %i.cm = select i1 %.not1838, i32 70392, i32 %i.cj
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ci, i32 noundef %3, i32 noundef %i.cm) #7
  %i.cn = add nuw nsw i64 %i.e, 176               ; 2 uses
  %.val1947 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val1947, i64 %i.cn
  %.0.copyload.i2087 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2087) #7, !srcloc !13
  %.not1839 = icmp eq i32 %.0.copyload.i2087, 0
  %.val2025 = load ptr, ptr %i.d, align 8, !tbaa !7 ; 2 uses
  br i1 %.not1839, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = zext i32 %1 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.val2025, i64 %i.cp
  store i32 0, ptr %i.cq, align 1
  br label %bb.cq

bb.o:                                             ; preds = %bb.m
  %i.cr = add nuw nsw i64 %i.e, 184               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val2025, i64 %i.cr
  %.0.copyload.i2088 = load double, ptr %i.cs, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2088) #7, !srcloc !36
  %.val2071 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2071, i64 %i.e
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 168
  store double %.0.copyload.i2088, ptr %i.cu, align 1
  %i.cv = fcmp olt double %.0.copyload.i2088, 0.000000e+00
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val1894 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1894, i64 %i.e
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  store i64 0, ptr %i.cx, align 1
  %i.cy = fadd double %.0.copyload.i2088, %i.cf   ; 2 uses
  %.val2070 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val2070, i64 %i.bc
  store double %i.cy, ptr %i.cz, align 1
  %i.da = fcmp olt double %i.cy, 0.000000e+00
  %.v1840 = select i1 %i.da, i32 -272, i32 -312
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.db = fcmp ogt double %.0.copyload.i2088, %i.cf
  %.v = select i1 %i.db, i32 -240, i32 -264
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.v1840.pn = phi i32 [ %.v1840, %bb.p ], [ %.v, %bb.q ]
  %.01799 = add i32 %.v1840.pn, %i.b
  %i.dc = zext i32 %.01799 to i64
  %.val2063 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %.val2063, i64 %i.dc
  %.0.copyload.i2089 = load double, ptr %i.dd, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2089) #7, !srcloc !36
  switch i32 %.0.copyload.i2086, label %bb.t [
    i32 0, label %.thread.thread
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.de = fsub double %i.cf, %.0.copyload.i2089   ; 3 uses
  %i.df = fcmp olt double %i.de, f0x43F0000000000000
  %i.dg = fcmp oge double %i.de, 0.000000e+00
  %i.dh = and i1 %i.df, %i.dg
  %i.di = fptoui double %i.de to i64
  %spec.select = select i1 %i.dh, i64 %i.di, i64 0
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.dj = add i32 %i.b, -312                      ; 2 uses
  %i.dk = add i32 %.0.copyload.i2073, -16
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.dj, i32 noundef %3, i32 noundef %i.dk) #7
  %.val1946 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1946, i64 %i.bc
  %.0.copyload.i2090 = load i32, ptr %i.dl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2090) #7, !srcloc !13
  %.val2024 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2024, i64 %i.cn
  store i32 %.0.copyload.i2090, ptr %i.dm, align 1
  %.val2057 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %.val2057, i64 %i.e
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 128
  %.0.copyload.i2091 = load i64, ptr %i.do, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2091) #7, !srcloc !21
  %.val1893 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %.val1893, i64 %i.cr
  store i64 %.0.copyload.i2091, ptr %i.dp, align 1
  %.not1841 = icmp eq i32 %.0.copyload.i2090, 0
  br i1 %.not1841, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dq = zext i32 %1 to i64
  %.val2023 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %.val2023, i64 %i.dq
  store i32 0, ptr %i.dr, align 1
  br label %bb.cq

bb.v:                                             ; preds = %bb.t
  %i.ds = fsub double %i.cf, %.0.copyload.i2089   ; 2 uses
  %i.dt = bitcast i64 %.0.copyload.i2091 to double ; 2 uses
  %i.du = fcmp olt double %i.dt, 0.000000e+00
  %i.dv = select i1 %i.du, double 0.000000e+00, double %i.dt ; 2 uses
  %i.dw = fcmp olt double %i.ds, %i.dv
  %i.dx = select i1 %i.dw, double %i.ds, double %i.dv ; 3 uses
  %i.dy = fcmp olt double %i.dx, f0x43F0000000000000
  %i.dz = fcmp oge double %i.dx, 0.000000e+00
  %i.ea = and i1 %i.dy, %i.dz
  %i.eb = fptoui double %i.dx to i64
  %spec.select2162 = select i1 %i.ea, i64 %i.eb, i64 0
  %i.ec = add i32 %.0.copyload.i2086, -2
  %i.ed = uitofp i32 %i.ec to double
  %i.ee = fadd double %i.cf, %i.ed                ; 2 uses
  %i.ef = fcmp uge double %i.ee, %i.cf
  br i1 %i.ef, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.s, %bb.v
  %.018012161 = phi double [ %i.ee, %bb.v ], [ %i.cf, %bb.s ]
  %.018022160 = phi i64 [ %spec.select2162, %bb.v ], [ %spec.select, %bb.s ] ; 3 uses
  %i.eg = uitofp i64 %.018022160 to double        ; 2 uses
  %i.eh = fsub double %.018012161, %i.eg
  %i.ei = fcmp ule double %i.eh, f0x433FFFFFFFFFFFFF
  br i1 %i.ei, label %bb.x, label %.thread._crit_edge

.thread.thread:                                   ; preds = %bb.r
  %i.ej = icmp ult i64 %.0.copyload.i2085, 9007199254740992
  br i1 %i.ej, label %.thread2179, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread.thread, %.thread
  %.pre = add i32 %i.b, -312
  br label %bb.w

bb.w:                                             ; preds = %.thread._crit_edge, %bb.v
  %.pre-phi = phi i32 [ %.pre, %.thread._crit_edge ], [ %i.dj, %bb.v ]
  %.val2022 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %.val2022, i64 %i.e
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 152
  store i32 0, ptr %i.el, align 1
  %.val1892 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %.val1892, i64 %i.e
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 144
  store i64 180388626433, ptr %i.en, align 1
  %.val2021 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %.val2021, i64 %i.e
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  store i32 3, ptr %i.ep, align 1
  %.val2020 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %.val2020, i64 %i.bc
  store i32 52777, ptr %i.eq, align 1
  %i.er = add i32 %3, 136
  %i.es = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AraisePlaceholder0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.er, i32 noundef %.pre-phi) #7
  %i.et = zext i32 %1 to i64
  %.val2019 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eu = getelementptr inbounds nuw i8, ptr %.val2019, i64 %i.et
  store i32 %i.es, ptr %i.eu, align 1
  br label %bb.cq

bb.x:                                             ; preds = %.thread
  %i.ev = icmp ugt i64 %.018022160, 1047529472
  br i1 %i.ev, label %bb.y, label %.thread2179

bb.y:                                             ; preds = %bb.x
  %.val2018 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %.val2018, i64 %i.e
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  store i32 0, ptr %i.ex, align 1
  %.val1891 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1891, i64 %i.e
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  store i64 141733920769, ptr %i.ez, align 1
  %.val2017 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fa = getelementptr inbounds nuw i8, ptr %.val2017, i64 %i.e
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  store i32 3, ptr %i.fb, align 1
  %.val2016 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fc = getelementptr inbounds nuw i8, ptr %.val2016, i64 %i.bc
  store i32 60566, ptr %i.fc, align 1
  %i.fd = add i32 %i.b, -312
  %i.fe = add i32 %3, 88
  %i.ff = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AraisePlaceholder0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.fe, i32 noundef %i.fd) #7
  %i.fg = zext i32 %1 to i64
  %.val2015 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fh = getelementptr inbounds nuw i8, ptr %.val2015, i64 %i.fg
  store i32 %i.ff, ptr %i.fh, align 1
  br label %bb.cq

.thread2179:                                      ; preds = %.thread.thread, %bb.x
  %.01802216021782181 = phi i64 [ %.018022160, %bb.x ], [ 0, %.thread.thread ] ; 5 uses
  %i.fi = phi double [ %i.eg, %bb.x ], [ 0.000000e+00, %.thread.thread ] ; 7 uses
  %i.fj = trunc nuw nsw i64 %.01802216021782181 to i32 ; 3 uses
  %i.fk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.fj, i32 noundef %i.fj) #7 ; 7 uses
  %i.fl = icmp eq i32 %i.fk, -1
  br i1 %i.fl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread2179
  %i.fm = zext i32 %1 to i64
  %.val2014 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fn = getelementptr inbounds nuw i8, ptr %.val2014, i64 %i.fm
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeSplice0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2138) #7, !srcloc !36
  %i.pb = fadd double %.0.copyload.i2138, -1.000000e+00 ; 2 uses
  %i.pc = bitcast double %i.pb to i64
  %i.pd = fcmp uno double %i.pb, 0.000000e+00
  %i.pe = select i1 %i.pd, i64 9221120237041090560, i64 %i.pc ; 2 uses
  %.val1873 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pf = getelementptr inbounds nuw i8, ptr %.val1873, i64 %i.ol
  store i64 %i.pe, ptr %i.pf, align 1
  %.val1908 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pg = getelementptr inbounds nuw i8, ptr %.val1908, i64 %i.q
  %.0.copyload.i2139 = load i32, ptr %i.pg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2139) #7, !srcloc !13
  %i.ph = add i32 %.0.copyload.i2139, %i.oq
  %i.pi = zext i32 %i.ph to i64
  %.val1907 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pj = getelementptr inbounds nuw i8, ptr %.val1907, i64 %i.pi
  %.0.copyload.i2140 = load i32, ptr %i.pj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2140) #7, !srcloc !13
  %.val1983 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pk = getelementptr inbounds nuw i8, ptr %.val1983, i64 %i.u
  store i32 %.0.copyload.i2113, ptr %i.pk, align 1
  %.val1982 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pl = getelementptr inbounds nuw i8, ptr %.val1982, i64 %i.z
  store i32 %.0.copyload.i2114, ptr %i.pl, align 1
  %i.pm = add i32 %.0.copyload.i2140, 128
  %.val1981 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pn = getelementptr inbounds nuw i8, ptr %.val1981, i64 %i.x
  store i32 %i.pm, ptr %i.pn, align 1
  %i.po = bitcast i64 %i.pe to double
  %i.pp = fcmp olt double %i.oo, %i.po
  br i1 %i.pp, label %bb.bt, label %.loopexit2163

bb.bw:                                            ; preds = %bb.ax
  %i.pq = zext i32 %1 to i64
  %.val1980 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pr = getelementptr inbounds nuw i8, ptr %.val1980, i64 %i.pq
  store i32 0, ptr %i.pr, align 1
  br label %bb.cq

bb.bx:                                            ; preds = %bb.bk
  %.not1855 = icmp samesign ult i64 %.01802216021782181, %i.mc
  br i1 %.not1855, label %bb.by, label %.loopexit2163

bb.by:                                            ; preds = %bb.bx
  %i.ps = fsub double %i.cf, %i.fi                ; 2 uses
  %i.pt = fcmp ule double %i.ps, %.0.copyload.i2089
  br i1 %i.pt, label %.loopexit2163, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pu = uitofp i32 %i.mb to double
  %i.pv = shl i32 %.0.copyload.i2113, 2
  %i.pw = zext i32 %.11809 to i64
  %i.px = zext i32 %.01806 to i64
  %i.py = add i32 %i.b, -320
  %i.pz = add i32 %i.b, -316
  %i.qa = add i32 %i.b, -312
  %i.qb = add i32 %i.b, -392
  %i.qc = zext i32 %.01805 to i64
  %i.qd = add i32 %i.b, -340
  %i.qe = add i32 %i.b, -396
  %i.qf = add i32 %i.b, -4
  %i.qg = add i32 %i.b, -400
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ce, %bb.bz
  %.1 = phi double [ %i.ps, %bb.bz ], [ %i.rz, %bb.ce ] ; 3 uses
  %i.qh = fadd double %.1, %i.fi
  %i.qi = fadd double %i.qh, -1.000000e+00        ; 2 uses
  %i.qj = bitcast double %i.qi to i64
  %i.qk = fcmp uno double %i.qi, 0.000000e+00
  %i.ql = select i1 %i.qk, i64 9221120237041090560, i64 %i.qj
  %.val1872 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qm = getelementptr inbounds nuw i8, ptr %.val1872, i64 %i.pw
  store i64 %i.ql, ptr %i.qm, align 1
  %i.qn = fadd double %.1, %i.pu
  %i.qo = fadd double %i.qn, -1.000000e+00        ; 2 uses
  %i.qp = bitcast double %i.qo to i64
  %i.qq = fcmp uno double %i.qo, 0.000000e+00
  %i.qr = select i1 %i.qq, i64 9221120237041090560, i64 %i.qp
  %.val1871 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qs = getelementptr inbounds nuw i8, ptr %.val1871, i64 %i.px
  store i64 %i.qr, ptr %i.qs, align 1
  %.val1870 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qt = getelementptr inbounds nuw i8, ptr %.val1870, i64 %i.ld
  store i64 -4294967296, ptr %i.qt, align 1
  %i.qu = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPrimitiveDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x260x29(ptr noundef nonnull %0, i32 noundef %.01807, i32 noundef %3, i32 noundef %.11809, i32 noundef %i.py, i32 noundef %i.pz, i32 noundef %i.lb) #7 ; 0 uses
  %.val2052 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qv = getelementptr inbounds nuw i8, ptr %.val2052, i64 %i.ld
  %.0.copyload.i2141 = load i64, ptr %i.qv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2141) #7, !srcloc !21
  %.val1869 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qw = getelementptr inbounds nuw i8, ptr %.val1869, i64 %i.e
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 72
  store i64 %.0.copyload.i2141, ptr %i.qx, align 1
  %.val1868 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qy = getelementptr inbounds nuw i8, ptr %.val1868, i64 %i.e
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  store i64 %.0.copyload.i2141, ptr %i.qz, align 1
  %.val1906 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ra = getelementptr inbounds nuw i8, ptr %.val1906, i64 %i.hm
  %.0.copyload.i2142 = load i32, ptr %i.ra, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2142) #7, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPropertyValue_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.qa, i32 noundef %.01807, i32 noundef %3, i32 noundef %.0.copyload.i2142, i32 noundef %i.qb, i32 noundef %.11809) #7
  %.val1905 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rb = getelementptr inbounds nuw i8, ptr %.val1905, i64 %i.bc
  %.0.copyload.i2143 = load i32, ptr %i.rb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2143) #7, !srcloc !13
  %.not1856 = icmp eq i32 %.0.copyload.i2143, 0
  br i1 %.not1856, label %bb.co, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val2051 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rc = getelementptr inbounds nuw i8, ptr %.val2051, i64 %i.e
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 128
  %.0.copyload.i2144 = load i64, ptr %i.rd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2144) #7, !srcloc !21
  %.mask1858 = and i64 %.0.copyload.i2144, -140737488355328
  %.not1857 = icmp eq i64 %.mask1858, -1970324836974592
  %.val1977 = load ptr, ptr %i.d, align 8, !tbaa !7 ; 2 uses
  br i1 %.not1857, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.re = getelementptr inbounds nuw i8, ptr %.val1977, i64 %i.qc
  store i64 %.0.copyload.i2144, ptr %i.re, align 1
  %.val1979 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rf = getelementptr inbounds nuw i8, ptr %.val1979, i64 %i.e
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 36
  store i32 1, ptr %i.rg, align 1
  %.val1978 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rh = getelementptr inbounds nuw i8, ptr %.val1978, i64 %i.e
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 428
  store i32 1, ptr %i.ri, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.qd, i32 noundef %.01807, i32 noundef %3, i32 noundef %.01806, i32 noundef %.01805, i32 noundef %.01807, i32 noundef %i.qe) #7
  %.val2044 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rj = getelementptr inbounds nuw i8, ptr %.val2044, i64 %i.e
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 92
  %.0.copyload.i2145 = load i8, ptr %i.rk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2145) #7, !srcloc !14
  %.not1860 = icmp eq i8 %.0.copyload.i2145, 0
  br i1 %.not1860, label %bb.co, label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.rl = getelementptr inbounds nuw i8, ptr %.val1977, i64 %i.e
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 68
  store i32 1, ptr %i.rm, align 1
  %.val1976 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rn = getelementptr inbounds nuw i8, ptr %.val1976, i64 %i.e
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  store i32 1, ptr %i.ro, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdeleteComputed0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.qf, i32 noundef %.01807, i32 noundef %3, i32 noundef %.01806, i32 noundef %i.qg) #7
  %.val2043 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rp = getelementptr inbounds nuw i8, ptr %.val2043, i64 %i.e
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 428
  %.0.copyload.i2146 = load i8, ptr %i.rq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2146) #7, !srcloc !14
  %.not1859 = icmp eq i8 %.0.copyload.i2146, 0
  br i1 %.not1859, label %bb.co, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.val1904 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rr = getelementptr inbounds nuw i8, ptr %.val1904, i64 %i.q
  %.0.copyload.i2147 = load i32, ptr %i.rr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2147) #7, !srcloc !13
  %i.rs = add i32 %.0.copyload.i2147, %i.pv
  %i.rt = zext i32 %i.rs to i64
  %.val1903 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ru = getelementptr inbounds nuw i8, ptr %.val1903, i64 %i.rt
  %.0.copyload.i2148 = load i32, ptr %i.ru, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2148) #7, !srcloc !13
  %.val1975 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rv = getelementptr inbounds nuw i8, ptr %.val1975, i64 %i.u
  store i32 %.0.copyload.i2113, ptr %i.rv, align 1
  %.val1974 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rw = getelementptr inbounds nuw i8, ptr %.val1974, i64 %i.z
  store i32 %.0.copyload.i2114, ptr %i.rw, align 1
  %i.rx = add i32 %.0.copyload.i2148, 128
  %.val1973 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ry = getelementptr inbounds nuw i8, ptr %.val1973, i64 %i.x
  store i32 %i.rx, ptr %i.ry, align 1
  %i.rz = fadd double %.1, -1.000000e+00          ; 2 uses
  %i.sa = fcmp ogt double %i.rz, %.0.copyload.i2089
  br i1 %i.sa, label %bb.ca, label %.loopexit2163

.loopexit2163:                                    ; preds = %bb.ce, %bb.bv, %bb.by, %bb.bx, %.loopexit2164
  %i.sb = bitcast double %.0.copyload.i2089 to i64
  %i.sc = fcmp uno double %.0.copyload.i2089, 0.000000e+00
  %i.sd = select i1 %i.sc, i64 9221120237041090560, i64 %i.sb
  %i.se = zext i32 %.01803 to i64                 ; 3 uses
  %.val1866 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sf = getelementptr inbounds nuw i8, ptr %.val1866, i64 %i.se
  store i64 %i.sd, ptr %i.sf, align 1
  %i.sg = icmp ugt i32 %.0.copyload.i2086, 2
  br i1 %i.sg, label %bb.cf, label %.loopexit

bb.cf:                                            ; preds = %.loopexit2163
  %i.sh = shl i32 %.0.copyload.i2113, 2
  %i.si = add i32 %i.b, -424
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.2 = phi i32 [ 2, %bb.cf ], [ %i.tf, %bb.ci ]  ; 3 uses
  %.val1972 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sj = getelementptr inbounds nuw i8, ptr %.val1972, i64 %i.e
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store i32 1, ptr %i.sk, align 1
  %.val1971 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sl = getelementptr inbounds nuw i8, ptr %.val1971, i64 %i.bc
  store i32 1, ptr %i.sl, align 1
  %i.sm = shl i32 %.2, 3
  %i.sn = sub i32 %i.cj, %i.sm
  %.not1861 = icmp ult i32 %.2, %.0.copyload.i2086
  %5 = select i1 %.not1861, i32 %i.sn, i32 70392
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.lb, i32 noundef %.01807, i32 noundef %3, i32 noundef %.01803, i32 noundef %5, i32 noundef %.01807, i32 noundef %i.si) #7
  %.val2042 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.so = getelementptr inbounds nuw i8, ptr %.val2042, i64 %i.ld
  %.0.copyload.i2149 = load i8, ptr %i.so, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2149) #7, !srcloc !14
  %.not1862 = icmp eq i8 %.0.copyload.i2149, 0
  br i1 %.not1862, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.sp = zext i32 %1 to i64
  %.val1970 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sq = getelementptr inbounds nuw i8, ptr %.val1970, i64 %i.sp
  store i32 0, ptr %i.sq, align 1
  br label %bb.cq

bb.ci:                                            ; preds = %bb.cg
  %.val2061 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sr = getelementptr inbounds nuw i8, ptr %.val2061, i64 %i.se
  %.0.copyload.i2150 = load double, ptr %i.sr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2150) #7, !srcloc !36
  %i.ss = fadd double %.0.copyload.i2150, 1.000000e+00 ; 2 uses
  %i.st = bitcast double %i.ss to i64
  %i.su = fcmp uno double %i.ss, 0.000000e+00
  %i.sv = select i1 %i.su, i64 9221120237041090560, i64 %i.st
  %.val1865 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sw = getelementptr inbounds nuw i8, ptr %.val1865, i64 %i.se
  store i64 %i.sv, ptr %i.sw, align 1
  %.val1902 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sx = getelementptr inbounds nuw i8, ptr %.val1902, i64 %i.q
  %.0.copyload.i2151 = load i32, ptr %i.sx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2151) #7, !srcloc !13
  %i.sy = add i32 %.0.copyload.i2151, %i.sh
  %i.sz = zext i32 %i.sy to i64
  %.val1901 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ta = getelementptr inbounds nuw i8, ptr %.val1901, i64 %i.sz
  %.0.copyload.i2152 = load i32, ptr %i.ta, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2152) #7, !srcloc !13
  %.val1969 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tb = getelementptr inbounds nuw i8, ptr %.val1969, i64 %i.u
  store i32 %.0.copyload.i2113, ptr %i.tb, align 1
  %.val1968 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tc = getelementptr inbounds nuw i8, ptr %.val1968, i64 %i.z
  store i32 %.0.copyload.i2114, ptr %i.tc, align 1
  %i.td = add i32 %.0.copyload.i2152, 128
  %.val1967 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.te = getelementptr inbounds nuw i8, ptr %.val1967, i64 %i.x
  store i32 %i.td, ptr %i.te, align 1
  %i.tf = add nuw i32 %.2, 1                      ; 2 uses
  %.not1863 = icmp eq i32 %i.tf, %.0.copyload.i2086
  br i1 %.not1863, label %.loopexit, label %bb.cg

.loopexit:                                        ; preds = %bb.ci, %.loopexit2163
  %i.tg = fsub double %i.cf, %i.fi
  %i.th = uitofp i32 %i.mb to double
  %i.ti = fadd double %i.tg, %i.th                ; 2 uses
  %.val1900 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tj = getelementptr inbounds nuw i8, ptr %.val1900, i64 %i.i
  %.0.copyload.i2153 = load i32, ptr %i.tj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2153) #7, !srcloc !13
  %i.tk = zext i32 %.0.copyload.i2153 to i64      ; 2 uses
  %i.tl = add nuw nsw i64 %i.tk, 164              ; 2 uses
  %.val1899 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tm = getelementptr inbounds nuw i8, ptr %.val1899, i64 %i.tl
  %.0.copyload.i2154 = load i32, ptr %i.tm, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2154) #7, !srcloc !13
  %.val1898 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tn = getelementptr inbounds nuw i8, ptr %.val1898, i64 %i.tk
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 168
  %.0.copyload.i2155 = load i32, ptr %i.to, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2155) #7, !srcloc !13
  %i.tp = icmp ult i32 %.0.copyload.i2154, %.0.copyload.i2155
  br i1 %i.tp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.loopexit
  %i.tq = add i32 %.0.copyload.i2154, 8
  %.val1966 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tr = getelementptr inbounds nuw i8, ptr %.val1966, i64 %i.tl
  store i32 %i.tq, ptr %i.tr, align 1
  %i.ts = zext i32 %.0.copyload.i2154 to i64
  %.val2065 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tt = getelementptr inbounds nuw i8, ptr %.val2065, i64 %i.ts
  store double %i.ti, ptr %i.tt, align 1
  br label %bb.cl

bb.ck:                                            ; preds = %.loopexit
  %i.tu = bitcast double %i.ti to i64
  %i.tv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2153, i64 noundef %i.tu) #7
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.3 = phi i32 [ %.0.copyload.i2154, %bb.cj ], [ %i.tv, %bb.ck ]
  %.val1965 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tw = getelementptr inbounds nuw i8, ptr %.val1965, i64 %i.e
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  store i32 1, ptr %i.tx, align 1
  %.val1964 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ty = getelementptr inbounds nuw i8, ptr %.val1964, i64 %i.bc
  store i32 1, ptr %i.ty, align 1
  %i.tz = add i32 %i.b, -428
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.lb, i32 noundef %.01807, i32 noundef %3, i32 noundef 85, i32 noundef %.3, i32 noundef %.01807, i32 noundef %i.tz) #7
  %.val2041 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ua = getelementptr inbounds nuw i8, ptr %.val2041, i64 %i.ld
  %.0.copyload.i2156 = load i8, ptr %i.ua, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2156) #7, !srcloc !14
  %.not1864 = icmp eq i8 %.0.copyload.i2156, 0
  %.val1963 = load ptr, ptr %i.d, align 8, !tbaa !7 ; 2 uses
  br i1 %.not1864, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ub = zext i32 %1 to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %.val1963, i64 %i.ub
  store i32 0, ptr %i.uc, align 1
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %i.ud = zext i32 %i.fk to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %.val1963, i64 %i.ud
  %.0.copyload.i2157 = load i64, ptr %i.ue, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2157) #7, !srcloc !21
  %i.uf = zext i32 %1 to i64                      ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ug = getelementptr inbounds nuw i8, ptr %.val, i64 %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  store i64 %.0.copyload.i2157, ptr %i.uh, align 1
  %.val1962 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ui = getelementptr inbounds nuw i8, ptr %.val1962, i64 %i.uf
  store i32 1, ptr %i.ui, align 1
  br label %bb.cq

bb.co:                                            ; preds = %bb.cd, %bb.cc, %bb.ca
  %i.uj = zext i32 %1 to i64
  %.val1961 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uk = getelementptr inbounds nuw i8, ptr %.val1961, i64 %i.uj
  store i32 0, ptr %i.uk, align 1
  br label %bb.cq

bb.cp:                                            ; preds = %bb.bq, %bb.bp, %bb.bn
  %i.ul = zext i32 %1 to i64
  %.val1960 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.um = getelementptr inbounds nuw i8, ptr %.val1960, i64 %i.ul
  store i32 0, ptr %i.um, align 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ch, %bb.bw, %bb.bu, %bb.bj, %bb.be, %bb.z, %bb.y, %bb.w, %bb.u, %bb.n, %bb.l, %bb.g, %bb.b
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #7
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeSort0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 16 uses
  %i.c = add i32 %i.b, -480                       ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 144 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val1490 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val1490, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %i.g = add i32 %.0.copyload.i, -8               ; 2 uses
  %.val1489 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val1489, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i1567 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1567) #7, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i1567, 0       ; 2 uses
  %i.j = select i1 %.not, i32 70392, i32 %i.g     ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.val1560 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val1560, i64 %i.k
  %.0.copyload.i1568 = load i64, ptr %i.l, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1568) #7, !srcloc !21
  %i.m = icmp ugt i64 %.0.copyload.i1568, -844424930131969
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = and i64 %.0.copyload.i1568, 4294967295
  %.val1488 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val1488, i64 %i.n
  %.0.copyload.i1569 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1569) #7, !srcloc !13
  %i.p = add i32 %.0.copyload.i1569, -1291845632
  %i.q = icmp ult i32 %i.p, -150994944
  %i.r = select i1 %i.q, i32 70384, i32 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.01367 = phi i32 [ %i.r, %bb.b ], [ 70384, %bb.a ] ; 3 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext i32 %i.g to i64
  %.val1559 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val1559, i64 %i.s
  %.0.copyload.i1570 = load i64, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1570) #7, !srcloc !21
  %.mask = and i64 %.0.copyload.i1570, -140737488355328
  %i.u = icmp eq i64 %.mask, -1688849860263936
end_hunk_1
