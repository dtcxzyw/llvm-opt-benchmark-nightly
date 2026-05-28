inline.NumInlined: 100
inline.NumDeleted: 46
begin_hunk_0_@ossl_ml_kem_genkey:bb.a
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 0, ptr %i.ai, align 8
  store ptr %i.y, ptr %i.c, align 8, !tbaa !9
  %i.aj = sext i32 %i.ac to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [512 x i8], ptr %i.y, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !32
  %i.am = mul nsw i32 %i.ac, %i.ac
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [512 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !16
  %i.aq = getelementptr inbounds [512 x i8], ptr %i.ao, i64 %i.aj
  store ptr %i.aq, ptr %i.ah, align 8, !tbaa !36
  %i.ar = call fastcc i32 @genkey(ptr noundef %i.a, ptr noundef %i.u, ptr noundef %0, ptr noundef %2)
  %i.as = icmp eq i32 %i.ar, 0
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #12
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.u) #12
  br i1 %i.as, label %bb.l, label %bb.m

.critedge:                                        ; preds = %bb.j
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #12
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.u) #12
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k
  call void @ossl_ml_kem_key_reset(ptr noundef nonnull %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.h, %bb.e, %bb.a, %bb.b, %bb.c, %bb.l
  %.021 = phi i32 [ 1, %bb.k ], [ 0, %bb.a ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.021
}

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @genkey(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [384 x i8], align 16              ; 4 uses
  %i.c = alloca [33 x i8], align 16               ; 6 uses
  %i.d = alloca [33 x i8], align 16               ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [33 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.h = load ptr, ptr %3, align 8, !tbaa !17     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp eq i32 %i.j, 1454
  %i.l = select i1 %i.k, ptr @cbd_3, ptr @cbd_2   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %0, i64 32, i1 false)
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %i.o, ptr %i.p, align 16, !tbaa !44
  %i.q = getelementptr i8, ptr %3, i64 40
  %.val56 = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.r = call fastcc i32 @hash_g(ptr noundef %i.e, ptr noundef %i.f, i64 noundef 33, ptr noundef %1, ptr %.val56)
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.u = call fastcc i32 @matrix_expand(ptr noundef %1, ptr noundef %3)
  %.not50 = icmp eq i32 %i.u, 0
  br i1 %.not50, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.067 = phi i8 [ 0, %bb.c ], [ %i.z, %bb.e ]    ; 2 uses
  %.09.i = phi i32 [ %i.n, %bb.c ], [ %i.ab, %bb.e ] ; 2 uses
  %.08.i = phi ptr [ %i.w, %bb.c ], [ %i.aa, %bb.e ] ; 3 uses
  store i8 %.067, ptr %i.x, align 16, !tbaa !44
  %i.y = call i32 %i.l(ptr noundef %.08.i, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %3) #12, !callees !49, !inline_history !50
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %gencbd_vector_ntt.exit.thread, label %bb.e

gencbd_vector_ntt.exit.thread:                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.aa

bb.e:                                             ; preds = %bb.d
  %i.z = add i8 %.067, 1                          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i, i64 512
  call fastcc void @scalar_ntt(ptr noundef %.08.i)
  %i.ab = add nsw i32 %.09.i, -1
  %i.ac = icmp sgt i32 %.09.i, 1
  br i1 %i.ac, label %bb.d, label %bb.f, !llvm.loop !51

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.1 = phi i8 [ %i.z, %bb.f ], [ %i.ah, %bb.h ]  ; 2 uses
  %.09.i57 = phi i32 [ %i.n, %bb.f ], [ %i.aj, %bb.h ] ; 2 uses
  %.08.i58 = phi ptr [ %i.ae, %bb.f ], [ %i.ai, %bb.h ] ; 3 uses
  store i8 %.1, ptr %i.af, align 16, !tbaa !44
  %i.ag = call i32 %i.l(ptr noundef %.08.i58, ptr noundef nonnull %i.c, ptr noundef nonnull %1, ptr noundef nonnull %3) #12, !callees !49, !inline_history !50
  %.not.i59 = icmp eq i32 %i.ag, 0
  br i1 %.not.i59, label %gencbd_vector_ntt.exit61.thread, label %bb.h

gencbd_vector_ntt.exit61.thread:                  ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.ah = add i8 %.1, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i58, i64 512
  call fastcc void @scalar_ntt(ptr noundef %.08.i58)
  %i.aj = add nsw i32 %.09.i57, -1
  %i.ak = icmp sgt i32 %.09.i57, 1
  br i1 %i.ak, label %bb.g, label %bb.i, !llvm.loop !51

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !9  ; 9 uses
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !16  ; 7 uses
  %i.an = icmp sgt i32 %i.n, 0
  br i1 %i.an, label %.lr.ph36.i, label %matrix_mult_transpose_add.exit

.lr.ph36.i:                                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32 ; 5 uses
  %.not.i62 = icmp eq i32 %i.n, 1
  %i.aq = zext nneg i32 %i.n to i64               ; 3 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.n, i32 2)
  %i.ar = sub nsw i32 %i.n, %smin
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 9                ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 512
  %i.av = mul i64 %i.au, %i.aq
  %scevgep82 = getelementptr i8, ptr %i.am, i64 512
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.at
  %scevgep83 = getelementptr i8, ptr %i.aw, i64 1024
  %i.ax = add nsw i32 %i.n, -1
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 9
  %i.ba = add nuw nsw i64 %i.az, 512              ; 2 uses
  %scevgep101 = getelementptr i8, ptr %i.al, i64 %i.ba ; 3 uses
  %scevgep102 = getelementptr i8, ptr %i.ap, i64 %i.ba
  %scevgep103 = getelementptr i8, ptr %i.am, i64 512
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.bc = getelementptr i8, ptr %i.bb, i64 512
  %bound0104 = icmp ult ptr %i.al, %scevgep102
  %bound1105 = icmp ult ptr %i.ap, %scevgep101
  %found.conflict106 = and i1 %bound0104, %bound1105
  %bound0107 = icmp ult ptr %i.al, %scevgep103
  %bound1108 = icmp ult ptr %i.am, %scevgep101
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %found.conflict106, %found.conflict109
  %bound0111 = icmp ult ptr %i.al, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1112 = icmp ugt ptr %scevgep101, @kModRoots
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  br label %vector.memcheck100

vector.memcheck100:                               ; preds = %scalar_mult_add.exit._crit_edge.i, %.lr.ph36.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult_add.exit._crit_edge.i ], [ 0, %.lr.ph36.i ] ; 3 uses
  %.in.i = phi i32 [ %i.fo, %scalar_mult_add.exit._crit_edge.i ], [ %i.n, %.lr.ph36.i ] ; 2 uses
  %.01535.i = phi ptr [ %i.fp, %scalar_mult_add.exit._crit_edge.i ], [ %i.ap, %.lr.ph36.i ] ; 4 uses
  %.01634.i = phi ptr [ %i.kb, %scalar_mult_add.exit._crit_edge.i ], [ %i.al, %.lr.ph36.i ] ; 8 uses
  %i.bd = shl nuw nsw i64 %indvar, 9              ; 2 uses
  %i.be = getelementptr i8, ptr %i.al, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.be, i64 512 ; 3 uses
  %i.bf = add i64 %indvar, %i.aq
  %i.bg = shl i64 %i.bf, 9
  %scevgep80 = getelementptr i8, ptr %i.ap, i64 %i.bg
  %scevgep81 = getelementptr i8, ptr %i.bc, i64 %i.bd
  br i1 %conflict.rdx114, label %scalar.ph115, label %vector.body117

vector.body117:                                   ; preds = %vector.memcheck100, %vector.body117
  %index118 = phi i64 [ %index.next133, %vector.body117 ], [ 0, %vector.memcheck100 ] ; 3 uses
  %i.bh = shl i64 %index118, 1
  %next.gep119 = getelementptr i8, ptr @kModRoots, i64 %i.bh
  %i.bi = shl i64 %index118, 2                    ; 3 uses
  %next.gep120 = getelementptr i8, ptr %i.am, i64 %i.bi
  %next.gep121 = getelementptr i8, ptr %.01535.i, i64 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %i.bi ; 2 uses
  %wide.vec122 = load <8 x i16>, ptr %next.gep121, align 2, !tbaa !38, !alias.scope !52 ; 2 uses
  %strided.vec123 = shufflevector <8 x i16> %wide.vec122, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec124 = shufflevector <8 x i16> %wide.vec122, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %4 = zext <4 x i16> %strided.vec123 to <4 x i32> ; 2 uses
  %wide.vec125 = load <8 x i16>, ptr %next.gep120, align 2, !tbaa !38, !alias.scope !55 ; 2 uses
  %strided.vec126 = shufflevector <8 x i16> %wide.vec125, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec127 = shufflevector <8 x i16> %wide.vec125, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %5 = zext <4 x i16> %strided.vec126 to <4 x i32> ; 2 uses
  %6 = zext <4 x i16> %strided.vec124 to <4 x i32> ; 2 uses
  %7 = zext <4 x i16> %strided.vec127 to <4 x i32> ; 2 uses
  %wide.load128 = load <4 x i16>, ptr %next.gep119, align 8, !tbaa !38, !alias.scope !57
  %i.bk = zext <4 x i16> %wide.load128 to <4 x i32>
  %wide.vec129 = load <8 x i16>, ptr %i.bj, align 2, !tbaa !38, !alias.scope !59, !noalias !61 ; 2 uses
  %strided.vec130 = shufflevector <8 x i16> %wide.vec129, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec131 = shufflevector <8 x i16> %wide.vec129, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %8 = zext <4 x i16> %strided.vec130 to <4 x i32>
  %i.bl = mul nuw <4 x i32> %5, %4
  %i.bm = add nuw <4 x i32> %i.bl, %8
  %i.bn = mul nuw <4 x i32> %7, %6                ; 2 uses
  %i.bo = zext <4 x i32> %i.bn to <4 x i64>
  %i.bp = mul nuw nsw <4 x i64> %i.bo, splat (i64 5039)
  %i.bq = lshr <4 x i64> %i.bp, splat (i64 24)
  %i.br = trunc nuw nsw <4 x i64> %i.bq to <4 x i32>
  %i.bs = mul <4 x i32> %i.br, splat (i32 62207)
  %i.bt = add <4 x i32> %i.bs, %i.bn
  %i.bu = trunc <4 x i32> %i.bt to <4 x i16>      ; 2 uses
  %i.bv = add <4 x i16> %i.bu, splat (i16 -3329)  ; 2 uses
  %i.bw = icmp slt <4 x i16> %i.bv, zeroinitializer
  %i.bx = select <4 x i1> %i.bw, <4 x i16> %i.bu, <4 x i16> zeroinitializer
  %i.by = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bv, <4 x i16> zeroinitializer)
  %i.bz = or <4 x i16> %i.bx, %i.by
  %i.ca = zext <4 x i16> %i.bz to <4 x i32>
  %i.cb = mul nuw <4 x i32> %i.ca, %i.bk
  %i.cc = add <4 x i32> %i.bm, %i.cb              ; 2 uses
  %i.cd = zext <4 x i32> %i.cc to <4 x i64>
  %i.ce = mul nuw nsw <4 x i64> %i.cd, splat (i64 5039)
  %i.cf = lshr <4 x i64> %i.ce, splat (i64 24)
  %i.cg = trunc nuw nsw <4 x i64> %i.cf to <4 x i32>
  %i.ch = mul <4 x i32> %i.cg, splat (i32 62207)
  %i.ci = add <4 x i32> %i.ch, %i.cc
  %i.cj = trunc <4 x i32> %i.ci to <4 x i16>      ; 2 uses
  %i.ck = add <4 x i16> %i.cj, splat (i16 -3329)  ; 2 uses
  %i.cl = icmp slt <4 x i16> %i.ck, zeroinitializer
  %i.cm = select <4 x i1> %i.cl, <4 x i16> %i.cj, <4 x i16> zeroinitializer
  %i.cn = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ck, <4 x i16> zeroinitializer)
  %i.co = or <4 x i16> %i.cm, %i.cn
  %9 = zext <4 x i16> %strided.vec131 to <4 x i32>
  %i.cp = mul nuw <4 x i32> %7, %4
  %i.cq = mul nuw <4 x i32> %6, %5
  %i.cr = add <4 x i32> %i.cp, %i.cq
  %i.cs = add <4 x i32> %i.cr, %9                 ; 2 uses
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
  %interleaved.vec132 = shufflevector <4 x i16> %i.co, <4 x i16> %i.de, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec132, ptr %i.bj, align 2, !tbaa !38, !alias.scope !59, !noalias !61
  %index.next133 = add nuw i64 %index118, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next133, 128
  br i1 %i.df, label %scalar_mult_add.exit.preheader.i, label %vector.body117, !llvm.loop !62

scalar.ph115:                                     ; preds = %vector.memcheck100, %scalar.ph115
  %.027.i.i = phi ptr [ %i.dp, %scalar.ph115 ], [ @kModRoots, %vector.memcheck100 ] ; 2 uses
  %.026.i.i = phi ptr [ %i.dl, %scalar.ph115 ], [ %i.am, %vector.memcheck100 ] ; 3 uses
  %.025.i.i = phi ptr [ %i.dk, %scalar.ph115 ], [ %.01535.i, %vector.memcheck100 ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph115 ], [ 0, %vector.memcheck100 ] ; 3 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %.0.idx.i.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.di = load i16, ptr %.026.i.i, align 2, !tbaa !38
  %i.dj = zext i16 %i.di to i32                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.dm = load i16, ptr %i.dh, align 2, !tbaa !38
  %i.dn = zext i16 %i.dm to i32                   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.ptr.i.i, i64 2
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.dq = load i16, ptr %.027.i.i, align 2, !tbaa !38
  %i.dr = zext i16 %i.dq to i32
  %i.ds = load i16, ptr %.0.ptr.i.i, align 2, !tbaa !38
  %i.dt = zext i16 %i.ds to i32
  %i.du = load i16, ptr %i.do, align 2, !tbaa !38
  %i.dv = zext i16 %i.du to i32
  %i.dw = load i16, ptr %i.dg, align 2, !tbaa !38
  %i.dx = load i16, ptr %.025.i.i, align 2, !tbaa !38
  %i.dy = zext i16 %i.dw to i32                   ; 2 uses
  %i.dz = zext i16 %i.dx to i32                   ; 2 uses
  %i.ea = mul nuw i32 %i.dn, %i.dy                ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %i.ec = mul nuw nsw i64 %i.eb, 5039
  %i.ed = lshr i64 %i.ec, 24
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %.neg.i.i.i = mul i32 %i.ee, 62207
  %i.ef = add i32 %.neg.i.i.i, %i.ea
  %i.eg = trunc i32 %i.ef to i16                  ; 2 uses
  %i.eh = add i16 %i.eg, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.eh, 0
  %i.ei = select i1 %isneg.i.i.i.i, i16 %i.eg, i16 0
  %i.ej = call i16 @llvm.smax.i16(i16 %i.eh, i16 0)
  %i.ek = or i16 %i.ei, %i.ej
  %i.el = zext i16 %i.ek to i32
  %i.em = mul nuw i32 %i.el, %i.dr
  %i.en = mul nuw i32 %i.dn, %i.dz
  %i.eo = mul nuw i32 %i.dy, %i.dj
  %i.ep = mul nuw i32 %i.dj, %i.dz
  %i.eq = add i32 %i.en, %i.eo
  %i.er = add nuw i32 %i.ep, %i.dt
  %i.es = add i32 %i.eq, %i.dv                    ; 2 uses
  %i.et = add i32 %i.er, %i.em                    ; 2 uses
  %i.eu = zext i32 %i.es to i64
  %i.ev = zext i32 %i.et to i64
  %i.ew = mul nuw nsw i64 %i.eu, 5039
  %i.ex = mul nuw nsw i64 %i.ev, 5039
  %i.ey = lshr i64 %i.ew, 24
  %i.ez = lshr i64 %i.ex, 24
  %i.fa = trunc nuw nsw i64 %i.ey to i32
  %i.fb = trunc nuw nsw i64 %i.ez to i32
  %.neg.i30.i.i = mul i32 %i.fa, 62207
  %.neg.i28.i.i = mul i32 %i.fb, 62207
  %i.fc = insertelement <2 x i32> poison, i32 %.neg.i28.i.i, i64 0
  %i.fd = insertelement <2 x i32> %i.fc, i32 %.neg.i30.i.i, i64 1
  %i.fe = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %i.ff = insertelement <2 x i32> %i.fe, i32 %i.es, i64 1
  %i.fg = add <2 x i32> %i.fd, %i.ff
  %i.fh = trunc <2 x i32> %i.fg to <2 x i16>      ; 2 uses
  %i.fi = add <2 x i16> %i.fh, splat (i16 -3329)  ; 2 uses
  %i.fj = icmp slt <2 x i16> %i.fi, zeroinitializer
  %i.fk = select <2 x i1> %i.fj, <2 x i16> %i.fh, <2 x i16> zeroinitializer
  %i.fl = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.fi, <2 x i16> zeroinitializer)
  %i.fm = or <2 x i16> %i.fk, %i.fl
  store <2 x i16> %i.fm, ptr %.0.ptr.i.i, align 2, !tbaa !38
  %i.fn = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.fn, label %scalar.ph115, label %scalar_mult_add.exit.preheader.i, !llvm.loop !65

scalar_mult_add.exit.preheader.i:                 ; preds = %vector.body117, %scalar.ph115
  %i.fo = add nsw i32 %.in.i, -1
  %i.fp = getelementptr inbounds nuw i8, ptr %.01535.i, i64 512
  br i1 %.not.i62, label %scalar_mult_add.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult_add.exit.preheader.i
  %bound0 = icmp ult ptr %.01634.i, %scevgep81
  %bound1 = icmp ult ptr %scevgep80, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound084 = icmp ult ptr %.01634.i, %scevgep83
  %bound185 = icmp ult ptr %scevgep82, %scevgep
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx = or i1 %found.conflict, %found.conflict86
  %bound087 = icmp ult ptr %.01634.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound188 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx, %found.conflict89
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit30.i
  %.033.i = phi i32 [ %i.jz, %scalar_mult_add.exit30.i ], [ %i.n, %.lr.ph.i.preheader ] ; 2 uses
  %.01332.i = phi ptr [ %i.fr, %scalar_mult_add.exit30.i ], [ %i.am, %.lr.ph.i.preheader ]
  %.01431.i = phi ptr [ %i.fq, %scalar_mult_add.exit30.i ], [ %.01535.i, %.lr.ph.i.preheader ]
  %i.fq = getelementptr inbounds nuw [512 x i8], ptr %.01431.i, i64 %i.aq ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.01332.i, i64 512 ; 3 uses
  br i1 %conflict.rdx90, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.fs = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.fs
  %i.ft = shl i64 %index, 2                       ; 3 uses
  %next.gep91 = getelementptr i8, ptr %i.fr, i64 %i.ft
  %next.gep92 = getelementptr i8, ptr %i.fq, i64 %i.ft
  %i.fu = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %i.ft ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep92, align 2, !tbaa !38, !alias.scope !66 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec93 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %10 = zext <4 x i16> %strided.vec to <4 x i32>  ; 2 uses
  %wide.vec94 = load <8 x i16>, ptr %next.gep91, align 2, !tbaa !38, !alias.scope !69 ; 2 uses
  %strided.vec95 = shufflevector <8 x i16> %wide.vec94, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec96 = shufflevector <8 x i16> %wide.vec94, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %11 = zext <4 x i16> %strided.vec95 to <4 x i32> ; 2 uses
  %12 = zext <4 x i16> %strided.vec93 to <4 x i32> ; 2 uses
  %13 = zext <4 x i16> %strided.vec96 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !38, !alias.scope !71
  %i.fv = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec97 = load <8 x i16>, ptr %i.fu, align 2, !tbaa !38, !alias.scope !73, !noalias !75 ; 2 uses
  %strided.vec98 = shufflevector <8 x i16> %wide.vec97, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec99 = shufflevector <8 x i16> %wide.vec97, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %14 = zext <4 x i16> %strided.vec98 to <4 x i32>
  %i.fw = mul nuw <4 x i32> %11, %10
  %i.fx = add nuw <4 x i32> %i.fw, %14
  %i.fy = mul nuw <4 x i32> %13, %12              ; 2 uses
  %i.fz = zext <4 x i32> %i.fy to <4 x i64>
  %i.ga = mul nuw nsw <4 x i64> %i.fz, splat (i64 5039)
  %i.gb = lshr <4 x i64> %i.ga, splat (i64 24)
  %i.gc = trunc nuw nsw <4 x i64> %i.gb to <4 x i32>
  %i.gd = mul <4 x i32> %i.gc, splat (i32 62207)
  %i.ge = add <4 x i32> %i.gd, %i.fy
  %i.gf = trunc <4 x i32> %i.ge to <4 x i16>      ; 2 uses
  %i.gg = add <4 x i16> %i.gf, splat (i16 -3329)  ; 2 uses
  %i.gh = icmp slt <4 x i16> %i.gg, zeroinitializer
  %i.gi = select <4 x i1> %i.gh, <4 x i16> %i.gf, <4 x i16> zeroinitializer
  %i.gj = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gg, <4 x i16> zeroinitializer)
  %i.gk = or <4 x i16> %i.gi, %i.gj
  %i.gl = zext <4 x i16> %i.gk to <4 x i32>
  %i.gm = mul nuw <4 x i32> %i.gl, %i.fv
  %i.gn = add <4 x i32> %i.fx, %i.gm              ; 2 uses
  %i.go = zext <4 x i32> %i.gn to <4 x i64>
  %i.gp = mul nuw nsw <4 x i64> %i.go, splat (i64 5039)
  %i.gq = lshr <4 x i64> %i.gp, splat (i64 24)
  %i.gr = trunc nuw nsw <4 x i64> %i.gq to <4 x i32>
  %i.gs = mul <4 x i32> %i.gr, splat (i32 62207)
  %i.gt = add <4 x i32> %i.gs, %i.gn
  %i.gu = trunc <4 x i32> %i.gt to <4 x i16>      ; 2 uses
  %i.gv = add <4 x i16> %i.gu, splat (i16 -3329)  ; 2 uses
  %i.gw = icmp slt <4 x i16> %i.gv, zeroinitializer
  %i.gx = select <4 x i1> %i.gw, <4 x i16> %i.gu, <4 x i16> zeroinitializer
  %i.gy = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gv, <4 x i16> zeroinitializer)
  %i.gz = or <4 x i16> %i.gx, %i.gy
  %15 = zext <4 x i16> %strided.vec99 to <4 x i32>
  %i.ha = mul nuw <4 x i32> %13, %10
  %i.hb = mul nuw <4 x i32> %12, %11
  %i.hc = add <4 x i32> %i.ha, %i.hb
  %i.hd = add <4 x i32> %i.hc, %15                ; 2 uses
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
  %interleaved.vec = shufflevector <4 x i16> %i.gz, <4 x i16> %i.hp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.fu, align 2, !tbaa !38, !alias.scope !73, !noalias !75
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hq = icmp eq i64 %index.next, 128
  br i1 %i.hq, label %scalar_mult_add.exit30.i, label %vector.body, !llvm.loop !76

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i18.i = phi ptr [ %i.ia, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i19.i = phi ptr [ %i.hw, %scalar.ph ], [ %i.fr, %.lr.ph.i ] ; 3 uses
  %.025.i20.i = phi ptr [ %i.hv, %scalar.ph ], [ %i.fq, %.lr.ph.i ] ; 3 uses
  %.0.idx.i21.i = phi i64 [ %.0.add.i23.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0.ptr.i22.i = getelementptr inbounds nuw i8, ptr %.01634.i, i64 %.0.idx.i21.i ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.025.i20.i, i64 2
  %i.hs = getelementptr inbounds nuw i8, ptr %.026.i19.i, i64 2
  %i.ht = load i16, ptr %.026.i19.i, align 2, !tbaa !38
  %i.hu = zext i16 %i.ht to i32                   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.025.i20.i, i64 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.026.i19.i, i64 4
  %i.hx = load i16, ptr %i.hs, align 2, !tbaa !38
  %i.hy = zext i16 %i.hx to i32                   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.ptr.i22.i, i64 2
  %.0.add.i23.i = add nuw nsw i64 %.0.idx.i21.i, 4
  %i.ia = getelementptr inbounds nuw i8, ptr %.027.i18.i, i64 2
  %i.ib = load i16, ptr %.027.i18.i, align 2, !tbaa !38
  %i.ic = zext i16 %i.ib to i32
  %i.id = load i16, ptr %.0.ptr.i22.i, align 2, !tbaa !38
  %i.ie = zext i16 %i.id to i32
  %i.if = load i16, ptr %i.hz, align 2, !tbaa !38
  %i.ig = zext i16 %i.if to i32
  %i.ih = load i16, ptr %i.hr, align 2, !tbaa !38
  %i.ii = load i16, ptr %.025.i20.i, align 2, !tbaa !38
  %i.ij = zext i16 %i.ih to i32                   ; 2 uses
  %i.ik = zext i16 %i.ii to i32                   ; 2 uses
  %i.il = mul nuw i32 %i.hy, %i.ij                ; 2 uses
  %i.im = zext i32 %i.il to i64
  %i.in = mul nuw nsw i64 %i.im, 5039
  %i.io = lshr i64 %i.in, 24
  %i.ip = trunc nuw nsw i64 %i.io to i32
  %.neg.i.i24.i = mul i32 %i.ip, 62207
  %i.iq = add i32 %.neg.i.i24.i, %i.il
  %i.ir = trunc i32 %i.iq to i16                  ; 2 uses
  %i.is = add i16 %i.ir, -3329                    ; 2 uses
  %isneg.i.i.i25.i = icmp slt i16 %i.is, 0
  %i.it = select i1 %isneg.i.i.i25.i, i16 %i.ir, i16 0
  %i.iu = call i16 @llvm.smax.i16(i16 %i.is, i16 0)
  %i.iv = or i16 %i.it, %i.iu
  %i.iw = zext i16 %i.iv to i32
  %i.ix = mul nuw i32 %i.iw, %i.ic
  %i.iy = mul nuw i32 %i.hy, %i.ik
  %i.iz = mul nuw i32 %i.ij, %i.hu
  %i.ja = mul nuw i32 %i.hu, %i.ik
  %i.jb = add i32 %i.iy, %i.iz
  %i.jc = add nuw i32 %i.ja, %i.ie
  %i.jd = add i32 %i.jb, %i.ig                    ; 2 uses
  %i.je = add i32 %i.jc, %i.ix                    ; 2 uses
  %i.jf = zext i32 %i.jd to i64
  %i.jg = zext i32 %i.je to i64
  %i.jh = mul nuw nsw i64 %i.jf, 5039
  %i.ji = mul nuw nsw i64 %i.jg, 5039
  %i.jj = lshr i64 %i.jh, 24
  %i.jk = lshr i64 %i.ji, 24
  %i.jl = trunc nuw nsw i64 %i.jj to i32
  %i.jm = trunc nuw nsw i64 %i.jk to i32
  %.neg.i30.i28.i = mul i32 %i.jl, 62207
  %.neg.i28.i26.i = mul i32 %i.jm, 62207
  %i.jn = insertelement <2 x i32> poison, i32 %.neg.i28.i26.i, i64 0
  %i.jo = insertelement <2 x i32> %i.jn, i32 %.neg.i30.i28.i, i64 1
  %i.jp = insertelement <2 x i32> poison, i32 %i.je, i64 0
  %i.jq = insertelement <2 x i32> %i.jp, i32 %i.jd, i64 1
  %i.jr = add <2 x i32> %i.jo, %i.jq
  %i.js = trunc <2 x i32> %i.jr to <2 x i16>      ; 2 uses
  %i.jt = add <2 x i16> %i.js, splat (i16 -3329)  ; 2 uses
  %i.ju = icmp slt <2 x i16> %i.jt, zeroinitializer
  %i.jv = select <2 x i1> %i.ju, <2 x i16> %i.js, <2 x i16> zeroinitializer
  %i.jw = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.jt, <2 x i16> zeroinitializer)
  %i.jx = or <2 x i16> %i.jv, %i.jw
  store <2 x i16> %i.jx, ptr %.0.ptr.i22.i, align 2, !tbaa !38
  %i.jy = icmp samesign ult i64 %.0.idx.i21.i, 508
  br i1 %i.jy, label %scalar.ph, label %scalar_mult_add.exit30.i, !llvm.loop !77

scalar_mult_add.exit30.i:                         ; preds = %vector.body, %scalar.ph
  %i.jz = add nsw i32 %.033.i, -1
  %i.ka = icmp sgt i32 %.033.i, 2
  br i1 %i.ka, label %.lr.ph.i, label %scalar_mult_add.exit._crit_edge.i, !llvm.loop !78

scalar_mult_add.exit._crit_edge.i:                ; preds = %scalar_mult_add.exit30.i, %scalar_mult_add.exit.preheader.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.01634.i, i64 512
  %i.kc = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kc, label %vector.memcheck100, label %matrix_mult_transpose_add.exit, !llvm.loop !79

matrix_mult_transpose_add.exit:                   ; preds = %scalar_mult_add.exit._crit_edge.i, %bb.i
  %i.kd = icmp eq ptr %2, null
  br i1 %i.kd, label %bb.j, label %bb.r

bb.j:                                             ; preds = %matrix_mult_transpose_add.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !34
  %i.kg = load ptr, ptr %3, align 8, !tbaa !17
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 72
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !18
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [512 x i8], ptr %i.al, i64 %i.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !25
  %i.kn = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %1, ptr noundef %i.km, ptr noundef null) #12
  %.not.i63 = icmp eq i32 %i.kn, 0
  br i1 %.not.i63, label %hash_h_pubkey.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %bb.p
  %.016.i = phi ptr [ %i.lf, %bb.p ], [ %i.al, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.preheader.i
  %.029.idx.i.i = phi i64 [ 0, %.preheader.i ], [ %.029.add.i.i, %bb.o ] ; 3 uses
  %.027.i.i64 = phi i64 [ 0, %.preheader.i ], [ %.128.i.i, %bb.o ] ; 2 uses
  %.025.i.i65 = phi ptr [ %i.b, %.preheader.i ], [ %.126.i.i, %bb.o ] ; 3 uses
  %.0.i.i = phi i32 [ 0, %.preheader.i ], [ %.1.i.i, %bb.o ] ; 6 uses
  %.029.ptr.i.i = getelementptr inbounds nuw i8, ptr %.016.i, i64 %.029.idx.i.i
  %.029.add.i.i = add nuw nsw i64 %.029.idx.i.i, 2
  %i.ko = load i16, ptr %.029.ptr.i.i, align 2, !tbaa !38
  %i.kp = zext i16 %i.ko to i64                   ; 3 uses
  %i.kq = add nsw i32 %.0.i.i, 12                 ; 2 uses
  %i.kr = icmp slt i32 %.0.i.i, 52
  br i1 %i.kr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ks = zext nneg i32 %.0.i.i to i64
  %i.kt = shl i64 %i.kp, %i.ks
  %i.ku = or i64 %i.kt, %.027.i.i64
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i32 %i.kq, 64
  %i.kv = zext nneg i32 %.0.i.i to i64
  %i.kw = shl i64 %i.kp, %i.kv
  %i.kx = or i64 %i.kw, %.027.i.i64
  store i64 %i.kx, ptr %.025.i.i65, align 1
  %i.ky = getelementptr inbounds nuw i8, ptr %.025.i.i65, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kz = sub nsw i32 64, %.0.i.i
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = lshr i64 %i.kp, %i.la
  %i.lc = add nsw i32 %.0.i.i, -52
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.128.i.i = phi i64 [ %i.ku, %bb.l ], [ %i.lb, %bb.n ], [ 0, %bb.m ]
  %.126.i.i = phi ptr [ %.025.i.i65, %bb.l ], [ %i.ky, %bb.n ], [ %i.ky, %bb.m ]
  %.1.i.i = phi i32 [ %i.kq, %bb.l ], [ %i.lc, %bb.n ], [ 0, %bb.m ]
  %i.ld = icmp samesign ult i64 %.029.idx.i.i, 510
  br i1 %i.ld, label %bb.k, label %scalar_encode.exit.i, !llvm.loop !40

scalar_encode.exit.i:                             ; preds = %bb.o
  %i.le = call i32 @EVP_DigestUpdate(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 384) #12
  %.not18.not.i = icmp eq i32 %i.le, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not18.not.i, label %hash_h_pubkey.exit.thread, label %bb.p

bb.p:                                             ; preds = %scalar_encode.exit.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.016.i, i64 512 ; 2 uses
  %i.lg = icmp ult ptr %i.lf, %i.kk
  br i1 %i.lg, label %.preheader.i, label %bb.q, !llvm.loop !80

bb.q:                                             ; preds = %bb.p
  %i.lh = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.li = call i32 @EVP_DigestUpdate(ptr noundef nonnull %1, ptr noundef %i.lh, i64 noundef 32) #12
  %.not19.i = icmp eq i32 %i.li, 0
  br i1 %.not19.i, label %hash_h_pubkey.exit.thread, label %hash_h_pubkey.exit

hash_h_pubkey.exit.thread:                        ; preds = %scalar_encode.exit.i, %bb.j, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.aa

hash_h_pubkey.exit:                               ; preds = %bb.q
  %i.lj = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %1, ptr noundef %i.kf, ptr noundef nonnull %i.a) #12
  %.not20.i = icmp eq i32 %i.lj, 0
  %i.lk = load i32, ptr %i.a, align 4
  %i.ll = icmp ne i32 %i.lk, 32
  %narrow.i.not = select i1 %.not20.i, i1 true, i1 %i.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %narrow.i.not, label %bb.aa, label %bb.x

bb.r:                                             ; preds = %matrix_mult_transpose_add.exit
end_hunk_0
begin_hunk_1_@scalar_ntt:bb.a
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
  %i.ax = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %scalar_mult.exit._crit_edge.i, %.preheader.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %scalar_mult.exit._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.in.i = phi i32 [ %i.ex, %scalar_mult.exit._crit_edge.i ], [ %i.l, %.preheader.lr.ph.i ] ; 2 uses
  %.01426.i = phi ptr [ %i.ki, %scalar_mult.exit._crit_edge.i ], [ %i.n, %.preheader.lr.ph.i ] ; 8 uses
  %.01525.i = phi ptr [ %.1.lcssa.i, %scalar_mult.exit._crit_edge.i ], [ %i.ac, %.preheader.lr.ph.i ] ; 7 uses
  %i.ay = shl nuw nsw i64 %indvar, 9              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.ay ; 2 uses
  %scevgep101 = getelementptr i8, ptr %i.au, i64 %i.ay
  %scevgep102 = getelementptr i8, ptr %i.aw, i64 %i.ay
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
  %i.az = shl i64 %index194, 1
  %next.gep195 = getelementptr i8, ptr @kModRoots, i64 %i.az
  %i.ba = shl i64 %index194, 2                    ; 3 uses
  %next.gep196 = getelementptr i8, ptr %3, i64 %i.ba
  %next.gep197 = getelementptr i8, ptr %.01525.i, i64 %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.ba
  %wide.vec198 = load <8 x i16>, ptr %next.gep197, align 2, !tbaa !38, !alias.scope !129 ; 2 uses
  %strided.vec199 = shufflevector <8 x i16> %wide.vec198, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec200 = shufflevector <8 x i16> %wide.vec198, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %7 = zext <4 x i16> %strided.vec199 to <4 x i32> ; 2 uses
  %wide.vec201 = load <8 x i16>, ptr %next.gep196, align 2, !tbaa !38 ; 2 uses
  %strided.vec202 = shufflevector <8 x i16> %wide.vec201, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec203 = shufflevector <8 x i16> %wide.vec201, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %8 = zext <4 x i16> %strided.vec202 to <4 x i32> ; 2 uses
  %9 = zext <4 x i16> %strided.vec200 to <4 x i32> ; 2 uses
  %10 = zext <4 x i16> %strided.vec203 to <4 x i32> ; 2 uses
  %wide.load204 = load <4 x i16>, ptr %next.gep195, align 8, !tbaa !38, !alias.scope !132
  %i.bc = zext <4 x i16> %wide.load204 to <4 x i32>
  %i.bd = mul nuw <4 x i32> %8, %7
  %i.be = mul nuw <4 x i32> %10, %9               ; 2 uses
  %i.bf = zext <4 x i32> %i.be to <4 x i64>
  %i.bg = mul nuw nsw <4 x i64> %i.bf, splat (i64 5039)
  %i.bh = lshr <4 x i64> %i.bg, splat (i64 24)
  %i.bi = trunc nuw nsw <4 x i64> %i.bh to <4 x i32>
  %i.bj = mul <4 x i32> %i.bi, splat (i32 62207)
  %i.bk = add <4 x i32> %i.bj, %i.be
  %i.bl = trunc <4 x i32> %i.bk to <4 x i16>      ; 2 uses
  %i.bm = add <4 x i16> %i.bl, splat (i16 -3329)  ; 2 uses
  %i.bn = icmp slt <4 x i16> %i.bm, zeroinitializer
  %i.bo = select <4 x i1> %i.bn, <4 x i16> %i.bl, <4 x i16> zeroinitializer
  %i.bp = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bm, <4 x i16> zeroinitializer)
  %i.bq = or <4 x i16> %i.bo, %i.bp
  %i.br = zext <4 x i16> %i.bq to <4 x i32>
  %i.bs = mul nuw <4 x i32> %i.br, %i.bc
  %i.bt = add <4 x i32> %i.bs, %i.bd              ; 2 uses
  %i.bu = zext <4 x i32> %i.bt to <4 x i64>
  %i.bv = mul nuw nsw <4 x i64> %i.bu, splat (i64 5039)
  %i.bw = lshr <4 x i64> %i.bv, splat (i64 24)
  %i.bx = trunc nuw nsw <4 x i64> %i.bw to <4 x i32>
  %i.by = mul <4 x i32> %i.bx, splat (i32 62207)
  %i.bz = add <4 x i32> %i.by, %i.bt
  %i.ca = trunc <4 x i32> %i.bz to <4 x i16>      ; 2 uses
  %i.cb = add <4 x i16> %i.ca, splat (i16 -3329)  ; 2 uses
  %i.cc = icmp slt <4 x i16> %i.cb, zeroinitializer
  %i.cd = select <4 x i1> %i.cc, <4 x i16> %i.ca, <4 x i16> zeroinitializer
  %i.ce = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cb, <4 x i16> zeroinitializer)
  %i.cf = or <4 x i16> %i.cd, %i.ce
  %i.cg = mul nuw <4 x i32> %10, %7
  %i.ch = mul nuw <4 x i32> %9, %8
  %i.ci = add <4 x i32> %i.cg, %i.ch              ; 2 uses
  %i.cj = zext <4 x i32> %i.ci to <4 x i64>
  %i.ck = mul nuw nsw <4 x i64> %i.cj, splat (i64 5039)
  %i.cl = lshr <4 x i64> %i.ck, splat (i64 24)
  %i.cm = trunc nuw nsw <4 x i64> %i.cl to <4 x i32>
  %i.cn = mul <4 x i32> %i.cm, splat (i32 62207)
  %i.co = add <4 x i32> %i.cn, %i.ci
  %i.cp = trunc <4 x i32> %i.co to <4 x i16>      ; 2 uses
  %i.cq = add <4 x i16> %i.cp, splat (i16 -3329)  ; 2 uses
  %i.cr = icmp slt <4 x i16> %i.cq, zeroinitializer
  %i.cs = select <4 x i1> %i.cr, <4 x i16> %i.cp, <4 x i16> zeroinitializer
  %i.ct = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cq, <4 x i16> zeroinitializer)
  %i.cu = or <4 x i16> %i.cs, %i.ct
  %interleaved.vec205 = shufflevector <4 x i16> %i.cf, <4 x i16> %i.cu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec205, ptr %i.bb, align 2, !tbaa !38
  %index.next206 = add nuw i64 %index194, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next206, 128
  br i1 %i.cv, label %scalar_mult.exit.preheader.i, label %vector.body193, !llvm.loop !134

scalar.ph191:                                     ; preds = %.preheader.i, %scalar.ph191
  %.023.i.i = phi ptr [ %i.dd, %scalar.ph191 ], [ @kModRoots, %.preheader.i ] ; 2 uses
  %.022.i.i = phi ptr [ %i.db, %scalar.ph191 ], [ %3, %.preheader.i ] ; 3 uses
  %.021.i.i = phi ptr [ %i.da, %scalar.ph191 ], [ %.01525.i, %.preheader.i ] ; 3 uses
  %.0.idx.i.i = phi i64 [ %.0.add.i.i, %scalar.ph191 ], [ 0, %.preheader.i ] ; 3 uses
  %.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 2
  %i.cy = load i16, ptr %.022.i.i, align 2, !tbaa !38
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4
  %i.dc = load i16, ptr %i.cx, align 2, !tbaa !38
  %i.dd = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 2
  %i.de = load i16, ptr %.023.i.i, align 2, !tbaa !38
  %.0.add.i.i = add nuw nsw i64 %.0.idx.i.i, 4
  %i.df = load i16, ptr %i.cw, align 2, !tbaa !38
  %i.dg = load i16, ptr %.021.i.i, align 2, !tbaa !38
  %i.dh = zext i16 %i.df to i32                   ; 2 uses
  %i.di = zext i16 %i.dc to i32                   ; 2 uses
  %i.dj = zext i16 %i.dg to i32                   ; 2 uses
  %i.dk = zext i16 %i.de to i32
  %i.dl = mul nuw i32 %i.di, %i.dh                ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = mul nuw nsw i64 %i.dm, 5039
  %i.do = lshr i64 %i.dn, 24
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %.neg.i.i.i = mul i32 %i.dp, 62207
  %i.dq = add i32 %.neg.i.i.i, %i.dl
  %i.dr = trunc i32 %i.dq to i16                  ; 2 uses
  %i.ds = add i16 %i.dr, -3329                    ; 2 uses
  %isneg.i.i.i.i = icmp slt i16 %i.ds, 0
  %i.dt = select i1 %isneg.i.i.i.i, i16 %i.dr, i16 0
  %i.du = call i16 @llvm.smax.i16(i16 %i.ds, i16 0)
  %i.dv = or i16 %i.dt, %i.du
  %i.dw = zext i16 %i.dv to i32
  %i.dx = mul nuw i32 %i.di, %i.dj
  %i.dy = mul nuw i32 %i.dw, %i.dk
  %i.dz = mul nuw i32 %i.dh, %i.cz
  %i.ea = mul nuw i32 %i.cz, %i.dj
  %i.eb = add i32 %i.dx, %i.dz                    ; 2 uses
  %i.ec = add i32 %i.dy, %i.ea                    ; 2 uses
  %i.ed = zext i32 %i.eb to i64
  %i.ee = zext i32 %i.ec to i64
  %i.ef = mul nuw nsw i64 %i.ed, 5039
  %i.eg = mul nuw nsw i64 %i.ee, 5039
  %i.eh = lshr i64 %i.ef, 24
  %i.ei = lshr i64 %i.eg, 24
  %i.ej = trunc nuw nsw i64 %i.eh to i32
  %i.ek = trunc nuw nsw i64 %i.ei to i32
  %.neg.i26.i.i = mul i32 %i.ej, 62207
  %.neg.i24.i.i = mul i32 %i.ek, 62207
  %i.el = insertelement <2 x i32> poison, i32 %.neg.i24.i.i, i64 0
  %i.em = insertelement <2 x i32> %i.el, i32 %.neg.i26.i.i, i64 1
  %i.en = insertelement <2 x i32> poison, i32 %i.ec, i64 0
  %i.eo = insertelement <2 x i32> %i.en, i32 %i.eb, i64 1
  %i.ep = add <2 x i32> %i.em, %i.eo
  %i.eq = trunc <2 x i32> %i.ep to <2 x i16>      ; 2 uses
  %i.er = add <2 x i16> %i.eq, splat (i16 -3329)  ; 2 uses
  %i.es = icmp slt <2 x i16> %i.er, zeroinitializer
  %i.et = select <2 x i1> %i.es, <2 x i16> %i.eq, <2 x i16> zeroinitializer
  %i.eu = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.er, <2 x i16> zeroinitializer)
  %i.ev = or <2 x i16> %i.et, %i.eu
  store <2 x i16> %i.ev, ptr %.0.ptr.i.i, align 2, !tbaa !38
  %i.ew = icmp samesign ult i64 %.0.idx.i.i, 508
  br i1 %i.ew, label %scalar.ph191, label %scalar_mult.exit.preheader.i, !llvm.loop !135

scalar_mult.exit.preheader.i:                     ; preds = %vector.body193, %scalar.ph191
  %i.ex = add nsw i32 %.in.i, -1
  %.121.i = getelementptr i8, ptr %.01525.i, i64 512 ; 4 uses
  br i1 %.not.i50, label %scalar_mult.exit._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar_mult.exit.preheader.i
  %scevgep103 = getelementptr i8, ptr %.01525.i, i64 %i.ah ; 2 uses
  %i.ey = insertelement <4 x ptr> poison, ptr %.01426.i, i64 0
  %i.ez = shufflevector <4 x ptr> %i.ey, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fa = insertelement <4 x ptr> poison, ptr %scevgep102, i64 0 ; 2 uses
  %i.fb = insertelement <4 x ptr> %i.fa, ptr %scevgep103, i64 1
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %scevgep105, i64 2
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %scevgep107, i64 3
  %i.fe = insertelement <4 x ptr> poison, ptr %scevgep101, i64 0 ; 2 uses
  %i.ff = insertelement <4 x ptr> %i.fe, ptr %.121.i, i64 1
  %i.fg = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.fh = shufflevector <4 x ptr> %i.fg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fi = shufflevector <4 x ptr> %i.fe, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fj = insertelement <4 x ptr> <ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)>, ptr %scevgep103, i64 0
  %i.fk = insertelement <4 x ptr> %i.fj, ptr %scevgep105, i64 1
  %i.fl = insertelement <4 x ptr> %i.fk, ptr %scevgep107, i64 2
  %i.fm = insertelement <4 x ptr> poison, ptr %.121.i, i64 0
  %i.fn = shufflevector <4 x ptr> %i.fa, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fo = shufflevector <4 x ptr> %i.ff, <4 x ptr> %i.ax, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fp = shufflevector <4 x ptr> %i.fm, <4 x ptr> %i.ax, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.fq = icmp ult <4 x ptr> %i.ez, %i.fd
  %i.fr = icmp ult <4 x ptr> %i.fo, %i.fh
  %i.fs = and <4 x i1> %i.fq, %i.fr
  %bound0119 = icmp ult ptr %.01426.i, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound1120 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict121 = and i1 %bound0119, %bound1120
  %i.ft = icmp ult <4 x ptr> %i.fi, %i.fl
  %i.fu = insertelement <4 x ptr> %i.fp, ptr @kModRoots, i64 3
  %i.fv = icmp ult <4 x ptr> %i.fu, %i.fn
  %i.fw = and <4 x i1> %i.ft, %i.fv
  %rdx.op = or <4 x i1> %i.fs, %i.fw
  %i.fx = bitcast <4 x i1> %rdx.op to i4
  %i.fy = icmp ne i4 %i.fx, 0
  %op.rdx = or i1 %i.fy, %found.conflict121
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %scalar_mult_add.exit.i
  %.124.i = phi ptr [ %.1.i, %scalar_mult_add.exit.i ], [ %.121.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0.in23.i = phi i32 [ %.0.i51, %scalar_mult_add.exit.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01322.i = phi ptr [ %i.fz, %scalar_mult_add.exit.i ], [ %3, %.lr.ph.i.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.01322.i, i64 512 ; 3 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.ga = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.ga
  %i.gb = shl i64 %index, 2                       ; 3 uses
  %next.gep139 = getelementptr i8, ptr %i.fz, i64 %i.gb
  %next.gep140 = getelementptr i8, ptr %.124.i, i64 %i.gb
  %i.gc = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %i.gb ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep140, align 2, !tbaa !38, !alias.scope !136 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec141 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %11 = zext <4 x i16> %strided.vec to <4 x i32>  ; 2 uses
  %wide.vec142 = load <8 x i16>, ptr %next.gep139, align 2, !tbaa !38 ; 2 uses
  %strided.vec143 = shufflevector <8 x i16> %wide.vec142, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec144 = shufflevector <8 x i16> %wide.vec142, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %12 = zext <4 x i16> %strided.vec143 to <4 x i32> ; 2 uses
  %13 = zext <4 x i16> %strided.vec141 to <4 x i32> ; 2 uses
  %14 = zext <4 x i16> %strided.vec144 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !38, !alias.scope !139
  %i.gd = zext <4 x i16> %wide.load to <4 x i32>
  %wide.vec145 = load <8 x i16>, ptr %i.gc, align 2, !tbaa !38 ; 2 uses
  %strided.vec146 = shufflevector <8 x i16> %wide.vec145, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec147 = shufflevector <8 x i16> %wide.vec145, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %15 = zext <4 x i16> %strided.vec146 to <4 x i32>
  %i.ge = mul nuw <4 x i32> %12, %11
  %i.gf = add nuw <4 x i32> %i.ge, %15
  %i.gg = mul nuw <4 x i32> %14, %13              ; 2 uses
  %i.gh = zext <4 x i32> %i.gg to <4 x i64>
  %i.gi = mul nuw nsw <4 x i64> %i.gh, splat (i64 5039)
  %i.gj = lshr <4 x i64> %i.gi, splat (i64 24)
  %i.gk = trunc nuw nsw <4 x i64> %i.gj to <4 x i32>
  %i.gl = mul <4 x i32> %i.gk, splat (i32 62207)
  %i.gm = add <4 x i32> %i.gl, %i.gg
  %i.gn = trunc <4 x i32> %i.gm to <4 x i16>      ; 2 uses
  %i.go = add <4 x i16> %i.gn, splat (i16 -3329)  ; 2 uses
  %i.gp = icmp slt <4 x i16> %i.go, zeroinitializer
  %i.gq = select <4 x i1> %i.gp, <4 x i16> %i.gn, <4 x i16> zeroinitializer
  %i.gr = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.go, <4 x i16> zeroinitializer)
  %i.gs = or <4 x i16> %i.gq, %i.gr
  %i.gt = zext <4 x i16> %i.gs to <4 x i32>
  %i.gu = mul nuw <4 x i32> %i.gt, %i.gd
  %i.gv = add <4 x i32> %i.gf, %i.gu              ; 2 uses
  %i.gw = zext <4 x i32> %i.gv to <4 x i64>
  %i.gx = mul nuw nsw <4 x i64> %i.gw, splat (i64 5039)
  %i.gy = lshr <4 x i64> %i.gx, splat (i64 24)
  %i.gz = trunc nuw nsw <4 x i64> %i.gy to <4 x i32>
  %i.ha = mul <4 x i32> %i.gz, splat (i32 62207)
  %i.hb = add <4 x i32> %i.ha, %i.gv
  %i.hc = trunc <4 x i32> %i.hb to <4 x i16>      ; 2 uses
  %i.hd = add <4 x i16> %i.hc, splat (i16 -3329)  ; 2 uses
  %i.he = icmp slt <4 x i16> %i.hd, zeroinitializer
  %i.hf = select <4 x i1> %i.he, <4 x i16> %i.hc, <4 x i16> zeroinitializer
  %i.hg = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.hd, <4 x i16> zeroinitializer)
  %i.hh = or <4 x i16> %i.hf, %i.hg
  %16 = zext <4 x i16> %strided.vec147 to <4 x i32>
  %i.hi = mul nuw <4 x i32> %14, %11
  %i.hj = mul nuw <4 x i32> %13, %12
  %i.hk = add <4 x i32> %i.hi, %i.hj
  %i.hl = add <4 x i32> %i.hk, %16                ; 2 uses
  %i.hm = zext <4 x i32> %i.hl to <4 x i64>
  %i.hn = mul nuw nsw <4 x i64> %i.hm, splat (i64 5039)
  %i.ho = lshr <4 x i64> %i.hn, splat (i64 24)
  %i.hp = trunc nuw nsw <4 x i64> %i.ho to <4 x i32>
  %i.hq = mul <4 x i32> %i.hp, splat (i32 62207)
  %i.hr = add <4 x i32> %i.hq, %i.hl
  %i.hs = trunc <4 x i32> %i.hr to <4 x i16>      ; 2 uses
  %i.ht = add <4 x i16> %i.hs, splat (i16 -3329)  ; 2 uses
  %i.hu = icmp slt <4 x i16> %i.ht, zeroinitializer
  %i.hv = select <4 x i1> %i.hu, <4 x i16> %i.hs, <4 x i16> zeroinitializer
  %i.hw = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ht, <4 x i16> zeroinitializer)
  %i.hx = or <4 x i16> %i.hv, %i.hw
  %interleaved.vec = shufflevector <4 x i16> %i.hh, <4 x i16> %i.hx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.gc, align 2, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hy = icmp eq i64 %index.next, 128
  br i1 %i.hy, label %scalar_mult_add.exit.i, label %vector.body, !llvm.loop !141

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.027.i.i = phi ptr [ %i.ii, %scalar.ph ], [ @kModRoots, %.lr.ph.i ] ; 2 uses
  %.026.i.i = phi ptr [ %i.ie, %scalar.ph ], [ %i.fz, %.lr.ph.i ] ; 3 uses
  %.025.i.i = phi ptr [ %i.id, %scalar.ph ], [ %.124.i, %.lr.ph.i ] ; 3 uses
  %.0.idx.i16.i = phi i64 [ %.0.add.i18.i, %scalar.ph ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0.ptr.i17.i = getelementptr inbounds nuw i8, ptr %.01426.i, i64 %.0.idx.i16.i ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 2
  %i.ia = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 2
  %i.ib = load i16, ptr %.026.i.i, align 2, !tbaa !38
  %i.ic = zext i16 %i.ib to i32                   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.if = load i16, ptr %i.ia, align 2, !tbaa !38
  %i.ig = zext i16 %i.if to i32                   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.ptr.i17.i, i64 2
  %.0.add.i18.i = add nuw nsw i64 %.0.idx.i16.i, 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 2
  %i.ij = load i16, ptr %.027.i.i, align 2, !tbaa !38
  %i.ik = zext i16 %i.ij to i32
  %i.il = load i16, ptr %.0.ptr.i17.i, align 2, !tbaa !38
  %i.im = zext i16 %i.il to i32
  %i.in = load i16, ptr %i.ih, align 2, !tbaa !38
  %i.io = zext i16 %i.in to i32
  %i.ip = load i16, ptr %i.hz, align 2, !tbaa !38
  %i.iq = load i16, ptr %.025.i.i, align 2, !tbaa !38
  %i.ir = zext i16 %i.ip to i32                   ; 2 uses
  %i.is = zext i16 %i.iq to i32                   ; 2 uses
  %i.it = mul nuw i32 %i.ig, %i.ir                ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.iu, 5039
  %i.iw = lshr i64 %i.iv, 24
  %i.ix = trunc nuw nsw i64 %i.iw to i32
  %.neg.i.i19.i = mul i32 %i.ix, 62207
  %i.iy = add i32 %.neg.i.i19.i, %i.it
  %i.iz = trunc i32 %i.iy to i16                  ; 2 uses
  %i.ja = add i16 %i.iz, -3329                    ; 2 uses
  %isneg.i.i.i20.i = icmp slt i16 %i.ja, 0
  %i.jb = select i1 %isneg.i.i.i20.i, i16 %i.iz, i16 0
  %i.jc = call i16 @llvm.smax.i16(i16 %i.ja, i16 0)
  %i.jd = or i16 %i.jb, %i.jc
  %i.je = zext i16 %i.jd to i32
  %i.jf = mul nuw i32 %i.je, %i.ik
  %i.jg = mul nuw i32 %i.ig, %i.is
  %i.jh = mul nuw i32 %i.ir, %i.ic
  %i.ji = mul nuw i32 %i.ic, %i.is
  %i.jj = add i32 %i.jg, %i.jh
  %i.jk = add nuw i32 %i.ji, %i.im
  %i.jl = add i32 %i.jj, %i.io                    ; 2 uses
  %i.jm = add i32 %i.jk, %i.jf                    ; 2 uses
  %i.jn = zext i32 %i.jl to i64
  %i.jo = zext i32 %i.jm to i64
  %i.jp = mul nuw nsw i64 %i.jn, 5039
  %i.jq = mul nuw nsw i64 %i.jo, 5039
  %i.jr = lshr i64 %i.jp, 24
  %i.js = lshr i64 %i.jq, 24
  %i.jt = trunc nuw nsw i64 %i.jr to i32
  %i.ju = trunc nuw nsw i64 %i.js to i32
  %.neg.i30.i.i = mul i32 %i.jt, 62207
  %.neg.i28.i.i = mul i32 %i.ju, 62207
  %i.jv = insertelement <2 x i32> poison, i32 %.neg.i28.i.i, i64 0
  %i.jw = insertelement <2 x i32> %i.jv, i32 %.neg.i30.i.i, i64 1
  %i.jx = insertelement <2 x i32> poison, i32 %i.jm, i64 0
  %i.jy = insertelement <2 x i32> %i.jx, i32 %i.jl, i64 1
  %i.jz = add <2 x i32> %i.jw, %i.jy
  %i.ka = trunc <2 x i32> %i.jz to <2 x i16>      ; 2 uses
  %i.kb = add <2 x i16> %i.ka, splat (i16 -3329)  ; 2 uses
  %i.kc = icmp slt <2 x i16> %i.kb, zeroinitializer
  %i.kd = select <2 x i1> %i.kc, <2 x i16> %i.ka, <2 x i16> zeroinitializer
  %i.ke = call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.kb, <2 x i16> zeroinitializer)
  %i.kf = or <2 x i16> %i.kd, %i.ke
  store <2 x i16> %i.kf, ptr %.0.ptr.i17.i, align 2, !tbaa !38
  %i.kg = icmp samesign ult i64 %.0.idx.i16.i, 508
  br i1 %i.kg, label %scalar.ph, label %scalar_mult_add.exit.i, !llvm.loop !142

scalar_mult_add.exit.i:                           ; preds = %vector.body, %scalar.ph
  %.0.i51 = add nsw i32 %.0.in23.i, -1
  %.1.i = getelementptr inbounds nuw i8, ptr %.124.i, i64 512 ; 2 uses
  %i.kh = icmp sgt i32 %.0.in23.i, 2
  br i1 %i.kh, label %.lr.ph.i, label %scalar_mult.exit._crit_edge.i, !llvm.loop !143

scalar_mult.exit._crit_edge.i:                    ; preds = %scalar_mult_add.exit.i, %scalar_mult.exit.preheader.i
  %.1.lcssa.i = phi ptr [ %.121.i, %scalar_mult.exit.preheader.i ], [ %.1.i, %scalar_mult_add.exit.i ]
  call fastcc void @scalar_inverse_ntt(ptr noundef %.01426.i)
  %i.ki = getelementptr i8, ptr %.01426.i, i64 512
  %i.kj = icmp sgt i32 %.in.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kj, label %.preheader.i, label %matrix_mult_intt.exit, !llvm.loop !144

matrix_mult_intt.exit:                            ; preds = %scalar_mult.exit._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.kl = getelementptr i8, ptr %5, i64 24        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %middle.block215, %matrix_mult_intt.exit
  %.1 = phi i8 [ %i.u, %matrix_mult_intt.exit ], [ %i.km, %middle.block215 ] ; 2 uses
  %.08.i52 = phi i32 [ %i.l, %matrix_mult_intt.exit ], [ %i.lv, %middle.block215 ] ; 2 uses
  %.07.i = phi ptr [ %3, %matrix_mult_intt.exit ], [ %i.lu, %middle.block215 ] ; 2 uses
  %i.km = add i8 %.1, 1                           ; 2 uses
  store i8 %.1, ptr %i.kk, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.val.i.i = load ptr, ptr %i.kl, align 8, !tbaa !24
  %i.kn = call fastcc i32 @prf(ptr noundef %i.b, i64 noundef 128, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr %.val.i.i)
  %.not.i.i = icmp eq i32 %i.kn, 0
  br i1 %.not.i.i, label %gencbd_vector.exit.thread, label %vector.body210

vector.body210:                                   ; preds = %bb.e, %vector.body210
  %index211 = phi i64 [ %index.next214, %vector.body210 ], [ 0, %bb.e ] ; 3 uses
  %i.ko = shl i64 %index211, 2
  %i.kp = getelementptr inbounds nuw i8, ptr %i.b, i64 %index211
  %i.kq = getelementptr inbounds nuw i8, ptr %.07.i, i64 %i.ko
  %wide.load212 = load <4 x i8>, ptr %i.kp, align 4, !tbaa !44
  %i.kr = zext <4 x i8> %wide.load212 to <4 x i32> ; 8 uses
  %i.ks = and <4 x i32> %i.kr, splat (i32 1)
  %i.kt = lshr <4 x i32> %i.kr, splat (i32 1)
  %i.ku = and <4 x i32> %i.kt, splat (i32 1)
  %i.kv = shl <4 x i32> %i.kr, splat (i32 29)
  %i.kw = ashr <4 x i32> %i.kv, splat (i32 31)
  %i.kx = shl <4 x i32> %i.kr, splat (i32 28)
  %i.ky = ashr <4 x i32> %i.kx, splat (i32 31)
  %i.kz = add nsw <4 x i32> %i.ky, %i.ks
  %i.la = add nsw <4 x i32> %i.kz, %i.kw
  %i.lb = add nsw <4 x i32> %i.la, %i.ku          ; 2 uses
  %i.lc = icmp slt <4 x i32> %i.lb, zeroinitializer
  %i.ld = select <4 x i1> %i.lc, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.le = add nsw <4 x i32> %i.ld, %i.lb
  %i.lf = lshr <4 x i32> %i.kr, splat (i32 4)
  %i.lg = and <4 x i32> %i.lf, splat (i32 1)
  %i.lh = lshr <4 x i32> %i.kr, splat (i32 5)
  %i.li = and <4 x i32> %i.lh, splat (i32 1)
  %i.lj = shl <4 x i32> %i.kr, splat (i32 25)
  %i.lk = ashr <4 x i32> %i.lj, splat (i32 31)
  %i.ll = lshr <4 x i32> %i.kr, splat (i32 7)
  %i.lm = sub nsw <4 x i32> %i.li, %i.ll
  %i.ln = add nsw <4 x i32> %i.lm, %i.lg
  %i.lo = add nsw <4 x i32> %i.ln, %i.lk          ; 2 uses
  %i.lp = icmp slt <4 x i32> %i.lo, zeroinitializer
  %i.lq = select <4 x i1> %i.lp, <4 x i32> splat (i32 3329), <4 x i32> zeroinitializer
  %i.lr = add nsw <4 x i32> %i.lq, %i.lo
  %i.ls = shufflevector <4 x i32> %i.le, <4 x i32> %i.lr, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec213 = trunc nsw <8 x i32> %i.ls to <8 x i16>
  store <8 x i16> %interleaved.vec213, ptr %i.kq, align 2, !tbaa !38
  %index.next214 = add nuw i64 %index211, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next214, 128
  br i1 %i.lt, label %middle.block215, label %vector.body210, !llvm.loop !145

gencbd_vector.exit.thread:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %scalar_encode.exit

middle.block215:                                  ; preds = %vector.body210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.lu = getelementptr inbounds nuw i8, ptr %.07.i, i64 512
  %i.lv = add nsw i32 %.08.i52, -1
  %i.lw = icmp sgt i32 %.08.i52, 1
  br i1 %i.lw, label %bb.e, label %bb.f, !llvm.loop !146

bb.f:                                             ; preds = %middle.block215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %smin217 = call i32 @llvm.smin.i32(i32 %i.l, i32 1)
  %i.lx = sub i32 %i.l, %smin217
  %i.ly = zext i32 %i.lx to i64                   ; 2 uses
  %i.lz = shl nuw nsw i64 %i.ly, 9
  %i.ma = add nsw i64 %i.m, %i.ly
  %i.mb = shl nsw i64 %i.ma, 9
  %i.mc = getelementptr i8, ptr %3, i64 %i.mb
  %scevgep218 = getelementptr i8, ptr %i.mc, i64 512
  %i.md = getelementptr i8, ptr %3, i64 %i.lz
  %scevgep219 = getelementptr i8, ptr %i.md, i64 512
  %bound0220 = icmp ult ptr %i.n, %scevgep219
  %bound1221 = icmp ult ptr %3, %scevgep218
  %found.conflict222 = and i1 %bound0220, %bound1221
  br label %vector.memcheck216

vector.memcheck216:                               ; preds = %bb.f, %scalar_add.exit.i
  %.03.i = phi ptr [ %i.n, %bb.f ], [ %i.nn, %scalar_add.exit.i ] ; 4 uses
  %.02.i = phi ptr [ %3, %bb.f ], [ %i.no, %scalar_add.exit.i ] ; 4 uses
  %.0.i54 = phi i32 [ %i.l, %bb.f ], [ %i.np, %scalar_add.exit.i ] ; 2 uses
  br i1 %found.conflict222, label %scalar.ph223, label %vector.body225

end_hunk_1
begin_hunk_2_@encrypt_cpa:bb.a
  %i.ze = and <8 x i8> %i.zd, splat (i8 1)
  %i.zf = zext nneg <8 x i8> %i.ze to <8 x i16>
  %i.zg = sub nsw <8 x i16> zeroinitializer, %i.zf
  %i.zh = load i16, ptr %i.yv, align 2, !tbaa !38
  %i.zi = load i16, ptr %i.yw, align 2, !tbaa !38
  %i.zj = load i16, ptr %i.yx, align 2, !tbaa !38
  %i.zk = load i16, ptr %i.yy, align 2, !tbaa !38
  %i.zl = load i16, ptr %i.yz, align 2, !tbaa !38
  %i.zm = load i16, ptr %i.za, align 2, !tbaa !38
  %i.zn = load i16, ptr %i.zb, align 2, !tbaa !38
  %i.zo = load i16, ptr %i.zc, align 2, !tbaa !38
  %i.zp = insertelement <8 x i16> poison, i16 %i.zh, i64 0
  %i.zq = insertelement <8 x i16> %i.zp, i16 %i.zi, i64 1
  %i.zr = insertelement <8 x i16> %i.zq, i16 %i.zj, i64 2
  %i.zs = insertelement <8 x i16> %i.zr, i16 %i.zk, i64 3
  %i.zt = insertelement <8 x i16> %i.zs, i16 %i.zl, i64 4
  %i.zu = insertelement <8 x i16> %i.zt, i16 %i.zm, i64 5
  %i.zv = insertelement <8 x i16> %i.zu, i16 %i.zn, i64 6
  %i.zw = insertelement <8 x i16> %i.zv, i16 %i.zo, i64 7
  %i.zx = and <8 x i16> %i.zg, splat (i16 1665)
  %i.zy = add <8 x i16> %i.zw, %i.zx              ; 2 uses
  %i.zz = add <8 x i16> %i.zy, splat (i16 -3329)  ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.rl, i64 14
  %i.aab = getelementptr inbounds nuw i8, ptr %i.rm, i64 30
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ro, i64 46
  %i.aad = getelementptr inbounds nuw i8, ptr %i.rq, i64 62
  %i.aae = getelementptr inbounds nuw i8, ptr %i.rs, i64 78
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ru, i64 94
  %i.aag = getelementptr inbounds nuw i8, ptr %i.rw, i64 110
  %i.aah = getelementptr inbounds nuw i8, ptr %i.ry, i64 126
  %i.aai = load i16, ptr %i.aaa, align 2, !tbaa !38
  %i.aaj = load i16, ptr %i.aab, align 2, !tbaa !38
  %i.aak = load i16, ptr %i.aac, align 2, !tbaa !38
  %i.aal = load i16, ptr %i.aad, align 2, !tbaa !38
  %i.aam = load i16, ptr %i.aae, align 2, !tbaa !38
  %i.aan = load i16, ptr %i.aaf, align 2, !tbaa !38
  %i.aao = load i16, ptr %i.aag, align 2, !tbaa !38
  %i.aap = load i16, ptr %i.aah, align 2, !tbaa !38
  %i.aaq = insertelement <8 x i16> poison, i16 %i.aai, i64 0
  %i.aar = insertelement <8 x i16> %i.aaq, i16 %i.aaj, i64 1
  %i.aas = insertelement <8 x i16> %i.aar, i16 %i.aak, i64 2
  %i.aat = insertelement <8 x i16> %i.aas, i16 %i.aal, i64 3
  %i.aau = insertelement <8 x i16> %i.aat, i16 %i.aam, i64 4
  %i.aav = insertelement <8 x i16> %i.aau, i16 %i.aan, i64 5
  %i.aaw = insertelement <8 x i16> %i.aav, i16 %i.aao, i64 6
  %i.aax = insertelement <8 x i16> %i.aaw, i16 %i.aap, i64 7
  %i.aay = icmp slt <8 x i8> %wide.load265, zeroinitializer
  %i.aaz = select <8 x i1> %i.aay, <8 x i16> splat (i16 1665), <8 x i16> zeroinitializer
  %i.aba = add <8 x i16> %i.aax, %i.aaz           ; 2 uses
  %i.abb = add <8 x i16> %i.aba, splat (i16 -3329) ; 2 uses
  %i.abc = shufflevector <8 x i16> %i.sv, <8 x i16> %i.ua, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abd = shufflevector <8 x i16> %i.vf, <8 x i16> %i.wk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abe = shufflevector <16 x i16> %i.abc, <16 x i16> %i.abd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abf = icmp slt <32 x i16> %i.abe, zeroinitializer
  %i.abg = shufflevector <8 x i16> %i.su, <8 x i16> %i.tz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abh = shufflevector <8 x i16> %i.ve, <8 x i16> %i.wj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abi = shufflevector <16 x i16> %i.abg, <16 x i16> %i.abh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abj = select <32 x i1> %i.abf, <32 x i16> %i.abi, <32 x i16> zeroinitializer
  %i.abk = shufflevector <8 x i16> %i.sv, <8 x i16> %i.ua, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abl = shufflevector <8 x i16> %i.vf, <8 x i16> %i.wk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abm = shufflevector <16 x i16> %i.abk, <16 x i16> %i.abl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abn = call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.abm, <32 x i16> zeroinitializer)
  %i.abo = or <32 x i16> %i.abj, %i.abn
  %i.abp = shufflevector <8 x i16> %i.xp, <8 x i16> %i.yu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abq = shufflevector <8 x i16> %i.zz, <8 x i16> %i.abb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abr = shufflevector <16 x i16> %i.abp, <16 x i16> %i.abq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abs = icmp slt <32 x i16> %i.abr, zeroinitializer
  %i.abt = shufflevector <8 x i16> %i.xo, <8 x i16> %i.yt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abu = shufflevector <8 x i16> %i.zy, <8 x i16> %i.aba, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abv = shufflevector <16 x i16> %i.abt, <16 x i16> %i.abu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abw = select <32 x i1> %i.abs, <32 x i16> %i.abv, <32 x i16> zeroinitializer
  %i.abx = shufflevector <8 x i16> %i.xp, <8 x i16> %i.yu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aby = shufflevector <8 x i16> %i.zz, <8 x i16> %i.abb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abz = shufflevector <16 x i16> %i.abx, <16 x i16> %i.aby, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aca = call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.abz, <32 x i16> zeroinitializer)
  %i.acb = or <32 x i16> %i.abw, %i.aca
  %interleaved.vec266 = shufflevector <32 x i16> %i.abo, <32 x i16> %i.acb, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec266, ptr %i.rl, align 2, !tbaa !38
  %index.next267 = add nuw i64 %index263, 8       ; 2 uses
  %i.acc = icmp eq i64 %index.next267, 32
  br i1 %i.acc, label %vector.ph270, label %vector.body262, !llvm.loop !159

vector.ph270:                                     ; preds = %vector.body262
  %notmask.i.i = shl nsw i32 -1, %i.r
  %i.acd = xor i32 %notmask.i.i, -1
  %broadcast.splatinsert271 = insertelement <8 x i32> poison, i32 %i.acd, i64 0
  %broadcast.splat272 = shufflevector <8 x i32> %broadcast.splatinsert271, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert273 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat274 = shufflevector <8 x i32> %broadcast.splatinsert273, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph270
  %index276 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body275 ] ; 2 uses
  %i.ace = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index276 ; 2 uses
  %wide.load277 = load <8 x i16>, ptr %i.ace, align 2, !tbaa !38
  %i.acf = zext <8 x i16> %wide.load277 to <8 x i32>
  %i.acg = shl <8 x i32> %i.acf, %broadcast.splat274 ; 2 uses
  %i.ach = zext <8 x i32> %i.acg to <8 x i64>
  %i.aci = mul nuw nsw <8 x i64> %i.ach, splat (i64 5039)
  %i.acj = lshr <8 x i64> %i.aci, splat (i64 24)
  %i.ack = trunc nuw nsw <8 x i64> %i.acj to <8 x i32> ; 2 uses
  %i.acl = mul <8 x i32> %i.ack, splat (i32 -3329)
  %i.acm = add <8 x i32> %i.acl, %i.acg           ; 4 uses
  %i.acn = sub <8 x i32> splat (i32 1664), %i.acm
  %i.aco = or <8 x i32> %i.acn, %i.acm
  %i.acp = lshr <8 x i32> %i.aco, splat (i32 31)
  %i.acq = add nuw nsw <8 x i32> %i.acp, %i.ack
  %i.acr = sub <8 x i32> splat (i32 4993), %i.acm
  %i.acs = or <8 x i32> %i.acr, %i.acm
  %i.act = lshr <8 x i32> %i.acs, splat (i32 31)
  %i.acu = add nuw nsw <8 x i32> %i.acq, %i.act
  %i.acv = and <8 x i32> %i.acu, %broadcast.splat272
  %i.acw = trunc <8 x i32> %i.acv to <8 x i16>
  store <8 x i16> %i.acw, ptr %i.ace, align 2, !tbaa !38
  %index.next278 = add nuw i64 %index276, 8       ; 2 uses
  %i.acx = icmp eq i64 %index.next278, 256
  br i1 %i.acx, label %scalar_compress.exit, label %vector.body275, !llvm.loop !160

scalar_compress.exit:                             ; preds = %vector.body275
  %i.acy = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !87
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 %i.acz
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %scalar_compress.exit
  %.029.idx.i = phi i64 [ 0, %scalar_compress.exit ], [ %.029.add.i, %bb.q ] ; 3 uses
  %.027.i = phi i64 [ 0, %scalar_compress.exit ], [ %.128.i, %bb.q ] ; 2 uses
  %.025.i = phi ptr [ %i.ada, %scalar_compress.exit ], [ %.126.i, %bb.q ] ; 3 uses
  %.0.i78 = phi i32 [ 0, %scalar_compress.exit ], [ %.1.i80, %bb.q ] ; 4 uses
  %.029.ptr.i = getelementptr inbounds nuw i8, ptr %6, i64 %.029.idx.i
  %.029.add.i = add nuw nsw i64 %.029.idx.i, 2
  %i.adb = load i16, ptr %.029.ptr.i, align 2, !tbaa !38
  %i.adc = zext i16 %i.adb to i64                 ; 3 uses
  %i.add = add nsw i32 %.0.i78, %i.r              ; 4 uses
  %i.ade = icmp slt i32 %i.add, 64
  br i1 %i.ade, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.adf = zext nneg i32 %.0.i78 to i64
  %i.adg = shl i64 %i.adc, %i.adf
  %i.adh = or i64 %i.adg, %.027.i
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not.i79 = icmp eq i32 %i.add, 64
  %i.adi = zext nneg i32 %.0.i78 to i64
  %i.adj = shl i64 %i.adc, %i.adi
  %i.adk = or i64 %i.adj, %.027.i
  store i64 %i.adk, ptr %.025.i, align 1
  %i.adl = getelementptr inbounds nuw i8, ptr %.025.i, i64 8 ; 2 uses
  br i1 %.not.i79, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.adm = sub nsw i32 64, %.0.i78
  %i.adn = zext nneg i32 %i.adm to i64
  %i.ado = lshr i64 %i.adc, %i.adn
  %i.adp = add nsw i32 %i.add, -64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.128.i = phi i64 [ %i.adh, %bb.n ], [ %i.ado, %bb.p ], [ 0, %bb.o ]
  %.126.i = phi ptr [ %.025.i, %bb.n ], [ %i.adl, %bb.p ], [ %i.adl, %bb.o ]
  %.1.i80 = phi i32 [ %i.add, %bb.n ], [ %i.adp, %bb.p ], [ 0, %bb.o ]
  %i.adq = icmp samesign ult i64 %.029.idx.i, 510
  br i1 %i.adq, label %bb.m, label %scalar_encode.exit, !llvm.loop !40

scalar_encode.exit:                               ; preds = %bb.q, %cbd_2.exit.thread, %gencbd_vector.exit.thread, %gencbd_vector_ntt.exit.thread
  %.0 = phi i32 [ 0, %cbd_2.exit.thread ], [ 0, %gencbd_vector.exit.thread ], [ 0, %gencbd_vector_ntt.exit.thread ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @inner_product(ptr noundef nonnull captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #10 {
vector.memcheck:
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 3 uses
  %scevgep17 = getelementptr i8, ptr %1, i64 512
  %scevgep18 = getelementptr i8, ptr %2, i64 512
  %bound0 = icmp ult ptr %0, %scevgep17
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult ptr %0, %scevgep18
  %bound120 = icmp ult ptr %2, %scevgep
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound022 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound123 = icmp ugt ptr %scevgep, @kModRoots
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx25 = or i1 %conflict.rdx, %found.conflict24
  br i1 %conflict.rdx25, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.a = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kModRoots, i64 %i.a
  %i.b = shl i64 %index, 2                        ; 3 uses
  %next.gep26 = getelementptr i8, ptr %2, i64 %i.b
  %next.gep27 = getelementptr i8, ptr %1, i64 %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %wide.vec = load <8 x i16>, ptr %next.gep27, align 2, !tbaa !38, !alias.scope !161 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec28 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %4 = zext <4 x i16> %strided.vec to <4 x i32>   ; 2 uses
  %wide.vec29 = load <8 x i16>, ptr %next.gep26, align 2, !tbaa !38, !alias.scope !164 ; 2 uses
  %strided.vec30 = shufflevector <8 x i16> %wide.vec29, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec31 = shufflevector <8 x i16> %wide.vec29, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %5 = zext <4 x i16> %strided.vec30 to <4 x i32> ; 2 uses
  %6 = zext <4 x i16> %strided.vec28 to <4 x i32> ; 2 uses
  %7 = zext <4 x i16> %strided.vec31 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 8, !tbaa !38, !alias.scope !166
  %i.d = zext <4 x i16> %wide.load to <4 x i32>
  %i.e = mul nuw <4 x i32> %5, %4
  %i.f = mul nuw <4 x i32> %7, %6                 ; 2 uses
  %i.g = zext <4 x i32> %i.f to <4 x i64>
  %i.h = mul nuw nsw <4 x i64> %i.g, splat (i64 5039)
  %i.i = lshr <4 x i64> %i.h, splat (i64 24)
  %i.j = trunc nuw nsw <4 x i64> %i.i to <4 x i32>
  %i.k = mul <4 x i32> %i.j, splat (i32 62207)
  %i.l = add <4 x i32> %i.k, %i.f
  %i.m = trunc <4 x i32> %i.l to <4 x i16>        ; 2 uses
  %i.n = add <4 x i16> %i.m, splat (i16 -3329)    ; 2 uses
  %i.o = icmp slt <4 x i16> %i.n, zeroinitializer
  %i.p = select <4 x i1> %i.o, <4 x i16> %i.m, <4 x i16> zeroinitializer
  %i.q = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.n, <4 x i16> zeroinitializer)
  %i.r = or <4 x i16> %i.p, %i.q
  %i.s = zext <4 x i16> %i.r to <4 x i32>
  %i.t = mul nuw <4 x i32> %i.s, %i.d
  %i.u = add <4 x i32> %i.t, %i.e                 ; 2 uses
  %i.v = zext <4 x i32> %i.u to <4 x i64>
  %i.w = mul nuw nsw <4 x i64> %i.v, splat (i64 5039)
  %i.x = lshr <4 x i64> %i.w, splat (i64 24)
  %i.y = trunc nuw nsw <4 x i64> %i.x to <4 x i32>
  %i.z = mul <4 x i32> %i.y, splat (i32 62207)
  %i.aa = add <4 x i32> %i.z, %i.u
  %i.ab = trunc <4 x i32> %i.aa to <4 x i16>      ; 2 uses
  %i.ac = add <4 x i16> %i.ab, splat (i16 -3329)  ; 2 uses
  %i.ad = icmp slt <4 x i16> %i.ac, zeroinitializer
  %i.ae = select <4 x i1> %i.ad, <4 x i16> %i.ab, <4 x i16> zeroinitializer
  %i.af = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ac, <4 x i16> zeroinitializer)
  %i.ag = or <4 x i16> %i.ae, %i.af
  %i.ah = mul nuw <4 x i32> %7, %4
  %i.ai = mul nuw <4 x i32> %6, %5
  %i.aj = add <4 x i32> %i.ah, %i.ai              ; 2 uses
  %i.ak = zext <4 x i32> %i.aj to <4 x i64>
  %i.al = mul nuw nsw <4 x i64> %i.ak, splat (i64 5039)
  %i.am = lshr <4 x i64> %i.al, splat (i64 24)
  %i.an = trunc nuw nsw <4 x i64> %i.am to <4 x i32>
  %i.ao = mul <4 x i32> %i.an, splat (i32 62207)
  %i.ap = add <4 x i32> %i.ao, %i.aj
  %i.aq = trunc <4 x i32> %i.ap to <4 x i16>      ; 2 uses
  %i.ar = add <4 x i16> %i.aq, splat (i16 -3329)  ; 2 uses
  %i.as = icmp slt <4 x i16> %i.ar, zeroinitializer
  %i.at = select <4 x i1> %i.as, <4 x i16> %i.aq, <4 x i16> zeroinitializer
  %i.au = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ar, <4 x i16> zeroinitializer)
  %i.av = or <4 x i16> %i.at, %i.au
  %interleaved.vec = shufflevector <4 x i16> %i.ag, <4 x i16> %i.av, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.c, align 2, !tbaa !38, !alias.scope !168, !noalias !170
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, 128
  br i1 %i.aw, label %scalar_mult.exit.preheader, label %vector.body, !llvm.loop !171

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.023.i = phi ptr [ %i.be, %scalar.ph ], [ @kModRoots, %vector.memcheck ] ; 2 uses
  %.022.i = phi ptr [ %i.bc, %scalar.ph ], [ %2, %vector.memcheck ] ; 3 uses
  %.021.i = phi ptr [ %i.bb, %scalar.ph ], [ %1, %vector.memcheck ] ; 3 uses
  %.0.idx.i = phi i64 [ %.0.add.i, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.022.i, i64 2
  %i.az = load i16, ptr %.022.i, align 2, !tbaa !38
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.bd = load i16, ptr %i.ay, align 2, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %.023.i, i64 2
  %i.bf = load i16, ptr %.023.i, align 2, !tbaa !38
  %.0.add.i = add nuw nsw i64 %.0.idx.i, 4
  %i.bg = load i16, ptr %i.ax, align 2, !tbaa !38
  %i.bh = load i16, ptr %.021.i, align 2, !tbaa !38
  %i.bi = zext i16 %i.bg to i32                   ; 2 uses
  %i.bj = zext i16 %i.bd to i32                   ; 2 uses
  %i.bk = zext i16 %i.bh to i32                   ; 2 uses
  %i.bl = zext i16 %i.bf to i32
  %i.bm = mul nuw i32 %i.bj, %i.bi                ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul nuw nsw i64 %i.bn, 5039
  %i.bp = lshr i64 %i.bo, 24
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %.neg.i.i = mul i32 %i.bq, 62207
  %i.br = add i32 %.neg.i.i, %i.bm
  %i.bs = trunc i32 %i.br to i16                  ; 2 uses
  %i.bt = add i16 %i.bs, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.bt, 0
  %i.bu = select i1 %isneg.i.i.i, i16 %i.bs, i16 0
  %i.bv = tail call i16 @llvm.smax.i16(i16 %i.bt, i16 0)
  %i.bw = or i16 %i.bu, %i.bv
  %i.bx = zext i16 %i.bw to i32
  %i.by = mul nuw i32 %i.bj, %i.bk
  %i.bz = mul nuw i32 %i.bx, %i.bl
  %i.ca = mul nuw i32 %i.bi, %i.ba
  %i.cb = mul nuw i32 %i.ba, %i.bk
  %i.cc = add i32 %i.by, %i.ca                    ; 2 uses
  %i.cd = add i32 %i.bz, %i.cb                    ; 2 uses
  %i.ce = zext i32 %i.cc to i64
  %i.cf = zext i32 %i.cd to i64
  %i.cg = mul nuw nsw i64 %i.ce, 5039
  %i.ch = mul nuw nsw i64 %i.cf, 5039
  %i.ci = lshr i64 %i.cg, 24
  %i.cj = lshr i64 %i.ch, 24
  %i.ck = trunc nuw nsw i64 %i.ci to i32
  %i.cl = trunc nuw nsw i64 %i.cj to i32
  %.neg.i26.i = mul i32 %i.ck, 62207
  %.neg.i24.i = mul i32 %i.cl, 62207
  %i.cm = insertelement <2 x i32> poison, i32 %.neg.i24.i, i64 0
  %i.cn = insertelement <2 x i32> %i.cm, i32 %.neg.i26.i, i64 1
  %i.co = insertelement <2 x i32> poison, i32 %i.cd, i64 0
  %i.cp = insertelement <2 x i32> %i.co, i32 %i.cc, i64 1
  %i.cq = add <2 x i32> %i.cn, %i.cp
  %i.cr = trunc <2 x i32> %i.cq to <2 x i16>      ; 2 uses
  %i.cs = add <2 x i16> %i.cr, splat (i16 -3329)  ; 2 uses
  %i.ct = icmp slt <2 x i16> %i.cs, zeroinitializer
  %i.cu = select <2 x i1> %i.ct, <2 x i16> %i.cr, <2 x i16> zeroinitializer
  %i.cv = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.cs, <2 x i16> zeroinitializer)
  %i.cw = or <2 x i16> %i.cu, %i.cv
  store <2 x i16> %i.cw, ptr %.0.ptr.i, align 2, !tbaa !38
  %i.cx = icmp samesign ult i64 %.0.idx.i, 508
  br i1 %i.cx, label %scalar.ph, label %scalar_mult.exit.preheader, !llvm.loop !172

scalar_mult.exit.preheader:                       ; preds = %vector.body, %scalar.ph
  %i.cy = icmp sgt i32 %3, 1
  br i1 %i.cy, label %.lr.ph.preheader, label %scalar_mult.exit._crit_edge

.lr.ph.preheader:                                 ; preds = %scalar_mult.exit.preheader
  %scevgep33 = getelementptr i8, ptr %0, i64 512  ; 3 uses
  %scevgep34 = getelementptr i8, ptr %1, i64 512
  %i.cz = add nsw i32 %3, -2
  %i.da = zext i32 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 9
  %i.dc = add nuw nsw i64 %i.db, 1024             ; 2 uses
  %scevgep35 = getelementptr i8, ptr %1, i64 %i.dc
  %scevgep36 = getelementptr i8, ptr %2, i64 512
  %scevgep37 = getelementptr i8, ptr %2, i64 %i.dc
  %bound038 = icmp ult ptr %0, %scevgep35
  %bound139 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict40 = and i1 %bound038, %bound139
  %bound041 = icmp ult ptr %0, %scevgep37
  %bound142 = icmp ult ptr %scevgep36, %scevgep33
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %found.conflict40, %found.conflict43
  %bound045 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kModRoots, i64 256)
  %bound146 = icmp ugt ptr %scevgep33, @kModRoots
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %scalar_mult_add.exit
  %.016 = phi i32 [ %i.hm, %scalar_mult_add.exit ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.0615 = phi ptr [ %i.de, %scalar_mult_add.exit ], [ %2, %.lr.ph.preheader ]
  %.0714 = phi ptr [ %i.dd, %scalar_mult_add.exit ], [ %1, %.lr.ph.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0714, i64 512 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0615, i64 512 ; 3 uses
  br i1 %conflict.rdx48, label %scalar.ph49, label %vector.body51

vector.body51:                                    ; preds = %.lr.ph, %vector.body51
  %index52 = phi i64 [ %index.next67, %vector.body51 ], [ 0, %.lr.ph ] ; 3 uses
  %i.df = shl i64 %index52, 1
  %next.gep53 = getelementptr i8, ptr @kModRoots, i64 %i.df
  %i.dg = shl i64 %index52, 2                     ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.de, i64 %i.dg
  %next.gep55 = getelementptr i8, ptr %i.dd, i64 %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %i.dg ; 2 uses
  %wide.vec56 = load <8 x i16>, ptr %next.gep55, align 2, !tbaa !38, !alias.scope !173 ; 2 uses
  %strided.vec57 = shufflevector <8 x i16> %wide.vec56, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec58 = shufflevector <8 x i16> %wide.vec56, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %8 = zext <4 x i16> %strided.vec57 to <4 x i32> ; 2 uses
  %wide.vec59 = load <8 x i16>, ptr %next.gep54, align 2, !tbaa !38, !alias.scope !176 ; 2 uses
  %strided.vec60 = shufflevector <8 x i16> %wide.vec59, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec61 = shufflevector <8 x i16> %wide.vec59, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %9 = zext <4 x i16> %strided.vec60 to <4 x i32> ; 2 uses
  %10 = zext <4 x i16> %strided.vec58 to <4 x i32> ; 2 uses
  %11 = zext <4 x i16> %strided.vec61 to <4 x i32> ; 2 uses
  %wide.load62 = load <4 x i16>, ptr %next.gep53, align 8, !tbaa !38, !alias.scope !178
  %i.di = zext <4 x i16> %wide.load62 to <4 x i32>
  %wide.vec63 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !38, !alias.scope !180, !noalias !182 ; 2 uses
  %strided.vec64 = shufflevector <8 x i16> %wide.vec63, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec65 = shufflevector <8 x i16> %wide.vec63, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %12 = zext <4 x i16> %strided.vec64 to <4 x i32>
  %i.dj = mul nuw <4 x i32> %9, %8
  %i.dk = add nuw <4 x i32> %i.dj, %12
  %i.dl = mul nuw <4 x i32> %11, %10              ; 2 uses
  %i.dm = zext <4 x i32> %i.dl to <4 x i64>
  %i.dn = mul nuw nsw <4 x i64> %i.dm, splat (i64 5039)
  %i.do = lshr <4 x i64> %i.dn, splat (i64 24)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = mul <4 x i32> %i.dp, splat (i32 62207)
  %i.dr = add <4 x i32> %i.dq, %i.dl
  %i.ds = trunc <4 x i32> %i.dr to <4 x i16>      ; 2 uses
  %i.dt = add <4 x i16> %i.ds, splat (i16 -3329)  ; 2 uses
  %i.du = icmp slt <4 x i16> %i.dt, zeroinitializer
  %i.dv = select <4 x i1> %i.du, <4 x i16> %i.ds, <4 x i16> zeroinitializer
  %i.dw = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.dt, <4 x i16> zeroinitializer)
  %i.dx = or <4 x i16> %i.dv, %i.dw
  %i.dy = zext <4 x i16> %i.dx to <4 x i32>
  %i.dz = mul nuw <4 x i32> %i.dy, %i.di
  %i.ea = add <4 x i32> %i.dk, %i.dz              ; 2 uses
  %i.eb = zext <4 x i32> %i.ea to <4 x i64>
  %i.ec = mul nuw nsw <4 x i64> %i.eb, splat (i64 5039)
  %i.ed = lshr <4 x i64> %i.ec, splat (i64 24)
  %i.ee = trunc nuw nsw <4 x i64> %i.ed to <4 x i32>
  %i.ef = mul <4 x i32> %i.ee, splat (i32 62207)
  %i.eg = add <4 x i32> %i.ef, %i.ea
  %i.eh = trunc <4 x i32> %i.eg to <4 x i16>      ; 2 uses
  %i.ei = add <4 x i16> %i.eh, splat (i16 -3329)  ; 2 uses
  %i.ej = icmp slt <4 x i16> %i.ei, zeroinitializer
  %i.ek = select <4 x i1> %i.ej, <4 x i16> %i.eh, <4 x i16> zeroinitializer
  %i.el = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ei, <4 x i16> zeroinitializer)
  %i.em = or <4 x i16> %i.ek, %i.el
  %13 = zext <4 x i16> %strided.vec65 to <4 x i32>
  %i.en = mul nuw <4 x i32> %11, %8
  %i.eo = mul nuw <4 x i32> %10, %9
  %i.ep = add <4 x i32> %i.en, %i.eo
  %i.eq = add <4 x i32> %i.ep, %13                ; 2 uses
  %i.er = zext <4 x i32> %i.eq to <4 x i64>
  %i.es = mul nuw nsw <4 x i64> %i.er, splat (i64 5039)
  %i.et = lshr <4 x i64> %i.es, splat (i64 24)
  %i.eu = trunc nuw nsw <4 x i64> %i.et to <4 x i32>
  %i.ev = mul <4 x i32> %i.eu, splat (i32 62207)
  %i.ew = add <4 x i32> %i.ev, %i.eq
  %i.ex = trunc <4 x i32> %i.ew to <4 x i16>      ; 2 uses
  %i.ey = add <4 x i16> %i.ex, splat (i16 -3329)  ; 2 uses
  %i.ez = icmp slt <4 x i16> %i.ey, zeroinitializer
  %i.fa = select <4 x i1> %i.ez, <4 x i16> %i.ex, <4 x i16> zeroinitializer
  %i.fb = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ey, <4 x i16> zeroinitializer)
  %i.fc = or <4 x i16> %i.fa, %i.fb
  %interleaved.vec66 = shufflevector <4 x i16> %i.em, <4 x i16> %i.fc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec66, ptr %i.dh, align 2, !tbaa !38, !alias.scope !180, !noalias !182
  %index.next67 = add nuw i64 %index52, 4         ; 2 uses
  %i.fd = icmp eq i64 %index.next67, 128
  br i1 %i.fd, label %scalar_mult_add.exit, label %vector.body51, !llvm.loop !183

scalar.ph49:                                      ; preds = %.lr.ph, %scalar.ph49
  %.027.i = phi ptr [ %i.fn, %scalar.ph49 ], [ @kModRoots, %.lr.ph ] ; 2 uses
  %.026.i = phi ptr [ %i.fj, %scalar.ph49 ], [ %i.de, %.lr.ph ] ; 3 uses
  %.025.i = phi ptr [ %i.fi, %scalar.ph49 ], [ %i.dd, %.lr.ph ] ; 3 uses
  %.0.idx.i9 = phi i64 [ %.0.add.i11, %scalar.ph49 ], [ 0, %.lr.ph ] ; 3 uses
  %.0.ptr.i10 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx.i9 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.025.i, i64 2
  %i.ff = getelementptr inbounds nuw i8, ptr %.026.i, i64 2
  %i.fg = load i16, ptr %.026.i, align 2, !tbaa !38
  %i.fh = zext i16 %i.fg to i32                   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.fk = load i16, ptr %i.ff, align 2, !tbaa !38
  %i.fl = zext i16 %i.fk to i32                   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.ptr.i10, i64 2
  %.0.add.i11 = add nuw nsw i64 %.0.idx.i9, 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.027.i, i64 2
  %i.fo = load i16, ptr %.027.i, align 2, !tbaa !38
  %i.fp = zext i16 %i.fo to i32
  %i.fq = load i16, ptr %.0.ptr.i10, align 2, !tbaa !38
  %i.fr = zext i16 %i.fq to i32
  %i.fs = load i16, ptr %i.fm, align 2, !tbaa !38
  %i.ft = zext i16 %i.fs to i32
  %i.fu = load i16, ptr %i.fe, align 2, !tbaa !38
  %i.fv = load i16, ptr %.025.i, align 2, !tbaa !38
  %i.fw = zext i16 %i.fu to i32                   ; 2 uses
  %i.fx = zext i16 %i.fv to i32                   ; 2 uses
  %i.fy = mul nuw i32 %i.fl, %i.fw                ; 2 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = mul nuw nsw i64 %i.fz, 5039
  %i.gb = lshr i64 %i.ga, 24
  %i.gc = trunc nuw nsw i64 %i.gb to i32
  %.neg.i.i12 = mul i32 %i.gc, 62207
  %i.gd = add i32 %.neg.i.i12, %i.fy
  %i.ge = trunc i32 %i.gd to i16                  ; 2 uses
  %i.gf = add i16 %i.ge, -3329                    ; 2 uses
  %isneg.i.i.i13 = icmp slt i16 %i.gf, 0
  %i.gg = select i1 %isneg.i.i.i13, i16 %i.ge, i16 0
  %i.gh = tail call i16 @llvm.smax.i16(i16 %i.gf, i16 0)
  %i.gi = or i16 %i.gg, %i.gh
  %i.gj = zext i16 %i.gi to i32
  %i.gk = mul nuw i32 %i.gj, %i.fp
  %i.gl = mul nuw i32 %i.fl, %i.fx
  %i.gm = mul nuw i32 %i.fw, %i.fh
  %i.gn = mul nuw i32 %i.fh, %i.fx
  %i.go = add i32 %i.gl, %i.gm
  %i.gp = add nuw i32 %i.gn, %i.fr
  %i.gq = add i32 %i.go, %i.ft                    ; 2 uses
  %i.gr = add i32 %i.gp, %i.gk                    ; 2 uses
  %i.gs = zext i32 %i.gq to i64
  %i.gt = zext i32 %i.gr to i64
  %i.gu = mul nuw nsw i64 %i.gs, 5039
  %i.gv = mul nuw nsw i64 %i.gt, 5039
  %i.gw = lshr i64 %i.gu, 24
  %i.gx = lshr i64 %i.gv, 24
  %i.gy = trunc nuw nsw i64 %i.gw to i32
  %i.gz = trunc nuw nsw i64 %i.gx to i32
  %.neg.i30.i = mul i32 %i.gy, 62207
  %.neg.i28.i = mul i32 %i.gz, 62207
  %i.ha = insertelement <2 x i32> poison, i32 %.neg.i28.i, i64 0
  %i.hb = insertelement <2 x i32> %i.ha, i32 %.neg.i30.i, i64 1
  %i.hc = insertelement <2 x i32> poison, i32 %i.gr, i64 0
  %i.hd = insertelement <2 x i32> %i.hc, i32 %i.gq, i64 1
  %i.he = add <2 x i32> %i.hb, %i.hd
  %i.hf = trunc <2 x i32> %i.he to <2 x i16>      ; 2 uses
  %i.hg = add <2 x i16> %i.hf, splat (i16 -3329)  ; 2 uses
  %i.hh = icmp slt <2 x i16> %i.hg, zeroinitializer
  %i.hi = select <2 x i1> %i.hh, <2 x i16> %i.hf, <2 x i16> zeroinitializer
  %i.hj = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.hg, <2 x i16> zeroinitializer)
  %i.hk = or <2 x i16> %i.hi, %i.hj
  store <2 x i16> %i.hk, ptr %.0.ptr.i10, align 2, !tbaa !38
  %i.hl = icmp samesign ult i64 %.0.idx.i9, 508
  br i1 %i.hl, label %scalar.ph49, label %scalar_mult_add.exit, !llvm.loop !184

scalar_mult_add.exit:                             ; preds = %vector.body51, %scalar.ph49
  %i.hm = add nsw i32 %.016, -1
  %i.hn = icmp sgt i32 %.016, 2
  br i1 %i.hn, label %.lr.ph, label %scalar_mult.exit._crit_edge, !llvm.loop !185

scalar_mult.exit._crit_edge:                      ; preds = %scalar_mult_add.exit, %scalar_mult.exit.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @scalar_inverse_ntt(ptr noundef nonnull captures(address) %0) unnamed_addr #9 {
vector.memcheck:
  %i.a = ptrtoint ptr %0 to i64                   ; 12 uses
  %scevgep = getelementptr i8, ptr %0, i64 512    ; 2 uses
  %bound0 = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @kInverseNTTRoots, i64 130)
  %bound1 = icmp ugt ptr %scevgep, getelementptr inbounds nuw (i8, ptr @kInverseNTTRoots, i64 2)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.b = shl i64 %index, 3                        ; 8 uses
  %i.c = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr @kInverseNTTRoots, i64 %i.c
  %i.d = getelementptr i8, ptr %0, i64 %i.b       ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b       ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = getelementptr i8, ptr %0, i64 %i.b       ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = getelementptr i8, ptr %0, i64 %i.b       ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = getelementptr i8, ptr %0, i64 %i.b       ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 32
  %i.m = getelementptr i8, ptr %0, i64 %i.b       ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = getelementptr i8, ptr %0, i64 %i.b       ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 48
  %i.q = getelementptr i8, ptr %0, i64 %i.b       ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 56
  %i.s = getelementptr i8, ptr %i.d, i64 4
  %i.t = getelementptr i8, ptr %i.e, i64 12
  %i.u = getelementptr i8, ptr %i.g, i64 20
  %i.v = getelementptr i8, ptr %i.i, i64 28
  %i.w = getelementptr i8, ptr %i.k, i64 36
  %i.x = getelementptr i8, ptr %i.m, i64 44
  %i.y = getelementptr i8, ptr %i.o, i64 52
  %i.z = getelementptr i8, ptr %i.q, i64 60
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.aa, align 2, !tbaa !38, !alias.scope !186
  %i.ab = zext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.ac = load i16, ptr %i.d, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ad = load i16, ptr %i.f, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ae = load i16, ptr %i.h, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.af = load i16, ptr %i.j, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ag = load i16, ptr %i.l, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ah = load i16, ptr %i.n, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ai = load i16, ptr %i.p, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.aj = load i16, ptr %i.r, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ak = insertelement <8 x i16> poison, i16 %i.ac, i64 0
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 1
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 2
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 3
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 4
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 5
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 6
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 7 ; 2 uses
  %i.as = load i16, ptr %i.s, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.at = load i16, ptr %i.t, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.au = load i16, ptr %i.u, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.av = load i16, ptr %i.v, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.aw = load i16, ptr %i.w, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ax = load i16, ptr %i.x, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ay = load i16, ptr %i.y, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.az = load i16, ptr %i.z, align 2, !tbaa !38, !alias.scope !189, !noalias !186
  %i.ba = insertelement <8 x i16> poison, i16 %i.as, i64 0
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 1
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 2
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 3
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 4
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 5
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 6
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.az, i64 7 ; 2 uses
  %i.bi = zext <8 x i16> %i.ar to <8 x i32>
  %i.bj = zext <8 x i16> %i.bh to <8 x i32>
  %i.bk = add nuw nsw <8 x i32> %i.bi, splat (i32 3329)
  %i.bl = sub nsw <8 x i32> %i.bk, %i.bj
  %i.bm = mul <8 x i32> %i.bl, %i.ab              ; 2 uses
  %i.bn = zext <8 x i32> %i.bm to <8 x i64>
  %i.bo = mul nuw nsw <8 x i64> %i.bn, splat (i64 5039)
  %i.bp = lshr <8 x i64> %i.bo, splat (i64 24)
  %i.bq = trunc nuw nsw <8 x i64> %i.bp to <8 x i32>
  %i.br = mul <8 x i32> %i.bq, splat (i32 62207)
  %i.bs = add <8 x i32> %i.br, %i.bm
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>      ; 2 uses
  %i.bu = add <8 x i16> %i.bt, splat (i16 -3329)  ; 2 uses
  %i.bv = add <8 x i16> %i.bh, %i.ar              ; 2 uses
  %i.bw = add <8 x i16> %i.bv, splat (i16 -3329)  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.by = getelementptr i8, ptr %i.e, i64 10
  %i.bz = getelementptr i8, ptr %i.g, i64 18
  %i.ca = getelementptr i8, ptr %i.i, i64 26
  %i.cb = getelementptr i8, ptr %i.k, i64 34
  %i.cc = getelementptr i8, ptr %i.m, i64 42
  %i.cd = getelementptr i8, ptr %i.o, i64 50
  %i.ce = getelementptr i8, ptr %i.q, i64 58
  %i.cf = getelementptr i8, ptr %i.d, i64 6
  %i.cg = getelementptr i8, ptr %i.e, i64 14
  %i.ch = getelementptr i8, ptr %i.g, i64 22
end_hunk_2
