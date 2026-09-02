Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_dsa_sign?download=true
inline.NumInlined: 106
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ossl_ml_dsa_sign:bb.a
  %i.aj = mul i64 %i.ac, 3
  %i.ak = and i64 %i.aj, 4294967295               ; 2 uses
  %i.al = mul i64 %i.ac, %i.aa
  %i.am = and i64 %i.al, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !32
  %i.ap = ashr i32 %i.ao, 2                       ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %.not.i = icmp eq i64 %.029, 64
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @__func__.ml_dsa_sign_internal) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 142, ptr noundef null) #5
  br label %ml_dsa_sign_internal.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = shl i64 %i.aa, 1
  %i.as = and i64 %i.ar, 4294967294
  %i.at = icmp eq i32 %i.ag, 95232
  %i.au = select i1 %i.at, i64 192, i64 128
  %i.av = mul i64 %i.au, %i.aa
  %i.aw = and i64 %i.av, 4294967232               ; 4 uses
  %i.ax = add nuw nsw i64 %i.ai, 1
  %i.ay = add nuw nsw i64 %i.ax, %i.as
  %i.az = add nuw nsw i64 %i.ay, %i.ak
  %i.ba = add nuw nsw i64 %i.az, %i.am
  %i.bb = shl nuw nsw i64 %i.ba, 10
  %i.bc = add nuw nsw i64 %i.aw, %i.bb            ; 2 uses
  %i.bd = call noalias ptr @CRYPTO_malloc(i64 noundef %i.bc, ptr noundef nonnull @.str, i32 noundef 197) #5 ; 5 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %ml_dsa_sign_internal.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = call ptr @EVP_MD_CTX_new() #5           ; 14 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %shake_xof_3.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.aw ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1024 ; 2 uses
  %i.bj = and i64 %i.aa, 4294967295               ; 16 uses
  %i.bk = and i64 %i.ac, 4294967295               ; 12 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !35
  store ptr %i.bi, ptr %15, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw [1024 x i8], ptr %i.bi, i64 %i.am ; 5 uses
  %i.bo = getelementptr inbounds nuw [1024 x i8], ptr %i.bn, i64 %i.bj ; 5 uses
  %i.bp = getelementptr inbounds nuw [1024 x i8], ptr %i.bo, i64 %i.bj ; 2 uses
  store ptr %i.bp, ptr %12, align 8, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 %i.bj, ptr %i.bq, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw [1024 x i8], ptr %i.bp, i64 %i.bj ; 2 uses
  store ptr %i.br, ptr %13, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  store i64 %i.bj, ptr %i.bs, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw [1024 x i8], ptr %i.br, i64 %i.bj ; 4 uses
  %i.bu = getelementptr inbounds nuw [1024 x i8], ptr %i.bn, i64 %i.ai ; 6 uses
  %i.bv = getelementptr inbounds nuw [1024 x i8], ptr %i.bu, i64 %i.bk ; 3 uses
  %i.bw = shl i64 %i.ac, 1
  %i.bx = and i64 %i.bw, 4294967294
  %i.by = getelementptr inbounds nuw [1024 x i8], ptr %i.bu, i64 %i.bx
  store ptr %i.by, ptr %14, align 8, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  store i64 %i.bk, ptr %i.bz, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw [1024 x i8], ptr %i.bu, i64 %i.ak ; 3 uses
  %i.cb = getelementptr inbounds nuw [1024 x i8], ptr %i.ca, i64 %i.bj ; 3 uses
  store ptr %i.cb, ptr %16, align 8, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.bk, ptr %i.cc, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  store i64 %i.bj, ptr %i.ce, align 8, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.c, ptr %i.cf, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 %i.aq, ptr %i.cg, align 8, !tbaa !41
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ck = call i32 @ossl_ml_dsa_matrix_expand_A(ptr noundef nonnull %i.bf, ptr noundef %i.ci, ptr noundef nonnull %i.cj, ptr noundef nonnull %15) #5
  %.not133.i = icmp eq i32 %i.ck, 0
  br i1 %.not133.i, label %shake_xof_3.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !24
  %i.cn = call i32 @EVP_DigestInit_ex2(ptr noundef nonnull %i.bf, ptr noundef %i.cm, ptr noundef null) #5
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %shake_xof_3.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cp = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.co, i64 noundef 32) #5
  %.not13.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not13.i.i, label %shake_xof_3.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.bf, ptr noundef %6, i64 noundef %7) #5
  %.not14.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not14.i.i, label %shake_xof_3.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.bf, ptr noundef %.030, i64 noundef 64) #5
  %.not15.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not15.i.i, label %shake_xof_3.exit.thread.i, label %shake_xof_3.exit.i

shake_xof_3.exit.i:                               ; preds = %bb.r
  %i.cs = call i32 @EVP_DigestSqueeze(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.b, i64 noundef 64) #5
  %.not308.i = icmp eq i32 %i.cs, 0
  br i1 %.not308.i, label %shake_xof_3.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %shake_xof_3.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val148.i = load ptr, ptr %i.ct, align 8, !tbaa !37
  %i.cu = getelementptr i8, ptr %0, i64 248
  %.val149.i = load i64, ptr %i.cu, align 8, !tbaa !38
  %i.cv = shl i64 %.val149.i, 10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr readonly align 4 %.val148.i, i64 %i.cv, i1 false)
  %.not.i167.i = icmp eq i64 %i.bk, 0             ; 5 uses
  br i1 %.not.i167.i, label %vector_ntt.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %.04.i.i = phi i64 [ %i.cx, %.lr.ph.i.i ], [ 0, %bb.s ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [1024 x i8], ptr %i.bu, i64 %.04.i.i
  call void @ossl_ml_dsa_poly_ntt(ptr noundef nonnull %i.cw) #5
  %i.cx = add nuw nsw i64 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cx, %i.bk
  br i1 %exitcond.not.i, label %vector_ntt.exit.i, label %.lr.ph.i.i, !llvm.loop !0

vector_ntt.exit.i:                                ; preds = %.lr.ph.i.i, %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val145.i = load ptr, ptr %i.cy, align 8, !tbaa !37
  %i.cz = getelementptr i8, ptr %0, i64 232
  %.val146.i = load i64, ptr %i.cz, align 8, !tbaa !38
  %i.da = shl i64 %.val146.i, 10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bn, ptr readonly align 4 %.val145.i, i64 %i.da, i1 false)
  %.not.i168.i = icmp eq i64 %i.bj, 0             ; 3 uses
  br i1 %.not.i168.i, label %vector_ntt.exit171.thread.i, label %.lr.ph.i169.i

vector_ntt.exit171.thread.i:                      ; preds = %vector_ntt.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val142301.i = load ptr, ptr %i.db, align 8, !tbaa !37
  %i.dc = getelementptr i8, ptr %0, i64 216
  %.val143302.i = load i64, ptr %i.dc, align 8, !tbaa !38
  %i.dd = shl i64 %.val143302.i, 10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr readonly align 4 %.val142301.i, i64 %i.dd, i1 false)
  br label %vector_ntt.exit175.i

.lr.ph.i169.i:                                    ; preds = %vector_ntt.exit.i, %.lr.ph.i169.i
  %.04.i170.i = phi i64 [ %i.df, %.lr.ph.i169.i ], [ 0, %vector_ntt.exit.i ] ; 2 uses
  %i.de = getelementptr inbounds nuw [1024 x i8], ptr %i.bn, i64 %.04.i170.i
  call void @ossl_ml_dsa_poly_ntt(ptr noundef nonnull %i.de) #5
  %i.df = add nuw nsw i64 %.04.i170.i, 1          ; 2 uses
  %exitcond316.not.i = icmp eq i64 %i.df, %i.bj
  br i1 %exitcond316.not.i, label %vector_ntt.exit171.i, label %.lr.ph.i169.i, !llvm.loop !0

vector_ntt.exit171.i:                             ; preds = %.lr.ph.i169.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val142.i = load ptr, ptr %i.dg, align 8, !tbaa !37
  %i.dh = getelementptr i8, ptr %0, i64 216
  %.val143.i = load i64, ptr %i.dh, align 8, !tbaa !38
  %i.di = shl i64 %.val143.i, 10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr readonly align 4 %.val142.i, i64 %i.di, i1 false)
  br label %.lr.ph.i173.i

.lr.ph.i173.i:                                    ; preds = %.lr.ph.i173.i, %vector_ntt.exit171.i
  %.04.i174.i = phi i64 [ %i.dk, %.lr.ph.i173.i ], [ 0, %vector_ntt.exit171.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [1024 x i8], ptr %i.bo, i64 %.04.i174.i
  call void @ossl_ml_dsa_poly_ntt(ptr noundef nonnull %i.dj) #5
  %i.dk = add nuw nsw i64 %.04.i174.i, 1          ; 2 uses
  %exitcond317.not.i = icmp eq i64 %i.dk, %i.bj
  br i1 %exitcond317.not.i, label %vector_ntt.exit175.i, label %.lr.ph.i173.i, !llvm.loop !0

vector_ntt.exit175.i:                             ; preds = %.lr.ph.i173.i, %vector_ntt.exit171.thread.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.dm = shl nuw nsw i64 %i.bk, 10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.dp = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  br label %bb.t

bb.t:                                             ; preds = %bb.ai, %vector_ntt.exit175.i
  %i.dq = phi ptr [ %i.ca, %vector_ntt.exit175.i ], [ %i.rk, %bb.ai ] ; 2 uses
  %i.dr = phi i64 [ %i.bj, %vector_ntt.exit175.i ], [ %i.rl, %bb.ai ] ; 3 uses
  %.0127.i = phi i64 [ 0, %vector_ntt.exit175.i ], [ %i.rm, %bb.ai ] ; 2 uses
  %i.ds = load ptr, ptr %i.cl, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  br i1 %.not.i167.i, label %vector_expand_mask.exit.i, label %.lr.ph.i177.i.a

.lr.ph.i177.i.a:                                  ; preds = %bb.t, %.lr.ph.i177.i.a
  %.012.i.i = phi i64 [ %i.dv, %.lr.ph.i177.i.a ], [ 0, %bb.t ] ; 3 uses
  %17 = add i64 %.012.i.i, %.0127.i
  %18 = trunc i64 %17 to i16
  store i16 %18, ptr %i.dl, align 16
  %i.dt = getelementptr inbounds nuw [1024 x i8], ptr %i.bv, i64 %.012.i.i
  %i.du = call i32 @ossl_ml_dsa_poly_expand_mask(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.a, i64 noundef 66, i32 noundef %i.ae, ptr noundef nonnull %i.bf, ptr noundef %i.ds) #5 ; 0 uses
  %i.dv = add nuw nsw i64 %.012.i.i, 1            ; 2 uses
  %exitcond318.not.i = icmp eq i64 %i.dv, %i.bk
  br i1 %exitcond318.not.i, label %vector_expand_mask.exit.i, label %.lr.ph.i177.i.a, !llvm.loop !51

vector_expand_mask.exit.i:                        ; preds = %.lr.ph.i177.i.a, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.val.i = load ptr, ptr %14, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.val.i, ptr nonnull readonly align 4 %i.bv, i64 %i.dm, i1 false)
  %i.dw = load i64, ptr %i.bz, align 8, !tbaa !38
  %.not.i178.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i178.i, label %vector_ntt.exit181.i, label %.lr.ph.i179.i

.lr.ph.i179.i:                                    ; preds = %vector_expand_mask.exit.i, %.lr.ph.i179.i
  %.04.i180.i = phi i64 [ %i.dz, %.lr.ph.i179.i ], [ 0, %vector_expand_mask.exit.i ] ; 2 uses
  %i.dx = load ptr, ptr %14, align 8, !tbaa !37
  %i.dy = getelementptr inbounds nuw [1024 x i8], ptr %i.dx, i64 %.04.i180.i
  call void @ossl_ml_dsa_poly_ntt(ptr noundef %i.dy) #5
  %i.dz = add nuw i64 %.04.i180.i, 1              ; 2 uses
  %i.ea = load i64, ptr %i.bz, align 8, !tbaa !38
  %i.eb = icmp ult i64 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph.i179.i, label %vector_ntt.exit181.i, !llvm.loop !0

vector_ntt.exit181.i:                             ; preds = %.lr.ph.i179.i, %vector_expand_mask.exit.i
  call void @ossl_ml_dsa_matrix_mult_vector(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %12) #5
  %i.ec = load i64, ptr %i.bq, align 8, !tbaa !38
  %.not.i182.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i182.i, label %vector_ntt_inverse.exit.i, label %.lr.ph.i183.i

.lr.ph.i183.i:                                    ; preds = %vector_ntt.exit181.i, %.lr.ph.i183.i
  %.04.i184.i = phi i64 [ %i.ef, %.lr.ph.i183.i ], [ 0, %vector_ntt.exit181.i ] ; 2 uses
  %i.ed = load ptr, ptr %12, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw [1024 x i8], ptr %i.ed, i64 %.04.i184.i
  call void @ossl_ml_dsa_poly_ntt_inverse(ptr noundef %i.ee) #5
  %i.ef = add nuw i64 %.04.i184.i, 1              ; 2 uses
  %i.eg = load i64, ptr %i.bq, align 8, !tbaa !38
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph.i183.i, label %vector_ntt_inverse.exit.i, !llvm.loop !1

vector_ntt_inverse.exit.i:                        ; preds = %.lr.ph.i183.i, %vector_ntt.exit181.i
  %i.ei = load i64, ptr %i.bs, align 8, !tbaa !38
  %.not.i185.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i185.i, label %vector_high_bits.exit.i, label %.lr.ph.i186.i

.lr.ph.i186.i:                                    ; preds = %vector_ntt_inverse.exit.i, %poly_high_bits.exit.i.i
  %.07.i.i = phi i64 [ %i.er, %poly_high_bits.exit.i.i ], [ 0, %vector_ntt_inverse.exit.i ] ; 3 uses
  %i.ej = load ptr, ptr %12, align 8, !tbaa !37
  %i.ek = getelementptr inbounds nuw [1024 x i8], ptr %i.ej, i64 %.07.i.i
  %i.el = load ptr, ptr %13, align 8, !tbaa !37
  %i.em = getelementptr inbounds nuw [1024 x i8], ptr %i.el, i64 %.07.i.i
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i186.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i186.i ], [ %indvars.iv.next.i.i.i, %bb.u ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !44
  %i.ep = call i32 @ossl_ml_dsa_key_compress_high_bits(i32 noundef %i.eo, i32 noundef %i.ag) #5
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.i.i.i
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !44
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 256
  br i1 %exitcond.not.i.i.i, label %poly_high_bits.exit.i.i, label %bb.u, !llvm.loop !52

poly_high_bits.exit.i.i:                          ; preds = %bb.u
  %i.er = add nuw i64 %.07.i.i, 1                 ; 2 uses
  %i.es = load i64, ptr %i.bs, align 8, !tbaa !38
  %i.et = icmp ult i64 %i.er, %i.es
  br i1 %i.et, label %.lr.ph.i186.i, label %vector_high_bits.exit.i, !llvm.loop !53

vector_high_bits.exit.i:                          ; preds = %poly_high_bits.exit.i.i, %vector_ntt_inverse.exit.i
  %i.eu = call i32 @ossl_ml_dsa_w1_encode(ptr noundef nonnull %13, i32 noundef %i.ag, ptr noundef nonnull %i.bd, i64 noundef %i.aw) #5 ; 0 uses
  %i.ev = load ptr, ptr %i.cl, align 8, !tbaa !24
  %i.ew = call i32 @EVP_DigestInit_ex2(ptr noundef nonnull %i.bf, ptr noundef %i.ev, ptr noundef null) #5
  %.not.i187.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i187.i, label %shake_xof_3.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %vector_high_bits.exit.i
  %i.ex = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.bf, ptr noundef %.030, i64 noundef 64) #5
  %.not10.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not10.i.i, label %shake_xof_3.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bd, i64 noundef range(i64 0, 4294967296) %i.aw) #5
  %.not11.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not11.i.i, label %shake_xof_3.exit.thread.i, label %shake_xof_2.exit.i

shake_xof_2.exit.i:                               ; preds = %bb.w
  %i.ez = call i32 @EVP_DigestSqueeze(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.c, i64 noundef range(i64 -536870912, 536870912) %i.aq) #5
  %.not309.i = icmp eq i32 %i.ez, 0
  br i1 %.not309.i, label %shake_xof_3.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %shake_xof_2.exit.i
  %i.fa = load ptr, ptr %i.cl, align 8, !tbaa !24
  %i.fb = load i32, ptr %i.dn, align 4, !tbaa !45
  %i.fc = call i32 @ossl_ml_dsa_poly_sample_in_ball(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.c, i32 noundef range(i32 -536870912, 536870912) %i.ap, ptr noundef nonnull %i.bf, ptr noundef %i.fa, i32 noundef %i.fb) #5
  %.not.i188.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i188.i, label %shake_xof_3.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ossl_ml_dsa_poly_ntt(ptr noundef nonnull %i.bh) #5
  br i1 %.not.i167.i, label %vector_mult_scalar.exit.i, label %.lr.ph.i190.i

.lr.ph.i190.i:                                    ; preds = %bb.y, %.lr.ph.i190.i
  %.07.i191.i = phi i64 [ %i.fg, %.lr.ph.i190.i ], [ 0, %bb.y ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [1024 x i8], ptr %i.bu, i64 %.07.i191.i
  %i.fe = load ptr, ptr %14, align 8, !tbaa !37
  %i.ff = getelementptr inbounds nuw [1024 x i8], ptr %i.fe, i64 %.07.i191.i
  call void @ossl_ml_dsa_poly_ntt_mult(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.bh, ptr noundef %i.ff) #5
  %i.fg = add nuw nsw i64 %.07.i191.i, 1          ; 2 uses
  %exitcond319.not.i = icmp eq i64 %i.fg, %i.bk
  br i1 %exitcond319.not.i, label %vector_mult_scalar.exit.i, label %.lr.ph.i190.i, !llvm.loop !2

vector_mult_scalar.exit.i:                        ; preds = %.lr.ph.i190.i, %bb.y
  %i.fh = load i64, ptr %i.bz, align 8, !tbaa !38
  %.not.i192.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i192.i, label %vector_ntt_inverse.exit195.i, label %.lr.ph.i193.i

.lr.ph.i193.i:                                    ; preds = %vector_mult_scalar.exit.i, %.lr.ph.i193.i
  %.04.i194.i = phi i64 [ %i.fk, %.lr.ph.i193.i ], [ 0, %vector_mult_scalar.exit.i ] ; 2 uses
  %i.fi = load ptr, ptr %14, align 8, !tbaa !37
  %i.fj = getelementptr inbounds nuw [1024 x i8], ptr %i.fi, i64 %.04.i194.i
  call void @ossl_ml_dsa_poly_ntt_inverse(ptr noundef %i.fj) #5
  %i.fk = add nuw i64 %.04.i194.i, 1              ; 2 uses
  %i.fl = load i64, ptr %i.bz, align 8, !tbaa !38
  %i.fm = icmp ult i64 %i.fk, %i.fl
  br i1 %i.fm, label %.lr.ph.i193.i, label %vector_ntt_inverse.exit195.i, !llvm.loop !1

vector_ntt_inverse.exit195.i:                     ; preds = %.lr.ph.i193.i, %vector_mult_scalar.exit.i
  br i1 %.not.i168.i, label %vector_ntt_inverse.exit203.i, label %.lr.ph.i197.i

.lr.ph.i197.i:                                    ; preds = %vector_ntt_inverse.exit195.i, %.lr.ph.i197.i
  %.07.i198.i = phi i64 [ %i.fp, %.lr.ph.i197.i ], [ 0, %vector_ntt_inverse.exit195.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [1024 x i8], ptr %i.bn, i64 %.07.i198.i
  %i.fo = getelementptr inbounds nuw [1024 x i8], ptr %i.bt, i64 %.07.i198.i
  call void @ossl_ml_dsa_poly_ntt_mult(ptr noundef nonnull %i.fn, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.fo) #5
  %i.fp = add nuw nsw i64 %.07.i198.i, 1          ; 2 uses
  %exitcond320.not.i = icmp eq i64 %i.fp, %i.bj
  br i1 %exitcond320.not.i, label %.lr.ph.i201.i, label %.lr.ph.i197.i, !llvm.loop !2

.lr.ph.i201.i:                                    ; preds = %.lr.ph.i197.i, %.lr.ph.i201.i
  %.04.i202.i = phi i64 [ %i.fr, %.lr.ph.i201.i ], [ 0, %.lr.ph.i197.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [1024 x i8], ptr %i.bt, i64 %.04.i202.i
  call void @ossl_ml_dsa_poly_ntt_inverse(ptr noundef nonnull %i.fq) #5
  %i.fr = add nuw nsw i64 %.04.i202.i, 1          ; 2 uses
  %exitcond321.not.i = icmp eq i64 %i.fr, %i.bj
  br i1 %exitcond321.not.i, label %vector_ntt_inverse.exit203.i, label %.lr.ph.i201.i, !llvm.loop !1

vector_ntt_inverse.exit203.i:                     ; preds = %.lr.ph.i201.i, %vector_ntt_inverse.exit195.i
  %.val152.i = load ptr, ptr %14, align 8
  br i1 %.not.i167.i, label %vector_add.exit.i, label %.lr.ph.i205.i

.lr.ph.i205.i:                                    ; preds = %vector_ntt_inverse.exit203.i, %poly_add.exit.i.i
  %.05.i.i = phi i64 [ %i.gk, %poly_add.exit.i.i ], [ 0, %vector_ntt_inverse.exit203.i ] ; 4 uses
  %i.fs = getelementptr inbounds nuw [1024 x i8], ptr %i.bv, i64 %.05.i.i
  %i.ft = getelementptr inbounds nuw [1024 x i8], ptr %.val152.i, i64 %.05.i.i
  %i.fu = getelementptr inbounds nuw [1024 x i8], ptr %i.cb, i64 %.05.i.i
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i205.i
  %indvars.iv.i.i206.i = phi i64 [ 0, %.lr.ph.i205.i ], [ %indvars.iv.next.i.i207.i, %bb.z ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.i.i206.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !44
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.i.i206.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !44
  %i.fz = add i32 %i.fy, %i.fw                    ; 3 uses
  %i.ga = add i32 %i.fz, -8380417                 ; 2 uses
  %i.gb = xor i32 %i.fz, -1
  %i.gc = and i32 %i.ga, %i.gb
  %.neg.i.i.i.i.i.i = ashr i32 %i.gc, 31          ; 2 uses
  %i.gd = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i.i.i) #6, !srcloc !46
  %i.ge = and i32 %i.gd, %i.fz
  %i.gf = xor i32 %.neg.i.i.i.i.i.i, -1
  %i.gg = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gf) #6, !srcloc !46
  %i.gh = and i32 %i.gg, %i.ga
  %i.gi = or i32 %i.gh, %i.ge
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i.i206.i
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !44
  %indvars.iv.next.i.i207.i = add nuw nsw i64 %indvars.iv.i.i206.i, 1 ; 2 uses
  %exitcond.not.i.i208.i = icmp eq i64 %indvars.iv.next.i.i207.i, 256
  br i1 %exitcond.not.i.i208.i, label %poly_add.exit.i.i, label %bb.z, !llvm.loop !54

poly_add.exit.i.i:                                ; preds = %bb.z
  %i.gk = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gk, %i.bk
  br i1 %exitcond.not.i.i, label %vector_add.exit.i, label %.lr.ph.i205.i, !llvm.loop !55

vector_add.exit.i:                                ; preds = %poly_add.exit.i.i, %vector_ntt_inverse.exit203.i
  %.val154.i = load ptr, ptr %12, align 8
  %.val155.i = load i64, ptr %i.bq, align 8       ; 2 uses
  %.val157.i = load ptr, ptr %13, align 8
  %.not.i209.i = icmp eq i64 %.val155.i, 0
  br i1 %.not.i209.i, label %vector_sub.exit.i, label %.lr.ph.i210.i

.lr.ph.i210.i:                                    ; preds = %vector_add.exit.i, %poly_sub.exit.i.i
  %.05.i211.i = phi i64 [ %i.he, %poly_sub.exit.i.i ], [ 0, %vector_add.exit.i ] ; 4 uses
  %i.gl = getelementptr inbounds nuw [1024 x i8], ptr %.val154.i, i64 %.05.i211.i
  %i.gm = getelementptr inbounds nuw [1024 x i8], ptr %i.bt, i64 %.05.i211.i
  %i.gn = getelementptr inbounds nuw [1024 x i8], ptr %.val157.i, i64 %.05.i211.i
  br label %bb.aa
end_hunk_0
