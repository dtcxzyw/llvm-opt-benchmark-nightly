Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/indexgenerator?download=true
begin_hunk_0_@_ZN7meshoptL19generateVertexRemapINS_18VertexStreamHasherEEEmPjPKjmmRKT_R17meshopt_Allocator:bb.a
  %i.br = lshr i32 %i.bq, 24
  %i.bs = xor i32 %i.br, %i.bq
  %i.bt = mul i32 %i.bs, 1540483477
  %i.bu = mul i32 %.015.i.i.i, 1540483477
  %i.bv = xor i32 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.01213.i.i.i, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !31
  %i.by = mul i32 %i.bx, 1540483477               ; 2 uses
  %i.bz = lshr i32 %i.by, 24
  %i.ca = xor i32 %i.bz, %i.by
  %i.cb = mul i32 %i.ca, 1540483477
  %i.cc = mul i32 %i.bv, 1540483477
  %i.cd = xor i32 %i.cb, %i.cc                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01213.i.i.i, i64 8
  %i.cf = add i64 %.01114.i.i.i, -8               ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.i.i.i, label %_ZN7meshoptL11hashUpdate4EjPKhm.exit.i.i, !llvm.loop !3

_ZN7meshoptL11hashUpdate4EjPKhm.exit.i.i:         ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i = phi i32 [ %.012.i.i, %.lr.ph.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.cd, %.lr.ph.i.i.i ] ; 2 uses
  %i.ch = add nuw i64 %.01011.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ch, %.8.val.fr
  br i1 %exitcond.not.i.i, label %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.preheader.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.preheader.i: ; preds = %_ZN7meshoptL11hashUpdate4EjPKhm.exit.i.i
  %i.ci = zext i32 %.0.lcssa.i.i.i to i64
  %i.cj = and i64 %i.o, %i.ci                     ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !31 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %_ZN7meshoptL10hashLookupIjNS_18VertexStreamHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.preheader.i, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.i
  %i.cn = phi i32 [ %i.de, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.i ], [ %i.cl, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.preheader.i ]
  %.02314.i9 = phi i64 [ %i.dc, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.i ], [ %i.cj, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.preheader.i ] ; 2 uses
  %.02215.i8 = phi i64 [ %i.da, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.i ], [ 0, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.preheader.i ]
  %i.co = zext i32 %i.cn to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.cp = add nuw i64 %.01417.i.i, 1              ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %i.cp, %.8.val.fr
  br i1 %exitcond.not.i31.i, label %_ZN7meshoptL10hashLookupIjNS_18VertexStreamHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, label %bb.m, !llvm.loop !5

bb.m:                                             ; preds = %bb.l, %.lr.ph.i29.i
  %.01417.i.i = phi i64 [ 0, %.lr.ph.i29.i ], [ %i.cp, %bb.l ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.01417.i.i ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !35 ; 2 uses
  %i.cu = mul i64 %i.ct, %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cu
  %i.cw = mul i64 %i.ct, %i.ar
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.cv, ptr %i.cx, i64 %i.cz)
  %.not.i30.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not.i30.i, label %bb.l, label %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.i

_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.i: ; preds = %bb.m
  %i.da = add i64 %.02215.i8, 1                   ; 3 uses
  %i.db = add i64 %i.da, %.02314.i9
  %i.dc = and i64 %i.db, %i.o                     ; 3 uses
  %.not.i = icmp ule i64 %i.da, %i.o
  tail call void @llvm.assume(i1 %.not.i)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !31 ; 2 uses
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %_ZN7meshoptL10hashLookupIjNS_18VertexStreamHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, label %.lr.ph.i29.i

_ZN7meshoptL10hashLookupIjNS_18VertexStreamHasherEEEPT_S3_mRKT0_RKS2_S8_.exit: ; preds = %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.i, %bb.l, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.preheader.i
  %.02314.i.lcssa.pn = phi i64 [ %.02314.i9, %bb.l ], [ %i.cj, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.preheader.i ], [ %i.dc, %_ZNK7meshopt18VertexStreamHasher4hashEj.exit.split.i ]
  %spec.select.i = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.02314.i.lcssa.pn ; 2 uses
  %i.dg = load i32, ptr %spec.select.i, align 4, !tbaa !31 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, -1
  br i1 %i.dh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN7meshoptL10hashLookupIjNS_18VertexStreamHasherEEEPT_S3_mRKT0_RKS2_S8_.exit
  store i32 %i.aq, ptr %spec.select.i, align 4, !tbaa !31
  %i.di = add i32 %.02510, 1
  br label %.sink.split39

bb.o:                                             ; preds = %_ZN7meshoptL10hashLookupIjNS_18VertexStreamHasherEEEPT_S3_mRKT0_RKS2_S8_.exit
  %i.dj = zext i32 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !31
  br label %.sink.split39

.sink.split39:                                    ; preds = %bb.o, %bb.n
  %.02510.sink = phi i32 [ %.02510, %bb.n ], [ %i.dl, %bb.o ]
  %.2.ph = phi i32 [ %i.di, %bb.n ], [ %.02510, %bb.o ]
  store i32 %.02510.sink, ptr %i.as, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %.sink.split39, %bb.k
  %.2 = phi i32 [ %.02510, %bb.k ], [ %.2.ph, %.sink.split39 ] ; 2 uses
  %i.dm = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dm, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !42
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 0, 4294967296) i64 @meshopt_generateVertexRemapCustom(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.meshopt_Allocator, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %8, i8 0, i64 200, i1 false)
  %i.a = shl i64 %4, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 -1, i64 %i.a, i1 false)
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i64 [ 1, %bb.a ], [ %i.e, %bb.b ] ; 5 uses
  %i.d = icmp ult i64 %.0.i.i, %i.c
  %i.e = shl i64 %.0.i.i, 1
  br i1 %i.d, label %bb.b, label %_ZN7meshoptL11hashBucketsEm.exit.i, !llvm.loop !1

_ZN7meshoptL11hashBucketsEm.exit.i:               ; preds = %bb.b
  %i.f = lshr i64 %5, 2                           ; 4 uses
  %i.g = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.h = icmp ugt i64 %.0.i.i, 4611686018427387903
  %i.i = shl i64 %.0.i.i, 2                       ; 2 uses
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = invoke noundef ptr %i.g(i64 noundef %i.j)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !43 ; 9 uses

.noexc:                                           ; preds = %_ZN7meshoptL11hashBucketsEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 192
  store i64 1, ptr %i.l, align 8, !tbaa !25
  store ptr %i.k, ptr %8, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 -1, i64 %i.i, i1 false)
  %.not44.i = icmp eq i64 %2, 0
  br i1 %.not44.i, label %.lr.ph.i10, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.noexc
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  %i.m = add i64 %.0.i.i, -1                      ; 6 uses
  %.not.i.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i.i, label %.lr.ph42.i.split.us, label %.lr.ph42.i.split

.lr.ph42.i.split.us:                              ; preds = %.lr.ph42.i, %11
  %.041.i.us = phi i64 [ %12, %11 ], [ 0, %.lr.ph42.i ] ; 3 uses
  %.02539.i.us = phi i32 [ %.2.i.us, %11 ], [ 0, %.lr.ph42.i ] ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph42.i.split.us
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.041.i.us
  %i.o = load i32, ptr %i.n, align 4, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph42.i.split.us
  %i.p = trunc i64 %.041.i.us to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.o, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  %.not28.i.us = icmp eq i32 %i.t, -1
  br i1 %.not28.i.us, label %bb.f, label %11

bb.f:                                             ; preds = %bb.e
  %i.u = mul i64 %i.f, %i.r
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = icmp eq i32 %i.w, -2147483648
  %i.ac = select i1 %i.ab, i32 0, i32 %i.w        ; 2 uses
  %i.ad = icmp eq i32 %i.y, -2147483648
  %i.ae = select i1 %i.ad, i32 0, i32 %i.y        ; 2 uses
  %i.af = icmp eq i32 %i.aa, -2147483648
  %i.ag = select i1 %i.af, i32 0, i32 %i.aa       ; 2 uses
  %i.ah = lshr i32 %i.ac, 17
  %i.ai = xor i32 %i.ah, %i.ac
  %i.aj = lshr i32 %i.ae, 17
  %i.ak = xor i32 %i.aj, %i.ae
  %i.al = lshr i32 %i.ag, 17
  %i.am = xor i32 %i.al, %i.ag
  %i.an = mul i32 %i.ai, 73856093
  %i.ao = mul i32 %i.ak, 19349663
  %i.ap = xor i32 %i.ao, %i.an
  %i.aq = mul i32 %i.am, 83492791
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = and i64 %i.m, %i.as                     ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !31 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  %i.ax = bitcast i32 %i.w to float
  %i.ay = bitcast i32 %i.y to float
  %i.az = bitcast i32 %i.aa to float
  br i1 %i.aw, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us, label %.lr.ph.i.us.us

_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us: ; preds = %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us, %bb.f
  %.02318.i.lcssa36.pn.i.us = phi i64 [ %i.at, %bb.f ], [ %i.bo, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us ]
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.02318.i.lcssa36.pn.i.us
  store i32 %i.q, ptr %9, align 4, !tbaa !31
  %10 = add i32 %.02539.i.us, 1
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i.loopexit.split.us.us
  %.02539.sink.i.us = phi i32 [ %.02539.i.us, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us ], [ %i.bt, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i.loopexit.split.us.us ]
  %.2.ph.i.us = phi i32 [ %10, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us ], [ %.02539.i.us, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i.loopexit.split.us.us ]
  store i32 %.02539.sink.i.us, ptr %i.s, align 4, !tbaa !31
  br label %11

11:                                               ; preds = %.sink.split.i.us, %bb.e
  %.2.i.us = phi i32 [ %.02539.i.us, %bb.e ], [ %.2.ph.i.us, %.sink.split.i.us ] ; 2 uses
  %12 = add nuw i64 %.041.i.us, 1                 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %12, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.loopexit.i, label %.lr.ph42.i.split.us, !llvm.loop !44

.lr.ph.i.us.us:                                   ; preds = %bb.f, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us
  %i.ba = phi i32 [ %i.bq, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us ], [ %i.av, %bb.f ]
  %.02318.i38.i.us.us = phi i64 [ %i.bo, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us ], [ %i.at, %bb.f ]
  %.02219.i37.i.us.us = phi i64 [ %i.bm, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us ], [ 0, %bb.f ]
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = mul i64 %i.f, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bc ; 3 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !37
  %i.bf = fcmp une float %i.be, %i.ax
  br i1 %i.bf, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !37
  %i.bi = fcmp une float %i.bh, %i.ay
  br i1 %i.bi, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !37
  %i.bl = fcmp une float %i.bk, %i.az
  br i1 %i.bl, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i.loopexit.split.us.us

_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i.us.us: ; preds = %bb.h, %bb.g, %.lr.ph.i.us.us
  %i.bm = add i64 %.02219.i37.i.us.us, 1          ; 3 uses
  %i.bn = add i64 %i.bm, %.02318.i38.i.us.us
  %i.bo = and i64 %i.bn, %i.m                     ; 3 uses
  %.not.i.i.us.us = icmp ule i64 %i.bm, %i.m
  tail call void @llvm.assume(i1 %.not.i.i.us.us)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !31 ; 2 uses
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us, label %.lr.ph.i.us.us

_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i.loopexit.split.us.us: ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !31
  br label %.sink.split.i.us

._crit_edge.loopexit.i:                           ; preds = %bb.o, %11
  %.us-phi = phi i32 [ %.2.i.us, %11 ], [ %.2.i, %bb.o ]
  %i.bu = zext i32 %.us-phi to i64
  br label %.lr.ph.i10

.lr.ph42.i.split:                                 ; preds = %.lr.ph42.i, %bb.o
  %.041.i = phi i64 [ %i.eh, %bb.o ], [ 0, %.lr.ph42.i ] ; 3 uses
  %.02539.i = phi i32 [ %.2.i, %bb.o ], [ 0, %.lr.ph42.i ] ; 4 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph42.i.split
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.041.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !31
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph42.i.split
  %i.bx = trunc i64 %.041.i to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.by = phi i32 [ %i.bw, %bb.i ], [ %i.bx, %bb.j ] ; 3 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !31
  %.not28.i = icmp eq i32 %i.cb, -1
  br i1 %.not28.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cc = mul i64 %i.f, %i.bz
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !31 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !31 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !31 ; 2 uses
  %i.cj = icmp eq i32 %i.ce, -2147483648
  %i.ck = select i1 %i.cj, i32 0, i32 %i.ce       ; 2 uses
  %i.cl = icmp eq i32 %i.cg, -2147483648
  %i.cm = select i1 %i.cl, i32 0, i32 %i.cg       ; 2 uses
  %i.cn = icmp eq i32 %i.ci, -2147483648
  %i.co = select i1 %i.cn, i32 0, i32 %i.ci       ; 2 uses
  %i.cp = lshr i32 %i.ck, 17
  %i.cq = xor i32 %i.cp, %i.ck
  %i.cr = lshr i32 %i.cm, 17
  %i.cs = xor i32 %i.cr, %i.cm
  %i.ct = lshr i32 %i.co, 17
  %i.cu = xor i32 %i.ct, %i.co
  %i.cv = mul i32 %i.cq, 73856093
  %i.cw = mul i32 %i.cs, 19349663
  %i.cx = xor i32 %i.cw, %i.cv
  %i.cy = mul i32 %i.cu, 83492791
  %i.cz = xor i32 %i.cx, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = and i64 %i.m, %i.da                     ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !31 ; 2 uses
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i
  %i.df = phi i32 [ %i.dz, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i ], [ %i.dd, %bb.l ] ; 2 uses
  %.02318.i38.i = phi i64 [ %i.dx, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i ], [ %i.db, %bb.l ] ; 3 uses
  %.02219.i37.i = phi i64 [ %i.dv, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i ], [ 0, %bb.l ]
  %i.dg = zext i32 %i.df to i64
  %i.dh = mul i64 %i.f, %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dh ; 3 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !37
  %i.dk = load float, ptr %i.cd, align 4, !tbaa !37
  %i.dl = fcmp une float %i.dj, %i.dk
  br i1 %i.dl, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !37
  %i.do = load float, ptr %i.cf, align 4, !tbaa !37
  %i.dp = fcmp une float %i.dn, %i.do
  br i1 %i.dp, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !37
  %i.ds = load float, ptr %i.ch, align 4, !tbaa !37
  %i.dt = fcmp une float %i.dr, %i.ds
  br i1 %i.dt, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.i.i

_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.i.i: ; preds = %bb.n
  %i.du = invoke noundef i32 %6(ptr noundef %7, i32 noundef %i.df, i32 noundef %i.by)
          to label %.noexc9 unwind label %.loopexit, !inline_history !43

.noexc9:                                          ; preds = %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.i.i
  %.not9.i.i = icmp eq i32 %i.du, 0
  br i1 %.not9.i.i, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i

_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i: ; preds = %.noexc9, %bb.n, %bb.m, %.lr.ph.i
  %i.dv = add i64 %.02219.i37.i, 1                ; 3 uses
  %i.dw = add i64 %i.dv, %.02318.i38.i
  %i.dx = and i64 %i.dw, %i.m                     ; 3 uses
  %.not.i.i = icmp ule i64 %i.dv, %i.m
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !31 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, -1
  br i1 %i.ea, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i

_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %.noexc9
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.02318.i38.i
  %.pr.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !31 ; 2 uses
  %i.eb = icmp eq i32 %.pr.pre.i, -1
  br i1 %i.eb, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i

_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %bb.l
  %.02318.i.lcssa36.pn.i = phi i64 [ %.02318.i38.i, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ], [ %i.db, %bb.l ], [ %i.dx, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i.i ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.02318.i.lcssa36.pn.i
  store i32 %i.by, ptr %i.ec, align 4, !tbaa !31
  %i.ed = add i32 %.02539.i, 1
  br label %.sink.split.i

_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i: ; preds = %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i
  %i.ee = zext i32 %.pr.pre.i to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !31
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i
  %.02539.sink.i = phi i32 [ %.02539.i, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %i.eg, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i ]
  %.2.ph.i = phi i32 [ %i.ed, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %.02539.i, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread52.i ]
  store i32 %.02539.sink.i, ptr %i.ca, align 4, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i, %bb.k
  %.2.i = phi i32 [ %.02539.i, %bb.k ], [ %.2.ph.i, %.sink.split.i ] ; 2 uses
  %i.eh = add nuw i64 %.041.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eh, %2
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph42.i.split, !llvm.loop !44

.lr.ph.i10:                                       ; preds = %._crit_edge.loopexit.i, %.noexc
  %.025.lcssa.i = phi i64 [ 0, %.noexc ], [ %i.bu, %._crit_edge.loopexit.i ]
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.ej = load ptr, ptr %8, align 8, !tbaa !28
  invoke void %i.ei(ptr noundef %i.ej)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %.lr.ph.i10
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  tail call void @__clang_call_terminate(ptr %i.el) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret i64 %.025.lcssa.i

.loopexit:                                        ; preds = %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %_ZN7meshoptL11hashBucketsEm.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_remapVertexBuffer(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.meshopt_Allocator, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, i8 0, i64 200, i1 false)
  %.not = icmp eq ptr %0, %1                      ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = mul i64 %3, %2                           ; 2 uses
  %i.b = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.c = invoke noundef ptr %i.b(i64 noundef %i.a)
          to label %bb.c unwind label %bb.d, !inline_history !6 ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %5, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.a, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.c, %bb.c ], [ %1, %bb.a ]    ; 15 uses
  %.not15.i = icmp eq i64 %2, 0                   ; 5 uses
end_hunk_0
