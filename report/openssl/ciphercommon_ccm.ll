inline.NumInlined: 13
inline.NumDeleted: 7
begin_hunk_0_@ossl_ccm_set_ctx_params:bb.a

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.6, ptr noundef nonnull dereferenceable(1) %i.j) #7
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.l, !prof !14

bb.d:                                             ; preds = %bb.c
  %.not35.i = icmp eq ptr %i.d, null
  br i1 %.not35.i, label %bb.l, label %ossl_cipher_ccm_set_ctx_params_decoder.exit, !prof !14

bb.e:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  switch i8 %i.n, label %bb.l [
    i8 97, label %sub_0.i
    i8 108, label %bb.g
  ]

sub_0.i:                                          ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = sub nsw i32 103, %i.q
  %.not48.i = icmp eq i8 %i.p, 103
  br i1 %.not48.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = sub nsw i32 0, %i.u
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %sub_0.i
  %i.w = phi i32 [ %i.r, %sub_0.i ], [ %i.v, %sub_1.i ]
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.l, !prof !14

bb.f:                                             ; preds = %.tail.i
  %.not34.i = icmp eq ptr %i.e, null
  br i1 %.not34.i, label %bb.l, label %ossl_cipher_ccm_set_ctx_params_decoder.exit, !prof !14

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %cond.i = icmp eq i8 %i.z, 115
  br i1 %cond.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  switch i8 %i.ab, label %bb.l [
    i8 97, label %sub_037.i
    i8 105, label %bb.j
  ]

sub_037.i:                                        ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 97, %i.ae
  %.not46.i = icmp eq i8 %i.ad, 97
  br i1 %.not46.i, label %sub_138.i, label %.tail36.i

sub_138.i:                                        ; preds = %sub_037.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = sub nsw i32 100, %i.ai
  %.not47.i = icmp eq i8 %i.ah, 100
  br i1 %.not47.i, label %sub_2.i, label %.tail36.i

sub_2.i:                                          ; preds = %sub_138.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = sub nsw i32 0, %i.am
  br label %.tail36.i

.tail36.i:                                        ; preds = %sub_2.i, %sub_138.i, %sub_037.i
  %i.ao = phi i32 [ %i.af, %sub_037.i ], [ %i.aj, %sub_138.i ], [ %i.an, %sub_2.i ]
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %bb.l, !prof !14

bb.i:                                             ; preds = %.tail36.i
  %.not33.i = icmp eq ptr %i.f, null
  br i1 %.not33.i, label %bb.l, label %ossl_cipher_ccm_set_ctx_params_decoder.exit, !prof !14

bb.j:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.11, ptr noundef nonnull dereferenceable(1) %i.aq) #7
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.k, label %bb.l, !prof !14

bb.k:                                             ; preds = %bb.j
  %.not32.i = icmp eq ptr %i.g, null
  br i1 %.not32.i, label %bb.l, label %ossl_cipher_ccm_set_ctx_params_decoder.exit, !prof !14

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.f, %bb.d, %bb.j, %.tail36.i, %bb.h, %bb.g, %.tail.i, %bb.e, %bb.c, %.lr.ph.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.lr.ph.i ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.c ], [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %bb.d ], [ %.sroa.0.0, %.tail.i ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %.tail36.i ], [ %.02845.i, %bb.i ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.k ] ; 5 uses
  %.sroa.5.1 = phi ptr [ %.sroa.5.0, %.lr.ph.i ], [ %.sroa.5.0, %bb.g ], [ %.sroa.5.0, %bb.c ], [ %.sroa.5.0, %bb.e ], [ %.sroa.5.0, %bb.d ], [ %.sroa.5.0, %.tail.i ], [ %.sroa.5.0, %bb.h ], [ %.sroa.5.0, %bb.f ], [ %.sroa.5.0, %.tail36.i ], [ %.sroa.5.0, %bb.i ], [ %.sroa.5.0, %bb.j ], [ %.02845.i, %bb.k ] ; 5 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.0, %.lr.ph.i ], [ %.sroa.7.0, %bb.g ], [ %.sroa.7.0, %bb.c ], [ %.sroa.7.0, %bb.e ], [ %.02845.i, %bb.d ], [ %.sroa.7.0, %.tail.i ], [ %.sroa.7.0, %bb.h ], [ %.sroa.7.0, %bb.f ], [ %.sroa.7.0, %.tail36.i ], [ %.sroa.7.0, %bb.i ], [ %.sroa.7.0, %bb.j ], [ %.sroa.7.0, %bb.k ] ; 3 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %.lr.ph.i ], [ %.sroa.9.0, %bb.g ], [ %.sroa.9.0, %bb.c ], [ %.sroa.9.0, %bb.e ], [ %.sroa.9.0, %bb.d ], [ %.sroa.9.0, %.tail.i ], [ %.sroa.9.0, %bb.h ], [ %.02845.i, %bb.f ], [ %.sroa.9.0, %.tail36.i ], [ %.sroa.9.0, %bb.i ], [ %.sroa.9.0, %bb.j ], [ %.sroa.9.0, %bb.k ] ; 5 uses
  %i.at = phi ptr [ %i.d, %.lr.ph.i ], [ %i.d, %bb.g ], [ %i.d, %bb.c ], [ %i.d, %bb.e ], [ %.02845.i, %bb.d ], [ %i.d, %.tail.i ], [ %i.d, %bb.h ], [ %i.d, %bb.f ], [ %i.d, %.tail36.i ], [ %i.d, %bb.i ], [ %i.d, %bb.j ], [ %i.d, %bb.k ]
  %i.au = phi ptr [ %i.e, %.lr.ph.i ], [ %i.e, %bb.g ], [ %i.e, %bb.c ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %.tail.i ], [ %i.e, %bb.h ], [ %.02845.i, %bb.f ], [ %i.e, %.tail36.i ], [ %i.e, %bb.i ], [ %i.e, %bb.j ], [ %i.e, %bb.k ]
  %i.av = phi ptr [ %i.f, %.lr.ph.i ], [ %i.f, %bb.g ], [ %i.f, %bb.c ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %.tail.i ], [ %i.f, %bb.h ], [ %i.f, %bb.f ], [ %i.f, %.tail36.i ], [ %.02845.i, %bb.i ], [ %i.f, %bb.j ], [ %i.f, %bb.k ]
  %i.aw = phi ptr [ %i.g, %.lr.ph.i ], [ %i.g, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %.tail.i ], [ %i.g, %bb.h ], [ %i.g, %bb.f ], [ %i.g, %.tail36.i ], [ %i.g, %bb.i ], [ %i.g, %bb.j ], [ %.02845.i, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.02845.i, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8  ; 2 uses
  %.not31.i = icmp eq ptr %i.ay, null
  br i1 %.not31.i, label %bb.m, label %.lr.ph.i, !llvm.loop !15

ossl_cipher_ccm_set_ctx_params_decoder.exit:      ; preds = %bb.d, %bb.f, %bb.i, %bb.k
  %.sink.i = phi i32 [ 82, %bb.i ], [ 63, %bb.f ], [ 48, %bb.d ], [ 93, %bb.k ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.7, i32 noundef %.sink.i, ptr noundef nonnull @__func__.ossl_cipher_ccm_set_ctx_params_decoder) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 252, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.h) #6
  br label %.thread77

bb.m:                                             ; preds = %bb.l
  %.not27 = icmp eq ptr %.sroa.9.1, null
  br i1 %.not27, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.9.1, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !17
  %.not28 = icmp eq i32 %i.ba, 5
  br i1 %.not28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 87, ptr noundef nonnull @__func__.ossl_ccm_set_ctx_params) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #6
  br label %.thread77

bb.p:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.9.1, i64 24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18 ; 4 uses
  %.not29 = trunc i64 %i.bc to i1
  %i.bd = add i64 %i.bc, -17
  %i.be = icmp ult i64 %i.bd, -13
  %or.cond40 = or i1 %i.be, %.not29
  br i1 %or.cond40, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 91, ptr noundef nonnull @__func__.ossl_ccm_set_ctx_params) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 118, ptr noundef null) #6
  br label %.thread77

bb.r:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.9.1, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 2 uses
  %.not30 = icmp eq ptr %i.bg, null
  br i1 %.not30, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = load i8, ptr %0, align 8                ; 2 uses
  %i.bi = and i8 %i.bh, 1
  %.not31 = icmp eq i8 %i.bi, 0
  br i1 %.not31, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 97, ptr noundef nonnull @__func__.ossl_ccm_set_ctx_params) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 120, ptr noundef null) #6
  br label %.thread77

bb.u:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 1 %i.bg, i64 %i.bc, i1 false)
  %i.bk = or i8 %i.bh, 8
  store i8 %i.bk, ptr %0, align 8
  %.pre = load i64, ptr %i.bb, align 8, !tbaa !18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.bl = phi i64 [ %.pre, %bb.u ], [ %i.bc, %bb.r ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.m
  %.not32 = icmp eq ptr %.sroa.7.1, null
  br i1 %.not32, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = call i32 @OSSL_PARAM_get_size_t(ptr noundef nonnull %.sroa.7.1, ptr noundef nonnull %i.a) #6
  %.not33 = icmp eq i32 %i.bn, 0
  br i1 %.not33, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @__func__.ossl_ccm_set_ctx_params) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #6
  br label %.thread77

bb.z:                                             ; preds = %bb.x
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.bp = sub i64 15, %i.bo                       ; 2 uses
  %i.bq = add i64 %i.bo, -14
  %or.cond = icmp ult i64 %i.bq, -7
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 113, ptr noundef nonnull @__func__.ossl_ccm_set_ctx_params) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 109, ptr noundef null) #6
  br label %.thread77

bb.ab:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !26
  %.not34 = icmp eq i64 %i.bs, %i.bp
  br i1 %.not34, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !26
  %i.bt = load i8, ptr %0, align 8
  %i.bu = and i8 %i.bt, -5
  store i8 %i.bu, ptr %0, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.w
  %.not35 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not35, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !17
  %.not36 = icmp eq i32 %i.bw, 5
  br i1 %.not36, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 124, ptr noundef nonnull @__func__.ossl_ccm_set_ctx_params) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #6
  br label %.thread77

bb.ag:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !18
  %i.cb = call i32 @ossl_prov_is_running() #6
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = icmp ne i64 %i.ca, 13
  %or.cond.i = or i1 %i.cd, %i.cc
  br i1 %or.cond.i, label %ccm_tls_init.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ce, ptr noundef nonnull readonly align 1 dereferenceable(13) %i.by, i64 13, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 13, ptr %i.cf, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 75 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !13
  %i.cm = zext i8 %i.cl to i64
  %i.cn = or disjoint i64 %i.cj, %i.cm            ; 2 uses
  %i.co = icmp samesign ult i64 %i.cn, 8
  br i1 %i.co, label %ccm_tls_init.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cp = add nsw i64 %i.cn, -8                   ; 3 uses
  %i.cq = load i8, ptr %0, align 8
  %i.cr = and i8 %i.cq, 1
  %.not.i41 = icmp eq i8 %i.cr, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !20 ; 4 uses
  br i1 %.not.i41, label %bb.aj, label %ccm_tls_init.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cu = icmp ult i64 %i.cp, %i.ct
  br i1 %i.cu, label %ccm_tls_init.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = sub nuw nsw i64 %i.cp, %i.ct
  br label %ccm_tls_init.exit

ccm_tls_init.exit.thread:                         ; preds = %bb.ah, %bb.ag, %bb.aj
  store i64 0, ptr %i.a, align 8, !tbaa !25
  br label %bb.al

ccm_tls_init.exit:                                ; preds = %bb.ai, %bb.ak
  %.0.i42 = phi i64 [ %i.cv, %bb.ak ], [ %i.cp, %bb.ai ] ; 2 uses
  %i.cw = lshr i64 %.0.i42, 8
  %i.cx = trunc nuw i64 %i.cw to i8
  store i8 %i.cx, ptr %i.cg, align 1, !tbaa !13
  %i.cy = trunc i64 %.0.i42 to i8
  store i8 %i.cy, ptr %i.ck, align 4, !tbaa !13
  %sext = shl i64 %i.ct, 32
  %i.cz = ashr exact i64 %sext, 32                ; 2 uses
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !25
  %i.da = and i64 %i.ct, 4294967295
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.al, label %bb.am

bb.al:                                            ; preds = %ccm_tls_init.exit.thread, %ccm_tls_init.exit
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 129, ptr noundef nonnull @__func__.ossl_ccm_set_ctx_params) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 115, ptr noundef null) #6
  br label %.thread77

bb.am:                                            ; preds = %ccm_tls_init.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cz, ptr %i.dc, align 8, !tbaa !28
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ad
  %.not37 = icmp eq ptr %.sroa.5.1, null
  br i1 %.not37, label %.thread77, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.5.1, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !17
  %.not38 = icmp eq i32 %i.de, 5
  br i1 %.not38, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @__func__.ossl_ccm_set_ctx_params) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 103, ptr noundef null) #6
  br label %.thread77

bb.aq:                                            ; preds = %bb.ao
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.5.1, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !18
  %.not.i43 = icmp eq i64 %i.dg, 4
  br i1 %.not.i43, label %ccm_tls_iv_set_fixed.exit, label %bb.ar

ccm_tls_iv_set_fixed.exit:                        ; preds = %bb.aq
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.5.1, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dk = load i32, ptr %i.di, align 1
  store i32 %i.dk, ptr %i.dj, align 8
  br label %.thread77

bb.ar:                                            ; preds = %bb.aq
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 141, ptr noundef nonnull @__func__.ossl_ccm_set_ctx_params) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 109, ptr noundef null) #6
  br label %.thread77

.thread77:                                        ; preds = %.preheader.i, %bb.b, %ccm_tls_iv_set_fixed.exit, %ossl_cipher_ccm_set_ctx_params_decoder.exit, %bb.an, %bb.a, %bb.ar, %bb.ap, %bb.al, %bb.af, %bb.aa, %bb.y, %bb.t, %bb.q, %bb.o
  %.0 = phi i32 [ 0, %bb.y ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.aa ], [ 0, %bb.af ], [ 0, %bb.al ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.a ], [ 0, %ossl_cipher_ccm_set_ctx_params_decoder.exit ], [ 1, %ccm_tls_iv_set_fixed.exit ], [ 1, %bb.an ], [ 1, %bb.b ], [ 1, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @OSSL_PARAM_get_size_t(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ossl_ccm_gettable_ctx_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_cipher_ccm_get_ctx_params_list
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_ccm_get_ctx_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread122, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread122, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %.not4767.i = icmp eq ptr %i.b, null
  br i1 %.not4767.i, label %.thread122, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.r
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.r ], [ null, %.preheader.i ] ; 17 uses
  %.sroa.6.0 = phi ptr [ %.sroa.6.1, %bb.r ], [ null, %.preheader.i ] ; 17 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %bb.r ], [ null, %.preheader.i ] ; 17 uses
  %.sroa.10.0 = phi ptr [ %.sroa.10.1, %bb.r ], [ null, %.preheader.i ] ; 17 uses
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %bb.r ], [ null, %.preheader.i ] ; 17 uses
  %.sroa.14.0 = phi ptr [ %.sroa.14.1, %bb.r ], [ null, %.preheader.i ] ; 17 uses
  %.sroa.16.0 = phi ptr [ %.sroa.16.1, %bb.r ], [ null, %.preheader.i ] ; 17 uses
end_hunk_0
