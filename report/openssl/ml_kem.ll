Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_kem?download=true
inline.NumInlined: 101
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@scalar_ntt:bb.a
  %i.bfi = insertelement <8 x i16> %i.bfh, i16 %i.bfa, i64 2
  %i.bfj = insertelement <8 x i16> %i.bfi, i16 %i.bfb, i64 3
  %i.bfk = insertelement <8 x i16> %i.bfj, i16 %i.bfc, i64 4
  %i.bfl = insertelement <8 x i16> %i.bfk, i16 %i.bfd, i64 5
  %i.bfm = insertelement <8 x i16> %i.bfl, i16 %i.bfe, i64 6
  %i.bfn = insertelement <8 x i16> %i.bfm, i16 %i.bff, i64 7 ; 2 uses
  %i.bfo = load i16, ptr %i.beq, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfp = load i16, ptr %i.ber, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfq = load i16, ptr %i.bes, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfr = load i16, ptr %i.bet, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfs = load i16, ptr %i.beu, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bft = load i16, ptr %i.bev, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfu = load i16, ptr %i.bew, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfv = load i16, ptr %i.bex, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %i.bfw = insertelement <8 x i16> poison, i16 %i.bfo, i64 0
  %i.bfx = insertelement <8 x i16> %i.bfw, i16 %i.bfp, i64 1
  %i.bfy = insertelement <8 x i16> %i.bfx, i16 %i.bfq, i64 2
  %i.bfz = insertelement <8 x i16> %i.bfy, i16 %i.bfr, i64 3
  %i.bga = insertelement <8 x i16> %i.bfz, i16 %i.bfs, i64 4
  %i.bgb = insertelement <8 x i16> %i.bga, i16 %i.bft, i64 5
  %i.bgc = insertelement <8 x i16> %i.bgb, i16 %i.bfu, i64 6
  %i.bgd = insertelement <8 x i16> %i.bgc, i16 %i.bfv, i64 7
  %i.bge = zext <8 x i16> %i.bgd to <8 x i32>
  %i.bgf = mul nuw <8 x i32> %i.bge, %i.bck       ; 2 uses
  %i.bgg = zext <8 x i32> %i.bgf to <8 x i64>
  %i.bgh = mul nuw nsw <8 x i64> %i.bgg, splat (i64 5039)
  %i.bgi = lshr <8 x i64> %i.bgh, splat (i64 24)
  %i.bgj = trunc nuw nsw <8 x i64> %i.bgi to <8 x i32>
  %i.bgk = mul <8 x i32> %i.bgj, splat (i32 62207)
  %i.bgl = add <8 x i32> %i.bgk, %i.bgf
  %i.bgm = trunc <8 x i32> %i.bgl to <8 x i16>    ; 2 uses
  %i.bgn = add <8 x i16> %i.bgm, splat (i16 -3329) ; 2 uses
  %i.bgo = icmp slt <8 x i16> %i.bgn, zeroinitializer
  %i.bgp = select <8 x i1> %i.bgo, <8 x i16> %i.bgm, <8 x i16> zeroinitializer
  %i.bgq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bgn, <8 x i16> zeroinitializer)
  %i.bgr = or <8 x i16> %i.bgp, %i.bgq            ; 2 uses
  %i.bgs = sub <8 x i16> %i.bfn, %i.bgr           ; 3 uses
  %i.bgt = add <8 x i16> %i.bgr, %i.bfn           ; 2 uses
  %i.bgu = add <8 x i16> %i.bgt, splat (i16 -3329) ; 2 uses
  %i.bgv = shufflevector <8 x i16> %i.beh, <8 x i16> %i.bgu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgw = icmp slt <16 x i16> %i.bgv, zeroinitializer
  %i.bgx = shufflevector <8 x i16> %i.beg, <8 x i16> %i.bgt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bgy = select <16 x i1> %i.bgw, <16 x i16> %i.bgx, <16 x i16> zeroinitializer
  %i.bgz = shufflevector <8 x i16> %i.beh, <8 x i16> %i.bgu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bha = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bgz, <16 x i16> zeroinitializer)
  %i.bhb = or <16 x i16> %i.bgy, %i.bha
  %i.bhc = shufflevector <8 x i16> %i.bef, <8 x i16> %i.bgs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhd = icmp slt <16 x i16> %i.bhc, zeroinitializer
  %i.bhe = shufflevector <8 x i16> %i.bef, <8 x i16> %i.bgs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhf = add <16 x i16> %i.bhe, splat (i16 3329)
  %i.bhg = select <16 x i1> %i.bhd, <16 x i16> %i.bhf, <16 x i16> zeroinitializer
  %i.bhh = shufflevector <8 x i16> %i.bef, <8 x i16> %i.bgs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhi = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bhh, <16 x i16> zeroinitializer)
  %i.bhj = or <16 x i16> %i.bhg, %i.bhi
  %interleaved.vec140 = shufflevector <16 x i16> %i.bhb, <16 x i16> %i.bhj, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec140, ptr %i.bbm, align 2, !tbaa !44, !alias.scope !129, !noalias !128
  %index.next141 = add nuw i64 %index137, 8       ; 2 uses
  %i.bhk = icmp eq i64 %index.next141, 64
  br i1 %i.bhk, label %middle.block142, label %vector.body136, !llvm.loop !122

scalar.ph130:                                     ; preds = %vector.memcheck131, %scalar.ph130
  %.122.6 = phi ptr [ %i.bhm, %scalar.ph130 ], [ %.lcssa, %vector.memcheck131 ]
  %.019.idx.6 = phi i64 [ %.0.add.6.1, %scalar.ph130 ], [ 0, %vector.memcheck131 ] ; 5 uses
  %.019.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx.6 ; 4 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx.6
  %.ptr25.6 = getelementptr inbounds nuw i8, ptr %i.bhl, i64 4
  %i.bhm = getelementptr inbounds nuw i8, ptr %.122.6, i64 2 ; 2 uses
  %i.bhn = load i16, ptr %i.bhm, align 2, !tbaa !44
  %i.bho = zext i16 %i.bhn to i32                 ; 2 uses
  %i.bhp = load i16, ptr %.ptr25.6, align 2, !tbaa !44
  %i.bhq = zext i16 %i.bhp to i32
  %i.bhr = mul nuw i32 %i.bhq, %i.bho             ; 2 uses
  %i.bhs = zext i32 %i.bhr to i64
  %i.bht = mul nuw nsw i64 %i.bhs, 5039
  %i.bhu = lshr i64 %i.bht, 24
  %i.bhv = trunc nuw nsw i64 %i.bhu to i32
  %.neg.i.6 = mul i32 %i.bhv, 62207
  %i.bhw = add i32 %.neg.i.6, %i.bhr
  %i.bhx = trunc i32 %i.bhw to i16                ; 2 uses
  %i.bhy = add i16 %i.bhx, -3329                  ; 2 uses
  %isneg.i.i.6 = icmp slt i16 %i.bhy, 0
  %i.bhz = select i1 %isneg.i.i.6, i16 %i.bhx, i16 0
  %i.bia = tail call i16 @llvm.smax.i16(i16 %i.bhy, i16 0)
  %i.bib = or i16 %i.bhz, %i.bia                  ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %.019.ptr.6, i64 2
  %i.bid = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx.6
  %.0.ptr.6.1 = getelementptr inbounds nuw i8, ptr %i.bid, i64 6
  %i.bie = load i16, ptr %.0.ptr.6.1, align 2, !tbaa !44
  %i.bif = zext i16 %i.bie to i32
  %i.big = mul nuw i32 %i.bif, %i.bho             ; 2 uses
  %i.bih = zext i32 %i.big to i64
  %i.bii = mul nuw nsw i64 %i.bih, 5039
  %i.bij = lshr i64 %i.bii, 24
  %i.bik = trunc nuw nsw i64 %i.bij to i32
  %.neg.i.6.1 = mul i32 %i.bik, 62207
  %i.bil = add i32 %.neg.i.6.1, %i.big
  %i.bim = trunc i32 %i.bil to i16                ; 2 uses
  %i.bin = add i16 %i.bim, -3329                  ; 2 uses
  %isneg.i.i.6.1 = icmp slt i16 %i.bin, 0
  %i.bio = select i1 %isneg.i.i.6.1, i16 %i.bim, i16 0
  %i.bip = tail call i16 @llvm.smax.i16(i16 %i.bin, i16 0)
  %i.biq = or i16 %i.bio, %i.bip                  ; 2 uses
  %.0.add.6.1 = add nuw nsw i64 %.019.idx.6, 8
  %i.bir = load <2 x i16>, ptr %.019.ptr.6, align 2, !tbaa !44
  %i.bis = load i16, ptr %i.bic, align 2, !tbaa !44
  %i.bit = load i16, ptr %.019.ptr.6, align 2, !tbaa !44
  %i.biu = add i16 %i.bib, %i.bit
  %i.biv = add i16 %i.biq, %i.bis
  %i.biw = shufflevector <2 x i16> %i.bir, <2 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.bix = insertelement <4 x i16> %i.biw, i16 %i.biu, i64 0
  %i.biy = insertelement <4 x i16> %i.bix, i16 %i.biv, i64 1 ; 2 uses
  %i.biz = insertelement <4 x i16> <i16 3329, i16 3329, i16 poison, i16 poison>, i16 %i.bib, i64 2
  %i.bja = insertelement <4 x i16> %i.biz, i16 %i.biq, i64 3
  %i.bjb = sub <4 x i16> %i.biy, %i.bja           ; 3 uses
  %i.bjc = icmp slt <4 x i16> %i.bjb, zeroinitializer
  %i.bjd = add <4 x i16> %i.bjb, <i16 poison, i16 poison, i16 3329, i16 3329>
  %i.bje = shufflevector <4 x i16> %i.bjd, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bjf = shufflevector <4 x i16> %i.biy, <4 x i16> %i.bje, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bjg = select <4 x i1> %i.bjc, <4 x i16> %i.bjf, <4 x i16> zeroinitializer
  %i.bjh = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bjb, <4 x i16> zeroinitializer)
  %i.bji = or <4 x i16> %i.bjg, %i.bjh
  store <4 x i16> %i.bji, ptr %.019.ptr.6, align 2, !tbaa !44
  %i.bjj = icmp samesign ult i64 %.019.idx.6, 504
  br i1 %i.bjj, label %scalar.ph130, label %middle.block142, !llvm.loop !123

middle.block142:                                  ; preds = %vector.body136, %scalar.ph130
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @encrypt_cpa(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = alloca [33 x i8], align 16               ; 6 uses
  %i.d = alloca [33 x i8], align 16               ; 6 uses
  %6 = alloca %struct.ossl_ml_kem_scalar_st, align 2 ; 15 uses
  %i.e = alloca [33 x i8], align 16               ; 5 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !22     ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp eq i32 %i.h, 1454
  %i.j = select i1 %i.i, ptr @cbd_3, ptr @cbd_2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37   ; 16 uses
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = getelementptr [512 x i8], ptr %3, i64 %i.m ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.r = load i32, ptr %i.q, align 8, !tbaa !55   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.083 = phi i8 [ 0, %bb.a ], [ %i.u, %bb.c ]    ; 2 uses
  %.09.i = phi i32 [ %i.l, %bb.a ], [ %i.w, %bb.c ] ; 2 uses
  %.08.i = phi ptr [ %3, %bb.a ], [ %i.v, %bb.c ] ; 3 uses
  store i8 %.083, ptr %i.s, align 16, !tbaa !47
  %i.t = call i32 %i.j(ptr noundef nonnull %.08.i, ptr noundef nonnull %i.d, ptr noundef nonnull %4, ptr noundef nonnull %5) #11, !callees !50, !inline_history !4
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %gencbd_vector_ntt.exit.thread, label %bb.c

gencbd_vector_ntt.exit.thread:                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %scalar_encode.exit

bb.c:                                             ; preds = %bb.b
  %i.u = add i8 %.083, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i, i64 512
  call fastcc void @scalar_ntt(ptr noundef nonnull %.08.i)
  %i.w = add nsw i32 %.09.i, -1
  %i.x = icmp sgt i32 %.09.i, 1
  br i1 %i.x, label %bb.b, label %bb.d, !llvm.loop !5

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  call fastcc void @inner_product(ptr noundef %6, ptr noundef %i.z, ptr noundef %3, i32 noundef %i.l)
  call fastcc void @scalar_inverse_ntt(ptr noundef %6)
  %i.aa = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.aa, label %.preheader.lr.ph.i, label %matrix_mult_intt.exit

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %.not.i50 = icmp eq i32 %i.l, 1
  %i.ad = shl nuw nsw i64 %i.m, 9                 ; 4 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.l, i32 2)
  %i.ae = sub nsw i32 %i.l, %smin
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 9                ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1024             ; 2 uses
  %i.ai = getelementptr i8, ptr %3, i64 %i.ag
  %scevgep105 = getelementptr i8, ptr %i.ai, i64 1022 ; 2 uses
  %i.aj = getelementptr i8, ptr %3, <2 x i64> <i64 512, i64 514>
  %scevgep107 = getelementptr i8, ptr %3, i64 %i.ah ; 2 uses
  %i.ak = add nsw i32 %i.l, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.m, %i.al
  %i.an = shl nuw nsw i64 %i.am, 9                ; 2 uses
  %i.ao = getelementptr i8, ptr %3, i64 %i.an
  %scevgep149 = getelementptr i8, ptr %i.ao, i64 510 ; 5 uses
  %i.ap = getelementptr i8, ptr %3, i64 %i.ad
  %scevgep150 = getelementptr i8, ptr %i.ap, i64 2 ; 5 uses
  %i.aq = getelementptr i8, ptr %3, i64 %i.an
  %scevgep151 = getelementptr i8, ptr %i.aq, i64 512 ; 5 uses
  %scevgep153 = getelementptr i8, ptr %3, i64 510 ; 2 uses
  %scevgep154 = getelementptr i8, ptr %3, i64 2   ; 2 uses
  %scevgep155 = getelementptr i8, ptr %3, i64 512 ; 2 uses
  %i.ar = getelementptr i8, ptr %3, i64 %i.ad
  %i.as = getelementptr i8, ptr %i.ar, i64 510
  %i.at = getelementptr i8, ptr %3, i64 %i.ad
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %i.av = getelementptr i8, ptr %3, i64 %i.ad
  %i.aw = getelementptr i8, ptr %i.av, i64 512
  %bound0156 = icmp ult ptr %i.n, %scevgep151
  %bound1157 = icmp ult ptr %scevgep150, %scevgep149
  %found.conflict158 = and i1 %bound0156, %bound1157
  %bound0163 = icmp ult ptr %i.n, %scevgep153
  %bound1164 = icmp ult ptr %3, %scevgep149
  %found.conflict165 = and i1 %bound0163, %bound1164
  %invariant.op = or i1 %found.conflict158, %found.conflict165
  %bound0167 = icmp ult ptr %i.n, %scevgep155
  %bound1168 = icmp ult ptr %scevgep154, %scevgep149
  %found.conflict169 = and i1 %bound0167, %bound1168
  %invariant.op289 = or i1 %invariant.op, %found.conflict169
  %bound0171 = icmp ult ptr %i.n, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1172 = icmp ugt ptr %scevgep149, @kModRoots
  %found.conflict173 = and i1 %bound0171, %bound1172
  %invariant.op290 = or i1 %invariant.op289, %found.conflict173
  %bound0179 = icmp ult ptr %scevgep150, %scevgep153
  %bound1180 = icmp ult ptr %3, %scevgep151
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0183 = icmp ult ptr %scevgep150, %scevgep155
  %bound1184 = icmp ult ptr %scevgep154, %scevgep151
  %found.conflict185 = and i1 %bound0183, %bound1184
  %invariant.op291 = or i1 %found.conflict181, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep150, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1188 = icmp ugt ptr %scevgep151, @kModRoots
  %found.conflict189 = and i1 %bound0187, %bound1188
  %invariant.op292 = or i1 %invariant.op291, %found.conflict189
  %i.ax = insertelement <4 x ptr> <ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)>, ptr %scevgep105, i64 1
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %scevgep107, i64 2
  %i.az = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %scalar_mult.exit._crit_edge.i, %.preheader.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult.exit._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.in.i = phi i32 [ %i.fl, %scalar_mult.exit._crit_edge.i ], [ %i.l, %.preheader.lr.ph.i ] ; 2 uses
  %.01426.i = phi ptr [ %i.lh, %scalar_mult.exit._crit_edge.i ], [ %i.n, %.preheader.lr.ph.i ] ; 8 uses
  %.01525.i = phi ptr [ %.1.lcssa.i, %scalar_mult.exit._crit_edge.i ], [ %i.ac, %.preheader.lr.ph.i ] ; 7 uses
  %i.ba = shl nuw nsw i64 %indvar, 9              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.ba ; 2 uses
  %scevgep101 = getelementptr i8, ptr %i.au, i64 %i.ba
  %scevgep102 = getelementptr i8, ptr %i.aw, i64 %i.ba
  %scevgep152 = getelementptr i8, ptr %.01525.i, i64 512 ; 2 uses
  %bound0159 = icmp ult ptr %i.n, %scevgep152
  %bound1160 = icmp ult ptr %.01525.i, %scevgep149
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx174.reass = or i1 %found.conflict161, %invariant.op290
  %bound0175 = icmp ult ptr %scevgep150, %scevgep152
  %bound1176 = icmp ult ptr %.01525.i, %scevgep151
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174.reass, %found.conflict177
  %conflict.rdx190.reass = or i1 %conflict.rdx178, %invariant.op292
  br i1 %conflict.rdx190.reass, label %scalar.ph191, label %vector.body193

vector.body193:                                   ; preds = %.preheader.i, %vector.body193
  %index194 = phi i64 [ %index.next206, %vector.body193 ], [ 0, %.preheader.i ] ; 3 uses
  %i.bb = shl i64 %index194, 1
  %next.gep195 = getelementptr i8, ptr @kModRoots, i64 %i.bb
  %i.bc = shl i64 %index194, 2                    ; 3 uses
  %next.gep196 = getelementptr i8, ptr %3, i64 %i.bc
  %next.gep197 = getelementptr i8, ptr %.01525.i, i64 %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.bc
  %wide.vec198 = load <8 x i16>, ptr %next.gep197, align 2, !tbaa !44, !alias.scope !156
  %i.be = freeze <8 x i16> %wide.vec198           ; 2 uses
  %i.bf = bitcast <8 x i16> %i.be to <4 x i32>
  %i.bg = bitcast <8 x i16> %i.be to <4 x i32>
  %i.bh = and <4 x i32> %i.bg, splat (i32 65535)  ; 2 uses
  %i.bi = lshr <4 x i32> %i.bf, splat (i32 16)    ; 2 uses
  %wide.vec201 = load <8 x i16>, ptr %next.gep196, align 2, !tbaa !44
  %i.bj = freeze <8 x i16> %wide.vec201           ; 2 uses
  %i.bk = bitcast <8 x i16> %i.bj to <4 x i32>
  %i.bl = bitcast <8 x i16> %i.bj to <4 x i32>
  %i.bm = and <4 x i32> %i.bl, splat (i32 65535)  ; 2 uses
  %i.bn = lshr <4 x i32> %i.bk, splat (i32 16)    ; 2 uses
  %wide.load204 = load <4 x i16>, ptr %next.gep195, align 8, !tbaa !44, !alias.scope !157
  %i.bo = zext <4 x i16> %wide.load204 to <4 x i32>
  %i.bp = mul nuw <4 x i32> %i.bm, %i.bh
  %i.bq = mul nuw <4 x i32> %i.bn, %i.bi          ; 2 uses
  %i.br = zext <4 x i32> %i.bq to <4 x i64>
  %i.bs = mul nuw nsw <4 x i64> %i.br, splat (i64 5039)
  %i.bt = lshr <4 x i64> %i.bs, splat (i64 24)
  %i.bu = trunc nuw nsw <4 x i64> %i.bt to <4 x i32>
  %i.bv = mul <4 x i32> %i.bu, splat (i32 62207)
  %i.bw = add <4 x i32> %i.bv, %i.bq
  %i.bx = trunc <4 x i32> %i.bw to <4 x i16>      ; 2 uses
  %i.by = add <4 x i16> %i.bx, splat (i16 -3329)  ; 2 uses
  %i.bz = icmp slt <4 x i16> %i.by, zeroinitializer
  %i.ca = select <4 x i1> %i.bz, <4 x i16> %i.bx, <4 x i16> zeroinitializer
  %i.cb = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.by, <4 x i16> zeroinitializer)
  %i.cc = or <4 x i16> %i.ca, %i.cb
  %i.cd = zext <4 x i16> %i.cc to <4 x i32>
  %i.ce = mul nuw <4 x i32> %i.cd, %i.bo
  %i.cf = add <4 x i32> %i.ce, %i.bp              ; 2 uses
  %i.cg = zext <4 x i32> %i.cf to <4 x i64>
  %i.ch = mul nuw nsw <4 x i64> %i.cg, splat (i64 5039)
  %i.ci = lshr <4 x i64> %i.ch, splat (i64 24)
  %i.cj = trunc nuw nsw <4 x i64> %i.ci to <4 x i32>
  %i.ck = mul <4 x i32> %i.cj, splat (i32 62207)
  %i.cl = add <4 x i32> %i.ck, %i.cf
  %i.cm = trunc <4 x i32> %i.cl to <4 x i16>      ; 2 uses
  %i.cn = add <4 x i16> %i.cm, splat (i16 -3329)  ; 2 uses
  %i.co = icmp slt <4 x i16> %i.cn, zeroinitializer
  %i.cp = select <4 x i1> %i.co, <4 x i16> %i.cm, <4 x i16> zeroinitializer
  %i.cq = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cn, <4 x i16> zeroinitializer)
  %i.cr = or <4 x i16> %i.cp, %i.cq
  %i.cs = mul nuw <4 x i32> %i.bn, %i.bh
  %i.ct = mul nuw <4 x i32> %i.bi, %i.bm
  %i.cu = add <4 x i32> %i.cs, %i.ct              ; 2 uses
  %i.cv = zext <4 x i32> %i.cu to <4 x i64>
  %i.cw = mul nuw nsw <4 x i64> %i.cv, splat (i64 5039)
  %i.cx = lshr <4 x i64> %i.cw, splat (i64 24)
  %i.cy = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.cz = mul <4 x i32> %i.cy, splat (i32 62207)
  %i.da = add <4 x i32> %i.cz, %i.cu
  %i.db = trunc <4 x i32> %i.da to <4 x i16>      ; 2 uses
  %i.dc = add <4 x i16> %i.db, splat (i16 -3329)  ; 2 uses
  %i.dd = icmp slt <4 x i16> %i.dc, zeroinitializer
  %i.de = select <4 x i1> %i.dd, <4 x i16> %i.db, <4 x i16> zeroinitializer
  %i.df = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.dc, <4 x i16> zeroinitializer)
  %i.dg = or <4 x i16> %i.de, %i.df
  %interleaved.vec205 = shufflevector <4 x i16> %i.cr, <4 x i16> %i.dg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec205, ptr %i.bd, align 2, !tbaa !44
  %index.next206 = add nuw i64 %index194, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next206, 128
  br i1 %i.dh, label %scalar_mult.exit.preheader.i, label %vector.body193, !llvm.loop !133

scalar.ph191:                                     ; preds = %.preheader.i, %scalar.ph191
  %.023.i.i = phi ptr [ %i.du, %scalar.ph191 ], [ @kModRoots, %.preheader.i ] ; 2 uses
  %.022.i.i = phi ptr [ %i.dr, %scalar.ph191 ], [ %3, %.preheader.i ] ; 3 uses
  %.021.i.i = phi ptr [ %i.do, %scalar.ph191 ], [ %.01525.i, %.preheader.i ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph191 ], [ 0, %.preheader.i ] ; 3 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 2
  %i.dj = load i16, ptr %.021.i.i, align 2, !tbaa !44
  %i.dk = zext i16 %i.dj to i32                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 2
  %i.dm = load i16, ptr %.022.i.i, align 2, !tbaa !44
  %i.dn = zext i16 %i.dm to i32                   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %i.dp = load i16, ptr %i.di, align 2, !tbaa !44
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4
  %i.ds = load i16, ptr %i.dl, align 2, !tbaa !44
  %i.dt = zext i16 %i.ds to i32                   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 2
  %i.dv = load i16, ptr %.023.i.i, align 2, !tbaa !44
  %i.dw = zext i16 %i.dv to i32
  %i.dx = mul nuw i32 %i.dn, %i.dk
  %i.dy = mul nuw i32 %i.dt, %i.dq                ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw nsw i64 %i.dz, 5039
  %i.eb = lshr i64 %i.ea, 24
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %.neg.i.i.i = mul i32 %i.ec, 62207
  %i.ed = add i32 %.neg.i.i.i, %i.dy
  %i.ee = trunc i32 %i.ed to i16                  ; 2 uses
  %i.ef = add i16 %i.ee, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.ef, 0
  %i.eg = select i1 %isneg.i.i.i.i, i16 %i.ee, i16 0
  %i.eh = call i16 @llvm.smax.i16(i16 %i.ef, i16 0)
  %i.ei = or i16 %i.eg, %i.eh
  %i.ej = zext i16 %i.ei to i32
  %i.ek = mul nuw i32 %i.ej, %i.dw
  %i.el = add i32 %i.ek, %i.dx                    ; 2 uses
  %i.em = zext i32 %i.el to i64
  %i.en = mul nuw nsw i64 %i.em, 5039
  %i.eo = lshr i64 %i.en, 24
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %.neg.i24.i.i = mul i32 %i.ep, 62207
  %i.eq = add i32 %.neg.i24.i.i, %i.el
  %i.er = trunc i32 %i.eq to i16                  ; 2 uses
  %i.es = add i16 %i.er, -3329                    ; 2 uses
  %isneg.i.i25.i.i = icmp slt i16 %i.es, 0
  %i.et = select i1 %isneg.i.i25.i.i, i16 %i.er, i16 0
  %i.eu = call i16 @llvm.smax.i16(i16 %i.es, i16 0)
  %i.ev = or i16 %i.et, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.ptr.i.i, i64 2
  store i16 %i.ev, ptr %.0.ptr.i.i, align 2, !tbaa !44
  %i.ex = mul nuw i32 %i.dt, %i.dk
  %i.ey = mul nuw i32 %i.dq, %i.dn
  %i.ez = add i32 %i.ex, %i.ey                    ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = mul nuw nsw i64 %i.fa, 5039
  %i.fc = lshr i64 %i.fb, 24
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %.neg.i26.i.i = mul i32 %i.fd, 62207
  %i.fe = add i32 %.neg.i26.i.i, %i.ez
  %i.ff = trunc i32 %i.fe to i16                  ; 2 uses
  %i.fg = add i16 %i.ff, -3329                    ; 2 uses
  %isneg.i.i27.i.i = icmp slt i16 %i.fg, 0
  %i.fh = select i1 %isneg.i.i27.i.i, i16 %i.ff, i16 0
  %i.fi = call i16 @llvm.smax.i16(i16 %i.fg, i16 0)
  %i.fj = or i16 %i.fh, %i.fi
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  store i16 %i.fj, ptr %i.ew, align 2, !tbaa !44
  %i.fk = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.fk, label %scalar.ph191, label %scalar_mult.exit.preheader.i, !llvm.loop !134

scalar_mult.exit.preheader.i:                     ; preds = %vector.body193, %scalar.ph191
  %i.fl = add nsw i32 %.in.i, -1
  %.121.i = getelementptr i8, ptr %.01525.i, i64 512 ; 4 uses
  br i1 %.not.i50, label %scalar_mult.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult.exit.preheader.i
  %scevgep103 = getelementptr i8, ptr %.01525.i, i64 %i.ah ; 2 uses
  %i.fm = insertelement <4 x ptr> poison, ptr %.01426.i, i64 0
  %i.fn = shufflevector <4 x ptr> %i.fm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fo = insertelement <4 x ptr> poison, ptr %scevgep102, i64 0 ; 2 uses
  %i.fp = insertelement <4 x ptr> %i.fo, ptr %scevgep103, i64 1
  %i.fq = insertelement <4 x ptr> %i.fp, ptr %scevgep105, i64 2
  %i.fr = insertelement <4 x ptr> %i.fq, ptr %scevgep107, i64 3
  %i.fs = insertelement <4 x ptr> poison, ptr %scevgep101, i64 0 ; 2 uses
  %7 = insertelement <4 x ptr> %i.fs, ptr %.121.i, i64 1
  %i.ft = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %8 = shufflevector <4 x ptr> %i.ft, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fu = shufflevector <4 x ptr> %i.fs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fv = insertelement <4 x ptr> %i.ay, ptr %scevgep103, i64 0
  %i.fw = insertelement <4 x ptr> poison, ptr %.121.i, i64 0
  %i.fx = shufflevector <4 x ptr> %i.fo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %9 = shufflevector <4 x ptr> %7, <4 x ptr> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fy = shufflevector <4 x ptr> %i.fw, <4 x ptr> %i.az, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.fz = icmp ult <4 x ptr> %i.fn, %i.fr
  %i.ga = icmp ult <4 x ptr> %9, %8
  %i.gb = and <4 x i1> %i.fz, %i.ga
  %bound0119 = icmp ult ptr %.01426.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1120 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.gc = icmp ult <4 x ptr> %i.fu, %i.fv
  %i.gd = insertelement <4 x ptr> %i.fy, ptr @kModRoots, i64 3
  %i.ge = icmp ult <4 x ptr> %i.gd, %i.fx
  %i.gf = and <4 x i1> %i.gc, %i.ge
  %rdx.op = or <4 x i1> %i.gb, %i.gf
  %i.gg = bitcast <4 x i1> %rdx.op to i4
  %i.gh = icmp ne i4 %i.gg, 0
  %op.rdx = or i1 %i.gh, %found.conflict121
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit.i
  %.124.i = phi ptr [ %.1.i, %scalar_mult_add.exit.i ], [ %.121.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0.in23.i = phi i32 [ %.0.i51, %scalar_mult_add.exit.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01322.i = phi ptr [ %i.gi, %scalar_mult_add.exit.i ], [ %3, %.lr.ph.i.preheader ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.01322.i, i64 512 ; 3 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.gj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.gj
  %i.gk = shl i64 %index, 2                       ; 3 uses
  %next.gep139 = getelementptr i8, ptr %i.gi, i64 %i.gk
  %next.gep140 = getelementptr i8, ptr %.124.i, i64 %i.gk
  %i.gl = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.gk ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep140, align 2, !tbaa !44, !alias.scope !158
  %i.gm = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.gn = bitcast <8 x i16> %i.gm to <4 x i32>
  %i.go = bitcast <8 x i16> %i.gm to <4 x i32>
  %i.gp = and <4 x i32> %i.go, splat (i32 65535)  ; 2 uses
  %i.gq = lshr <4 x i32> %i.gn, splat (i32 16)    ; 2 uses
  %wide.vec142 = load <8 x i16>, ptr %next.gep139, align 2, !tbaa !44
  %i.gr = freeze <8 x i16> %wide.vec142           ; 2 uses
  %i.gs = bitcast <8 x i16> %i.gr to <4 x i32>
  %i.gt = bitcast <8 x i16> %i.gr to <4 x i32>
  %i.gu = and <4 x i32> %i.gt, splat (i32 65535)  ; 2 uses
  %i.gv = lshr <4 x i32> %i.gs, splat (i32 16)    ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !44, !alias.scope !159
  %i.gw = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec145 = load <8 x i16>, ptr %i.gl, align 2, !tbaa !44
  %i.gx = freeze <8 x i16> %wide.vec145           ; 2 uses
  %i.gy = bitcast <8 x i16> %i.gx to <4 x i32>
  %i.gz = bitcast <8 x i16> %i.gx to <4 x i32>
  %i.ha = and <4 x i32> %i.gz, splat (i32 65535)
  %i.hb = lshr <4 x i32> %i.gy, splat (i32 16)
  %i.hc = mul nuw <4 x i32> %i.gu, %i.gp
  %i.hd = add nuw <4 x i32> %i.hc, %i.ha
  %i.he = mul nuw <4 x i32> %i.gv, %i.gq          ; 2 uses
  %i.hf = zext <4 x i32> %i.he to <4 x i64>
  %i.hg = mul nuw nsw <4 x i64> %i.hf, splat (i64 5039)
  %i.hh = lshr <4 x i64> %i.hg, splat (i64 24)
  %i.hi = trunc nuw nsw <4 x i64> %i.hh to <4 x i32>
  %i.hj = mul <4 x i32> %i.hi, splat (i32 62207)
  %i.hk = add <4 x i32> %i.hj, %i.he
  %i.hl = trunc <4 x i32> %i.hk to <4 x i16>      ; 2 uses
  %i.hm = add <4 x i16> %i.hl, splat (i16 -3329)  ; 2 uses
  %i.hn = icmp slt <4 x i16> %i.hm, zeroinitializer
  %i.ho = select <4 x i1> %i.hn, <4 x i16> %i.hl, <4 x i16> zeroinitializer
  %i.hp = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hm, <4 x i16> zeroinitializer)
  %i.hq = or <4 x i16> %i.ho, %i.hp
  %i.hr = zext <4 x i16> %i.hq to <4 x i32>
  %i.hs = mul nuw <4 x i32> %i.hr, %i.gw
  %i.ht = add <4 x i32> %i.hd, %i.hs              ; 2 uses
  %i.hu = zext <4 x i32> %i.ht to <4 x i64>
  %i.hv = mul nuw nsw <4 x i64> %i.hu, splat (i64 5039)
  %i.hw = lshr <4 x i64> %i.hv, splat (i64 24)
  %i.hx = trunc nuw nsw <4 x i64> %i.hw to <4 x i32>
  %i.hy = mul <4 x i32> %i.hx, splat (i32 62207)
  %i.hz = add <4 x i32> %i.hy, %i.ht
  %i.ia = trunc <4 x i32> %i.hz to <4 x i16>      ; 2 uses
  %i.ib = add <4 x i16> %i.ia, splat (i16 -3329)  ; 2 uses
  %i.ic = icmp slt <4 x i16> %i.ib, zeroinitializer
  %i.id = select <4 x i1> %i.ic, <4 x i16> %i.ia, <4 x i16> zeroinitializer
  %i.ie = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ib, <4 x i16> zeroinitializer)
  %i.if = or <4 x i16> %i.id, %i.ie
  %i.ig = mul nuw <4 x i32> %i.gv, %i.gp
  %i.ih = mul nuw <4 x i32> %i.gq, %i.gu
  %i.ii = add <4 x i32> %i.ig, %i.ih
  %i.ij = add <4 x i32> %i.ii, %i.hb              ; 2 uses
  %i.ik = zext <4 x i32> %i.ij to <4 x i64>
  %i.il = mul nuw nsw <4 x i64> %i.ik, splat (i64 5039)
  %i.im = lshr <4 x i64> %i.il, splat (i64 24)
  %i.in = trunc nuw nsw <4 x i64> %i.im to <4 x i32>
  %i.io = mul <4 x i32> %i.in, splat (i32 62207)
  %i.ip = add <4 x i32> %i.io, %i.ij
  %i.iq = trunc <4 x i32> %i.ip to <4 x i16>      ; 2 uses
  %i.ir = add <4 x i16> %i.iq, splat (i16 -3329)  ; 2 uses
  %i.is = icmp slt <4 x i16> %i.ir, zeroinitializer
  %i.it = select <4 x i1> %i.is, <4 x i16> %i.iq, <4 x i16> zeroinitializer
  %i.iu = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ir, <4 x i16> zeroinitializer)
  %i.iv = or <4 x i16> %i.it, %i.iu
  %interleaved.vec = shufflevector <4 x i16> %i.if, <4 x i16> %i.iv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.gl, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iw = icmp eq i64 %index.next, 128
  br i1 %i.iw, label %scalar_mult_add.exit.i, label %vector.body, !llvm.loop !138

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i.i = phi ptr [ %i.jk, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i.i = phi ptr [ %i.jg, %scalar.ph ], [ %i.gi, %.lr.ph.i ] ; 3 uses
  %.025.i.i = phi ptr [ %i.jd, %scalar.ph ], [ %.124.i, %.lr.ph.i ] ; 3 uses
  %.0.idx.i16.i = phi i64 [ %.0.add.i18.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0.ptr.i17.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i16.i ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.iy = load i16, ptr %.025.i.i, align 2, !tbaa !44
  %i.iz = zext i16 %i.iy to i32                   ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.jb = load i16, ptr %.026.i.i, align 2, !tbaa !44
  %i.jc = zext i16 %i.jb to i32                   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.je = load i16, ptr %i.ix, align 2, !tbaa !44
  %i.jf = zext i16 %i.je to i32                   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.jh = load i16, ptr %i.ja, align 2, !tbaa !44
  %i.ji = zext i16 %i.jh to i32                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.ptr.i17.i, i64 2 ; 2 uses
  %.0.add.i18.i = add nuw nsw i64 %.0.idx.i16.i, 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.jl = load i16, ptr %.027.i.i, align 2, !tbaa !44
  %i.jm = zext i16 %i.jl to i32
  %i.jn = load i16, ptr %.0.ptr.i17.i, align 2, !tbaa !44
  %i.jo = zext i16 %i.jn to i32
  %i.jp = mul nuw i32 %i.jc, %i.iz
  %i.jq = add nuw i32 %i.jp, %i.jo
  %i.jr = mul nuw i32 %i.ji, %i.jf                ; 2 uses
  %i.js = zext i32 %i.jr to i64
  %i.jt = mul nuw nsw i64 %i.js, 5039
  %i.ju = lshr i64 %i.jt, 24
  %i.jv = trunc nuw nsw i64 %i.ju to i32
  %.neg.i.i19.i = mul i32 %i.jv, 62207
  %i.jw = add i32 %.neg.i.i19.i, %i.jr
  %i.jx = trunc i32 %i.jw to i16                  ; 2 uses
  %i.jy = add i16 %i.jx, -3329                    ; 2 uses
  %isneg.i.i.i20.i = icmp slt i16 %i.jy, 0
  %i.jz = select i1 %isneg.i.i.i20.i, i16 %i.jx, i16 0
  %i.ka = call i16 @llvm.smax.i16(i16 %i.jy, i16 0)
  %i.kb = or i16 %i.jz, %i.ka
  %i.kc = zext i16 %i.kb to i32
  %i.kd = mul nuw i32 %i.kc, %i.jm
  %i.ke = add i32 %i.jq, %i.kd                    ; 2 uses
  %i.kf = zext i32 %i.ke to i64
  %i.kg = mul nuw nsw i64 %i.kf, 5039
  %i.kh = lshr i64 %i.kg, 24
  %i.ki = trunc nuw nsw i64 %i.kh to i32
  %.neg.i28.i.i = mul i32 %i.ki, 62207
  %i.kj = add i32 %.neg.i28.i.i, %i.ke
  %i.kk = trunc i32 %i.kj to i16                  ; 2 uses
  %i.kl = add i16 %i.kk, -3329                    ; 2 uses
  %isneg.i.i29.i.i = icmp slt i16 %i.kl, 0
  %i.km = select i1 %isneg.i.i29.i.i, i16 %i.kk, i16 0
  %i.kn = call i16 @llvm.smax.i16(i16 %i.kl, i16 0)
  %i.ko = or i16 %i.km, %i.kn
  store i16 %i.ko, ptr %.0.ptr.i17.i, align 2, !tbaa !44
  %i.kp = load i16, ptr %i.jj, align 2, !tbaa !44
  %i.kq = zext i16 %i.kp to i32
  %i.kr = mul nuw i32 %i.ji, %i.iz
  %i.ks = mul nuw i32 %i.jf, %i.jc
  %i.kt = add i32 %i.kr, %i.ks
  %i.ku = add i32 %i.kt, %i.kq                    ; 2 uses
  %i.kv = zext i32 %i.ku to i64
  %i.kw = mul nuw nsw i64 %i.kv, 5039
  %i.kx = lshr i64 %i.kw, 24
  %i.ky = trunc nuw nsw i64 %i.kx to i32
  %.neg.i30.i.i = mul i32 %i.ky, 62207
  %i.kz = add i32 %.neg.i30.i.i, %i.ku
  %i.la = trunc i32 %i.kz to i16                  ; 2 uses
  %i.lb = add i16 %i.la, -3329                    ; 2 uses
  %isneg.i.i31.i.i = icmp slt i16 %i.lb, 0
  %i.lc = select i1 %isneg.i.i31.i.i, i16 %i.la, i16 0
  %i.ld = call i16 @llvm.smax.i16(i16 %i.lb, i16 0)
  %i.le = or i16 %i.lc, %i.ld
  store i16 %i.le, ptr %i.jj, align 2, !tbaa !44
  %i.lf = icmp samesign ult i64 %.0.idx.i16.i, 508
  br i1 %i.lf, label %scalar.ph, label %scalar_mult_add.exit.i, !llvm.loop !139

scalar_mult_add.exit.i:                           ; preds = %vector.body, %scalar.ph
  %.0.i51 = add nsw i32 %.0.in23.i, -1
  %.1.i = getelementptr inbounds nuw i8, ptr %.124.i, i64 512 ; 2 uses
  %i.lg = icmp sgt i32 %.0.in23.i, 2
  br i1 %i.lg, label %.lr.ph.i, label %scalar_mult.exit._crit_edge.i, !llvm.loop !140

scalar_mult.exit._crit_edge.i:                    ; preds = %scalar_mult_add.exit.i, %scalar_mult.exit.preheader.i
  %.1.lcssa.i = phi ptr [ %.121.i, %scalar_mult.exit.preheader.i ], [ %.1.i, %scalar_mult_add.exit.i ]
  call fastcc void @scalar_inverse_ntt(ptr noundef %.01426.i)
  %i.lh = getelementptr i8, ptr %.01426.i, i64 512
  %i.li = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.li, label %.preheader.i, label %matrix_mult_intt.exit, !llvm.loop !141

matrix_mult_intt.exit:                            ; preds = %scalar_mult.exit._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lk = getelementptr i8, ptr %5, i64 24        ; 2 uses
  br label %bb.e

end_hunk_0
