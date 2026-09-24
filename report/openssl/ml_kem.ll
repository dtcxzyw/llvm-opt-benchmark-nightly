Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_kem?download=true
inline.NumInlined: 101
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@matrix_expand:bb.a
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
  %4 = and <16 x i32> %i.em, splat (i32 32768)
  %5 = icmp eq <16 x i32> %4, zeroinitializer
  %i.en = select <16 x i1> %5, <16 x i32> zeroinitializer, <16 x i32> splat (i32 3329)
  %i.eo = shufflevector <8 x i32> %i.cp, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ep = add nsw <16 x i32> %i.en, %i.eo
  %i.eq = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %6 = and <16 x i32> %i.eq, splat (i32 32768)
  %7 = icmp eq <16 x i32> %6, zeroinitializer
  %i.er = select <16 x i1> %7, <16 x i32> zeroinitializer, <16 x i32> splat (i32 3329)
  %i.es = shufflevector <8 x i32> %i.dv, <8 x i32> %i.el, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.et = add nsw <16 x i32> %i.er, %i.es
  %i.eu = shufflevector <16 x i32> %i.ep, <16 x i32> %i.et, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.eu to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.m, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, 64
  br i1 %i.ev, label %.loopexit, label %vector.body, !llvm.loop !98

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
  %4 = and <4 x i32> %i.q, splat (i32 32768)
  %5 = icmp eq <4 x i32> %4, zeroinitializer
  %i.r = select <4 x i1> %5, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.s = add nsw <4 x i32> %i.r, %i.q
  %i.t = lshr <4 x i32> %i.g, splat (i32 4)
  %i.u = and <4 x i32> %i.t, splat (i32 1)
  %i.v = lshr <4 x i32> %i.g, splat (i32 5)
  %i.w = and <4 x i32> %i.v, splat (i32 1)
  %i.x = shl <4 x i32> %i.g, splat (i32 25)
  %i.y = ashr <4 x i32> %i.x, splat (i32 31)
  %i.z = lshr <4 x i32> %i.g, splat (i32 7)
  %i.aa = sub nsw <4 x i32> %i.w, %i.z
  %i.ab = add nsw <4 x i32> %i.aa, %i.u
  %i.ac = add nsw <4 x i32> %i.ab, %i.y           ; 2 uses
  %6 = and <4 x i32> %i.ac, splat (i32 32768)
  %7 = icmp eq <4 x i32> %6, zeroinitializer
  %i.ad = select <4 x i1> %7, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.ae = add nsw <4 x i32> %i.ad, %i.ac
  %i.af = shufflevector <4 x i32> %i.s, <4 x i32> %i.ae, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nsw <8 x i32> %i.af to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.f, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, 128
  br i1 %i.ag, label %.loopexit, label %vector.body, !llvm.loop !99

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
  br i1 %cmp.n, label %.loopexit138, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.1.ph = phi ptr [ %.019.ptr, %bb.b ], [ %i.o, %middle.block ]
  %.0.idx.ph = phi i64 [ %.019.add, %bb.b ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1 = phi ptr [ %i.bs, %scalar.ph ], [ %.1.ph, %scalar.ph.preheader ] ; 3 uses
  %.0.idx = phi i64 [ %.0.add, %scalar.ph ], [ %.0.idx.ph, %scalar.ph.preheader ] ; 3 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx ; 2 uses
  %i.au = load i16, ptr %.1, align 2, !tbaa !44   ; 2 uses
  %i.av = load i16, ptr %.0.ptr, align 2, !tbaa !44
  %i.aw = zext i16 %i.av to i32
  %i.ax = mul nuw i32 %i.aw, %i.d                 ; 2 uses
end_hunk_0
begin_hunk_1_@encrypt_cpa:bb.a
  %wide.vec = load <8 x i16>, ptr %next.gep142, align 2, !tbaa !44, !alias.scope !158
  %i.gp = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.gq = bitcast <8 x i16> %i.gp to <4 x i32>
  %i.gr = bitcast <8 x i16> %i.gp to <4 x i32>
  %i.gs = and <4 x i32> %i.gr, splat (i32 65535)  ; 2 uses
  %i.gt = lshr <4 x i32> %i.gq, splat (i32 16)    ; 2 uses
  %wide.vec144 = load <8 x i16>, ptr %next.gep141, align 2, !tbaa !44
  %i.gu = freeze <8 x i16> %wide.vec144           ; 2 uses
  %i.gv = bitcast <8 x i16> %i.gu to <4 x i32>
  %i.gw = bitcast <8 x i16> %i.gu to <4 x i32>
  %i.gx = and <4 x i32> %i.gw, splat (i32 65535)  ; 2 uses
  %i.gy = lshr <4 x i32> %i.gv, splat (i32 16)    ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !44, !alias.scope !159
  %i.gz = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec147 = load <8 x i16>, ptr %i.go, align 2, !tbaa !44
  %i.ha = freeze <8 x i16> %wide.vec147           ; 2 uses
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

bb.e:                                             ; preds = %middle.block217, %matrix_mult_intt.exit
  %.1 = phi i8 [ %i.u, %matrix_mult_intt.exit ], [ %i.lo, %middle.block217 ] ; 2 uses
  %.08.i52 = phi i32 [ %i.l, %matrix_mult_intt.exit ], [ %i.mv, %middle.block217 ] ; 2 uses
  %.07.i = phi ptr [ %3, %matrix_mult_intt.exit ], [ %i.mu, %middle.block217 ] ; 2 uses
  %i.lo = add i8 %.1, 1                           ; 2 uses
  store i8 %.1, ptr %i.lm, align 16, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %.val.i.i = load ptr, ptr %i.ln, align 8, !tbaa !31
  %i.lp = call fastcc i32 @prf(ptr noundef %i.b, i64 noundef 128, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr %.val.i.i)
  %.not.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i, label %gencbd_vector.exit.thread, label %vector.body212

vector.body212:                                   ; preds = %bb.e, %vector.body212
  %index213 = phi i64 [ %index.next216, %vector.body212 ], [ 0, %bb.e ] ; 3 uses
  %i.lq = shl nuw i64 %index213, 2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 %index213
  %i.ls = getelementptr inbounds nuw i8, ptr %.07.i, i64 %i.lq
  %wide.load214 = load <4 x i8>, ptr %i.lr, align 4, !tbaa !47
  %i.lt = zext <4 x i8> %wide.load214 to <4 x i32> ; 8 uses
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
  %7 = and <4 x i32> %i.md, splat (i32 32768)
  %8 = icmp eq <4 x i32> %7, zeroinitializer
  %i.me = select <4 x i1> %8, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.mf = add nsw <4 x i32> %i.me, %i.md
  %i.mg = lshr <4 x i32> %i.lt, splat (i32 4)
  %i.mh = and <4 x i32> %i.mg, splat (i32 1)
  %i.mi = lshr <4 x i32> %i.lt, splat (i32 5)
  %i.mj = and <4 x i32> %i.mi, splat (i32 1)
  %i.mk = shl <4 x i32> %i.lt, splat (i32 25)
  %i.ml = ashr <4 x i32> %i.mk, splat (i32 31)
  %i.mm = lshr <4 x i32> %i.lt, splat (i32 7)
  %i.mn = sub nsw <4 x i32> %i.mj, %i.mm
  %i.mo = add nsw <4 x i32> %i.mn, %i.mh
  %i.mp = add nsw <4 x i32> %i.mo, %i.ml          ; 2 uses
  %9 = and <4 x i32> %i.mp, splat (i32 32768)
  %10 = icmp eq <4 x i32> %9, zeroinitializer
  %i.mq = select <4 x i1> %10, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.mr = add nsw <4 x i32> %i.mq, %i.mp
  %i.ms = shufflevector <4 x i32> %i.mf, <4 x i32> %i.mr, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec215 = trunc nsw <8 x i32> %i.ms to <8 x i16>
  store <8 x i16> %interleaved.vec215, ptr %i.ls, align 2, !tbaa !44
  %index.next216 = add nuw i64 %index213, 4       ; 2 uses
  %i.mt = icmp eq i64 %index.next216, 128
  br i1 %i.mt, label %middle.block217, label %vector.body212, !llvm.loop !142

gencbd_vector.exit.thread:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %scalar_encode.exit

middle.block217:                                  ; preds = %vector.body212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.mu = getelementptr inbounds nuw i8, ptr %.07.i, i64 512
  %i.mv = add nsw i32 %.08.i52, -1
  %i.mw = icmp sgt i32 %.08.i52, 1
  br i1 %i.mw, label %bb.e, label %bb.f, !llvm.loop !143

bb.f:                                             ; preds = %middle.block217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %smin219 = call i32 @llvm.smin.i32(i32 %i.l, i32 1)
  %i.mx = sub i32 %i.l, %smin219
  %i.my = zext i32 %i.mx to i64                   ; 2 uses
  %i.mz = shl nuw nsw i64 %i.my, 9
  %i.na = add nsw i64 %i.m, %i.my
  %i.nb = shl nsw i64 %i.na, 9
  %i.nc = getelementptr i8, ptr %3, i64 %i.nb
  %scevgep220 = getelementptr i8, ptr %i.nc, i64 512
  %i.nd = getelementptr i8, ptr %3, i64 %i.mz
  %scevgep221 = getelementptr i8, ptr %i.nd, i64 512
  %bound0222 = icmp ult ptr %i.n, %scevgep221
  %bound1223 = icmp ult ptr %3, %scevgep220
  %found.conflict224 = and i1 %bound0222, %bound1223
  br label %vector.memcheck218

vector.memcheck218:                               ; preds = %bb.f, %scalar_add.exit.i
  %.03.i = phi ptr [ %i.n, %bb.f ], [ %i.on, %scalar_add.exit.i ] ; 4 uses
  %.02.i = phi ptr [ %3, %bb.f ], [ %i.oo, %scalar_add.exit.i ] ; 4 uses
  %.0.i57 = phi i32 [ %i.l, %bb.f ], [ %i.op, %scalar_add.exit.i ] ; 2 uses
  br i1 %found.conflict224, label %scalar.ph225, label %vector.body227

vector.body227:                                   ; preds = %vector.memcheck218, %vector.body227
  %index228 = phi i64 [ %index.next233, %vector.body227 ], [ 0, %vector.memcheck218 ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %index228 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 2 uses
  %wide.load229.a = load <8 x i16>, ptr %i.ne, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  %wide.load230.a = load <8 x i16>, ptr %i.nf, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %index228 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %wide.load231 = load <8 x i16>, ptr %i.ng, align 2, !tbaa !44, !alias.scope !161
  %wide.load232 = load <8 x i16>, ptr %i.nh, align 2, !tbaa !44, !alias.scope !161
  %i.ni = add <8 x i16> %wide.load231, %wide.load229.a ; 2 uses
  %i.nj = add <8 x i16> %wide.load232, %wide.load230.a ; 2 uses
  %i.nk = add <8 x i16> %i.ni, splat (i16 -3329)  ; 2 uses
  %i.nl = add <8 x i16> %i.nj, splat (i16 -3329)  ; 2 uses
  %i.nm = icmp slt <8 x i16> %i.nk, zeroinitializer
  %i.nn = icmp slt <8 x i16> %i.nl, zeroinitializer
  %i.no = select <8 x i1> %i.nm, <8 x i16> %i.ni, <8 x i16> zeroinitializer
  %i.np = select <8 x i1> %i.nn, <8 x i16> %i.nj, <8 x i16> zeroinitializer
  %i.nq = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nk, <8 x i16> zeroinitializer)
  %i.nr = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nl, <8 x i16> zeroinitializer)
  %i.ns = or <8 x i16> %i.no, %i.nq
  %i.nt = or <8 x i16> %i.np, %i.nr
  store <8 x i16> %i.ns, ptr %i.ne, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  store <8 x i16> %i.nt, ptr %i.nf, align 2, !tbaa !44, !alias.scope !160, !noalias !161
  %index.next233 = add nuw i64 %index228, 16      ; 2 uses
  %i.nu = icmp eq i64 %index.next233, 256
  br i1 %i.nu, label %scalar_add.exit.i, label %vector.body227, !llvm.loop !147

scalar.ph225:                                     ; preds = %vector.memcheck218, %scalar.ph225
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph225 ], [ 0, %vector.memcheck218 ] ; 4 uses
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.i.i ; 2 uses
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !44
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.i.i
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !44
  %i.nz = add i16 %i.ny, %i.nw                    ; 2 uses
  %i.oa = add i16 %i.nz, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.oa, 0
  %i.ob = select i1 %isneg.i.i.i, i16 %i.nz, i16 0
  %i.oc = call i16 @llvm.smax.i16(i16 %i.oa, i16 0)
  %i.od = or i16 %i.ob, %i.oc
  store i16 %i.od, ptr %i.nv, align 2, !tbaa !44
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.03.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !44
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %.02.i, i64 %indvars.iv.next.i.i
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !44
  %i.oi = add i16 %i.oh, %i.of                    ; 2 uses
  %i.oj = add i16 %i.oi, -3329                    ; 2 uses
  %isneg.i.i.i.1 = icmp slt i16 %i.oj, 0
  %i.ok = select i1 %isneg.i.i.i.1, i16 %i.oi, i16 0
  %i.ol = call i16 @llvm.smax.i16(i16 %i.oj, i16 0)
  %i.om = or i16 %i.ok, %i.ol
  store i16 %i.om, ptr %i.oe, align 2, !tbaa !44
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i58.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i58.1, label %scalar_add.exit.i, label %scalar.ph225, !llvm.loop !148

scalar_add.exit.i:                                ; preds = %vector.body227, %scalar.ph225
  %i.on = getelementptr inbounds nuw i8, ptr %.03.i, i64 512
  %i.oo = getelementptr inbounds nuw i8, ptr %.02.i, i64 512
  %i.op = add nsw i32 %.0.i57, -1
  %i.oq = icmp sgt i32 %.0.i57, 1
  br i1 %i.oq, label %vector.memcheck218, label %vector_add.exit, !llvm.loop !149

vector_add.exit:                                  ; preds = %scalar_add.exit.i
  %notmask.i.i.i = shl nsw i32 -1, %i.p
  %i.or = xor i32 %notmask.i.i.i, -1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert237 = insertelement <8 x i32> poison, i32 %i.or, i64 0
  %broadcast.splat238 = shufflevector <8 x i32> %broadcast.splatinsert237, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.ph236

vector.ph236:                                     ; preds = %vector_add.exit, %scalar_compress.exit.i
  %.02.i59 = phi ptr [ %i.n, %vector_add.exit ], [ %i.pm, %scalar_compress.exit.i ] ; 2 uses
  %.0.i60 = phi i32 [ %i.l, %vector_add.exit ], [ %i.pn, %scalar_compress.exit.i ] ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph236
  %index240 = phi i64 [ 0, %vector.ph236 ], [ %index.next242, %vector.body239 ] ; 2 uses
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %.02.i59, i64 %index240 ; 2 uses
  %wide.load241 = load <8 x i16>, ptr %i.os, align 2, !tbaa !44
  %i.ot = zext <8 x i16> %wide.load241 to <8 x i32>
  %i.ou = shl <8 x i32> %i.ot, %broadcast.splat   ; 2 uses
  %i.ov = zext <8 x i32> %i.ou to <8 x i64>
  %i.ow = mul nuw nsw <8 x i64> %i.ov, splat (i64 5039)
  %i.ox = lshr <8 x i64> %i.ow, splat (i64 24)
  %i.oy = trunc nuw nsw <8 x i64> %i.ox to <8 x i32> ; 2 uses
  %i.oz = mul <8 x i32> %i.oy, splat (i32 -3329)
  %i.pa = add <8 x i32> %i.oz, %i.ou              ; 4 uses
  %i.pb = sub <8 x i32> splat (i32 1664), %i.pa
  %i.pc = or <8 x i32> %i.pb, %i.pa
  %i.pd = lshr <8 x i32> %i.pc, splat (i32 31)
  %i.pe = add nuw nsw <8 x i32> %i.pd, %i.oy
  %i.pf = sub <8 x i32> splat (i32 4993), %i.pa
  %i.pg = or <8 x i32> %i.pf, %i.pa
  %i.ph = lshr <8 x i32> %i.pg, splat (i32 31)
  %i.pi = add nuw nsw <8 x i32> %i.pe, %i.ph
  %i.pj = and <8 x i32> %i.pi, %broadcast.splat238
  %i.pk = trunc <8 x i32> %i.pj to <8 x i16>
  store <8 x i16> %i.pk, ptr %i.os, align 2, !tbaa !44
  %index.next242 = add nuw i64 %index240, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next242, 256
  br i1 %i.pl, label %scalar_compress.exit.i, label %vector.body239, !llvm.loop !150

scalar_compress.exit.i:                           ; preds = %vector.body239
  %i.pm = getelementptr inbounds nuw i8, ptr %.02.i59, i64 512
  %i.pn = add nsw i32 %.0.i60, -1
  %i.po = icmp sgt i32 %.0.i60, 1
  br i1 %i.po, label %vector.ph236, label %vector_compress.exit, !llvm.loop !151

vector_compress.exit:                             ; preds = %scalar_compress.exit.i
  br i1 %i.aa, label %.lr.ph.i65, label %vector_encode.exit

.lr.ph.i65:                                       ; preds = %vector_compress.exit
  %i.pp = shl nsw i32 %i.p, 5
  %i.pq = sext i32 %i.pp to i64
  br label %bb.g

bb.g:                                             ; preds = %scalar_encode.exit.i, %.lr.ph.i65
  %.010.i = phi i32 [ %i.l, %.lr.ph.i65 ], [ %i.qh, %scalar_encode.exit.i ] ; 2 uses
  %.069.i = phi ptr [ %0, %.lr.ph.i65 ], [ %i.qj, %scalar_encode.exit.i ] ; 2 uses
  %.078.i = phi ptr [ %i.n, %.lr.ph.i65 ], [ %i.qi, %scalar_encode.exit.i ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %.028.i.i = phi ptr [ %.069.i, %bb.g ], [ %.129.i.i, %bb.l ] ; 3 uses
  %.027.idx.i.i = phi i64 [ 0, %bb.g ], [ %.027.add.i.i, %bb.l ] ; 3 uses
  %.025.i.i66 = phi i64 [ 0, %bb.g ], [ %.126.i.i, %bb.l ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %bb.g ], [ %.1.i.i, %bb.l ] ; 4 uses
  %.027.ptr.i.i = getelementptr inbounds nuw i8, ptr %.078.i, i64 %.027.idx.i.i
  %.027.add.i.i = add nuw nsw i64 %.027.idx.i.i, 2
  %i.pr = load i16, ptr %.027.ptr.i.i, align 2, !tbaa !44
  %i.ps = zext i16 %i.pr to i64                   ; 3 uses
  %i.pt = add nsw i32 %.0.i.i, %i.p               ; 4 uses
  %i.pu = icmp slt i32 %i.pt, 64
  br i1 %i.pu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.pv = zext nneg i32 %.0.i.i to i64
  %i.pw = shl i64 %i.ps, %i.pv
  %i.px = or i64 %i.pw, %.025.i.i66
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not.i.i67 = icmp eq i32 %i.pt, 64
  %i.py = zext nneg i32 %.0.i.i to i64
  %i.pz = shl i64 %i.ps, %i.py
  %i.qa = or i64 %i.pz, %.025.i.i66
  store i64 %i.qa, ptr %.028.i.i, align 1
  %i.qb = getelementptr inbounds nuw i8, ptr %.028.i.i, i64 8 ; 2 uses
  br i1 %.not.i.i67, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.qc = sub nsw i32 64, %.0.i.i
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = lshr i64 %i.ps, %i.qd
  %i.qf = add nsw i32 %i.pt, -64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.129.i.i = phi ptr [ %.028.i.i, %bb.i ], [ %i.qb, %bb.k ], [ %i.qb, %bb.j ]
  %.126.i.i = phi i64 [ %i.px, %bb.i ], [ %i.qe, %bb.k ], [ 0, %bb.j ]
  %.1.i.i = phi i32 [ %i.pt, %bb.i ], [ %i.qf, %bb.k ], [ 0, %bb.j ]
  %i.qg = icmp samesign ult i64 %.027.idx.i.i, 510
  br i1 %i.qg, label %bb.h, label %scalar_encode.exit.i, !llvm.loop !0

scalar_encode.exit.i:                             ; preds = %bb.l
  %i.qh = add nsw i32 %.010.i, -1
  %i.qi = getelementptr inbounds nuw i8, ptr %.078.i, i64 512
  %i.qj = getelementptr inbounds i8, ptr %.069.i, i64 %i.pq
  %i.qk = icmp sgt i32 %.010.i, 1
  br i1 %i.qk, label %bb.g, label %vector_encode.exit, !llvm.loop !1

vector_encode.exit:                               ; preds = %scalar_encode.exit.i, %vector_compress.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.ql = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 %i.lo, ptr %i.ql, align 16, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.val.i = load ptr, ptr %i.ln, align 8, !tbaa !31
  %i.qm = call fastcc i32 @prf(ptr noundef %i.a, i64 noundef 128, ptr noundef nonnull %i.e, ptr noundef nonnull %4, ptr %.val.i)
  %.not.i68 = icmp eq i32 %i.qm, 0
  br i1 %.not.i68, label %cbd_2.exit.thread, label %vector.body246

vector.body246:                                   ; preds = %vector_encode.exit, %vector.body246
  %index247 = phi i64 [ %index.next250, %vector.body246 ], [ 0, %vector_encode.exit ] ; 3 uses
  %i.qn = shl nuw i64 %index247, 2
  %i.qo = getelementptr inbounds nuw i8, ptr %i.a, i64 %index247
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 %i.qn
  %wide.load248 = load <4 x i8>, ptr %i.qo, align 4, !tbaa !47
  %i.qq = zext <4 x i8> %wide.load248 to <4 x i32> ; 8 uses
  %i.qr = and <4 x i32> %i.qq, splat (i32 1)
  %i.qs = lshr <4 x i32> %i.qq, splat (i32 1)
  %i.qt = and <4 x i32> %i.qs, splat (i32 1)
  %i.qu = shl <4 x i32> %i.qq, splat (i32 29)
  %i.qv = ashr <4 x i32> %i.qu, splat (i32 31)
  %i.qw = shl <4 x i32> %i.qq, splat (i32 28)
  %i.qx = ashr <4 x i32> %i.qw, splat (i32 31)
  %i.qy = add nuw nsw <4 x i32> %i.qt, %i.qr
  %i.qz = add nsw <4 x i32> %i.qy, %i.qx
  %i.ra = add nsw <4 x i32> %i.qz, %i.qv          ; 2 uses
  %11 = and <4 x i32> %i.ra, splat (i32 32768)
  %12 = icmp eq <4 x i32> %11, zeroinitializer
  %i.rb = select <4 x i1> %12, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.rc = add nsw <4 x i32> %i.rb, %i.ra
  %i.rd = lshr <4 x i32> %i.qq, splat (i32 4)
  %i.re = and <4 x i32> %i.rd, splat (i32 1)
  %i.rf = lshr <4 x i32> %i.qq, splat (i32 5)
  %i.rg = and <4 x i32> %i.rf, splat (i32 1)
  %i.rh = shl <4 x i32> %i.qq, splat (i32 25)
  %i.ri = ashr <4 x i32> %i.rh, splat (i32 31)
  %i.rj = lshr <4 x i32> %i.qq, splat (i32 7)
  %i.rk = sub nsw <4 x i32> %i.rg, %i.rj
  %i.rl = add nsw <4 x i32> %i.rk, %i.re
  %i.rm = add nsw <4 x i32> %i.rl, %i.ri          ; 2 uses
  %13 = and <4 x i32> %i.rm, splat (i32 32768)
  %14 = icmp eq <4 x i32> %13, zeroinitializer
  %i.rn = select <4 x i1> %14, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.ro = add nsw <4 x i32> %i.rn, %i.rm
  %i.rp = shufflevector <4 x i32> %i.rc, <4 x i32> %i.ro, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec249 = trunc nsw <8 x i32> %i.rp to <8 x i16>
  store <8 x i16> %interleaved.vec249, ptr %i.qp, align 2, !tbaa !44
  %index.next250 = add nuw i64 %index247, 4       ; 2 uses
  %i.rq = icmp eq i64 %index.next250, 128
  br i1 %i.rq, label %middle.block251, label %vector.body246, !llvm.loop !152

cbd_2.exit.thread:                                ; preds = %vector_encode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %scalar_encode.exit

middle.block251:                                  ; preds = %vector.body246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %middle.block251
  %index255 = phi i64 [ 0, %middle.block251 ], [ %index.next260, %vector.body254 ] ; 3 uses
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index255 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16 ; 2 uses
  %wide.load256.a = load <8 x i16>, ptr %i.rr, align 2, !tbaa !44
  %wide.load257.a = load <8 x i16>, ptr %i.rs, align 2, !tbaa !44
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index255 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %wide.load258 = load <8 x i16>, ptr %i.rt, align 2, !tbaa !44
  %wide.load259 = load <8 x i16>, ptr %i.ru, align 2, !tbaa !44
  %i.rv = add <8 x i16> %wide.load258, %wide.load256.a ; 2 uses
  %i.rw = add <8 x i16> %wide.load259, %wide.load257.a ; 2 uses
  %i.rx = add <8 x i16> %i.rv, splat (i16 -3329)  ; 2 uses
  %i.ry = add <8 x i16> %i.rw, splat (i16 -3329)  ; 2 uses
  %i.rz = icmp slt <8 x i16> %i.rx, zeroinitializer
  %i.sa = icmp slt <8 x i16> %i.ry, zeroinitializer
  %i.sb = select <8 x i1> %i.rz, <8 x i16> %i.rv, <8 x i16> zeroinitializer
  %i.sc = select <8 x i1> %i.sa, <8 x i16> %i.rw, <8 x i16> zeroinitializer
  %i.sd = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rx, <8 x i16> zeroinitializer)
  %i.se = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ry, <8 x i16> zeroinitializer)
  %i.sf = or <8 x i16> %i.sb, %i.sd
  %i.sg = or <8 x i16> %i.sc, %i.se
  store <8 x i16> %i.sf, ptr %i.rr, align 2, !tbaa !44
  store <8 x i16> %i.sg, ptr %i.rs, align 2, !tbaa !44
  %index.next260 = add nuw i64 %index255, 16      ; 2 uses
  %i.sh = icmp eq i64 %index.next260, 256
  br i1 %i.sh, label %vector.body264, label %vector.body254, !llvm.loop !153

vector.body264:                                   ; preds = %vector.body254, %vector.body264
  %index265 = phi i64 [ %index.next269, %vector.body264 ], [ 0, %vector.body254 ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %1, i64 %index265
  %i.si = shl nuw i64 %index265, 4                ; 8 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %6, i64 %i.si ; 9 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %6, i64 %i.si ; 8 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sm = getelementptr inbounds nuw i8, ptr %6, i64 %i.si ; 8 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  %i.so = getelementptr inbounds nuw i8, ptr %6, i64 %i.si ; 8 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 48
  %i.sq = getelementptr inbounds nuw i8, ptr %6, i64 %i.si ; 8 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 64
  %i.ss = getelementptr inbounds nuw i8, ptr %6, i64 %i.si ; 8 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 80
  %i.su = getelementptr inbounds nuw i8, ptr %6, i64 %i.si ; 8 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 96
  %i.sw = getelementptr inbounds nuw i8, ptr %6, i64 %i.si ; 8 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 112
  %wide.load267 = load <8 x i8>, ptr %next.gep266, align 1, !tbaa !47 ; 8 uses
  %i.sy = and <8 x i8> %wide.load267, splat (i8 1)
  %i.sz = zext nneg <8 x i8> %i.sy to <8 x i16>
  %i.ta = sub nsw <8 x i16> zeroinitializer, %i.sz
  %i.tb = load i16, ptr %i.sj, align 2, !tbaa !44
  %i.tc = load i16, ptr %i.sl, align 2, !tbaa !44
  %i.td = load i16, ptr %i.sn, align 2, !tbaa !44
  %i.te = load i16, ptr %i.sp, align 2, !tbaa !44
  %i.tf = load i16, ptr %i.sr, align 2, !tbaa !44
  %i.tg = load i16, ptr %i.st, align 2, !tbaa !44
  %i.th = load i16, ptr %i.sv, align 2, !tbaa !44
  %i.ti = load i16, ptr %i.sx, align 2, !tbaa !44
  %i.tj = insertelement <8 x i16> poison, i16 %i.tb, i64 0
  %i.tk = insertelement <8 x i16> %i.tj, i16 %i.tc, i64 1
  %i.tl = insertelement <8 x i16> %i.tk, i16 %i.td, i64 2
  %i.tm = insertelement <8 x i16> %i.tl, i16 %i.te, i64 3
  %i.tn = insertelement <8 x i16> %i.tm, i16 %i.tf, i64 4
  %i.to = insertelement <8 x i16> %i.tn, i16 %i.tg, i64 5
  %i.tp = insertelement <8 x i16> %i.to, i16 %i.th, i64 6
  %i.tq = insertelement <8 x i16> %i.tp, i16 %i.ti, i64 7
  %i.tr = and <8 x i16> %i.ta, splat (i16 1665)
  %i.ts = add <8 x i16> %i.tr, %i.tq              ; 2 uses
  %i.tt = add <8 x i16> %i.ts, splat (i16 -3329)  ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sj, i64 2
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sk, i64 18
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sm, i64 34
  %i.tx = getelementptr inbounds nuw i8, ptr %i.so, i64 50
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sq, i64 66
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ss, i64 82
  %i.ua = getelementptr inbounds nuw i8, ptr %i.su, i64 98
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sw, i64 114
  %i.uc = lshr <8 x i8> %wide.load267, splat (i8 1)
  %i.ud = and <8 x i8> %i.uc, splat (i8 1)
  %i.ue = zext nneg <8 x i8> %i.ud to <8 x i16>
  %i.uf = sub nsw <8 x i16> zeroinitializer, %i.ue
  %i.ug = load i16, ptr %i.tu, align 2, !tbaa !44
  %i.uh = load i16, ptr %i.tv, align 2, !tbaa !44
  %i.ui = load i16, ptr %i.tw, align 2, !tbaa !44
  %i.uj = load i16, ptr %i.tx, align 2, !tbaa !44
  %i.uk = load i16, ptr %i.ty, align 2, !tbaa !44
  %i.ul = load i16, ptr %i.tz, align 2, !tbaa !44
  %i.um = load i16, ptr %i.ua, align 2, !tbaa !44
  %i.un = load i16, ptr %i.ub, align 2, !tbaa !44
  %i.uo = insertelement <8 x i16> poison, i16 %i.ug, i64 0
  %i.up = insertelement <8 x i16> %i.uo, i16 %i.uh, i64 1
  %i.uq = insertelement <8 x i16> %i.up, i16 %i.ui, i64 2
  %i.ur = insertelement <8 x i16> %i.uq, i16 %i.uj, i64 3
  %i.us = insertelement <8 x i16> %i.ur, i16 %i.uk, i64 4
  %i.ut = insertelement <8 x i16> %i.us, i16 %i.ul, i64 5
  %i.uu = insertelement <8 x i16> %i.ut, i16 %i.um, i64 6
  %i.uv = insertelement <8 x i16> %i.uu, i16 %i.un, i64 7
  %i.uw = and <8 x i16> %i.uf, splat (i16 1665)
  %i.ux = add <8 x i16> %i.uw, %i.uv              ; 2 uses
  %i.uy = add <8 x i16> %i.ux, splat (i16 -3329)  ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.va = getelementptr inbounds nuw i8, ptr %i.sk, i64 20
  %i.vb = getelementptr inbounds nuw i8, ptr %i.sm, i64 36
  %i.vc = getelementptr inbounds nuw i8, ptr %i.so, i64 52
  %i.vd = getelementptr inbounds nuw i8, ptr %i.sq, i64 68
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ss, i64 84
  %i.vf = getelementptr inbounds nuw i8, ptr %i.su, i64 100
  %i.vg = getelementptr inbounds nuw i8, ptr %i.sw, i64 116
  %i.vh = lshr <8 x i8> %wide.load267, splat (i8 2)
  %i.vi = and <8 x i8> %i.vh, splat (i8 1)
  %i.vj = zext nneg <8 x i8> %i.vi to <8 x i16>
  %i.vk = sub nsw <8 x i16> zeroinitializer, %i.vj
  %i.vl = load i16, ptr %i.uz, align 2, !tbaa !44
  %i.vm = load i16, ptr %i.va, align 2, !tbaa !44
  %i.vn = load i16, ptr %i.vb, align 2, !tbaa !44
  %i.vo = load i16, ptr %i.vc, align 2, !tbaa !44
  %i.vp = load i16, ptr %i.vd, align 2, !tbaa !44
  %i.vq = load i16, ptr %i.ve, align 2, !tbaa !44
  %i.vr = load i16, ptr %i.vf, align 2, !tbaa !44
  %i.vs = load i16, ptr %i.vg, align 2, !tbaa !44
  %i.vt = insertelement <8 x i16> poison, i16 %i.vl, i64 0
  %i.vu = insertelement <8 x i16> %i.vt, i16 %i.vm, i64 1
  %i.vv = insertelement <8 x i16> %i.vu, i16 %i.vn, i64 2
  %i.vw = insertelement <8 x i16> %i.vv, i16 %i.vo, i64 3
  %i.vx = insertelement <8 x i16> %i.vw, i16 %i.vp, i64 4
  %i.vy = insertelement <8 x i16> %i.vx, i16 %i.vq, i64 5
  %i.vz = insertelement <8 x i16> %i.vy, i16 %i.vr, i64 6
  %i.wa = insertelement <8 x i16> %i.vz, i16 %i.vs, i64 7
  %i.wb = and <8 x i16> %i.vk, splat (i16 1665)
  %i.wc = add <8 x i16> %i.wa, %i.wb              ; 2 uses
  %i.wd = add <8 x i16> %i.wc, splat (i16 -3329)  ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.sj, i64 6
  %i.wf = getelementptr inbounds nuw i8, ptr %i.sk, i64 22
  %i.wg = getelementptr inbounds nuw i8, ptr %i.sm, i64 38
  %i.wh = getelementptr inbounds nuw i8, ptr %i.so, i64 54
  %i.wi = getelementptr inbounds nuw i8, ptr %i.sq, i64 70
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ss, i64 86
  %i.wk = getelementptr inbounds nuw i8, ptr %i.su, i64 102
  %i.wl = getelementptr inbounds nuw i8, ptr %i.sw, i64 118
  %i.wm = lshr <8 x i8> %wide.load267, splat (i8 3)
  %i.wn = and <8 x i8> %i.wm, splat (i8 1)
  %i.wo = zext nneg <8 x i8> %i.wn to <8 x i16>
  %i.wp = sub nsw <8 x i16> zeroinitializer, %i.wo
  %i.wq = load i16, ptr %i.we, align 2, !tbaa !44
  %i.wr = load i16, ptr %i.wf, align 2, !tbaa !44
  %i.ws = load i16, ptr %i.wg, align 2, !tbaa !44
  %i.wt = load i16, ptr %i.wh, align 2, !tbaa !44
  %i.wu = load i16, ptr %i.wi, align 2, !tbaa !44
  %i.wv = load i16, ptr %i.wj, align 2, !tbaa !44
  %i.ww = load i16, ptr %i.wk, align 2, !tbaa !44
  %i.wx = load i16, ptr %i.wl, align 2, !tbaa !44
  %i.wy = insertelement <8 x i16> poison, i16 %i.wq, i64 0
  %i.wz = insertelement <8 x i16> %i.wy, i16 %i.wr, i64 1
  %i.xa = insertelement <8 x i16> %i.wz, i16 %i.ws, i64 2
  %i.xb = insertelement <8 x i16> %i.xa, i16 %i.wt, i64 3
  %i.xc = insertelement <8 x i16> %i.xb, i16 %i.wu, i64 4
  %i.xd = insertelement <8 x i16> %i.xc, i16 %i.wv, i64 5
  %i.xe = insertelement <8 x i16> %i.xd, i16 %i.ww, i64 6
  %i.xf = insertelement <8 x i16> %i.xe, i16 %i.wx, i64 7
  %i.xg = and <8 x i16> %i.wp, splat (i16 1665)
  %i.xh = add <8 x i16> %i.xf, %i.xg              ; 2 uses
  %i.xi = add <8 x i16> %i.xh, splat (i16 -3329)  ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.xl = getelementptr inbounds nuw i8, ptr %i.sm, i64 40
  %i.xm = getelementptr inbounds nuw i8, ptr %i.so, i64 56
  %i.xn = getelementptr inbounds nuw i8, ptr %i.sq, i64 72
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ss, i64 88
  %i.xp = getelementptr inbounds nuw i8, ptr %i.su, i64 104
  %i.xq = getelementptr inbounds nuw i8, ptr %i.sw, i64 120
  %i.xr = lshr <8 x i8> %wide.load267, splat (i8 4)
  %i.xs = and <8 x i8> %i.xr, splat (i8 1)
  %i.xt = zext nneg <8 x i8> %i.xs to <8 x i16>
  %i.xu = sub nsw <8 x i16> zeroinitializer, %i.xt
  %i.xv = load i16, ptr %i.xj, align 2, !tbaa !44
  %i.xw = load i16, ptr %i.xk, align 2, !tbaa !44
  %i.xx = load i16, ptr %i.xl, align 2, !tbaa !44
  %i.xy = load i16, ptr %i.xm, align 2, !tbaa !44
  %i.xz = load i16, ptr %i.xn, align 2, !tbaa !44
  %i.ya = load i16, ptr %i.xo, align 2, !tbaa !44
  %i.yb = load i16, ptr %i.xp, align 2, !tbaa !44
  %i.yc = load i16, ptr %i.xq, align 2, !tbaa !44
  %i.yd = insertelement <8 x i16> poison, i16 %i.xv, i64 0
end_hunk_1
