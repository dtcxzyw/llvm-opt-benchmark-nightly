inline.NumInlined: 100
inline.NumDeleted: 46
begin_hunk_0_@scalar_ntt:bb.a
  %i.bgf = insertelement <8 x i16> poison, i16 %i.bfx, i64 0
  %i.bgg = insertelement <8 x i16> %i.bgf, i16 %i.bfy, i64 1
  %i.bgh = insertelement <8 x i16> %i.bgg, i16 %i.bfz, i64 2
  %i.bgi = insertelement <8 x i16> %i.bgh, i16 %i.bga, i64 3
  %i.bgj = insertelement <8 x i16> %i.bgi, i16 %i.bgb, i64 4
  %i.bgk = insertelement <8 x i16> %i.bgj, i16 %i.bgc, i64 5
  %i.bgl = insertelement <8 x i16> %i.bgk, i16 %i.bgd, i64 6
  %i.bgm = insertelement <8 x i16> %i.bgl, i16 %i.bge, i64 7 ; 2 uses
  %i.bgn = load i16, ptr %i.bfp, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgo = load i16, ptr %i.bfq, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgp = load i16, ptr %i.bfr, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgq = load i16, ptr %i.bfs, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgr = load i16, ptr %i.bft, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgs = load i16, ptr %i.bfu, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgt = load i16, ptr %i.bfv, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgu = load i16, ptr %i.bfw, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %i.bgv = insertelement <8 x i16> poison, i16 %i.bgn, i64 0
  %i.bgw = insertelement <8 x i16> %i.bgv, i16 %i.bgo, i64 1
  %i.bgx = insertelement <8 x i16> %i.bgw, i16 %i.bgp, i64 2
  %i.bgy = insertelement <8 x i16> %i.bgx, i16 %i.bgq, i64 3
  %i.bgz = insertelement <8 x i16> %i.bgy, i16 %i.bgr, i64 4
  %i.bha = insertelement <8 x i16> %i.bgz, i16 %i.bgs, i64 5
  %i.bhb = insertelement <8 x i16> %i.bha, i16 %i.bgt, i64 6
  %i.bhc = insertelement <8 x i16> %i.bhb, i16 %i.bgu, i64 7
  %i.bhd = zext <8 x i16> %i.bhc to <8 x i32>
  %i.bhe = mul nuw <8 x i32> %i.bhd, %i.bdj       ; 2 uses
  %i.bhf = zext <8 x i32> %i.bhe to <8 x i64>
  %i.bhg = mul nuw nsw <8 x i64> %i.bhf, splat (i64 5039)
  %i.bhh = lshr <8 x i64> %i.bhg, splat (i64 24)
  %i.bhi = trunc nuw nsw <8 x i64> %i.bhh to <8 x i32>
  %i.bhj = mul <8 x i32> %i.bhi, splat (i32 62207)
  %i.bhk = add <8 x i32> %i.bhj, %i.bhe
  %i.bhl = trunc <8 x i32> %i.bhk to <8 x i16>    ; 2 uses
  %i.bhm = add <8 x i16> %i.bhl, splat (i16 -3329) ; 2 uses
  %i.bhn = icmp slt <8 x i16> %i.bhm, zeroinitializer
  %i.bho = select <8 x i1> %i.bhn, <8 x i16> %i.bhl, <8 x i16> zeroinitializer
  %i.bhp = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bhm, <8 x i16> zeroinitializer)
  %i.bhq = or <8 x i16> %i.bho, %i.bhp            ; 2 uses
  %i.bhr = sub <8 x i16> %i.bgm, %i.bhq           ; 3 uses
  %i.bhs = add <8 x i16> %i.bhq, %i.bgm           ; 2 uses
  %i.bht = add <8 x i16> %i.bhs, splat (i16 -3329) ; 2 uses
  %i.bhu = shufflevector <8 x i16> %i.bfg, <8 x i16> %i.bht, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhv = icmp slt <16 x i16> %i.bhu, zeroinitializer
  %i.bhw = shufflevector <8 x i16> %i.bff, <8 x i16> %i.bhs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhx = select <16 x i1> %i.bhv, <16 x i16> %i.bhw, <16 x i16> zeroinitializer
  %i.bhy = shufflevector <8 x i16> %i.bfg, <8 x i16> %i.bht, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bhz = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.bhy, <16 x i16> zeroinitializer)
  %i.bia = or <16 x i16> %i.bhx, %i.bhz
  %i.bib = shufflevector <8 x i16> %i.bfe, <8 x i16> %i.bhr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bic = icmp slt <16 x i16> %i.bib, zeroinitializer
  %i.bid = shufflevector <8 x i16> %i.bfe, <8 x i16> %i.bhr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bie = add <16 x i16> %i.bid, splat (i16 3329)
  %i.bif = select <16 x i1> %i.bic, <16 x i16> %i.bie, <16 x i16> zeroinitializer
  %i.big = shufflevector <8 x i16> %i.bfe, <8 x i16> %i.bhr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bih = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.big, <16 x i16> zeroinitializer)
  %i.bii = or <16 x i16> %i.bif, %i.bih
  %interleaved.vec138 = shufflevector <16 x i16> %i.bia, <16 x i16> %i.bii, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec138, ptr %i.bcl, align 2, !tbaa !38, !alias.scope !125, !noalias !122
  %index.next139 = add nuw i64 %index135, 8       ; 2 uses
  %i.bij = icmp eq i64 %index.next139, 64
  br i1 %i.bij, label %middle.block140, label %vector.body134, !llvm.loop !127

scalar.ph132:                                     ; preds = %vector.memcheck126, %scalar.ph132
  %.020.idx.6 = phi i64 [ %.022.add.6.1, %scalar.ph132 ], [ 0, %vector.memcheck126 ] ; 5 uses
  %.1.6 = phi ptr [ %i.bil, %scalar.ph132 ], [ %.lcssa, %vector.memcheck126 ]
  %.020.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.6 ; 4 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.6
  %.ptr25.6 = getelementptr inbounds nuw i8, ptr %i.bik, i64 4
  %i.bil = getelementptr inbounds nuw i8, ptr %.1.6, i64 2 ; 2 uses
  %i.bim = load i16, ptr %i.bil, align 2, !tbaa !38
  %i.bin = zext i16 %i.bim to i32                 ; 2 uses
  %i.bio = load i16, ptr %.ptr25.6, align 2, !tbaa !38
  %i.bip = zext i16 %i.bio to i32
  %i.biq = mul nuw i32 %i.bip, %i.bin             ; 2 uses
  %i.bir = zext i32 %i.biq to i64
  %i.bis = mul nuw nsw i64 %i.bir, 5039
  %i.bit = lshr i64 %i.bis, 24
  %i.biu = trunc nuw nsw i64 %i.bit to i32
  %.neg.i.6 = mul i32 %i.biu, 62207
  %i.biv = add i32 %.neg.i.6, %i.biq
  %i.biw = trunc i32 %i.biv to i16                ; 2 uses
  %i.bix = add i16 %i.biw, -3329                  ; 2 uses
  %isneg.i.i.6 = icmp slt i16 %i.bix, 0
  %i.biy = select i1 %isneg.i.i.6, i16 %i.biw, i16 0
  %i.biz = tail call i16 @llvm.smax.i16(i16 %i.bix, i16 0)
  %i.bja = or i16 %i.biy, %i.biz                  ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %.020.ptr.6, i64 2
  %i.bjc = getelementptr inbounds nuw i8, ptr %0, i64 %.020.idx.6
  %.022.ptr.6.1 = getelementptr inbounds nuw i8, ptr %i.bjc, i64 6
  %i.bjd = load i16, ptr %.022.ptr.6.1, align 2, !tbaa !38
  %i.bje = zext i16 %i.bjd to i32
  %i.bjf = mul nuw i32 %i.bje, %i.bin             ; 2 uses
  %i.bjg = zext i32 %i.bjf to i64
  %i.bjh = mul nuw nsw i64 %i.bjg, 5039
  %i.bji = lshr i64 %i.bjh, 24
  %i.bjj = trunc nuw nsw i64 %i.bji to i32
  %.neg.i.6.1 = mul i32 %i.bjj, 62207
  %i.bjk = add i32 %.neg.i.6.1, %i.bjf
  %i.bjl = trunc i32 %i.bjk to i16                ; 2 uses
  %i.bjm = add i16 %i.bjl, -3329                  ; 2 uses
  %isneg.i.i.6.1 = icmp slt i16 %i.bjm, 0
  %i.bjn = select i1 %isneg.i.i.6.1, i16 %i.bjl, i16 0
  %i.bjo = tail call i16 @llvm.smax.i16(i16 %i.bjm, i16 0)
  %i.bjp = or i16 %i.bjn, %i.bjo                  ; 2 uses
  %.022.add.6.1 = add nuw nsw i64 %.020.idx.6, 8
  %i.bjq = load <2 x i16>, ptr %.020.ptr.6, align 2, !tbaa !38
  %i.bjr = load i16, ptr %i.bjb, align 2, !tbaa !38
  %i.bjs = load i16, ptr %.020.ptr.6, align 2, !tbaa !38
  %i.bjt = add i16 %i.bja, %i.bjs
  %i.bju = add i16 %i.bjp, %i.bjr
  %i.bjv = shufflevector <2 x i16> %i.bjq, <2 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.bjw = insertelement <4 x i16> %i.bjv, i16 %i.bjt, i64 0
  %i.bjx = insertelement <4 x i16> %i.bjw, i16 %i.bju, i64 1 ; 2 uses
  %i.bjy = insertelement <4 x i16> <i16 3329, i16 3329, i16 poison, i16 poison>, i16 %i.bja, i64 2
  %i.bjz = insertelement <4 x i16> %i.bjy, i16 %i.bjp, i64 3
  %i.bka = sub <4 x i16> %i.bjx, %i.bjz           ; 3 uses
  %i.bkb = icmp slt <4 x i16> %i.bka, zeroinitializer
  %i.bkc = add <4 x i16> %i.bka, <i16 poison, i16 poison, i16 3329, i16 3329>
  %i.bkd = shufflevector <4 x i16> %i.bkc, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bke = shufflevector <4 x i16> %i.bjx, <4 x i16> %i.bkd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bkf = select <4 x i1> %i.bkb, <4 x i16> %i.bke, <4 x i16> zeroinitializer
  %i.bkg = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bka, <4 x i16> zeroinitializer)
  %i.bkh = or <4 x i16> %i.bkf, %i.bkg
  store <4 x i16> %i.bkh, ptr %.020.ptr.6, align 2, !tbaa !38
  %i.bki = icmp samesign ult i64 %.020.idx.6, 504
  br i1 %i.bki, label %scalar.ph132, label %middle.block140, !llvm.loop !128

middle.block140:                                  ; preds = %vector.body134, %scalar.ph132
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @encrypt_cpa(ptr noundef nonnull writeonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = alloca [33 x i8], align 16               ; 6 uses
  %i.d = alloca [33 x i8], align 16               ; 6 uses
  %6 = alloca %struct.ossl_ml_kem_scalar_st, align 2 ; 15 uses
  %i.e = alloca [33 x i8], align 16               ; 5 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !17     ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48
  %i.i = icmp eq i32 %i.h, 1454
  %i.j = select i1 %i.i, ptr @cbd_3, ptr @cbd_2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18   ; 16 uses
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = getelementptr [512 x i8], ptr %3, i64 %i.m ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.r = load i32, ptr %i.q, align 8, !tbaa !83   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.083 = phi i8 [ 0, %bb.a ], [ %i.u, %bb.c ]    ; 2 uses
  %.09.i = phi i32 [ %i.l, %bb.a ], [ %i.w, %bb.c ] ; 2 uses
  %.08.i = phi ptr [ %3, %bb.a ], [ %i.v, %bb.c ] ; 3 uses
  store i8 %.083, ptr %i.s, align 16, !tbaa !44
  %i.t = call i32 %i.j(ptr noundef nonnull %.08.i, ptr noundef nonnull %i.d, ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !callees !49, !inline_history !50
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %gencbd_vector_ntt.exit.thread, label %bb.c

gencbd_vector_ntt.exit.thread:                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %scalar_encode.exit

bb.c:                                             ; preds = %bb.b
  %i.u = add i8 %.083, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i, i64 512
  call fastcc void @scalar_ntt(ptr noundef nonnull %.08.i)
  %i.w = add nsw i32 %.09.i, -1
  %i.x = icmp sgt i32 %.09.i, 1
  br i1 %i.x, label %bb.b, label %bb.d, !llvm.loop !51

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !9
  call fastcc void @inner_product(ptr noundef %6, ptr noundef %i.z, ptr noundef %3, i32 noundef %i.l)
  call fastcc void @scalar_inverse_ntt(ptr noundef %6)
  %i.aa = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.aa, label %.preheader.lr.ph.i, label %matrix_mult_intt.exit

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32
  %.not.i50 = icmp eq i32 %i.l, 1
  %i.ad = shl nuw nsw i64 %i.m, 9                 ; 4 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.l, i32 2)
  %i.ae = sub nsw i32 %i.l, %smin
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 9                ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1024             ; 2 uses
  %i.ai = getelementptr i8, ptr %3, i64 %i.ag
  %scevgep105 = getelementptr i8, ptr %i.ai, i64 1022 ; 2 uses
  %7 = getelementptr i8, ptr %3, <2 x i64> <i64 512, i64 514>
  %scevgep107 = getelementptr i8, ptr %3, i64 %i.ah ; 2 uses
  %i.aj = add nsw i32 %i.l, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nuw nsw i64 %i.m, %i.ak
  %i.am = shl nuw nsw i64 %i.al, 9                ; 2 uses
  %i.an = getelementptr i8, ptr %3, i64 %i.am
  %scevgep149 = getelementptr i8, ptr %i.an, i64 510 ; 5 uses
  %i.ao = getelementptr i8, ptr %3, i64 %i.ad
  %scevgep150 = getelementptr i8, ptr %i.ao, i64 2 ; 5 uses
  %i.ap = getelementptr i8, ptr %3, i64 %i.am
  %scevgep151 = getelementptr i8, ptr %i.ap, i64 512 ; 5 uses
  %scevgep153 = getelementptr i8, ptr %3, i64 510 ; 2 uses
  %scevgep154 = getelementptr i8, ptr %3, i64 2   ; 2 uses
  %scevgep155 = getelementptr i8, ptr %3, i64 512 ; 2 uses
  %i.aq = getelementptr i8, ptr %3, i64 %i.ad
  %i.ar = getelementptr i8, ptr %i.aq, i64 510
  %i.as = getelementptr i8, ptr %3, i64 %i.ad
  %i.at = getelementptr i8, ptr %i.as, i64 2
  %i.au = getelementptr i8, ptr %3, i64 %i.ad
  %i.av = getelementptr i8, ptr %i.au, i64 512
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
  %invariant.op285 = or i1 %invariant.op, %found.conflict169
  %bound0171 = icmp ult ptr %i.n, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1172 = icmp ugt ptr %scevgep149, @kModRoots
  %found.conflict173 = and i1 %bound0171, %bound1172
  %invariant.op286 = or i1 %invariant.op285, %found.conflict173
  %bound0179 = icmp ult ptr %scevgep150, %scevgep153
  %bound1180 = icmp ult ptr %3, %scevgep151
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0183 = icmp ult ptr %scevgep150, %scevgep155
  %bound1184 = icmp ult ptr %scevgep154, %scevgep151
  %found.conflict185 = and i1 %bound0183, %bound1184
  %invariant.op287 = or i1 %found.conflict181, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep150, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1188 = icmp ugt ptr %scevgep151, @kModRoots
  %found.conflict189 = and i1 %bound0187, %bound1188
  %invariant.op288 = or i1 %invariant.op287, %found.conflict189
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %scalar_mult.exit._crit_edge.i, %.preheader.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult.exit._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.in.i = phi i32 [ %i.ez, %scalar_mult.exit._crit_edge.i ], [ %i.l, %.preheader.lr.ph.i ] ; 2 uses
  %.01426.i = phi ptr [ %i.km, %scalar_mult.exit._crit_edge.i ], [ %i.n, %.preheader.lr.ph.i ] ; 8 uses
  %.01525.i = phi ptr [ %.1.lcssa.i, %scalar_mult.exit._crit_edge.i ], [ %i.ac, %.preheader.lr.ph.i ] ; 7 uses
  %i.aw = shl nuw nsw i64 %indvar, 9              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.aw ; 2 uses
  %scevgep101 = getelementptr i8, ptr %i.at, i64 %i.aw
  %scevgep102 = getelementptr i8, ptr %i.av, i64 %i.aw
  %scevgep152 = getelementptr i8, ptr %.01525.i, i64 512 ; 2 uses
  %bound0159 = icmp ult ptr %i.n, %scevgep152
  %bound1160 = icmp ult ptr %.01525.i, %scevgep149
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx174.reass = or i1 %found.conflict161, %invariant.op286
  %bound0175 = icmp ult ptr %scevgep150, %scevgep152
  %bound1176 = icmp ult ptr %.01525.i, %scevgep151
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174.reass, %found.conflict177
  %conflict.rdx190.reass = or i1 %conflict.rdx178, %invariant.op288
  br i1 %conflict.rdx190.reass, label %scalar.ph191, label %vector.body193

vector.body193:                                   ; preds = %.preheader.i, %vector.body193
  %index194 = phi i64 [ %index.next206, %vector.body193 ], [ 0, %.preheader.i ] ; 3 uses
  %i.ax = shl i64 %index194, 1
  %next.gep195 = getelementptr i8, ptr @kModRoots, i64 %i.ax
  %i.ay = shl i64 %index194, 2                    ; 3 uses
  %next.gep196 = getelementptr i8, ptr %3, i64 %i.ay
  %next.gep197 = getelementptr i8, ptr %.01525.i, i64 %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.ay
  %wide.vec198 = load <8 x i16>, ptr %next.gep197, align 2, !tbaa !38, !alias.scope !129 ; 2 uses
  %strided.vec199 = shufflevector <8 x i16> %wide.vec198, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec200 = shufflevector <8 x i16> %wide.vec198, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = zext <4 x i16> %strided.vec199 to <4 x i32> ; 2 uses
  %wide.vec201 = load <8 x i16>, ptr %next.gep196, align 2, !tbaa !38 ; 2 uses
  %strided.vec202 = shufflevector <8 x i16> %wide.vec201, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec203 = shufflevector <8 x i16> %wide.vec201, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bb = zext <4 x i16> %strided.vec202 to <4 x i32> ; 2 uses
  %i.bc = zext <4 x i16> %strided.vec200 to <4 x i32> ; 2 uses
  %i.bd = zext <4 x i16> %strided.vec203 to <4 x i32> ; 2 uses
  %wide.load204 = load <4 x i16>, ptr %next.gep195, align 8, !tbaa !38, !alias.scope !132
  %i.be = zext <4 x i16> %wide.load204 to <4 x i32>
  %i.bf = mul nuw <4 x i32> %i.bb, %i.ba
  %i.bg = mul nuw <4 x i32> %i.bd, %i.bc          ; 2 uses
  %i.bh = zext <4 x i32> %i.bg to <4 x i64>
  %i.bi = mul nuw nsw <4 x i64> %i.bh, splat (i64 5039)
  %i.bj = lshr <4 x i64> %i.bi, splat (i64 24)
  %i.bk = trunc nuw nsw <4 x i64> %i.bj to <4 x i32>
  %i.bl = mul <4 x i32> %i.bk, splat (i32 62207)
  %i.bm = add <4 x i32> %i.bl, %i.bg
  %i.bn = trunc <4 x i32> %i.bm to <4 x i16>      ; 2 uses
  %i.bo = add <4 x i16> %i.bn, splat (i16 -3329)  ; 2 uses
  %i.bp = icmp slt <4 x i16> %i.bo, zeroinitializer
  %i.bq = select <4 x i1> %i.bp, <4 x i16> %i.bn, <4 x i16> zeroinitializer
  %i.br = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bo, <4 x i16> zeroinitializer)
  %i.bs = or <4 x i16> %i.bq, %i.br
  %i.bt = zext <4 x i16> %i.bs to <4 x i32>
  %i.bu = mul nuw <4 x i32> %i.bt, %i.be
  %i.bv = add <4 x i32> %i.bu, %i.bf              ; 2 uses
  %i.bw = zext <4 x i32> %i.bv to <4 x i64>
  %i.bx = mul nuw nsw <4 x i64> %i.bw, splat (i64 5039)
  %i.by = lshr <4 x i64> %i.bx, splat (i64 24)
  %i.bz = trunc nuw nsw <4 x i64> %i.by to <4 x i32>
  %i.ca = mul <4 x i32> %i.bz, splat (i32 62207)
  %i.cb = add <4 x i32> %i.ca, %i.bv
  %i.cc = trunc <4 x i32> %i.cb to <4 x i16>      ; 2 uses
  %i.cd = add <4 x i16> %i.cc, splat (i16 -3329)  ; 2 uses
  %i.ce = icmp slt <4 x i16> %i.cd, zeroinitializer
  %i.cf = select <4 x i1> %i.ce, <4 x i16> %i.cc, <4 x i16> zeroinitializer
  %i.cg = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cd, <4 x i16> zeroinitializer)
  %i.ch = or <4 x i16> %i.cf, %i.cg
  %i.ci = mul nuw <4 x i32> %i.bd, %i.ba
  %i.cj = mul nuw <4 x i32> %i.bc, %i.bb
  %i.ck = add <4 x i32> %i.ci, %i.cj              ; 2 uses
  %i.cl = zext <4 x i32> %i.ck to <4 x i64>
  %i.cm = mul nuw nsw <4 x i64> %i.cl, splat (i64 5039)
  %i.cn = lshr <4 x i64> %i.cm, splat (i64 24)
  %i.co = trunc nuw nsw <4 x i64> %i.cn to <4 x i32>
  %i.cp = mul <4 x i32> %i.co, splat (i32 62207)
  %i.cq = add <4 x i32> %i.cp, %i.ck
  %i.cr = trunc <4 x i32> %i.cq to <4 x i16>      ; 2 uses
  %i.cs = add <4 x i16> %i.cr, splat (i16 -3329)  ; 2 uses
  %i.ct = icmp slt <4 x i16> %i.cs, zeroinitializer
  %i.cu = select <4 x i1> %i.ct, <4 x i16> %i.cr, <4 x i16> zeroinitializer
  %i.cv = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cs, <4 x i16> zeroinitializer)
  %i.cw = or <4 x i16> %i.cu, %i.cv
  %interleaved.vec205 = shufflevector <4 x i16> %i.ch, <4 x i16> %i.cw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec205, ptr %i.az, align 2, !tbaa !38
  %index.next206 = add nuw i64 %index194, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next206, 128
  br i1 %i.cx, label %scalar_mult.exit.preheader.i, label %vector.body193, !llvm.loop !134

scalar.ph191:                                     ; preds = %.preheader.i, %scalar.ph191
  %.023.i.i = phi ptr [ %i.df, %scalar.ph191 ], [ @kModRoots, %.preheader.i ] ; 2 uses
  %.022.i.i = phi ptr [ %i.dd, %scalar.ph191 ], [ %3, %.preheader.i ] ; 3 uses
  %.021.i.i = phi ptr [ %i.dc, %scalar.ph191 ], [ %.01525.i, %.preheader.i ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph191 ], [ 0, %.preheader.i ] ; 3 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 2
  %i.da = load i16, ptr %.022.i.i, align 2, !tbaa !38
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4
  %i.de = load i16, ptr %i.cz, align 2, !tbaa !38
  %i.df = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 2
  %i.dg = load i16, ptr %.023.i.i, align 2, !tbaa !38
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  %i.dh = load i16, ptr %i.cy, align 2, !tbaa !38
  %i.di = load i16, ptr %.021.i.i, align 2, !tbaa !38
  %i.dj = zext i16 %i.dh to i32                   ; 2 uses
  %i.dk = zext i16 %i.de to i32                   ; 2 uses
  %i.dl = zext i16 %i.di to i32                   ; 2 uses
  %i.dm = zext i16 %i.dg to i32
  %i.dn = mul nuw i32 %i.dk, %i.dj                ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = mul nuw nsw i64 %i.do, 5039
  %i.dq = lshr i64 %i.dp, 24
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %.neg.i.i.i = mul i32 %i.dr, 62207
  %i.ds = add i32 %.neg.i.i.i, %i.dn
  %i.dt = trunc i32 %i.ds to i16                  ; 2 uses
  %i.du = add i16 %i.dt, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.du, 0
  %i.dv = select i1 %isneg.i.i.i.i, i16 %i.dt, i16 0
  %i.dw = call i16 @llvm.smax.i16(i16 %i.du, i16 0)
  %i.dx = or i16 %i.dv, %i.dw
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nuw i32 %i.dk, %i.dl
  %i.ea = mul nuw i32 %i.dy, %i.dm
  %i.eb = mul nuw i32 %i.dj, %i.db
  %i.ec = mul nuw i32 %i.db, %i.dl
  %i.ed = add i32 %i.dz, %i.eb                    ; 2 uses
  %i.ee = add i32 %i.ea, %i.ec                    ; 2 uses
  %i.ef = zext i32 %i.ed to i64
  %i.eg = zext i32 %i.ee to i64
  %i.eh = mul nuw nsw i64 %i.ef, 5039
  %i.ei = mul nuw nsw i64 %i.eg, 5039
  %i.ej = lshr i64 %i.eh, 24
  %i.ek = lshr i64 %i.ei, 24
  %i.el = trunc nuw nsw i64 %i.ej to i32
  %i.em = trunc nuw nsw i64 %i.ek to i32
  %.neg.i26.i.i = mul i32 %i.el, 62207
  %.neg.i24.i.i = mul i32 %i.em, 62207
  %i.en = insertelement <2 x i32> poison, i32 %.neg.i24.i.i, i64 0
  %i.eo = insertelement <2 x i32> %i.en, i32 %.neg.i26.i.i, i64 1
  %i.ep = insertelement <2 x i32> poison, i32 %i.ee, i64 0
  %i.eq = insertelement <2 x i32> %i.ep, i32 %i.ed, i64 1
  %i.er = add <2 x i32> %i.eo, %i.eq
  %i.es = trunc <2 x i32> %i.er to <2 x i16>      ; 2 uses
  %i.et = add <2 x i16> %i.es, splat (i16 -3329)  ; 2 uses
  %i.eu = icmp slt <2 x i16> %i.et, zeroinitializer
  %i.ev = select <2 x i1> %i.eu, <2 x i16> %i.es, <2 x i16> zeroinitializer
  %i.ew = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.et, <2 x i16> zeroinitializer)
  %i.ex = or <2 x i16> %i.ev, %i.ew
  store <2 x i16> %i.ex, ptr %.0.ptr.i.i, align 2, !tbaa !38
  %i.ey = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.ey, label %scalar.ph191, label %scalar_mult.exit.preheader.i, !llvm.loop !135

scalar_mult.exit.preheader.i:                     ; preds = %vector.body193, %scalar.ph191
  %i.ez = add nsw i32 %.in.i, -1
  %.121.i = getelementptr i8, ptr %.01525.i, i64 512 ; 4 uses
  br i1 %.not.i50, label %scalar_mult.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult.exit.preheader.i
  %scevgep103 = getelementptr i8, ptr %.01525.i, i64 %i.ah ; 2 uses
  %i.fa = insertelement <4 x ptr> poison, ptr %.01426.i, i64 0
  %i.fb = shufflevector <4 x ptr> %i.fa, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fc = insertelement <4 x ptr> poison, ptr %scevgep102, i64 0 ; 2 uses
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %scevgep103, i64 1
  %i.fe = insertelement <4 x ptr> %i.fd, ptr %scevgep105, i64 2
  %i.ff = insertelement <4 x ptr> %i.fe, ptr %scevgep107, i64 3
  %i.fg = insertelement <4 x ptr> poison, ptr %scevgep101, i64 0 ; 2 uses
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %.121.i, i64 1
  %i.fi = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.fj = shufflevector <4 x ptr> %i.fi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fk = shufflevector <4 x ptr> %i.fg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fl = insertelement <4 x ptr> <ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)>, ptr %scevgep103, i64 0
  %i.fm = insertelement <4 x ptr> %i.fl, ptr %scevgep105, i64 1
  %i.fn = insertelement <4 x ptr> %i.fm, ptr %scevgep107, i64 2
  %i.fo = insertelement <4 x ptr> poison, ptr %.121.i, i64 0
  %9 = shufflevector <4 x ptr> %i.fc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %10 = shufflevector <4 x ptr> %i.fh, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %11 = shufflevector <4 x ptr> %i.fo, <4 x ptr> %8, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.fp = icmp ult <4 x ptr> %i.fb, %i.ff
  %i.fq = icmp ult <4 x ptr> %10, %i.fj
  %i.fr = and <4 x i1> %i.fp, %i.fq
  %bound0119 = icmp ult ptr %.01426.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1120 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.fs = icmp ult <4 x ptr> %i.fk, %i.fn
  %12 = insertelement <4 x ptr> %11, ptr @kModRoots, i64 3
  %i.ft = icmp ult <4 x ptr> %12, %9
  %i.fu = and <4 x i1> %i.fs, %i.ft
  %rdx.op = or <4 x i1> %i.fr, %i.fu
  %i.fv = bitcast <4 x i1> %rdx.op to i4
  %i.fw = icmp ne i4 %i.fv, 0
  %op.rdx = or i1 %i.fw, %found.conflict121
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit.i
  %.124.i = phi ptr [ %.1.i, %scalar_mult_add.exit.i ], [ %.121.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0.in23.i = phi i32 [ %.0.i51, %scalar_mult_add.exit.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01322.i = phi ptr [ %i.fx, %scalar_mult_add.exit.i ], [ %3, %.lr.ph.i.preheader ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.01322.i, i64 512 ; 3 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.fy = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.fy
  %i.fz = shl i64 %index, 2                       ; 3 uses
  %next.gep139 = getelementptr i8, ptr %i.fx, i64 %i.fz
  %next.gep140 = getelementptr i8, ptr %.124.i, i64 %i.fz
  %i.ga = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.fz ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep140, align 2, !tbaa !38, !alias.scope !136 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec141 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gb = zext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %wide.vec142 = load <8 x i16>, ptr %next.gep139, align 2, !tbaa !38 ; 2 uses
  %strided.vec143 = shufflevector <8 x i16> %wide.vec142, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec144 = shufflevector <8 x i16> %wide.vec142, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gc = zext <4 x i16> %strided.vec143 to <4 x i32> ; 2 uses
  %i.gd = zext <4 x i16> %strided.vec141 to <4 x i32> ; 2 uses
  %i.ge = zext <4 x i16> %strided.vec144 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !38, !alias.scope !139
  %i.gf = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec145 = load <8 x i16>, ptr %i.ga, align 2, !tbaa !38 ; 2 uses
  %strided.vec146 = shufflevector <8 x i16> %wide.vec145, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec147 = shufflevector <8 x i16> %wide.vec145, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gg = zext <4 x i16> %strided.vec146 to <4 x i32>
  %i.gh = mul nuw <4 x i32> %i.gc, %i.gb
  %i.gi = add nuw <4 x i32> %i.gh, %i.gg
  %i.gj = mul nuw <4 x i32> %i.ge, %i.gd          ; 2 uses
  %i.gk = zext <4 x i32> %i.gj to <4 x i64>
  %i.gl = mul nuw nsw <4 x i64> %i.gk, splat (i64 5039)
  %i.gm = lshr <4 x i64> %i.gl, splat (i64 24)
  %i.gn = trunc nuw nsw <4 x i64> %i.gm to <4 x i32>
  %i.go = mul <4 x i32> %i.gn, splat (i32 62207)
  %i.gp = add <4 x i32> %i.go, %i.gj
  %i.gq = trunc <4 x i32> %i.gp to <4 x i16>      ; 2 uses
  %i.gr = add <4 x i16> %i.gq, splat (i16 -3329)  ; 2 uses
  %i.gs = icmp slt <4 x i16> %i.gr, zeroinitializer
  %i.gt = select <4 x i1> %i.gs, <4 x i16> %i.gq, <4 x i16> zeroinitializer
  %i.gu = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gr, <4 x i16> zeroinitializer)
  %i.gv = or <4 x i16> %i.gt, %i.gu
  %i.gw = zext <4 x i16> %i.gv to <4 x i32>
  %i.gx = mul nuw <4 x i32> %i.gw, %i.gf
  %i.gy = add <4 x i32> %i.gi, %i.gx              ; 2 uses
  %i.gz = zext <4 x i32> %i.gy to <4 x i64>
  %i.ha = mul nuw nsw <4 x i64> %i.gz, splat (i64 5039)
  %i.hb = lshr <4 x i64> %i.ha, splat (i64 24)
  %i.hc = trunc nuw nsw <4 x i64> %i.hb to <4 x i32>
  %i.hd = mul <4 x i32> %i.hc, splat (i32 62207)
  %i.he = add <4 x i32> %i.hd, %i.gy
  %i.hf = trunc <4 x i32> %i.he to <4 x i16>      ; 2 uses
  %i.hg = add <4 x i16> %i.hf, splat (i16 -3329)  ; 2 uses
  %i.hh = icmp slt <4 x i16> %i.hg, zeroinitializer
  %i.hi = select <4 x i1> %i.hh, <4 x i16> %i.hf, <4 x i16> zeroinitializer
  %i.hj = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hg, <4 x i16> zeroinitializer)
  %i.hk = or <4 x i16> %i.hi, %i.hj
  %i.hl = zext <4 x i16> %strided.vec147 to <4 x i32>
  %i.hm = mul nuw <4 x i32> %i.ge, %i.gb
  %i.hn = mul nuw <4 x i32> %i.gd, %i.gc
  %i.ho = add <4 x i32> %i.hm, %i.hn
  %i.hp = add <4 x i32> %i.ho, %i.hl              ; 2 uses
  %i.hq = zext <4 x i32> %i.hp to <4 x i64>
  %i.hr = mul nuw nsw <4 x i64> %i.hq, splat (i64 5039)
  %i.hs = lshr <4 x i64> %i.hr, splat (i64 24)
  %i.ht = trunc nuw nsw <4 x i64> %i.hs to <4 x i32>
  %i.hu = mul <4 x i32> %i.ht, splat (i32 62207)
  %i.hv = add <4 x i32> %i.hu, %i.hp
  %i.hw = trunc <4 x i32> %i.hv to <4 x i16>      ; 2 uses
  %i.hx = add <4 x i16> %i.hw, splat (i16 -3329)  ; 2 uses
  %i.hy = icmp slt <4 x i16> %i.hx, zeroinitializer
  %i.hz = select <4 x i1> %i.hy, <4 x i16> %i.hw, <4 x i16> zeroinitializer
  %i.ia = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hx, <4 x i16> zeroinitializer)
  %i.ib = or <4 x i16> %i.hz, %i.ia
  %interleaved.vec = shufflevector <4 x i16> %i.hk, <4 x i16> %i.ib, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.ga, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ic = icmp eq i64 %index.next, 128
  br i1 %i.ic, label %scalar_mult_add.exit.i, label %vector.body, !llvm.loop !141

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i.i = phi ptr [ %i.im, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i.i = phi ptr [ %i.ii, %scalar.ph ], [ %i.fx, %.lr.ph.i ] ; 3 uses
  %.025.i.i = phi ptr [ %i.ih, %scalar.ph ], [ %.124.i, %.lr.ph.i ] ; 3 uses
  %.0.idx.i16.i = phi i64 [ %.0.add.i18.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0.ptr.i17.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i16.i ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.ie = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.if = load i16, ptr %.026.i.i, align 2, !tbaa !38
  %i.ig = zext i16 %i.if to i32                   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.ij = load i16, ptr %i.ie, align 2, !tbaa !38
  %i.ik = zext i16 %i.ij to i32                   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0.ptr.i17.i, i64 2
  %.0.add.i18.i = add nuw nsw i64 %.0.idx.i16.i, 4
  %i.im = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.in = load i16, ptr %.027.i.i, align 2, !tbaa !38
  %i.io = zext i16 %i.in to i32
  %i.ip = load i16, ptr %.0.ptr.i17.i, align 2, !tbaa !38
  %i.iq = zext i16 %i.ip to i32
  %i.ir = load i16, ptr %i.il, align 2, !tbaa !38
  %i.is = zext i16 %i.ir to i32
  %i.it = load i16, ptr %i.id, align 2, !tbaa !38
  %i.iu = load i16, ptr %.025.i.i, align 2, !tbaa !38
  %i.iv = zext i16 %i.it to i32                   ; 2 uses
  %i.iw = zext i16 %i.iu to i32                   ; 2 uses
  %i.ix = mul nuw i32 %i.ik, %i.iv                ; 2 uses
  %i.iy = zext i32 %i.ix to i64
  %i.iz = mul nuw nsw i64 %i.iy, 5039
  %i.ja = lshr i64 %i.iz, 24
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %.neg.i.i19.i = mul i32 %i.jb, 62207
  %i.jc = add i32 %.neg.i.i19.i, %i.ix
  %i.jd = trunc i32 %i.jc to i16                  ; 2 uses
  %i.je = add i16 %i.jd, -3329                    ; 2 uses
  %isneg.i.i.i20.i = icmp slt i16 %i.je, 0
  %i.jf = select i1 %isneg.i.i.i20.i, i16 %i.jd, i16 0
  %i.jg = call i16 @llvm.smax.i16(i16 %i.je, i16 0)
  %i.jh = or i16 %i.jf, %i.jg
  %i.ji = zext i16 %i.jh to i32
  %i.jj = mul nuw i32 %i.ji, %i.io
  %i.jk = mul nuw i32 %i.ik, %i.iw
  %i.jl = mul nuw i32 %i.iv, %i.ig
  %i.jm = mul nuw i32 %i.ig, %i.iw
  %i.jn = add i32 %i.jk, %i.jl
  %i.jo = add nuw i32 %i.jm, %i.iq
  %i.jp = add i32 %i.jn, %i.is                    ; 2 uses
  %i.jq = add i32 %i.jo, %i.jj                    ; 2 uses
  %i.jr = zext i32 %i.jp to i64
  %i.js = zext i32 %i.jq to i64
  %i.jt = mul nuw nsw i64 %i.jr, 5039
  %i.ju = mul nuw nsw i64 %i.js, 5039
  %i.jv = lshr i64 %i.jt, 24
  %i.jw = lshr i64 %i.ju, 24
  %i.jx = trunc nuw nsw i64 %i.jv to i32
  %i.jy = trunc nuw nsw i64 %i.jw to i32
  %.neg.i30.i.i = mul i32 %i.jx, 62207
  %.neg.i28.i.i = mul i32 %i.jy, 62207
  %i.jz = insertelement <2 x i32> poison, i32 %.neg.i28.i.i, i64 0
  %i.ka = insertelement <2 x i32> %i.jz, i32 %.neg.i30.i.i, i64 1
  %i.kb = insertelement <2 x i32> poison, i32 %i.jq, i64 0
  %i.kc = insertelement <2 x i32> %i.kb, i32 %i.jp, i64 1
  %i.kd = add <2 x i32> %i.ka, %i.kc
  %i.ke = trunc <2 x i32> %i.kd to <2 x i16>      ; 2 uses
  %i.kf = add <2 x i16> %i.ke, splat (i16 -3329)  ; 2 uses
  %i.kg = icmp slt <2 x i16> %i.kf, zeroinitializer
  %i.kh = select <2 x i1> %i.kg, <2 x i16> %i.ke, <2 x i16> zeroinitializer
  %i.ki = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.kf, <2 x i16> zeroinitializer)
  %i.kj = or <2 x i16> %i.kh, %i.ki
  store <2 x i16> %i.kj, ptr %.0.ptr.i17.i, align 2, !tbaa !38
  %i.kk = icmp samesign ult i64 %.0.idx.i16.i, 508
  br i1 %i.kk, label %scalar.ph, label %scalar_mult_add.exit.i, !llvm.loop !142

scalar_mult_add.exit.i:                           ; preds = %vector.body, %scalar.ph
  %.0.i51 = add nsw i32 %.0.in23.i, -1
  %.1.i = getelementptr inbounds nuw i8, ptr %.124.i, i64 512 ; 2 uses
  %i.kl = icmp sgt i32 %.0.in23.i, 2
  br i1 %i.kl, label %.lr.ph.i, label %scalar_mult.exit._crit_edge.i, !llvm.loop !143

scalar_mult.exit._crit_edge.i:                    ; preds = %scalar_mult_add.exit.i, %scalar_mult.exit.preheader.i
  %.1.lcssa.i = phi ptr [ %.121.i, %scalar_mult.exit.preheader.i ], [ %.1.i, %scalar_mult_add.exit.i ]
  call fastcc void @scalar_inverse_ntt(ptr noundef %.01426.i)
  %i.km = getelementptr i8, ptr %.01426.i, i64 512
  %i.kn = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kn, label %.preheader.i, label %matrix_mult_intt.exit, !llvm.loop !144

matrix_mult_intt.exit:                            ; preds = %scalar_mult.exit._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.kp = getelementptr i8, ptr %5, i64 24        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %middle.block215, %matrix_mult_intt.exit
  %.1 = phi i8 [ %i.u, %matrix_mult_intt.exit ], [ %i.kq, %middle.block215 ] ; 2 uses
  %.08.i52 = phi i32 [ %i.l, %matrix_mult_intt.exit ], [ %i.lz, %middle.block215 ] ; 2 uses
  %.07.i = phi ptr [ %3, %matrix_mult_intt.exit ], [ %i.ly, %middle.block215 ] ; 2 uses
  %i.kq = add i8 %.1, 1                           ; 2 uses
  store i8 %.1, ptr %i.ko, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.val.i.i = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = call fastcc i32 @prf(ptr noundef %i.b, i64 noundef 128, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr %.val.i.i)
  %.not.i.i = icmp eq i32 %i.kr, 0
  br i1 %.not.i.i, label %gencbd_vector.exit.thread, label %vector.body210

vector.body210:                                   ; preds = %bb.e, %vector.body210
  %index211 = phi i64 [ %index.next214, %vector.body210 ], [ 0, %bb.e ] ; 3 uses
end_hunk_0
