inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@aes_gcm_siv_cipher:bb.a
  %4 = alloca %union.anon.0, align 16             ; 7 uses
  %i.e = alloca [2 x i64], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 12 uses
  %i.g = alloca [16 x i8], align 16               ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = icmp eq ptr %2, null
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8               ; 3 uses
  %i.l = and i8 %i.k, 1
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i8 %i.k, 2
  %i.n = and i8 %i.m, 1
  %i.o = zext nneg i8 %i.n to i32
  br label %aes_gcm_siv_finish.exit

bb.d:                                             ; preds = %bb.b
  %i.p = and i8 %i.k, 4
  %.not9.i = icmp eq i8 %i.p, 0
  br i1 %.not9.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call fastcc i32 @aes_gcm_siv_decrypt(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, i64 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i64 noundef 16) #6
  %.not10.i = icmp eq i32 %i.t, 0
  %i.u = load i8, ptr %i.j, align 8
  %i.v = lshr i8 %i.u, 1
  %i.w = and i8 %i.v, 1
  %i.x = zext nneg i8 %i.w to i32
  %i.y = select i1 %.not10.i, i32 %i.x, i32 0
  br label %aes_gcm_siv_finish.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %1, null
  br i1 %i.z, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq i64 %3, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  tail call void @CRYPTO_free(ptr noundef %i.ac, ptr noundef nonnull @.str.3, i32 noundef 119) #6
  store ptr null, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !24
  br label %aes_gcm_siv_finish.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ag = add i64 %3, 15
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, -16                      ; 4 uses
  %i.aj = icmp ugt i64 %i.ai, 68719476736
  br i1 %i.aj, label %aes_gcm_siv_finish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23
  %i.am = tail call ptr @CRYPTO_realloc(ptr noundef %i.al, i64 noundef %i.ai, ptr noundef nonnull @.str.3, i32 noundef 129) #6 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %aes_gcm_siv_finish.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !23
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %2, i64 %3, i1 false)
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ar = add i64 %i.aq, %3                       ; 4 uses
  store i64 %i.ar, ptr %i.ae, align 8, !tbaa !24
  %i.as = icmp ugt i64 %i.ai, %i.ar
  br i1 %i.as, label %bb.m, label %aes_gcm_siv_finish.exit

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  %i.av = sub nuw nsw i64 %i.ai, %i.ar
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 0, i64 %i.av, i1 false)
  br label %aes_gcm_siv_finish.exit

bb.n:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 8             ; 3 uses
  %i.ay = and i8 %i.ax, 1
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.az = and i8 %i.ax, -5
  store i8 %i.az, ptr %i.aw, align 8
  %i.ba = and i8 %i.ax, 40
  %or.cond.not55.i = icmp eq i8 %i.ba, 8
  %i.bb = icmp sgt i64 %3, 68719476736
  %or.cond52.i = or i1 %i.bb, %or.cond.not55.i
  br i1 %or.cond52.i, label %aes_gcm_siv_encrypt.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !24
  %i.be = shl i64 %i.bd, 3
  store i64 %i.be, ptr %i.e, align 16, !tbaa !25
  %i.bf = shl i64 %3, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @ossl_polyval_ghash_init(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi) #6
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %.not47.i = icmp eq ptr %i.bk, null
  br i1 %.not47.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load i64, ptr %i.bc, align 8, !tbaa !24
  %i.bm = add i64 %i.bl, 15
  %i.bn = and i64 %i.bm, -16
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bk, i64 noundef %i.bn) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bo = and i64 %3, -16                         ; 3 uses
  %.not48.i = icmp eq i64 %i.bo, 0
  br i1 %.not48.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.f, ptr noundef nonnull %2, i64 noundef %i.bo) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bp = and i64 %3, 15                          ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  %i.bs = sub nuw nsw i64 16, %i.bp
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i8 0, i64 %i.bs, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull align 1 %i.br, i64 %i.bp, i1 false)
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef 16) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 16) #6
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bv = load <8 x i8>, ptr %i.bu, align 8, !tbaa !19
  %i.bw = load <8 x i8>, ptr %i.f, align 16, !tbaa !19
  %i.bx = xor <8 x i8> %i.bw, %i.bv
  store <8 x i8> %i.bx, ptr %i.f, align 16, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ca = load <4 x i8>, ptr %i.by, align 8, !tbaa !19
  %i.cb = load <4 x i8>, ptr %i.bz, align 8, !tbaa !19
  %i.cc = xor <4 x i8> %i.cb, %i.ca
  store <4 x i8> %i.cc, ptr %i.bz, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 15 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19
  %i.cf = and i8 %i.ce, 127
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !19
  store i32 16, ptr %i.h, align 4, !tbaa !20
  %i.cg = load ptr, ptr %0, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ci = call i32 @EVP_EncryptUpdate(ptr noundef %i.cg, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i32 noundef 16) #6
  %.not49.i = icmp eq i32 %i.ci, 0                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %4, ptr noundef nonnull align 8 dereferenceable(15) %i.ch, i64 15, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 151
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.cj = or i8 %.sroa.4.0.copyload.i, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %.sroa.4.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %4, i64 15
  store i8 %i.cj, ptr %.sroa.4.0..sroa_idx53.i, align 1
  %.not29.i.i = icmp eq i64 %3, 0
  br i1 %.not29.i.i, label %aes_gcm_siv_ctr32.exit.i, label %iter.check.preheader

iter.check.preheader:                             ; preds = %bb.v
  %i.ck = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ck, -16
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.i.i ], [ %3, %iter.check.preheader ] ; 6 uses
  %.025.i.i = phi i32 [ %i.ea, %._crit_edge.i.i ], [ 0, %iter.check.preheader ]
  %.02024.i.i = phi i64 [ %i.eb, %._crit_edge.i.i ], [ 0, %iter.check.preheader ] ; 7 uses
  %umax35 = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umin36 = call i64 @llvm.umin.i64(i64 %umax35, i64 16) ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umin = call i64 @llvm.umin.i64(i64 %umax, i64 16) ; 5 uses
  %i.cl = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax.i.i = call i64 @llvm.umin.i64(i64 %i.cl, i64 16)
  store i32 16, ptr %i.d, align 4, !tbaa !20
  %i.cm = load ptr, ptr %0, align 8, !tbaa !18
  %i.cn = call i32 @EVP_EncryptUpdate(ptr noundef %i.cm, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %4, i32 noundef 16) #6
  %i.co = load i32, ptr %4, align 16, !tbaa !19
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %4, align 16, !tbaa !19
  %min.iters.check = icmp ult i64 %indvars.iv.i.i, 4
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %indvars.iv.i.i, 16
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %umin, 16                      ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.02024.i.i
  %wide.load = load <16 x i8>, ptr %i.cq, align 1, !tbaa !19
  %wide.load30 = load <16 x i8>, ptr %i.c, align 16, !tbaa !19
  %i.cr = xor <16 x i8> %wide.load30, %wide.load
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %.02024.i.i
  store <16 x i8> %i.cr, ptr %i.cs, align 1, !tbaa !19
  %cmp.n = icmp eq i64 %umin, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.ct = and i64 %umin, 12
  %min.epilog.iters.check = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %umin, 28                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.cu = add nuw nsw i64 %index, %.02024.i.i     ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu
  %wide.load32 = load <4 x i8>, ptr %i.cv, align 1, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %wide.load33 = load <4 x i8>, ptr %i.cw, align 4, !tbaa !19
  %i.cx = xor <4 x i8> %wide.load33, %wide.load32
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu
  store <4 x i8> %i.cx, ptr %i.cy, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec31
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %umin, %n.vec31
  br i1 %cmp.n34, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01923.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.01923.i.i.ph, 1
  %xtraiter = and i64 %umin36, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.da = add nuw nsw i64 %.01923.i.i.ph, %.02024.i.i ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01923.i.i.ph
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !19
  %i.df = xor i8 %i.de, %i.dc
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !19
  %i.dh = or disjoint i64 %.01923.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01923.i.i.unr = phi i64 [ %.01923.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.prol ]
  %i.di = icmp eq i64 %umin36, %.neg
  br i1 %i.di, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01923.i.i = phi i64 [ %i.dy, %.lr.ph.i.i ], [ %.01923.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.dj = add nuw nsw i64 %.01923.i.i, %.02024.i.i ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01923.i.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !19
  %i.do = xor i8 %i.dn, %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.dj
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !19
  %i.dq = add nuw nsw i64 %.01923.i.i, 1          ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, %.02024.i.i      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dq
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !19
  %i.dw = xor i8 %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %i.dr
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !19
  %i.dy = add nuw nsw i64 %.01923.i.i, 2          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.dy, %umax.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !30

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %vector.ph
  %.not22.i.i = icmp eq i32 %i.cn, 0
  %i.dz = zext i1 %.not22.i.i to i32
  %i.ea = or i32 %.025.i.i, %i.dz                 ; 2 uses
  %i.eb = add i64 %.02024.i.i, 16                 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %3
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -16
  br i1 %i.ec, label %iter.check, label %._crit_edge28.loopexit.i.i, !llvm.loop !31

._crit_edge28.loopexit.i.i:                       ; preds = %._crit_edge.i.i
  %i.ed = icmp ne i32 %i.ea, 0
  %i.ee = or i1 %.not49.i, %i.ed
  br label %aes_gcm_siv_ctr32.exit.i

aes_gcm_siv_ctr32.exit.i:                         ; preds = %._crit_edge28.loopexit.i.i, %bb.v
  %.0.lcssa.i.in.i = phi i1 [ %.not49.i, %bb.v ], [ %i.ee, %._crit_edge28.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.ef = xor i1 %.0.lcssa.i.in.i, true
  %i.eg = zext i1 %i.ef to i32
  %i.eh = load i8, ptr %i.aw, align 8
  %i.ei = and i8 %i.eh, -13
  %i.ej = select i1 %.0.lcssa.i.in.i, i8 8, i8 12
  %i.ek = or disjoint i8 %i.ei, %i.ej
  store i8 %i.ek, ptr %i.aw, align 8
  br label %aes_gcm_siv_encrypt.exit

aes_gcm_siv_encrypt.exit:                         ; preds = %bb.o, %aes_gcm_siv_ctr32.exit.i
  %.041.i = phi i32 [ 0, %bb.o ], [ %i.eg, %aes_gcm_siv_ctr32.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %aes_gcm_siv_finish.exit

bb.w:                                             ; preds = %bb.n
  %i.el = tail call fastcc i32 @aes_gcm_siv_decrypt(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %3)
  br label %aes_gcm_siv_finish.exit

aes_gcm_siv_finish.exit:                          ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.c, %bb.w, %aes_gcm_siv_encrypt.exit
  %.0 = phi i32 [ %i.el, %bb.w ], [ %i.y, %bb.f ], [ %.041.i, %aes_gcm_siv_encrypt.exit ], [ %i.o, %bb.c ], [ 1, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ], [ 1, %bb.m ], [ 1, %bb.l ]
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

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @aes_gcm_siv_decrypt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %union.anon.0, align 16             ; 7 uses
  %i.e = alloca [2 x i64], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 12 uses
  %i.g = alloca [2 x i64], align 16               ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8               ; 2 uses
  %i.k = and i8 %i.j, -5
  store i8 %i.k, ptr %i.i, align 8
  %i.l = and i8 %i.j, 48
  %or.cond.not55 = icmp eq i8 %i.l, 16
  %i.m = icmp sgt i64 %3, 68719476736
  %or.cond52 = or i1 %i.m, %or.cond.not55
  br i1 %or.cond52, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %4, ptr noundef nonnull align 8 dereferenceable(15) %i.n, i64 15, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 167
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.o = or i8 %.sroa.4.0.copyload, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %.sroa.4.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %4, i64 15
  store i8 %i.o, ptr %.sroa.4.0..sroa_idx53, align 1
  %.not29.i = icmp eq i64 %3, 0
  br i1 %.not29.i, label %aes_gcm_siv_ctr32.exit, label %iter.check.preheader

iter.check.preheader:                             ; preds = %bb.b
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -16
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %3, %iter.check.preheader ] ; 6 uses
  %.025.i = phi i32 [ %i.bf, %._crit_edge.i ], [ 0, %iter.check.preheader ]
  %.02024.i = phi i64 [ %i.bg, %._crit_edge.i ], [ 0, %iter.check.preheader ] ; 7 uses
  %umax67 = call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 1)
  %umin68 = call i64 @llvm.umin.i64(i64 %umax67, i64 16) ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 1)
  %umin = call i64 @llvm.umin.i64(i64 %umax, i64 16) ; 5 uses
  %i.q = call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 1)
  %umax.i = call i64 @llvm.umin.i64(i64 %i.q, i64 16)
  store i32 16, ptr %i.d, align 4, !tbaa !20
  %i.r = load ptr, ptr %0, align 8, !tbaa !18
  %i.s = call i32 @EVP_EncryptUpdate(ptr noundef %i.r, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %4, i32 noundef 16) #6
  %i.t = load i32, ptr %4, align 16, !tbaa !19
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %4, align 16, !tbaa !19
  %min.iters.check = icmp ult i64 %indvars.iv.i, 4
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check61 = icmp ult i64 %indvars.iv.i, 16
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %umin, 16                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.02024.i
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !19
  %wide.load62 = load <16 x i8>, ptr %i.c, align 16, !tbaa !19
  %i.w = xor <16 x i8> %wide.load62, %wide.load
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.02024.i
  store <16 x i8> %i.w, ptr %i.x, align 1, !tbaa !19
  %cmp.n = icmp eq i64 %umin, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.y = and i64 %umin, 12
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec63 = and i64 %umin, 28                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.z = add nuw nsw i64 %index, %.02024.i        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %wide.load64 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %wide.load65 = load <4 x i8>, ptr %i.ab, align 4, !tbaa !19
  %i.ac = xor <4 x i8> %wide.load65, %wide.load64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.z
  store <4 x i8> %i.ac, ptr %i.ad, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec63
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %umin, %n.vec63
  br i1 %cmp.n66, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01923.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec63, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.01923.i.ph, 1
  %xtraiter = and i64 %umin68, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.af = add nuw nsw i64 %.01923.i.ph, %.02024.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01923.i.ph
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !19
  %i.ak = xor i8 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %i.af
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !19
  %i.am = or disjoint i64 %.01923.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.01923.i.unr = phi i64 [ %.01923.i.ph, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %i.an = icmp eq i64 %umin68, %.neg
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01923.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %.01923.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ao = add nuw nsw i64 %.01923.i, %.02024.i    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01923.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = xor i8 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %i.ao
  store i8 %i.at, ptr %i.au, align 1, !tbaa !19
  %i.av = add nuw nsw i64 %.01923.i, 1            ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, %.02024.i        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19
  %i.bb = xor i8 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !19
  %i.bd = add nuw nsw i64 %.01923.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bd, %umax.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %vector.ph
  %.not22.i = icmp eq i32 %i.s, 0
  %i.be = zext i1 %.not22.i to i32
  %i.bf = or i32 %.025.i, %i.be                   ; 2 uses
  %i.bg = add i64 %.02024.i, 16                   ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %3
  %indvars.iv.next.i = add i64 %indvars.iv.i, -16
  br i1 %i.bh, label %iter.check, label %._crit_edge28.loopexit.i, !llvm.loop !31

._crit_edge28.loopexit.i:                         ; preds = %._crit_edge.i
  %i.bi = icmp ne i32 %i.bf, 0
  %i.bj = zext i1 %i.bi to i32
  br label %aes_gcm_siv_ctr32.exit

aes_gcm_siv_ctr32.exit:                           ; preds = %bb.b, %._crit_edge28.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.bj, %._crit_edge28.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !24
  %i.bm = shl i64 %i.bl, 3
  store i64 %i.bm, ptr %i.e, align 16, !tbaa !25
  %i.bn = shl i64 %3, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @ossl_polyval_ghash_init(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bq) #6
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !23 ; 2 uses
  %.not48 = icmp eq ptr %i.bs, null
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %aes_gcm_siv_ctr32.exit
  %i.bt = load i64, ptr %i.bk, align 8, !tbaa !24
  %i.bu = add i64 %i.bt, 15
  %i.bv = and i64 %i.bu, -16
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bs, i64 noundef %i.bv) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %aes_gcm_siv_ctr32.exit
  %i.bw = and i64 %3, -16                         ; 3 uses
  %.not49 = icmp eq i64 %i.bw, 0
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.f, ptr noundef %2, i64 noundef %i.bw) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bx = and i64 %3, 15                          ; 4 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw
  %i.ca = sub nuw nsw i64 16, %i.bx
  %i.cb = getelementptr i8, ptr %i.g, i64 %i.bx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cb, i8 0, i64 %i.ca, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 1 %i.bz, i64 %i.bx, i1 false)
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef 16) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 16) #6
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cd = load <8 x i8>, ptr %i.cc, align 8, !tbaa !19
  %i.ce = load <8 x i8>, ptr %i.f, align 16, !tbaa !19
  %i.cf = xor <8 x i8> %i.ce, %i.cd
  store <8 x i8> %i.cf, ptr %i.f, align 16, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ci = load <4 x i8>, ptr %i.cg, align 8, !tbaa !19
  %i.cj = load <4 x i8>, ptr %i.ch, align 8, !tbaa !19
  %i.ck = xor <4 x i8> %i.cj, %i.ci
  store <4 x i8> %i.ck, ptr %i.ch, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 15 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !19
  %i.cn = and i8 %i.cm, 127
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !19
  store i32 16, ptr %i.h, align 4, !tbaa !20
  %i.co = load ptr, ptr %0, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cq = call i32 @EVP_EncryptUpdate(ptr noundef %i.co, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i32 noundef 16) #6
  %.not50 = icmp eq i32 %i.cq, 0
  %i.cr = zext i1 %.not50 to i32
  %i.cs = or i32 %.0.lcssa.i, %i.cr
  %i.ct = xor i32 %i.cs, 1                        ; 2 uses
  %i.cu = trunc nuw nsw i32 %i.ct to i8
  %i.cv = load i8, ptr %i.i, align 8
  %i.cw = shl nuw nsw i8 %i.cu, 2
  %i.cx = and i8 %i.cv, -21
  %i.cy = or disjoint i8 %i.cw, %i.cx
  %i.cz = or i8 %i.cy, 16
  store i8 %i.cz, ptr %i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.041 = phi i32 [ 0, %bb.a ], [ %i.ct, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  ret i32 %.041
}

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !16, i64 48}
!9 = !{!"prov_aes_gcm_siv_ctx_st", !10, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !15, i64 32, !16, i64 40, !16, i64 48, !6, i64 56, !6, i64 88, !6, i64 120, !6, i64 136, !6, i64 152, !6, i64 168, !6, i64 184, !5, i64 440, !5, i64 440, !5, i64 440, !5, i64 440, !5, i64 440, !5, i64 440}
!10 = !{!"p1 _ZTS17evp_cipher_ctx_st", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS29prov_cipher_hw_aes_gcm_siv_st", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!15 = !{!"p1 _ZTS16ossl_provider_st", !11, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!9, !14, i64 24}
!18 = !{!9, !10, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!9, !13, i64 16}
!24 = !{!9, !16, i64 40}
!25 = !{!16, !16, i64 0}
!26 = !{!"branch_weights", i32 4, i32 12}
!27 = distinct !{!27, !22, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !22, !28}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22, !28, !29}
!33 = distinct !{!33, !22, !28}
end_hunk_0
