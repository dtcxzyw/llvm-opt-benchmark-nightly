Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ecp_nistz256?download=true
inline.NumInlined: 34
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ossl_ec_GFp_simple_dbl
declare i32 @ossl_ec_GFp_simple_dbl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_invert(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_is_at_infinity(ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_is_on_curve(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_cmp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_make_affine(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_points_make_affine(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ecp_nistz256_points_mul(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [33 x i8], align 16               ; 7 uses
  %7 = alloca %union.anon, align 32               ; 9 uses
  %8 = alloca %union.anon, align 32               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.b, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.c = add nuw nsw i64 %3, 1                    ; 3 uses
  %or.cond = icmp ugt i64 %3, 268435454
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 955, ptr noundef nonnull @__func__.ecp_nistz256_points_mul) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524550, ptr noundef null) #7
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(96) %8, i8 0, i64 96, i1 false)
  tail call void @BN_CTX_start(ptr noundef %6) #7
  %.not = icmp ne ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @EC_GROUP_get0_generator(ptr noundef %0) #7 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @__func__.ecp_nistz256_points_mul) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 113, ptr noundef null) #7
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not156 = icmp eq ptr %i.g, null
  br i1 %.not156, label %.thread177, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @EC_POINT_new(ptr noundef nonnull %0) #7 ; 9 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %8, ptr noundef %i.k, i32 noundef 1) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = call i32 @bn_set_words(ptr noundef %i.m, ptr noundef nonnull %8, i32 noundef 4) #7
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.r = call i32 @bn_set_words(ptr noundef %i.p, ptr noundef nonnull %i.q, i32 noundef 4) #7
  %.not9.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = call i32 @bn_set_words(ptr noundef %i.t, ptr noundef nonnull @ONE, i32 noundef 4) #7
  %.not10.i = icmp eq i32 %i.u, 0
  br i1 %.not10.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @EC_POINT_free(ptr noundef nonnull %i.h) #7
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 1, ptr %i.v, align 8, !tbaa !41
  %i.w = call i32 @EC_POINT_cmp(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, ptr noundef %6) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %.thread179

.thread179:                                       ; preds = %bb.l
  call void @EC_POINT_free(ptr noundef nonnull %i.h) #7
  br label %.thread177

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  call void @EC_POINT_free(ptr noundef nonnull %i.h) #7
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.thread177, label %bb.n

.thread177:                                       ; preds = %bb.f, %.thread179, %bb.m
  %i.aa = call fastcc i32 @ecp_nistz256_is_affine_G(ptr noundef %i.d)
  %.not158 = icmp eq i32 %i.aa, 0
  br i1 %.not158, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread177
  %.3.ph = phi ptr [ @ecp_nistz256_precomputed, %.thread177 ], [ %i.y, %bb.m ] ; 2 uses
  %i.ab = call i32 @BN_num_bits(ptr noundef nonnull %2) #7
  %i.ac = icmp sgt i32 %i.ab, 256
  br i1 %i.ac, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = call i32 @BN_is_negative(ptr noundef nonnull %2) #7
  %.not160 = icmp eq i32 %i.ad, 0
  br i1 %.not160, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ae = call ptr @BN_CTX_get(ptr noundef %6) #7 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.ai = call i32 @BN_nnmod(ptr noundef nonnull %i.ae, ptr noundef nonnull %2, ptr noundef %i.ah, ptr noundef %6) #7
  %.not161 = icmp eq i32 %i.ai, 0
  br i1 %.not161, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1013, ptr noundef nonnull @__func__.ecp_nistz256_points_mul) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, ptr noundef null) #7
  br label %.thread

bb.s:                                             ; preds = %bb.q, %bb.o
  %.0123 = phi ptr [ %2, %bb.o ], [ %i.ae, %bb.q ] ; 3 uses
  %i.aj = call i32 @bn_get_top(ptr noundef nonnull %.0123) #7
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %.lr.ph218.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.am = icmp samesign ult i64 %indvars.iv, 25
  br i1 %i.am, label %.lr.ph218.preheader, label %._crit_edge

.lr.ph218.preheader:                              ; preds = %bb.s, %.preheader
  %.0139.lcssa246 = phi i32 [ %i.al, %.preheader ], [ 0, %bb.s ] ; 2 uses
  %i.an = zext nneg i32 %.0139.lcssa246 to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.an
  %narrow = sub nuw nsw i32 33, %.0139.lcssa246
  %i.ao = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ao, i1 false), !tbaa !21
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.s ] ; 4 uses
  %i.ap = call ptr @bn_get_words(ptr noundef nonnull %.0123) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i64 %i.ar, ptr %i.as, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.at = call i32 @bn_get_top(ptr noundef nonnull %.0123) #7
  %i.au = shl nsw i32 %i.at, 3
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph, label %.preheader, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph218.preheader, %.preheader
  %i.ax = load i8, ptr %i.b, align 16, !tbaa !21
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = and i32 %i.az, 254                      ; 3 uses
  %i.bb = lshr i32 %i.ba, 7                       ; 2 uses
  %i.bc = sub nsw i32 0, %i.bb                    ; 2 uses
  %i.bd = xor i32 %i.ba, 255
  %i.be = and i32 %i.bd, %i.bc
  %i.bf = icmp eq i32 %i.bb, 0
  %i.bg = select i1 %i.bf, i32 %i.ba, i32 0
  %i.bh = or i32 %i.bg, %i.be                     ; 2 uses
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = sub nuw nsw i32 %i.bh, %i.bi
  %i.bk = and i32 %i.bc, 1
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %8, ptr noundef nonnull %.3.ph, i32 noundef %i.bj) #7
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm) #7
  %i.bn = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 88
  %9 = sub nsw i64 0, %i.bn
  %10 = add nsw i64 %i.bn, -1
  %11 = load <4 x i64>, ptr %i.bl, align 32, !tbaa !29
  %12 = insertelement <4 x i64> poison, i64 %9, i64 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.br = and <4 x i64> %11, %13
  %i.bs = load <4 x i64>, ptr %i.bm, align 32, !tbaa !29
  %14 = insertelement <4 x i64> poison, i64 %10, i64 0
  %i.bt = shufflevector <4 x i64> %14, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bu = and <4 x i64> %i.bt, %i.bs
  %i.bv = xor <4 x i64> %i.bu, %i.br              ; 2 uses
  store <4 x i64> %i.bv, ptr %i.bm, align 32, !tbaa !29
  %i.bw = load <4 x i64>, ptr %8, align 32, !tbaa !21
  %i.bx = shufflevector <4 x i64> %i.bv, <4 x i64> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.bx)
  %i.bz = icmp ne i64 %i.by, 0                    ; 4 uses
  %i.ca = sext i1 %i.bz to i64
  %i.cb = zext i1 %i.bz to i64
  store i64 %i.cb, ptr %i.bl, align 32, !tbaa !21
  %i.cc = select i1 %i.bz, i64 -4294967296, i64 0
  store i64 %i.cc, ptr %i.bo, align 8, !tbaa !21
  store i64 %i.ca, ptr %i.bp, align 16, !tbaa !21
  %i.cd = select i1 %i.bz, i64 4294967294, i64 0
  store i64 %i.cd, ptr %i.bq, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.t
  %indvars.iv226 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next227, %bb.t ] ; 2 uses
  %.0127220 = phi i32 [ 7, %._crit_edge ], [ %i.cr, %bb.t ] ; 2 uses
  %i.ci = add nsw i32 %.0127220, -1               ; 2 uses
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = zext i16 %i.cm to i32
  %i.co = and i32 %i.ci, 7
  %i.cp = lshr i32 %i.cn, %i.co
  %i.cq = and i32 %i.cp, 255                      ; 3 uses
  %i.cr = add nuw nsw i32 %.0127220, 7
  %i.cs = lshr i32 %i.cq, 7                       ; 2 uses
  %i.ct = sub nsw i32 0, %i.cs                    ; 2 uses
  %i.cu = xor i32 %i.cq, 255
  %i.cv = and i32 %i.cu, %i.ct
  %i.cw = icmp eq i32 %i.cs, 0
  %i.cx = select i1 %i.cw, i32 %i.cq, i32 0
  %i.cy = or i32 %i.cx, %i.cv                     ; 2 uses
  %i.cz = lshr i32 %i.cy, 1
  %i.da = sub nuw nsw i32 %i.cy, %i.cz
  %i.db = and i32 %i.ct, 1
  %i.dc = getelementptr inbounds nuw [4096 x i8], ptr %.3.ph, i64 %indvars.iv226
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %7, ptr noundef nonnull %i.dc, i32 noundef %i.da) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf) #7
  %i.dd = zext nneg i32 %i.db to i64              ; 2 uses
  %i.de = load <2 x i64>, ptr %i.ce, align 32, !tbaa !29
  %i.df = load <2 x i64>, ptr %i.cf, align 32, !tbaa !29
  %i.dg = sub nsw i64 0, %i.dd
  %i.dh = add nsw i64 %i.dd, -1
  %i.di = insertelement <2 x i64> poison, i64 %i.dg, i64 0
  %i.dj = shufflevector <2 x i64> %i.di, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = and <2 x i64> %i.de, %i.dj
  %i.dl = insertelement <2 x i64> poison, i64 %i.dh, i64 0
  %i.dm = shufflevector <2 x i64> %i.dl, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = and <2 x i64> %i.dm, %i.df
  %i.do = xor <2 x i64> %i.dn, %i.dk
  store <2 x i64> %i.do, ptr %i.cf, align 32, !tbaa !29
  %i.dp = load <2 x i64>, ptr %i.cg, align 16, !tbaa !29
  %i.dq = and <2 x i64> %i.dp, %i.dj
  %i.dr = load <2 x i64>, ptr %i.ch, align 16, !tbaa !29
  %i.ds = and <2 x i64> %i.dr, %i.dm
  %i.dt = xor <2 x i64> %i.ds, %i.dq
  store <2 x i64> %i.dt, ptr %i.ch, align 16, !tbaa !29
  call void @ecp_nistz256_point_add_affine(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %7) #7
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next227, 37
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !35

bb.u:                                             ; preds = %.thread177
  %i.du = call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 1101) #7 ; 6 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 1105) #7 ; 5 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.thread, label %.thread247

.thread247:                                       ; preds = %bb.v
  %i.dy = shl nuw nsw i64 %3, 3                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.du, ptr align 8 %5, i64 %i.dy, i1 false)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %3
  store ptr %2, ptr %i.dz, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr align 8 %4, i64 %i.dy, i1 false)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %3
  store ptr %i.d, ptr %i.ea, align 8, !tbaa !43
  br label %bb.x

.loopexit:                                        ; preds = %bb.t, %bb.c
  %.not163 = icmp eq i64 %3, 0
  br i1 %.not163, label %bb.aq, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %spec.select261 = select i1 %.not, ptr %7, ptr %8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread247
  %.not164196205259 = phi i1 [ false, %.thread247 ], [ %.not, %bb.w ]
  %.0144206258 = phi ptr [ %i.dw, %.thread247 ], [ %4, %bb.w ]
  %.0143207257 = phi ptr [ %i.du, %.thread247 ], [ %5, %bb.w ]
  %.0142208256 = phi i64 [ %i.c, %.thread247 ], [ %3, %bb.w ] ; 9 uses
  %.0130209255 = phi ptr [ %i.du, %.thread247 ], [ null, %bb.w ] ; 3 uses
  %.0128211254 = phi ptr [ %i.dw, %.thread247 ], [ null, %bb.w ] ; 3 uses
  %i.eb = phi ptr [ %8, %.thread247 ], [ %spec.select261, %bb.w ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.ec = icmp ugt i64 %.0142208256, 1398100
  br i1 %i.ec, label %ecp_nistz256_windowed_mul.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ed = shl nuw nsw i64 %.0142208256, 4
  %i.ee = or disjoint i64 %i.ed, 5
  %i.ef = call noalias ptr @CRYPTO_aligned_alloc_array(i64 noundef %i.ee, i64 noundef 96, i64 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 625) #7 ; 6 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %ecp_nistz256_windowed_mul.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = call noalias ptr @CRYPTO_malloc_array(i64 noundef range(i64 1, 0) %.0142208256, i64 noundef 33, ptr noundef nonnull @.str, i32 noundef 627) #7 ; 10 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %ecp_nistz256_windowed_mul.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = call noalias ptr @CRYPTO_malloc_array(i64 noundef range(i64 1, 0) %.0142208256, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 628) #7 ; 5 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %ecp_nistz256_windowed_mul.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.el = getelementptr inbounds nuw [1536 x i8], ptr %i.ef, i64 %.0142208256 ; 25 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 96 ; 14 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 192 ; 14 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 288 ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 384 ; 8 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.al, %bb.ab
  %.0222252.i = phi i64 [ 0, %bb.ab ], [ %i.gm, %bb.al ] ; 7 uses
  %i.et = getelementptr inbounds nuw [1536 x i8], ptr %i.ef, i64 %.0222252.i ; 16 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.0143207257, i64 %.0222252.i ; 4 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !42
  %i.ew = call i32 @BN_num_bits(ptr noundef %i.ev) #7
  %i.ex = icmp sgt i32 %i.ew, 256
  br i1 %i.ex, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !42
  %i.ez = call i32 @BN_is_negative(ptr noundef %i.ey) #7
  %.not.i171 = icmp eq i32 %i.ez, 0
  br i1 %.not.i171, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fa = call ptr @BN_CTX_get(ptr noundef %6) #7 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %ecp_nistz256_windowed_mul.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = load ptr, ptr %i.eu, align 8, !tbaa !42
  %i.fd = load ptr, ptr %i.em, align 8, !tbaa !28
  %i.fe = call i32 @BN_nnmod(ptr noundef nonnull %i.fa, ptr noundef %i.fc, ptr noundef %i.fd, ptr noundef %6) #7
  %.not238.i = icmp eq i32 %i.fe, 0
  br i1 %.not238.i, label %.thread245.sink.split.i, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.ff = load ptr, ptr %i.eu, align 8, !tbaa !42
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i = phi ptr [ %i.ff, %bb.ag ], [ %i.fa, %bb.af ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.0222252.i ; 2 uses
  store ptr %.sink.i, ptr %i.fg, align 8, !tbaa !42
  %i.fh = call i32 @bn_get_top(ptr noundef %.sink.i) #7
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i, label %.lr.ph251.i

.lr.ph.i:                                         ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw [33 x i8], ptr %i.eh, i64 %.0222252.i
  br label %bb.ai

.preheader247.i:                                  ; preds = %bb.ai
  %i.fk = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.fl = icmp samesign ult i64 %indvars.iv.i, 25
  br i1 %i.fl, label %.lr.ph251.i, label %._crit_edge.i

.lr.ph251.i:                                      ; preds = %.preheader247.i, %bb.ah
  %.0229.lcssa274.i = phi i32 [ %i.fk, %.preheader247.i ], [ 0, %bb.ah ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [33 x i8], ptr %i.eh, i64 %.0222252.i
  %i.fn = zext nneg i32 %.0229.lcssa274.i to i64
  %scevgep.i = getelementptr i8, ptr %i.fm, i64 %i.fn
  %narrow.i = sub nuw nsw i32 33, %.0229.lcssa274.i
  %i.fo = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.fo, i1 false), !tbaa !21
  br label %._crit_edge.i

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i
  %i.fp = phi ptr [ %.sink.i, %.lr.ph.i ], [ %i.fu, %bb.ai ]
end_hunk_0
