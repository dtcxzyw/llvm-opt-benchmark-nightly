inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@cipher_generic_init_internal:bb.a

ossl_cipher_generic_initiv.exit:                  ; preds = %bb.d
  %i.p = load i8, ptr %i.c, align 4
  %i.q = or i8 %i.p, 4
  store i8 %i.q, ptr %i.c, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull readonly align 1 %3, i64 %4, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.s = load i8, ptr %i.c, align 4
  %i.t = and i8 %i.s, 4
  %.not37 = icmp eq i8 %i.t, 0
  br i1 %.not37, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !23
  %.off = add i32 %i.v, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i64, ptr %i.x, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %0, i64 %i.y, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %ossl_cipher_generic_initiv.exit, %bb.f, %bb.g, %bb.e
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i8, ptr %i.c, align 4
  %i.aa = and i8 %i.z, 32
  %i.ab = icmp eq i8 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %.not39 = icmp eq i64 %2, %i.ad
  br i1 %.not39, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 216, ptr noundef nonnull @__func__.cipher_generic_init_internal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 105, ptr noundef null) #5
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  store i64 %2, ptr %i.ac, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #5
  %.not40 = icmp eq i32 %i.ah, 0
  br i1 %.not40, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i8, ptr %i.c, align 4
  %i.aj = or i8 %i.ai, 8
  store i8 %i.aj, ptr %i.c, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %i.ak = tail call i32 @ossl_cipher_generic_set_ctx_params(ptr noundef nonnull %0, ptr noundef %5)
  br label %bb.p

bb.p:                                             ; preds = %ossl_cipher_generic_initiv.exit.thread, %bb.m, %bb.a, %bb.o, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ %i.ak, %bb.o ], [ 0, %ossl_cipher_generic_initiv.exit.thread ], [ 0, %bb.a ], [ 0, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_dinit(ptr noundef initializes((96, 104), (160, 164)) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @cipher_generic_init_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_skey_einit(ptr noundef initializes((96, 104), (160, 164)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  %i.e = tail call fastcc i32 @cipher_generic_init_internal(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.d, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef 1)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_skey_dinit(ptr noundef initializes((96, 104), (160, 164)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  %i.e = tail call fastcc i32 @cipher_generic_init_internal(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.d, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef 0)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_block_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !31
  store i64 %5, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.f = load i8, ptr %i.e, align 4               ; 3 uses
  %i.g = and i8 %i.f, 8
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 114, ptr noundef null) #5
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %.not108 = icmp eq i32 %i.i, 0
  br i1 %.not108, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %4, null
  %.not120 = icmp ne ptr %4, %1
  %or.cond128.not138 = or i1 %i.j, %.not120
  %i.k = icmp ult i64 %3, %5
  %or.cond129 = or i1 %or.cond128.not138, %i.k
  %i.l = and i8 %i.f, 1
  %.not121 = icmp eq i8 %i.l, 0
  %or.cond130 = or i1 %or.cond129, %.not121
  br i1 %or.cond130, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 295, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.m = and i8 %i.f, 2
  %.not122 = icmp eq i8 %i.m, 0
  br i1 %.not122, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = urem i64 %5, %i.d
  %i.o = sub i64 %i.d, %i.n                       ; 12 uses
  %i.p = add i64 %i.o, %5                         ; 8 uses
  %i.q = icmp ult i64 %3, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.r = icmp ugt i64 %i.o, 256
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.s = add nsw i64 %i.o, -1                     ; 2 uses
  %i.t = trunc i64 %i.s to i8                     ; 4 uses
  %i.u = icmp eq i32 %i.i, 768
  br i1 %i.u, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.v = icmp ult i64 %5, %i.p
  br i1 %i.v, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check150 = icmp ult i64 %i.o, 32
  br i1 %min.iters.check150, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.o, 24
  %n.vec = and i64 %i.o, 480                      ; 4 uses
  %i.w = add i64 %5, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %index   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.y, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %i.z, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec152 = and i64 %i.o, 504                   ; 3 uses
  %i.ab = add i64 %5, %n.vec152
  %broadcast.splatinsert153 = insertelement <8 x i8> poison, i8 %i.t, i64 0
  %broadcast.splat154 = shufflevector <8 x i8> %broadcast.splatinsert153, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ac = getelementptr i8, ptr %1, i64 %5
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next156, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %index155
  store <8 x i8> %broadcast.splat154, ptr %i.ad, align 1, !tbaa !34
  %index.next156 = add nuw i64 %index155, 8       ; 2 uses
  %i.ae = icmp eq i64 %index.next156, %n.vec152
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %i.o, %n.vec152
  br i1 %cmp.n157, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0139.ph = phi i64 [ %5, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.af = icmp samesign ugt i64 %i.o, 1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %5
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 0, i64 %i.s, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.o
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -1
  store i8 %i.t, ptr %i.aj, align 1, !tbaa !34
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0139 = phi i64 [ %i.al, %.lr.ph ], [ %.0139.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.0139
  store i8 %i.t, ptr %i.ak, align 1, !tbaa !34
  %i.al = add nuw i64 %.0139, 1                   ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.p
  br i1 %i.am, label %.lr.ph, label %.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.n, %.preheader, %bb.f
  %i.an = phi i64 [ %5, %bb.f ], [ %i.p, %bb.n ], [ %i.p, %.preheader ], [ %i.p, %middle.block ], [ %i.p, %vec.epilog.middle.block ], [ %i.p, %.lr.ph ] ; 3 uses
  %i.ao = urem i64 %i.an, %i.d
  %.not123 = icmp eq i64 %i.ao, 0
  br i1 %.not123, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 330, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %.critedge

bb.p:                                             ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.at = tail call i32 %i.as(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, i64 noundef %i.an) #5
  %.not124 = icmp eq i32 %i.at, 0
  br i1 %.not124, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 336, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !20
  %.not125 = icmp eq i32 %i.av, 0
  br i1 %.not125, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  tail call void @CRYPTO_free(ptr noundef %i.ax, ptr noundef nonnull @.str.1, i32 noundef 341) #5
  store i32 0, ptr %i.au, align 8, !tbaa !20
  store ptr null, ptr %i.aw, align 8, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %i.an, ptr %2, align 8, !tbaa !18
  %i.ay = load i8, ptr %i.e, align 4
  %i.az = and i8 %i.ay, 2
  %.not126 = icmp eq i8 %i.az, 0
  br i1 %.not126, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bc = load i32, ptr %i.h, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !44
  %i.bg = tail call i32 @ossl_cipher_tlsunpadblock(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %i.d, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.au, i64 noundef %i.bf, i32 noundef 0) #5
  %.not127 = icmp eq i32 %i.bg, 0
  br i1 %.not127, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %.critedge

bb.w:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !22
  %.not109 = icmp eq i64 %i.bi, 0
  br i1 %.not109, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = call i64 @ossl_cipher_fillblock(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bh, i64 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.pre = load i64, ptr %i.bh, align 8, !tbaa !22
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bl = sub i64 0, %i.d
  %i.bm = and i64 %5, %i.bl
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bn = phi i64 [ %.pre, %bb.x ], [ 0, %bb.y ]
  %.094 = phi i64 [ %i.bk, %bb.x ], [ %i.bm, %bb.y ] ; 5 uses
  %i.bo = icmp eq i64 %i.bn, %i.d
  br i1 %i.bo, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.bp = load i8, ptr %i.e, align 4
  %i.bq = load i64, ptr %i.b, align 8
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = and i8 %i.bp, 3
  %i.bt = icmp ne i8 %i.bs, 1
  %or.cond131 = select i1 %i.bt, i1 true, i1 %i.br
  br i1 %or.cond131, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.bu = icmp ult i64 %3, %i.d
  br i1 %i.bu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 372, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %.critedge

bb.ad:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = call i32 %i.by(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.bz, i64 noundef %i.d) #5
  %.not111 = icmp eq i32 %i.ca, 0
  br i1 %.not111, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 376, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  store i64 0, ptr %i.bh, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aa, %bb.af, %bb.z
  %.096 = phi i64 [ %i.d, %bb.af ], [ 0, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %.092 = phi ptr [ %i.cb, %bb.af ], [ %1, %bb.aa ], [ %1, %bb.z ]
  %.not112 = icmp eq i64 %.094, 0
  br i1 %.not112, label %thread-pre-split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load i8, ptr %i.e, align 4
  %i.cd = and i8 %i.cc, 3
  %or.cond132.not = icmp eq i8 %i.cd, 1
  %i.ce = load i64, ptr %i.b, align 8
  %i.cf = icmp eq i64 %.094, %i.ce
  %or.cond = select i1 %or.cond132.not, i1 %i.cf, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %.not115 = icmp ult i64 %.094, %i.d
  br i1 %.not115, label %bb.aj, label %bb.ak, !prof !45

bb.aj:                                            ; preds = %bb.ai
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 386, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %.critedge

bb.ak:                                            ; preds = %bb.ai
  %i.cg = sub nuw i64 %.094, %i.d
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.195 = phi i64 [ %.094, %bb.ah ], [ %i.cg, %bb.ak ] ; 5 uses
  %i.ch = add i64 %.195, %.096                    ; 3 uses
  %i.ci = icmp ult i64 %3, %i.ch
  br i1 %i.ci, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 393, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %.critedge

bb.an:                                            ; preds = %bb.al
  %.not116 = icmp eq i64 %.195, 0
  br i1 %.not116, label %thread-pre-split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !42
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.co = call i32 %i.cm(ptr noundef nonnull %0, ptr noundef %.092, ptr noundef %i.cn, i64 noundef %.195) #5
  %.not117 = icmp eq i32 %i.co, 0
  br i1 %.not117, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 399, ptr noundef nonnull @__func__.ossl_cipher_generic_block_update) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %.critedge

bb.aq:                                            ; preds = %bb.ao
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.195
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !31
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !18
  %i.cs = sub i64 %i.cr, %.195                    ; 2 uses
  store i64 %i.cs, ptr %i.b, align 8, !tbaa !18
  br label %bb.ar

thread-pre-split:                                 ; preds = %bb.ag, %bb.an
  %.197136.ph = phi i64 [ %i.ch, %bb.an ], [ %.096, %bb.ag ]
  %.pr = load i64, ptr %i.b, align 8, !tbaa !18
  br label %bb.ar

bb.ar:                                            ; preds = %thread-pre-split, %bb.aq
  %i.ct = phi i64 [ %.pr, %thread-pre-split ], [ %i.cs, %bb.aq ]
  %.197136 = phi i64 [ %.197136.ph, %thread-pre-split ], [ %i.ch, %bb.aq ]
  %.not118 = icmp eq i64 %i.ct, 0
  br i1 %.not118, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = call i32 @ossl_cipher_trailingdata(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.bh, i64 noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %.not119 = icmp eq i32 %i.cv, 0
  br i1 %.not119, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %bb.as
  %.pre140 = load i64, ptr %i.b, align 8, !tbaa !18
  %i.cw = icmp eq i64 %.pre140, 0
  %i.cx = zext i1 %i.cw to i32
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge, %bb.ar
  %i.cy = phi i32 [ %i.cx, %._crit_edge ], [ 1, %bb.ar ]
  store i64 %.197136, ptr %2, align 8, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.j, %bb.as, %bb.t, %bb.u, %bb.at, %bb.ap, %bb.am, %bb.aj, %bb.ae, %bb.ac, %bb.v, %bb.q, %bb.o, %bb.e, %bb.b
  %.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.o ], [ 0, %bb.b ], [ 0, %bb.v ], [ 0, %bb.q ], [ 0, %bb.as ], [ 0, %bb.ac ], [ 0, %bb.am ], [ %i.cy, %bb.at ], [ 1, %bb.t ], [ 0, %bb.ap ], [ 0, %bb.aj ], [ 0, %bb.ae ], [ 1, %bb.u ], [ 0, %bb.j ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ossl_cipher_tlsunpadblock(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @ossl_cipher_fillblock(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_cipher_trailingdata(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_block_final(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  %i.c = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4               ; 4 uses
  %i.f = and i8 %i.e, 8
  %.not49 = icmp eq i8 %i.f, 0
  br i1 %.not49, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 114, ptr noundef null) #5
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.i = and i8 %i.e, 2
  %.not51 = icmp eq i8 %i.i, 0
  br i1 %.not51, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = and i8 %i.e, 1
  %.not57 = icmp eq i8 %i.j, 0
  br i1 %.not57, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @ossl_cipher_padblock(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.b) #5
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %bb.ac

bb.k:                                             ; preds = %bb.i
  %.not58 = icmp eq i64 %i.n, %i.b
  br i1 %.not58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 442, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 107, ptr noundef null) #5
  br label %bb.ac

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.p = icmp ult i64 %3, %i.b
  br i1 %i.p, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = tail call i32 %i.t(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.u, i64 noundef %i.b) #5
  %.not59 = icmp eq i32 %i.v, 0
  br i1 %.not59, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.w, align 8, !tbaa !22
  store i64 %i.b, ptr %2, align 8, !tbaa !18
  br label %bb.ac

bb.r:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  %.not52 = icmp eq i64 %i.y, %i.b
  br i1 %.not52, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = and i8 %i.e, 1
  %.not56 = icmp eq i8 %i.aa, 0
  %or.cond = and i1 %.not56, %i.z
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %bb.ac

bb.u:                                             ; preds = %bb.s
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 465, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 107, ptr noundef null) #5
  br label %bb.ac

bb.v:                                             ; preds = %bb.r
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ag = tail call i32 %i.ae(ptr noundef nonnull %0, ptr noundef nonnull %i.af, ptr noundef nonnull %i.af, i64 noundef %i.b) #5
  %.not53 = icmp eq i32 %i.ag, 0
  br i1 %.not53, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 470, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.ah = load i8, ptr %i.d, align 4
  %i.ai = and i8 %i.ah, 1
  %.not54 = icmp eq i8 %i.ai, 0
  br i1 %.not54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aj = tail call i32 @ossl_cipher_unpadblock(ptr noundef nonnull %i.af, ptr noundef nonnull %i.x, i64 noundef %i.b) #5
  %.not55 = icmp eq i32 %i.aj, 0
  br i1 %.not55, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !22  ; 2 uses
  %i.al = icmp ult i64 %3, %i.ak
  br i1 %i.al, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 480, ptr noundef nonnull @__func__.ossl_cipher_generic_block_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.af, i64 %i.ak, i1 false)
  %i.am = load i64, ptr %i.x, align 8, !tbaa !22
  store i64 %i.am, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %i.x, align 8, !tbaa !22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.a, %bb.ab, %bb.aa, %bb.w, %bb.u, %bb.t, %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.n ], [ 1, %bb.q ], [ 0, %bb.p ], [ 1, %bb.j ], [ 0, %bb.l ], [ 0, %bb.u ], [ 1, %bb.t ], [ 0, %bb.aa ], [ 1, %bb.ab ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %bb.c ], [ 0, %bb.y ]
  ret i32 %.0
}

declare i32 @ossl_prov_is_running() local_unnamed_addr #3

declare void @ossl_cipher_padblock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_cipher_unpadblock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_stream_update(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 496, ptr noundef nonnull @__func__.ossl_cipher_generic_stream_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 114, ptr noundef null) #5
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %3, %5
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 506, ptr noundef nonnull @__func__.ossl_cipher_generic_stream_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i64 noundef %5) #5
  %.not41 = icmp eq i32 %i.j, 0
  br i1 %.not41, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 511, ptr noundef nonnull @__func__.ossl_cipher_generic_stream_update) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  store i64 %5, ptr %2, align 8, !tbaa !18
  %i.k = load i8, ptr %i.a, align 4
  %i.l = and i8 %i.k, 2
  %.not42 = icmp eq i8 %i.l, 0
  br i1 %.not42, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33
  %.not43 = icmp eq i32 %i.n, 0
  br i1 %.not43, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !46
  %.not44 = icmp eq i32 %i.p, 0
  br i1 %.not44, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %1, i64 %5
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !34
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %.not45.not = icmp ugt i64 %5, %i.t
  br i1 %.not45.not, label %bb.m, label %bb.r, !prof !47

bb.m:                                             ; preds = %bb.l
  %.neg = xor i64 %i.t, -1
  %i.u = add i64 %5, %.neg                        ; 2 uses
  store i64 %i.u, ptr %2, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.v = phi i64 [ %i.u, %bb.m ], [ %5, %bb.k ]   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load i64, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %.not46 = icmp ult i64 %i.v, %i.x
  br i1 %.not46, label %bb.r, label %bb.o, !prof !45

bb.o:                                             ; preds = %bb.n
  %i.y = sub nuw i64 %i.v, %i.x                   ; 4 uses
  store i64 %i.y, ptr %2, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44  ; 4 uses
  %.not47 = icmp eq i64 %i.aa, 0
  br i1 %.not47, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.ad = sub i64 0, %i.aa
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !21
  %i.ag = sub nuw i64 %i.y, %i.aa
  store i64 %i.ag, ptr %2, align 8, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.j, %bb.q, %bb.o, %bb.p, %bb.n, %bb.l, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.f ], [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.h ], [ 1, %bb.o ], [ 1, %bb.q ], [ 1, %bb.j ], [ 1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_stream_final(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 8
  %.not3 = icmp eq i8 %i.d, 0
  br i1 %.not3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 560, ptr noundef nonnull @__func__.ossl_cipher_generic_stream_final) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 114, ptr noundef null) #5
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_cipher(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 8
  %.not12 = icmp eq i8 %i.d, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 578, ptr noundef nonnull @__func__.ossl_cipher_generic_cipher) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 114, ptr noundef null) #5
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = icmp ult i64 %3, %5
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__func__.ossl_cipher_generic_cipher) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 106, ptr noundef null) #5
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i64 noundef %5) #5
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 588, ptr noundef nonnull @__func__.ossl_cipher_generic_cipher) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 102, ptr noundef null) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 %5, ptr %2, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_get_ctx_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.9) #5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.a, i64 noundef %i.c) #5
  %.not45 = icmp eq i32 %i.d, 0
  br i1 %.not45, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.10) #5 ; 2 uses
  %.not46 = icmp eq ptr %i.e, null
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %i.i = zext nneg i8 %i.h to i32
  %i.j = tail call i32 @OSSL_PARAM_set_uint(ptr noundef nonnull %i.e, i32 noundef %i.i) #5
  %.not47 = icmp eq i32 %i.j, 0
  br i1 %.not47, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.11) #5 ; 3 uses
  %.not48 = icmp eq ptr %i.k, null
  br i1 %.not48, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24
  %i.n = tail call i32 @OSSL_PARAM_set_octet_ptr(ptr noundef nonnull %i.k, ptr noundef %0, i64 noundef %i.m) #5
  %.not49 = icmp eq i32 %i.n, 0
  br i1 %.not49, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.l, align 8, !tbaa !24
  %i.p = tail call i32 @OSSL_PARAM_set_octet_string(ptr noundef nonnull %i.k, ptr noundef nonnull %0, i64 noundef %i.o) #5
  %.not50 = icmp eq i32 %i.p, 0
  br i1 %.not50, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.q = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.12) #5 ; 3 uses
  %.not51 = icmp eq ptr %i.q, null
  br i1 %.not51, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24
  %i.u = tail call i32 @OSSL_PARAM_set_octet_ptr(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef %i.t) #5
  %.not52 = icmp eq i32 %i.u, 0
  br i1 %.not52, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.s, align 8, !tbaa !24
  %i.w = tail call i32 @OSSL_PARAM_set_octet_string(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef %i.v) #5
  %.not53 = icmp eq i32 %i.w, 0
  br i1 %.not53, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.x = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.13) #5 ; 2 uses
  %.not54 = icmp eq ptr %i.x, null
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = load i32, ptr %i.y, align 8, !tbaa !19
  %i.aa = tail call i32 @OSSL_PARAM_set_uint(ptr noundef nonnull %i.x, i32 noundef %i.z) #5
  %.not55 = icmp eq i32 %i.aa, 0
  br i1 %.not55, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.7) #5 ; 2 uses
  %.not56 = icmp eq ptr %i.ab, null
  br i1 %.not56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.ab, i64 noundef %i.ad) #5
  %.not57 = icmp eq i32 %i.ae, 0
  br i1 %.not57, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.14) #5 ; 2 uses
  %.not58 = icmp eq ptr %i.af, null
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !44
  %i.ak = tail call i32 @OSSL_PARAM_set_octet_ptr(ptr noundef nonnull %i.af, ptr noundef %i.ah, i64 noundef %i.aj) #5
  %.not59 = icmp eq i32 %i.ak, 0
  br i1 %.not59, label %.sink.split, label %bb.q

.sink.split:                                      ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.g, %bb.d, %bb.b
  %.sink = phi i32 [ 632, %bb.n ], [ 627, %bb.l ], [ 622, %bb.j ], [ 615, %bb.g ], [ 608, %bb.d ], [ 603, %bb.b ], [ 638, %bb.p ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef %.sink, ptr noundef nonnull @__func__.ossl_cipher_generic_get_ctx_params) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef null) #5
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o, %bb.p
  %.0 = phi i32 [ 1, %bb.o ], [ 1, %bb.p ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare i32 @OSSL_PARAM_set_octet_ptr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_octet_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_uint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_cipher_generic_initiv(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp ne i64 %2, %i.b
  %i.d = icmp ugt i64 %2, 16
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 704, ptr noundef nonnull @__func__.ossl_cipher_generic_initiv) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 109, ptr noundef null) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = or i8 %i.f, 4
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 1 %1, i64 %2, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_cipher_generic_initkey(ptr nofree noundef captures(none) initializes((64, 68), (72, 96), (168, 176)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %5, 512
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = or i8 %i.c, 64
  store i8 %i.d, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.pre = load i8, ptr %.phi.trans.insert, align 4
  %i.e = lshr i64 %5, 3
  %i.f = trunc i64 %i.e to i8
  %i.g = and i8 %i.f, 32
  %i.h = or i8 %.pre, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.j = or i8 %i.h, 1
  store i8 %i.j, ptr %i.i, align 4
  %i.k = lshr i64 %1, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = lshr i64 %3, 3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.m, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %6, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %4, ptr %i.p, align 8, !tbaa !23
  %i.q = lshr i64 %2, 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.q, ptr %i.r, align 8, !tbaa !32
  %.not19 = icmp eq ptr %7, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.s = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef nonnull %7) #5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.s, ptr %i.t, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"ossl_param_st", !11, i64 0, !6, i64 8, !12, i64 16, !13, i64 24, !13, i64 32}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !13, i64 72}
!15 = !{!"prov_cipher_ctx_st", !7, i64 0, !7, i64 16, !7, i64 32, !12, i64 48, !7, i64 56, !6, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !6, i64 104, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 108, !6, i64 112, !11, i64 120, !6, i64 128, !13, i64 136, !6, i64 144, !13, i64 152, !6, i64 160, !16, i64 168, !12, i64 176, !17, i64 184}
!16 = !{!"p1 _ZTS17prov_cipher_hw_st", !12, i64 0}
!17 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!15, !6, i64 160}
!20 = !{!15, !6, i64 128}
!21 = !{!15, !11, i64 120}
!22 = !{!15, !13, i64 96}
!23 = !{!15, !6, i64 64}
!24 = !{!15, !13, i64 80}
!25 = !{!15, !16, i64 168}
!26 = !{!27, !12, i64 0}
!27 = !{!"prov_cipher_hw_st", !12, i64 0, !12, i64 8, !12, i64 16}
!28 = !{!29, !11, i64 16}
!29 = !{!"prov_skey_st", !17, i64 0, !6, i64 8, !11, i64 16, !13, i64 24}
!30 = !{!29, !13, i64 24}
!31 = !{!11, !11, i64 0}
!32 = !{!15, !13, i64 88}
!33 = !{!15, !6, i64 112}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !36, !37, !38}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"branch_weights", i32 8, i32 24}
!40 = distinct !{!40, !36, !37, !38}
!41 = distinct !{!41, !36, !38, !37}
!42 = !{!27, !12, i64 8}
!43 = !{!15, !17, i64 184}
!44 = !{!15, !13, i64 136}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!15, !6, i64 144}
!47 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!48 = !{!15, !13, i64 152}
end_hunk_0
