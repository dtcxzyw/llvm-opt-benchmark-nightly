Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/brotli_bit_stream?download=true
inline.NumInlined: 36
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@BrotliStoreHuffmanTree:bb.a
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !13
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeSymbols, i64 %i.ia
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !13
  %i.ig = zext i8 %i.if to i64
  %i.ih = lshr i64 %i.ht, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !13, !alias.scope !91
  %i.ik = zext i8 %i.ij to i64
  %i.il = and i64 %i.ht, 7
  %i.im = shl nuw nsw i64 %i.ig, %i.il
  %i.in = or i64 %i.im, %i.ik
  store i64 %i.in, ptr %i.ii, align 1, !noalias !92
  %i.io = add i64 %i.ht, %i.id                    ; 2 uses
  %i.ip = add nuw nsw i64 %.02226.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ip, %.1.i
  br i1 %exitcond.not.i.1, label %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit, label %.lr.ph.i, !llvm.loop !78

BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa198 = phi i64 [ %.lcssa198.unr, %.lr.ph.i.prol.loopexit ], [ %i.io, %.lr.ph.i ] ; 2 uses
  store i64 %.lcssa198, ptr %3, align 8, !tbaa !12, !alias.scope !89
  br label %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit

BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit: ; preds = %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit, %.loopexit.i
  %.promoted.i = phi i64 [ %.lcssa198, %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit ], [ %i.ga, %.loopexit.i ]
  %i.iq = icmp eq i32 %.2, 1
  br i1 %i.iq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.lcssa
  store i8 0, ptr %i.ir, align 1, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit
  %i.is = load i64, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.not.i22 = icmp eq i64 %i.is, 0
  br i1 %.not.i22, label %BrotliStoreHuffmanTreeToBitMask.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.s, %bb.u
  %i.it = phi i64 [ %i.jw, %bb.u ], [ %.promoted.i, %bb.s ] ; 3 uses
  %.019.i = phi i64 [ %i.jx, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.019.i
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !13, !noalias !95 ; 2 uses
  %i.iw = zext i8 %i.iv to i64                    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !13, !noalias !95
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.iw
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !17, !noalias !95
  %i.jc = zext i16 %i.jb to i64
  %i.jd = lshr i64 %i.it, 3
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 %i.jd ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !13, !alias.scope !96
  %i.jg = zext i8 %i.jf to i64
  %i.jh = and i64 %i.it, 7
  %i.ji = shl nuw nsw i64 %i.jc, %i.jh
  %i.jj = or i64 %i.ji, %i.jg
  store i64 %i.jj, ptr %i.je, align 1, !alias.scope !94, !noalias !97
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
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !13, !noalias !95
  %i.jn = zext i8 %i.jm to i64
  %i.jo = lshr i64 %i.jk, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 %i.jo ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !13, !alias.scope !94
  %i.jr = zext i8 %i.jq to i64
  %i.js = and i64 %i.jk, 7
  %i.jt = shl nuw nsw i64 %i.jn, %i.js
  %i.ju = or i64 %i.jt, %i.jr
  store i64 %i.ju, ptr %i.jp, align 1, !alias.scope !94, !noalias !98
  %i.jv = add i64 %.sink.i, %i.jk
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %.lr.ph.i23
  %i.jw = phi i64 [ %i.jk, %.lr.ph.i23 ], [ %i.jv, %.sink.split.i ] ; 2 uses
  %i.jx = add nuw nsw i64 %.019.i, 1              ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %i.jx, %i.is
  br i1 %exitcond.not.i24, label %._crit_edge.i, label %.lr.ph.i23, !llvm.loop !85

._crit_edge.i:                                    ; preds = %bb.u
  store i64 %i.jw, ptr %3, align 8, !tbaa !12, !alias.scope !93
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
  %.0182263 = phi i64 [ %.1183, %bb.e ], [ 0, %bb.a ] ; 4 uses
  %.0201262 = phi i64 [ %.1202, %bb.e ], [ %2, %bb.a ] ; 2 uses
  %.0203261 = phi i64 [ %i.i, %bb.e ], [ 0, %bb.a ] ; 10 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0203261
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 2 uses
  %.not214 = icmp eq i32 %i.c, 0
  br i1 %.not214, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp ult i64 %.0182263, 4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0182263
  store i64 %.0203261, ptr %i.e, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add i64 %.0182263, 1
  %i.g = zext i32 %i.c to i64
  %i.h = sub i64 %.0201262, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1202 = phi i64 [ %i.h, %bb.d ], [ %.0201262, %.lr.ph ] ; 2 uses
  %.1183 = phi i64 [ %i.f, %bb.d ], [ %.0182263, %.lr.ph ] ; 13 uses
  %i.i = add i64 %.0203261, 1                     ; 8 uses
  %.not = icmp eq i64 %.1202, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.e
  %i.j = icmp ult i64 %.1183, 2
  br i1 %i.j, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.k = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !167 ; 3 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13, !alias.scope !168
  %i.o = zext i8 %i.n to i64
  %i.p = and i64 %i.k, 7
  %i.q = shl nuw nsw i64 1, %i.p
  %i.r = or i64 %i.q, %i.o
  store i64 %i.r, ptr %i.m, align 1, !noalias !167
  %i.s = add i64 %i.k, 4                          ; 4 uses
  store i64 %i.s, ptr %6, align 8, !tbaa !12, !alias.scope !167
  %i.t = load i64, ptr %i.a, align 16, !tbaa !12  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.u = lshr i64 %i.s, 3
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13, !alias.scope !170
  %i.x = zext i8 %i.w to i64
  %i.y = and i64 %i.s, 7
  %i.z = shl i64 %i.t, %i.y
  %i.aa = or i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.v, align 1, !noalias !169
  %i.ab = add i64 %i.s, %3
  store i64 %i.ab, ptr %6, align 8, !tbaa !12, !alias.scope !169
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.t
  store i8 0, ptr %i.ac, align 1, !tbaa !13
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.t
  store i16 0, ptr %i.ad, align 2, !tbaa !17
  br label %.loopexit257

bb.f:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.i, i1 false)
  %.not206265 = icmp eq i64 %i.i, 0               ; 2 uses
  %i.ae = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.af = and i64 %.0203261, 1
  %lcmp.mod.not.not = icmp eq i64 %i.af, 0
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0203261
  %.sink.prol = trunc i64 %.0203261 to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = icmp eq i64 %.0203261, 0
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge291, %bb.f
  %.0199 = phi i32 [ 1, %bb.f ], [ %i.dk, %._crit_edge291 ] ; 7 uses
  br i1 %.not206265, label %._crit_edge270, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph269.prol, label %.lr.ph269.prol.loopexit

.lr.ph269.prol:                                   ; preds = %.lr.ph269.preheader
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !14 ; 3 uses
  %.not212.prol = icmp eq i32 %i.al, 0
  br i1 %.not212.prol, label %.lr.ph269.prol.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph269.prol
  %.not213.prol = icmp ult i32 %i.al, %.0199
  br i1 %.not213.prol, label %bb.i, label %bb.j, !prof !171

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink320.prol = phi i32 [ %.0199, %bb.i ], [ %i.al, %bb.h ]
  store i32 %.sink320.prol, ptr %0, align 4, !tbaa !173
  store i16 -1, ptr %i.ah, align 4, !tbaa !174
  store i16 %.sink.prol, ptr %i.ai, align 2, !tbaa !175
  br label %.lr.ph269.prol.loopexit

.lr.ph269.prol.loopexit:                          ; preds = %.lr.ph269.prol, %bb.j, %.lr.ph269.preheader
  %.1197.lcssa.unr = phi ptr [ poison, %.lr.ph269.preheader ], [ %i.aj, %bb.j ], [ %0, %.lr.ph269.prol ]
  %.0195267.unr = phi i64 [ %i.i, %.lr.ph269.preheader ], [ %.0203261, %bb.j ], [ %.0203261, %.lr.ph269.prol ]
  %.0196266.unr = phi ptr [ %0, %.lr.ph269.preheader ], [ %i.aj, %bb.j ], [ %0, %.lr.ph269.prol ]
  br i1 %i.ak, label %._crit_edge270.loopexit, label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.prol.loopexit, %bb.q
  %.0195267 = phi i64 [ %i.as, %bb.q ], [ %.0195267.unr, %.lr.ph269.prol.loopexit ] ; 2 uses
  %.0196266 = phi ptr [ %.1197.1, %bb.q ], [ %.0196266.unr, %.lr.ph269.prol.loopexit ] ; 5 uses
  %i.am = add i64 %.0195267, -1                   ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14 ; 3 uses
  %.not212 = icmp eq i32 %i.ao, 0
  br i1 %.not212, label %.lr.ph269.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph269
  %.not213 = icmp ult i32 %i.ao, %.0199
  br i1 %.not213, label %bb.l, label %bb.m, !prof !171

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink320 = phi i32 [ %.0199, %bb.l ], [ %i.ao, %bb.k ]
  %.sink = trunc i64 %i.am to i16
  store i32 %.sink320, ptr %.0196266, align 4, !tbaa !173
  %i.ap = getelementptr inbounds nuw i8, ptr %.0196266, i64 4
  store i16 -1, ptr %i.ap, align 4, !tbaa !174
  %i.aq = getelementptr inbounds nuw i8, ptr %.0196266, i64 6
  store i16 %.sink, ptr %i.aq, align 2, !tbaa !175
  %i.ar = getelementptr inbounds nuw i8, ptr %.0196266, i64 8
  br label %.lr.ph269.1

.lr.ph269.1:                                      ; preds = %bb.m, %.lr.ph269
  %.1197 = phi ptr [ %i.ar, %bb.m ], [ %.0196266, %.lr.ph269 ] ; 5 uses
  %i.as = add i64 %.0195267, -2                   ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14 ; 3 uses
  %.not212.1 = icmp eq i32 %i.au, 0
  br i1 %.not212.1, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph269.1
  %.not213.1 = icmp ult i32 %i.au, %.0199
  br i1 %.not213.1, label %bb.o, label %bb.p, !prof !171

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink320.1 = phi i32 [ %.0199, %bb.o ], [ %i.au, %bb.n ]
  %.sink.1 = trunc i64 %i.as to i16
  store i32 %.sink320.1, ptr %.1197, align 4, !tbaa !173
  %i.av = getelementptr inbounds nuw i8, ptr %.1197, i64 4
  store i16 -1, ptr %i.av, align 4, !tbaa !174
  %i.aw = getelementptr inbounds nuw i8, ptr %.1197, i64 6
  store i16 %.sink.1, ptr %i.aw, align 2, !tbaa !175
  %i.ax = getelementptr inbounds nuw i8, ptr %.1197, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph269.1
  %.1197.1 = phi ptr [ %i.ax, %bb.p ], [ %.1197, %.lr.ph269.1 ] ; 2 uses
  %.not206.1 = icmp eq i64 %i.as, 0
  br i1 %.not206.1, label %._crit_edge270.loopexit, label %.lr.ph269, !llvm.loop !106

._crit_edge270.loopexit:                          ; preds = %bb.q, %.lr.ph269.prol.loopexit
  %.1197.lcssa = phi ptr [ %.1197.lcssa.unr, %.lr.ph269.prol.loopexit ], [ %.1197.1, %bb.q ] ; 2 uses
  %.pre321 = ptrtoint ptr %.1197.lcssa to i64
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %._crit_edge270.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre321, %._crit_edge270.loopexit ], [ %i.ae, %bb.g ]
  %.0196.lcssa = phi ptr [ %.1197.lcssa, %._crit_edge270.loopexit ], [ %0, %bb.g ] ; 2 uses
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
  %.048.i284 = phi i64 [ %i.bm, %bb.t ], [ 1, %.preheader258 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.048.i284
  %i.bg = load i64, ptr %i.bf, align 4            ; 2 uses
  %.sroa.0245.0.extract.trunc = trunc i64 %i.bg to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph285
  %.047.i = phi i64 [ %.048.i284, %.lr.ph285 ], [ %.046.i, %bb.s ] ; 3 uses
  %.046.i = add nsw i64 %.047.i, -1               ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.i ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !173
  %.not255 = icmp ugt i32 %i.bi, %.sroa.0245.0.extract.trunc
  br i1 %.not255, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.047.i
  %i.bk = load i64, ptr %i.bh, align 4
  store i64 %i.bk, ptr %i.bj, align 4
  %.not54.i = icmp eq i64 %.046.i, 0
  br i1 %.not54.i, label %bb.t, label %bb.r, !llvm.loop !107

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.i = phi i64 [ 0, %bb.s ], [ %.047.i, %bb.r ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1.i
  store i64 %i.bg, ptr %i.bl, align 4
  %i.bm = add nuw nsw i64 %.048.i284, 1           ; 2 uses
  %exitcond316.not = icmp eq i64 %i.bm, %i.bc
  br i1 %exitcond316.not, label %SortHuffmanTreeItems.exit, label %.lr.ph285, !llvm.loop !108

bb.u:                                             ; preds = %._crit_edge270
  %i.bn = icmp ult i64 %i.bc, 57
  %i.bo = select i1 %i.bn, i64 2, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge282
  %indvars.iv = phi i64 [ %i.bo, %bb.u ], [ %indvars.iv.next, %._crit_edge282 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @kBrotliShellGaps, i64 %indvars.iv
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !12 ; 4 uses
  %i.br = icmp ult i64 %i.bq, %i.bc
  br i1 %i.br, label %.lr.ph275.preheader, label %._crit_edge282

.lr.ph275.preheader:                              ; preds = %bb.v, %.critedge.i
  %.044.i279 = phi i64 [ %i.ca, %.critedge.i ], [ %i.bq, %bb.v ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044.i279
  %i.bt = load i64, ptr %i.bs, align 4            ; 2 uses
  %.sroa.0243.0.extract.trunc = trunc i64 %i.bt to i32
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.lr.ph275.preheader, %bb.w
  %.0.i273 = phi i64 [ %i.bu, %bb.w ], [ %.044.i279, %.lr.ph275.preheader ] ; 3 uses
  %i.bu = sub nuw i64 %.0.i273, %i.bq             ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !173
  %.not254 = icmp ugt i32 %i.bw, %.sroa.0243.0.extract.trunc
  br i1 %.not254, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %.lr.ph275
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i273
  %i.by = load i64, ptr %i.bv, align 4
  store i64 %i.by, ptr %i.bx, align 4
  %.not.i = icmp ult i64 %i.bu, %i.bq
  br i1 %.not.i, label %.critedge.i, label %.lr.ph275, !llvm.loop !109

.critedge.i:                                      ; preds = %bb.w, %.lr.ph275
  %.0.i.lcssa.ph = phi i64 [ %i.bu, %bb.w ], [ %.0.i273, %.lr.ph275 ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i.lcssa.ph
  store i64 %i.bt, ptr %i.bz, align 4
  %i.ca = add nuw i64 %.044.i279, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.bc
  br i1 %exitcond.not, label %._crit_edge282, label %.lr.ph275.preheader, !llvm.loop !110

._crit_edge282:                                   ; preds = %.critedge.i, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond315.not, label %SortHuffmanTreeItems.exit, label %bb.v, !llvm.loop !111

SortHuffmanTreeItems.exit:                        ; preds = %._crit_edge282, %bb.t, %.preheader258
  %i.cb = icmp sgt i32 %i.ba, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0196.lcssa, i8 -1, i64 16, i1 false)
  br i1 %i.cb, label %.lr.ph290.preheader, label %._crit_edge291

.lr.ph290.preheader:                              ; preds = %SortHuffmanTreeItems.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.0196.lcssa, i64 16
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %.0188.in289 = phi i32 [ %.0188, %.lr.ph290 ], [ %i.ba, %.lr.ph290.preheader ] ; 2 uses
  %.0189288 = phi i32 [ %.2191, %.lr.ph290 ], [ %i.bb, %.lr.ph290.preheader ] ; 3 uses
  %.0192287 = phi i32 [ %.2194, %.lr.ph290 ], [ 0, %.lr.ph290.preheader ] ; 3 uses
  %.2198286 = phi ptr [ %i.df, %.lr.ph290 ], [ %i.cc, %.lr.ph290.preheader ] ; 5 uses
  %.0188 = add nsw i32 %.0188.in289, -1
  %i.cd = sext i32 %.0192287 to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !173
  %i.cg = sext i32 %.0189288 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !173
  %.not210 = icmp ule i32 %i.cf, %i.ci            ; 3 uses
  %i.cj = zext i1 %.not210 to i32
  %.1193 = add nsw i32 %.0192287, %i.cj           ; 3 uses
  %not..not210 = xor i1 %.not210, true
  %i.ck = zext i1 %not..not210 to i32
  %.1190 = add nsw i32 %.0189288, %i.ck           ; 3 uses
  %.0187 = select i1 %.not210, i32 %.0192287, i32 %.0189288 ; 2 uses
  %i.cl = sext i32 %.1193 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !173
  %i.co = sext i32 %.1190 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !173
  %.not211 = icmp ule i32 %i.cn, %i.cq            ; 3 uses
  %i.cr = zext i1 %.not211 to i32
  %.2194 = add nsw i32 %.1193, %i.cr
  %not..not211 = xor i1 %.not211, true
  %i.cs = zext i1 %not..not211 to i32
  %.2191 = add nsw i32 %.1190, %i.cs
  %.0186 = select i1 %.not211, i32 %.1193, i32 %.1190 ; 2 uses
  %i.ct = sext i32 %.0187 to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !173
  %i.cw = sext i32 %.0186 to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !173
  %i.cz = add i32 %i.cy, %i.cv
  %i.da = getelementptr inbounds i8, ptr %.2198286, i64 -8
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !173
  %i.db = trunc i32 %.0187 to i16
  %i.dc = getelementptr inbounds i8, ptr %.2198286, i64 -4
  store i16 %i.db, ptr %i.dc, align 4, !tbaa !174
  %i.dd = trunc i32 %.0186 to i16
  %i.de = getelementptr inbounds i8, ptr %.2198286, i64 -2
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !175
  %i.df = getelementptr inbounds nuw i8, ptr %.2198286, i64 8
  store i64 -1, ptr %.2198286, align 4
  %i.dg = icmp samesign ugt i32 %.0188.in289, 2
  br i1 %i.dg, label %.lr.ph290, label %._crit_edge291, !llvm.loop !112

._crit_edge291:                                   ; preds = %.lr.ph290, %SortHuffmanTreeItems.exit
  %i.dh = shl nsw i32 %i.ba, 1
  %i.di = add nsw i32 %i.dh, -1
  %i.dj = tail call i32 @BrotliSetDepth(i32 noundef %i.di, ptr noundef %0, ptr noundef %4, i32 noundef 14) #11
  %.not207 = icmp eq i32 %i.dj, 0
  %i.dk = shl i32 %.0199, 1
  br i1 %.not207, label %bb.g, label %bb.x

bb.x:                                             ; preds = %._crit_edge291
  tail call void @BrotliConvertBitDepthsToSymbols(ptr noundef %4, i64 noundef %i.i, ptr noundef %5) #11
  %i.dl = icmp ult i64 %.1183, 5
  br i1 %i.dl, label %.lr.ph309, label %bb.aj

.lr.ph309:                                        ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.dm = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !176 ; 4 uses
  %i.dn = lshr i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13, !alias.scope !177
  %i.dq = zext i8 %i.dp to i64
  %i.dr = and i64 %i.dm, 7
  %i.ds = shl nuw nsw i64 1, %i.dr
  %i.dt = or i64 %i.ds, %i.dq
  store i64 %i.dt, ptr %i.do, align 1, !noalias !176
  %i.du = add i64 %i.dm, 2                        ; 3 uses
  store i64 %i.du, ptr %6, align 8, !tbaa !12, !alias.scope !176
  %i.dv = add nsw i64 %.1183, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.dw = lshr i64 %i.du, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 %i.dw ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !13, !alias.scope !179
  %i.dz = zext i8 %i.dy to i64
  %i.ea = and i64 %i.du, 7
  %i.eb = shl nuw nsw i64 %i.dv, %i.ea
  %i.ec = or i64 %i.eb, %i.dz
  store i64 %i.ec, ptr %i.dx, align 1, !noalias !178
  %i.ed = add i64 %i.dm, 4                        ; 4 uses
  store i64 %i.ed, ptr %6, align 8, !tbaa !12, !alias.scope !178
  %.pre = load i64, ptr %i.a, align 16, !tbaa !12 ; 4 uses
  %i.ee = and i64 %.1183, 1
  %lcmp.mod349.not.not = icmp eq i64 %i.ee, 0
  br i1 %lcmp.mod349.not.not, label %.prol.preheader, label %.prol.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.af
  store i64 %spec.select359, ptr %i.a, align 1
  %cond355 = icmp eq i64 %.1183, 2
  br i1 %cond355, label %.loopexit.3, label %.lr.ph309.1
end_hunk_0
