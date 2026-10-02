Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@ComputeCRC32:bb.a
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.078.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.c = lshr i32 %.078.epil.init, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = and i32 %.078.epil.init, 255
  %i.h = xor i32 %i.g, %i.f
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = xor i32 %i.k, %i.c
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi i32 [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %.lr.ph.epil.preheader ]
  %i.m = xor i32 %.lcssa, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %._crit_edge.loopexit ]
  ret i32 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.078 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = lshr i32 %.078, 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = and i32 %.078, 255
  %i.s = xor i32 %i.r, %i.q
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, %i.n                       ; 2 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i32 %i.w, 255
  %i.ad = xor i32 %i.ac, %i.ab
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @ComputeCRC32.crcTable, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = xor i32 %i.ag, %i.x                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeMD5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeMD5.hash, align 16
  %i.a = add nsw i32 %1, 8
  %i.b = sdiv i32 %i.a, 64
  %i.c = shl nsw i32 %i.b, 6                      ; 2 uses
  %i.d = or disjoint i32 %i.c, 56
  %i.e = add nsw i32 %i.c, 120
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 5 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i32 %1, 3
  %i.k = sext i32 %i.d to i64                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  store i32 %i.j, ptr %i.l, align 1
  %i.m = icmp sgt i32 %1, -72
  br i1 %i.m, label %.lr.ph, label %bb.b

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.s, ptr @ComputeMD5.hash, align 16
  store i32 %i.t, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 4), align 4
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 8), align 8
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @ComputeMD5.hash, i64 12), align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef nonnull %i.g) #56
  ret ptr @ComputeMD5.hash

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.n = phi i32 [ %i.s, %bb.c ], [ 1732584193, %bb.a ] ; 2 uses
  %i.o = phi i32 [ %i.t, %bb.c ], [ -271733879, %bb.a ] ; 2 uses
  %i.p = phi i32 [ %i.u, %bb.c ], [ -1732584194, %bb.a ] ; 2 uses
  %i.q = phi i32 [ %i.v, %bb.c ], [ 271733878, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv82
  br label %bb.d

bb.c:                                             ; preds = %bb.k
  %i.s = add i32 %.06169, %i.n                    ; 2 uses
  %i.t = add i32 %i.bi, %i.o                      ; 2 uses
  %i.u = add i32 %.06367, %i.p                    ; 2 uses
  %i.v = add i32 %.06268, %i.q                    ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 64 ; 2 uses
  %i.w = icmp slt i64 %indvars.iv.next83, %i.k
  br i1 %i.w, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 10 uses
  %.06169 = phi i32 [ %i.q, %.lr.ph ], [ %.06268, %bb.k ] ; 7 uses
  %.06268 = phi i32 [ %i.p, %.lr.ph ], [ %.06367, %bb.k ] ; 6 uses
  %.06367 = phi i32 [ %i.o, %.lr.ph ], [ %i.bi, %bb.k ] ; 8 uses
  %.06466 = phi i32 [ %i.n, %.lr.ph ], [ %.06169, %bb.k ]
  %i.x = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %.06268, %.06367
  %i.z = xor i32 %.06367, -1
  %i.aa = and i32 %.06169, %i.z
  %i.ab = or i32 %i.aa, %i.y
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = and i32 %.06169, %.06367
  %i.ae = xor i32 %.06169, -1
  %i.af = and i32 %.06268, %i.ae
  %i.ag = or i32 %i.ad, %i.af
  %i.ah = mul nuw nsw i64 %indvars.iv, 5
  %i.ai = add nuw nsw i64 %i.ah, 1
  %i.aj = and i64 %i.ai, 15
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i64 %indvars.iv, 48
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = xor i32 %.06268, %.06367
  %i.am = xor i32 %i.al, %.06169
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = add nuw nsw i64 %i.an, 5
  %i.ap = and i64 %i.ao, 15
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = xor i32 %.06169, -1
  %i.ar = or i32 %.06367, %i.aq
  %i.as = xor i32 %i.ar, %.06268
  %i.at = mul i64 %indvars.iv, 7
  %i.au = and i64 %i.at, 15
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.e
  %.059 = phi i32 [ %i.ab, %bb.e ], [ %i.ag, %bb.g ], [ %i.am, %bb.i ], [ %i.as, %bb.j ]
  %.0 = phi i64 [ %indvars.iv, %bb.e ], [ %i.aj, %bb.g ], [ %i.ap, %bb.i ], [ %i.au, %bb.j ]
  %i.av = add i32 %.059, %.06466
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.k, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add i32 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add i32 %i.ay, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @__const.ComputeMD5.r, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = shl i32 %i.bb, %i.bd
  %i.bf = sub i32 32, %i.bd
  %i.bg = lshr i32 %i.bb, %i.bf
  %i.bh = add i32 %i.be, %.06367
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.d
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeSHA1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
bb.a:
  %i.a = alloca [80 x i32], align 16              ; 8 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr @ComputeSHA1.hash, align 16
  store i32 -1009589776, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 16), align 16
  %i.b = add nsw i32 %1, 8
  %i.c = sdiv i32 %i.b, 64
  %i.d = shl nsw i32 %i.c, 6                      ; 2 uses
  %i.e = add i32 %i.d, 64                         ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 1) #60 ; 6 uses
  %i.h = sext i32 %1 to i64                       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1
  %i.j = shl nsw i64 %i.h, 3
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr i8, ptr %i.g, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 56
  %i.n = bitcast i64 %i.j to <8 x i8>
  %i.o = shufflevector <8 x i8> %i.n, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.o, ptr %i.m, align 1
  %i.p = icmp sgt i32 %i.e, 0
  br i1 %i.p, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.bb, ptr @ComputeSHA1.hash, align 16
  store i32 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 4), align 4
  store i32 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 8), align 8
  store i32 %i.be, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 12), align 4
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 16), align 16
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef %i.g) #56
  ret ptr @ComputeSHA1.hash

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next139, %bb.c ] ; 3 uses
  %i.s = phi i32 [ 1732584193, %.lr.ph.preheader ], [ %i.bb, %bb.c ] ; 2 uses
  %i.t = phi i32 [ -271733879, %.lr.ph.preheader ], [ %i.bc, %bb.c ] ; 2 uses
  %i.u = phi i32 [ -1732584194, %.lr.ph.preheader ], [ %i.bd, %bb.c ] ; 2 uses
  %i.v = phi i32 [ 271733878, %.lr.ph.preheader ], [ %i.be, %bb.c ] ; 2 uses
  %i.w = phi i32 [ -1009589776, %.lr.ph.preheader ], [ %i.bf, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.q, i8 0, i64 256, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv138
  %2 = load <32 x i8>, ptr %i.x, align 1          ; 4 uses
  %3 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %4 = zext <8 x i8> %3 to <8 x i32>
  %5 = shl nuw <8 x i32> %4, splat (i32 24)
  %6 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %7 = zext <8 x i8> %6 to <8 x i32>
  %8 = shl nuw nsw <8 x i32> %7, splat (i32 16)
  %9 = or disjoint <8 x i32> %8, %5
  %10 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %11 = zext <8 x i8> %10 to <8 x i32>
  %12 = shl nuw nsw <8 x i32> %11, splat (i32 8)
  %13 = or disjoint <8 x i32> %9, %12
  %14 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %15 = zext <8 x i8> %14 to <8 x i32>
  %16 = or disjoint <8 x i32> %13, %15
  store <8 x i32> %16, ptr %i.a, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv138
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %17 = load <32 x i8>, ptr %i.z, align 1         ; 4 uses
  %18 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %19 = zext <8 x i8> %18 to <8 x i32>
  %20 = shl nuw <8 x i32> %19, splat (i32 24)
  %21 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %22 = zext <8 x i8> %21 to <8 x i32>
  %23 = shl nuw nsw <8 x i32> %22, splat (i32 16)
  %24 = or disjoint <8 x i32> %23, %20
  %25 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %26 = zext <8 x i8> %25 to <8 x i32>
  %27 = shl nuw nsw <8 x i32> %26, splat (i32 8)
  %28 = or disjoint <8 x i32> %24, %27
  %29 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %30 = zext <8 x i8> %29 to <8 x i32>
  %31 = or disjoint <8 x i32> %28, %30
  store <8 x i32> %31, ptr %i.r, align 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 16, %.lr.ph ], [ %indvars.iv.next.1, %.preheader ] ; 3 uses
  %i.aa = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr i8, ptr %i.aa, i64 -32
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = xor i32 %i.ae, %i.ac
  %i.ag = getelementptr i8, ptr %i.aa, i64 -56
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = xor i32 %i.af, %i.ah
  %i.aj = getelementptr i8, ptr %i.aa, i64 -64
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = xor i32 %i.ai, %i.ak                    ; 2 uses
  %i.am = tail call i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 1)
  store i32 %i.am, ptr %i.aa, align 8
  %i.an = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.an, i64 -28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = xor i32 %i.as, %i.aq
  %i.au = getelementptr i8, ptr %i.an, i64 -52
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = xor i32 %i.at, %i.av
  %i.ax = getelementptr i8, ptr %i.an, i64 -60
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = xor i32 %i.aw, %i.ay                    ; 2 uses
  %i.ba = tail call i32 @llvm.fshl.i32(i32 %i.az, i32 %i.az, i32 1)
  store i32 %i.ba, ptr %i.ao, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 80
  br i1 %exitcond.not.1, label %.preheader125, label %.preheader

bb.c:                                             ; preds = %bb.j
  %i.bb = add i32 %i.cc, %i.s                     ; 2 uses
  %i.bc = add i32 %.0105111, %i.t                 ; 2 uses
  %i.bd = add i32 %i.cd, %i.u                     ; 2 uses
  %i.be = add i32 %.0103113, %i.v                 ; 2 uses
  %i.bf = add i32 %.0102114, %i.w                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 64 ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next139, %i.f
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.preheader125:                                    ; preds = %.preheader, %bb.j
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.j ], [ 0, %.preheader ] ; 5 uses
  %.0101115 = phi i32 [ %.0102114, %bb.j ], [ %i.w, %.preheader ]
  %.0102114 = phi i32 [ %.0103113, %bb.j ], [ %i.v, %.preheader ] ; 7 uses
  %.0103113 = phi i32 [ %i.cd, %bb.j ], [ %i.u, %.preheader ] ; 7 uses
  %.0104112 = phi i32 [ %.0105111, %bb.j ], [ %i.t, %.preheader ] ; 7 uses
  %.0105111 = phi i32 [ %i.cc, %bb.j ], [ %i.s, %.preheader ] ; 4 uses
  %i.bh = icmp samesign ult i64 %indvars.iv134, 20
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader125
  %i.bi = and i32 %.0103113, %.0104112
  %i.bj = xor i32 %.0104112, -1
  %i.bk = and i32 %.0102114, %i.bj
  %i.bl = or i32 %i.bk, %i.bi
  br label %bb.j

bb.e:                                             ; preds = %.preheader125
  %i.bm = icmp samesign ult i64 %indvars.iv134, 40
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = xor i32 %.0103113, %.0104112
  %i.bo = xor i32 %i.bn, %.0102114
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bp = icmp samesign ult i64 %indvars.iv134, 60
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = or i32 %.0102114, %.0103113
  %i.br = and i32 %i.bq, %.0104112
  %i.bs = and i32 %.0102114, %.0103113
  %i.bt = or i32 %i.br, %i.bs
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bu = xor i32 %.0103113, %.0104112
  %i.bv = xor i32 %i.bu, %.0102114
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  %.099 = phi i32 [ %i.bl, %bb.d ], [ %i.bo, %bb.f ], [ %i.bt, %bb.h ], [ %i.bv, %bb.i ]
  %.0 = phi i32 [ 1518500249, %bb.d ], [ 1859775393, %bb.f ], [ -1894007588, %bb.h ], [ -899497514, %bb.i ]
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %.0105111, i32 %.0105111, i32 5)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv134
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add i32 %.0101115, %i.bw
  %i.ca = add i32 %i.bz, %.099
  %i.cb = add i32 %i.ca, %.0
  %i.cc = add i32 %i.cb, %i.by                    ; 2 uses
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %.0104112, i32 %.0104112, i32 30) ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, 80
  br i1 %exitcond137.not, label %bb.c, label %.preheader125
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef nonnull ptr @ComputeSHA256(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #40 {
.preheader111:
  %i.a = alloca [64 x i32], align 16              ; 7 uses
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr @ComputeSHA256.hash, align 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 16), align 16
  %i.b = sext i32 %1 to i64                       ; 5 uses
  %i.c = shl nsw i64 %i.b, 3
  %i.d = add nsw i64 %i.b, 4
  %i.e = and i64 %i.d, 63
  %i.f = sub nsw i64 %i.b, %i.e                   ; 2 uses
  %i.g = add nsw i64 %i.f, 68                     ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 1) #60 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %0, i64 %i.b, i1 false)
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %i.b
  store i8 -128, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %i.h, i64 %i.f
  %i.k = getelementptr i8, ptr %i.j, i64 60
  %i.l = bitcast i64 %i.c to <8 x i8>
  %i.m = shufflevector <8 x i8> %i.l, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.m, ptr %i.k, align 1
  %i.n = lshr i64 %i.g, 6                         ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.a, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader111
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.b
  store i32 %i.ax, ptr @ComputeSHA256.hash, align 16
  store i32 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 4), align 4
  store i32 %i.az, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 8), align 8
  store i32 %i.ba, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 12), align 4
  store i32 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 16), align 16
  store i32 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 20), align 4
  store i32 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 24), align 8
  store i32 %i.be, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 28), align 4
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %.preheader111
  tail call void @free(ptr noundef nonnull %i.h) #56
  ret ptr @ComputeSHA256.hash

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.097130 = phi i64 [ %i.bf, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.q = phi i32 [ %i.ax, %bb.b ], [ 1779033703, %.lr.ph.preheader ] ; 2 uses
  %i.r = phi i32 [ %i.ay, %bb.b ], [ -1150833019, %.lr.ph.preheader ] ; 2 uses
  %i.s = phi i32 [ %i.az, %bb.b ], [ 1013904242, %.lr.ph.preheader ] ; 2 uses
  %i.t = phi i32 [ %i.ba, %bb.b ], [ -1521486534, %.lr.ph.preheader ] ; 2 uses
  %i.u = phi i32 [ %i.bb, %bb.b ], [ 1359893119, %.lr.ph.preheader ] ; 2 uses
  %i.v = phi i32 [ %i.bc, %bb.b ], [ -1694144372, %.lr.ph.preheader ] ; 2 uses
  %i.w = phi i32 [ %i.bd, %bb.b ], [ 528734635, %.lr.ph.preheader ] ; 2 uses
  %i.x = phi i32 [ %i.be, %bb.b ], [ 1541459225, %.lr.ph.preheader ] ; 2 uses
  %i.y = shl nuw i64 %.097130, 6
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.y ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.o, i8 0, i64 192, i1 false)
  %2 = load <32 x i8>, ptr %i.z, align 1          ; 4 uses
  %3 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %4 = zext <8 x i8> %3 to <8 x i32>
  %5 = shl nuw <8 x i32> %4, splat (i32 24)
  %6 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %7 = zext <8 x i8> %6 to <8 x i32>
  %8 = shl nuw nsw <8 x i32> %7, splat (i32 16)
  %9 = or disjoint <8 x i32> %8, %5
  %10 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %11 = zext <8 x i8> %10 to <8 x i32>
  %12 = shl nuw nsw <8 x i32> %11, splat (i32 8)
  %13 = or disjoint <8 x i32> %9, %12
  %14 = shufflevector <32 x i8> %2, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %15 = zext <8 x i8> %14 to <8 x i32>
  %16 = or disjoint <8 x i32> %13, %15
  store <8 x i32> %16, ptr %i.a, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %17 = load <32 x i8>, ptr %i.aa, align 1        ; 4 uses
  %18 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %19 = zext <8 x i8> %18 to <8 x i32>
  %20 = shl nuw <8 x i32> %19, splat (i32 24)
  %21 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %22 = zext <8 x i8> %21 to <8 x i32>
  %23 = shl nuw nsw <8 x i32> %22, splat (i32 16)
  %24 = or disjoint <8 x i32> %23, %20
  %25 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %26 = zext <8 x i8> %25 to <8 x i32>
  %27 = shl nuw nsw <8 x i32> %26, splat (i32 8)
  %28 = or disjoint <8 x i32> %24, %27
  %29 = shufflevector <32 x i8> %17, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %30 = zext <8 x i8> %29 to <8 x i32>
  %31 = or disjoint <8 x i32> %28, %30
  store <8 x i32> %31, ptr %i.p, align 16
  br label %.preheader110

.preheader110:                                    ; preds = %.lr.ph, %.preheader110
  %indvars.iv = phi i64 [ 16, %.lr.ph ], [ %indvars.iv.next, %.preheader110 ] ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4            ; 5 uses
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 15)
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.ad, i32 13)
  %i.ag = xor i32 %i.ae, %i.af
  %i.ah = lshr i32 %i.ad, 10
  %i.ai = xor i32 %i.ag, %i.ah
  %i.aj = getelementptr i8, ptr %i.ab, i64 -28
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add i32 %i.ai, %i.ak
  %i.am = getelementptr i8, ptr %i.ab, i64 -60
  %i.an = load i32, ptr %i.am, align 4            ; 5 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 25)
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 14)
  %i.aq = xor i32 %i.ao, %i.ap
  %i.ar = lshr i32 %i.an, 3
  %i.as = xor i32 %i.aq, %i.ar
  %i.at = getelementptr i8, ptr %i.ab, i64 -64
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add i32 %i.al, %i.au
  %i.aw = add i32 %i.av, %i.as
  store i32 %i.aw, ptr %i.ab, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.preheader, label %.preheader110

bb.b:                                             ; preds = %.preheader
  %i.ax = add i32 %i.ci, %i.q                     ; 2 uses
  %i.ay = add i32 %.0108115, %i.r                 ; 2 uses
  %i.az = add i32 %.0107116, %i.s                 ; 2 uses
  %i.ba = add i32 %.0106117, %i.t                 ; 2 uses
  %i.bb = add i32 %i.ch, %i.u                     ; 2 uses
  %i.bc = add i32 %.0104119, %i.v                 ; 2 uses
  %i.bd = add i32 %.0103120, %i.w                 ; 2 uses
  %i.be = add i32 %.0102121, %i.x                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.bf = add nuw nsw i64 %.097130, 1             ; 2 uses
  %exitcond151.not = icmp eq i64 %i.bf, %i.n
  br i1 %exitcond151.not, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.preheader110, %.preheader
  %.098123 = phi i64 [ %i.cj, %.preheader ], [ 0, %.preheader110 ] ; 3 uses
  %.0101122 = phi i32 [ %.0102121, %.preheader ], [ %i.x, %.preheader110 ]
  %.0102121 = phi i32 [ %.0103120, %.preheader ], [ %i.w, %.preheader110 ] ; 3 uses
  %.0103120 = phi i32 [ %.0104119, %.preheader ], [ %i.v, %.preheader110 ] ; 3 uses
  %.0104119 = phi i32 [ %i.ch, %.preheader ], [ %i.u, %.preheader110 ] ; 10 uses
  %.0105118 = phi i32 [ %.0106117, %.preheader ], [ %i.t, %.preheader110 ]
  %.0106117 = phi i32 [ %.0107116, %.preheader ], [ %i.s, %.preheader110 ] ; 4 uses
  %.0107116 = phi i32 [ %.0108115, %.preheader ], [ %i.r, %.preheader110 ] ; 4 uses
  %.0108115 = phi i32 [ %i.ci, %.preheader ], [ %i.q, %.preheader110 ] ; 9 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %.0104119, i32 %.0104119, i32 26)
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %.0104119, i32 %.0104119, i32 21)
  %i.bi = xor i32 %i.bg, %i.bh
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %.0104119, i32 %.0104119, i32 7)
  %i.bk = xor i32 %i.bi, %i.bj
  %i.bl = and i32 %.0103120, %.0104119
  %i.bm = xor i32 %.0104119, -1
  %i.bn = and i32 %.0102121, %i.bm
  %i.bo = or i32 %i.bn, %i.bl
  %i.bp = add i32 %.0101122, %i.bk
  %i.bq = add i32 %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @ComputeSHA256.k, i64 %.098123
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add i32 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.098123
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = add i32 %i.bt, %i.bv                    ; 2 uses
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %.0108115, i32 %.0108115, i32 30)
  %i.by = tail call i32 @llvm.fshl.i32(i32 %.0108115, i32 %.0108115, i32 19)
  %i.bz = xor i32 %i.bx, %i.by
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %.0108115, i32 %.0108115, i32 10)
  %i.cb = xor i32 %i.bz, %i.ca
  %i.cc = xor i32 %.0106117, %.0107116
  %i.cd = and i32 %i.cc, %.0108115
  %i.ce = and i32 %.0106117, %.0107116
  %i.cf = xor i32 %i.cd, %i.ce
  %i.cg = add i32 %i.cf, %i.cb
  %i.ch = add i32 %i.bw, %.0105118                ; 2 uses
  %i.ci = add i32 %i.cg, %i.bw                    ; 2 uses
  %i.cj = add nuw nsw i64 %.098123, 1             ; 2 uses
  %exitcond150.not = icmp eq i64 %i.cj, 64
  br i1 %exitcond150.not, label %bb.b, label %.preheader
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @LoadAutomationEventList(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.AutomationEventList, align 8 ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  store i64 0, ptr %1, align 8
  %i.c = tail call noalias dereferenceable_or_null(393216) ptr @calloc(i64 noundef 16384, i64 noundef 24) #60 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8
  store i32 16384, ptr %1, align 8
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.255)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.227) ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.g = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef nonnull %i.f)
  %.not23 = icmp eq ptr %i.g, %i.a
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.256, ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = call i32 @feof(ptr noundef nonnull %i.f) #56
  %.not2427 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  br i1 %.not2427, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.f, %bb.k
  %.028 = phi i32 [ %.1, %bb.k ], [ 0, %bb.f ]    ; 4 uses
  %i.j = load i8, ptr %i.a, align 16
  switch i8 %i.j, label %bb.i [
    i8 99, label %bb.g
    i8 101, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.k = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.257, ptr noundef nonnull %i.i) #56 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = zext i32 %.028 to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.t = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.258, ptr noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.b) #56 ; 0 uses
  %i.u = add i32 %.028, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h, %bb.g
  %.1 = phi i32 [ %.028, %.lr.ph ], [ %.028, %bb.g ], [ %i.u, %bb.h ] ; 4 uses
  %i.v = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef nonnull %i.f)
  %.not26 = icmp eq ptr %i.v, %i.a
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.256, ptr noundef nonnull %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = call i32 @feof(ptr noundef nonnull %i.f) #56
  %.not24 = icmp eq i32 %i.w, 0
  br i1 %.not24, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i32, ptr %i.i, align 4             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.not25 = icmp eq i32 %.1, %.pre
  br i1 %.not25, label %._crit_edge.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.259, i32 noundef %.1, i32 noundef %.pre)
  store i32 %.1, ptr %i.x, align 4
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.f, %bb.l, %._crit_edge
  %i.y = phi ptr [ %i.x, %._crit_edge ], [ %i.x, %bb.l ], [ %i.i, %bb.f ]
  %i.z = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.260)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %.pre30 = load i32, ptr %i.y, align 4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread, %bb.c
  %i.aa = phi i32 [ %.pre30, %._crit_edge.thread ], [ 0, %bb.c ]
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.261, i32 noundef %i.aa)
  %.fca.1.load.pre = load ptr, ptr %i.d, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.m ], [ %i.c, %bb.b ]
  %.fca.0.load = load i64, ptr %1, align 8
end_hunk_0
begin_hunk_1_@sdefl_huff:bb.a
  %indvars.iv.next38.i.2 = add nuw nsw i64 %indvars.iv37.i, 3 ; 2 uses
  %i.jc = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.2
  %i.jd = getelementptr i8, ptr %i.jc, i64 -4
  %i.je = load i32, ptr %i.jd, align 8
  %i.jf = add i32 %i.je, %i.ja
  %i.jg = shl i32 %i.jf, 1                        ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.2
  store i32 %i.jg, ptr %i.jh, align 4
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter121.next.3 = add nuw i64 %niter121, 4     ; 2 uses
  %niter121.ncmp.3 = icmp eq i64 %niter121.next.3, %unroll_iter120
  br i1 %niter121.ncmp.3, label %.preheader.i52.preheader.unr-lcssa, label %bb.aa

.preheader.i52.preheader.unr-lcssa:               ; preds = %bb.aa
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %.preheader.i52.preheader, label %.epil.preheader115

.epil.preheader115:                               ; preds = %.preheader.i52.preheader.unr-lcssa
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader115
  %i.ji = phi i32 [ %i.jg, %.epil.preheader115 ], [ %i.jn, %bb.ab ]
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv.next38.i.3, %.epil.preheader115 ], [ %indvars.iv.next38.i.epil, %bb.ab ] ; 3 uses
  %epil.iter117 = phi i64 [ 0, %.epil.preheader115 ], [ %epil.iter117.next, %bb.ab ]
  %i.jj = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i.epil
  %i.jk = getelementptr i8, ptr %i.jj, i64 -4
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = add i32 %i.jl, %i.ji
  %i.jn = shl i32 %i.jm, 1                        ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.epil
  store i32 %i.jn, ptr %i.jo, align 4
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %.preheader.i52.preheader, label %bb.ab, !llvm.loop !299

.preheader.i52.preheader:                         ; preds = %bb.ab, %.preheader.i52.preheader.unr-lcssa
  %xtraiter122 = and i64 %wide.trip.count.i, 1
  %i.jp = icmp eq i64 %i.g, 0
  br i1 %i.jp, label %.preheader.i52.epil.preheader, label %.preheader.i52.preheader.new

.preheader.i52.preheader.new:                     ; preds = %.preheader.i52.preheader
  %unroll_iter126 = and i64 %wide.trip.count.i, 510
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %.preheader.i52, %.preheader.i52.preheader.new
  %indvars.iv41.i = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %indvars.iv.next42.i.1, %.preheader.i52 ] ; 4 uses
  %niter127 = phi i64 [ 0, %.preheader.i52.preheader.new ], [ %niter127.next.1, %.preheader.i52 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.jt, align 4
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i
  store i32 %i.ju, ptr %i.jw, align 4
  %indvars.iv.next42.i = or disjoint i64 %indvars.iv41.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.i
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = zext i8 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4            ; 2 uses
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 4
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next42.i
  store i32 %i.kb, ptr %i.kd, align 4
  %indvars.iv.next42.i.1 = add nuw nsw i64 %indvars.iv41.i, 2 ; 2 uses
  %niter127.next.1 = add nuw nsw i64 %niter127, 2 ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %sdefl_gen_codes.exit.unr-lcssa, label %.preheader.i52

sdefl_gen_codes.exit.unr-lcssa:                   ; preds = %.preheader.i52
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %sdefl_gen_codes.exit, label %.preheader.i52.epil.preheader

.preheader.i52.epil.preheader:                    ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.preheader
  %indvars.iv41.i.epil.init = phi i64 [ 0, %.preheader.i52.preheader ], [ %indvars.iv.next42.i.1, %sdefl_gen_codes.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.i.epil.init
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4            ; 2 uses
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41.i.epil.init
  store i32 %i.ki, ptr %i.kk, align 4
  br label %sdefl_gen_codes.exit

sdefl_gen_codes.exit:                             ; preds = %sdefl_gen_codes.exit.unr-lcssa, %.preheader.i52.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.kl = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.km = getelementptr i8, ptr %1, i64 %i.kl
  %i.kn = getelementptr i8, ptr %0, i64 %wide.trip.count.i
  %bound0 = icmp ult ptr %1, %i.kn
  %bound1 = icmp ult ptr %0, %i.km
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %sdefl_gen_codes.exit
  %n.vec = and i64 %wide.trip.count.i, 508        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ko, align 4, !alias.scope !305, !noalias !306
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load101 = load <4 x i8>, ptr %i.kp, align 1, !alias.scope !306
  %i.kq = trunc <4 x i32> %wide.load to <4 x i16>
  %i.kr = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kq)
  %i.ks = zext <4 x i16> %i.kr to <4 x i32>
  %i.kt = zext <4 x i8> %wide.load101 to <4 x i32>
  %i.ku = sub nsw <4 x i32> splat (i32 16), %i.kt
  %i.kv = lshr <4 x i32> %i.ks, %i.ku
  store <4 x i32> %i.kv, ptr %i.ko, align 4, !alias.scope !305, !noalias !306
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %sdefl_gen_codes.exit, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %sdefl_gen_codes.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.la = load i8, ptr %i.kz, align 1
  %trunc.i = trunc i32 %i.ky to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.lb = zext i16 %rev.i to i32
  %i.lc = zext i8 %i.la to i32
  %i.ld = sub nsw i32 16, %i.lc
  %i.le = lshr i32 %i.lb, %i.ld
  store i32 %i.le, ptr %i.kx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !304

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %sdefl_sort_sym.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #54

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #55

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bitreverse.v4i16(<4 x i16>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nocallback nofree nosync nounwind willreturn }
attributes #47 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #55 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #56 = { nounwind }
attributes #57 = { nounwind willreturn memory(read) }
attributes #58 = { nounwind allocsize(0) }
attributes #59 = { cold noreturn nounwind }
attributes #60 = { nounwind allocsize(0,1) }
attributes #61 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null, ptr @rlViewport}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{ptr @rlViewport}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{ptr @rlGetActiveFramebuffer}
!11 = !{ptr @rlGetLocationAttrib}
!12 = !{ptr @rlGetLocationUniform}
!13 = !{ptr @rlEnableShader}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !{null}
!47 = distinct !{null}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{null}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = distinct !{null}
!57 = distinct !{null}
!58 = distinct !{null}
!59 = distinct !{null}
!60 = distinct !{null}
!61 = distinct !{null}
!62 = distinct !{null}
!63 = distinct !{null}
!64 = distinct !{null}
!65 = distinct !{null}
!66 = distinct !{null}
!67 = distinct !{null}
!68 = distinct !{null}
!69 = distinct !{null}
!70 = distinct !{null}
!71 = distinct !{null}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = distinct !{null}
!75 = distinct !{null}
!76 = distinct !{null}
!77 = distinct !{null}
!78 = distinct !{null}
!79 = distinct !{null}
!80 = distinct !{null}
!81 = distinct !{null}
!82 = distinct !{null}
!83 = distinct !{null}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = distinct !{null}
!87 = distinct !{null}
!88 = distinct !{null}
!89 = distinct !{null}
!90 = distinct !{null}
!91 = distinct !{null}
!92 = distinct !{null}
!93 = distinct !{null}
!94 = distinct !{null}
!95 = distinct !{null, ptr @gladLoadGLUserPtr}
!96 = distinct !{ptr @gladLoadGLUserPtr, null}
!97 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!98 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!99 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!100 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!101 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!102 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!103 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!104 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!105 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!106 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!107 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!108 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!109 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!110 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!111 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!112 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!113 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!114 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!115 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!116 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!117 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!118 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!119 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!120 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!121 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!122 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!123 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!124 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!125 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!126 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!127 = distinct !{null, ptr @gladLoadGLUserPtr, null}
!128 = distinct !{null, ptr @gladLoadGLUserPtr, null}
end_hunk_1
