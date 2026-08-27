Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_pblendw_ymm:bb.a
  %.in.in.3 = getelementptr inbounds nuw i8, ptr %.in.in.v.3, i64 6
  %.in.3 = load i16, ptr %.in.in.3, align 2
  store i16 %.in.3, ptr %i.f, align 2
  %i.o = extractelement <8 x i1> %i.j, i64 3
  %.in.in.v.4 = select i1 %i.o, ptr %2, ptr %3    ; 2 uses
  %.in.in.4 = getelementptr inbounds nuw i8, ptr %.in.in.v.4, i64 8
  %.in.4 = load i16, ptr %.in.in.4, align 2
  store i16 %.in.4, ptr %i.g, align 2
  %i.p = extractelement <8 x i1> %i.j, i64 2
  %.in.in.v.5 = select i1 %i.p, ptr %2, ptr %3    ; 2 uses
  %.in.in.5 = getelementptr inbounds nuw i8, ptr %.in.in.v.5, i64 10
  %.in.5 = load i16, ptr %.in.in.5, align 2
  store i16 %.in.5, ptr %i.h, align 2
  %i.q = extractelement <8 x i1> %i.j, i64 1
  %.in.in.v.6 = select i1 %i.q, ptr %2, ptr %3    ; 2 uses
  %.in.in.6 = getelementptr inbounds nuw i8, ptr %.in.in.v.6, i64 12
  %.in.6 = load i16, ptr %.in.in.6, align 2
  store i16 %.in.6, ptr %i.i, align 2
  %i.r = extractelement <8 x i1> %i.j, i64 0
  %.in.in.v.7 = select i1 %i.r, ptr %2, ptr %3    ; 2 uses
  %.in.in.7 = getelementptr inbounds nuw i8, ptr %.in.in.v.7, i64 14
  %.in.7 = load i16, ptr %.in.in.7, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %.in.7, ptr %i.s, align 2
  %.in.in.8 = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 16
  %.in.8 = load i16, ptr %.in.in.8, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %.in.8, ptr %i.t, align 2
  %.in.in.9 = getelementptr inbounds nuw i8, ptr %.in.in.v.1, i64 18
  %.in.9 = load i16, ptr %.in.in.9, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %.in.9, ptr %i.u, align 2
  %.in.in.10 = getelementptr inbounds nuw i8, ptr %.in.in.v.2, i64 20
  %.in.10 = load i16, ptr %.in.in.10, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %.in.10, ptr %i.v, align 2
  %.in.in.11 = getelementptr inbounds nuw i8, ptr %.in.in.v.3, i64 22
  %.in.11 = load i16, ptr %.in.in.11, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %.in.11, ptr %i.w, align 2
  %.in.in.12 = getelementptr inbounds nuw i8, ptr %.in.in.v.4, i64 24
  %.in.12 = load i16, ptr %.in.in.12, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %.in.12, ptr %i.x, align 2
  %.in.in.13 = getelementptr inbounds nuw i8, ptr %.in.in.v.5, i64 26
  %.in.13 = load i16, ptr %.in.in.13, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %.in.13, ptr %i.y, align 2
  %.in.in.14 = getelementptr inbounds nuw i8, ptr %.in.in.v.6, i64 28
  %.in.14 = load i16, ptr %.in.in.14, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %.in.14, ptr %i.z, align 2
  %.in.in.15 = getelementptr inbounds nuw i8, ptr %.in.in.v.7, i64 30
  %.in.15 = load i16, ptr %.in.in.15, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %.in.15, ptr %i.aa, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_dpps_ymm(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 16
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 14 uses
  %i.c = and i32 %4, 32
  %.not53 = icmp eq i32 %i.c, 0                   ; 2 uses
  %i.d = and i32 %4, 64
  %.not54 = icmp eq i32 %i.d, 0                   ; 2 uses
  %i.e = and i32 %4, 128
  %.not55 = icmp eq i32 %i.e, 0                   ; 2 uses
  %i.f = insertelement <4 x i32> poison, i32 %4, i64 0
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.h = and <4 x i32> %i.g, <i32 1, i32 2, i32 4, i32 8>
  %i.i = icmp eq <4 x i32> %i.h, zeroinitializer  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %2, align 4
  %i.k = load i32, ptr %3, align 4
  %i.l = tail call i32 @float32_mul(i32 noundef %i.j, i32 noundef %i.k, ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.051 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 @float32_mul(i32 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %i.b) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.050 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = tail call i32 @float32_add(i32 noundef %.051, i32 noundef %.050, ptr noundef nonnull %i.b) #26
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call i32 @float32_mul(i32 noundef %i.t, i32 noundef %i.v, ptr noundef nonnull %i.b) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.152 = phi i32 [ %i.w, %bb.f ], [ 0, %bb.e ]
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = tail call i32 @float32_mul(i32 noundef %i.y, i32 noundef %i.aa, ptr noundef nonnull %i.b) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %i.ac = tail call i32 @float32_add(i32 noundef %.152, i32 noundef %.1, ptr noundef nonnull %i.b) #26
  %i.ad = tail call i32 @float32_add(i32 noundef %i.r, i32 noundef %i.ac, ptr noundef nonnull %i.b) #26
  %i.ae = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = select <4 x i1> %i.i, <4 x i32> zeroinitializer, <4 x i32> %i.af
  store <4 x i32> %i.ag, ptr %1, align 4
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call i32 @float32_mul(i32 noundef %i.ai, i32 noundef %i.ak, ptr noundef nonnull %i.b) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.051.1 = phi i32 [ %i.al, %bb.j ], [ 0, %bb.i ]
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 @float32_mul(i32 noundef %i.an, i32 noundef %i.ap, ptr noundef nonnull %i.b) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.050.1 = phi i32 [ %i.aq, %bb.l ], [ 0, %bb.k ]
  %i.ar = tail call i32 @float32_add(i32 noundef %.051.1, i32 noundef %.050.1, ptr noundef nonnull %i.b) #26
  br i1 %.not54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = tail call i32 @float32_mul(i32 noundef %i.at, i32 noundef %i.av, ptr noundef nonnull %i.b) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.152.1 = phi i32 [ %i.aw, %bb.n ], [ 0, %bb.m ]
  br i1 %.not55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call i32 @float32_mul(i32 noundef %i.ay, i32 noundef %i.ba, ptr noundef nonnull %i.b) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.1 = phi i32 [ %i.bb, %bb.p ], [ 0, %bb.o ]
  %i.bc = tail call i32 @float32_add(i32 noundef %.152.1, i32 noundef %.1.1, ptr noundef nonnull %i.b) #26
  %i.bd = tail call i32 @float32_add(i32 noundef %i.ar, i32 noundef %i.bc, ptr noundef nonnull %i.b) #26
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bh = select <4 x i1> %i.i, <4 x i32> zeroinitializer, <4 x i32> %i.bg
  store <4 x i32> %i.bh, ptr %i.be, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_mpsadbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #16 {
.preheader.preheader:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, 12
  %i.c = and i32 %4, 4                            ; 4 uses
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.f = load <4 x i8>, ptr %i.e, align 1
  %i.g = zext <4 x i8> %i.f to <4 x i16>          ; 4 uses
  %i.h = zext nneg i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = zext nneg i32 %i.c to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = zext nneg i32 %i.c to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = zext nneg i32 %i.c to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.s = load <8 x i8>, ptr %i.i, align 1
  %i.t = load <8 x i8>, ptr %i.l, align 1
  %i.u = load <8 x i8>, ptr %i.o, align 1
  %i.v = load <8 x i8>, ptr %i.r, align 1
  %i.w = zext <8 x i8> %i.s to <8 x i16>
  %i.x = zext <8 x i8> %i.t to <8 x i16>
  %i.y = zext <8 x i8> %i.u to <8 x i16>
  %i.z = zext <8 x i8> %i.v to <8 x i16>
  %i.aa = shufflevector <4 x i16> %i.g, <4 x i16> poison, <8 x i32> zeroinitializer
  %i.ab = sub nsw <8 x i16> %i.w, %i.aa
  %i.ac = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ab, i1 true)
  %i.ad = shufflevector <4 x i16> %i.g, <4 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ae = sub nsw <8 x i16> %i.x, %i.ad
  %i.af = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ae, i1 true)
  %i.ag = add nuw nsw <8 x i16> %i.af, %i.ac
  %i.ah = shufflevector <4 x i16> %i.g, <4 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ai = sub nsw <8 x i16> %i.y, %i.ah
  %i.aj = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ai, i1 true)
  %i.ak = add nuw nsw <8 x i16> %i.aj, %i.ag
  %i.al = shufflevector <4 x i16> %i.g, <4 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.am = sub nsw <8 x i16> %i.z, %i.al
  %i.an = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.am, i1 true)
  %i.ao = add nuw nsw <8 x i16> %i.an, %i.ak
  store <8 x i16> %i.ao, ptr %1, align 2
  %i.ap = lshr i32 %4, 3                          ; 2 uses
  %i.aq = shl nuw nsw i32 %i.ap, 2
  %i.ar = and i32 %i.aq, 12
  %i.as = and i32 %i.ap, 4
  %i.at = or disjoint i32 %i.as, 16               ; 4 uses
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load <4 x i8>, ptr %i.aw, align 1
  %i.ay = zext <4 x i8> %i.ax to <4 x i16>        ; 4 uses
  %i.az = zext nneg i32 %i.at to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.az
  %i.bb = zext nneg i32 %i.at to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = zext nneg i32 %i.at to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = zext nneg i32 %i.at to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load <8 x i8>, ptr %i.ba, align 1
  %i.bm = load <8 x i8>, ptr %i.bd, align 1
  %i.bn = load <8 x i8>, ptr %i.bg, align 1
  %i.bo = load <8 x i8>, ptr %i.bj, align 1
  %i.bp = zext <8 x i8> %i.bl to <8 x i16>
  %i.bq = zext <8 x i8> %i.bm to <8 x i16>
  %i.br = zext <8 x i8> %i.bn to <8 x i16>
  %i.bs = zext <8 x i8> %i.bo to <8 x i16>
  %i.bt = shufflevector <4 x i16> %i.ay, <4 x i16> poison, <8 x i32> zeroinitializer
  %i.bu = sub nsw <8 x i16> %i.bp, %i.bt
  %i.bv = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bu, i1 true)
  %i.bw = shufflevector <4 x i16> %i.ay, <4 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bx = sub nsw <8 x i16> %i.bq, %i.bw
  %i.by = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bx, i1 true)
  %i.bz = add nuw nsw <8 x i16> %i.by, %i.bv
  %i.ca = shufflevector <4 x i16> %i.ay, <4 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.cb = sub nsw <8 x i16> %i.br, %i.ca
  %i.cc = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cb, i1 true)
  %i.cd = add nuw nsw <8 x i16> %i.cc, %i.bz
  %i.ce = shufflevector <4 x i16> %i.ay, <4 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.cf = sub nsw <8 x i16> %i.bs, %i.ce
  %i.cg = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cf, i1 true)
  %i.ch = add nuw nsw <8 x i16> %i.cg, %i.cd
  store <8 x i16> %i.ch, ptr %i.bk, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_pclmulqdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 1
  %i.b = lshr i32 %4, 4
  %.lobit = and i32 %i.b, 1
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %i.d = zext nneg i32 %.lobit to i64             ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr @cpuinfo, align 4
  %i.j = and i32 %i.i, 524288
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc i128 @clmul_64_accel(i64 noundef %i.f, i64 noundef %i.h)
  br label %clmul_64.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i128 @clmul_64_gen(i64 noundef %i.f, i64 noundef %i.h) #26
  br label %clmul_64.exit

clmul_64.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi i128 [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  store i128 %.0.i, ptr %1, align 16
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = load i32, ptr @cpuinfo, align 4
  %i.t = and i32 %i.s, 524288
  %.not.i.1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %clmul_64.exit
  %i.u = tail call fastcc i128 @clmul_64_accel(i64 noundef %i.o, i64 noundef %i.r)
  br label %clmul_64.exit.1

bb.e:                                             ; preds = %clmul_64.exit
  %i.v = tail call i128 @clmul_64_gen(i64 noundef %i.o, i64 noundef %i.r) #26
  br label %clmul_64.exit.1

clmul_64.exit.1:                                  ; preds = %bb.e, %bb.d
  %.0.i.1 = phi i128 [ %i.u, %bb.d ], [ %i.v, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i128 %.0.i.1, ptr %i.w, align 16
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesdec_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesdec_ISB_ISR_IMC_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesdec_ISB_ISR_IMC_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesdec_ISB_ISR_IMC_AK.exit

aesdec_ISB_ISR_IMC_AK.exit:                       ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %aesdec_ISB_ISR_IMC_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesdec_ISB_ISR_IMC_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesdec_ISB_ISR_IMC_AK.exit.1

bb.e:                                             ; preds = %aesdec_ISB_ISR_IMC_AK.exit
  tail call void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesdec_ISB_ISR_IMC_AK.exit.1

aesdec_ISB_ISR_IMC_AK.exit.1:                     ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesdeclast_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesdec_ISB_ISR_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesdec_ISB_ISR_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesdec_ISB_ISR_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesdec_ISB_ISR_AK.exit

aesdec_ISB_ISR_AK.exit:                           ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %aesdec_ISB_ISR_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesdec_ISB_ISR_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesdec_ISB_ISR_AK.exit.1

bb.e:                                             ; preds = %aesdec_ISB_ISR_AK.exit
  tail call void @aesdec_ISB_ISR_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesdec_ISB_ISR_AK.exit.1

aesdec_ISB_ISR_AK.exit.1:                         ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesenc_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesenc_SB_SR_MC_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesenc_SB_SR_MC_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesenc_SB_SR_MC_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesenc_SB_SR_MC_AK.exit

aesenc_SB_SR_MC_AK.exit:                          ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %aesenc_SB_SR_MC_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesenc_SB_SR_MC_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesenc_SB_SR_MC_AK.exit.1

bb.e:                                             ; preds = %aesenc_SB_SR_MC_AK.exit
  tail call void @aesenc_SB_SR_MC_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesenc_SB_SR_MC_AK.exit.1
end_hunk_0
