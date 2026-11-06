Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@ComputeCRC32:bb.a
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
  %2 = bitcast i64 %i.j to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.m, align 1
  %i.n = icmp sgt i32 %i.e, 0
  br i1 %i.n, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.cd, ptr @ComputeSHA1.hash, align 16
  store i32 %i.ce, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 4), align 4
  store i32 %i.cf, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 8), align 8
  store i32 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 12), align 4
  store i32 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA1.hash, i64 16), align 16
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef %i.g) #56
  ret ptr @ComputeSHA1.hash

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next139, %bb.c ] ; 3 uses
  %i.q = phi i32 [ 1732584193, %.lr.ph.preheader ], [ %i.cd, %bb.c ] ; 2 uses
  %i.r = phi i32 [ -271733879, %.lr.ph.preheader ], [ %i.ce, %bb.c ] ; 2 uses
  %i.s = phi i32 [ -1732584194, %.lr.ph.preheader ], [ %i.cf, %bb.c ] ; 2 uses
  %i.t = phi i32 [ 271733878, %.lr.ph.preheader ], [ %i.cg, %bb.c ] ; 2 uses
  %i.u = phi i32 [ -1009589776, %.lr.ph.preheader ], [ %i.ch, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.o, i8 0, i64 256, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv138
  %i.w = load <32 x i8>, ptr %i.v, align 1        ; 4 uses
  %i.x = shufflevector <32 x i8> %i.w, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.y = zext <8 x i8> %i.x to <8 x i32>
  %i.z = shl nuw <8 x i32> %i.y, splat (i32 24)
  %i.aa = shufflevector <32 x i8> %i.w, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ab = zext <8 x i8> %i.aa to <8 x i32>
  %i.ac = shl nuw nsw <8 x i32> %i.ab, splat (i32 16)
  %i.ad = or disjoint <8 x i32> %i.ac, %i.z
  %i.ae = shufflevector <32 x i8> %i.w, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.af = zext <8 x i8> %i.ae to <8 x i32>
  %i.ag = shl nuw nsw <8 x i32> %i.af, splat (i32 8)
  %i.ah = or disjoint <8 x i32> %i.ad, %i.ag
  %i.ai = shufflevector <32 x i8> %i.w, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.aj = zext <8 x i8> %i.ai to <8 x i32>
  %i.ak = or disjoint <8 x i32> %i.ah, %i.aj
  store <8 x i32> %i.ak, ptr %i.a, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv138
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load <32 x i8>, ptr %i.am, align 1      ; 4 uses
  %i.ao = shufflevector <32 x i8> %i.an, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ap = zext <8 x i8> %i.ao to <8 x i32>
  %i.aq = shl nuw <8 x i32> %i.ap, splat (i32 24)
  %i.ar = shufflevector <32 x i8> %i.an, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.as = zext <8 x i8> %i.ar to <8 x i32>
  %i.at = shl nuw nsw <8 x i32> %i.as, splat (i32 16)
  %i.au = or disjoint <8 x i32> %i.at, %i.aq
  %i.av = shufflevector <32 x i8> %i.an, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.aw = zext <8 x i8> %i.av to <8 x i32>
  %i.ax = shl nuw nsw <8 x i32> %i.aw, splat (i32 8)
  %i.ay = or disjoint <8 x i32> %i.au, %i.ax
  %i.az = shufflevector <32 x i8> %i.an, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ba = zext <8 x i8> %i.az to <8 x i32>
  %i.bb = or disjoint <8 x i32> %i.ay, %i.ba
  store <8 x i32> %i.bb, ptr %i.p, align 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 16, %.lr.ph ], [ %indvars.iv.next.1, %.preheader ] ; 3 uses
  %i.bc = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -12
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr i8, ptr %i.bc, i64 -32
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = xor i32 %i.bg, %i.be
  %i.bi = getelementptr i8, ptr %i.bc, i64 -56
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = xor i32 %i.bh, %i.bj
  %i.bl = getelementptr i8, ptr %i.bc, i64 -64
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = xor i32 %i.bk, %i.bm                    ; 2 uses
  %i.bo = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bn, i32 1)
  store i32 %i.bo, ptr %i.bc, align 8
  %i.bp = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  %i.br = getelementptr i8, ptr %i.bp, i64 -8
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %i.bp, i64 -28
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = xor i32 %i.bu, %i.bs
  %i.bw = getelementptr i8, ptr %i.bp, i64 -52
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = xor i32 %i.bv, %i.bx
  %i.bz = getelementptr i8, ptr %i.bp, i64 -60
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = xor i32 %i.by, %i.ca                    ; 2 uses
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 1)
  store i32 %i.cc, ptr %i.bq, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 80
  br i1 %exitcond.not.1, label %.preheader125, label %.preheader

bb.c:                                             ; preds = %bb.j
  %i.cd = add i32 %i.de, %i.q                     ; 2 uses
  %i.ce = add i32 %.0105111, %i.r                 ; 2 uses
  %i.cf = add i32 %i.df, %i.s                     ; 2 uses
  %i.cg = add i32 %.0103113, %i.t                 ; 2 uses
  %i.ch = add i32 %.0102114, %i.u                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 64 ; 2 uses
  %i.ci = icmp slt i64 %indvars.iv.next139, %i.f
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.preheader125:                                    ; preds = %.preheader, %bb.j
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.j ], [ 0, %.preheader ] ; 5 uses
  %.0101115 = phi i32 [ %.0102114, %bb.j ], [ %i.u, %.preheader ]
  %.0102114 = phi i32 [ %.0103113, %bb.j ], [ %i.t, %.preheader ] ; 7 uses
  %.0103113 = phi i32 [ %i.df, %bb.j ], [ %i.s, %.preheader ] ; 7 uses
  %.0104112 = phi i32 [ %.0105111, %bb.j ], [ %i.r, %.preheader ] ; 7 uses
  %.0105111 = phi i32 [ %i.de, %bb.j ], [ %i.q, %.preheader ] ; 4 uses
  %i.cj = icmp samesign ult i64 %indvars.iv134, 20
  br i1 %i.cj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader125
  %i.ck = and i32 %.0103113, %.0104112
  %i.cl = xor i32 %.0104112, -1
  %i.cm = and i32 %.0102114, %i.cl
  %i.cn = or i32 %i.cm, %i.ck
  br label %bb.j

bb.e:                                             ; preds = %.preheader125
  %i.co = icmp samesign ult i64 %indvars.iv134, 40
  br i1 %i.co, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cp = xor i32 %.0103113, %.0104112
  %i.cq = xor i32 %i.cp, %.0102114
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.cr = icmp samesign ult i64 %indvars.iv134, 60
  br i1 %i.cr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cs = or i32 %.0102114, %.0103113
  %i.ct = and i32 %i.cs, %.0104112
  %i.cu = and i32 %.0102114, %.0103113
  %i.cv = or i32 %i.ct, %i.cu
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cw = xor i32 %.0103113, %.0104112
  %i.cx = xor i32 %i.cw, %.0102114
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  %.099 = phi i32 [ %i.cn, %bb.d ], [ %i.cq, %bb.f ], [ %i.cv, %bb.h ], [ %i.cx, %bb.i ]
  %.0 = phi i32 [ 1518500249, %bb.d ], [ 1859775393, %bb.f ], [ -1894007588, %bb.h ], [ -899497514, %bb.i ]
  %i.cy = tail call i32 @llvm.fshl.i32(i32 %.0105111, i32 %.0105111, i32 5)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv134
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %.0101115, %i.cy
  %i.dc = add i32 %i.db, %.099
  %i.dd = add i32 %i.dc, %.0
  %i.de = add i32 %i.dd, %i.da                    ; 2 uses
  %i.df = tail call i32 @llvm.fshl.i32(i32 %.0104112, i32 %.0104112, i32 30) ; 2 uses
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
  %2 = bitcast i64 %i.c to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.k, align 1
  %i.l = lshr i64 %i.g, 6                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.a, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader111
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.b
  store i32 %i.bz, ptr @ComputeSHA256.hash, align 16
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 4), align 4
  store i32 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 8), align 8
  store i32 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 12), align 4
  store i32 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 16), align 16
  store i32 %i.ce, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 20), align 4
  store i32 %i.cf, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 24), align 8
  store i32 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @ComputeSHA256.hash, i64 28), align 4
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %.preheader111
  tail call void @free(ptr noundef nonnull %i.h) #56
  ret ptr @ComputeSHA256.hash

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.097130 = phi i64 [ %i.ch, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.o = phi i32 [ %i.bz, %bb.b ], [ 1779033703, %.lr.ph.preheader ] ; 2 uses
  %i.p = phi i32 [ %i.ca, %bb.b ], [ -1150833019, %.lr.ph.preheader ] ; 2 uses
  %i.q = phi i32 [ %i.cb, %bb.b ], [ 1013904242, %.lr.ph.preheader ] ; 2 uses
  %i.r = phi i32 [ %i.cc, %bb.b ], [ -1521486534, %.lr.ph.preheader ] ; 2 uses
  %i.s = phi i32 [ %i.cd, %bb.b ], [ 1359893119, %.lr.ph.preheader ] ; 2 uses
  %i.t = phi i32 [ %i.ce, %bb.b ], [ -1694144372, %.lr.ph.preheader ] ; 2 uses
  %i.u = phi i32 [ %i.cf, %bb.b ], [ 528734635, %.lr.ph.preheader ] ; 2 uses
  %i.v = phi i32 [ %i.cg, %bb.b ], [ 1541459225, %.lr.ph.preheader ] ; 2 uses
  %i.w = shl nuw i64 %.097130, 6
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.m, i8 0, i64 192, i1 false)
  %i.y = load <32 x i8>, ptr %i.x, align 1        ; 4 uses
  %i.z = shufflevector <32 x i8> %i.y, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aa = zext <8 x i8> %i.z to <8 x i32>
  %i.ab = shl nuw <8 x i32> %i.aa, splat (i32 24)
  %i.ac = shufflevector <32 x i8> %i.y, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ad = zext <8 x i8> %i.ac to <8 x i32>
  %i.ae = shl nuw nsw <8 x i32> %i.ad, splat (i32 16)
  %i.af = or disjoint <8 x i32> %i.ae, %i.ab
  %i.ag = shufflevector <32 x i8> %i.y, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ah = zext <8 x i8> %i.ag to <8 x i32>
  %i.ai = shl nuw nsw <8 x i32> %i.ah, splat (i32 8)
  %i.aj = or disjoint <8 x i32> %i.af, %i.ai
  %i.ak = shufflevector <32 x i8> %i.y, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.al = zext <8 x i8> %i.ak to <8 x i32>
  %i.am = or disjoint <8 x i32> %i.aj, %i.al
  store <8 x i32> %i.am, ptr %i.a, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ao = load <32 x i8>, ptr %i.an, align 1      ; 4 uses
  %i.ap = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aq = zext <8 x i8> %i.ap to <8 x i32>
  %i.ar = shl nuw <8 x i32> %i.aq, splat (i32 24)
  %i.as = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.at = zext <8 x i8> %i.as to <8 x i32>
  %i.au = shl nuw nsw <8 x i32> %i.at, splat (i32 16)
  %i.av = or disjoint <8 x i32> %i.au, %i.ar
  %i.aw = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ax = zext <8 x i8> %i.aw to <8 x i32>
  %i.ay = shl nuw nsw <8 x i32> %i.ax, splat (i32 8)
  %i.az = or disjoint <8 x i32> %i.av, %i.ay
  %i.ba = shufflevector <32 x i8> %i.ao, <32 x i8> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bb = zext <8 x i8> %i.ba to <8 x i32>
  %i.bc = or disjoint <8 x i32> %i.az, %i.bb
  store <8 x i32> %i.bc, ptr %i.n, align 16
  br label %.preheader110

.preheader110:                                    ; preds = %.lr.ph, %.preheader110
  %indvars.iv = phi i64 [ 16, %.lr.ph ], [ %indvars.iv.next, %.preheader110 ] ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = load i32, ptr %i.be, align 4            ; 5 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 15)
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 13)
  %i.bi = xor i32 %i.bg, %i.bh
  %i.bj = lshr i32 %i.bf, 10
  %i.bk = xor i32 %i.bi, %i.bj
  %i.bl = getelementptr i8, ptr %i.bd, i64 -28
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = add i32 %i.bk, %i.bm
  %i.bo = getelementptr i8, ptr %i.bd, i64 -60
  %i.bp = load i32, ptr %i.bo, align 4            ; 5 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 25)
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 14)
  %i.bs = xor i32 %i.bq, %i.br
  %i.bt = lshr i32 %i.bp, 3
  %i.bu = xor i32 %i.bs, %i.bt
  %i.bv = getelementptr i8, ptr %i.bd, i64 -64
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add i32 %i.bn, %i.bw
  %i.by = add i32 %i.bx, %i.bu
  store i32 %i.by, ptr %i.bd, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.preheader, label %.preheader110

bb.b:                                             ; preds = %.preheader
  %i.bz = add i32 %i.dk, %i.o                     ; 2 uses
  %i.ca = add i32 %.0108115, %i.p                 ; 2 uses
  %i.cb = add i32 %.0107116, %i.q                 ; 2 uses
  %i.cc = add i32 %.0106117, %i.r                 ; 2 uses
  %i.cd = add i32 %i.dj, %i.s                     ; 2 uses
  %i.ce = add i32 %.0104119, %i.t                 ; 2 uses
  %i.cf = add i32 %.0103120, %i.u                 ; 2 uses
  %i.cg = add i32 %.0102121, %i.v                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.ch = add nuw nsw i64 %.097130, 1             ; 2 uses
  %exitcond151.not = icmp eq i64 %i.ch, %i.l
  br i1 %exitcond151.not, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.preheader110, %.preheader
  %.098123 = phi i64 [ %i.dl, %.preheader ], [ 0, %.preheader110 ] ; 3 uses
  %.0101122 = phi i32 [ %.0102121, %.preheader ], [ %i.v, %.preheader110 ]
  %.0102121 = phi i32 [ %.0103120, %.preheader ], [ %i.u, %.preheader110 ] ; 3 uses
  %.0103120 = phi i32 [ %.0104119, %.preheader ], [ %i.t, %.preheader110 ] ; 3 uses
  %.0104119 = phi i32 [ %i.dj, %.preheader ], [ %i.s, %.preheader110 ] ; 10 uses
  %.0105118 = phi i32 [ %.0106117, %.preheader ], [ %i.r, %.preheader110 ]
  %.0106117 = phi i32 [ %.0107116, %.preheader ], [ %i.q, %.preheader110 ] ; 4 uses
  %.0107116 = phi i32 [ %.0108115, %.preheader ], [ %i.p, %.preheader110 ] ; 4 uses
  %.0108115 = phi i32 [ %i.dk, %.preheader ], [ %i.o, %.preheader110 ] ; 9 uses
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %.0104119, i32 %.0104119, i32 26)
  %i.cj = tail call i32 @llvm.fshl.i32(i32 %.0104119, i32 %.0104119, i32 21)
  %i.ck = xor i32 %i.ci, %i.cj
  %i.cl = tail call i32 @llvm.fshl.i32(i32 %.0104119, i32 %.0104119, i32 7)
  %i.cm = xor i32 %i.ck, %i.cl
  %i.cn = and i32 %.0103120, %.0104119
  %i.co = xor i32 %.0104119, -1
  %i.cp = and i32 %.0102121, %i.co
  %i.cq = or i32 %i.cp, %i.cn
  %i.cr = add i32 %.0101122, %i.cm
  %i.cs = add i32 %i.cr, %i.cq
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @ComputeSHA256.k, i64 %.098123
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add i32 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.098123
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = add i32 %i.cv, %i.cx                    ; 2 uses
  %i.cz = tail call i32 @llvm.fshl.i32(i32 %.0108115, i32 %.0108115, i32 30)
  %i.da = tail call i32 @llvm.fshl.i32(i32 %.0108115, i32 %.0108115, i32 19)
  %i.db = xor i32 %i.cz, %i.da
  %i.dc = tail call i32 @llvm.fshl.i32(i32 %.0108115, i32 %.0108115, i32 10)
  %i.dd = xor i32 %i.db, %i.dc
  %i.de = xor i32 %.0106117, %.0107116
  %i.df = and i32 %i.de, %.0108115
  %i.dg = and i32 %.0106117, %.0107116
  %i.dh = xor i32 %i.df, %i.dg
  %i.di = add i32 %i.dh, %i.dd
  %i.dj = add i32 %i.cy, %.0105118                ; 2 uses
  %i.dk = add i32 %i.di, %i.cy                    ; 2 uses
  %i.dl = add nuw nsw i64 %.098123, 1             ; 2 uses
  %exitcond150.not = icmp eq i64 %i.dl, 64
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
end_hunk_0
begin_hunk_1_@sdefl_huff:bb.a
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
  %wide.load = load <4 x i32>, ptr %i.ko, align 4, !alias.scope !307, !noalias !308
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load101 = load <4 x i8>, ptr %i.kp, align 1, !alias.scope !308
  %i.kq = trunc <4 x i32> %wide.load to <4 x i16>
  %i.kr = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kq)
  %i.ks = zext <4 x i16> %i.kr to <4 x i32>
  %i.kt = zext <4 x i8> %wide.load101 to <4 x i32>
  %i.ku = sub nsw <4 x i32> splat (i32 16), %i.kt
  %i.kv = lshr <4 x i32> %i.ks, %i.ku
  store <4 x i32> %i.kv, ptr %i.ko, align 4, !alias.scope !307, !noalias !308
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !305

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
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !306

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
