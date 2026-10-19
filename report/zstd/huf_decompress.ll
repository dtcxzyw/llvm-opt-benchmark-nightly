Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_decompress?download=true
inline.NumInlined: 744
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0_@HUF_decompress4X2_usingDTable_internal:bb.a
  store ptr %i.bfj, ptr %i.bew, align 8, !tbaa !42
  %i.bfk = and i32 %i.bfd, 7
  br label %BIT_reloadDStream.exit326.i.i

bb.ek:                                            ; preds = %.lr.ph126
  %i.bfl = load ptr, ptr %i.bey, align 8, !tbaa !45 ; 3 uses
  %i.bfm = icmp eq ptr %i.bfe, %i.bfl
  br i1 %i.bfm, label %BIT_reloadDStream.exit326.i.thread.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.bfn = lshr i32 %i.bfd, 3                     ; 2 uses
  %i.bfo = zext nneg i32 %i.bfn to i64
  %i.bfp = sub nsw i64 0, %i.bfo
  %i.bfq = getelementptr inbounds i8, ptr %i.bfe, i64 %i.bfp
  %i.bfr = icmp uge ptr %i.bfq, %i.bfl            ; 2 uses
  %i.bfs = ptrtoint ptr %i.bfe to i64
  %i.bft = ptrtoint ptr %i.bfl to i64
  %i.bfu = sub i64 %i.bfs, %i.bft
  %i.bfv = trunc i64 %i.bfu to i32
  %.021.i322.i.i = select i1 %i.bfr, i32 %i.bfn, i32 %i.bfv ; 2 uses
  %i.bfw = zext i32 %.021.i322.i.i to i64
  %i.bfx = sub nsw i64 0, %i.bfw
  %i.bfy = getelementptr inbounds i8, ptr %i.bfe, i64 %i.bfx ; 2 uses
  store ptr %i.bfy, ptr %i.bew, align 8, !tbaa !42
  %i.bfz = shl i32 %.021.i322.i.i, 3
  %i.bga = sub i32 %i.bfd, %i.bfz
  br label %BIT_reloadDStream.exit326.i.i

BIT_reloadDStream.exit326.i.thread.i:             ; preds = %bb.ek, %._crit_edge
  %i.bgb = phi i32 [ %.lcssa50, %._crit_edge ], [ %i.bfd, %bb.ek ] ; 2 uses
  %.5.i.i.i48 = phi ptr [ %.5.i.i.i.lcssa, %._crit_edge ], [ %.5.i.i.i125, %bb.ek ] ; 3 uses
  %.not1068.i = icmp ugt ptr %.5.i.i.i48, %i.bev
  br i1 %.not1068.i, label %.loopexit.i, label %.lr.ph844.i.preheader

.lr.ph844.i.preheader:                            ; preds = %.preheader.i, %BIT_reloadDStream.exit326.i.thread.i
  %.val145.i.ph = phi i32 [ %storemerge, %.preheader.i ], [ %i.bgb, %BIT_reloadDStream.exit326.i.thread.i ]
  %.6.i.i843.i.ph = phi ptr [ %.5.i.i.i125, %.preheader.i ], [ %.5.i.i.i48, %BIT_reloadDStream.exit326.i.thread.i ]
  br label %.lr.ph844.i

BIT_reloadDStream.exit326.i.i:                    ; preds = %bb.el, %bb.ej
  %storemerge = phi i32 [ %i.bfk, %bb.ej ], [ %i.bga, %bb.el ] ; 4 uses
  %.val19.sink.in.i = phi ptr [ %i.bfj, %bb.ej ], [ %i.bfy, %bb.el ]
  %.022.i321.i.i = phi i1 [ true, %bb.ej ], [ %i.bfr, %bb.el ]
  store i32 %storemerge, ptr %i.beu, align 8, !tbaa !41
  %.val19.sink.i = load i64, ptr %.val19.sink.in.i, align 1, !tbaa !23 ; 2 uses
  store i64 %.val19.sink.i, ptr %6, align 8, !tbaa !44
  %i.bgc = icmp ule ptr %.5.i.i.i125, %i.bev      ; 2 uses
  %i.bgd = and i1 %i.bgc, %.022.i321.i.i
  br i1 %i.bgd, label %bb.em, label %.preheader.i

.preheader.i:                                     ; preds = %BIT_reloadDStream.exit326.i.i
  br i1 %i.bgc, label %.lr.ph844.i.preheader, label %.loopexit.i

bb.em:                                            ; preds = %BIT_reloadDStream.exit326.i.i
  %i.bge = and i32 %storemerge, 63
  %i.bgf = zext nneg i32 %i.bge to i64
  %i.bgg = shl i64 %.val19.sink.i, %i.bgf
  %i.bgh = lshr i64 %i.bgg, %i.bfb
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bgh ; 3 uses
  %i.bgj = load i16, ptr %i.bgi, align 2
  store i16 %i.bgj, ptr %.5.i.i.i125, align 1
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgi, i64 2
  %i.bgl = load i8, ptr %i.bgk, align 2, !tbaa !26
  %i.bgm = zext i8 %i.bgl to i32
  %i.bgn = load i32, ptr %i.beu, align 8, !tbaa !41
  %i.bgo = add i32 %i.bgn, %i.bgm                 ; 4 uses
  store i32 %i.bgo, ptr %i.beu, align 8, !tbaa !41
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgi, i64 3
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !27
  %i.bgr = zext i8 %i.bgq to i64
  %i.bgs = getelementptr inbounds nuw i8, ptr %.5.i.i.i125, i64 %i.bgr ; 2 uses
  %i.bgt = icmp ugt i32 %i.bgo, 64
  br i1 %i.bgt, label %._crit_edge, label %.lr.ph126, !prof !28, !llvm.loop !2

.lr.ph844.i:                                      ; preds = %.lr.ph844.i.preheader, %.lr.ph844.i
  %.val145.i = phi i32 [ %i.bhe, %.lr.ph844.i ], [ %.val145.i.ph, %.lr.ph844.i.preheader ]
  %.6.i.i843.i = phi ptr [ %i.bhi, %.lr.ph844.i ], [ %.6.i.i843.i.ph, %.lr.ph844.i.preheader ] ; 2 uses
  %.val144.i = load i64, ptr %6, align 8, !tbaa !44
  %i.bgu = and i32 %.val145.i, 63
  %i.bgv = zext nneg i32 %i.bgu to i64
  %i.bgw = shl i64 %.val144.i, %i.bgv
  %i.bgx = lshr i64 %i.bgw, %i.bfb
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bgx ; 3 uses
  %i.bgz = load i16, ptr %i.bgy, align 2
  store i16 %i.bgz, ptr %.6.i.i843.i, align 1
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgy, i64 2
  %i.bhb = load i8, ptr %i.bha, align 2, !tbaa !26
  %i.bhc = zext i8 %i.bhb to i32
  %i.bhd = load i32, ptr %i.beu, align 8, !tbaa !41
  %i.bhe = add i32 %i.bhd, %i.bhc                 ; 3 uses
  store i32 %i.bhe, ptr %i.beu, align 8, !tbaa !41
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgy, i64 3
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !27
  %i.bhh = zext i8 %i.bhg to i64
  %i.bhi = getelementptr inbounds nuw i8, ptr %.6.i.i843.i, i64 %i.bhh ; 3 uses
  %.not.i.i.i = icmp ugt ptr %i.bhi, %i.bev
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph844.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %.lr.ph844.i, %.preheader.i, %BIT_reloadDStream.exit326.i.thread.i, %BIT_reloadDStream.exit333.i.i
  %.val147.i = phi i32 [ %i.beq, %BIT_reloadDStream.exit333.i.i ], [ %storemerge, %.preheader.i ], [ %i.bgb, %BIT_reloadDStream.exit326.i.thread.i ], [ %i.bhe, %.lr.ph844.i ] ; 2 uses
  %.7.i.i.i = phi ptr [ %.4.i.i.i, %BIT_reloadDStream.exit333.i.i ], [ %.5.i.i.i125, %.preheader.i ], [ %.5.i.i.i48, %BIT_reloadDStream.exit326.i.thread.i ], [ %i.bhi, %.lr.ph844.i ] ; 2 uses
  %i.bhj = icmp ult ptr %.7.i.i.i, %i.e
  br i1 %i.bhj, label %bb.en, label %HUF_decodeStreamX2.exit.i.i

bb.en:                                            ; preds = %.loopexit.i
  %.val146.i = load i64, ptr %6, align 8, !tbaa !44
  %i.bhk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bhl = and i32 %.val147.i, 63
  %i.bhm = zext nneg i32 %i.bhl to i64
  %i.bhn = shl i64 %.val146.i, %i.bhm
  %i.bho = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.bhp = and i32 %i.bho, 63
  %i.bhq = zext nneg i32 %i.bhp to i64
  %i.bhr = lshr i64 %i.bhn, %i.bhq
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bhr ; 4 uses
  %i.bht = load i8, ptr %i.bhs, align 2
  store i8 %i.bht, ptr %.7.i.i.i, align 1
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhs, i64 3
  %i.bhv = load i8, ptr %i.bhu, align 1, !tbaa !27
  %i.bhw = icmp eq i8 %i.bhv, 1
  br i1 %i.bhw, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhs, i64 2
  %i.bhy = load i8, ptr %i.bhx, align 2, !tbaa !26
  %i.bhz = zext i8 %i.bhy to i32
  %i.bia = load i32, ptr %i.bhk, align 8, !tbaa !41
  %i.bib = add i32 %i.bia, %i.bhz
  br label %HUF_decodeStreamX2.exit.i.i

bb.ep:                                            ; preds = %bb.en
  %i.bic = load i32, ptr %i.bhk, align 8, !tbaa !41 ; 3 uses
  %i.bid = icmp ult i32 %i.bic, 64
  br i1 %i.bid, label %bb.eq, label %HUF_decodeStreamX2.exit.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bhs, i64 2
  %i.bif = load i8, ptr %i.bie, align 2, !tbaa !26
  %i.big = zext i8 %i.bif to i32
  %i.bih = add nuw nsw i32 %i.bic, %i.big
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.bih, i32 64)
  br label %HUF_decodeStreamX2.exit.i.i

HUF_decodeStreamX2.exit.i.i:                      ; preds = %bb.eq, %bb.ep, %bb.eo, %.loopexit.i
  %i.bii = phi i32 [ %i.bib, %bb.eo ], [ %i.bic, %bb.ep ], [ %spec.store.select.i, %bb.eq ], [ %.val147.i, %.loopexit.i ]
  %i.bij = icmp ne ptr %.sroa.116466.3.i, %i.q
  %i.bik = icmp ne i32 %.sroa.36432.4.i, 64
  %narrow.not626.i = select i1 %i.bij, i1 true, i1 %i.bik
  %i.bil = icmp ne ptr %.sroa.116344.3.i, %i.r
  %i.bim = icmp ne i32 %.sroa.36310.4.i, 64
  %narrow618.not629.i = select i1 %i.bil, i1 true, i1 %i.bim
  %.not.i = or i1 %narrow.not626.i, %narrow618.not629.i
  %i.bin = icmp ne ptr %.sroa.116224.3.i, %i.s
  %i.bio = icmp ne i32 %.sroa.36.4.i, 64
  %narrow619.not632.i = select i1 %i.bin, i1 true, i1 %i.bio
  %.not623.i = or i1 %.not.i, %narrow619.not632.i
  %i.bip = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !42
  %i.bir = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !45
  %i.bit = icmp ne ptr %i.biq, %i.bis
  %i.biu = icmp ne i32 %i.bii, 64
  %narrow620.not635.i = select i1 %i.bit, i1 true, i1 %i.biu
  %.not621.i = or i1 %.not623.i, %narrow620.not635.i
  %spec.select.i.i = select i1 %.not621.i, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread.i

BIT_initDStream.exit.thread.i:                    ; preds = %HUF_decodeStreamX2.exit.i.i, %.loopexit670.i, %bb.ao, %bb.am, %bb.ae, %bb.ac, %bb.aa, %bb.s, %bb.q, %bb.o, %bb.g, %bb.e, %bb.d
  %.5.i.i = phi i64 [ %spec.select.i.i, %HUF_decodeStreamX2.exit.i.i ], [ -20, %bb.d ], [ -1, %bb.s ], [ -20, %.loopexit670.i ], [ -1, %bb.g ], [ %i.gj, %bb.ao ], [ -20, %bb.o ], [ -72, %bb.e ], [ -20, %bb.aa ], [ -72, %bb.q ], [ -20, %bb.am ], [ -72, %bb.ac ], [ -1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %HUF_decompress4X2_usingDTable_internal_default.exit

bb.er:                                            ; preds = %bb.b
  %i.biv = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal_fast(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) ; 2 uses
  %.not25 = icmp eq i64 %i.biv, 0
  br i1 %.not25, label %bb.es, label %HUF_decompress4X2_usingDTable_internal_default.exit

bb.es:                                            ; preds = %bb.er, %bb.b
  %i.biw = tail call fastcc i64 @HUF_decompress4X2_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %HUF_decompress4X2_usingDTable_internal_default.exit

HUF_decompress4X2_usingDTable_internal_default.exit: ; preds = %BIT_initDStream.exit.thread.i, %bb.c, %bb.er, %bb.es
  %.1 = phi i64 [ %i.biw, %bb.es ], [ %i.biv, %bb.er ], [ %.5.i.i, %BIT_initDStream.exit.thread.i ], [ -20, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 1, 0) i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.BIT_DStream_t, align 8      ; 24 uses
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %5, 32
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %bb.cl, label %bb.cm

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.d = icmp ult i64 %3, 10
  %i.e = icmp ult i64 %1, 6
  %or.cond.i.i = or i1 %i.e, %i.d
  br i1 %or.cond.i.i, label %HUF_decompress4X1_usingDTable_internal_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.val86.i = load i16, ptr %2, align 1, !tbaa !36 ; 5 uses
  %i.i = zext i16 %.val86.i to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val85.i = load i16, ptr %i.j, align 1, !tbaa !36 ; 5 uses
  %i.k = zext i16 %.val85.i to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val84.i = load i16, ptr %i.l, align 1, !tbaa !36 ; 5 uses
  %i.m = zext i16 %.val84.i to i64                ; 2 uses
  %i.n = add nuw nsw i64 %i.i, 6
  %i.o = add nuw nsw i64 %i.n, %i.k
  %i.p = add nuw nsw i64 %i.o, %i.m               ; 2 uses
  %i.q = sub nuw i64 %3, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 12 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.i     ; 22 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %i.k     ; 22 uses
  %i.u = getelementptr i8, ptr %i.t, i64 %i.m     ; 4 uses
  %i.v = add i64 %1, 3
  %i.w = lshr i64 %i.v, 2                         ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w ; 7 uses
  %.val.i = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 9 uses
  %i.aa = icmp ugt i64 %i.p, %3
  %i.ab = mul nuw i64 %i.w, 3                     ; 3 uses
  %i.ac = icmp samesign ugt i64 %i.ab, %1
  %or.cond181.i.i = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond181.i.i, label %BIT_initDStream.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i16 %.val86.i, 0
  br i1 %i.ad, label %BIT_initDStream.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.af = icmp ugt i16 %.val86.i, 7
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.s, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17  ; 2 uses
  %.not51.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not51.i.i, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %.val.i.i = load i64, ptr %i.ai, align 1, !tbaa !23
  %i.aj = zext i8 %i.ah to i32
  %i.ak = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.aj, i1 true)
  %i.al = xor i32 %i.ak, 31
  %i.am = sub nuw nsw i32 8, %i.al
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.an = load i8, ptr %i.r, align 1, !tbaa !17
  %i.ao = zext i8 %i.an to i64                    ; 7 uses
  switch i16 %.val86.i, label %bb.o [
    i16 7, label %bb.i
    i16 6, label %bb.j
    i16 5, label %bb.k
    i16 4, label %bb.l
    i16 3, label %bb.m
    i16 2, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 48
  %i.at = or disjoint i64 %i.as, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = phi i64 [ %i.at, %bb.i ], [ %i.ao, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 40
  %i.az = add nuw nsw i64 %i.ay, %i.au
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.ba = phi i64 [ %i.az, %bb.j ], [ %i.ao, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 32
  %i.bf = add nuw nsw i64 %i.be, %i.ba
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.bg = phi i64 [ %i.bf, %bb.k ], [ %i.ao, %bb.h ]
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 24
  %i.bl = add nuw nsw i64 %i.bk, %i.bg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %i.bm = phi i64 [ %i.bl, %bb.l ], [ %i.ao, %bb.h ]
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 16
  %i.br = add nuw nsw i64 %i.bq, %i.bm
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %i.bs = phi i64 [ %i.br, %bb.m ], [ %i.ao, %bb.h ]
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 8
  %i.bx = add nuw nsw i64 %i.bw, %i.bs
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.sroa.0247.6.i = phi i64 [ %i.ao, %bb.h ], [ %i.bx, %bb.n ]
  %i.by = getelementptr i8, ptr %i.s, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17  ; 2 uses
  %.not.i87.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i87.i, label %BIT_initDStream.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = zext i8 %i.bz to i32
  %i.cb = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ca, i1 true)
  %i.cc = shl nuw nsw i16 %.val86.i, 3
  %i.cd = zext nneg i16 %i.cc to i32
  %reass.sub = sub nsw i32 %i.cb, %i.cd
  %i.ce = add nsw i32 %reass.sub, 41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread.i.i
  %.sroa.0247.7.i = phi i64 [ %.sroa.0247.6.i, %bb.p ], [ %.val.i.i, %.thread.i.i ] ; 2 uses
  %.sroa.25248.7.i = phi i32 [ %i.ce, %bb.p ], [ %i.am, %.thread.i.i ] ; 2 uses
  %.sroa.69266.6.i = phi ptr [ %i.r, %bb.p ], [ %i.ai, %.thread.i.i ] ; 2 uses
  %i.cf = icmp eq i16 %.val85.i, 0
  br i1 %i.cf, label %BIT_initDStream.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.ch = icmp ugt i16 %.val85.i, 7
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr i8, ptr %i.t, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17  ; 2 uses
  %.not51.i91.i = icmp eq i8 %i.cj, 0
  br i1 %.not51.i91.i, label %BIT_initDStream.exit.thread.i, label %.thread.i92.i

.thread.i92.i:                                    ; preds = %bb.s
  %i.ck = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %.val.i90.i = load i64, ptr %i.ck, align 1, !tbaa !23
  %i.cl = zext i8 %i.cj to i32
  %i.cm = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.cl, i1 true)
  %i.cn = xor i32 %i.cm, 31
  %i.co = sub nuw nsw i32 8, %i.cn
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.cp = load i8, ptr %i.s, align 1, !tbaa !17
  %i.cq = zext i8 %i.cp to i64                    ; 7 uses
  switch i16 %.val85.i, label %bb.aa [
    i16 7, label %bb.u
    i16 6, label %bb.v
    i16 5, label %bb.w
    i16 4, label %bb.x
    i16 3, label %bb.y
    i16 2, label %bb.z
  ]

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 48
  %i.cv = or disjoint i64 %i.cu, %i.cq
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cw = phi i64 [ %i.cv, %bb.u ], [ %i.cq, %bb.t ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 40
  %i.db = add nuw nsw i64 %i.da, %i.cw
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.dc = phi i64 [ %i.db, %bb.v ], [ %i.cq, %bb.t ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !17
  %i.df = zext i8 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 32
  %i.dh = add nuw nsw i64 %i.dg, %i.dc
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.di = phi i64 [ %i.dh, %bb.w ], [ %i.cq, %bb.t ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 24
  %i.dn = add nuw nsw i64 %i.dm, %i.di
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t
  %i.do = phi i64 [ %i.dn, %bb.x ], [ %i.cq, %bb.t ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !17
  %i.dr = zext i8 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 16
  %i.dt = add nuw nsw i64 %i.ds, %i.do
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %i.du = phi i64 [ %i.dt, %bb.y ], [ %i.cq, %bb.t ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !17
  %i.dx = zext i8 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 8
  %i.dz = add nuw nsw i64 %i.dy, %i.du
  br label %bb.aa
end_hunk_0
begin_hunk_1_@HUF_decompress4X1_usingDTable_internal:bb.a
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !34
  %i.xr = load i8, ptr %i.xo, align 1, !tbaa !35
  %i.xs = zext i8 %i.xr to i32
  %i.xt = add i32 %.sroa.25182.2.i, %i.xs         ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.3.i205.i.i, i64 1
  store i8 %i.xq, ptr %.3.i205.i.i, align 1, !tbaa !17
  br label %.prol.loopexit125

.prol.loopexit125:                                ; preds = %.prol.loopexit125.unr-lcssa, %.lr.ph454.i
  %.6.i206.i453.i.unr = phi ptr [ %.3.i205.i.i, %.lr.ph454.i ], [ %i.xu, %.prol.loopexit125.unr-lcssa ]
  %.sroa.25182.3452.i.unr = phi i32 [ %.sroa.25182.2.i, %.lr.ph454.i ], [ %i.xt, %.prol.loopexit125.unr-lcssa ]
  %.lcssa118.unr.a = phi i32 [ poison, %.lr.ph454.i ], [ %i.xt, %.prol.loopexit125.unr-lcssa ]
  %i.xv = icmp eq i64 %i.xi, %.neg133
  br i1 %i.xv, label %HUF_decodeStreamX1.exit219.i.i, label %.lr.ph454.i.new

.lr.ph454.i.new:                                  ; preds = %.prol.loopexit125, %.lr.ph454.i.new
  %.6.i206.i453.i = phi ptr [ %i.yr, %.lr.ph454.i.new ], [ %.6.i206.i453.i.unr, %.prol.loopexit125 ] ; 3 uses
  %.sroa.25182.3452.i = phi i32 [ %i.yq, %.lr.ph454.i.new ], [ %.sroa.25182.3452.i.unr, %.prol.loopexit125 ] ; 2 uses
  %i.xw = and i32 %.sroa.25182.3452.i, 63
  %i.xx = zext nneg i32 %i.xw to i64
  %i.xy = shl i64 %.sroa.0181.2.i, %i.xx
  %i.xz = lshr i64 %i.xy, %i.xg
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.xz ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 1
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !34
  %i.yd = load i8, ptr %i.ya, align 1, !tbaa !35
  %i.ye = zext i8 %i.yd to i32
  %i.yf = add i32 %.sroa.25182.3452.i, %i.ye      ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.6.i206.i453.i, i64 1
  store i8 %i.yc, ptr %.6.i206.i453.i, align 1, !tbaa !17
  %i.yh = and i32 %i.yf, 63
  %i.yi = zext nneg i32 %i.yh to i64
  %i.yj = shl i64 %.sroa.0181.2.i, %i.yi
  %i.yk = lshr i64 %i.yj, %i.xg
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.yk ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !34
  %i.yo = load i8, ptr %i.yl, align 1, !tbaa !35
  %i.yp = zext i8 %i.yo to i32
  %i.yq = add i32 %i.yf, %i.yp                    ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.6.i206.i453.i, i64 2 ; 2 uses
  store i8 %i.yn, ptr %i.yg, align 1, !tbaa !17
  %i.ys = icmp ult ptr %i.yr, %i.y
  br i1 %i.ys, label %.lr.ph454.i.new, label %HUF_decodeStreamX1.exit219.i.i, !llvm.loop !5

HUF_decodeStreamX1.exit219.i.i:                   ; preds = %.prol.loopexit125, %.lr.ph454.i.new, %BIT_reloadDStream.exit.i203.i.i
  %.sroa.25182.3.lcssa.i = phi i32 [ %.sroa.25182.2.i, %BIT_reloadDStream.exit.i203.i.i ], [ %.lcssa118.unr.a, %.prol.loopexit125 ], [ %i.yq, %.lr.ph454.i.new ]
  %i.yt = ptrtoint ptr %i.z to i64
  %i.yu = ptrtoint ptr %.3153.i.i to i64
  %i.yv = sub i64 %i.yt, %i.yu
  %i.yw = icmp sgt i64 %i.yv, 3
  %i.yx = icmp ugt i32 %.sroa.25.0.i, 64          ; 2 uses
  br i1 %i.yw, label %.preheader375.i, label %bb.bu

.preheader375.i:                                  ; preds = %HUF_decodeStreamX1.exit219.i.i
  br i1 %i.yx, label %BIT_reloadDStream.exit.i185.i.i, label %.lr.ph460.i, !prof !29

.lr.ph460.i:                                      ; preds = %.preheader375.i
  %i.yy = ptrtoint ptr %i.t to i64
  %i.yz = getelementptr inbounds i8, ptr %i.z, i64 -3
  %i.za = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.zb = and i32 %i.za, 63
  %i.zc = zext nneg i32 %i.zb to i64              ; 4 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %.lr.ph460.i
  %.0.i193.i459.i = phi ptr [ %.3153.i.i, %.lr.ph460.i ], [ %i.abj, %bb.bt ] ; 8 uses
  %.sroa.69136.3458.i = phi ptr [ %.sroa.69136.0.i, %.lr.ph460.i ], [ %.sroa.69136.4.i, %bb.bt ] ; 5 uses
  %.sroa.25.4457.i = phi i32 [ %.sroa.25.0.i, %.lr.ph460.i ], [ %i.abi, %bb.bt ] ; 5 uses
  %.sroa.0.3456.i = phi i64 [ %.sroa.0.0.i, %.lr.ph460.i ], [ %.sroa.0.4.i, %bb.bt ]
  %.not.i37.i194.i.i = icmp ult ptr %.sroa.69136.3458.i, %i.ei
  br i1 %.not.i37.i194.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.zd = lshr i32 %.sroa.25.4457.i, 3
  %i.ze = and i32 %.sroa.25.4457.i, 7
  br label %BIT_reloadDStream.exit43.i195.i.i

bb.br:                                            ; preds = %bb.bp
  %i.zf = icmp eq ptr %.sroa.69136.3458.i, %i.t
  br i1 %i.zf, label %BIT_reloadDStream.exit.i185.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.zg = lshr i32 %.sroa.25.4457.i, 3            ; 2 uses
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = sub nsw i64 0, %i.zh
  %i.zj = getelementptr inbounds i8, ptr %.sroa.69136.3458.i, i64 %i.zi
  %i.zk = icmp uge ptr %i.zj, %i.t                ; 2 uses
  %i.zl = ptrtoint ptr %.sroa.69136.3458.i to i64
  %i.zm = sub i64 %i.zl, %i.yy
  %i.zn = trunc i64 %i.zm to i32
  %.021.i39.i197.i.i = select i1 %i.zk, i32 %i.zg, i32 %i.zn ; 2 uses
  %i.zo = shl i32 %.021.i39.i197.i.i, 3
  %i.zp = sub i32 %.sroa.25.4457.i, %i.zo
  br label %BIT_reloadDStream.exit43.i195.i.i

BIT_reloadDStream.exit43.i195.i.i:                ; preds = %bb.bs, %bb.bq
  %.sroa.25.5.i = phi i32 [ %i.ze, %bb.bq ], [ %i.zp, %bb.bs ] ; 3 uses
  %.pn353.in.i = phi i32 [ %i.zd, %bb.bq ], [ %.021.i39.i197.i.i, %bb.bs ]
  %.022.i38.i196.i.i = phi i1 [ true, %bb.bq ], [ %i.zk, %bb.bs ]
  %.pn353.i = zext i32 %.pn353.in.i to i64
  %.pn352.i = sub nsw i64 0, %.pn353.i
  %.sroa.69136.4.i = getelementptr inbounds i8, ptr %.sroa.69136.3458.i, i64 %.pn352.i ; 3 uses
  %.sroa.0.4.i = load i64, ptr %.sroa.69136.4.i, align 1, !tbaa !23 ; 7 uses
  %i.zq = icmp ult ptr %.0.i193.i459.i, %i.yz
  %i.zr = and i1 %i.zq, %.022.i38.i196.i.i
  br i1 %i.zr, label %bb.bt, label %BIT_reloadDStream.exit.i185.i.i

bb.bt:                                            ; preds = %BIT_reloadDStream.exit43.i195.i.i
  %i.zs = and i32 %.sroa.25.5.i, 63
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = shl i64 %.sroa.0.4.i, %i.zt
  %i.zv = lshr i64 %i.zu, %i.zc
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.zv ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 1
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !34
  %i.zz = load i8, ptr %i.zw, align 1, !tbaa !35
  %i.aaa = zext i8 %i.zz to i32
  %i.aab = add i32 %.sroa.25.5.i, %i.aaa          ; 2 uses
  store i8 %i.zy, ptr %.0.i193.i459.i, align 1, !tbaa !17
  %i.aac = getelementptr inbounds nuw i8, ptr %.0.i193.i459.i, i64 1
  %i.aad = and i32 %i.aab, 63
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = shl i64 %.sroa.0.4.i, %i.aae
  %i.aag = lshr i64 %i.aaf, %i.zc
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.aag ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 1
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !34
  %i.aak = load i8, ptr %i.aah, align 1, !tbaa !35
  %i.aal = zext i8 %i.aak to i32
  %i.aam = add i32 %i.aab, %i.aal                 ; 2 uses
  store i8 %i.aaj, ptr %i.aac, align 1, !tbaa !17
  %i.aan = getelementptr inbounds nuw i8, ptr %.0.i193.i459.i, i64 2
  %i.aao = and i32 %i.aam, 63
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = shl i64 %.sroa.0.4.i, %i.aap
  %i.aar = lshr i64 %i.aaq, %i.zc
  %i.aas = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.aar ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !34
  %i.aav = load i8, ptr %i.aas, align 1, !tbaa !35
  %i.aaw = zext i8 %i.aav to i32
  %i.aax = add i32 %i.aam, %i.aaw                 ; 2 uses
  store i8 %i.aau, ptr %i.aan, align 1, !tbaa !17
  %i.aay = getelementptr inbounds nuw i8, ptr %.0.i193.i459.i, i64 3
  %i.aaz = and i32 %i.aax, 63
  %i.aba = zext nneg i32 %i.aaz to i64
  %i.abb = shl i64 %.sroa.0.4.i, %i.aba
  %i.abc = lshr i64 %i.abb, %i.zc
  %i.abd = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.abc ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 1
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !34
  %i.abg = load i8, ptr %i.abd, align 1, !tbaa !35
  %i.abh = zext i8 %i.abg to i32
  %i.abi = add i32 %i.aax, %i.abh                 ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.0.i193.i459.i, i64 4 ; 2 uses
  store i8 %i.abf, ptr %i.aay, align 1, !tbaa !17
  %i.abk = icmp ugt i32 %i.abi, 64
  br i1 %i.abk, label %BIT_reloadDStream.exit.i185.i.i, label %bb.bp, !prof !28, !llvm.loop !4

bb.bu:                                            ; preds = %HUF_decodeStreamX1.exit219.i.i
  br i1 %i.yx, label %BIT_reloadDStream.exit.i185.i.i, label %bb.bv, !prof !43

bb.bv:                                            ; preds = %bb.bu
  %.not.i.i184.i.i = icmp ult ptr %.sroa.69136.0.i, %i.ei
  br i1 %.not.i.i184.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abl = lshr i32 %.sroa.25.0.i, 3
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = sub nsw i64 0, %i.abm
  %i.abo = getelementptr inbounds i8, ptr %.sroa.69136.0.i, i64 %i.abn ; 2 uses
  %i.abp = and i32 %.sroa.25.0.i, 7
  %.val.i114.i = load i64, ptr %i.abo, align 1, !tbaa !23
  br label %BIT_reloadDStream.exit.i185.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.abq = icmp eq ptr %.sroa.69136.0.i, %i.t
  br i1 %i.abq, label %BIT_reloadDStream.exit.i185.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.abr = lshr i32 %.sroa.25.0.i, 3              ; 2 uses
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = sub nsw i64 0, %i.abs
  %i.abu = getelementptr inbounds i8, ptr %.sroa.69136.0.i, i64 %i.abt
  %i.abv = icmp ult ptr %i.abu, %i.t
  %i.abw = ptrtoint ptr %.sroa.69136.0.i to i64
  %i.abx = ptrtoint ptr %i.t to i64
  %i.aby = sub i64 %i.abw, %i.abx
  %i.abz = trunc i64 %i.aby to i32
  %.021.i.i189.i.i = select i1 %i.abv, i32 %i.abz, i32 %i.abr ; 2 uses
  %i.aca = zext i32 %.021.i.i189.i.i to i64
  %i.acb = sub nsw i64 0, %i.aca
  %i.acc = getelementptr inbounds i8, ptr %.sroa.69136.0.i, i64 %i.acb ; 2 uses
  %i.acd = shl i32 %.021.i.i189.i.i, 3
  %i.ace = sub i32 %.sroa.25.0.i, %i.acd
  %.val9.i = load i64, ptr %i.acc, align 1, !tbaa !23
  br label %BIT_reloadDStream.exit.i185.i.i

BIT_reloadDStream.exit.i185.i.i:                  ; preds = %bb.bt, %BIT_reloadDStream.exit43.i195.i.i, %bb.br, %bb.by, %bb.bx, %bb.bw, %bb.bu, %.preheader375.i
  %.sroa.0.2.i = phi i64 [ %.val9.i, %bb.by ], [ %.sroa.0.0.i, %bb.bu ], [ %.val.i114.i, %bb.bw ], [ %.sroa.0.0.i, %bb.bx ], [ %.sroa.0.0.i, %.preheader375.i ], [ %.sroa.0.3456.i, %bb.br ], [ %.sroa.0.4.i, %bb.bt ], [ %.sroa.0.4.i, %BIT_reloadDStream.exit43.i195.i.i ] ; 3 uses
  %.sroa.25.2.i = phi i32 [ %i.ace, %bb.by ], [ %.sroa.25.0.i, %bb.bu ], [ %i.abp, %bb.bw ], [ %.sroa.25.0.i, %bb.bx ], [ %.sroa.25.0.i, %.preheader375.i ], [ %.sroa.25.4457.i, %bb.br ], [ %i.abi, %bb.bt ], [ %.sroa.25.5.i, %BIT_reloadDStream.exit43.i195.i.i ] ; 4 uses
  %.sroa.69136.2.i = phi ptr [ %i.acc, %bb.by ], [ @BIT_reloadDStream.zeroFilled, %bb.bu ], [ %i.abo, %bb.bw ], [ %i.t, %bb.bx ], [ @BIT_reloadDStream.zeroFilled, %.preheader375.i ], [ %i.t, %bb.br ], [ @BIT_reloadDStream.zeroFilled, %bb.bt ], [ %.sroa.69136.4.i, %BIT_reloadDStream.exit43.i195.i.i ]
  %.3.i187.i.i = phi ptr [ %.3153.i.i, %bb.by ], [ %.3153.i.i, %bb.bu ], [ %.3153.i.i, %bb.bw ], [ %.3153.i.i, %bb.bx ], [ %.3153.i.i, %.preheader375.i ], [ %.0.i193.i459.i, %bb.br ], [ %i.abj, %bb.bt ], [ %.0.i193.i459.i, %BIT_reloadDStream.exit43.i195.i.i ] ; 6 uses
  %i.acf = icmp ult ptr %.3.i187.i.i, %i.z
  br i1 %i.acf, label %.lr.ph476.i, label %HUF_decodeStreamX1.exit201.i.i

.lr.ph476.i:                                      ; preds = %BIT_reloadDStream.exit.i185.i.i
  %.3.i187.i495.i = ptrtoaddr ptr %.3.i187.i.i to i64 ; 2 uses
  %i.acg = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.ach = and i32 %i.acg, 63
  %i.aci = zext nneg i32 %i.ach to i64            ; 3 uses
  %7 = add i64 %i.ab, %i.c
  %8 = sub i64 %7, %.3.i187.i495.i                ; 2 uses
  %scevgep496.i = getelementptr i8, ptr %.3.i187.i.i, i64 %8
  %9 = add i64 %i.ab, %i.c
  %.neg139 = add i64 %.3.i187.i495.i, 1
  %xtraiter132 = and i64 %8, 1
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %.prol.loopexit131, label %.prol.loopexit131.unr-lcssa

.prol.loopexit131.unr-lcssa:                      ; preds = %.lr.ph476.i
  %10 = and i32 %.sroa.25.2.i, 63
  %11 = zext nneg i32 %10 to i64
  %12 = shl i64 %.sroa.0.2.i, %11
  %13 = lshr i64 %12, %i.aci
  %14 = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %13 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = load i8, ptr %14, align 1, !tbaa !35
  %18 = zext i8 %17 to i32
  %19 = add i32 %.sroa.25.2.i, %18                ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %.3.i187.i.i, i64 1
  store i8 %16, ptr %.3.i187.i.i, align 1, !tbaa !17
  br label %.prol.loopexit131

.prol.loopexit131:                                ; preds = %.prol.loopexit131.unr-lcssa, %.lr.ph476.i
  %.lcssa118.unr = phi i32 [ poison, %.lr.ph476.i ], [ %19, %.prol.loopexit131.unr-lcssa ]
  %.6.i188.i475.i.unr = phi ptr [ %.3.i187.i.i, %.lr.ph476.i ], [ %20, %.prol.loopexit131.unr-lcssa ]
  %.sroa.25.3474.i.unr = phi i32 [ %.sroa.25.2.i, %.lr.ph476.i ], [ %19, %.prol.loopexit131.unr-lcssa ]
  %21 = icmp eq i64 %9, %.neg139
  br i1 %21, label %HUF_decodeStreamX1.exit201.i.i, label %bb.bz

bb.bz:                                            ; preds = %.prol.loopexit131, %bb.bz
  %.6.i188.i475.i = phi ptr [ %i.act, %bb.bz ], [ %.6.i188.i475.i.unr, %.prol.loopexit131 ] ; 3 uses
  %.sroa.25.3474.i = phi i32 [ %i.acs, %bb.bz ], [ %.sroa.25.3474.i.unr, %.prol.loopexit131 ] ; 2 uses
  %22 = and i32 %.sroa.25.3474.i, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl i64 %.sroa.0.2.i, %23
  %25 = lshr i64 %24, %i.aci
  %26 = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %25 ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !34
  %29 = load i8, ptr %26, align 1, !tbaa !35
  %30 = zext i8 %29 to i32
  %31 = add i32 %.sroa.25.3474.i, %30             ; 2 uses
  %32 = getelementptr inbounds nuw i8, ptr %.6.i188.i475.i, i64 1
  store i8 %28, ptr %.6.i188.i475.i, align 1, !tbaa !17
  %i.acj = and i32 %31, 63
  %i.ack = zext nneg i32 %i.acj to i64
  %i.acl = shl i64 %.sroa.0.2.i, %i.ack
  %i.acm = lshr i64 %i.acl, %i.aci
  %i.acn = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.acm ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 1
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !34
  %i.acq = load i8, ptr %i.acn, align 1, !tbaa !35
  %i.acr = zext i8 %i.acq to i32
  %i.acs = add i32 %31, %i.acr                    ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.6.i188.i475.i, i64 2 ; 2 uses
  store i8 %i.acp, ptr %32, align 1, !tbaa !17
  %exitcond497.not.i.1 = icmp eq ptr %i.act, %scevgep496.i
  br i1 %exitcond497.not.i.1, label %HUF_decodeStreamX1.exit201.i.i, label %bb.bz, !llvm.loop !5

HUF_decodeStreamX1.exit201.i.i:                   ; preds = %.prol.loopexit131, %bb.bz, %BIT_reloadDStream.exit.i185.i.i
  %.sroa.25.3.lcssa.i = phi i32 [ %.sroa.25.2.i, %BIT_reloadDStream.exit.i185.i.i ], [ %.lcssa118.unr, %.prol.loopexit131 ], [ %i.acs, %bb.bz ]
  %i.acu = ptrtoint ptr %i.f to i64
  %i.acv = ptrtoint ptr %.3149.i.i to i64
  %i.acw = sub i64 %i.acu, %i.acv
  %i.acx = icmp sgt i64 %i.acw, 3
  %i.acy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !41 ; 9 uses
  %i.ada = icmp ugt i32 %i.acz, 64                ; 2 uses
  br i1 %i.acx, label %.preheader.i, label %bb.cf

.preheader.i:                                     ; preds = %HUF_decodeStreamX1.exit201.i.i
  br i1 %i.ada, label %._crit_edge.i, label %.lr.ph479.i, !prof !29

.lr.ph479.i:                                      ; preds = %.preheader.i
  %i.adb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.add = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ade = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.adf = and i32 %i.ade, 63
  %i.adg = zext nneg i32 %i.adf to i64            ; 4 uses
  %.pre.i = load ptr, ptr %i.adb, align 8, !tbaa !42
  %.pre498.i = load ptr, ptr %i.adc, align 8, !tbaa !40
  br label %bb.ca

._crit_edge.i:                                    ; preds = %bb.ce, %.preheader.i
  %i.adh = phi i32 [ %i.acz, %.preheader.i ], [ %i.afy, %bb.ce ]
  %.0.i.i.lcssa.i = phi ptr [ %.3149.i.i, %.preheader.i ], [ %i.afz, %bb.ce ]
  %i.adi = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.adi, align 8, !tbaa !42
  br label %BIT_reloadDStream.exit.i.i.i

bb.ca:                                            ; preds = %bb.ce, %.lr.ph479.i
  %i.adj = phi ptr [ %.pre.i, %.lr.ph479.i ], [ %storemerge.in.i, %bb.ce ] ; 7 uses
  %i.adk = phi i32 [ %i.acz, %.lr.ph479.i ], [ %i.afy, %bb.ce ] ; 5 uses
  %.0.i.i478.i = phi ptr [ %.3149.i.i, %.lr.ph479.i ], [ %i.afz, %bb.ce ] ; 8 uses
  %.not.i37.i.i.i = icmp ult ptr %i.adj, %.pre498.i
  br i1 %.not.i37.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.adl = lshr i32 %i.adk, 3
  %i.adm = zext nneg i32 %i.adl to i64
  %i.adn = sub nsw i64 0, %i.adm
  %i.ado = getelementptr inbounds i8, ptr %i.adj, i64 %i.adn ; 2 uses
  store ptr %i.ado, ptr %i.adb, align 8, !tbaa !42
  %i.adp = and i32 %i.adk, 7
  br label %BIT_reloadDStream.exit43.i.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.adq = load ptr, ptr %i.add, align 8, !tbaa !45 ; 3 uses
  %i.adr = icmp eq ptr %i.adj, %i.adq
  br i1 %i.adr, label %BIT_reloadDStream.exit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ads = lshr i32 %i.adk, 3                     ; 2 uses
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = sub nsw i64 0, %i.adt
  %i.adv = getelementptr inbounds i8, ptr %i.adj, i64 %i.adu
  %i.adw = icmp uge ptr %i.adv, %i.adq            ; 2 uses
  %i.adx = ptrtoint ptr %i.adj to i64
  %i.ady = ptrtoint ptr %i.adq to i64
  %i.adz = sub i64 %i.adx, %i.ady
  %i.aea = trunc i64 %i.adz to i32
  %.021.i39.i.i.i = select i1 %i.adw, i32 %i.ads, i32 %i.aea ; 2 uses
  %i.aeb = zext i32 %.021.i39.i.i.i to i64
  %i.aec = sub nsw i64 0, %i.aeb
  %i.aed = getelementptr inbounds i8, ptr %i.adj, i64 %i.aec ; 2 uses
  store ptr %i.aed, ptr %i.adb, align 8, !tbaa !42
  %i.aee = shl i32 %.021.i39.i.i.i, 3
  %i.aef = sub i32 %i.adk, %i.aee
  br label %BIT_reloadDStream.exit43.i.i.i

BIT_reloadDStream.exit43.i.i.i:                   ; preds = %bb.cd, %bb.cb
  %.val81.i = phi i32 [ %i.adp, %bb.cb ], [ %i.aef, %bb.cd ] ; 4 uses
  %storemerge.in.i = phi ptr [ %i.ado, %bb.cb ], [ %i.aed, %bb.cd ] ; 3 uses
  %.022.i38.i.i.i = phi i1 [ true, %bb.cb ], [ %i.adw, %bb.cd ]
  store i32 %.val81.i, ptr %i.acy, align 8, !tbaa !41
  %storemerge.i = load i64, ptr %storemerge.in.i, align 1, !tbaa !23 ; 5 uses
  store i64 %storemerge.i, ptr %6, align 8, !tbaa !44
  %i.aeg = icmp ult ptr %.0.i.i478.i, %i.g
  %i.aeh = and i1 %i.aeg, %.022.i38.i.i.i
  br i1 %i.aeh, label %bb.ce, label %BIT_reloadDStream.exit.i.i.i

bb.ce:                                            ; preds = %BIT_reloadDStream.exit43.i.i.i
  %i.aei = and i32 %.val81.i, 63
  %i.aej = zext nneg i32 %i.aei to i64
  %i.aek = shl i64 %storemerge.i, %i.aej
  %i.ael = lshr i64 %i.aek, %i.adg
  %i.aem = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ael ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 1
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !34
  %i.aep = load i8, ptr %i.aem, align 1, !tbaa !35
  %i.aeq = zext i8 %i.aep to i32
  %i.aer = add i32 %.val81.i, %i.aeq              ; 2 uses
  store i8 %i.aeo, ptr %.0.i.i478.i, align 1, !tbaa !17
  %i.aes = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 1
  %i.aet = and i32 %i.aer, 63
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = shl i64 %storemerge.i, %i.aeu
  %i.aew = lshr i64 %i.aev, %i.adg
  %i.aex = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.aew ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 1
  %i.aez = load i8, ptr %i.aey, align 1, !tbaa !34
  %i.afa = load i8, ptr %i.aex, align 1, !tbaa !35
  %i.afb = zext i8 %i.afa to i32
  %i.afc = add i32 %i.aer, %i.afb                 ; 2 uses
  store i8 %i.aez, ptr %i.aes, align 1, !tbaa !17
  %i.afd = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 2
  %i.afe = and i32 %i.afc, 63
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = shl i64 %storemerge.i, %i.aff
  %i.afh = lshr i64 %i.afg, %i.adg
  %i.afi = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.afh ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 1
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !34
  %i.afl = load i8, ptr %i.afi, align 1, !tbaa !35
  %i.afm = zext i8 %i.afl to i32
  %i.afn = add i32 %i.afc, %i.afm                 ; 2 uses
  store i8 %i.afk, ptr %i.afd, align 1, !tbaa !17
  %i.afo = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 3
  %i.afp = and i32 %i.afn, 63
  %i.afq = zext nneg i32 %i.afp to i64
  %i.afr = shl i64 %storemerge.i, %i.afq
  %i.afs = lshr i64 %i.afr, %i.adg
  %i.aft = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.afs ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 1
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !34
  %i.afw = load i8, ptr %i.aft, align 1, !tbaa !35
  %i.afx = zext i8 %i.afw to i32
  %i.afy = add i32 %i.afn, %i.afx                 ; 4 uses
  store i32 %i.afy, ptr %i.acy, align 8, !tbaa !41
  %i.afz = getelementptr inbounds nuw i8, ptr %.0.i.i478.i, i64 4 ; 2 uses
  store i8 %i.afv, ptr %i.afo, align 1, !tbaa !17
  %i.aga = icmp ugt i32 %i.afy, 64
  br i1 %i.aga, label %._crit_edge.i, label %bb.ca, !prof !28, !llvm.loop !4

bb.cf:                                            ; preds = %HUF_decodeStreamX1.exit201.i.i
  %i.agb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br i1 %i.ada, label %bb.cg, label %bb.ch, !prof !43

bb.cg:                                            ; preds = %bb.cf
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.agb, align 8, !tbaa !42
  br label %BIT_reloadDStream.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !42 ; 7 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !40
  %.not.i.i.i.i = icmp ult ptr %i.agc, %i.age
  br i1 %.not.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.agf = lshr i32 %i.acz, 3
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = sub nsw i64 0, %i.agg
  %i.agi = getelementptr inbounds i8, ptr %i.agc, i64 %i.agh ; 3 uses
  store ptr %i.agi, ptr %i.agb, align 8, !tbaa !42
  %i.agj = and i32 %i.acz, 7                      ; 2 uses
  store i32 %i.agj, ptr %i.acy, align 8, !tbaa !41
  %.val.i116.i = load i64, ptr %i.agi, align 1, !tbaa !23
  store i64 %.val.i116.i, ptr %6, align 8, !tbaa !44
  br label %BIT_reloadDStream.exit.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.agk = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !45 ; 3 uses
  %i.agm = icmp eq ptr %i.agc, %i.agl
  br i1 %i.agm, label %BIT_reloadDStream.exit.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.agn = lshr i32 %i.acz, 3                     ; 2 uses
  %i.ago = zext nneg i32 %i.agn to i64
  %i.agp = sub nsw i64 0, %i.ago
  %i.agq = getelementptr inbounds i8, ptr %i.agc, i64 %i.agp
  %i.agr = icmp ult ptr %i.agq, %i.agl
  %i.ags = ptrtoint ptr %i.agc to i64
  %i.agt = ptrtoint ptr %i.agl to i64
  %i.agu = sub i64 %i.ags, %i.agt
  %i.agv = trunc i64 %i.agu to i32
  %.021.i.i.i.i = select i1 %i.agr, i32 %i.agv, i32 %i.agn ; 2 uses
  %i.agw = zext i32 %.021.i.i.i.i to i64
  %i.agx = sub nsw i64 0, %i.agw
  %i.agy = getelementptr inbounds i8, ptr %i.agc, i64 %i.agx ; 3 uses
  store ptr %i.agy, ptr %i.agb, align 8, !tbaa !42
  %i.agz = shl i32 %.021.i.i.i.i, 3
  %i.aha = sub i32 %i.acz, %i.agz                 ; 2 uses
  store i32 %i.aha, ptr %i.acy, align 8, !tbaa !41
  %.val11.i = load i64, ptr %i.agy, align 1, !tbaa !23
  store i64 %.val11.i, ptr %6, align 8, !tbaa !44
  br label %BIT_reloadDStream.exit.i.i.i

BIT_reloadDStream.exit.i.i.i:                     ; preds = %BIT_reloadDStream.exit43.i.i.i, %bb.cc, %bb.ck, %bb.cj, %bb.ci, %bb.cg, %._crit_edge.i
  %i.ahb = phi i32 [ %i.adh, %._crit_edge.i ], [ %i.acz, %bb.cg ], [ %i.aha, %bb.ck ], [ %i.acz, %bb.cj ], [ %i.agj, %bb.ci ], [ %.val81.i, %BIT_reloadDStream.exit43.i.i.i ], [ %i.adk, %bb.cc ]
  %i.ahc = phi ptr [ @BIT_reloadDStream.zeroFilled, %._crit_edge.i ], [ @BIT_reloadDStream.zeroFilled, %bb.cg ], [ %i.agy, %bb.ck ], [ %i.agc, %bb.cj ], [ %i.agi, %bb.ci ], [ %storemerge.in.i, %BIT_reloadDStream.exit43.i.i.i ], [ %i.adj, %bb.cc ]
  %.3.i.i.i = phi ptr [ %.0.i.i.lcssa.i, %._crit_edge.i ], [ %.3149.i.i, %bb.cg ], [ %.3149.i.i, %bb.ck ], [ %.3149.i.i, %bb.cj ], [ %.3149.i.i, %bb.ci ], [ %.0.i.i478.i, %bb.cc ], [ %.0.i.i478.i, %BIT_reloadDStream.exit43.i.i.i ] ; 6 uses
  %i.ahd = icmp ult ptr %.3.i.i.i, %i.f
  br i1 %i.ahd, label %.lr.ph482.i, label %HUF_decodeStreamX1.exit.i.i

.lr.ph482.i:                                      ; preds = %BIT_reloadDStream.exit.i.i.i
  %.3.i.i495.i = ptrtoaddr ptr %.3.i.i.i to i64   ; 2 uses
  %i.ahe = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.ahf = and i32 %i.ahe, 63
end_hunk_1
begin_hunk_2_@HUF_decompress4X1_usingDTable_internal_fast_c_loop:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 1
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !17
  %i.bv = lshr i64 %i.as, 53
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !36 ; 2 uses
  %i.by = and i16 %i.bx, 63
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = shl i64 %i.as, %i.bz                    ; 2 uses
  %i.cb = lshr i16 %i.bx, 8
  %i.cc = trunc nuw i16 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 1
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !17
  %i.ce = lshr i64 %i.ba, 53
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !36 ; 2 uses
  %i.ch = and i16 %i.cg, 63
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = shl i64 %i.ba, %i.ci                    ; 2 uses
  %i.ck = lshr i16 %i.cg, 8
  %i.cl = trunc nuw i16 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !17
  %i.cn = lshr i64 %i.bi, 53
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !36 ; 2 uses
  %i.cq = and i16 %i.cp, 63
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = shl i64 %i.bi, %i.cr                    ; 2 uses
  %i.ct = lshr i16 %i.cp, 8
  %i.cu = trunc nuw i16 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !17
  %i.cw = lshr i64 %i.br, 53
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !36 ; 2 uses
  %i.cz = and i16 %i.cy, 63
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = shl i64 %i.br, %i.da                    ; 2 uses
  %i.dc = lshr i16 %i.cy, 8
  %i.dd = trunc nuw i16 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 2
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !17
  %i.df = lshr i64 %i.ca, 53
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !36 ; 2 uses
  %i.di = and i16 %i.dh, 63
  %i.dj = zext nneg i16 %i.di to i64
  %i.dk = shl i64 %i.ca, %i.dj                    ; 2 uses
  %i.dl = lshr i16 %i.dh, 8
  %i.dm = trunc nuw i16 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 2
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !17
  %i.do = lshr i64 %i.cj, 53
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !36 ; 2 uses
  %i.dr = and i16 %i.dq, 63
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = shl i64 %i.cj, %i.ds                    ; 2 uses
  %i.du = lshr i16 %i.dq, 8
  %i.dv = trunc nuw i16 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 2
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !17
  %i.dx = lshr i64 %i.cs, 53
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !36 ; 2 uses
  %i.ea = and i16 %i.dz, 63
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = shl i64 %i.cs, %i.eb                    ; 2 uses
  %i.ed = lshr i16 %i.dz, 8
  %i.ee = trunc nuw i16 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !17
  %i.eg = lshr i64 %i.db, 53
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !36 ; 2 uses
  %i.ej = and i16 %i.ei, 63
  %i.ek = zext nneg i16 %i.ej to i64
  %i.el = shl i64 %i.db, %i.ek                    ; 2 uses
  %i.em = lshr i16 %i.ei, 8
  %i.en = trunc nuw i16 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 3
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !17
  %i.ep = lshr i64 %i.dk, 53
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !36 ; 2 uses
  %i.es = and i16 %i.er, 63
  %i.et = zext nneg i16 %i.es to i64
  %i.eu = shl i64 %i.dk, %i.et                    ; 2 uses
  %i.ev = lshr i16 %i.er, 8
  %i.ew = trunc nuw i16 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 3
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !17
  %i.ey = lshr i64 %i.dt, 53
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !36 ; 2 uses
  %i.fb = and i16 %i.fa, 63
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = shl i64 %i.dt, %i.fc                    ; 2 uses
  %i.fe = lshr i16 %i.fa, 8
  %i.ff = trunc nuw i16 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 3
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !17
  %i.fh = lshr i64 %i.ec, 53
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !36 ; 2 uses
  %i.fk = and i16 %i.fj, 63
  %i.fl = zext nneg i16 %i.fk to i64
  %i.fm = shl i64 %i.ec, %i.fl
  %i.fn = lshr i16 %i.fj, 8
  %i.fo = trunc nuw i16 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !17
  %i.fq = lshr i64 %i.el, 53
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !36 ; 2 uses
  %i.ft = and i16 %i.fs, 63
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = shl i64 %i.el, %i.fu
  %i.fw = lshr i16 %i.fs, 8
  %i.fx = trunc nuw i16 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 4
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !17
  %i.fz = lshr i64 %i.eu, 53
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !36 ; 2 uses
  %i.gc = and i16 %i.gb, 63
  %i.gd = zext nneg i16 %i.gc to i64
  %i.ge = shl i64 %i.eu, %i.gd
  %i.gf = lshr i16 %i.gb, 8
  %i.gg = trunc nuw i16 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 4
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !17
  %i.gi = lshr i64 %i.fd, 53
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !36 ; 2 uses
  %i.gl = and i16 %i.gk, 63
  %i.gm = zext nneg i16 %i.gl to i64
  %i.gn = shl i64 %i.fd, %i.gm
  %i.go = lshr i16 %i.gk, 8
  %i.gp = trunc nuw i16 %i.go to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 4
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !17
  %i.gr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fm, i1 true) ; 2 uses
  %i.gs = and i64 %i.gr, 7
  %i.gt = lshr i64 %i.gr, 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5 ; 2 uses
  %i.gv = sub nsw i64 0, %i.gt
  %i.gw = getelementptr inbounds i8, ptr %.sroa.0.1296, i64 %i.gv ; 3 uses
  %.val207 = load i64, ptr %i.gw, align 1, !tbaa !23
  %i.gx = or i64 %.val207, 1
  %i.gy = shl i64 %i.gx, %i.gs                    ; 2 uses
  %i.gz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fv, i1 true) ; 2 uses
  %i.ha = and i64 %i.gz, 7
  %i.hb = lshr i64 %i.gz, 3
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.11.1, i64 5 ; 2 uses
  %i.hd = sub nsw i64 0, %i.hb
  %i.he = getelementptr inbounds i8, ptr %.sroa.8.1, i64 %i.hd ; 3 uses
  %.val206 = load i64, ptr %i.he, align 1, !tbaa !23
  %i.hf = or i64 %.val206, 1
  %i.hg = shl i64 %i.hf, %i.ha                    ; 2 uses
  %i.hh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ge, i1 true) ; 2 uses
  %i.hi = and i64 %i.hh, 7
  %i.hj = lshr i64 %i.hh, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 5 ; 2 uses
  %i.hl = sub nsw i64 0, %i.hj
  %i.hm = getelementptr inbounds i8, ptr %.sroa.12.1, i64 %i.hl ; 3 uses
  %.val205 = load i64, ptr %i.hm, align 1, !tbaa !23
  %i.hn = or i64 %.val205, 1
  %i.ho = shl i64 %i.hn, %i.hi                    ; 2 uses
  %i.hp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gn, i1 true) ; 2 uses
  %i.hq = and i64 %i.hp, 7
  %i.hr = lshr i64 %i.hp, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.25.1, i64 5 ; 3 uses
  %i.ht = sub nsw i64 0, %i.hr
  %i.hu = getelementptr inbounds i8, ptr %.sroa.16.1, i64 %i.ht ; 3 uses
  %.val = load i64, ptr %i.hu, align 1, !tbaa !23
  %i.hv = or i64 %.val, 1
  %i.hw = shl i64 %i.hv, %i.hq                    ; 2 uses
  %i.hx = icmp ult ptr %i.hs, %i.s
  br i1 %i.hx, label %.preheader, label %.loopexit, !llvm.loop !138

.loopexit229:                                     ; preds = %bb.b
  store i64 %.sroa.0142.0, ptr %i.g, align 8
  store i64 %.sroa.23.0, ptr %.sroa.23.0..sroa_idx, align 8
  store i64 %.sroa.42.0, ptr %.sroa.42.0..sroa_idx, align 8
  store i64 %.sroa.61.0, ptr %.sroa.61.0..sroa_idx, align 8
  store ptr %.sroa.0.0295, ptr %0, align 8
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  store ptr %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  store ptr %.sroa.0.0, ptr %i.h, align 8
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  store ptr %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8
  store ptr %.sroa.25.0, ptr %.sroa.25.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 1, 0) i64 @HUF_decompress4X1_usingDTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %5 = alloca %struct.BIT_DStream_t, align 8      ; 25 uses
  %i.b = icmp ult i64 %3, 10
  %i.c = icmp ult i64 %1, 6
  %or.cond.i = or i1 %i.c, %i.b
  br i1 %or.cond.i, label %HUF_decompress4X1_usingDTable_internal_body.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %.val86 = load i16, ptr %2, align 1, !tbaa !36  ; 5 uses
  %i.g = zext i16 %.val86 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val85 = load i16, ptr %i.h, align 1, !tbaa !36 ; 5 uses
  %i.i = zext i16 %.val85 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val84 = load i16, ptr %i.j, align 1, !tbaa !36 ; 5 uses
  %i.k = zext i16 %.val84 to i64                  ; 2 uses
  %i.l = add nuw nsw i64 %i.g, 6
  %i.m = add nuw nsw i64 %i.l, %i.i
  %i.n = add nuw nsw i64 %i.m, %i.k               ; 2 uses
  %i.o = sub nuw i64 %3, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 12 uses
  %i.q = getelementptr i8, ptr %i.p, i64 %i.g     ; 22 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.i     ; 22 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.k     ; 4 uses
  %i.t = add i64 %1, 3
  %i.u = lshr i64 %i.t, 2                         ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u ; 7 uses
  %.val = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift.i = lshr i32 %.val, 16 ; 9 uses
  %i.y = icmp ugt i64 %i.n, %3
  %i.z = mul nuw i64 %i.u, 3                      ; 3 uses
  %i.aa = icmp samesign ugt i64 %i.z, %1
  %or.cond181.i = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond181.i, label %BIT_initDStream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i16 %.val86, 0
  br i1 %i.ab, label %BIT_initDStream.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  %i.ad = icmp ugt i16 %.val86, 7
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.q, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17  ; 2 uses
  %.not51.i = icmp eq i8 %i.af, 0
  br i1 %.not51.i, label %BIT_initDStream.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.ag = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %.val.i = load i64, ptr %i.ag, align 1, !tbaa !23
  %i.ah = zext i8 %i.af to i32
  %i.ai = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ah, i1 true)
  %i.aj = xor i32 %i.ai, 31
  %i.ak = sub nuw nsw i32 8, %i.aj
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.al = load i8, ptr %i.p, align 1, !tbaa !17
  %i.am = zext i8 %i.al to i64                    ; 7 uses
  switch i16 %.val86, label %bb.m [
    i16 7, label %bb.g
    i16 6, label %bb.h
    i16 5, label %bb.i
    i16 4, label %bb.j
    i16 3, label %bb.k
    i16 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 48
  %i.ar = or disjoint i64 %i.aq, %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi i64 [ %i.ar, %bb.g ], [ %i.am, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 40
  %i.ax = add nuw nsw i64 %i.aw, %i.as
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ay = phi i64 [ %i.ax, %bb.h ], [ %i.am, %bb.f ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !17
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 32
  %i.bd = add nuw nsw i64 %i.bc, %i.ay
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.be = phi i64 [ %i.bd, %bb.i ], [ %i.am, %bb.f ]
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 24
  %i.bj = add nuw nsw i64 %i.bi, %i.be
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.bk = phi i64 [ %i.bj, %bb.j ], [ %i.am, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 16
  %i.bp = add nuw nsw i64 %i.bo, %i.bk
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.bq = phi i64 [ %i.bp, %bb.k ], [ %i.am, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 8
  %i.bv = add nuw nsw i64 %i.bu, %i.bq
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0247.6 = phi i64 [ %i.am, %bb.f ], [ %i.bv, %bb.l ]
  %i.bw = getelementptr i8, ptr %i.q, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !17  ; 2 uses
  %.not.i87 = icmp eq i8 %i.bx, 0
  br i1 %.not.i87, label %BIT_initDStream.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = zext i8 %i.bx to i32
  %i.bz = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.by, i1 true)
  %i.ca = shl nuw nsw i16 %.val86, 3
  %i.cb = zext nneg i16 %i.ca to i32
  %reass.sub = sub nsw i32 %i.bz, %i.cb
  %i.cc = add nsw i32 %reass.sub, 41
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.sroa.0247.7 = phi i64 [ %.sroa.0247.6, %bb.n ], [ %.val.i, %.thread.i ] ; 2 uses
  %.sroa.25248.7 = phi i32 [ %i.cc, %bb.n ], [ %i.ak, %.thread.i ] ; 2 uses
  %.sroa.69266.6 = phi ptr [ %i.p, %bb.n ], [ %i.ag, %.thread.i ] ; 2 uses
  %i.cd = icmp eq i16 %.val85, 0
  br i1 %i.cd, label %BIT_initDStream.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.cf = icmp ugt i16 %.val85, 7
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr i8, ptr %i.r, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !17  ; 2 uses
  %.not51.i91 = icmp eq i8 %i.ch, 0
  br i1 %.not51.i91, label %BIT_initDStream.exit.thread, label %.thread.i92

.thread.i92:                                      ; preds = %bb.q
  %i.ci = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %.val.i90 = load i64, ptr %i.ci, align 1, !tbaa !23
  %i.cj = zext i8 %i.ch to i32
  %i.ck = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.cj, i1 true)
  %i.cl = xor i32 %i.ck, 31
  %i.cm = sub nuw nsw i32 8, %i.cl
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.cn = load i8, ptr %i.q, align 1, !tbaa !17
  %i.co = zext i8 %i.cn to i64                    ; 7 uses
  switch i16 %.val85, label %bb.y [
    i16 7, label %bb.s
    i16 6, label %bb.t
    i16 5, label %bb.u
    i16 4, label %bb.v
    i16 3, label %bb.w
    i16 2, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !17
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 48
  %i.ct = or disjoint i64 %i.cs, %i.co
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cu = phi i64 [ %i.ct, %bb.s ], [ %i.co, %bb.r ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !17
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 40
  %i.cz = add nuw nsw i64 %i.cy, %i.cu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.da = phi i64 [ %i.cz, %bb.t ], [ %i.co, %bb.r ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !17
  %i.dd = zext i8 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 32
  %i.df = add nuw nsw i64 %i.de, %i.da
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.dg = phi i64 [ %i.df, %bb.u ], [ %i.co, %bb.r ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !17
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 24
  %i.dl = add nuw nsw i64 %i.dk, %i.dg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %i.dm = phi i64 [ %i.dl, %bb.v ], [ %i.co, %bb.r ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !17
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 16
  %i.dr = add nuw nsw i64 %i.dq, %i.dm
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %i.ds = phi i64 [ %i.dr, %bb.w ], [ %i.co, %bb.r ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !17
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 8
  %i.dx = add nuw nsw i64 %i.dw, %i.ds
  br label %bb.y
end_hunk_2
begin_hunk_3_@HUF_decompress4X1_usingDTable_internal_bmi2:bb.a
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !34
  %i.xp = load i8, ptr %i.xm, align 1, !tbaa !35
  %i.xq = zext i8 %i.xp to i32
  %i.xr = add i32 %.sroa.25182.2, %i.xq           ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.3.i205.i, i64 1
  store i8 %i.xo, ptr %.3.i205.i, align 1, !tbaa !17
  br label %.prol.loopexit582

.prol.loopexit582:                                ; preds = %.prol.loopexit582.unr-lcssa, %.lr.ph454
  %.6.i206.i453.unr = phi ptr [ %.3.i205.i, %.lr.ph454 ], [ %i.xs, %.prol.loopexit582.unr-lcssa ]
  %.sroa.25182.3452.unr = phi i32 [ %.sroa.25182.2, %.lr.ph454 ], [ %i.xr, %.prol.loopexit582.unr-lcssa ]
  %.lcssa575.unr = phi i32 [ poison, %.lr.ph454 ], [ %i.xr, %.prol.loopexit582.unr-lcssa ]
  %i.xt = icmp eq i64 %i.xg, %.neg590
  br i1 %i.xt, label %HUF_decodeStreamX1.exit219.i, label %.lr.ph454.new

.lr.ph454.new:                                    ; preds = %.prol.loopexit582, %.lr.ph454.new
  %.6.i206.i453 = phi ptr [ %i.yp, %.lr.ph454.new ], [ %.6.i206.i453.unr, %.prol.loopexit582 ] ; 3 uses
  %.sroa.25182.3452 = phi i32 [ %i.yo, %.lr.ph454.new ], [ %.sroa.25182.3452.unr, %.prol.loopexit582 ] ; 2 uses
  %i.xu = and i32 %.sroa.25182.3452, 63
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = shl i64 %.sroa.0181.2, %i.xv
  %i.xx = lshr i64 %i.xw, %i.xe
  %i.xy = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.xx ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 1
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !34
  %i.yb = load i8, ptr %i.xy, align 1, !tbaa !35
  %i.yc = zext i8 %i.yb to i32
  %i.yd = add i32 %.sroa.25182.3452, %i.yc        ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.6.i206.i453, i64 1
  store i8 %i.ya, ptr %.6.i206.i453, align 1, !tbaa !17
  %i.yf = and i32 %i.yd, 63
  %i.yg = zext nneg i32 %i.yf to i64
  %i.yh = shl i64 %.sroa.0181.2, %i.yg
  %i.yi = lshr i64 %i.yh, %i.xe
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.yi ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 1
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !34
  %i.ym = load i8, ptr %i.yj, align 1, !tbaa !35
  %i.yn = zext i8 %i.ym to i32
  %i.yo = add i32 %i.yd, %i.yn                    ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.6.i206.i453, i64 2 ; 2 uses
  store i8 %i.yl, ptr %i.ye, align 1, !tbaa !17
  %i.yq = icmp ult ptr %i.yp, %i.w
  br i1 %i.yq, label %.lr.ph454.new, label %HUF_decodeStreamX1.exit219.i, !llvm.loop !5

HUF_decodeStreamX1.exit219.i:                     ; preds = %.prol.loopexit582, %.lr.ph454.new, %BIT_reloadDStream.exit.i203.i
  %.sroa.25182.3.lcssa = phi i32 [ %.sroa.25182.2, %BIT_reloadDStream.exit.i203.i ], [ %.lcssa575.unr, %.prol.loopexit582 ], [ %i.yo, %.lr.ph454.new ]
  %i.yr = ptrtoint ptr %i.x to i64
  %i.ys = ptrtoint ptr %.3153.i to i64
  %i.yt = sub i64 %i.yr, %i.ys
  %i.yu = icmp sgt i64 %i.yt, 3
  %i.yv = icmp ugt i32 %.sroa.25.0, 64            ; 2 uses
  br i1 %i.yu, label %.preheader375, label %bb.bs

.preheader375:                                    ; preds = %HUF_decodeStreamX1.exit219.i
  br i1 %i.yv, label %BIT_reloadDStream.exit.i185.i, label %.lr.ph460, !prof !29

.lr.ph460:                                        ; preds = %.preheader375
  %i.yw = ptrtoint ptr %i.r to i64
  %i.yx = getelementptr inbounds i8, ptr %i.x, i64 -3
  %i.yy = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.yz = and i32 %i.yy, 63
  %i.za = zext nneg i32 %i.yz to i64              ; 4 uses
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph460, %bb.br
  %.0.i193.i459 = phi ptr [ %.3153.i, %.lr.ph460 ], [ %i.abh, %bb.br ] ; 8 uses
  %.sroa.69136.3458 = phi ptr [ %.sroa.69136.0, %.lr.ph460 ], [ %.sroa.69136.4, %bb.br ] ; 5 uses
  %.sroa.25.4457 = phi i32 [ %.sroa.25.0, %.lr.ph460 ], [ %i.abg, %bb.br ] ; 5 uses
  %.sroa.0.3456 = phi i64 [ %.sroa.0.0, %.lr.ph460 ], [ %.sroa.0.4, %bb.br ]
  %.not.i37.i194.i = icmp ult ptr %.sroa.69136.3458, %i.eg
  br i1 %.not.i37.i194.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.zb = lshr i32 %.sroa.25.4457, 3
  %i.zc = and i32 %.sroa.25.4457, 7
  br label %BIT_reloadDStream.exit43.i195.i

bb.bp:                                            ; preds = %bb.bn
  %i.zd = icmp eq ptr %.sroa.69136.3458, %i.r
  br i1 %i.zd, label %BIT_reloadDStream.exit.i185.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ze = lshr i32 %.sroa.25.4457, 3              ; 2 uses
  %i.zf = zext nneg i32 %i.ze to i64
  %i.zg = sub nsw i64 0, %i.zf
  %i.zh = getelementptr inbounds i8, ptr %.sroa.69136.3458, i64 %i.zg
  %i.zi = icmp uge ptr %i.zh, %i.r                ; 2 uses
  %i.zj = ptrtoint ptr %.sroa.69136.3458 to i64
  %i.zk = sub i64 %i.zj, %i.yw
  %i.zl = trunc i64 %i.zk to i32
  %.021.i39.i197.i = select i1 %i.zi, i32 %i.ze, i32 %i.zl ; 2 uses
  %i.zm = shl i32 %.021.i39.i197.i, 3
  %i.zn = sub i32 %.sroa.25.4457, %i.zm
  br label %BIT_reloadDStream.exit43.i195.i

BIT_reloadDStream.exit43.i195.i:                  ; preds = %bb.bq, %bb.bo
  %.sroa.25.5 = phi i32 [ %i.zc, %bb.bo ], [ %i.zn, %bb.bq ] ; 3 uses
  %.pn353.in = phi i32 [ %i.zb, %bb.bo ], [ %.021.i39.i197.i, %bb.bq ]
  %.022.i38.i196.i = phi i1 [ true, %bb.bo ], [ %i.zi, %bb.bq ]
  %.pn353 = zext i32 %.pn353.in to i64
  %.pn352 = sub nsw i64 0, %.pn353
  %.sroa.69136.4 = getelementptr inbounds i8, ptr %.sroa.69136.3458, i64 %.pn352 ; 3 uses
  %.sroa.0.4 = load i64, ptr %.sroa.69136.4, align 1, !tbaa !23 ; 7 uses
  %i.zo = icmp ult ptr %.0.i193.i459, %i.yx
  %i.zp = and i1 %i.zo, %.022.i38.i196.i
  br i1 %i.zp, label %bb.br, label %BIT_reloadDStream.exit.i185.i

bb.br:                                            ; preds = %BIT_reloadDStream.exit43.i195.i
  %i.zq = and i32 %.sroa.25.5, 63
  %i.zr = zext nneg i32 %i.zq to i64
  %i.zs = shl i64 %.sroa.0.4, %i.zr
  %i.zt = lshr i64 %i.zs, %i.za
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.zt ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 1
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !34
  %i.zx = load i8, ptr %i.zu, align 1, !tbaa !35
  %i.zy = zext i8 %i.zx to i32
  %i.zz = add i32 %.sroa.25.5, %i.zy              ; 2 uses
  store i8 %i.zw, ptr %.0.i193.i459, align 1, !tbaa !17
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0.i193.i459, i64 1
  %i.aab = and i32 %i.zz, 63
  %i.aac = zext nneg i32 %i.aab to i64
  %i.aad = shl i64 %.sroa.0.4, %i.aac
  %i.aae = lshr i64 %i.aad, %i.za
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aae ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 1
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !34
  %i.aai = load i8, ptr %i.aaf, align 1, !tbaa !35
  %i.aaj = zext i8 %i.aai to i32
  %i.aak = add i32 %i.zz, %i.aaj                  ; 2 uses
  store i8 %i.aah, ptr %i.aaa, align 1, !tbaa !17
  %i.aal = getelementptr inbounds nuw i8, ptr %.0.i193.i459, i64 2
  %i.aam = and i32 %i.aak, 63
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = shl i64 %.sroa.0.4, %i.aan
  %i.aap = lshr i64 %i.aao, %i.za
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aap ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 1
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !34
  %i.aat = load i8, ptr %i.aaq, align 1, !tbaa !35
  %i.aau = zext i8 %i.aat to i32
  %i.aav = add i32 %i.aak, %i.aau                 ; 2 uses
  store i8 %i.aas, ptr %i.aal, align 1, !tbaa !17
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0.i193.i459, i64 3
  %i.aax = and i32 %i.aav, 63
  %i.aay = zext nneg i32 %i.aax to i64
  %i.aaz = shl i64 %.sroa.0.4, %i.aay
  %i.aba = lshr i64 %i.aaz, %i.za
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aba ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !34
  %i.abe = load i8, ptr %i.abb, align 1, !tbaa !35
  %i.abf = zext i8 %i.abe to i32
  %i.abg = add i32 %i.aav, %i.abf                 ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.0.i193.i459, i64 4 ; 2 uses
  store i8 %i.abd, ptr %i.aaw, align 1, !tbaa !17
  %i.abi = icmp ugt i32 %i.abg, 64
  br i1 %i.abi, label %BIT_reloadDStream.exit.i185.i, label %bb.bn, !prof !28, !llvm.loop !4

bb.bs:                                            ; preds = %HUF_decodeStreamX1.exit219.i
  br i1 %i.yv, label %BIT_reloadDStream.exit.i185.i, label %bb.bt, !prof !43

bb.bt:                                            ; preds = %bb.bs
  %.not.i.i184.i = icmp ult ptr %.sroa.69136.0, %i.eg
  br i1 %.not.i.i184.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.abj = lshr i32 %.sroa.25.0, 3
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = sub nsw i64 0, %i.abk
  %i.abm = getelementptr inbounds i8, ptr %.sroa.69136.0, i64 %i.abl ; 2 uses
  %i.abn = and i32 %.sroa.25.0, 7
  %.val.i114 = load i64, ptr %i.abm, align 1, !tbaa !23
  br label %BIT_reloadDStream.exit.i185.i

bb.bv:                                            ; preds = %bb.bt
  %i.abo = icmp eq ptr %.sroa.69136.0, %i.r
  br i1 %i.abo, label %BIT_reloadDStream.exit.i185.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abp = lshr i32 %.sroa.25.0, 3                ; 2 uses
  %i.abq = zext nneg i32 %i.abp to i64
  %i.abr = sub nsw i64 0, %i.abq
  %i.abs = getelementptr inbounds i8, ptr %.sroa.69136.0, i64 %i.abr
  %i.abt = icmp ult ptr %i.abs, %i.r
  %i.abu = ptrtoint ptr %.sroa.69136.0 to i64
  %i.abv = ptrtoint ptr %i.r to i64
  %i.abw = sub i64 %i.abu, %i.abv
  %i.abx = trunc i64 %i.abw to i32
  %.021.i.i189.i = select i1 %i.abt, i32 %i.abx, i32 %i.abp ; 2 uses
  %i.aby = zext i32 %.021.i.i189.i to i64
  %i.abz = sub nsw i64 0, %i.aby
  %i.aca = getelementptr inbounds i8, ptr %.sroa.69136.0, i64 %i.abz ; 2 uses
  %i.acb = shl i32 %.021.i.i189.i, 3
  %i.acc = sub i32 %.sroa.25.0, %i.acb
  %.val9 = load i64, ptr %i.aca, align 1, !tbaa !23
  br label %BIT_reloadDStream.exit.i185.i

BIT_reloadDStream.exit.i185.i:                    ; preds = %BIT_reloadDStream.exit43.i195.i, %bb.br, %bb.bp, %.preheader375, %bb.bv, %bb.bu, %bb.bw, %bb.bs
  %.sroa.0.2 = phi i64 [ %.val9, %bb.bw ], [ %.sroa.0.0, %bb.bs ], [ %.val.i114, %bb.bu ], [ %.sroa.0.0, %bb.bv ], [ %.sroa.0.0, %.preheader375 ], [ %.sroa.0.4, %BIT_reloadDStream.exit43.i195.i ], [ %.sroa.0.4, %bb.br ], [ %.sroa.0.3456, %bb.bp ] ; 3 uses
  %.sroa.25.2 = phi i32 [ %i.acc, %bb.bw ], [ %.sroa.25.0, %bb.bs ], [ %i.abn, %bb.bu ], [ %.sroa.25.0, %bb.bv ], [ %.sroa.25.0, %.preheader375 ], [ %.sroa.25.5, %BIT_reloadDStream.exit43.i195.i ], [ %i.abg, %bb.br ], [ %.sroa.25.4457, %bb.bp ] ; 4 uses
  %.sroa.69136.2 = phi ptr [ %i.aca, %bb.bw ], [ @BIT_reloadDStream.zeroFilled, %bb.bs ], [ %i.abm, %bb.bu ], [ %i.r, %bb.bv ], [ @BIT_reloadDStream.zeroFilled, %.preheader375 ], [ %.sroa.69136.4, %BIT_reloadDStream.exit43.i195.i ], [ @BIT_reloadDStream.zeroFilled, %bb.br ], [ %i.r, %bb.bp ]
  %.3.i187.i = phi ptr [ %.3153.i, %bb.bw ], [ %.3153.i, %bb.bs ], [ %.3153.i, %bb.bu ], [ %.3153.i, %bb.bv ], [ %.3153.i, %.preheader375 ], [ %.0.i193.i459, %BIT_reloadDStream.exit43.i195.i ], [ %i.abh, %bb.br ], [ %.0.i193.i459, %bb.bp ] ; 6 uses
  %i.acd = icmp ult ptr %.3.i187.i, %i.x
  br i1 %i.acd, label %.lr.ph476, label %HUF_decodeStreamX1.exit201.i

.lr.ph476:                                        ; preds = %BIT_reloadDStream.exit.i185.i
  %.3.i187.i495 = ptrtoaddr ptr %.3.i187.i to i64 ; 2 uses
  %i.ace = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.acf = and i32 %i.ace, 63
  %i.acg = zext nneg i32 %i.acf to i64            ; 3 uses
  %6 = add i64 %i.z, %i.a
  %7 = sub i64 %6, %.3.i187.i495                  ; 2 uses
  %scevgep496 = getelementptr i8, ptr %.3.i187.i, i64 %7
  %8 = add i64 %i.z, %i.a
  %.neg599 = add i64 %.3.i187.i495, 1
  %xtraiter592 = and i64 %7, 1
  %lcmp.mod593.not = icmp eq i64 %xtraiter592, 0
  br i1 %lcmp.mod593.not, label %.prol.loopexit591, label %.prol.loopexit591.unr-lcssa

.prol.loopexit591.unr-lcssa:                      ; preds = %.lr.ph476
  %9 = and i32 %.sroa.25.2, 63
  %10 = zext nneg i32 %9 to i64
  %11 = shl i64 %.sroa.0.2, %10
  %12 = lshr i64 %11, %i.acg
  %13 = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %12 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = load i8, ptr %13, align 1, !tbaa !35
  %17 = zext i8 %16 to i32
  %18 = add i32 %.sroa.25.2, %17                  ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %.3.i187.i, i64 1
  store i8 %15, ptr %.3.i187.i, align 1, !tbaa !17
  br label %.prol.loopexit591

.prol.loopexit591:                                ; preds = %.prol.loopexit591.unr-lcssa, %.lr.ph476
  %.lcssa578.unr = phi i32 [ poison, %.lr.ph476 ], [ %18, %.prol.loopexit591.unr-lcssa ]
  %.6.i188.i475.unr = phi ptr [ %.3.i187.i, %.lr.ph476 ], [ %19, %.prol.loopexit591.unr-lcssa ]
  %.sroa.25.3474.unr = phi i32 [ %.sroa.25.2, %.lr.ph476 ], [ %18, %.prol.loopexit591.unr-lcssa ]
  %20 = icmp eq i64 %8, %.neg599
  br i1 %20, label %HUF_decodeStreamX1.exit201.i, label %bb.bx

bb.bx:                                            ; preds = %.prol.loopexit591, %bb.bx
  %.6.i188.i475 = phi ptr [ %i.acr, %bb.bx ], [ %.6.i188.i475.unr, %.prol.loopexit591 ] ; 3 uses
  %.sroa.25.3474 = phi i32 [ %i.acq, %bb.bx ], [ %.sroa.25.3474.unr, %.prol.loopexit591 ] ; 2 uses
  %21 = and i32 %.sroa.25.3474, 63
  %22 = zext nneg i32 %21 to i64
  %23 = shl i64 %.sroa.0.2, %22
  %24 = lshr i64 %23, %i.acg
  %25 = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %24 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = load i8, ptr %25, align 1, !tbaa !35
  %29 = zext i8 %28 to i32
  %30 = add i32 %.sroa.25.3474, %29               ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %.6.i188.i475, i64 1
  store i8 %27, ptr %.6.i188.i475, align 1, !tbaa !17
  %i.ach = and i32 %30, 63
  %i.aci = zext nneg i32 %i.ach to i64
  %i.acj = shl i64 %.sroa.0.2, %i.aci
  %i.ack = lshr i64 %i.acj, %i.acg
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ack ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 1
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !34
  %i.aco = load i8, ptr %i.acl, align 1, !tbaa !35
  %i.acp = zext i8 %i.aco to i32
  %i.acq = add i32 %30, %i.acp                    ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.6.i188.i475, i64 2 ; 2 uses
  store i8 %i.acn, ptr %31, align 1, !tbaa !17
  %exitcond497.not.1 = icmp eq ptr %i.acr, %scevgep496
  br i1 %exitcond497.not.1, label %HUF_decodeStreamX1.exit201.i, label %bb.bx, !llvm.loop !5

HUF_decodeStreamX1.exit201.i:                     ; preds = %.prol.loopexit591, %bb.bx, %BIT_reloadDStream.exit.i185.i
  %.sroa.25.3.lcssa = phi i32 [ %.sroa.25.2, %BIT_reloadDStream.exit.i185.i ], [ %.lcssa578.unr, %.prol.loopexit591 ], [ %i.acq, %bb.bx ]
  %i.acs = ptrtoint ptr %i.d to i64
  %i.act = ptrtoint ptr %.3149.i to i64
  %i.acu = sub i64 %i.acs, %i.act
  %i.acv = icmp sgt i64 %i.acu, 3
  %i.acw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.acx = load i32, ptr %i.acw, align 8, !tbaa !41 ; 9 uses
  %i.acy = icmp ugt i32 %i.acx, 64                ; 2 uses
  br i1 %i.acv, label %.preheader, label %bb.cd

.preheader:                                       ; preds = %HUF_decodeStreamX1.exit201.i
  br i1 %i.acy, label %._crit_edge, label %.lr.ph479, !prof !29

.lr.ph479:                                        ; preds = %.preheader
  %i.acz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.adb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.adc = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.add = and i32 %i.adc, 63
  %i.ade = zext nneg i32 %i.add to i64            ; 4 uses
  %.pre = load ptr, ptr %i.acz, align 8, !tbaa !42
  %.pre498 = load ptr, ptr %i.ada, align 8, !tbaa !40
  br label %bb.by

._crit_edge:                                      ; preds = %bb.cc, %.preheader
  %i.adf = phi i32 [ %i.acx, %.preheader ], [ %i.afw, %bb.cc ]
  %.0.i.i.lcssa = phi ptr [ %.3149.i, %.preheader ], [ %i.afx, %bb.cc ]
  %i.adg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.adg, align 8, !tbaa !42
  br label %BIT_reloadDStream.exit.i.i

bb.by:                                            ; preds = %.lr.ph479, %bb.cc
  %i.adh = phi ptr [ %.pre, %.lr.ph479 ], [ %storemerge.in, %bb.cc ] ; 7 uses
  %i.adi = phi i32 [ %i.acx, %.lr.ph479 ], [ %i.afw, %bb.cc ] ; 5 uses
  %.0.i.i478 = phi ptr [ %.3149.i, %.lr.ph479 ], [ %i.afx, %bb.cc ] ; 8 uses
  %.not.i37.i.i = icmp ult ptr %i.adh, %.pre498
  br i1 %.not.i37.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.adj = lshr i32 %i.adi, 3
  %i.adk = zext nneg i32 %i.adj to i64
  %i.adl = sub nsw i64 0, %i.adk
  %i.adm = getelementptr inbounds i8, ptr %i.adh, i64 %i.adl ; 2 uses
  store ptr %i.adm, ptr %i.acz, align 8, !tbaa !42
  %i.adn = and i32 %i.adi, 7
  br label %BIT_reloadDStream.exit43.i.i

bb.ca:                                            ; preds = %bb.by
  %i.ado = load ptr, ptr %i.adb, align 8, !tbaa !45 ; 3 uses
  %i.adp = icmp eq ptr %i.adh, %i.ado
  br i1 %i.adp, label %BIT_reloadDStream.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.adq = lshr i32 %i.adi, 3                     ; 2 uses
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = sub nsw i64 0, %i.adr
  %i.adt = getelementptr inbounds i8, ptr %i.adh, i64 %i.ads
  %i.adu = icmp uge ptr %i.adt, %i.ado            ; 2 uses
  %i.adv = ptrtoint ptr %i.adh to i64
  %i.adw = ptrtoint ptr %i.ado to i64
  %i.adx = sub i64 %i.adv, %i.adw
  %i.ady = trunc i64 %i.adx to i32
  %.021.i39.i.i = select i1 %i.adu, i32 %i.adq, i32 %i.ady ; 2 uses
  %i.adz = zext i32 %.021.i39.i.i to i64
  %i.aea = sub nsw i64 0, %i.adz
  %i.aeb = getelementptr inbounds i8, ptr %i.adh, i64 %i.aea ; 2 uses
  store ptr %i.aeb, ptr %i.acz, align 8, !tbaa !42
  %i.aec = shl i32 %.021.i39.i.i, 3
  %i.aed = sub i32 %i.adi, %i.aec
  br label %BIT_reloadDStream.exit43.i.i

BIT_reloadDStream.exit43.i.i:                     ; preds = %bb.cb, %bb.bz
  %.val81 = phi i32 [ %i.adn, %bb.bz ], [ %i.aed, %bb.cb ] ; 4 uses
  %storemerge.in = phi ptr [ %i.adm, %bb.bz ], [ %i.aeb, %bb.cb ] ; 3 uses
  %.022.i38.i.i = phi i1 [ true, %bb.bz ], [ %i.adu, %bb.cb ]
  store i32 %.val81, ptr %i.acw, align 8, !tbaa !41
  %storemerge = load i64, ptr %storemerge.in, align 1, !tbaa !23 ; 5 uses
  store i64 %storemerge, ptr %5, align 8, !tbaa !44
  %i.aee = icmp ult ptr %.0.i.i478, %i.e
  %i.aef = and i1 %i.aee, %.022.i38.i.i
  br i1 %i.aef, label %bb.cc, label %BIT_reloadDStream.exit.i.i

bb.cc:                                            ; preds = %BIT_reloadDStream.exit43.i.i
  %i.aeg = and i32 %.val81, 63
  %i.aeh = zext nneg i32 %i.aeg to i64
  %i.aei = shl i64 %storemerge, %i.aeh
  %i.aej = lshr i64 %i.aei, %i.ade
  %i.aek = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aej ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 1
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !34
  %i.aen = load i8, ptr %i.aek, align 1, !tbaa !35
  %i.aeo = zext i8 %i.aen to i32
  %i.aep = add i32 %.val81, %i.aeo                ; 2 uses
  store i8 %i.aem, ptr %.0.i.i478, align 1, !tbaa !17
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0.i.i478, i64 1
  %i.aer = and i32 %i.aep, 63
  %i.aes = zext nneg i32 %i.aer to i64
  %i.aet = shl i64 %storemerge, %i.aes
  %i.aeu = lshr i64 %i.aet, %i.ade
  %i.aev = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aeu ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 1
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !34
  %i.aey = load i8, ptr %i.aev, align 1, !tbaa !35
  %i.aez = zext i8 %i.aey to i32
  %i.afa = add i32 %i.aep, %i.aez                 ; 2 uses
  store i8 %i.aex, ptr %i.aeq, align 1, !tbaa !17
  %i.afb = getelementptr inbounds nuw i8, ptr %.0.i.i478, i64 2
  %i.afc = and i32 %i.afa, 63
  %i.afd = zext nneg i32 %i.afc to i64
  %i.afe = shl i64 %storemerge, %i.afd
  %i.aff = lshr i64 %i.afe, %i.ade
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aff ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 1
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !34
  %i.afj = load i8, ptr %i.afg, align 1, !tbaa !35
  %i.afk = zext i8 %i.afj to i32
  %i.afl = add i32 %i.afa, %i.afk                 ; 2 uses
  store i8 %i.afi, ptr %i.afb, align 1, !tbaa !17
  %i.afm = getelementptr inbounds nuw i8, ptr %.0.i.i478, i64 3
  %i.afn = and i32 %i.afl, 63
  %i.afo = zext nneg i32 %i.afn to i64
  %i.afp = shl i64 %storemerge, %i.afo
  %i.afq = lshr i64 %i.afp, %i.ade
  %i.afr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.afq ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 1
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !34
  %i.afu = load i8, ptr %i.afr, align 1, !tbaa !35
  %i.afv = zext i8 %i.afu to i32
  %i.afw = add i32 %i.afl, %i.afv                 ; 4 uses
  store i32 %i.afw, ptr %i.acw, align 8, !tbaa !41
  %i.afx = getelementptr inbounds nuw i8, ptr %.0.i.i478, i64 4 ; 2 uses
  store i8 %i.aft, ptr %i.afm, align 1, !tbaa !17
  %i.afy = icmp ugt i32 %i.afw, 64
  br i1 %i.afy, label %._crit_edge, label %bb.by, !prof !28, !llvm.loop !4

bb.cd:                                            ; preds = %HUF_decodeStreamX1.exit201.i
  %i.afz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br i1 %i.acy, label %bb.ce, label %bb.cf, !prof !43

bb.ce:                                            ; preds = %bb.cd
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.afz, align 8, !tbaa !42
  br label %BIT_reloadDStream.exit.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !42 ; 7 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !40
  %.not.i.i.i = icmp ult ptr %i.aga, %i.agc
  br i1 %.not.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.agd = lshr i32 %i.acx, 3
  %i.age = zext nneg i32 %i.agd to i64
  %i.agf = sub nsw i64 0, %i.age
  %i.agg = getelementptr inbounds i8, ptr %i.aga, i64 %i.agf ; 3 uses
  store ptr %i.agg, ptr %i.afz, align 8, !tbaa !42
  %i.agh = and i32 %i.acx, 7                      ; 2 uses
  store i32 %i.agh, ptr %i.acw, align 8, !tbaa !41
  %.val.i116 = load i64, ptr %i.agg, align 1, !tbaa !23
  store i64 %.val.i116, ptr %5, align 8, !tbaa !44
  br label %BIT_reloadDStream.exit.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.agi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !45 ; 3 uses
  %i.agk = icmp eq ptr %i.aga, %i.agj
  br i1 %i.agk, label %BIT_reloadDStream.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.agl = lshr i32 %i.acx, 3                     ; 2 uses
  %i.agm = zext nneg i32 %i.agl to i64
  %i.agn = sub nsw i64 0, %i.agm
  %i.ago = getelementptr inbounds i8, ptr %i.aga, i64 %i.agn
  %i.agp = icmp ult ptr %i.ago, %i.agj
  %i.agq = ptrtoint ptr %i.aga to i64
  %i.agr = ptrtoint ptr %i.agj to i64
  %i.ags = sub i64 %i.agq, %i.agr
  %i.agt = trunc i64 %i.ags to i32
  %.021.i.i.i = select i1 %i.agp, i32 %i.agt, i32 %i.agl ; 2 uses
  %i.agu = zext i32 %.021.i.i.i to i64
  %i.agv = sub nsw i64 0, %i.agu
  %i.agw = getelementptr inbounds i8, ptr %i.aga, i64 %i.agv ; 3 uses
  store ptr %i.agw, ptr %i.afz, align 8, !tbaa !42
  %i.agx = shl i32 %.021.i.i.i, 3
  %i.agy = sub i32 %i.acx, %i.agx                 ; 2 uses
  store i32 %i.agy, ptr %i.acw, align 8, !tbaa !41
  %.val11 = load i64, ptr %i.agw, align 1, !tbaa !23
  store i64 %.val11, ptr %5, align 8, !tbaa !44
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.ca, %BIT_reloadDStream.exit43.i.i, %bb.ch, %._crit_edge, %bb.ce, %bb.cg, %bb.ci
  %i.agz = phi i32 [ %i.adf, %._crit_edge ], [ %i.acx, %bb.ce ], [ %i.agy, %bb.ci ], [ %i.acx, %bb.ch ], [ %i.agh, %bb.cg ], [ %i.adi, %bb.ca ], [ %.val81, %BIT_reloadDStream.exit43.i.i ]
  %i.aha = phi ptr [ @BIT_reloadDStream.zeroFilled, %._crit_edge ], [ @BIT_reloadDStream.zeroFilled, %bb.ce ], [ %i.agw, %bb.ci ], [ %i.aga, %bb.ch ], [ %i.agg, %bb.cg ], [ %i.adh, %bb.ca ], [ %storemerge.in, %BIT_reloadDStream.exit43.i.i ]
  %.3.i.i = phi ptr [ %.0.i.i.lcssa, %._crit_edge ], [ %.3149.i, %bb.ce ], [ %.3149.i, %bb.ci ], [ %.3149.i, %bb.ch ], [ %.3149.i, %bb.cg ], [ %.0.i.i478, %BIT_reloadDStream.exit43.i.i ], [ %.0.i.i478, %bb.ca ] ; 6 uses
  %i.ahb = icmp ult ptr %.3.i.i, %i.d
  br i1 %i.ahb, label %.lr.ph482, label %HUF_decodeStreamX1.exit.i

.lr.ph482:                                        ; preds = %BIT_reloadDStream.exit.i.i
  %.3.i.i495 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %i.ahd = sub nsw i32 0, %.sroa.3.0.extract.shift.i
end_hunk_3
