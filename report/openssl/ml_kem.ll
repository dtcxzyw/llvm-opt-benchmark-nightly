Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_kem?download=true
inline.NumInlined: 101
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@matrix_expand:bb.a
  %.0.idx.i = phi i64 [ %.0.add.i, %bb.k ], [ 0, %bb.e ] ; 3 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx.i ; 3 uses
  %.1.ptr.i = getelementptr inbounds nuw i8, ptr %.129, i64 %.1.idx.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.ptr.i, i64 2
  %.0.add.i = add nuw nsw i64 %.0.idx.i, 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !47
  %.not26.i = icmp slt i64 %.1.idx.i, 512
  br i1 %.not26.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.ptr.i, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !47
  %i.x = load i8, ptr %.0.ptr.i, align 1, !tbaa !47
  %i.y = zext i8 %i.w to i32                      ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = and i32 %i.z, 3840
  %i.ab = zext i8 %i.x to i32
  %i.ac = or disjoint i32 %i.aa, %i.ab            ; 2 uses
  %i.ad = icmp samesign ult i32 %i.ac, 3329
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nuw nsw i32 %i.ac to i16
  %.1.add.i = add nuw nsw i64 %.1.idx.i, 2
  store i16 %i.ae, ptr %.1.ptr.i, align 2, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.idx.i = phi i64 [ %.1.add.i, %bb.g ], [ %.1.idx.i, %bb.f ] ; 5 uses
  %.2.ptr.i = getelementptr inbounds nuw i8, ptr %.129, i64 %.2.idx.i
  %.not28.i = icmp samesign ult i64 %.2.idx.i, 512
  br i1 %.not28.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = zext i8 %i.u to i32
  %i.ag = shl nuw nsw i32 %i.af, 4
  %i.ah = lshr i32 %i.y, 4
  %i.ai = or disjoint i32 %i.ah, %i.ag            ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, 3329
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw nsw i32 %i.ai to i16
  %.2.add.i = add nuw nsw i64 %.2.idx.i, 2
  store i16 %i.ak, ptr %.2.ptr.i, align 2, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3.idx.i = phi i64 [ %.2.add.i, %bb.j ], [ %.2.idx.i, %bb.i ] ; 2 uses
  %i.al = icmp samesign ult i64 %.0.idx.i, 165
  br i1 %i.al, label %.preheader.i, label %bb.l, !llvm.loop !94

bb.l:                                             ; preds = %bb.k, %bb.h
  %.4.idx.i = phi i64 [ %.3.idx.i, %bb.k ], [ %.2.idx.i, %bb.h ] ; 2 uses
  %i.am = icmp samesign ult i64 %.4.idx.i, 512
  br i1 %i.am, label %bb.e, label %.loopexit, !llvm.loop !95

sample_scalar.exit:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit25

.loopexit:                                        ; preds = %bb.l, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.an = getelementptr inbounds nuw i8, ptr %.129, i64 512 ; 2 uses
  %i.ao = add nuw nsw i32 %.030, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !96

._crit_edge:                                      ; preds = %.loopexit
  %i.ap = add nuw nsw i32 %.01632, 1              ; 2 uses
  %exitcond35.not = icmp eq i32 %i.ap, %i.g
  br i1 %exitcond35.not, label %.loopexit25, label %.preheader, !llvm.loop !97

.loopexit25:                                      ; preds = %._crit_edge, %bb.b, %bb.c, %bb.a, %sample_scalar.exit
  %.018 = phi i32 [ 0, %bb.b ], [ 0, %sample_scalar.exit ], [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %.018
}

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_xof(ptr noundef) local_unnamed_addr #1

declare ptr @EVP_MD_CTX_get0_md(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinalXOF(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestSqueeze(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cbd_3(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [192 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.c = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 192, ptr noundef %1, ptr noundef %2, ptr %.val)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 3 uses
  %i.d = shl nuw i64 %index, 3
  %i.e = mul i64 %index, 3                        ; 8 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.e ; 3 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.f, i64 3
  %i.g = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep79 = getelementptr i8, ptr %i.g, i64 6
  %i.h = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep80 = getelementptr i8, ptr %i.h, i64 9
  %i.i = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.i, i64 12
  %i.j = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep82 = getelementptr i8, ptr %i.j, i64 15
  %i.k = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep83 = getelementptr i8, ptr %i.k, i64 18
  %i.l = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %next.gep84 = getelementptr i8, ptr %i.l, i64 21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.o = getelementptr i8, ptr %i.f, i64 4
  %i.p = getelementptr i8, ptr %i.g, i64 7
  %i.q = getelementptr i8, ptr %i.h, i64 10
  %i.r = getelementptr i8, ptr %i.i, i64 13
  %i.s = getelementptr i8, ptr %i.j, i64 16
  %i.t = getelementptr i8, ptr %i.k, i64 19
  %i.u = getelementptr i8, ptr %i.l, i64 22
  %i.v = load i8, ptr %next.gep, align 8, !tbaa !47
  %i.w = load i8, ptr %next.gep78, align 1, !tbaa !47
  %i.x = load i8, ptr %next.gep79, align 2, !tbaa !47
  %i.y = load i8, ptr %next.gep80, align 1, !tbaa !47
  %i.z = load i8, ptr %next.gep81, align 4, !tbaa !47
  %i.aa = load i8, ptr %next.gep82, align 1, !tbaa !47
  %i.ab = load i8, ptr %next.gep83, align 2, !tbaa !47
  %i.ac = load i8, ptr %next.gep84, align 1, !tbaa !47
  %i.ad = insertelement <8 x i8> poison, i8 %i.v, i64 0
  %i.ae = insertelement <8 x i8> %i.ad, i8 %i.w, i64 1
  %i.af = insertelement <8 x i8> %i.ae, i8 %i.x, i64 2
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.y, i64 3
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.z, i64 4
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.aa, i64 5
  %i.aj = insertelement <8 x i8> %i.ai, i8 %i.ab, i64 6
  %i.ak = insertelement <8 x i8> %i.aj, i8 %i.ac, i64 7
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.am = getelementptr i8, ptr %i.f, i64 5
  %i.an = getelementptr i8, ptr %i.g, i64 8
  %i.ao = getelementptr i8, ptr %i.h, i64 11
  %i.ap = getelementptr i8, ptr %i.i, i64 14
  %i.aq = getelementptr i8, ptr %i.j, i64 17
  %i.ar = getelementptr i8, ptr %i.k, i64 20
  %i.as = getelementptr i8, ptr %i.l, i64 23
  %i.at = load i8, ptr %i.n, align 1, !tbaa !47
  %i.au = load i8, ptr %i.o, align 4, !tbaa !47
  %i.av = load i8, ptr %i.p, align 1, !tbaa !47
  %i.aw = load i8, ptr %i.q, align 2, !tbaa !47
  %i.ax = load i8, ptr %i.r, align 1, !tbaa !47
  %i.ay = load i8, ptr %i.s, align 8, !tbaa !47
  %i.az = load i8, ptr %i.t, align 1, !tbaa !47
  %i.ba = load i8, ptr %i.u, align 2, !tbaa !47
  %i.bb = insertelement <8 x i8> poison, i8 %i.at, i64 0
  %i.bc = insertelement <8 x i8> %i.bb, i8 %i.au, i64 1
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 2
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 3
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 4
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 5
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 6
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 7
  %i.bj = load i8, ptr %i.al, align 2, !tbaa !47
  %i.bk = load i8, ptr %i.am, align 1, !tbaa !47
  %i.bl = load i8, ptr %i.an, align 8, !tbaa !47
  %i.bm = load i8, ptr %i.ao, align 1, !tbaa !47
  %i.bn = load i8, ptr %i.ap, align 2, !tbaa !47
  %i.bo = load i8, ptr %i.aq, align 1, !tbaa !47
  %i.bp = load i8, ptr %i.ar, align 4, !tbaa !47
  %i.bq = load i8, ptr %i.as, align 1, !tbaa !47
  %i.br = insertelement <8 x i8> poison, i8 %i.bj, i64 0
  %i.bs = insertelement <8 x i8> %i.br, i8 %i.bk, i64 1
  %i.bt = insertelement <8 x i8> %i.bs, i8 %i.bl, i64 2
  %i.bu = insertelement <8 x i8> %i.bt, i8 %i.bm, i64 3
  %i.bv = insertelement <8 x i8> %i.bu, i8 %i.bn, i64 4
  %i.bw = insertelement <8 x i8> %i.bv, i8 %i.bo, i64 5
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bp, i64 6
  %i.by = insertelement <8 x i8> %i.bx, i8 %i.bq, i64 7
  %i.bz = zext <8 x i8> %i.ak to <8 x i32>        ; 8 uses
  %i.ca = and <8 x i32> %i.bz, splat (i32 1)
  %i.cb = lshr <8 x i32> %i.bz, splat (i32 1)
  %i.cc = and <8 x i32> %i.cb, splat (i32 1)
  %i.cd = lshr <8 x i32> %i.bz, splat (i32 2)
  %i.ce = and <8 x i32> %i.cd, splat (i32 1)
  %i.cf = shl <8 x i32> %i.bz, splat (i32 28)
  %i.cg = ashr <8 x i32> %i.cf, splat (i32 31)
  %i.ch = shl <8 x i32> %i.bz, splat (i32 27)
  %i.ci = ashr <8 x i32> %i.ch, splat (i32 31)
  %i.cj = shl <8 x i32> %i.bz, splat (i32 26)
  %i.ck = ashr <8 x i32> %i.cj, splat (i32 31)
  %i.cl = add nuw nsw <8 x i32> %i.cc, %i.ca
  %i.cm = add nuw nsw <8 x i32> %i.cl, %i.ce
  %i.cn = add nsw <8 x i32> %i.cm, %i.ci
  %i.co = add nsw <8 x i32> %i.cn, %i.cg
  %i.cp = add nsw <8 x i32> %i.co, %i.ck          ; 2 uses
  %i.cq = lshr <8 x i32> %i.bz, splat (i32 6)
  %i.cr = and <8 x i32> %i.cq, splat (i32 1)
  %i.cs = lshr <8 x i32> %i.bz, splat (i32 7)
  %i.ct = zext <8 x i8> %i.bi to <8 x i32>        ; 8 uses
  %i.cu = and <8 x i32> %i.ct, splat (i32 1)
  %i.cv = shl <8 x i32> %i.ct, splat (i32 30)
  %i.cw = ashr <8 x i32> %i.cv, splat (i32 31)
  %i.cx = shl <8 x i32> %i.ct, splat (i32 29)
  %i.cy = ashr <8 x i32> %i.cx, splat (i32 31)
  %i.cz = shl <8 x i32> %i.ct, splat (i32 28)
  %i.da = ashr <8 x i32> %i.cz, splat (i32 31)
  %i.db = add nuw nsw <8 x i32> %i.cr, %i.cs
  %i.dc = add nuw nsw <8 x i32> %i.db, %i.cu
  %i.dd = add nsw <8 x i32> %i.dc, %i.cy
  %i.de = add nsw <8 x i32> %i.dd, %i.cw
  %i.df = add nsw <8 x i32> %i.de, %i.da          ; 2 uses
  %i.dg = lshr <8 x i32> %i.ct, splat (i32 4)
  %i.dh = and <8 x i32> %i.dg, splat (i32 1)
  %i.di = lshr <8 x i32> %i.ct, splat (i32 5)
  %i.dj = and <8 x i32> %i.di, splat (i32 1)
  %i.dk = lshr <8 x i32> %i.ct, splat (i32 6)
  %i.dl = and <8 x i32> %i.dk, splat (i32 1)
  %i.dm = lshr <8 x i32> %i.ct, splat (i32 7)
  %i.dn = zext <8 x i8> %i.by to <8 x i32>        ; 8 uses
  %i.do = and <8 x i32> %i.dn, splat (i32 1)
  %i.dp = shl <8 x i32> %i.dn, splat (i32 30)
  %i.dq = ashr <8 x i32> %i.dp, splat (i32 31)
  %i.dr = sub nsw <8 x i32> %i.dj, %i.dm
  %i.ds = add nsw <8 x i32> %i.dr, %i.dh
  %i.dt = add nsw <8 x i32> %i.ds, %i.dl
  %i.du = sub nsw <8 x i32> %i.dt, %i.do
  %i.dv = add nsw <8 x i32> %i.du, %i.dq          ; 2 uses
  %i.dw = lshr <8 x i32> %i.dn, splat (i32 2)
  %i.dx = and <8 x i32> %i.dw, splat (i32 1)
  %i.dy = lshr <8 x i32> %i.dn, splat (i32 3)
  %i.dz = and <8 x i32> %i.dy, splat (i32 1)
  %i.ea = lshr <8 x i32> %i.dn, splat (i32 4)
  %i.eb = and <8 x i32> %i.ea, splat (i32 1)
  %i.ec = shl <8 x i32> %i.dn, splat (i32 26)
  %i.ed = ashr <8 x i32> %i.ec, splat (i32 31)
  %i.ee = shl <8 x i32> %i.dn, splat (i32 25)
  %i.ef = ashr <8 x i32> %i.ee, splat (i32 31)
  %i.eg = lshr <8 x i32> %i.dn, splat (i32 7)
  %i.eh = sub nsw <8 x i32> %i.dz, %i.eg
  %i.ei = add nsw <8 x i32> %i.eh, %i.dx
  %i.ej = add nsw <8 x i32> %i.ei, %i.eb
  %i.ek = add nsw <8 x i32> %i.ej, %i.ef
  %i.el = add nsw <8 x i32> %i.ek, %i.ed          ; 2 uses
  %i.em = shufflevector <8 x i32> %i.cp, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = icmp slt <16 x i32> %i.em, zeroinitializer
  %i.eo = select <16 x i1> %i.en, <16 x i32> splat (i32 3329), <16 x i32> zeroinitializer
  %i.ep = shufflevector <8 x i32> %i.cp, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eq = add nsw <16 x i32> %i.eo, %i.ep
  %i.er = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = icmp slt <16 x i32> %i.er, zeroinitializer
  %i.et = select <16 x i1> %i.es, <16 x i32> splat (i32 3329), <16 x i32> zeroinitializer
  %i.eu = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ev = add nsw <16 x i32> %i.et, %i.eu
  %i.ew = shufflevector <16 x i32> %i.eq, <16 x i32> %i.ev, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.ew to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.m, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, 64
  br i1 %i.ex, label %.loopexit, label %vector.body, !llvm.loop !98

.loopexit:                                        ; preds = %vector.body, %bb.a
  %.055 = phi i32 [ 0, %bb.a ], [ 1, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.055
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cbd_2(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %3, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.c = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 128, ptr noundef %1, ptr noundef %2, ptr %.val)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 3 uses
  %i.d = shl nuw i64 %index, 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %wide.load = load <4 x i8>, ptr %i.e, align 4, !tbaa !47
  %i.g = zext <4 x i8> %wide.load to <4 x i32>    ; 8 uses
  %i.h = and <4 x i32> %i.g, splat (i32 1)
  %i.i = lshr <4 x i32> %i.g, splat (i32 1)
  %i.j = and <4 x i32> %i.i, splat (i32 1)
  %i.k = shl <4 x i32> %i.g, splat (i32 29)
  %i.l = ashr <4 x i32> %i.k, splat (i32 31)
  %i.m = shl <4 x i32> %i.g, splat (i32 28)
  %i.n = ashr <4 x i32> %i.m, splat (i32 31)
  %i.o = add nuw nsw <4 x i32> %i.j, %i.h
  %i.p = add nsw <4 x i32> %i.o, %i.n
  %i.q = add nsw <4 x i32> %i.p, %i.l             ; 2 uses
  %i.r = icmp slt <4 x i32> %i.q, zeroinitializer
  %i.s = select <4 x i1> %i.r, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.t = add nsw <4 x i32> %i.s, %i.q
  %i.u = lshr <4 x i32> %i.g, splat (i32 4)
  %i.v = and <4 x i32> %i.u, splat (i32 1)
  %i.w = lshr <4 x i32> %i.g, splat (i32 5)
  %i.x = and <4 x i32> %i.w, splat (i32 1)
  %i.y = shl <4 x i32> %i.g, splat (i32 25)
  %i.z = ashr <4 x i32> %i.y, splat (i32 31)
  %i.aa = lshr <4 x i32> %i.g, splat (i32 7)
  %i.ab = sub nsw <4 x i32> %i.x, %i.aa
  %i.ac = add nsw <4 x i32> %i.ab, %i.v
  %i.ad = add nsw <4 x i32> %i.ac, %i.z           ; 2 uses
  %i.ae = icmp slt <4 x i32> %i.ad, zeroinitializer
  %i.af = select <4 x i1> %i.ae, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.ag = add nsw <4 x i32> %i.af, %i.ad
  %i.ah = shufflevector <4 x i32> %i.t, <4 x i32> %i.ag, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nsw <8 x i32> %i.ah to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.f, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 128
  br i1 %i.ai, label %.loopexit, label %vector.body, !llvm.loop !99

.loopexit:                                        ; preds = %vector.body, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ 1, %vector.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @hash_g(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 33, 65) %2, ptr noundef nonnull %3, ptr %.40.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %3, ptr noundef %.40.val, ptr noundef null) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 64, ptr %i.a, align 4, !tbaa !57
  %i.c = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %2) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %single_keccak.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef nonnull %3) #11
  %i.e = tail call i32 @EVP_MD_xof(ptr noundef %i.d) #11
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @EVP_DigestFinalXOF(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef 64) #11
  %i.g = icmp ne i32 %i.f, 0
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.h = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11
  %.not12.i = icmp ne i32 %i.h, 0
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp eq i32 %i.i, 64
  %narrow.i = select i1 %.not12.i, i1 %i.j, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.g, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.k = zext i1 %.0.i to i32
  br label %bb.f

bb.f:                                             ; preds = %single_keccak.exit, %bb.a
  %i.l = phi i32 [ 0, %bb.a ], [ %i.k, %single_keccak.exit ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @prf(ptr noundef nonnull %0, i64 noundef range(i64 128, 193) %1, ptr noundef %2, ptr noundef %3, ptr %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call i32 @EVP_DigestInit_ex(ptr noundef %3, ptr noundef %.24.val, ptr noundef null) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = trunc nuw nsw i64 %1 to i32
  store i32 %i.c, ptr %i.a, align 4, !tbaa !57
  %i.d = tail call i32 @EVP_DigestUpdate(ptr noundef %3, ptr noundef %2, i64 noundef 33) #11
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %single_keccak.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @EVP_MD_CTX_get0_md(ptr noundef %3) #11
  %i.f = tail call i32 @EVP_MD_xof(ptr noundef %i.e) #11
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @EVP_DigestFinalXOF(ptr noundef %3, ptr noundef nonnull %0, i64 noundef range(i64 32, 193) %1) #11
  %i.h = icmp ne i32 %i.g, 0
  br label %single_keccak.exit

bb.e:                                             ; preds = %bb.c
  %i.i = call i32 @EVP_DigestFinal_ex(ptr noundef %3, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11
  %.not12.i = icmp ne i32 %i.i, 0
  %i.j = load i32, ptr %i.a, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = icmp eq i64 %1, %i.k
  %narrow.i = select i1 %.not12.i, i1 %i.l, i1 false
  br label %single_keccak.exit

single_keccak.exit:                               ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.h, %bb.d ], [ %narrow.i, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.m = zext i1 %.0.i to i32
  br label %bb.f

bb.f:                                             ; preds = %single_keccak.exit, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ %i.m, %single_keccak.exit ]
  ret i32 %i.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @scalar_ntt(ptr nofree noundef captures(address) %0) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit138, %bb.a
  %.122 = phi ptr [ @kNTTRoots, %bb.a ], [ %i.b, %.loopexit138 ]
  %.019.idx = phi i64 [ 0, %bb.a ], [ %.0.add.lcssa, %.loopexit138 ] ; 4 uses
  %.019.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx ; 3 uses
  %.019.add = add nuw nsw i64 %.019.idx, 256      ; 4 uses
  %.ptr25 = getelementptr inbounds nuw i8, ptr %0, i64 %.019.add
  %i.b = getelementptr inbounds nuw i8, ptr %.122, i64 2 ; 3 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !44
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %i.e = add i64 %.019.idx, %i.a                  ; 2 uses
  %i.f = add i64 %i.e, 256
  %i.g = add i64 %i.e, 2
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.i = xor i64 %.019.idx, -1
  %i.j = add i64 %i.h, %i.i
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.n = shl i64 %n.vec, 1                        ; 2 uses
  %i.o = getelementptr i8, ptr %.019.ptr, i64 %i.n
  %i.p = add i64 %.019.add, %i.n                  ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.019.add
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.019.ptr, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !44 ; 2 uses
  %wide.load44 = load <8 x i16>, ptr %i.s, align 2, !tbaa !44
  %i.t = zext <8 x i16> %wide.load44 to <8 x i32>
  %i.u = mul nuw <8 x i32> %broadcast.splat, %i.t ; 2 uses
  %i.v = zext <8 x i32> %i.u to <8 x i64>
  %i.w = mul nuw nsw <8 x i64> %i.v, splat (i64 5039)
  %i.x = lshr <8 x i64> %i.w, splat (i64 24)
  %i.y = trunc nuw nsw <8 x i64> %i.x to <8 x i32>
  %i.z = mul <8 x i32> %i.y, splat (i32 62207)
  %i.aa = add <8 x i32> %i.z, %i.u
  %i.ab = trunc <8 x i32> %i.aa to <8 x i16>      ; 2 uses
  %i.ac = add <8 x i16> %i.ab, splat (i16 -3329)  ; 2 uses
  %i.ad = icmp slt <8 x i16> %i.ac, zeroinitializer
  %i.ae = select <8 x i1> %i.ad, <8 x i16> %i.ab, <8 x i16> zeroinitializer
  %i.af = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ac, <8 x i16> zeroinitializer)
  %i.ag = or <8 x i16> %i.ae, %i.af               ; 2 uses
  %i.ah = sub <8 x i16> %wide.load, %i.ag         ; 3 uses
  %i.ai = add <8 x i16> %i.ah, splat (i16 3329)
  %i.aj = icmp slt <8 x i16> %i.ah, zeroinitializer
  %i.ak = select <8 x i1> %i.aj, <8 x i16> %i.ai, <8 x i16> zeroinitializer
  %i.al = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ah, <8 x i16> zeroinitializer)
  %i.am = or <8 x i16> %i.ak, %i.al
  store <8 x i16> %i.am, ptr %i.s, align 2, !tbaa !44
  %i.an = add <8 x i16> %i.ag, %wide.load         ; 2 uses
  %i.ao = add <8 x i16> %i.an, splat (i16 -3329)  ; 2 uses
  %i.ap = icmp slt <8 x i16> %i.ao, zeroinitializer
  %i.aq = select <8 x i1> %i.ap, <8 x i16> %i.an, <8 x i16> zeroinitializer
  %i.ar = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ao, <8 x i16> zeroinitializer)
  %i.as = or <8 x i16> %i.aq, %i.ar
  store <8 x i16> %i.as, ptr %next.gep, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.p, -2
  %cmp.n = icmp eq i64 %i.m, %n.vec
end_hunk_0
begin_hunk_1_@encrypt_cpa:bb.a
  %next.gep142.a = getelementptr i8, ptr %i.gl, i64 %i.gn
  %next.gep143 = getelementptr i8, ptr %.124.i, i64 %i.gn
  %i.go = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.gn ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep143, align 2, !tbaa !44, !alias.scope !158
  %i.gp = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.gq = bitcast <8 x i16> %i.gp to <4 x i32>
  %i.gr = bitcast <8 x i16> %i.gp to <4 x i32>
  %i.gs = and <4 x i32> %i.gr, splat (i32 65535)  ; 2 uses
  %i.gt = lshr <4 x i32> %i.gq, splat (i32 16)    ; 2 uses
  %wide.vec145 = load <8 x i16>, ptr %next.gep142.a, align 2, !tbaa !44
  %i.gu = freeze <8 x i16> %wide.vec145           ; 2 uses
  %i.gv = bitcast <8 x i16> %i.gu to <4 x i32>
  %i.gw = bitcast <8 x i16> %i.gu to <4 x i32>
  %i.gx = and <4 x i32> %i.gw, splat (i32 65535)  ; 2 uses
  %i.gy = lshr <4 x i32> %i.gv, splat (i32 16)    ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !44, !alias.scope !159
  %i.gz = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec148 = load <8 x i16>, ptr %i.go, align 2, !tbaa !44
  %i.ha = freeze <8 x i16> %wide.vec148           ; 2 uses
  %i.hb = bitcast <8 x i16> %i.ha to <4 x i32>
  %i.hc = bitcast <8 x i16> %i.ha to <4 x i32>
  %i.hd = and <4 x i32> %i.hc, splat (i32 65535)
  %i.he = lshr <4 x i32> %i.hb, splat (i32 16)
  %i.hf = mul nuw <4 x i32> %i.gx, %i.gs
  %i.hg = add nuw <4 x i32> %i.hf, %i.hd
  %i.hh = mul nuw <4 x i32> %i.gy, %i.gt          ; 2 uses
  %i.hi = zext <4 x i32> %i.hh to <4 x i64>
  %i.hj = mul nuw nsw <4 x i64> %i.hi, splat (i64 5039)
  %i.hk = lshr <4 x i64> %i.hj, splat (i64 24)
  %i.hl = trunc nuw nsw <4 x i64> %i.hk to <4 x i32>
  %i.hm = mul <4 x i32> %i.hl, splat (i32 62207)
  %i.hn = add <4 x i32> %i.hm, %i.hh
  %i.ho = trunc <4 x i32> %i.hn to <4 x i16>      ; 2 uses
  %i.hp = add <4 x i16> %i.ho, splat (i16 -3329)  ; 2 uses
  %i.hq = icmp slt <4 x i16> %i.hp, zeroinitializer
  %i.hr = select <4 x i1> %i.hq, <4 x i16> %i.ho, <4 x i16> zeroinitializer
  %i.hs = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hp, <4 x i16> zeroinitializer)
  %i.ht = or <4 x i16> %i.hr, %i.hs
  %i.hu = zext <4 x i16> %i.ht to <4 x i32>
  %i.hv = mul nuw <4 x i32> %i.hu, %i.gz
  %i.hw = add <4 x i32> %i.hg, %i.hv              ; 2 uses
  %i.hx = zext <4 x i32> %i.hw to <4 x i64>
  %i.hy = mul nuw nsw <4 x i64> %i.hx, splat (i64 5039)
  %i.hz = lshr <4 x i64> %i.hy, splat (i64 24)
  %i.ia = trunc nuw nsw <4 x i64> %i.hz to <4 x i32>
  %i.ib = mul <4 x i32> %i.ia, splat (i32 62207)
  %i.ic = add <4 x i32> %i.ib, %i.hw
  %i.id = trunc <4 x i32> %i.ic to <4 x i16>      ; 2 uses
  %i.ie = add <4 x i16> %i.id, splat (i16 -3329)  ; 2 uses
  %i.if = icmp slt <4 x i16> %i.ie, zeroinitializer
  %i.ig = select <4 x i1> %i.if, <4 x i16> %i.id, <4 x i16> zeroinitializer
  %i.ih = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ie, <4 x i16> zeroinitializer)
  %i.ii = or <4 x i16> %i.ig, %i.ih
  %i.ij = mul nuw <4 x i32> %i.gy, %i.gs
  %i.ik = mul nuw <4 x i32> %i.gt, %i.gx
  %i.il = add <4 x i32> %i.ij, %i.ik
  %i.im = add <4 x i32> %i.il, %i.he              ; 2 uses
  %i.in = zext <4 x i32> %i.im to <4 x i64>
  %i.io = mul nuw nsw <4 x i64> %i.in, splat (i64 5039)
  %i.ip = lshr <4 x i64> %i.io, splat (i64 24)
  %i.iq = trunc nuw nsw <4 x i64> %i.ip to <4 x i32>
  %i.ir = mul <4 x i32> %i.iq, splat (i32 62207)
  %i.is = add <4 x i32> %i.ir, %i.im
  %i.it = trunc <4 x i32> %i.is to <4 x i16>      ; 2 uses
  %i.iu = add <4 x i16> %i.it, splat (i16 -3329)  ; 2 uses
  %i.iv = icmp slt <4 x i16> %i.iu, zeroinitializer
  %i.iw = select <4 x i1> %i.iv, <4 x i16> %i.it, <4 x i16> zeroinitializer
  %i.ix = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.iu, <4 x i16> zeroinitializer)
  %i.iy = or <4 x i16> %i.iw, %i.ix
  %interleaved.vec = shufflevector <4 x i16> %i.ii, <4 x i16> %i.iy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.go, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iz = icmp eq i64 %index.next, 128
  br i1 %i.iz, label %scalar_mult_add.exit.i, label %vector.body, !llvm.loop !138

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i.i = phi ptr [ %i.jn, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i.i = phi ptr [ %i.jj, %scalar.ph ], [ %i.gl, %.lr.ph.i ] ; 3 uses
  %.025.i.i = phi ptr [ %i.jg, %scalar.ph ], [ %.124.i, %.lr.ph.i ] ; 3 uses
  %.0.idx.i16.i = phi i64 [ %.0.add.i18.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0.ptr.i17.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i16.i ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.jb = load i16, ptr %.025.i.i, align 2, !tbaa !44
  %i.jc = zext i16 %i.jb to i32                   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.je = load i16, ptr %.026.i.i, align 2, !tbaa !44
  %i.jf = zext i16 %i.je to i32                   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.jh = load i16, ptr %i.ja, align 2, !tbaa !44
  %i.ji = zext i16 %i.jh to i32                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.jk = load i16, ptr %i.jd, align 2, !tbaa !44
  %i.jl = zext i16 %i.jk to i32                   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.ptr.i17.i, i64 2 ; 2 uses
  %.0.add.i18.i = add nuw nsw i64 %.0.idx.i16.i, 4
  %i.jn = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.jo = load i16, ptr %.027.i.i, align 2, !tbaa !44
  %i.jp = zext i16 %i.jo to i32
  %i.jq = load i16, ptr %.0.ptr.i17.i, align 2, !tbaa !44
  %i.jr = zext i16 %i.jq to i32
  %i.js = mul nuw i32 %i.jf, %i.jc
  %i.jt = add nuw i32 %i.js, %i.jr
  %i.ju = mul nuw i32 %i.jl, %i.ji                ; 2 uses
  %i.jv = zext i32 %i.ju to i64
  %i.jw = mul nuw nsw i64 %i.jv, 5039
  %i.jx = lshr i64 %i.jw, 24
  %i.jy = trunc nuw nsw i64 %i.jx to i32
  %.neg.i.i19.i = mul i32 %i.jy, 62207
  %i.jz = add i32 %.neg.i.i19.i, %i.ju
  %i.ka = trunc i32 %i.jz to i16                  ; 2 uses
  %i.kb = add i16 %i.ka, -3329                    ; 2 uses
  %isneg.i.i.i20.i = icmp slt i16 %i.kb, 0
  %i.kc = select i1 %isneg.i.i.i20.i, i16 %i.ka, i16 0
  %i.kd = call i16 @llvm.smax.i16(i16 %i.kb, i16 0)
  %i.ke = or i16 %i.kc, %i.kd
  %i.kf = zext i16 %i.ke to i32
  %i.kg = mul nuw i32 %i.kf, %i.jp
  %i.kh = add i32 %i.jt, %i.kg                    ; 2 uses
  %i.ki = zext i32 %i.kh to i64
  %i.kj = mul nuw nsw i64 %i.ki, 5039
  %i.kk = lshr i64 %i.kj, 24
  %i.kl = trunc nuw nsw i64 %i.kk to i32
  %.neg.i28.i.i = mul i32 %i.kl, 62207
  %i.km = add i32 %.neg.i28.i.i, %i.kh
  %i.kn = trunc i32 %i.km to i16                  ; 2 uses
  %i.ko = add i16 %i.kn, -3329                    ; 2 uses
  %isneg.i.i29.i.i = icmp slt i16 %i.ko, 0
  %i.kp = select i1 %isneg.i.i29.i.i, i16 %i.kn, i16 0
  %i.kq = call i16 @llvm.smax.i16(i16 %i.ko, i16 0)
  %i.kr = or i16 %i.kp, %i.kq
  store i16 %i.kr, ptr %.0.ptr.i17.i, align 2, !tbaa !44
  %i.ks = load i16, ptr %i.jm, align 2, !tbaa !44
  %i.kt = zext i16 %i.ks to i32
  %i.ku = mul nuw i32 %i.jl, %i.jc
  %i.kv = mul nuw i32 %i.ji, %i.jf
  %i.kw = add i32 %i.ku, %i.kv
  %i.kx = add i32 %i.kw, %i.kt                    ; 2 uses
  %i.ky = zext i32 %i.kx to i64
  %i.kz = mul nuw nsw i64 %i.ky, 5039
  %i.la = lshr i64 %i.kz, 24
  %i.lb = trunc nuw nsw i64 %i.la to i32
  %.neg.i30.i.i = mul i32 %i.lb, 62207
  %i.lc = add i32 %.neg.i30.i.i, %i.kx
  %i.ld = trunc i32 %i.lc to i16                  ; 2 uses
  %i.le = add i16 %i.ld, -3329                    ; 2 uses
  %isneg.i.i31.i.i = icmp slt i16 %i.le, 0
  %i.lf = select i1 %isneg.i.i31.i.i, i16 %i.ld, i16 0
  %i.lg = call i16 @llvm.smax.i16(i16 %i.le, i16 0)
  %i.lh = or i16 %i.lf, %i.lg
  store i16 %i.lh, ptr %i.jm, align 2, !tbaa !44
  %i.li = icmp samesign ult i64 %.0.idx.i16.i, 508
  br i1 %i.li, label %scalar.ph, label %scalar_mult_add.exit.i, !llvm.loop !139

scalar_mult_add.exit.i:                           ; preds = %vector.body, %scalar.ph
  %.0.i51 = add nsw i32 %.0.in23.i, -1
  %.1.i = getelementptr inbounds nuw i8, ptr %.124.i, i64 512 ; 2 uses
  %i.lj = icmp sgt i32 %.0.in23.i, 2
  br i1 %i.lj, label %.lr.ph.i, label %scalar_mult.exit._crit_edge.i, !llvm.loop !140

scalar_mult.exit._crit_edge.i:                    ; preds = %scalar_mult_add.exit.i, %scalar_mult.exit.preheader.i
  %.1.lcssa.i = phi ptr [ %.121.i, %scalar_mult.exit.preheader.i ], [ %.1.i, %scalar_mult_add.exit.i ]
  call fastcc void @scalar_inverse_ntt(ptr noundef %.01426.i)
  %i.lk = getelementptr i8, ptr %.01426.i, i64 512
  %i.ll = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ll, label %.preheader.i, label %matrix_mult_intt.exit, !llvm.loop !141

matrix_mult_intt.exit:                            ; preds = %scalar_mult.exit._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ln = getelementptr i8, ptr %5, i64 24        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %middle.block218, %matrix_mult_intt.exit
  %.1 = phi i8 [ %i.u, %matrix_mult_intt.exit ], [ %i.lo, %middle.block218 ] ; 2 uses
  %.08.i52 = phi i32 [ %i.l, %matrix_mult_intt.exit ], [ %i.mx, %middle.block218 ] ; 2 uses
  %.07.i = phi ptr [ %3, %matrix_mult_intt.exit ], [ %i.mw, %middle.block218 ] ; 2 uses
  %i.lo = add i8 %.1, 1                           ; 2 uses
  store i8 %.1, ptr %i.lm, align 16, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %.val.i.i = load ptr, ptr %i.ln, align 8, !tbaa !31
  %i.lp = call fastcc i32 @prf(ptr noundef %i.b, i64 noundef 128, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr %.val.i.i)
  %.not.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i, label %gencbd_vector.exit.thread, label %vector.body213

vector.body213:                                   ; preds = %bb.e, %vector.body213
  %index214 = phi i64 [ %index.next217, %vector.body213 ], [ 0, %bb.e ] ; 3 uses
  %i.lq = shl nuw i64 %index214, 2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 %index214
  %i.ls = getelementptr inbounds nuw i8, ptr %.07.i, i64 %i.lq
  %wide.load215 = load <4 x i8>, ptr %i.lr, align 4, !tbaa !47
  %i.lt = zext <4 x i8> %wide.load215 to <4 x i32> ; 8 uses
  %i.lu = and <4 x i32> %i.lt, splat (i32 1)
  %i.lv = lshr <4 x i32> %i.lt, splat (i32 1)
  %i.lw = and <4 x i32> %i.lv, splat (i32 1)
  %i.lx = shl <4 x i32> %i.lt, splat (i32 29)
  %i.ly = ashr <4 x i32> %i.lx, splat (i32 31)
  %i.lz = shl <4 x i32> %i.lt, splat (i32 28)
  %i.ma = ashr <4 x i32> %i.lz, splat (i32 31)
  %i.mb = add nuw nsw <4 x i32> %i.lw, %i.lu
  %i.mc = add nsw <4 x i32> %i.mb, %i.ma
  %i.md = add nsw <4 x i32> %i.mc, %i.ly          ; 2 uses
  %i.me = icmp slt <4 x i32> %i.md, zeroinitializer
  %i.mf = select <4 x i1> %i.me, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.mg = add nsw <4 x i32> %i.mf, %i.md
  %i.mh = lshr <4 x i32> %i.lt, splat (i32 4)
  %i.mi = and <4 x i32> %i.mh, splat (i32 1)
  %i.mj = lshr <4 x i32> %i.lt, splat (i32 5)
  %i.mk = and <4 x i32> %i.mj, splat (i32 1)
  %i.ml = shl <4 x i32> %i.lt, splat (i32 25)
  %i.mm = ashr <4 x i32> %i.ml, splat (i32 31)
  %i.mn = lshr <4 x i32> %i.lt, splat (i32 7)
  %i.mo = sub nsw <4 x i32> %i.mk, %i.mn
  %i.mp = add nsw <4 x i32> %i.mo, %i.mi
  %i.mq = add nsw <4 x i32> %i.mp, %i.mm          ; 2 uses
  %i.mr = icmp slt <4 x i32> %i.mq, zeroinitializer
  %i.ms = select <4 x i1> %i.mr, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.mt = add nsw <4 x i32> %i.ms, %i.mq
  %i.mu = shufflevector <4 x i32> %i.mg, <4 x i32> %i.mt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec216 = trunc nsw <8 x i32> %i.mu to <8 x i16>
  store <8 x i16> %interleaved.vec216, ptr %i.ls, align 2, !tbaa !44
  %index.next217 = add nuw i64 %index214, 4       ; 2 uses
  %i.mv = icmp eq i64 %index.next217, 128
  br i1 %i.mv, label %middle.block218, label %vector.body213, !llvm.loop !142

gencbd_vector.exit.thread:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %scalar_encode.exit

middle.block218:                                  ; preds = %vector.body213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.mw = getelementptr inbounds nuw i8, ptr %.07.i, i64 512
  %i.mx = add nsw i32 %.08.i52, -1
  %i.my = icmp sgt i32 %.08.i52, 1
  br i1 %i.my, label %bb.e, label %bb.f, !llvm.loop !143

bb.f:                                             ; preds = %middle.block218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %smin220 = call i32 @llvm.smin.i32(i32 %i.l, i32 1)
  %i.mz = sub i32 %i.l, %smin220
  %i.na = zext i32 %i.mz to i64                   ; 2 uses
  %i.nb = shl nuw nsw i64 %i.na, 9
  %i.nc = add nsw i64 %i.m, %i.na
  %i.nd = shl nsw i64 %i.nc, 9
  %i.ne = getelementptr i8, ptr %3, i64 %i.nd
  %scevgep221.a = getelementptr i8, ptr %i.ne, i64 512
  %i.nf = getelementptr i8, ptr %3, i64 %i.nb
  %scevgep222 = getelementptr i8, ptr %i.nf, i64 512
  %bound0223 = icmp ult ptr %i.n, %scevgep222
  %bound1224 = icmp ult ptr %3, %scevgep221.a
  %found.conflict225 = and i1 %bound0223, %bound1224
  br label %vector.memcheck219

vector.memcheck219:                               ; preds = %bb.f, %scalar_add.exit.i
  %.03.i = phi ptr [ %i.n, %bb.f ], [ %i.op, %scalar_add.exit.i ] ; 4 uses
  %.02.i = phi ptr [ %3, %bb.f ], [ %i.oq, %scalar_add.exit.i ] ; 4 uses
  %.0.i57 = phi i32 [ %i.l, %bb.f ], [ %i.or, %scalar_add.exit.i ] ; 2 uses
  br i1 %found.conflict225, label %scalar.ph226, label %vector.body228

vector.body228:                                   ; preds = %vector.memcheck219, %vector.body228
  %index229 = phi i64 [ %index.next234, %vector.body228 ], [ 0, %vector.memcheck219 ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %index229 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16 ; 2 uses
  %wide.load230.a = load <8 x i16>, ptr %i.ng, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  %wide.load231.a = load <8 x i16>, ptr %i.nh, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %index229 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %wide.load232.a = load <8 x i16>, ptr %i.ni, align 2, !tbaa !44, !alias.scope !161
  %wide.load233 = load <8 x i16>, ptr %i.nj, align 2, !tbaa !44, !alias.scope !161
  %i.nk = add <8 x i16> %wide.load232.a, %wide.load230.a ; 2 uses
  %i.nl = add <8 x i16> %wide.load233, %wide.load231.a ; 2 uses
  %i.nm = add <8 x i16> %i.nk, splat (i16 -3329)  ; 2 uses
  %i.nn = add <8 x i16> %i.nl, splat (i16 -3329)  ; 2 uses
  %i.no = icmp slt <8 x i16> %i.nm, zeroinitializer
  %i.np = icmp slt <8 x i16> %i.nn, zeroinitializer
  %i.nq = select <8 x i1> %i.no, <8 x i16> %i.nk, <8 x i16> zeroinitializer
  %i.nr = select <8 x i1> %i.np, <8 x i16> %i.nl, <8 x i16> zeroinitializer
  %i.ns = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nm, <8 x i16> zeroinitializer)
  %i.nt = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nn, <8 x i16> zeroinitializer)
  %i.nu = or <8 x i16> %i.nq, %i.ns
  %i.nv = or <8 x i16> %i.nr, %i.nt
  store <8 x i16> %i.nu, ptr %i.ng, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  store <8 x i16> %i.nv, ptr %i.nh, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  %index.next234 = add nuw i64 %index229, 16      ; 2 uses
  %i.nw = icmp eq i64 %index.next234, 256
  br i1 %i.nw, label %scalar_add.exit.i, label %vector.body228, !llvm.loop !147

scalar.ph226:                                     ; preds = %vector.memcheck219, %scalar.ph226
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph226 ], [ 0, %vector.memcheck219 ] ; 4 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !44
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.i.i
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !44
  %i.ob = add i16 %i.oa, %i.ny                    ; 2 uses
  %i.oc = add i16 %i.ob, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.oc, 0
  %i.od = select i1 %isneg.i.i.i, i16 %i.ob, i16 0
  %i.oe = call i16 @llvm.smax.i16(i16 %i.oc, i16 0)
  %i.of = or i16 %i.od, %i.oe
  store i16 %i.of, ptr %i.nx, align 2, !tbaa !44
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !44
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.next.i.i
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !44
  %i.ok = add i16 %i.oj, %i.oh                    ; 2 uses
  %i.ol = add i16 %i.ok, -3329                    ; 2 uses
  %isneg.i.i.i.1 = icmp slt i16 %i.ol, 0
  %i.om = select i1 %isneg.i.i.i.1, i16 %i.ok, i16 0
  %i.on = call i16 @llvm.smax.i16(i16 %i.ol, i16 0)
  %i.oo = or i16 %i.om, %i.on
  store i16 %i.oo, ptr %i.og, align 2, !tbaa !44
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i58.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i58.1, label %scalar_add.exit.i, label %scalar.ph226, !llvm.loop !148

scalar_add.exit.i:                                ; preds = %vector.body228, %scalar.ph226
  %i.op = getelementptr inbounds nuw i8, ptr %.03.i, i64 512
  %i.oq = getelementptr inbounds nuw i8, ptr %.02.i, i64 512
  %i.or = add nsw i32 %.0.i57, -1
  %i.os = icmp sgt i32 %.0.i57, 1
  br i1 %i.os, label %vector.memcheck219, label %vector_add.exit, !llvm.loop !149

vector_add.exit:                                  ; preds = %scalar_add.exit.i
  %notmask.i.i.i = shl nsw i32 -1, %i.p
  %i.ot = xor i32 %notmask.i.i.i, -1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert238 = insertelement <8 x i32> poison, i32 %i.ot, i64 0
  %broadcast.splat239 = shufflevector <8 x i32> %broadcast.splatinsert238, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.ph237

vector.ph237:                                     ; preds = %vector_add.exit, %scalar_compress.exit.i
  %.02.i59 = phi ptr [ %i.n, %vector_add.exit ], [ %i.po, %scalar_compress.exit.i ] ; 2 uses
  %.0.i60 = phi i32 [ %i.l, %vector_add.exit ], [ %i.pp, %scalar_compress.exit.i ] ; 2 uses
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph237
  %index241 = phi i64 [ 0, %vector.ph237 ], [ %index.next243, %vector.body240 ] ; 2 uses
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %.02.i59, i64 %index241 ; 2 uses
  %wide.load242 = load <8 x i16>, ptr %i.ou, align 2, !tbaa !44
  %i.ov = zext <8 x i16> %wide.load242 to <8 x i32>
  %i.ow = shl <8 x i32> %i.ov, %broadcast.splat   ; 2 uses
  %i.ox = zext <8 x i32> %i.ow to <8 x i64>
  %i.oy = mul nuw nsw <8 x i64> %i.ox, splat (i64 5039)
  %i.oz = lshr <8 x i64> %i.oy, splat (i64 24)
  %i.pa = trunc nuw nsw <8 x i64> %i.oz to <8 x i32> ; 2 uses
  %i.pb = mul <8 x i32> %i.pa, splat (i32 -3329)
  %i.pc = add <8 x i32> %i.pb, %i.ow              ; 4 uses
  %i.pd = sub <8 x i32> splat (i32 1664), %i.pc
  %i.pe = or <8 x i32> %i.pd, %i.pc
  %i.pf = lshr <8 x i32> %i.pe, splat (i32 31)
  %i.pg = add nuw nsw <8 x i32> %i.pf, %i.pa
  %i.ph = sub <8 x i32> splat (i32 4993), %i.pc
  %i.pi = or <8 x i32> %i.ph, %i.pc
  %i.pj = lshr <8 x i32> %i.pi, splat (i32 31)
  %i.pk = add nuw nsw <8 x i32> %i.pg, %i.pj
  %i.pl = and <8 x i32> %i.pk, %broadcast.splat239
  %i.pm = trunc <8 x i32> %i.pl to <8 x i16>
  store <8 x i16> %i.pm, ptr %i.ou, align 2, !tbaa !44
  %index.next243 = add nuw i64 %index241, 8       ; 2 uses
  %i.pn = icmp eq i64 %index.next243, 256
  br i1 %i.pn, label %scalar_compress.exit.i, label %vector.body240, !llvm.loop !150

scalar_compress.exit.i:                           ; preds = %vector.body240
  %i.po = getelementptr inbounds nuw i8, ptr %.02.i59, i64 512
  %i.pp = add nsw i32 %.0.i60, -1
  %i.pq = icmp sgt i32 %.0.i60, 1
  br i1 %i.pq, label %vector.ph237, label %vector_compress.exit, !llvm.loop !151

vector_compress.exit:                             ; preds = %scalar_compress.exit.i
  br i1 %i.aa, label %.lr.ph.i65, label %vector_encode.exit

.lr.ph.i65:                                       ; preds = %vector_compress.exit
  %i.pr = shl nsw i32 %i.p, 5
  %i.ps = sext i32 %i.pr to i64
  br label %bb.g

bb.g:                                             ; preds = %scalar_encode.exit.i, %.lr.ph.i65
  %.010.i = phi i32 [ %i.l, %.lr.ph.i65 ], [ %i.qj, %scalar_encode.exit.i ] ; 2 uses
  %.069.i = phi ptr [ %0, %.lr.ph.i65 ], [ %i.ql, %scalar_encode.exit.i ] ; 2 uses
  %.078.i = phi ptr [ %i.n, %.lr.ph.i65 ], [ %i.qk, %scalar_encode.exit.i ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %.028.i.i = phi ptr [ %.069.i, %bb.g ], [ %.129.i.i, %bb.l ] ; 3 uses
  %.027.idx.i.i = phi i64 [ 0, %bb.g ], [ %.027.add.i.i, %bb.l ] ; 3 uses
  %.025.i.i66 = phi i64 [ 0, %bb.g ], [ %.126.i.i, %bb.l ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %bb.g ], [ %.1.i.i, %bb.l ] ; 4 uses
  %.027.ptr.i.i = getelementptr inbounds nuw i8, ptr %.078.i, i64 %.027.idx.i.i
  %.027.add.i.i = add nuw nsw i64 %.027.idx.i.i, 2
  %i.pt = load i16, ptr %.027.ptr.i.i, align 2, !tbaa !44
  %i.pu = zext i16 %i.pt to i64                   ; 3 uses
  %i.pv = add nsw i32 %.0.i.i, %i.p               ; 4 uses
  %i.pw = icmp slt i32 %i.pv, 64
  br i1 %i.pw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.px = zext nneg i32 %.0.i.i to i64
  %i.py = shl i64 %i.pu, %i.px
  %i.pz = or i64 %i.py, %.025.i.i66
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not.i.i67 = icmp eq i32 %i.pv, 64
  %i.qa = zext nneg i32 %.0.i.i to i64
  %i.qb = shl i64 %i.pu, %i.qa
  %i.qc = or i64 %i.qb, %.025.i.i66
  store i64 %i.qc, ptr %.028.i.i, align 1
  %i.qd = getelementptr inbounds nuw i8, ptr %.028.i.i, i64 8 ; 2 uses
  br i1 %.not.i.i67, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.qe = sub nsw i32 64, %.0.i.i
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = lshr i64 %i.pu, %i.qf
  %i.qh = add nsw i32 %i.pv, -64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.129.i.i = phi ptr [ %.028.i.i, %bb.i ], [ %i.qd, %bb.k ], [ %i.qd, %bb.j ]
  %.126.i.i = phi i64 [ %i.pz, %bb.i ], [ %i.qg, %bb.k ], [ 0, %bb.j ]
  %.1.i.i = phi i32 [ %i.pv, %bb.i ], [ %i.qh, %bb.k ], [ 0, %bb.j ]
  %i.qi = icmp samesign ult i64 %.027.idx.i.i, 510
  br i1 %i.qi, label %bb.h, label %scalar_encode.exit.i, !llvm.loop !0

scalar_encode.exit.i:                             ; preds = %bb.l
  %i.qj = add nsw i32 %.010.i, -1
  %i.qk = getelementptr inbounds nuw i8, ptr %.078.i, i64 512
  %i.ql = getelementptr inbounds i8, ptr %.069.i, i64 %i.ps
  %i.qm = icmp sgt i32 %.010.i, 1
  br i1 %i.qm, label %bb.g, label %vector_encode.exit, !llvm.loop !1

vector_encode.exit:                               ; preds = %scalar_encode.exit.i, %vector_compress.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 %i.lo, ptr %i.qn, align 16, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.val.i = load ptr, ptr %i.ln, align 8, !tbaa !31
  %i.qo = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 128, ptr noundef nonnull %i.e, ptr noundef nonnull %4, ptr %.val.i)
  %.not.i68 = icmp eq i32 %i.qo, 0
  br i1 %.not.i68, label %cbd_2.exit.thread, label %vector.body247

vector.body247:                                   ; preds = %vector_encode.exit, %vector.body247
  %index248 = phi i64 [ %index.next251, %vector.body247 ], [ 0, %vector_encode.exit ] ; 3 uses
  %i.qp = shl nuw i64 %index248, 2
  %i.qq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index248
  %i.qr = getelementptr inbounds nuw i8, ptr %3, i64 %i.qp
  %wide.load249 = load <4 x i8>, ptr %i.qq, align 4, !tbaa !47
  %i.qs = zext <4 x i8> %wide.load249 to <4 x i32> ; 8 uses
  %i.qt = and <4 x i32> %i.qs, splat (i32 1)
  %i.qu = lshr <4 x i32> %i.qs, splat (i32 1)
  %i.qv = and <4 x i32> %i.qu, splat (i32 1)
  %i.qw = shl <4 x i32> %i.qs, splat (i32 29)
  %i.qx = ashr <4 x i32> %i.qw, splat (i32 31)
  %i.qy = shl <4 x i32> %i.qs, splat (i32 28)
  %i.qz = ashr <4 x i32> %i.qy, splat (i32 31)
  %i.ra = add nuw nsw <4 x i32> %i.qv, %i.qt
  %i.rb = add nsw <4 x i32> %i.ra, %i.qz
  %i.rc = add nsw <4 x i32> %i.rb, %i.qx          ; 2 uses
  %i.rd = icmp slt <4 x i32> %i.rc, zeroinitializer
  %i.re = select <4 x i1> %i.rd, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.rf = add nsw <4 x i32> %i.re, %i.rc
  %i.rg = lshr <4 x i32> %i.qs, splat (i32 4)
  %i.rh = and <4 x i32> %i.rg, splat (i32 1)
  %i.ri = lshr <4 x i32> %i.qs, splat (i32 5)
  %i.rj = and <4 x i32> %i.ri, splat (i32 1)
  %i.rk = shl <4 x i32> %i.qs, splat (i32 25)
  %i.rl = ashr <4 x i32> %i.rk, splat (i32 31)
  %i.rm = lshr <4 x i32> %i.qs, splat (i32 7)
  %i.rn = sub nsw <4 x i32> %i.rj, %i.rm
  %i.ro = add nsw <4 x i32> %i.rn, %i.rh
  %i.rp = add nsw <4 x i32> %i.ro, %i.rl          ; 2 uses
  %i.rq = icmp slt <4 x i32> %i.rp, zeroinitializer
  %i.rr = select <4 x i1> %i.rq, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.rs = add nsw <4 x i32> %i.rr, %i.rp
  %i.rt = shufflevector <4 x i32> %i.rf, <4 x i32> %i.rs, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec250 = trunc nsw <8 x i32> %i.rt to <8 x i16>
  store <8 x i16> %interleaved.vec250, ptr %i.qr, align 2, !tbaa !44
  %index.next251 = add nuw i64 %index248, 4       ; 2 uses
  %i.ru = icmp eq i64 %index.next251, 128
  br i1 %i.ru, label %middle.block252, label %vector.body247, !llvm.loop !152

cbd_2.exit.thread:                                ; preds = %vector_encode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %scalar_encode.exit

middle.block252:                                  ; preds = %vector.body247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %middle.block252
  %index256 = phi i64 [ 0, %middle.block252 ], [ %index.next261, %vector.body255 ] ; 3 uses
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index256 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16 ; 2 uses
  %wide.load257.a = load <8 x i16>, ptr %i.rv, align 2, !tbaa !44
  %wide.load258.a = load <8 x i16>, ptr %i.rw, align 2, !tbaa !44
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index256 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %wide.load259.a = load <8 x i16>, ptr %i.rx, align 2, !tbaa !44
  %wide.load260 = load <8 x i16>, ptr %i.ry, align 2, !tbaa !44
  %i.rz = add <8 x i16> %wide.load259.a, %wide.load257.a ; 2 uses
  %i.sa = add <8 x i16> %wide.load260, %wide.load258.a ; 2 uses
  %i.sb = add <8 x i16> %i.rz, splat (i16 -3329)  ; 2 uses
  %i.sc = add <8 x i16> %i.sa, splat (i16 -3329)  ; 2 uses
  %i.sd = icmp slt <8 x i16> %i.sb, zeroinitializer
  %i.se = icmp slt <8 x i16> %i.sc, zeroinitializer
  %i.sf = select <8 x i1> %i.sd, <8 x i16> %i.rz, <8 x i16> zeroinitializer
  %i.sg = select <8 x i1> %i.se, <8 x i16> %i.sa, <8 x i16> zeroinitializer
  %i.sh = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sb, <8 x i16> zeroinitializer)
  %i.si = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sc, <8 x i16> zeroinitializer)
  %i.sj = or <8 x i16> %i.sf, %i.sh
  %i.sk = or <8 x i16> %i.sg, %i.si
  store <8 x i16> %i.sj, ptr %i.rv, align 2, !tbaa !44
  store <8 x i16> %i.sk, ptr %i.rw, align 2, !tbaa !44
  %index.next261 = add nuw i64 %index256, 16      ; 2 uses
  %i.sl = icmp eq i64 %index.next261, 256
  br i1 %i.sl, label %vector.body265, label %vector.body255, !llvm.loop !153

vector.body265:                                   ; preds = %vector.body255, %vector.body265
  %index266 = phi i64 [ %index.next270, %vector.body265 ], [ 0, %vector.body255 ] ; 3 uses
  %next.gep267 = getelementptr i8, ptr %1, i64 %index266
  %i.sm = shl nuw i64 %index266, 4                ; 8 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %6, i64 %i.sm ; 9 uses
  %i.so = getelementptr inbounds nuw i8, ptr %6, i64 %i.sm ; 8 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %6, i64 %i.sm ; 8 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 32
  %i.ss = getelementptr inbounds nuw i8, ptr %6, i64 %i.sm ; 8 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 48
  %i.su = getelementptr inbounds nuw i8, ptr %6, i64 %i.sm ; 8 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 64
  %i.sw = getelementptr inbounds nuw i8, ptr %6, i64 %i.sm ; 8 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 80
  %i.sy = getelementptr inbounds nuw i8, ptr %6, i64 %i.sm ; 8 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 96
  %i.ta = getelementptr inbounds nuw i8, ptr %6, i64 %i.sm ; 8 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 112
  %wide.load268 = load <8 x i8>, ptr %next.gep267, align 1, !tbaa !47 ; 8 uses
  %i.tc = and <8 x i8> %wide.load268, splat (i8 1)
  %i.td = zext nneg <8 x i8> %i.tc to <8 x i16>
  %i.te = sub nsw <8 x i16> zeroinitializer, %i.td
  %i.tf = load i16, ptr %i.sn, align 2, !tbaa !44
  %i.tg = load i16, ptr %i.sp, align 2, !tbaa !44
  %i.th = load i16, ptr %i.sr, align 2, !tbaa !44
  %i.ti = load i16, ptr %i.st, align 2, !tbaa !44
  %i.tj = load i16, ptr %i.sv, align 2, !tbaa !44
  %i.tk = load i16, ptr %i.sx, align 2, !tbaa !44
  %i.tl = load i16, ptr %i.sz, align 2, !tbaa !44
  %i.tm = load i16, ptr %i.tb, align 2, !tbaa !44
  %i.tn = insertelement <8 x i16> poison, i16 %i.tf, i64 0
  %i.to = insertelement <8 x i16> %i.tn, i16 %i.tg, i64 1
  %i.tp = insertelement <8 x i16> %i.to, i16 %i.th, i64 2
  %i.tq = insertelement <8 x i16> %i.tp, i16 %i.ti, i64 3
  %i.tr = insertelement <8 x i16> %i.tq, i16 %i.tj, i64 4
  %i.ts = insertelement <8 x i16> %i.tr, i16 %i.tk, i64 5
  %i.tt = insertelement <8 x i16> %i.ts, i16 %i.tl, i64 6
  %i.tu = insertelement <8 x i16> %i.tt, i16 %i.tm, i64 7
  %i.tv = and <8 x i16> %i.te, splat (i16 1665)
  %i.tw = add <8 x i16> %i.tv, %i.tu              ; 2 uses
  %i.tx = add <8 x i16> %i.tw, splat (i16 -3329)  ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sn, i64 2
  %i.tz = getelementptr inbounds nuw i8, ptr %i.so, i64 18
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sq, i64 34
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ss, i64 50
  %i.uc = getelementptr inbounds nuw i8, ptr %i.su, i64 66
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sw, i64 82
  %i.ue = getelementptr inbounds nuw i8, ptr %i.sy, i64 98
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ta, i64 114
  %i.ug = lshr <8 x i8> %wide.load268, splat (i8 1)
  %i.uh = and <8 x i8> %i.ug, splat (i8 1)
  %i.ui = zext nneg <8 x i8> %i.uh to <8 x i16>
  %i.uj = sub nsw <8 x i16> zeroinitializer, %i.ui
  %i.uk = load i16, ptr %i.ty, align 2, !tbaa !44
  %i.ul = load i16, ptr %i.tz, align 2, !tbaa !44
  %i.um = load i16, ptr %i.ua, align 2, !tbaa !44
  %i.un = load i16, ptr %i.ub, align 2, !tbaa !44
  %i.uo = load i16, ptr %i.uc, align 2, !tbaa !44
  %i.up = load i16, ptr %i.ud, align 2, !tbaa !44
  %i.uq = load i16, ptr %i.ue, align 2, !tbaa !44
  %i.ur = load i16, ptr %i.uf, align 2, !tbaa !44
  %i.us = insertelement <8 x i16> poison, i16 %i.uk, i64 0
  %i.ut = insertelement <8 x i16> %i.us, i16 %i.ul, i64 1
  %i.uu = insertelement <8 x i16> %i.ut, i16 %i.um, i64 2
  %i.uv = insertelement <8 x i16> %i.uu, i16 %i.un, i64 3
  %i.uw = insertelement <8 x i16> %i.uv, i16 %i.uo, i64 4
  %i.ux = insertelement <8 x i16> %i.uw, i16 %i.up, i64 5
  %i.uy = insertelement <8 x i16> %i.ux, i16 %i.uq, i64 6
  %i.uz = insertelement <8 x i16> %i.uy, i16 %i.ur, i64 7
  %i.va = and <8 x i16> %i.uj, splat (i16 1665)
  %i.vb = add <8 x i16> %i.va, %i.uz              ; 2 uses
  %i.vc = add <8 x i16> %i.vb, splat (i16 -3329)  ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.ve = getelementptr inbounds nuw i8, ptr %i.so, i64 20
  %i.vf = getelementptr inbounds nuw i8, ptr %i.sq, i64 36
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ss, i64 52
  %i.vh = getelementptr inbounds nuw i8, ptr %i.su, i64 68
  %i.vi = getelementptr inbounds nuw i8, ptr %i.sw, i64 84
  %i.vj = getelementptr inbounds nuw i8, ptr %i.sy, i64 100
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ta, i64 116
  %i.vl = lshr <8 x i8> %wide.load268, splat (i8 2)
  %i.vm = and <8 x i8> %i.vl, splat (i8 1)
  %i.vn = zext nneg <8 x i8> %i.vm to <8 x i16>
  %i.vo = sub nsw <8 x i16> zeroinitializer, %i.vn
  %i.vp = load i16, ptr %i.vd, align 2, !tbaa !44
  %i.vq = load i16, ptr %i.ve, align 2, !tbaa !44
  %i.vr = load i16, ptr %i.vf, align 2, !tbaa !44
  %i.vs = load i16, ptr %i.vg, align 2, !tbaa !44
  %i.vt = load i16, ptr %i.vh, align 2, !tbaa !44
  %i.vu = load i16, ptr %i.vi, align 2, !tbaa !44
  %i.vv = load i16, ptr %i.vj, align 2, !tbaa !44
  %i.vw = load i16, ptr %i.vk, align 2, !tbaa !44
  %i.vx = insertelement <8 x i16> poison, i16 %i.vp, i64 0
  %i.vy = insertelement <8 x i16> %i.vx, i16 %i.vq, i64 1
  %i.vz = insertelement <8 x i16> %i.vy, i16 %i.vr, i64 2
  %i.wa = insertelement <8 x i16> %i.vz, i16 %i.vs, i64 3
  %i.wb = insertelement <8 x i16> %i.wa, i16 %i.vt, i64 4
  %i.wc = insertelement <8 x i16> %i.wb, i16 %i.vu, i64 5
  %i.wd = insertelement <8 x i16> %i.wc, i16 %i.vv, i64 6
  %i.we = insertelement <8 x i16> %i.wd, i16 %i.vw, i64 7
  %i.wf = and <8 x i16> %i.vo, splat (i16 1665)
  %i.wg = add <8 x i16> %i.we, %i.wf              ; 2 uses
  %i.wh = add <8 x i16> %i.wg, splat (i16 -3329)  ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.sn, i64 6
  %i.wj = getelementptr inbounds nuw i8, ptr %i.so, i64 22
  %i.wk = getelementptr inbounds nuw i8, ptr %i.sq, i64 38
  %i.wl = getelementptr inbounds nuw i8, ptr %i.ss, i64 54
  %i.wm = getelementptr inbounds nuw i8, ptr %i.su, i64 70
  %i.wn = getelementptr inbounds nuw i8, ptr %i.sw, i64 86
  %i.wo = getelementptr inbounds nuw i8, ptr %i.sy, i64 102
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ta, i64 118
  %i.wq = lshr <8 x i8> %wide.load268, splat (i8 3)
  %i.wr = and <8 x i8> %i.wq, splat (i8 1)
  %i.ws = zext nneg <8 x i8> %i.wr to <8 x i16>
  %i.wt = sub nsw <8 x i16> zeroinitializer, %i.ws
  %i.wu = load i16, ptr %i.wi, align 2, !tbaa !44
  %i.wv = load i16, ptr %i.wj, align 2, !tbaa !44
  %i.ww = load i16, ptr %i.wk, align 2, !tbaa !44
  %i.wx = load i16, ptr %i.wl, align 2, !tbaa !44
  %i.wy = load i16, ptr %i.wm, align 2, !tbaa !44
  %i.wz = load i16, ptr %i.wn, align 2, !tbaa !44
  %i.xa = load i16, ptr %i.wo, align 2, !tbaa !44
  %i.xb = load i16, ptr %i.wp, align 2, !tbaa !44
  %i.xc = insertelement <8 x i16> poison, i16 %i.wu, i64 0
  %i.xd = insertelement <8 x i16> %i.xc, i16 %i.wv, i64 1
  %i.xe = insertelement <8 x i16> %i.xd, i16 %i.ww, i64 2
  %i.xf = insertelement <8 x i16> %i.xe, i16 %i.wx, i64 3
  %i.xg = insertelement <8 x i16> %i.xf, i16 %i.wy, i64 4
  %i.xh = insertelement <8 x i16> %i.xg, i16 %i.wz, i64 5
  %i.xi = insertelement <8 x i16> %i.xh, i16 %i.xa, i64 6
  %i.xj = insertelement <8 x i16> %i.xi, i16 %i.xb, i64 7
  %i.xk = and <8 x i16> %i.wt, splat (i16 1665)
  %i.xl = add <8 x i16> %i.xj, %i.xk              ; 2 uses
  %i.xm = add <8 x i16> %i.xl, splat (i16 -3329)  ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.xp = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ss, i64 56
  %i.xr = getelementptr inbounds nuw i8, ptr %i.su, i64 72
  %i.xs = getelementptr inbounds nuw i8, ptr %i.sw, i64 88
end_hunk_1
