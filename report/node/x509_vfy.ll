Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/x509_vfy?download=true
inline.NumInlined: 229
inline.NumDeleted: 46
begin_hunk_0_@build_chain:bb.a
  %i.q = and i32 %i.p, 3
  %i.r = icmp ne i32 %i.q, 0
  %i.s = and i32 %i.p, 12
  %.not218 = icmp eq i32 %i.s, 0
  %or.cond334 = or i1 %i.r, %.not218
  br i1 %or.cond334, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.c, %bb.d
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !94   ; 2 uses
  %i.x = and i64 %i.w, 32768
  %.not219 = icmp eq i64 %i.x, 0
  br i1 %.not219, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = or disjoint i32 %i.m, 2
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = and i64 %i.w, 1048576
  %.not220 = icmp ne i64 %i.z, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1182 = phi i32 [ 1, %bb.h ], [ %i.y, %bb.g ]  ; 2 uses
  %.1179 = phi i1 [ %.not220, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.aa = tail call ptr @OPENSSL_sk_new_null() #10 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k

.thread:                                          ; preds = %bb.d
  %i.ac = tail call ptr @OPENSSL_sk_new_null() #10 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %.thread269

bb.j:                                             ; preds = %.thread, %bb.i
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3319, ptr noundef nonnull @__func__.build_chain) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524303, ptr noundef null) #10
  br label %bb.cc

bb.k:                                             ; preds = %bb.i
  br i1 %i.n, label %.thread269, label %bb.o

.thread269:                                       ; preds = %.thread, %bb.k
  %.1182266278 = phi i32 [ %.1182, %bb.k ], [ %i.m, %.thread ] ; 3 uses
  %.not242267276 = phi i1 [ false, %bb.k ], [ true, %.thread ] ; 3 uses
  %.1179268274 = phi i1 [ %.1179, %bb.k ], [ true, %.thread ] ; 3 uses
  %i.ae = phi ptr [ %i.aa, %bb.k ], [ %i.ac, %.thread ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !71
  %i.ah = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ag) #10
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread269
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !192 ; 2 uses
  %.not221 = icmp eq ptr %i.ak, null
  br i1 %.not221, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = tail call i32 @X509_add_certs(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ak, i32 noundef 0) #10
  %.not222 = icmp eq i32 %i.al, 0
  br i1 %.not222, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3329, ptr noundef nonnull @__func__.build_chain) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524299, ptr noundef null) #10
  br label %bb.cc

bb.o:                                             ; preds = %bb.m, %bb.l, %.thread269, %bb.k
  %.1182266277 = phi i32 [ %.1182266278, %bb.m ], [ %.1182266278, %bb.l ], [ %.1182266278, %.thread269 ], [ %.1182, %bb.k ] ; 2 uses
  %.not242267275 = phi i1 [ %.not242267276, %bb.m ], [ %.not242267276, %bb.l ], [ %.not242267276, %.thread269 ], [ false, %bb.k ]
  %.1179268273 = phi i1 [ %.1179268274, %bb.m ], [ %.1179268274, %bb.l ], [ %.1179268274, %.thread269 ], [ %.1179, %bb.k ]
  %i.am = phi ptr [ %i.ae, %bb.m ], [ %i.ae, %bb.l ], [ %i.ae, %.thread269 ], [ %i.aa, %bb.k ] ; 8 uses
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.ao = tail call i32 @X509_add_certs(ptr noundef nonnull %i.am, ptr noundef %i.an, i32 noundef 0) #10
  %.not223 = icmp eq i32 %i.ao, 0
  br i1 %.not223, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3339, ptr noundef nonnull @__func__.build_chain) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524299, ptr noundef null) #10
  br label %bb.cc

bb.q:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !193 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 1073741823
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1073741823, ptr %i.ar, align 8, !tbaa !193
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.au = phi i32 [ 1073741823, %bb.r ], [ %i.as, %bb.q ]
  %i.av = add nsw i32 %i.au, 1                    ; 4 uses
  %.not224352 = icmp eq i32 %.1182266277, 0
  br i1 %.not224352, label %.loopexit.thread, label %.lr.ph357

.loopexit.thread:                                 ; preds = %bb.s
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.am) #10
  br label %bb.bj

.lr.ph357:                                        ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph357, %.thread284
  %.0172355 = phi i32 [ 0, %.lr.ph357 ], [ %.3, %.thread284 ] ; 14 uses
  %.0174354 = phi i32 [ 3, %.lr.ph357 ], [ %.6, %.thread284 ] ; 4 uses
  %.2183353 = phi i32 [ %.1182266277, %.lr.ph357 ], [ %.9190, %.thread284 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !95
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.bd = call i32 @OPENSSL_sk_num(ptr noundef %i.bc) #10 ; 7 uses
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.aw, align 4, !tbaa !60
  %i.bf = and i32 %.2183353, 2
  %.not225 = icmp eq i32 %i.bf, 0
  br i1 %.not225, label %bb.aw, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = and i32 %.2183353, 4
  %.not226 = icmp eq i32 %i.bg, 0                 ; 2 uses
  %spec.select246 = select i1 %.not226, i32 %i.bd, i32 %.0172355
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.bi = add nsw i32 %spec.select246, -1
  %i.bj = call ptr @OPENSSL_sk_value(ptr noundef %i.bh, i32 noundef %i.bi) #10 ; 6 uses
  %i.bk = icmp sgt i32 %i.bd, %i.av
  br i1 %i.bk, label %.thread280, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !61
  store ptr null, ptr %i.d, align 8, !tbaa !61
  %i.bm = load ptr, ptr %i.ax, align 8, !tbaa !124
  %i.bn = call i32 %i.bm(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef %i.bj) #10, !inline_history !188 ; 2 uses
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !61
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 70, ptr %i.bp, align 8, !tbaa !63
  br label %.loopexit.sink.split

bb.x:                                             ; preds = %bb.v
  %.not227 = icmp eq i32 %i.bn, 0
  br i1 %.not227, label %.thread280, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = call ptr @X509_get0_pubkey(ptr noundef %i.bj) #10
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @__func__.X509_self_signed) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 108, ptr noundef null) #10
  br label %.loopexit338

bb.aa:                                            ; preds = %bb.y
  %i.bs = call i32 @ossl_x509v3_cache_extensions(ptr noundef %i.bj) #10
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %.loopexit338, label %X509_self_signed.exit

X509_self_signed.exit:                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 232
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !39
  %i.bv = lshr i32 %i.bu, 13
  %.lobit = and i32 %i.bv, 1                      ; 2 uses
  br i1 %.not226, label %.critedge249, label %bb.ab

.loopexit338:                                     ; preds = %bb.aa, %bb.z
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @X509_free(ptr noundef %i.bw) #10
  br label %.critedge.sink.split

bb.ab:                                            ; preds = %X509_self_signed.exit
  %i.bx = icmp sgt i32 %i.bd, %.0172355
  %i.by = icmp sgt i32 %.0172355, 0
  %or.cond4 = and i1 %i.by, %i.bx
  %.not228 = icmp eq i32 %.lobit, 0
  %spec.select247 = select i1 %or.cond4, i1 %.not228, i1 false
  br i1 %spec.select247, label %.lr.ph, label %bb.ac, !prof !191

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @X509_free(ptr noundef %i.bz) #10
  br label %.critedge.sink.split

.lr.ph:                                           ; preds = %bb.ab, %.lr.ph
  %.0192351 = phi i32 [ %i.cc, %.lr.ph ], [ %i.bd, %bb.ab ]
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.cb = call ptr @OPENSSL_sk_pop(ptr noundef %i.ca) #10
  call void @X509_free(ptr noundef %i.cb) #10
  %i.cc = add nsw i32 %.0192351, -1               ; 2 uses
  %i.cd = icmp samesign ugt i32 %i.cc, %.0172355
  br i1 %i.cd, label %.lr.ph, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph
  %1 = and i32 %.2183353, -5                      ; 4 uses
  store i32 %.0172355, ptr %i.h, align 4, !tbaa !92
  br i1 %i.n, label %bb.ad, label %.critedge249.thread

bb.ad:                                            ; preds = %._crit_edge
  %i.ce = load ptr, ptr %i.ay, align 8, !tbaa !71
  %i.cf = call i32 @OPENSSL_sk_num(ptr noundef %i.ce) #10
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ch = load i32, ptr %i.az, align 4, !tbaa !73
  %i.ci = load i32, ptr %i.h, align 4, !tbaa !92
  %.not229 = icmp slt i32 %i.ch, %i.ci
  br i1 %.not229, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 -1, ptr %i.az, align 4, !tbaa !73
  %i.cj = load ptr, ptr %i.ba, align 8, !tbaa !72
  call void @X509_free(ptr noundef %i.cj) #10
  store ptr null, ptr %i.ba, align 8, !tbaa !72
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  %i.ck = load ptr, ptr %i.ay, align 8, !tbaa !71
  %i.cl = call i32 @OPENSSL_sk_num(ptr noundef %i.ck) #10
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ah, label %.critedge249.thread

bb.ah:                                            ; preds = %bb.ag
  %i.cn = load i32, ptr %i.bb, align 8, !tbaa !74
  %i.co = load i32, ptr %i.h, align 4, !tbaa !92
  %.not230 = icmp slt i32 %i.cn, %i.co
  br i1 %.not230, label %.critedge249.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 -1, ptr %i.bb, align 8, !tbaa !74
  br label %.critedge249.thread

.critedge249:                                     ; preds = %X509_self_signed.exit
  %.not231 = icmp eq i32 %.lobit, 0
  br i1 %.not231, label %.critedge249.thread, label %bb.an

.critedge249.thread:                              ; preds = %bb.ai, %bb.ah, %bb.ag, %._crit_edge, %.critedge249
  %.3184384 = phi i32 [ %.2183353, %.critedge249 ], [ %1, %._crit_edge ], [ %1, %bb.ag ], [ %1, %bb.ah ], [ %1, %bb.ai ]
  %.1193382 = phi i32 [ %i.bd, %.critedge249 ], [ %.0172355, %._crit_edge ], [ %.0172355, %bb.ag ], [ %.0172355, %bb.ah ], [ %.0172355, %bb.ai ]
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.cr = call i32 @OPENSSL_sk_push(ptr noundef %i.cp, ptr noundef %i.cq) #10
  %.not232 = icmp eq i32 %i.cr, 0
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !95  ; 4 uses
  br i1 %.not232, label %.thread284.thread329, label %bb.aj

.thread284.thread329:                             ; preds = %.critedge249.thread
  call void @X509_free(ptr noundef %i.cs) #10
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3451, ptr noundef nonnull @__func__.build_chain) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524303, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.cc

bb.aj:                                            ; preds = %.critedge249.thread
  %i.ct = call ptr @X509_get0_pubkey(ptr noundef %i.cs) #10
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @__func__.X509_self_signed) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 108, ptr noundef null) #10
  br label %.critedge.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.cv = call i32 @ossl_x509v3_cache_extensions(ptr noundef %i.cs) #10
  %.not.i256 = icmp eq i32 %i.cv, 0
  br i1 %.not.i256, label %.critedge.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 232
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39
  %i.cy = and i32 %i.cx, 8192
  %i.cz = icmp ne i32 %i.cy, 0
  br label %X509_self_signed.exit258

bb.an:                                            ; preds = %.critedge249
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.db = call i32 @X509_cmp(ptr noundef nonnull %i.bj, ptr noundef %i.da) #10
  %.not233 = icmp eq i32 %i.db, 0
  br i1 %.not233, label %bb.ao, label %.thread289

.thread289:                                       ; preds = %bb.an
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @X509_free(ptr noundef %i.dc) #10
  br label %.thread280

bb.ao:                                            ; preds = %bb.an
  call void @X509_free(ptr noundef nonnull %i.bj) #10
  %i.dd = add nsw i32 %i.bd, -1                   ; 3 uses
  store i32 %i.dd, ptr %i.h, align 4, !tbaa !92
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.dg = call ptr @OPENSSL_sk_set(ptr noundef %i.de, i32 noundef %i.dd, ptr noundef %i.df) #10 ; 0 uses
  br label %X509_self_signed.exit258

X509_self_signed.exit258:                         ; preds = %bb.am, %bb.ao
  %.3184383 = phi i32 [ %.2183353, %bb.ao ], [ %.3184384, %bb.am ]
  %.2194 = phi i32 [ %i.dd, %bb.ao ], [ %.1193382, %bb.am ] ; 2 uses
  %.0 = phi i1 [ true, %bb.ao ], [ %i.cz, %bb.am ]
  %i.dh = load i32, ptr %i.h, align 4, !tbaa !92
  %.not235 = icmp sgt i32 %i.dh, %.2194
  br i1 %.not235, label %.critedge.sink.split, label %bb.ap, !prof !136

bb.ap:                                            ; preds = %X509_self_signed.exit258
  %i.di = call fastcc i32 @check_trust(ptr noundef %0, i32 noundef %.2194) ; 2 uses
  %.not236 = icmp eq i32 %i.di, 3
  br i1 %.not236, label %bb.aq, label %.loopexit.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.dj = and i32 %.3184383, -2                   ; 2 uses
  br i1 %.0, label %.thread280, label %.thread284

.thread280:                                       ; preds = %bb.u, %.thread289, %bb.aq, %bb.x
  %.6187 = phi i32 [ %i.dj, %bb.aq ], [ %.2183353, %bb.x ], [ %.2183353, %.thread289 ], [ %.2183353, %bb.u ] ; 5 uses
  %.3177 = phi i32 [ 3, %bb.aq ], [ %.0174354, %bb.x ], [ %.0174354, %.thread289 ], [ %.0174354, %bb.u ] ; 6 uses
  %i.dk = and i32 %.6187, 1
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %.thread280
  %i.dm = and i32 %.6187, 4
  %.not238 = icmp eq i32 %i.dm, 0
  br i1 %.not238, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dn = add nsw i32 %.0172355, -1
  %i.do = icmp sgt i32 %.0172355, 1
  br i1 %i.do, label %.thread284, label %.loopexit.sink.split, !llvm.loop !190

bb.at:                                            ; preds = %bb.ar
  br i1 %.1179268273, label %.loopexit.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dp = load i32, ptr %i.h, align 4, !tbaa !92  ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 2
  br i1 %i.dq, label %.loopexit.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dr = or disjoint i32 %.6187, 4
  %i.ds = add nsw i32 %i.dp, -1
  br label %bb.aw

bb.aw:                                            ; preds = %.thread280, %bb.av, %bb.t
  %.7188 = phi i32 [ %i.dr, %bb.av ], [ %.6187, %.thread280 ], [ %.2183353, %bb.t ] ; 8 uses
  %.4 = phi i32 [ %.3177, %bb.av ], [ %.3177, %.thread280 ], [ %.0174354, %bb.t ] ; 2 uses
  %.2 = phi i32 [ %i.ds, %bb.av ], [ %.0172355, %.thread280 ], [ %.0172355, %bb.t ] ; 7 uses
  %i.dt = and i32 %.7188, 1
  %.not240 = icmp eq i32 %i.dt, 0
  br i1 %.not240, label %.thread284, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.du = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.dv = call i32 @OPENSSL_sk_num(ptr noundef %i.du) #10 ; 4 uses
  %i.dw = load i32, ptr %i.h, align 4, !tbaa !92
  %i.dx = icmp eq i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ay, label %.critedge.sink.split, !prof !191

bb.ay:                                            ; preds = %bb.ax
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.dz = add nsw i32 %i.dv, -1
  %i.ea = call ptr @OPENSSL_sk_value(ptr noundef %i.dy, i32 noundef %i.dz) #10 ; 4 uses
  %i.eb = call ptr @X509_get0_pubkey(ptr noundef %i.ea) #10
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @__func__.X509_self_signed) #10
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 108, ptr noundef null) #10
  br label %X509_self_signed.exit261

bb.ba:                                            ; preds = %bb.ay
  %i.ed = call i32 @ossl_x509v3_cache_extensions(ptr noundef %i.ea) #10
  %.not.i259 = icmp eq i32 %i.ed, 0
  br i1 %.not.i259, label %X509_self_signed.exit261, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 232
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !39
  %i.eg = and i32 %i.ef, 8192
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = icmp sgt i32 %i.dv, %i.av
  %or.cond = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond, label %.thread301, label %bb.bc

X509_self_signed.exit261:                         ; preds = %bb.az, %bb.ba
  %.old = icmp sgt i32 %i.dv, %i.av
  br i1 %.old, label %.thread301, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %X509_self_signed.exit261
  %i.ej = call fastcc ptr @get0_best_issuer_sk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.am, ptr noundef %i.ea) ; 3 uses
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !95
end_hunk_0
