inline.NumInlined: 100
inline.NumDeleted: 46
begin_hunk_0_@scalar_ntt:bb.a
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
define internal fastcc range(i32 0, 2) i32 @encrypt_cpa(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) unnamed_addr #0 {
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
  %i.ax = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %scalar_mult.exit._crit_edge.i, %.preheader.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult.exit._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.in.i = phi i32 [ %i.fh, %scalar_mult.exit._crit_edge.i ], [ %i.l, %.preheader.lr.ph.i ] ; 2 uses
  %.01426.i = phi ptr [ %i.lf, %scalar_mult.exit._crit_edge.i ], [ %i.n, %.preheader.lr.ph.i ] ; 8 uses
  %.01525.i = phi ptr [ %.1.lcssa.i, %scalar_mult.exit._crit_edge.i ], [ %i.ac, %.preheader.lr.ph.i ] ; 7 uses
  %i.ay = shl nuw nsw i64 %indvar, 9              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.ay ; 2 uses
  %scevgep101 = getelementptr i8, ptr %i.au, i64 %i.ay
  %scevgep102 = getelementptr i8, ptr %i.aw, i64 %i.ay
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
  %i.az = shl i64 %index194, 1
  %next.gep195 = getelementptr i8, ptr @kModRoots, i64 %i.az
  %i.ba = shl i64 %index194, 2                    ; 3 uses
  %next.gep196 = getelementptr i8, ptr %3, i64 %i.ba
  %next.gep197 = getelementptr i8, ptr %.01525.i, i64 %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.ba
  %wide.vec198 = load <8 x i16>, ptr %next.gep197, align 2, !tbaa !38, !alias.scope !129
  %i.bc = freeze <8 x i16> %wide.vec198           ; 2 uses
  %i.bd = bitcast <8 x i16> %i.bc to <4 x i32>
  %i.be = bitcast <8 x i16> %i.bc to <4 x i32>
  %i.bf = and <4 x i32> %i.be, splat (i32 65535)  ; 2 uses
  %i.bg = lshr <4 x i32> %i.bd, splat (i32 16)    ; 2 uses
  %wide.vec201 = load <8 x i16>, ptr %next.gep196, align 2, !tbaa !38
  %i.bh = freeze <8 x i16> %wide.vec201           ; 2 uses
  %i.bi = bitcast <8 x i16> %i.bh to <4 x i32>
  %i.bj = bitcast <8 x i16> %i.bh to <4 x i32>
  %i.bk = and <4 x i32> %i.bj, splat (i32 65535)  ; 2 uses
  %i.bl = lshr <4 x i32> %i.bi, splat (i32 16)    ; 2 uses
  %wide.load204 = load <4 x i16>, ptr %next.gep195, align 8, !tbaa !38, !alias.scope !132
  %i.bm = zext <4 x i16> %wide.load204 to <4 x i32>
  %i.bn = mul nuw <4 x i32> %i.bk, %i.bf
  %i.bo = mul nuw <4 x i32> %i.bl, %i.bg          ; 2 uses
  %i.bp = zext <4 x i32> %i.bo to <4 x i64>
  %i.bq = mul nuw nsw <4 x i64> %i.bp, splat (i64 5039)
  %i.br = lshr <4 x i64> %i.bq, splat (i64 24)
  %i.bs = trunc nuw nsw <4 x i64> %i.br to <4 x i32>
  %i.bt = mul <4 x i32> %i.bs, splat (i32 62207)
  %i.bu = add <4 x i32> %i.bt, %i.bo
  %i.bv = trunc <4 x i32> %i.bu to <4 x i16>      ; 2 uses
  %i.bw = add <4 x i16> %i.bv, splat (i16 -3329)  ; 2 uses
  %i.bx = icmp slt <4 x i16> %i.bw, zeroinitializer
  %i.by = select <4 x i1> %i.bx, <4 x i16> %i.bv, <4 x i16> zeroinitializer
  %i.bz = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bw, <4 x i16> zeroinitializer)
  %i.ca = or <4 x i16> %i.by, %i.bz
  %i.cb = zext <4 x i16> %i.ca to <4 x i32>
  %i.cc = mul nuw <4 x i32> %i.cb, %i.bm
  %i.cd = add <4 x i32> %i.cc, %i.bn              ; 2 uses
  %i.ce = zext <4 x i32> %i.cd to <4 x i64>
  %i.cf = mul nuw nsw <4 x i64> %i.ce, splat (i64 5039)
  %i.cg = lshr <4 x i64> %i.cf, splat (i64 24)
  %i.ch = trunc nuw nsw <4 x i64> %i.cg to <4 x i32>
  %i.ci = mul <4 x i32> %i.ch, splat (i32 62207)
  %i.cj = add <4 x i32> %i.ci, %i.cd
  %i.ck = trunc <4 x i32> %i.cj to <4 x i16>      ; 2 uses
  %i.cl = add <4 x i16> %i.ck, splat (i16 -3329)  ; 2 uses
  %i.cm = icmp slt <4 x i16> %i.cl, zeroinitializer
  %i.cn = select <4 x i1> %i.cm, <4 x i16> %i.ck, <4 x i16> zeroinitializer
  %i.co = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cl, <4 x i16> zeroinitializer)
  %i.cp = or <4 x i16> %i.cn, %i.co
  %i.cq = mul nuw <4 x i32> %i.bl, %i.bf
  %i.cr = mul nuw <4 x i32> %i.bg, %i.bk
  %i.cs = add <4 x i32> %i.cq, %i.cr              ; 2 uses
  %i.ct = zext <4 x i32> %i.cs to <4 x i64>
  %i.cu = mul nuw nsw <4 x i64> %i.ct, splat (i64 5039)
  %i.cv = lshr <4 x i64> %i.cu, splat (i64 24)
  %i.cw = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.cx = mul <4 x i32> %i.cw, splat (i32 62207)
  %i.cy = add <4 x i32> %i.cx, %i.cs
  %i.cz = trunc <4 x i32> %i.cy to <4 x i16>      ; 2 uses
  %i.da = add <4 x i16> %i.cz, splat (i16 -3329)  ; 2 uses
  %i.db = icmp slt <4 x i16> %i.da, zeroinitializer
  %i.dc = select <4 x i1> %i.db, <4 x i16> %i.cz, <4 x i16> zeroinitializer
  %i.dd = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.da, <4 x i16> zeroinitializer)
  %i.de = or <4 x i16> %i.dc, %i.dd
  %interleaved.vec205 = shufflevector <4 x i16> %i.cp, <4 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec205, ptr %i.bb, align 2, !tbaa !38
  %index.next206 = add nuw i64 %index194, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next206, 128
  br i1 %i.df, label %scalar_mult.exit.preheader.i, label %vector.body193, !llvm.loop !134

scalar.ph191:                                     ; preds = %.preheader.i, %scalar.ph191
  %.023.i.i = phi ptr [ %i.dn, %scalar.ph191 ], [ @kModRoots, %.preheader.i ] ; 2 uses
  %.022.i.i = phi ptr [ %i.dl, %scalar.ph191 ], [ %3, %.preheader.i ] ; 3 uses
  %.021.i.i = phi ptr [ %i.dk, %scalar.ph191 ], [ %.01525.i, %.preheader.i ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph191 ], [ 0, %.preheader.i ] ; 3 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 2
  %i.di = load i16, ptr %.022.i.i, align 2, !tbaa !38
  %i.dj = zext i16 %i.di to i32                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4
  %i.dm = load i16, ptr %i.dh, align 2, !tbaa !38
  %i.dn = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 2
  %i.do = load i16, ptr %.023.i.i, align 2, !tbaa !38
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  %i.dp = load i16, ptr %i.dg, align 2, !tbaa !38
  %i.dq = load i16, ptr %.021.i.i, align 2, !tbaa !38
  %i.dr = zext i16 %i.dp to i32                   ; 2 uses
  %i.ds = zext i16 %i.dm to i32                   ; 2 uses
  %i.dt = zext i16 %i.dq to i32                   ; 2 uses
  %i.du = zext i16 %i.do to i32
  %i.dv = mul nuw i32 %i.ds, %i.dr                ; 2 uses
  %i.dw = zext i32 %i.dv to i64
  %i.dx = mul nuw nsw i64 %i.dw, 5039
  %i.dy = lshr i64 %i.dx, 24
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %.neg.i.i.i = mul i32 %i.dz, 62207
  %i.ea = add i32 %.neg.i.i.i, %i.dv
  %i.eb = trunc i32 %i.ea to i16                  ; 2 uses
  %i.ec = add i16 %i.eb, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.ec, 0
  %i.ed = select i1 %isneg.i.i.i.i, i16 %i.eb, i16 0
  %i.ee = call i16 @llvm.smax.i16(i16 %i.ec, i16 0)
  %i.ef = or i16 %i.ed, %i.ee
  %i.eg = zext i16 %i.ef to i32
  %i.eh = mul nuw i32 %i.ds, %i.dt
  %i.ei = mul nuw i32 %i.eg, %i.du
  %i.ej = mul nuw i32 %i.dr, %i.dj
  %i.ek = mul nuw i32 %i.dj, %i.dt
  %i.el = add i32 %i.eh, %i.ej                    ; 2 uses
  %i.em = add i32 %i.ei, %i.ek                    ; 2 uses
  %i.en = zext i32 %i.el to i64
  %i.eo = zext i32 %i.em to i64
  %i.ep = mul nuw nsw i64 %i.en, 5039
  %i.eq = mul nuw nsw i64 %i.eo, 5039
  %i.er = lshr i64 %i.ep, 24
  %i.es = lshr i64 %i.eq, 24
  %i.et = trunc nuw nsw i64 %i.er to i32
  %i.eu = trunc nuw nsw i64 %i.es to i32
  %.neg.i26.i.i = mul i32 %i.et, 62207
  %.neg.i24.i.i = mul i32 %i.eu, 62207
  %i.ev = insertelement <2 x i32> poison, i32 %.neg.i24.i.i, i64 0
  %i.ew = insertelement <2 x i32> %i.ev, i32 %.neg.i26.i.i, i64 1
  %i.ex = insertelement <2 x i32> poison, i32 %i.em, i64 0
  %i.ey = insertelement <2 x i32> %i.ex, i32 %i.el, i64 1
  %i.ez = add <2 x i32> %i.ew, %i.ey
  %i.fa = trunc <2 x i32> %i.ez to <2 x i16>      ; 2 uses
  %i.fb = add <2 x i16> %i.fa, splat (i16 -3329)  ; 2 uses
  %i.fc = icmp slt <2 x i16> %i.fb, zeroinitializer
  %i.fd = select <2 x i1> %i.fc, <2 x i16> %i.fa, <2 x i16> zeroinitializer
  %i.fe = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.fb, <2 x i16> zeroinitializer)
  %i.ff = or <2 x i16> %i.fd, %i.fe
  store <2 x i16> %i.ff, ptr %.0.ptr.i.i, align 2, !tbaa !38
  %i.fg = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.fg, label %scalar.ph191, label %scalar_mult.exit.preheader.i, !llvm.loop !135

scalar_mult.exit.preheader.i:                     ; preds = %vector.body193, %scalar.ph191
  %i.fh = add nsw i32 %.in.i, -1
  %.121.i = getelementptr i8, ptr %.01525.i, i64 512 ; 4 uses
  br i1 %.not.i50, label %scalar_mult.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult.exit.preheader.i
  %scevgep103 = getelementptr i8, ptr %.01525.i, i64 %i.ah ; 2 uses
  %i.fi = insertelement <4 x ptr> poison, ptr %.01426.i, i64 0
  %i.fj = shufflevector <4 x ptr> %i.fi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fk = insertelement <4 x ptr> poison, ptr %scevgep102, i64 0 ; 2 uses
  %i.fl = insertelement <4 x ptr> %i.fk, ptr %scevgep103, i64 1
  %i.fm = insertelement <4 x ptr> %i.fl, ptr %scevgep105, i64 2
  %i.fn = insertelement <4 x ptr> %i.fm, ptr %scevgep107, i64 3
  %i.fo = insertelement <4 x ptr> poison, ptr %scevgep101, i64 0 ; 2 uses
  %i.fp = insertelement <4 x ptr> %i.fo, ptr %.121.i, i64 1
  %i.fq = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.fr = shufflevector <4 x ptr> %i.fq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fs = shufflevector <4 x ptr> %i.fo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %7 = insertelement <4 x ptr> <ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)>, ptr %scevgep103, i64 0
  %8 = insertelement <4 x ptr> %7, ptr %scevgep105, i64 1
  %i.ft = insertelement <4 x ptr> %8, ptr %scevgep107, i64 2
  %i.fu = insertelement <4 x ptr> poison, ptr %.121.i, i64 0
  %i.fv = shufflevector <4 x ptr> %i.fk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fw = shufflevector <4 x ptr> %i.fp, <4 x ptr> %i.ax, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fx = shufflevector <4 x ptr> %i.fu, <4 x ptr> %i.ax, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.fy = icmp ult <4 x ptr> %i.fj, %i.fn
  %i.fz = icmp ult <4 x ptr> %i.fw, %i.fr
  %i.ga = and <4 x i1> %i.fy, %i.fz
  %bound0119 = icmp ult ptr %.01426.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1120 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.gb = icmp ult <4 x ptr> %i.fs, %i.ft
  %i.gc = insertelement <4 x ptr> %i.fx, ptr @kModRoots, i64 3
  %i.gd = icmp ult <4 x ptr> %i.gc, %i.fv
  %i.ge = and <4 x i1> %i.gb, %i.gd
  %rdx.op = or <4 x i1> %i.ga, %i.ge
  %i.gf = bitcast <4 x i1> %rdx.op to i4
  %i.gg = icmp ne i4 %i.gf, 0
  %op.rdx = or i1 %i.gg, %found.conflict121
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit.i
  %.124.i = phi ptr [ %.1.i, %scalar_mult_add.exit.i ], [ %.121.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0.in23.i = phi i32 [ %.0.i51, %scalar_mult_add.exit.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01322.i = phi ptr [ %i.gh, %scalar_mult_add.exit.i ], [ %3, %.lr.ph.i.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.01322.i, i64 512 ; 3 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.gi = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.gi
  %i.gj = shl i64 %index, 2                       ; 3 uses
  %next.gep139 = getelementptr i8, ptr %i.gh, i64 %i.gj
  %next.gep140 = getelementptr i8, ptr %.124.i, i64 %i.gj
  %i.gk = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.gj ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep140, align 2, !tbaa !38, !alias.scope !136
  %i.gl = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.gm = bitcast <8 x i16> %i.gl to <4 x i32>
  %i.gn = bitcast <8 x i16> %i.gl to <4 x i32>
  %i.go = and <4 x i32> %i.gn, splat (i32 65535)  ; 2 uses
  %i.gp = lshr <4 x i32> %i.gm, splat (i32 16)    ; 2 uses
  %wide.vec142 = load <8 x i16>, ptr %next.gep139, align 2, !tbaa !38
  %i.gq = freeze <8 x i16> %wide.vec142           ; 2 uses
  %i.gr = bitcast <8 x i16> %i.gq to <4 x i32>
  %i.gs = bitcast <8 x i16> %i.gq to <4 x i32>
  %i.gt = and <4 x i32> %i.gs, splat (i32 65535)  ; 2 uses
  %i.gu = lshr <4 x i32> %i.gr, splat (i32 16)    ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !38, !alias.scope !139
  %i.gv = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec145 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !38
  %i.gw = freeze <8 x i16> %wide.vec145           ; 2 uses
  %i.gx = bitcast <8 x i16> %i.gw to <4 x i32>
  %i.gy = bitcast <8 x i16> %i.gw to <4 x i32>
  %i.gz = and <4 x i32> %i.gy, splat (i32 65535)
  %i.ha = lshr <4 x i32> %i.gx, splat (i32 16)
  %i.hb = mul nuw <4 x i32> %i.gt, %i.go
  %i.hc = add nuw <4 x i32> %i.hb, %i.gz
  %i.hd = mul nuw <4 x i32> %i.gu, %i.gp          ; 2 uses
  %i.he = zext <4 x i32> %i.hd to <4 x i64>
  %i.hf = mul nuw nsw <4 x i64> %i.he, splat (i64 5039)
  %i.hg = lshr <4 x i64> %i.hf, splat (i64 24)
  %i.hh = trunc nuw nsw <4 x i64> %i.hg to <4 x i32>
  %i.hi = mul <4 x i32> %i.hh, splat (i32 62207)
  %i.hj = add <4 x i32> %i.hi, %i.hd
  %i.hk = trunc <4 x i32> %i.hj to <4 x i16>      ; 2 uses
  %i.hl = add <4 x i16> %i.hk, splat (i16 -3329)  ; 2 uses
  %i.hm = icmp slt <4 x i16> %i.hl, zeroinitializer
  %i.hn = select <4 x i1> %i.hm, <4 x i16> %i.hk, <4 x i16> zeroinitializer
  %i.ho = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hl, <4 x i16> zeroinitializer)
  %i.hp = or <4 x i16> %i.hn, %i.ho
  %i.hq = zext <4 x i16> %i.hp to <4 x i32>
  %i.hr = mul nuw <4 x i32> %i.hq, %i.gv
  %i.hs = add <4 x i32> %i.hc, %i.hr              ; 2 uses
  %i.ht = zext <4 x i32> %i.hs to <4 x i64>
  %i.hu = mul nuw nsw <4 x i64> %i.ht, splat (i64 5039)
  %i.hv = lshr <4 x i64> %i.hu, splat (i64 24)
  %i.hw = trunc nuw nsw <4 x i64> %i.hv to <4 x i32>
  %i.hx = mul <4 x i32> %i.hw, splat (i32 62207)
  %i.hy = add <4 x i32> %i.hx, %i.hs
  %i.hz = trunc <4 x i32> %i.hy to <4 x i16>      ; 2 uses
  %i.ia = add <4 x i16> %i.hz, splat (i16 -3329)  ; 2 uses
  %i.ib = icmp slt <4 x i16> %i.ia, zeroinitializer
  %i.ic = select <4 x i1> %i.ib, <4 x i16> %i.hz, <4 x i16> zeroinitializer
  %i.id = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ia, <4 x i16> zeroinitializer)
  %i.ie = or <4 x i16> %i.ic, %i.id
  %i.if = mul nuw <4 x i32> %i.gu, %i.go
  %i.ig = mul nuw <4 x i32> %i.gp, %i.gt
  %i.ih = add <4 x i32> %i.if, %i.ig
  %i.ii = add <4 x i32> %i.ih, %i.ha              ; 2 uses
  %i.ij = zext <4 x i32> %i.ii to <4 x i64>
  %i.ik = mul nuw nsw <4 x i64> %i.ij, splat (i64 5039)
  %i.il = lshr <4 x i64> %i.ik, splat (i64 24)
  %i.im = trunc nuw nsw <4 x i64> %i.il to <4 x i32>
  %i.in = mul <4 x i32> %i.im, splat (i32 62207)
  %i.io = add <4 x i32> %i.in, %i.ii
  %i.ip = trunc <4 x i32> %i.io to <4 x i16>      ; 2 uses
  %i.iq = add <4 x i16> %i.ip, splat (i16 -3329)  ; 2 uses
  %i.ir = icmp slt <4 x i16> %i.iq, zeroinitializer
  %i.is = select <4 x i1> %i.ir, <4 x i16> %i.ip, <4 x i16> zeroinitializer
  %i.it = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.iq, <4 x i16> zeroinitializer)
  %i.iu = or <4 x i16> %i.is, %i.it
  %interleaved.vec = shufflevector <4 x i16> %i.ie, <4 x i16> %i.iu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.gk, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iv = icmp eq i64 %index.next, 128
  br i1 %i.iv, label %scalar_mult_add.exit.i, label %vector.body, !llvm.loop !141

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i.i = phi ptr [ %i.jf, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i.i = phi ptr [ %i.jb, %scalar.ph ], [ %i.gh, %.lr.ph.i ] ; 3 uses
  %.025.i.i = phi ptr [ %i.ja, %scalar.ph ], [ %.124.i, %.lr.ph.i ] ; 3 uses
  %.0.idx.i16.i = phi i64 [ %.0.add.i18.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0.ptr.i17.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i16.i ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.ix = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.iy = load i16, ptr %.026.i.i, align 2, !tbaa !38
  %i.iz = zext i16 %i.iy to i32                   ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.jc = load i16, ptr %i.ix, align 2, !tbaa !38
  %i.jd = zext i16 %i.jc to i32                   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0.ptr.i17.i, i64 2
  %.0.add.i18.i = add nuw nsw i64 %.0.idx.i16.i, 4
  %i.jf = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.jg = load i16, ptr %.027.i.i, align 2, !tbaa !38
  %i.jh = zext i16 %i.jg to i32
  %i.ji = load i16, ptr %.0.ptr.i17.i, align 2, !tbaa !38
  %i.jj = zext i16 %i.ji to i32
  %i.jk = load i16, ptr %i.je, align 2, !tbaa !38
  %i.jl = zext i16 %i.jk to i32
  %i.jm = load i16, ptr %i.iw, align 2, !tbaa !38
  %i.jn = load i16, ptr %.025.i.i, align 2, !tbaa !38
  %i.jo = zext i16 %i.jm to i32                   ; 2 uses
  %i.jp = zext i16 %i.jn to i32                   ; 2 uses
  %i.jq = mul nuw i32 %i.jd, %i.jo                ; 2 uses
  %i.jr = zext i32 %i.jq to i64
  %i.js = mul nuw nsw i64 %i.jr, 5039
  %i.jt = lshr i64 %i.js, 24
  %i.ju = trunc nuw nsw i64 %i.jt to i32
  %.neg.i.i19.i = mul i32 %i.ju, 62207
  %i.jv = add i32 %.neg.i.i19.i, %i.jq
  %i.jw = trunc i32 %i.jv to i16                  ; 2 uses
  %i.jx = add i16 %i.jw, -3329                    ; 2 uses
  %isneg.i.i.i20.i = icmp slt i16 %i.jx, 0
  %i.jy = select i1 %isneg.i.i.i20.i, i16 %i.jw, i16 0
  %i.jz = call i16 @llvm.smax.i16(i16 %i.jx, i16 0)
  %i.ka = or i16 %i.jy, %i.jz
  %i.kb = zext i16 %i.ka to i32
  %i.kc = mul nuw i32 %i.kb, %i.jh
  %i.kd = mul nuw i32 %i.jd, %i.jp
  %i.ke = mul nuw i32 %i.jo, %i.iz
  %i.kf = mul nuw i32 %i.iz, %i.jp
  %i.kg = add i32 %i.kd, %i.ke
  %i.kh = add nuw i32 %i.kf, %i.jj
  %i.ki = add i32 %i.kg, %i.jl                    ; 2 uses
  %i.kj = add i32 %i.kh, %i.kc                    ; 2 uses
  %i.kk = zext i32 %i.ki to i64
  %i.kl = zext i32 %i.kj to i64
  %i.km = mul nuw nsw i64 %i.kk, 5039
  %i.kn = mul nuw nsw i64 %i.kl, 5039
  %i.ko = lshr i64 %i.km, 24
  %i.kp = lshr i64 %i.kn, 24
  %i.kq = trunc nuw nsw i64 %i.ko to i32
  %i.kr = trunc nuw nsw i64 %i.kp to i32
  %.neg.i30.i.i = mul i32 %i.kq, 62207
  %.neg.i28.i.i = mul i32 %i.kr, 62207
  %i.ks = insertelement <2 x i32> poison, i32 %.neg.i28.i.i, i64 0
  %i.kt = insertelement <2 x i32> %i.ks, i32 %.neg.i30.i.i, i64 1
  %i.ku = insertelement <2 x i32> poison, i32 %i.kj, i64 0
  %i.kv = insertelement <2 x i32> %i.ku, i32 %i.ki, i64 1
  %i.kw = add <2 x i32> %i.kt, %i.kv
  %i.kx = trunc <2 x i32> %i.kw to <2 x i16>      ; 2 uses
  %i.ky = add <2 x i16> %i.kx, splat (i16 -3329)  ; 2 uses
  %i.kz = icmp slt <2 x i16> %i.ky, zeroinitializer
  %i.la = select <2 x i1> %i.kz, <2 x i16> %i.kx, <2 x i16> zeroinitializer
  %i.lb = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.ky, <2 x i16> zeroinitializer)
  %i.lc = or <2 x i16> %i.la, %i.lb
  store <2 x i16> %i.lc, ptr %.0.ptr.i17.i, align 2, !tbaa !38
  %i.ld = icmp samesign ult i64 %.0.idx.i16.i, 508
  br i1 %i.ld, label %scalar.ph, label %scalar_mult_add.exit.i, !llvm.loop !142

scalar_mult_add.exit.i:                           ; preds = %vector.body, %scalar.ph
  %.0.i51 = add nsw i32 %.0.in23.i, -1
  %.1.i = getelementptr inbounds nuw i8, ptr %.124.i, i64 512 ; 2 uses
  %i.le = icmp sgt i32 %.0.in23.i, 2
  br i1 %i.le, label %.lr.ph.i, label %scalar_mult.exit._crit_edge.i, !llvm.loop !143

scalar_mult.exit._crit_edge.i:                    ; preds = %scalar_mult_add.exit.i, %scalar_mult.exit.preheader.i
  %.1.lcssa.i = phi ptr [ %.121.i, %scalar_mult.exit.preheader.i ], [ %.1.i, %scalar_mult_add.exit.i ]
  call fastcc void @scalar_inverse_ntt(ptr noundef %.01426.i)
  %i.lf = getelementptr i8, ptr %.01426.i, i64 512
  %i.lg = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.lg, label %.preheader.i, label %matrix_mult_intt.exit, !llvm.loop !144

matrix_mult_intt.exit:                            ; preds = %scalar_mult.exit._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.li = getelementptr i8, ptr %5, i64 24        ; 2 uses
end_hunk_0
