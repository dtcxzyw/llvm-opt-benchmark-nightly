Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sha1?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SHA1Transform:bb.a
  %i.aha = tail call i32 @llvm.fshl.i32(i32 %i.agb, i32 %i.agb, i32 30) ; 3 uses
  %i.ahb = xor i32 %i.aha, %i.ago
  %i.ahc = xor i32 %i.ahb, %i.agn
  %i.ahd = xor i32 %i.aas, %i.zq
  %i.ahe = xor i32 %i.ahd, %i.ado
  %i.ahf = xor i32 %i.ahe, %i.afw                 ; 2 uses
  %i.ahg = tail call i32 @llvm.fshl.i32(i32 %i.ahf, i32 %i.ahf, i32 1) ; 2 uses
  %i.ahh = tail call i32 @llvm.fshl.i32(i32 %i.agz, i32 %i.agz, i32 5)
  %i.ahi = add i32 %i.ahg, -899497514
  %i.ahj = add i32 %i.ahi, %i.agc
  %i.ahk = add i32 %i.ahj, %i.ahc
  %i.ahl = add i32 %i.ahk, %i.ahh                 ; 5 uses
  %i.ahm = tail call i32 @llvm.fshl.i32(i32 %i.agn, i32 %i.agn, i32 30) ; 3 uses
  %i.ahn = xor i32 %i.ahm, %i.aha
  %i.aho = xor i32 %i.ahn, %i.agz
  %i.ahp = xor i32 %i.abg, %i.aae
  %i.ahq = xor i32 %i.ahp, %i.aea
  %i.ahr = xor i32 %i.ahq, %i.agi                 ; 2 uses
  %i.ahs = tail call i32 @llvm.fshl.i32(i32 %i.ahr, i32 %i.ahr, i32 1) ; 2 uses
  %i.aht = tail call i32 @llvm.fshl.i32(i32 %i.ahl, i32 %i.ahl, i32 5)
  %i.ahu = add i32 %i.ahs, -899497514
  %i.ahv = add i32 %i.ahu, %i.ago
  %i.ahw = add i32 %i.ahv, %i.aho
  %i.ahx = add i32 %i.ahw, %i.aht                 ; 5 uses
  %i.ahy = tail call i32 @llvm.fshl.i32(i32 %i.agz, i32 %i.agz, i32 30) ; 3 uses
  %i.ahz = xor i32 %i.ahy, %i.ahm
  %i.aia = xor i32 %i.ahz, %i.ahl
  %i.aib = xor i32 %i.abs, %i.aas
  %i.aic = xor i32 %i.aib, %i.aem
  %i.aid = xor i32 %i.aic, %i.agu                 ; 2 uses
  %i.aie = tail call i32 @llvm.fshl.i32(i32 %i.aid, i32 %i.aid, i32 1) ; 2 uses
  %i.aif = tail call i32 @llvm.fshl.i32(i32 %i.ahx, i32 %i.ahx, i32 5)
  %i.aig = add i32 %i.aie, -899497514
  %i.aih = add i32 %i.aig, %i.aha
  %i.aii = add i32 %i.aih, %i.aia
  %i.aij = add i32 %i.aii, %i.aif                 ; 5 uses
  %i.aik = tail call i32 @llvm.fshl.i32(i32 %i.ahl, i32 %i.ahl, i32 30) ; 3 uses
  %i.ail = xor i32 %i.aik, %i.ahy
  %i.aim = xor i32 %i.ail, %i.ahx
  %i.ain = xor i32 %i.ace, %i.abg
  %i.aio = xor i32 %i.ain, %i.aey
  %i.aip = xor i32 %i.aio, %i.ahg                 ; 2 uses
  %i.aiq = tail call i32 @llvm.fshl.i32(i32 %i.aip, i32 %i.aip, i32 1) ; 2 uses
  %i.air = tail call i32 @llvm.fshl.i32(i32 %i.aij, i32 %i.aij, i32 5)
  %i.ais = add i32 %i.aiq, -899497514
  %i.ait = add i32 %i.ais, %i.ahm
  %i.aiu = add i32 %i.ait, %i.aim
  %i.aiv = add i32 %i.aiu, %i.air                 ; 5 uses
  %i.aiw = tail call i32 @llvm.fshl.i32(i32 %i.ahx, i32 %i.ahx, i32 30) ; 3 uses
  %i.aix = xor i32 %i.aiw, %i.aik
  %i.aiy = xor i32 %i.aix, %i.aij
  %i.aiz = xor i32 %i.acq, %i.abs
  %i.aja = xor i32 %i.aiz, %i.afk
  %i.ajb = xor i32 %i.aja, %i.ahs                 ; 2 uses
  %i.ajc = tail call i32 @llvm.fshl.i32(i32 %i.ajb, i32 %i.ajb, i32 1) ; 2 uses
  %i.ajd = tail call i32 @llvm.fshl.i32(i32 %i.aiv, i32 %i.aiv, i32 5)
  %i.aje = add i32 %i.ajc, -899497514
  %i.ajf = add i32 %i.aje, %i.ahy
  %i.ajg = add i32 %i.ajf, %i.aiy
  %i.ajh = add i32 %i.ajg, %i.ajd                 ; 5 uses
  %i.aji = tail call i32 @llvm.fshl.i32(i32 %i.aij, i32 %i.aij, i32 30) ; 3 uses
  %i.ajj = xor i32 %i.aji, %i.aiw
  %i.ajk = xor i32 %i.ajj, %i.aiv
  %i.ajl = xor i32 %i.adc, %i.ace
  %i.ajm = xor i32 %i.ajl, %i.afw
  %i.ajn = xor i32 %i.ajm, %i.aie                 ; 2 uses
  %i.ajo = tail call i32 @llvm.fshl.i32(i32 %i.ajn, i32 %i.ajn, i32 1)
  %i.ajp = tail call i32 @llvm.fshl.i32(i32 %i.ajh, i32 %i.ajh, i32 5)
  %i.ajq = add i32 %i.ajo, -899497514
  %i.ajr = add i32 %i.ajq, %i.aik
  %i.ajs = add i32 %i.ajr, %i.ajk
  %i.ajt = add i32 %i.ajs, %i.ajp                 ; 5 uses
  %i.aju = tail call i32 @llvm.fshl.i32(i32 %i.aiv, i32 %i.aiv, i32 30) ; 3 uses
  %i.ajv = xor i32 %i.aju, %i.aji
  %i.ajw = xor i32 %i.ajv, %i.ajh
  %i.ajx = xor i32 %i.ado, %i.acq
  %i.ajy = xor i32 %i.ajx, %i.agi
  %i.ajz = xor i32 %i.ajy, %i.aiq                 ; 2 uses
  %i.aka = tail call i32 @llvm.fshl.i32(i32 %i.ajz, i32 %i.ajz, i32 1)
  %i.akb = tail call i32 @llvm.fshl.i32(i32 %i.ajt, i32 %i.ajt, i32 5)
  %i.akc = add i32 %i.aka, -899497514
  %i.akd = add i32 %i.akc, %i.aiw
  %i.ake = add i32 %i.akd, %i.ajw
  %i.akf = add i32 %i.ake, %i.akb                 ; 3 uses
  %i.akg = tail call i32 @llvm.fshl.i32(i32 %i.ajh, i32 %i.ajh, i32 30) ; 2 uses
  %i.akh = xor i32 %i.akg, %i.aju
  %i.aki = xor i32 %i.akh, %i.ajt
  %i.akj = xor i32 %i.aea, %i.adc
  %i.akk = xor i32 %i.akj, %i.agu
  %i.akl = xor i32 %i.akk, %i.ajc                 ; 2 uses
  %i.akm = tail call i32 @llvm.fshl.i32(i32 %i.akl, i32 %i.akl, i32 1)
  %i.akn = tail call i32 @llvm.fshl.i32(i32 %i.akf, i32 %i.akf, i32 5)
  %i.ako = tail call i32 @llvm.fshl.i32(i32 %i.ajt, i32 %i.ajt, i32 30)
  %i.akp = add i32 %i.a, -899497514
  %i.akq = add i32 %i.akp, %i.akm
  %i.akr = add i32 %i.akq, %i.aji
  %i.aks = add i32 %i.akr, %i.aki
  %i.akt = add i32 %i.aks, %i.akn
  store i32 %i.akt, ptr %0, align 4, !tbaa !12
  %i.aku = add i32 %i.akf, %i.c
  store i32 %i.aku, ptr %i.b, align 4, !tbaa !12
  %i.akv = add i32 %i.ako, %i.e
  store i32 %i.akv, ptr %i.d, align 4, !tbaa !12
  %i.akw = add i32 %i.akg, %i.g
  store i32 %i.akw, ptr %i.f, align 4, !tbaa !12
  %i.akx = add i32 %i.aju, %i.i
  store i32 %i.akx, ptr %i.h, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SHA1Init(ptr nofree noundef writeonly captures(none) initializes((0, 28)) %0) local_unnamed_addr #3 !guid !15 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 4, !tbaa !12
  store i32 0, ptr %i.b, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA1Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 !guid !17 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.c = shl i32 %2, 3
  %i.d = add i32 %i.b, %i.c                       ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !12
  %i.e = icmp ult i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = zext i1 %i.e to i32
  %i.i = add i32 %i.g, %i.h
  %i.j = lshr i32 %2, 29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = add i32 %i.i, %i.j
  store i32 %i.l, ptr %i.k, align 4, !tbaa !12
  %i.m = lshr i32 %i.b, 3
  %i.n = and i32 %i.m, 63                         ; 5 uses
  %i.o = add i32 %i.n, %2
  %i.p = icmp ugt i32 %i.o, 63
  br i1 %i.p, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = zext nneg i32 %i.n to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = sub nuw nsw i32 64, %i.n                 ; 3 uses
  %i.u = zext nneg i32 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.u, i1 false)
  tail call void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %i.v = xor i32 %i.n, 127
  %i.w = icmp ult i32 %i.v, %2
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02728 = phi i32 [ %i.z, %.lr.ph ], [ %i.t, %bb.a ] ; 3 uses
  %i.x = zext i32 %.02728 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  tail call void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.y)
  %i.z = add i32 %.02728, 64                      ; 2 uses
  %i.aa = add i32 %.02728, 127
  %i.ab = icmp ult i32 %i.aa, %2
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !16

bb.b:                                             ; preds = %._crit_edge
  %i.ac = zext nneg i32 %i.n to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.t, %bb.a ], [ %i.z, %.lr.ph ] ; 2 uses
  %.0 = phi i64 [ %i.ac, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0
  %i.af = zext i32 %.1 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = sub i32 %2, %.1
  %i.ai = zext i32 %i.ah to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SHA1Final(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 !guid !19 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12   ; 4 uses
  %2 = lshr i32 %i.e, 24
  %3 = trunc nuw i32 %2 to i8
  store i8 %3, ptr %i.a, align 1, !tbaa !20
  %4 = lshr i32 %i.e, 16
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !20
  %7 = lshr i32 %i.e, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !20
  %10 = trunc i32 %i.e to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %10, ptr %11, align 1, !tbaa !20
  %i.f = load i32, ptr %i.c, align 4, !tbaa !12   ; 4 uses
  %12 = lshr i32 %i.f, 24
  %13 = trunc nuw i32 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %13, ptr %14, align 1, !tbaa !20
  %15 = lshr i32 %i.f, 16
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %16, ptr %17, align 1, !tbaa !20
  %18 = lshr i32 %i.f, 8
  %19 = trunc i32 %18 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %19, ptr %i.g, align 1, !tbaa !20
  %20 = trunc i32 %i.f to i8
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %20, ptr %21, align 1, !tbaa !20
  store i8 -128, ptr %i.b, align 1, !tbaa !20
  call void @SHA1Update(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.h = load i32, ptr %i.c, align 4, !tbaa !12
  %i.i = and i32 %i.h, 504
  %.not18 = icmp eq i32 %i.i, 448
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  call void @SHA1Update(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.j = load i32, ptr %i.c, align 4, !tbaa !12
  %i.k = and i32 %i.j, 504
  %.not = icmp eq i32 %i.k, 448
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @SHA1Update(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 8)
  %i.l = load i32, ptr %1, align 4, !tbaa !12
  %i.m = lshr i32 %i.l, 24
  %i.n = trunc nuw i32 %i.m to i8
  store i8 %i.n, ptr %0, align 1, !tbaa !20
  %i.o = load i32, ptr %1, align 4, !tbaa !12
  %i.p = lshr i32 %i.o, 16
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !20
  %i.s = load i32, ptr %1, align 4, !tbaa !12
  %i.t = lshr i32 %i.s, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.u, ptr %i.v, align 1, !tbaa !20
  %i.w = load i32, ptr %1, align 4, !tbaa !12
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.x, ptr %i.y, align 1, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = lshr i32 %i.aa, 24
  %i.ac = trunc nuw i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !20
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !12
  %i.af = lshr i32 %i.ae, 16
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !20
  %i.ai = load i32, ptr %i.z, align 4, !tbaa !12
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !20
  %i.am = load i32, ptr %i.z, align 4, !tbaa !12
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = lshr i32 %i.aq, 24
  %i.as = trunc nuw i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.as, ptr %i.at, align 1, !tbaa !20
  %i.au = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !20
  %i.ay = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.az = lshr i32 %i.ay, 8
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !20
  %i.bc = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bh = lshr i32 %i.bg, 24
  %i.bi = trunc nuw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !20
  %i.bk = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !20
  %i.bo = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bp = lshr i32 %i.bo, 8
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !20
  %i.bs = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.bx = lshr i32 %i.bw, 24
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !20
  %i.ca = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.cb = lshr i32 %i.ca, 16
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !20
  %i.ce = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !20
  %i.ci = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %1, i8 0, i64 92, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 -3174537190529431891}
!15 = !{i64 -4946677862870368396}
!16 = distinct !{!16, !13}
!17 = !{i64 -7234786188461412661}
!18 = distinct !{!18, !13}
!19 = !{i64 7225327538662260447}
!20 = !{!10, !10, i64 0}
end_hunk_0
