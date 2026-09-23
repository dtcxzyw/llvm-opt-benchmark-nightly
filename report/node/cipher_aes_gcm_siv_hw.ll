Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cipher_aes_gcm_siv_hw?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@aes_gcm_siv_initkey:bb.a
  %i.ao = load ptr, ptr %0, align 8, !tbaa !18
  call void @EVP_CIPHER_CTX_free(ptr noundef %i.ao) #6
  call void @EVP_CIPHER_free(ptr noundef %.1) #6
  store ptr null, ptr %0, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k
  %.039 = phi i32 [ 0, %.loopexit ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_gcm_siv_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %union.anon.0, align 16             ; 7 uses
  %i.e = alloca [2 x i64], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 12 uses
  %i.g = alloca [2 x i64], align 16               ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 8 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %5 = alloca %union.anon.0, align 16             ; 7 uses
  %i.k = alloca [2 x i64], align 16               ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 12 uses
  %i.m = alloca [16 x i8], align 16               ; 5 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = icmp eq ptr %2, null
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8               ; 2 uses
  %i.r = and i8 %i.q, 1
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = lshr i8 %i.q, 2
  %i.t = and i8 %i.s, 1
  %i.u = zext nneg i8 %i.t to i32
  br label %aes_gcm_siv_finish.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef 16) #6
  %.not7.i = icmp eq i32 %i.x, 0
  %i.y = load i8, ptr %i.p, align 8
  %i.z = lshr i8 %i.y, 1
  %i.aa = and i8 %i.z, 1
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = select i1 %.not7.i, i32 %i.ab, i32 0
  br label %aes_gcm_siv_finish.exit

bb.e:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %1, null
  br i1 %i.ad, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i64 %3, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  tail call void @CRYPTO_free(ptr noundef %i.ag, ptr noundef nonnull @.str.3, i32 noundef 116) #6
  store ptr null, ptr %i.af, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !31
  br label %aes_gcm_siv_finish.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31
  %i.ak = add i64 %3, 15
  %i.al = add i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, -16                      ; 4 uses
  %i.an = icmp ugt i64 %i.am, 68719476736
  br i1 %i.an, label %aes_gcm_siv_finish.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = tail call ptr @CRYPTO_realloc(ptr noundef %i.ap, i64 noundef %i.am, ptr noundef nonnull @.str.3, i32 noundef 126) #6 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %aes_gcm_siv_finish.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !30
  %i.as = load i64, ptr %i.ai, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %2, i64 %3, i1 false)
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !31
  %i.av = add i64 %i.au, %3                       ; 4 uses
  store i64 %i.av, ptr %i.ai, align 8, !tbaa !31
  %i.aw = icmp ugt i64 %i.am, %i.av
  br i1 %i.aw, label %bb.k, label %aes_gcm_siv_finish.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  %i.az = sub nuw nsw i64 %i.am, %i.av
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.az, i1 false)
  br label %aes_gcm_siv_finish.exit

bb.l:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 7 uses
  %i.bb = load i8, ptr %i.ba, align 8             ; 5 uses
  %i.bc = and i8 %i.bb, 1
  %.not = icmp eq i8 %i.bc, 0
  %i.bd = icmp sgt i64 %3, 68719476736            ; 2 uses
  br i1 %.not, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  %i.be = and i8 %i.bb, -5
  store i8 %i.be, ptr %i.ba, align 8
  %i.bf = and i8 %i.bb, 40
  %or.cond.not55.i = icmp eq i8 %i.bf, 8
  %or.cond52.i = or i1 %i.bd, %or.cond.not55.i
  br i1 %or.cond52.i, label %aes_gcm_siv_encrypt.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !31
  %i.bi = shl i64 %i.bh, 3
  store i64 %i.bi, ptr %i.k, align 16, !tbaa !32
  %i.bj = shl i64 %3, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @ossl_polyval_ghash_init(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm) #6
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30 ; 2 uses
  %.not47.i = icmp eq ptr %i.bo, null
  br i1 %.not47.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load i64, ptr %i.bg, align 8, !tbaa !31
  %i.bq = add i64 %i.bp, 15
  %i.br = and i64 %i.bq, -16
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.l, ptr noundef nonnull %i.bo, i64 noundef %i.br) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = and i64 %3, -16                         ; 3 uses
  %.not48.i = icmp eq i64 %i.bs, 0
  br i1 %.not48.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.l, ptr noundef nonnull %2, i64 noundef %i.bs) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = and i64 %3, 15                          ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %i.bs
  %i.bw = sub nuw nsw i64 16, %i.bt
  %i.bx = getelementptr i8, ptr %i.m, i64 %i.bt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, i8 0, i64 %i.bw, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.m, ptr nonnull align 1 %i.bv, i64 %i.bt, i1 false)
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef 16) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i64 noundef 16) #6
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bz = load <8 x i8>, ptr %i.by, align 8, !tbaa !19
  %i.ca = load <8 x i8>, ptr %i.l, align 16, !tbaa !19
  %i.cb = xor <8 x i8> %i.ca, %i.bz
  store <8 x i8> %i.cb, ptr %i.l, align 16, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ce = load <4 x i8>, ptr %i.cc, align 8, !tbaa !19
  %i.cf = load <4 x i8>, ptr %i.cd, align 8, !tbaa !19
  %i.cg = xor <4 x i8> %i.cf, %i.ce
  store <4 x i8> %i.cg, ptr %i.cd, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 15 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !19
  %i.cj = and i8 %i.ci, 127
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !19
  store i32 16, ptr %i.n, align 4, !tbaa !20
  %i.ck = load ptr, ptr %0, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cm = call i32 @EVP_EncryptUpdate(ptr noundef %i.ck, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, i32 noundef 16) #6
  %.not49.i = icmp eq i32 %i.cm, 0                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %5, ptr noundef nonnull align 8 dereferenceable(15) %i.cl, i64 15, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 151
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.cn = or i8 %.sroa.4.0.copyload.i, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %.sroa.4.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %5, i64 15
  store i8 %i.cn, ptr %.sroa.4.0..sroa_idx53.i, align 1
  %.not29.i.i = icmp eq i64 %3, 0
  br i1 %.not29.i.i, label %aes_gcm_siv_ctr32.exit.i, label %iter.check.preheader

iter.check.preheader:                             ; preds = %bb.t
  %i.co = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.co, -16
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.i.i ], [ %3, %iter.check.preheader ] ; 4 uses
  %.025.i.i = phi i32 [ %i.ee, %._crit_edge.i.i ], [ 0, %iter.check.preheader ]
  %.02024.i.i = phi i64 [ %i.ef, %._crit_edge.i.i ], [ 0, %iter.check.preheader ] ; 7 uses
  %i.cp = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax.i.i = call i64 @llvm.umin.i64(i64 %i.cp, i64 16) ; 8 uses
  store i32 16, ptr %i.j, align 4, !tbaa !20
  %i.cq = load ptr, ptr %0, align 8, !tbaa !18
  %i.cr = call i32 @EVP_EncryptUpdate(ptr noundef %i.cq, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %5, i32 noundef 16) #6
  %i.cs = load i32, ptr %5, align 16, !tbaa !19
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %5, align 16, !tbaa !19
  %min.iters.check = icmp ult i64 %indvars.iv.i.i, 4
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %indvars.iv.i.i, 16
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %umax.i.i, 16                  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %.02024.i.i
  %wide.load = load <16 x i8>, ptr %i.cu, align 1, !tbaa !19
  %wide.load60 = load <16 x i8>, ptr %i.i, align 16, !tbaa !19
  %i.cv = xor <16 x i8> %wide.load60, %wide.load
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.02024.i.i
  store <16 x i8> %i.cv, ptr %i.cw, align 1, !tbaa !19
  %cmp.n = icmp eq i64 %umax.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.cx = and i64 %umax.i.i, 12
  %min.epilog.iters.check = icmp eq i64 %i.cx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %umax.i.i, 28                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.cy = add nuw nsw i64 %index, %.02024.i.i     ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy
  %wide.load62 = load <4 x i8>, ptr %i.cz, align 1, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 %index
  %wide.load63 = load <4 x i8>, ptr %i.da, align 4, !tbaa !19
  %i.db = xor <4 x i8> %wide.load63, %wide.load62
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cy
  store <4 x i8> %i.db, ptr %i.dc, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec61
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %umax.i.i, %n.vec61
  br i1 %cmp.n64, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01923.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.01923.i.i.ph, 1
  %xtraiter = and i64 %umax.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.de = add nuw nsw i64 %.01923.i.i.ph, %.02024.i.i ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 %.01923.i.i.ph
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !19
  %i.dj = xor i8 %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !19
  %i.dl = or disjoint i64 %.01923.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01923.i.i.unr = phi i64 [ %.01923.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.dl, %.lr.ph.i.i.prol ]
  %i.dm = icmp eq i64 %umax.i.i, %.neg
  br i1 %i.dm, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01923.i.i = phi i64 [ %i.ec, %.lr.ph.i.i ], [ %.01923.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.dn = add nuw nsw i64 %.01923.i.i, %.02024.i.i ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 %.01923.i.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !19
  %i.ds = xor i8 %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.dn
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !19
  %i.du = add nuw nsw i64 %.01923.i.i, 1          ; 2 uses
  %i.dv = add nuw nsw i64 %i.du, %.02024.i.i      ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.du
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !19
  %i.ea = xor i8 %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !19
  %i.ec = add nuw nsw i64 %.01923.i.i, 2          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ec, %umax.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !26

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %vector.ph
  %.not22.i.i = icmp eq i32 %i.cr, 0
  %i.ed = zext i1 %.not22.i.i to i32
  %i.ee = or i32 %.025.i.i, %i.ed                 ; 2 uses
  %i.ef = add i64 %.02024.i.i, 16                 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %3
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -16
  br i1 %i.eg, label %iter.check, label %._crit_edge28.loopexit.i.i, !llvm.loop !27

._crit_edge28.loopexit.i.i:                       ; preds = %._crit_edge.i.i
  %6 = icmp ne i32 %i.ee, 0
  %7 = or i1 %.not49.i, %6
  br label %aes_gcm_siv_ctr32.exit.i

aes_gcm_siv_ctr32.exit.i:                         ; preds = %._crit_edge28.loopexit.i.i, %bb.t
  %.0.lcssa.i.in.i = phi i1 [ %.not49.i, %bb.t ], [ %7, %._crit_edge28.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  %8 = xor i1 %.0.lcssa.i.in.i, true
  %9 = zext i1 %8 to i32
  %i.eh = load i8, ptr %i.ba, align 8
  %i.ei = and i8 %i.eh, -13
  %10 = select i1 %.0.lcssa.i.in.i, i8 8, i8 12
  %i.ej = or disjoint i8 %i.ei, %10
  store i8 %i.ej, ptr %i.ba, align 8
  br label %aes_gcm_siv_encrypt.exit

aes_gcm_siv_encrypt.exit:                         ; preds = %bb.m, %aes_gcm_siv_ctr32.exit.i
  %.041.i = phi i32 [ 0, %bb.m ], [ %9, %aes_gcm_siv_ctr32.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  br label %aes_gcm_siv_finish.exit

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.ek = and i8 %i.bb, -6
  store i8 %i.ek, ptr %i.ba, align 8
  %i.el = and i8 %i.bb, 48
  %or.cond.not55.i19 = icmp eq i8 %i.el, 16
  %or.cond52.i20 = or i1 %i.bd, %or.cond.not55.i19
  br i1 %or.cond52.i20, label %aes_gcm_siv_decrypt.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %4, ptr noundef nonnull align 8 dereferenceable(15) %i.em, i64 15, i1 false)
  %.sroa.4.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 167
  %.sroa.4.0.copyload.i22 = load i8, ptr %.sroa.4.0..sroa_idx.i21, align 1
  %i.en = or i8 %.sroa.4.0.copyload.i22, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %.sroa.4.0..sroa_idx53.i23 = getelementptr inbounds nuw i8, ptr %4, i64 15
  store i8 %i.en, ptr %.sroa.4.0..sroa_idx53.i23, align 1
  %.not29.i.i24 = icmp eq i64 %3, 0
  br i1 %.not29.i.i24, label %aes_gcm_siv_ctr32.exit.i37, label %iter.check78.preheader

iter.check78.preheader:                           ; preds = %bb.v
  %i.eo = sub i64 %i.a, %i.b
  %diff.check66 = icmp ugt i64 %i.eo, -16
  br label %iter.check78

iter.check78:                                     ; preds = %iter.check78.preheader, %._crit_edge.i.i33
  %indvars.iv.i.i26 = phi i64 [ %indvars.iv.next.i.i35, %._crit_edge.i.i33 ], [ %3, %iter.check78.preheader ] ; 4 uses
  %.025.i.i27 = phi i32 [ %i.ge, %._crit_edge.i.i33 ], [ 0, %iter.check78.preheader ]
  %.02024.i.i28 = phi i64 [ %i.gf, %._crit_edge.i.i33 ], [ 0, %iter.check78.preheader ] ; 7 uses
  %i.ep = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i26, i64 1)
  %umax.i.i29 = call i64 @llvm.umin.i64(i64 %i.ep, i64 16) ; 8 uses
  store i32 16, ptr %i.d, align 4, !tbaa !20
  %i.eq = load ptr, ptr %0, align 8, !tbaa !18
  %i.er = call i32 @EVP_EncryptUpdate(ptr noundef %i.eq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %4, i32 noundef 16) #6
  %i.es = load i32, ptr %4, align 16, !tbaa !19
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %4, align 16, !tbaa !19
  %min.iters.check67 = icmp ult i64 %indvars.iv.i.i26, 4
  %or.cond92 = or i1 %min.iters.check67, %diff.check66
  br i1 %or.cond92, label %.lr.ph.i.i30.preheader, label %vector.main.loop.iter.check68

vector.main.loop.iter.check68:                    ; preds = %iter.check78
  %min.iters.check69 = icmp ult i64 %indvars.iv.i.i26, 16
  br i1 %min.iters.check69, label %vec.epilog.ph82, label %vector.ph70

vector.ph70:                                      ; preds = %vector.main.loop.iter.check68
  %n.vec71 = and i64 %umax.i.i29, 16              ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %.02024.i.i28
  %wide.load73 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !19
  %wide.load74 = load <16 x i8>, ptr %i.c, align 16, !tbaa !19
  %i.ev = xor <16 x i8> %wide.load74, %wide.load73
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %.02024.i.i28
  store <16 x i8> %i.ev, ptr %i.ew, align 1, !tbaa !19
  %cmp.n76 = icmp eq i64 %umax.i.i29, %n.vec71
  br i1 %cmp.n76, label %._crit_edge.i.i33, label %vec.epilog.iter.check80

vec.epilog.iter.check80:                          ; preds = %vector.ph70
  %i.ex = and i64 %umax.i.i29, 12
  %min.epilog.iters.check81 = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check81, label %.lr.ph.i.i30.preheader, label %vec.epilog.ph82, !prof !33

vec.epilog.ph82:                                  ; preds = %vector.main.loop.iter.check68, %vec.epilog.iter.check80
  %vec.epilog.resume.val77 = phi i64 [ %n.vec71, %vec.epilog.iter.check80 ], [ 0, %vector.main.loop.iter.check68 ]
  %n.vec83 = and i64 %umax.i.i29, 28              ; 3 uses
  br label %vec.epilog.vector.body84

vec.epilog.vector.body84:                         ; preds = %vec.epilog.vector.body84, %vec.epilog.ph82
  %index85 = phi i64 [ %vec.epilog.resume.val77, %vec.epilog.ph82 ], [ %index.next88, %vec.epilog.vector.body84 ] ; 3 uses
  %i.ey = add nuw nsw i64 %index85, %.02024.i.i28 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey
  %wide.load86 = load <4 x i8>, ptr %i.ez, align 1, !tbaa !19
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 %index85
  %wide.load87 = load <4 x i8>, ptr %i.fa, align 4, !tbaa !19
  %i.fb = xor <4 x i8> %wide.load87, %wide.load86
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey
  store <4 x i8> %i.fb, ptr %i.fc, align 1, !tbaa !19
  %index.next88 = add nuw i64 %index85, 4         ; 2 uses
  %i.fd = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.fd, label %vec.epilog.middle.block89, label %vec.epilog.vector.body84, !llvm.loop !28

vec.epilog.middle.block89:                        ; preds = %vec.epilog.vector.body84
  %cmp.n90 = icmp eq i64 %umax.i.i29, %n.vec83
  br i1 %cmp.n90, label %._crit_edge.i.i33, label %.lr.ph.i.i30.preheader

.lr.ph.i.i30.preheader:                           ; preds = %iter.check78, %vec.epilog.iter.check80, %vec.epilog.middle.block89
  %.01923.i.i31.ph = phi i64 [ 0, %iter.check78 ], [ %n.vec71, %vec.epilog.iter.check80 ], [ %n.vec83, %vec.epilog.middle.block89 ] ; 5 uses
  %.neg96 = or disjoint i64 %.01923.i.i31.ph, 1
  %xtraiter94 = and i64 %umax.i.i29, 1
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph.i.i30.prol.loopexit, label %.lr.ph.i.i30.prol

.lr.ph.i.i30.prol:                                ; preds = %.lr.ph.i.i30.preheader
  %i.fe = add nuw nsw i64 %.01923.i.i31.ph, %.02024.i.i28 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !19
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01923.i.i31.ph
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !19
  %i.fj = xor i8 %i.fi, %i.fg
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !19
  %i.fl = or disjoint i64 %.01923.i.i31.ph, 1
  br label %.lr.ph.i.i30.prol.loopexit

.lr.ph.i.i30.prol.loopexit:                       ; preds = %.lr.ph.i.i30.prol, %.lr.ph.i.i30.preheader
  %.01923.i.i31.unr = phi i64 [ %.01923.i.i31.ph, %.lr.ph.i.i30.preheader ], [ %i.fl, %.lr.ph.i.i30.prol ]
  %i.fm = icmp eq i64 %umax.i.i29, %.neg96
  br i1 %i.fm, label %._crit_edge.i.i33, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30.prol.loopexit, %.lr.ph.i.i30
  %.01923.i.i31 = phi i64 [ %i.gc, %.lr.ph.i.i30 ], [ %.01923.i.i31.unr, %.lr.ph.i.i30.prol.loopexit ] ; 4 uses
  %i.fn = add nuw nsw i64 %.01923.i.i31, %.02024.i.i28 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01923.i.i31
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !19
  %i.fs = xor i8 %i.fr, %i.fp
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %i.fn
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !19
  %i.fu = add nuw nsw i64 %.01923.i.i31, 1        ; 2 uses
  %i.fv = add nuw nsw i64 %i.fu, %.02024.i.i28    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !19
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fu
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !19
  %i.ga = xor i8 %i.fz, %i.fx
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %i.fv
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !19
  %i.gc = add nuw nsw i64 %.01923.i.i31, 2        ; 2 uses
  %exitcond.not.i.i32.1 = icmp eq i64 %i.gc, %umax.i.i29
  br i1 %exitcond.not.i.i32.1, label %._crit_edge.i.i33, label %.lr.ph.i.i30, !llvm.loop !29

._crit_edge.i.i33:                                ; preds = %.lr.ph.i.i30.prol.loopexit, %.lr.ph.i.i30, %vec.epilog.middle.block89, %vector.ph70
  %.not22.i.i34 = icmp eq i32 %i.er, 0
  %i.gd = zext i1 %.not22.i.i34 to i32
  %i.ge = or i32 %.025.i.i27, %i.gd               ; 2 uses
  %i.gf = add i64 %.02024.i.i28, 16               ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %3
  %indvars.iv.next.i.i35 = add i64 %indvars.iv.i.i26, -16
  br i1 %i.gg, label %iter.check78, label %._crit_edge28.loopexit.i.i36, !llvm.loop !27

._crit_edge28.loopexit.i.i36:                     ; preds = %._crit_edge.i.i33
  %11 = icmp ne i32 %i.ge, 0
  %12 = zext i1 %11 to i32
  br label %aes_gcm_siv_ctr32.exit.i37

aes_gcm_siv_ctr32.exit.i37:                       ; preds = %._crit_edge28.loopexit.i.i36, %bb.v
  %.0.lcssa.i.i.a = phi i32 [ 0, %bb.v ], [ %12, %._crit_edge28.loopexit.i.i36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !31
  %i.gj = shl i64 %i.gi, 3
  store i64 %i.gj, ptr %i.e, align 16, !tbaa !32
  %i.gk = shl i64 %3, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @ossl_polyval_ghash_init(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gn) #6
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !30 ; 2 uses
  %.not48.i38 = icmp eq ptr %i.gp, null
  br i1 %.not48.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %aes_gcm_siv_ctr32.exit.i37
  %i.gq = load i64, ptr %i.gh, align 8, !tbaa !31
  %i.gr = add i64 %i.gq, 15
  %i.gs = and i64 %i.gr, -16
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.f, ptr noundef nonnull %i.gp, i64 noundef %i.gs) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %aes_gcm_siv_ctr32.exit.i37
  %i.gt = and i64 %3, -16                         ; 3 uses
  %.not49.i39 = icmp eq i64 %i.gt, 0
  br i1 %.not49.i39, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.f, ptr noundef nonnull %1, i64 noundef %i.gt) #6
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gu = and i64 %3, 15                          ; 4 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 %i.gt
  %i.gx = sub nuw nsw i64 16, %i.gu
  %i.gy = getelementptr i8, ptr %i.g, i64 %i.gu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gy, i8 0, i64 %i.gx, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull align 1 %i.gw, i64 %i.gu, i1 false)
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef 16) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 16) #6
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ha = load <8 x i8>, ptr %i.gz, align 8, !tbaa !19
  %i.hb = load <8 x i8>, ptr %i.f, align 16, !tbaa !19
  %i.hc = xor <8 x i8> %i.hb, %i.ha
  store <8 x i8> %i.hc, ptr %i.f, align 16, !tbaa !19
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.hf = load <4 x i8>, ptr %i.hd, align 8, !tbaa !19
  %i.hg = load <4 x i8>, ptr %i.he, align 8, !tbaa !19
  %i.hh = xor <4 x i8> %i.hg, %i.hf
  store <4 x i8> %i.hh, ptr %i.he, align 8, !tbaa !19
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 15 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !19
  %i.hk = and i8 %i.hj, 127
  store i8 %i.hk, ptr %i.hi, align 1, !tbaa !19
  store i32 16, ptr %i.h, align 4, !tbaa !20
  %i.hl = load ptr, ptr %0, align 8, !tbaa !18
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hn = call i32 @EVP_EncryptUpdate(ptr noundef %i.hl, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i32 noundef 16) #6
  %.not50.i = icmp eq i32 %i.hn, 0
  %i.ho = zext i1 %.not50.i to i32
  %i.hp = or i32 %.0.lcssa.i.i.a, %i.ho
  %i.hq = xor i32 %i.hp, 1                        ; 2 uses
  %i.hr = trunc nuw nsw i32 %i.hq to i8
  %i.hs = load i8, ptr %i.ba, align 8
  %i.ht = shl nuw nsw i8 %i.hr, 2
  %i.hu = and i8 %i.hs, -21
  %i.hv = or disjoint i8 %i.ht, %i.hu
  %i.hw = or i8 %i.hv, 16
  store i8 %i.hw, ptr %i.ba, align 8
  br label %aes_gcm_siv_decrypt.exit

aes_gcm_siv_decrypt.exit:                         ; preds = %bb.u, %bb.ab
  %.041.i40 = phi i32 [ 0, %bb.u ], [ %i.hq, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %aes_gcm_siv_finish.exit

aes_gcm_siv_finish.exit:                          ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %aes_gcm_siv_decrypt.exit, %aes_gcm_siv_encrypt.exit
  %.0 = phi i32 [ %.041.i40, %aes_gcm_siv_decrypt.exit ], [ %i.ac, %bb.d ], [ %.041.i, %aes_gcm_siv_encrypt.exit ], [ %i.u, %bb.c ], [ 1, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ 1, %bb.k ], [ 1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_gcm_siv_dup_ctx(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !18
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_CIPHER_CTX_new() #6   ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !18
  %i.e = tail call i32 @EVP_CIPHER_CTX_copy(ptr noundef nonnull %i.b, ptr noundef %i.d) #6
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.f = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.b ]
  tail call void @EVP_CIPHER_CTX_free(ptr noundef %i.f) #6
  store ptr null, ptr %0, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @aes_gcm_siv_clean_ctx(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @EVP_CIPHER_CTX_free(ptr noundef %i.a) #6
  store ptr null, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare i32 @EVP_EncryptInit_ex2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @EVP_EncryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_CTX_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ossl_polyval_ghash_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ossl_polyval_ghash_hash(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS17evp_cipher_ctx_st", !10, i64 0}
!12 = !{!"p1 _ZTS29prov_cipher_hw_aes_gcm_siv_st", !10, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"p1 _ZTS15ossl_lib_ctx_st", !10, i64 0}
!15 = !{!"p1 _ZTS16ossl_provider_st", !10, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"prov_aes_gcm_siv_ctx_st", !11, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !15, i64 32, !16, i64 40, !16, i64 48, !6, i64 56, !6, i64 88, !6, i64 120, !6, i64 136, !6, i64 152, !6, i64 168, !6, i64 184, !7, i64 440, !7, i64 440, !7, i64 440, !7, i64 440, !7, i64 440, !7, i64 440}
!18 = !{!17, !11, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!17, !16, i64 48}
!24 = !{!17, !14, i64 24}
!25 = distinct !{!25, !21, !34, !35}
!26 = distinct !{!26, !21, !34}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21, !34, !35}
!29 = distinct !{!29, !21, !34}
!30 = !{!17, !13, i64 16}
!31 = !{!17, !16, i64 40}
!32 = !{!16, !16, i64 0}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
