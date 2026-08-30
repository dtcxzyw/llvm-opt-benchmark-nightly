Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/brotli_bit_stream?download=true
begin_hunk_0_@BrotliStoreHuffmanTree:bb.a

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.gd = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kStorageOrder, i64 %.0.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !10
  %i.gi = zext i8 %i.gh to i64                    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeBitLengths, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !10
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeSymbols, i64 %i.gi
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !10
  %i.go = zext i8 %i.gn to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.gp = lshr i64 %i.ga, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !10, !alias.scope !24, !noalias !21
  %i.gs = zext i8 %i.gr to i64
  %i.gt = and i64 %i.ga, 7
  %i.gu = shl nuw nsw i64 %i.go, %i.gt
  %i.gv = or i64 %i.gu, %i.gs
  store i64 %i.gv, ptr %i.gq, align 1, !noalias !21
  %i.gw = add i64 %i.ga, %i.gl                    ; 2 uses
  %i.gx = add nuw nsw i64 %.0.i, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa198.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.gw, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %i.ga, %.lr.ph.i.preheader ], [ %i.gw, %.lr.ph.i.prol ]
  %.02226.i.unr = phi i64 [ %.0.i, %.lr.ph.i.preheader ], [ %i.gx, %.lr.ph.i.prol ]
  %i.gy = icmp eq i64 %.1.i, %.neg
  br i1 %i.gy, label %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.gz = phi i64 [ %i.io, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.02226.i = phi i64 [ %i.ip, %.lr.ph.i ], [ %.02226.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kStorageOrder, i64 %.02226.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !10
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !10
  %i.hf = zext i8 %i.he to i64                    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeBitLengths, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !10
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeSymbols, i64 %i.hf
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !10
  %i.hl = zext i8 %i.hk to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.hm = lshr i64 %i.gz, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !10, !alias.scope !24, !noalias !21
  %i.hp = zext i8 %i.ho to i64
  %i.hq = and i64 %i.gz, 7
  %i.hr = shl nuw nsw i64 %i.hl, %i.hq
  %i.hs = or i64 %i.hr, %i.hp
  store i64 %i.hs, ptr %i.hn, align 1, !noalias !21
  %i.ht = add i64 %i.gz, %i.hi                    ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kStorageOrder, i64 %.02226.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !10
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !10
  %i.ia = zext i8 %i.hz to i64                    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeBitLengths, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !10
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeSymbols, i64 %i.ia
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !10
  %i.ig = zext i8 %i.if to i64
  %i.ih = lshr i64 %i.ht, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !10, !alias.scope !26, !noalias !28
  %i.ik = zext i8 %i.ij to i64
  %i.il = and i64 %i.ht, 7
  %i.im = shl nuw nsw i64 %i.ig, %i.il
  %i.in = or i64 %i.im, %i.ik
  store i64 %i.in, ptr %i.ii, align 1, !noalias !28
  %i.io = add i64 %i.ht, %i.id                    ; 2 uses
  %i.ip = add nuw nsw i64 %.02226.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ip, %.1.i
  br i1 %exitcond.not.i.1, label %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit, label %.lr.ph.i, !llvm.loop !30

BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa198 = phi i64 [ %.lcssa198.unr, %.lr.ph.i.prol.loopexit ], [ %i.io, %.lr.ph.i ] ; 2 uses
  store i64 %.lcssa198, ptr %3, align 8, !tbaa !8, !alias.scope !21, !noalias !24
  br label %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit

BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit: ; preds = %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit, %.loopexit.i
  %.promoted.i = phi i64 [ %.lcssa198, %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit ], [ %i.ga, %.loopexit.i ]
  %i.iq = icmp eq i32 %.2, 1
  br i1 %i.iq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.lcssa
  store i8 0, ptr %i.ir, align 1, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit
  %i.is = load i64, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %.not.i22 = icmp eq i64 %i.is, 0
  br i1 %.not.i22, label %BrotliStoreHuffmanTreeToBitMask.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.s, %bb.u
  %i.it = phi i64 [ %i.jw, %bb.u ], [ %.promoted.i, %bb.s ] ; 3 uses
  %.019.i = phi i64 [ %i.jx, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.019.i
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !10, !noalias !36 ; 2 uses
  %i.iw = zext i8 %i.iv to i64                    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !10, !noalias !36
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.iw
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !37, !noalias !36
  %i.jc = zext i16 %i.jb to i64
  %i.jd = lshr i64 %i.it, 3
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 %i.jd ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !10, !alias.scope !39, !noalias !42
  %i.jg = zext i8 %i.jf to i64
  %i.jh = and i64 %i.it, 7
  %i.ji = shl nuw nsw i64 %i.jc, %i.jh
  %i.jj = or i64 %i.ji, %i.jg
  store i64 %i.jj, ptr %i.je, align 1, !alias.scope !34, !noalias !42
  %i.jk = add i64 %i.it, %i.iz                    ; 4 uses
  switch i8 %i.iv, label %bb.u [
    i8 16, label %.sink.split.i
    i8 17, label %bb.t
  ]

bb.t:                                             ; preds = %.lr.ph.i23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %.lr.ph.i23
  %.sink.i = phi i64 [ 3, %bb.t ], [ 2, %.lr.ph.i23 ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.b, i64 %.019.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !10, !noalias !36
  %i.jn = zext i8 %i.jm to i64
  %i.jo = lshr i64 %i.jk, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 %i.jo ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !10, !alias.scope !34, !noalias !31
  %i.jr = zext i8 %i.jq to i64
  %i.js = and i64 %i.jk, 7
  %i.jt = shl nuw nsw i64 %i.jn, %i.js
  %i.ju = or i64 %i.jt, %i.jr
  store i64 %i.ju, ptr %i.jp, align 1, !alias.scope !34, !noalias !31
  %i.jv = add i64 %.sink.i, %i.jk
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %.lr.ph.i23
  %i.jw = phi i64 [ %i.jk, %.lr.ph.i23 ], [ %i.jv, %.sink.split.i ] ; 2 uses
  %i.jx = add nuw i64 %.019.i, 1                  ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %i.jx, %i.is
  br i1 %exitcond.not.i24, label %._crit_edge.i, label %.lr.ph.i23, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.u
  store i64 %i.jw, ptr %3, align 8, !tbaa !8, !alias.scope !31, !noalias !34
  br label %BrotliStoreHuffmanTreeToBitMask.exit

BrotliStoreHuffmanTreeToBitMask.exit:             ; preds = %bb.s, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare hidden void @BrotliWriteHuffmanTree(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliCreateHuffmanTree(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliConvertBitDepthsToSymbols(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not260 = icmp eq i64 %2, 0
  br i1 %.not260, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.0179263 = phi i64 [ %.1180, %bb.e ], [ 0, %bb.a ] ; 4 uses
  %.0184262 = phi i64 [ %i.i, %bb.e ], [ 0, %bb.a ] ; 10 uses
  %.0196261 = phi i64 [ %.1197.a, %bb.e ], [ %2, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0184262
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %.not214 = icmp eq i32 %i.c, 0
  br i1 %.not214, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp ult i64 %.0179263, 4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0179263
  store i64 %.0184262, ptr %i.e, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add i64 %.0179263, 1
  %i.g = zext i32 %i.c to i64
  %i.h = sub i64 %.0196261, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1197.a = phi i64 [ %i.h, %bb.d ], [ %.0196261, %.lr.ph ] ; 2 uses
  %.1180 = phi i64 [ %i.f, %bb.d ], [ %.0179263, %.lr.ph ] ; 13 uses
  %i.i = add i64 %.0184262, 1                     ; 8 uses
  %.not = icmp eq i64 %.1197.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.e
  %i.j = icmp ult i64 %.1180, 2
  br i1 %i.j, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.k = load i64, ptr %6, align 8, !tbaa !8, !alias.scope !46, !noalias !49 ; 3 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10, !alias.scope !49, !noalias !46
  %i.o = zext i8 %i.n to i64
  %i.p = and i64 %i.k, 7
  %i.q = shl nuw nsw i64 1, %i.p
  %i.r = or i64 %i.q, %i.o
  store i64 %i.r, ptr %i.m, align 1, !noalias !46
  %i.s = add i64 %i.k, 4                          ; 4 uses
  store i64 %i.s, ptr %6, align 8, !tbaa !8, !alias.scope !46, !noalias !49
  %i.t = load i64, ptr %i.a, align 16, !tbaa !8   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.u = lshr i64 %i.s, 3
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10, !alias.scope !54, !noalias !51
  %i.x = zext i8 %i.w to i64
  %i.y = and i64 %i.s, 7
  %i.z = shl i64 %i.t, %i.y
  %i.aa = or i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.v, align 1, !noalias !51
  %i.ab = add i64 %i.s, %3
  store i64 %i.ab, ptr %6, align 8, !tbaa !8, !alias.scope !51, !noalias !54
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.t
  store i8 0, ptr %i.ac, align 1, !tbaa !10
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.t
  store i16 0, ptr %i.ad, align 2, !tbaa !37
  br label %.loopexit257

bb.f:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.i, i1 false)
  %.not206265 = icmp eq i64 %i.i, 0               ; 2 uses
  %i.ae = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.af = and i64 %.0184262, 1
  %lcmp.mod.not.not = icmp eq i64 %i.af, 0
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0184262
  %.sink.prol = trunc i64 %.0184262 to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = icmp eq i64 %.0184262, 0
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge291, %bb.f
  %.0202 = phi i32 [ 1, %bb.f ], [ %i.dk, %._crit_edge291 ] ; 7 uses
  br i1 %.not206265, label %._crit_edge270, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph269.prol, label %.lr.ph269.prol.loopexit

.lr.ph269.prol:                                   ; preds = %.lr.ph269.preheader
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !11 ; 3 uses
  %.not212.prol = icmp eq i32 %i.al, 0
  br i1 %.not212.prol, label %.lr.ph269.prol.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph269.prol
  %.not213.prol = icmp ult i32 %i.al, %.0202
  br i1 %.not213.prol, label %bb.i, label %bb.j, !prof !56

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink320.prol = phi i32 [ %.0202, %bb.i ], [ %i.al, %bb.h ]
  store i32 %.sink320.prol, ptr %0, align 4, !tbaa !57
  store i16 -1, ptr %i.ah, align 4, !tbaa !59
  store i16 %.sink.prol, ptr %i.ai, align 2, !tbaa !60
  br label %.lr.ph269.prol.loopexit

.lr.ph269.prol.loopexit:                          ; preds = %.lr.ph269.prol, %bb.j, %.lr.ph269.preheader
  %.1200.lcssa.unr = phi ptr [ poison, %.lr.ph269.preheader ], [ %i.aj, %bb.j ], [ %0, %.lr.ph269.prol ]
  %.0198267.unr = phi i64 [ %i.i, %.lr.ph269.preheader ], [ %.0184262, %bb.j ], [ %.0184262, %.lr.ph269.prol ]
  %.0199266.unr = phi ptr [ %0, %.lr.ph269.preheader ], [ %i.aj, %bb.j ], [ %0, %.lr.ph269.prol ]
  br i1 %i.ak, label %._crit_edge270.loopexit, label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.prol.loopexit, %bb.q
  %.0198267 = phi i64 [ %i.as, %bb.q ], [ %.0198267.unr, %.lr.ph269.prol.loopexit ] ; 2 uses
  %.0199266 = phi ptr [ %.1200.1, %bb.q ], [ %.0199266.unr, %.lr.ph269.prol.loopexit ] ; 5 uses
  %i.am = add i64 %.0198267, -1                   ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11 ; 3 uses
  %.not212 = icmp eq i32 %i.ao, 0
  br i1 %.not212, label %.lr.ph269.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph269
  %.not213 = icmp ult i32 %i.ao, %.0202
  br i1 %.not213, label %bb.l, label %bb.m, !prof !56

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink320 = phi i32 [ %.0202, %bb.l ], [ %i.ao, %bb.k ]
  %.sink = trunc i64 %i.am to i16
  store i32 %.sink320, ptr %.0199266, align 4, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %.0199266, i64 4
  store i16 -1, ptr %i.ap, align 4, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %.0199266, i64 6
  store i16 %.sink, ptr %i.aq, align 2, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %.0199266, i64 8
  br label %.lr.ph269.1

.lr.ph269.1:                                      ; preds = %bb.m, %.lr.ph269
  %.1200 = phi ptr [ %i.ar, %bb.m ], [ %.0199266, %.lr.ph269 ] ; 5 uses
  %i.as = add i64 %.0198267, -2                   ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11 ; 3 uses
  %.not212.1 = icmp eq i32 %i.au, 0
  br i1 %.not212.1, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph269.1
  %.not213.1 = icmp ult i32 %i.au, %.0202
  br i1 %.not213.1, label %bb.o, label %bb.p, !prof !56

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink320.1 = phi i32 [ %.0202, %bb.o ], [ %i.au, %bb.n ]
  %.sink.1 = trunc i64 %i.as to i16
  store i32 %.sink320.1, ptr %.1200, align 4, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %.1200, i64 4
  store i16 -1, ptr %i.av, align 4, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %.1200, i64 6
  store i16 %.sink.1, ptr %i.aw, align 2, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %.1200, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph269.1
  %.1200.1 = phi ptr [ %i.ax, %bb.p ], [ %.1200, %.lr.ph269.1 ] ; 2 uses
  %.not206.1 = icmp eq i64 %i.as, 0
  br i1 %.not206.1, label %._crit_edge270.loopexit, label %.lr.ph269, !llvm.loop !61

._crit_edge270.loopexit:                          ; preds = %bb.q, %.lr.ph269.prol.loopexit
  %.1200.lcssa = phi ptr [ %.1200.lcssa.unr, %.lr.ph269.prol.loopexit ], [ %.1200.1, %bb.q ] ; 2 uses
  %.pre321 = ptrtoint ptr %.1200.lcssa to i64
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %._crit_edge270.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre321, %._crit_edge270.loopexit ], [ %i.ae, %bb.g ]
  %.0199.lcssa = phi ptr [ %.1200.lcssa, %._crit_edge270.loopexit ], [ %0, %bb.g ] ; 2 uses
  %i.ay = sub i64 %.pre-phi, %i.ae                ; 2 uses
  %i.az = lshr exact i64 %i.ay, 3
  %i.ba = trunc i64 %i.az to i32                  ; 4 uses
  %i.bb = add nsw i32 %i.ba, 1
  %sext = shl i64 %i.ay, 29
  %i.bc = ashr i64 %sext, 32                      ; 6 uses
  %i.bd = icmp ult i64 %i.bc, 13
  br i1 %i.bd, label %.preheader258, label %bb.u

.preheader258:                                    ; preds = %._crit_edge270
  %i.be = icmp samesign ugt i64 %i.bc, 1
  br i1 %i.be, label %.lr.ph285, label %SortHuffmanTreeItems.exit

.lr.ph285:                                        ; preds = %.preheader258, %bb.t
  %.045.i284 = phi i64 [ %i.bm, %bb.t ], [ 1, %.preheader258 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.045.i284
  %i.bg = load i64, ptr %i.bf, align 4            ; 2 uses
  %.sroa.0245.0.extract.trunc = trunc i64 %i.bg to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph285
  %.048.i = phi i64 [ %.045.i284, %.lr.ph285 ], [ %.047.i, %bb.s ] ; 3 uses
  %.047.i = add nsw i64 %.048.i, -1               ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.047.i ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !57
  %.not255 = icmp ugt i32 %i.bi, %.sroa.0245.0.extract.trunc
  br i1 %.not255, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.048.i
  %i.bk = load i64, ptr %i.bh, align 4
  store i64 %i.bk, ptr %i.bj, align 4
  %.not54.i = icmp eq i64 %.047.i, 0
  br i1 %.not54.i, label %bb.t, label %bb.r, !llvm.loop !62

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.i = phi i64 [ 0, %bb.s ], [ %.048.i, %bb.r ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1.i
  store i64 %i.bg, ptr %i.bl, align 4
  %i.bm = add nuw nsw i64 %.045.i284, 1           ; 2 uses
  %exitcond316.not = icmp eq i64 %i.bm, %i.bc
  br i1 %exitcond316.not, label %SortHuffmanTreeItems.exit, label %.lr.ph285, !llvm.loop !63

bb.u:                                             ; preds = %._crit_edge270
  %i.bn = icmp ult i64 %i.bc, 57
  %i.bo = select i1 %i.bn, i64 2, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge282
  %indvars.iv = phi i64 [ %i.bo, %bb.u ], [ %indvars.iv.next, %._crit_edge282 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @kBrotliShellGaps, i64 %indvars.iv
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !8  ; 5 uses
  %i.br = icmp ult i64 %i.bq, %i.bc
  br i1 %i.br, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %bb.v, %.critedge.i
  %.044.i279 = phi i64 [ %i.ca, %.critedge.i ], [ %i.bq, %bb.v ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044.i279
  %i.bt = load i64, ptr %i.bs, align 4            ; 2 uses
  %.sroa.0243.0.extract.trunc = trunc i64 %i.bt to i32
  %.not.i272 = icmp ult i64 %.044.i279, %i.bq
  br i1 %.not.i272, label %.critedge.i, label %.lr.ph275

.lr.ph275:                                        ; preds = %.lr.ph281, %bb.w
  %.0.i273 = phi i64 [ %i.bu, %bb.w ], [ %.044.i279, %.lr.ph281 ] ; 3 uses
  %i.bu = sub nuw i64 %.0.i273, %i.bq             ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !57
  %.not254 = icmp ugt i32 %i.bw, %.sroa.0243.0.extract.trunc
  br i1 %.not254, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %.lr.ph275
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i273
  %i.by = load i64, ptr %i.bv, align 4
  store i64 %i.by, ptr %i.bx, align 4
  %.not.i = icmp ult i64 %i.bu, %i.bq
  br i1 %.not.i, label %.critedge.i, label %.lr.ph275, !llvm.loop !64

.critedge.i:                                      ; preds = %bb.w, %.lr.ph275, %.lr.ph281
  %.0.i.lcssa = phi i64 [ %.044.i279, %.lr.ph281 ], [ %.0.i273, %.lr.ph275 ], [ %i.bu, %bb.w ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i.lcssa
  store i64 %i.bt, ptr %i.bz, align 4
  %i.ca = add nuw i64 %.044.i279, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.bc
  br i1 %exitcond.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !65

._crit_edge282:                                   ; preds = %.critedge.i, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond315.not, label %SortHuffmanTreeItems.exit, label %bb.v, !llvm.loop !66

SortHuffmanTreeItems.exit:                        ; preds = %._crit_edge282, %bb.t, %.preheader258
  %i.cb = icmp sgt i32 %i.ba, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0199.lcssa, i8 -1, i64 16, i1 false)
  br i1 %i.cb, label %.lr.ph290.preheader, label %._crit_edge291

.lr.ph290.preheader:                              ; preds = %SortHuffmanTreeItems.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.0199.lcssa, i64 16
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %.0189.in289 = phi i32 [ %.0189, %.lr.ph290 ], [ %i.ba, %.lr.ph290.preheader ] ; 2 uses
  %.0190288 = phi i32 [ %.2192, %.lr.ph290 ], [ %i.bb, %.lr.ph290.preheader ] ; 3 uses
  %.0193287 = phi i32 [ %.2195, %.lr.ph290 ], [ 0, %.lr.ph290.preheader ] ; 3 uses
  %.2201286 = phi ptr [ %i.df, %.lr.ph290 ], [ %i.cc, %.lr.ph290.preheader ] ; 5 uses
  %.0189 = add nsw i32 %.0189.in289, -1
  %i.cd = sext i32 %.0193287 to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !57
  %i.cg = sext i32 %.0190288 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !57
  %.not210 = icmp ule i32 %i.cf, %i.ci            ; 3 uses
  %i.cj = zext i1 %.not210 to i32
  %.1194 = add nsw i32 %.0193287, %i.cj           ; 3 uses
  %not..not210 = xor i1 %.not210, true
  %i.ck = zext i1 %not..not210 to i32
  %.1191 = add nsw i32 %.0190288, %i.ck           ; 3 uses
  %.0188 = select i1 %.not210, i32 %.0193287, i32 %.0190288 ; 2 uses
  %i.cl = sext i32 %.1194 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !57
  %i.co = sext i32 %.1191 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !57
  %.not211 = icmp ule i32 %i.cn, %i.cq            ; 3 uses
  %i.cr = zext i1 %.not211 to i32
  %.2195 = add nsw i32 %.1194, %i.cr
  %not..not211 = xor i1 %.not211, true
  %i.cs = zext i1 %not..not211 to i32
  %.2192 = add nsw i32 %.1191, %i.cs
end_hunk_0
begin_hunk_1_@BrotliBuildAndStoreHuffmanTreeFast:bb.a
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0185307 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !8  ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 %i.fw
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !10
  %i.gd = icmp ult i8 %i.ga, %i.gc                ; 3 uses
  %spec.store.select = select i1 %i.gd, i64 %i.fw, i64 %i.fy
  store i64 %spec.store.select, ptr %i.fx, align 8
  %spec.select = select i1 %i.gd, i64 %i.fy, i64 %i.fv
  %spec.select354 = select i1 %i.gd, i64 %i.fy, i64 %i.fw ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0185307
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !8  ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !10
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select354
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !10
  %i.gl = icmp ult i8 %i.gi, %i.gk                ; 3 uses
  %spec.store.select358 = select i1 %i.gl, i64 %spec.select354, i64 %i.gg
  store i64 %spec.store.select358, ptr %i.gf, align 8
  %spec.select359 = select i1 %i.gl, i64 %i.gg, i64 %spec.select ; 2 uses
  %spec.select360 = select i1 %i.gl, i64 %i.gg, i64 %spec.select354
  %i.gm = add nuw nsw i64 %.0185307, 2            ; 2 uses
  %exitcond318.not.1 = icmp eq i64 %i.gm, %.1180
  br i1 %exitcond318.not.1, label %.loopexit.loopexit.unr-lcssa, label %bb.af, !llvm.loop !78

.loopexit.3:                                      ; preds = %bb.ad, %.lr.ph309.2, %.loopexit.1, %.prol.loopexit.1, %.loopexit.loopexit.unr-lcssa, %.prol.loopexit
  %i.gn = load i64, ptr %i.a, align 16, !tbaa !8  ; 2 uses
  %i.go = lshr i64 %i.ed, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 %i.go ; 6 uses
  %i.gq = and i64 %i.ed, 7
  %i.gr = shl i64 %i.gn, %i.gq                    ; 3 uses
  %i.gs = add i64 %i.ed, %3                       ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.gu = lshr i64 %i.gs, 3
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 %i.gu ; 6 uses
  %i.gw = and i64 %i.gs, 7                        ; 3 uses
  %i.gx = add i64 %i.gs, %3                       ; 9 uses
  switch i64 %.1180, label %bb.ai [
    i64 2, label %bb.ag
    i64 3, label %bb.ah
  ]

bb.ag:                                            ; preds = %.loopexit.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.gy = load i8, ptr %i.gp, align 1, !tbaa !10, !alias.scope !82, !noalias !79
  %i.gz = zext i8 %i.gy to i64
  %i.ha = or i64 %i.gr, %i.gz
  store i64 %i.ha, ptr %i.gp, align 1, !noalias !79
  store i64 %i.gs, ptr %6, align 8, !tbaa !8, !alias.scope !79, !noalias !82
  %i.hb = load i64, ptr %i.gt, align 8, !tbaa !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.hc = load i8, ptr %i.gv, align 1, !tbaa !10, !alias.scope !87, !noalias !84
  %i.hd = zext i8 %i.hc to i64
  %i.he = shl i64 %i.hb, %i.gw
  %i.hf = or i64 %i.he, %i.hd
  store i64 %i.hf, ptr %i.gv, align 1, !noalias !84
  store i64 %i.gx, ptr %6, align 8, !tbaa !8, !alias.scope !84, !noalias !87
  br label %.loopexit257

bb.ah:                                            ; preds = %.loopexit.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.hg = load i8, ptr %i.gp, align 1, !tbaa !10, !alias.scope !92, !noalias !89
  %i.hh = zext i8 %i.hg to i64
  %i.hi = or i64 %i.gr, %i.hh
  store i64 %i.hi, ptr %i.gp, align 1, !noalias !89
  store i64 %i.gs, ptr %6, align 8, !tbaa !8, !alias.scope !89, !noalias !92
  %i.hj = load i64, ptr %i.gt, align 8, !tbaa !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.hk = load i8, ptr %i.gv, align 1, !tbaa !10, !alias.scope !97, !noalias !94
  %i.hl = zext i8 %i.hk to i64
  %i.hm = shl i64 %i.hj, %i.gw
  %i.hn = or i64 %i.hm, %i.hl
  store i64 %i.hn, ptr %i.gv, align 1, !noalias !94
  store i64 %i.gx, ptr %6, align 8, !tbaa !8, !alias.scope !94, !noalias !97
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hp = load i64, ptr %i.ho, align 16, !tbaa !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.hq = lshr i64 %i.gx, 3
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 %i.hq ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !10, !alias.scope !102, !noalias !99
  %i.ht = zext i8 %i.hs to i64
  %i.hu = and i64 %i.gx, 7
  %i.hv = shl i64 %i.hp, %i.hu
  %i.hw = or i64 %i.hv, %i.ht
  store i64 %i.hw, ptr %i.hr, align 1, !noalias !99
  %i.hx = add i64 %i.gx, %3
  store i64 %i.hx, ptr %6, align 8, !tbaa !8, !alias.scope !99, !noalias !102
  br label %.loopexit257

bb.ai:                                            ; preds = %.loopexit.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.hy = load i8, ptr %i.gp, align 1, !tbaa !10, !alias.scope !107, !noalias !104
  %i.hz = zext i8 %i.hy to i64
  %i.ia = or i64 %i.gr, %i.hz
  store i64 %i.ia, ptr %i.gp, align 1, !noalias !104
  store i64 %i.gs, ptr %6, align 8, !tbaa !8, !alias.scope !104, !noalias !107
  %i.ib = load i64, ptr %i.gt, align 8, !tbaa !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.ic = load i8, ptr %i.gv, align 1, !tbaa !10, !alias.scope !112, !noalias !109
  %i.id = zext i8 %i.ic to i64
  %i.ie = shl i64 %i.ib, %i.gw
  %i.if = or i64 %i.ie, %i.id
  store i64 %i.if, ptr %i.gv, align 1, !noalias !109
  store i64 %i.gx, ptr %6, align 8, !tbaa !8, !alias.scope !109, !noalias !112
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ih = load i64, ptr %i.ig, align 16, !tbaa !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.ii = lshr i64 %i.gx, 3
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 %i.ii ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !10, !alias.scope !117, !noalias !114
  %i.il = zext i8 %i.ik to i64
  %i.im = and i64 %i.gx, 7
  %i.in = shl i64 %i.ih, %i.im
  %i.io = or i64 %i.in, %i.il
  store i64 %i.io, ptr %i.ij, align 1, !noalias !114
  %i.ip = add i64 %i.gx, %3                       ; 4 uses
  store i64 %i.ip, ptr %6, align 8, !tbaa !8, !alias.scope !114, !noalias !117
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.is = lshr i64 %i.ip, 3
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 %i.is ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !10, !alias.scope !122, !noalias !119
  %i.iv = zext i8 %i.iu to i64
  %i.iw = and i64 %i.ip, 7
  %i.ix = shl i64 %i.ir, %i.iw
  %i.iy = or i64 %i.ix, %i.iv
  store i64 %i.iy, ptr %i.it, align 1, !noalias !119
  %i.iz = add i64 %i.ip, %3                       ; 4 uses
  store i64 %i.iz, ptr %6, align 8, !tbaa !8, !alias.scope !119, !noalias !122
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 %i.gn
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !10
  %i.jc = icmp eq i8 %i.jb, 1
  %i.jd = zext i1 %i.jc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.je = lshr i64 %i.iz, 3
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 %i.je ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !10, !alias.scope !127, !noalias !124
  %i.jh = zext i8 %i.jg to i64
  %i.ji = and i64 %i.iz, 7
  %i.jj = shl nuw nsw i64 %i.jd, %i.ji
  %i.jk = or i64 %i.jj, %i.jh
  store i64 %i.jk, ptr %i.jf, align 1, !noalias !124
  %i.jl = add i64 %i.iz, 1
  store i64 %i.jl, ptr %6, align 8, !tbaa !8, !alias.scope !124, !noalias !127
  br label %.loopexit257

bb.aj:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.jm = load i64, ptr %6, align 8, !tbaa !8, !alias.scope !129, !noalias !132 ; 3 uses
  %i.jn = lshr i64 %i.jm, 3
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 %i.jn ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !10, !alias.scope !132, !noalias !129
  %i.jq = zext i8 %i.jp to i64
  %i.jr = and i64 %i.jm, 7
  %i.js = shl nuw nsw i64 1096648316244, %i.jr
  %i.jt = or i64 %i.js, %i.jq
  store i64 %i.jt, ptr %i.jo, align 1, !noalias !129
  %i.ju = add i64 %i.jm, 40                       ; 2 uses
  store i64 %i.ju, ptr %6, align 8, !tbaa !8, !alias.scope !129, !noalias !132
  br i1 %.not206265, label %.loopexit257, label %.lr.ph306

.lr.ph306:                                        ; preds = %bb.aj, %.loopexit256
  %i.jv = phi i64 [ %i.mu, %.loopexit256 ], [ %i.ju, %bb.aj ] ; 7 uses
  %.0181304 = phi i64 [ %.pre-phi323, %.loopexit256 ], [ 0, %bb.aj ] ; 4 uses
  %.0182303 = phi i8 [ %.1183, %.loopexit256 ], [ 8, %bb.aj ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 %.0181304
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !10  ; 9 uses
  %.0292 = add nuw i64 %.0181304, 1               ; 3 uses
  %i.jy = icmp ult i64 %.0292, %i.i
  br i1 %i.jy, label %.lr.ph296.preheader, label %.critedge

.lr.ph296.preheader:                              ; preds = %.lr.ph306
  %i.jz = sub i64 %i.i, %.0181304
  br label %.lr.ph296

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %bb.ak
  %.0294 = phi i64 [ %.0, %bb.ak ], [ %.0292, %.lr.ph296.preheader ] ; 3 uses
  %.0178293 = phi i64 [ %i.kd, %bb.ak ], [ 1, %.lr.ph296.preheader ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 %.0294
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !10
  %i.kc = icmp eq i8 %i.kb, %i.jx
  br i1 %i.kc, label %bb.ak, label %.critedge.loopexit

bb.ak:                                            ; preds = %.lr.ph296
  %i.kd = add i64 %.0178293, 1
  %.0 = add i64 %.0294, 1
  %exitcond317.not = icmp eq i64 %.0294, %.0184262
  br i1 %exitcond317.not, label %.critedge.loopexit, label %.lr.ph296, !llvm.loop !134

.critedge.loopexit:                               ; preds = %bb.ak, %.lr.ph296
  %.0178.lcssa.ph = phi i64 [ %.0178293, %.lr.ph296 ], [ %i.jz, %bb.ak ] ; 2 uses
  %.pre322 = add i64 %.0178.lcssa.ph, %.0181304
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph306
  %.pre-phi323 = phi i64 [ %.pre322, %.critedge.loopexit ], [ %.0292, %.lr.ph306 ] ; 2 uses
  %.0178.lcssa = phi i64 [ %.0178.lcssa.ph, %.critedge.loopexit ], [ 1, %.lr.ph306 ] ; 4 uses
  %i.ke = icmp eq i8 %i.jx, 0
  br i1 %i.ke, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.critedge
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr @kZeroRepsDepth, i64 %.0178.lcssa
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !11
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr @kZeroRepsBits, i64 %.0178.lcssa
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !8
  %i.kk = lshr i64 %i.jv, 3
  %i.kl = getelementptr inbounds nuw i8, ptr %7, i64 %i.kk ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !10, !alias.scope !135, !noalias !138
  %i.kn = zext i8 %i.km to i64
  %i.ko = and i64 %i.jv, 7
  %i.kp = shl i64 %i.kj, %i.ko
  %i.kq = or i64 %i.kp, %i.kn
  store i64 %i.kq, ptr %i.kl, align 1, !noalias !138
  %i.kr = add i64 %i.jv, %i.kh
  br label %.loopexit256.sink.split

bb.am:                                            ; preds = %.critedge
  %.not208 = icmp eq i8 %.0182303, %i.jx
  br i1 %.not208, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ks = zext i8 %i.jx to i64                    ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr @kCodeLengthDepth, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !10
  %i.kv = zext i8 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr @kCodeLengthBits, i64 %i.ks
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !11
  %i.ky = zext i32 %i.kx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.kz = lshr i64 %i.jv, 3
  %i.la = getelementptr inbounds nuw i8, ptr %7, i64 %i.kz ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !10, !alias.scope !143, !noalias !140
  %i.lc = zext i8 %i.lb to i64
  %i.ld = and i64 %i.jv, 7
  %i.le = shl nuw nsw i64 %i.ky, %i.ld
  %i.lf = or i64 %i.le, %i.lc
  store i64 %i.lf, ptr %i.la, align 1, !noalias !140
  %i.lg = add i64 %i.jv, %i.kv                    ; 2 uses
  store i64 %i.lg, ptr %6, align 8, !tbaa !8, !alias.scope !140, !noalias !143
  %i.lh = add i64 %.0178.lcssa, -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.promoted = phi i64 [ %i.lg, %bb.an ], [ %i.jv, %bb.am ] ; 7 uses
  %.1 = phi i64 [ %i.lh, %bb.an ], [ %.0178.lcssa, %bb.am ] ; 4 uses
  %i.li = icmp ult i64 %.1, 3
  br i1 %i.li, label %.preheader, label %bb.aq

.preheader:                                       ; preds = %bb.ao
  %.not209300 = icmp eq i64 %.1, 0
  br i1 %.not209300, label %.loopexit256, label %.lr.ph302

.lr.ph302:                                        ; preds = %.preheader
  %i.lj = zext i8 %i.jx to i64                    ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr @kCodeLengthDepth, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !10
  %i.lm = zext i8 %i.ll to i64                    ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr @kCodeLengthBits, i64 %i.lj
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !11
  %i.lp = zext i32 %i.lo to i64                   ; 2 uses
  %i.lq = lshr i64 %.promoted, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %7, i64 %i.lq ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !10, !alias.scope !145, !noalias !148
  %i.lt = zext i8 %i.ls to i64
  %i.lu = and i64 %.promoted, 7
  %i.lv = shl nuw nsw i64 %i.lp, %i.lu
  %i.lw = or i64 %i.lv, %i.lt
  store i64 %i.lw, ptr %i.lr, align 1, !noalias !148
  %i.lx = add i64 %.promoted, %i.lm               ; 4 uses
  %.not209 = icmp eq i64 %.1, 1
  br i1 %.not209, label %.loopexit256.sink.split, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph302
  %i.ly = lshr i64 %i.lx, 3
  %i.lz = getelementptr inbounds nuw i8, ptr %7, i64 %i.ly ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !10, !alias.scope !145, !noalias !148
  %i.mb = zext i8 %i.ma to i64
  %i.mc = and i64 %i.lx, 7
  %i.md = shl nuw nsw i64 %i.lp, %i.mc
  %i.me = or i64 %i.md, %i.mb
  store i64 %i.me, ptr %i.lz, align 1, !noalias !148
  %i.mf = add i64 %i.lx, %i.lm
  br label %.loopexit256.sink.split

bb.aq:                                            ; preds = %bb.ao
  %i.mg = add i64 %.1, -3                         ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr @kNonZeroRepsDepth, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !11
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr @kNonZeroRepsBits, i64 %i.mg
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !8
  %i.mm = lshr i64 %.promoted, 3
  %i.mn = getelementptr inbounds nuw i8, ptr %7, i64 %i.mm ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !10, !alias.scope !150, !noalias !153
  %i.mp = zext i8 %i.mo to i64
  %i.mq = and i64 %.promoted, 7
  %i.mr = shl i64 %i.ml, %i.mq
  %i.ms = or i64 %i.mr, %i.mp
  store i64 %i.ms, ptr %i.mn, align 1, !noalias !153
  %i.mt = add i64 %.promoted, %i.mj
  br label %.loopexit256.sink.split

.loopexit256.sink.split:                          ; preds = %.lr.ph302, %bb.ap, %bb.al, %bb.aq
  %.lcssa.sink = phi i64 [ %i.kr, %bb.al ], [ %i.mt, %bb.aq ], [ %i.lx, %.lr.ph302 ], [ %i.mf, %bb.ap ] ; 2 uses
  %.1183.ph = phi i8 [ %.0182303, %bb.al ], [ %i.jx, %bb.aq ], [ %i.jx, %bb.ap ], [ %i.jx, %.lr.ph302 ]
  store i64 %.lcssa.sink, ptr %6, align 8, !tbaa !8, !noalias !155
  br label %.loopexit256

.loopexit256:                                     ; preds = %.loopexit256.sink.split, %.preheader
  %i.mu = phi i64 [ %.promoted, %.preheader ], [ %.lcssa.sink, %.loopexit256.sink.split ]
  %.1183 = phi i8 [ %i.jx, %.preheader ], [ %.1183.ph, %.loopexit256.sink.split ]
  %i.mv = icmp ult i64 %.pre-phi323, %i.i
  br i1 %i.mv, label %.lr.ph306, label %.loopexit257, !llvm.loop !156

.loopexit257:                                     ; preds = %.loopexit256, %bb.aj, %bb.ah, %bb.ai, %bb.ag, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden i32 @BrotliSetDepth(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @BrotliStoreMetaBlock(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, i64 noundef %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef captures(none) %13, ptr nofree noundef captures(none) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !157
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !175
  %i.f = shl i32 %9, 9
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_kBrotliContextLookupTable, i64 %i.g ; 2 uses
  tail call fastcc void @StoreCompressedMetaBlockHeader(i32 noundef %7, i64 noundef %3, ptr noundef %13, ptr noundef %14)
  %i.i = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 11272) #11 ; 11 uses
  %i.j = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 4760) #11 ; 59 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 952 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1904 ; 6 uses
  %i.m = load i64, ptr %12, align 8, !tbaa !176
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !183  ; 2 uses
  store i64 256, ptr %i.j, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.m, ptr %i.r, align 8, !tbaa !188
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !189
  %i.v = load <2 x ptr>, ptr %i.n, align 8, !tbaa !190
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !190
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.q, ptr %i.w, align 8, !tbaa !191
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 5 uses
  store i64 1, ptr %i.x, align 8, !tbaa !192
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 5 uses
  store i64 0, ptr %i.y, align 8, !tbaa !193
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 912 ; 5 uses
  store i64 0, ptr %i.z, align 8, !tbaa !194
  %i.aa = icmp eq i64 %i.q, 0
  br i1 %i.aa, label %InitBlockEncoder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load i32, ptr %i.u, align 4, !tbaa !11
  %i.ac = zext i32 %i.ab to i64
  br label %InitBlockEncoder.exit

InitBlockEncoder.exit:                            ; preds = %bb.a, %bb.b
  %i.ad = phi i64 [ %i.ac, %bb.b ], [ 0, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 920 ; 9 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !195
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 928 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !196
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !197 ; 2 uses
  store i64 704, ptr %i.k, align 8, !tbaa !184
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 960
  store i64 %i.ah, ptr %i.am, align 8, !tbaa !188
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 968
end_hunk_1
