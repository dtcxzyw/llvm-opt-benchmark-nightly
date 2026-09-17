Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x509_vfy?download=true
inline.NumInlined: 257
inline.NumDeleted: 55
begin_hunk_0_@build_chain:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %.not = icmp ne ptr %i.l, null                  ; 2 uses
  %i.m = zext i1 %.not to i32                     ; 2 uses
  %i.n = icmp ne ptr %i.c, null                   ; 5 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !93   ; 2 uses
  %i.q = and i32 %i.p, 3
  %i.r = icmp ne i32 %i.q, 0
  %i.s = and i32 %i.p, 12
  %.not218 = icmp eq i32 %i.s, 0
  %or.cond317 = or i1 %i.r, %.not218
  br i1 %or.cond317, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.d
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
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

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g
  %.1182 = phi i32 [ %i.m, %bb.d ], [ %i.y, %bb.g ], [ 1, %bb.h ] ; 2 uses
  %.not242 = phi i1 [ true, %bb.d ], [ false, %bb.g ], [ false, %bb.h ]
  %.1179 = phi i1 [ true, %bb.d ], [ true, %bb.g ], [ %.not220, %bb.h ]
  %i.aa = tail call ptr @OPENSSL_sk_new_null() #11
  %i.ab = tail call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.aa, ptr noundef nonnull @sk_X509_freefunc_thunk) #11 ; 9 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3700, ptr noundef nonnull @__func__.build_chain) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524303, ptr noundef null) #11
  br label %bb.cd

bb.k:                                             ; preds = %bb.i
  br i1 %i.n, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.af = tail call i32 @OPENSSL_sk_num(ptr noundef %i.ae) #11
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %.not221 = icmp eq ptr %i.ai, null
  br i1 %.not221, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = tail call i32 @X509_add_certs(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ai, i32 noundef 0) #11
  %.not222 = icmp eq i32 %i.aj, 0
  br i1 %.not222, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3710, ptr noundef nonnull @__func__.build_chain) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524299, ptr noundef null) #11
  br label %bb.cd

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.al = tail call i32 @X509_add_certs(ptr noundef nonnull %i.ab, ptr noundef %i.ak, i32 noundef 0) #11
  %.not223 = icmp eq i32 %i.al, 0
  br i1 %.not223, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3720, ptr noundef nonnull @__func__.build_chain) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524299, ptr noundef null) #11
  br label %bb.cd

bb.r:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !198 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 1073741823
  br i1 %i.aq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1073741823, ptr %i.ao, align 8, !tbaa !198
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ar = phi i32 [ 1073741823, %bb.s ], [ %i.ap, %bb.r ]
  %i.as = add nsw i32 %i.ar, 1                    ; 4 uses
  %.not224335 = icmp eq i32 %.1182, 0
  br i1 %.not224335, label %.loopexit.thread, label %.lr.ph340

.loopexit.thread:                                 ; preds = %bb.t
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.ab) #11
  br label %bb.bk

.lr.ph340:                                        ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph340, %.thread267
  %.0172338 = phi i32 [ 0, %.lr.ph340 ], [ %.3, %.thread267 ] ; 14 uses
  %.0174337 = phi i32 [ 3, %.lr.ph340 ], [ %.6, %.thread267 ] ; 4 uses
  %.2183336 = phi i32 [ %.1182, %.lr.ph340 ], [ %.9190, %.thread267 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !95
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.ba = call i32 @OPENSSL_sk_num(ptr noundef %i.az) #11 ; 7 uses
  %i.bb = add nsw i32 %i.ba, -1
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !60
  %i.bc = and i32 %.2183336, 2
  %.not225 = icmp eq i32 %i.bc, 0
  br i1 %.not225, label %bb.ax, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = and i32 %.2183336, 4
  %.not226 = icmp eq i32 %i.bd, 0                 ; 2 uses
  %spec.select246 = select i1 %.not226, i32 %i.ba, i32 %.0172338
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.bf = add nsw i32 %spec.select246, -1
  %i.bg = call ptr @OPENSSL_sk_value(ptr noundef %i.be, i32 noundef %i.bf) #11 ; 6 uses
  %i.bh = icmp sgt i32 %i.ba, %i.as
  br i1 %i.bh, label %.thread263, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !61
  store ptr null, ptr %i.d, align 8, !tbaa !61
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !129
  %i.bk = call i32 %i.bj(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef %i.bg) #11, !inline_history !193 ; 2 uses
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !61
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 70, ptr %i.bm, align 8, !tbaa !63
  br label %.loopexit.sink.split

bb.y:                                             ; preds = %bb.w
  %.not227 = icmp eq i32 %i.bk, 0
  br i1 %.not227, label %.thread263, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = call ptr @X509_get0_pubkey(ptr noundef %i.bg) #11
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @__func__.X509_self_signed) #11
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 108, ptr noundef null) #11
  br label %.loopexit321

bb.ab:                                            ; preds = %bb.z
  %i.bp = call i32 @ossl_x509v3_cache_extensions(ptr noundef %i.bg) #11
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %.loopexit321, label %X509_self_signed.exit

X509_self_signed.exit:                            ; preds = %bb.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 232
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !38
  %i.bs = lshr i32 %i.br, 13
  %.lobit = and i32 %i.bs, 1                      ; 2 uses
  br i1 %.not226, label %.critedge249, label %bb.ac

.loopexit321:                                     ; preds = %bb.ab, %bb.aa
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @X509_free(ptr noundef %i.bt) #11
  br label %.critedge.sink.split

bb.ac:                                            ; preds = %X509_self_signed.exit
  %i.bu = icmp sgt i32 %i.ba, %.0172338
  %i.bv = icmp sgt i32 %.0172338, 0
  %or.cond4 = and i1 %i.bv, %i.bu
  %.not228 = icmp eq i32 %.lobit, 0
  %spec.select247 = select i1 %or.cond4, i1 %.not228, i1 false
  br i1 %spec.select247, label %.lr.ph, label %bb.ad, !prof !196

bb.ad:                                            ; preds = %bb.ac
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @X509_free(ptr noundef %i.bw) #11
  br label %.critedge.sink.split

.lr.ph:                                           ; preds = %bb.ac, %.lr.ph
  %.0192334 = phi i32 [ %i.bz, %.lr.ph ], [ %i.ba, %bb.ac ]
  %i.bx = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.by = call ptr @OPENSSL_sk_pop(ptr noundef %i.bx) #11
  call void @X509_free(ptr noundef %i.by) #11
  %i.bz = add nsw i32 %.0192334, -1               ; 2 uses
  %i.ca = icmp samesign ugt i32 %i.bz, %.0172338
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !194

._crit_edge:                                      ; preds = %.lr.ph
  %1 = and i32 %.2183336, -5                      ; 4 uses
  store i32 %.0172338, ptr %i.h, align 4, !tbaa !92
  br i1 %i.n, label %bb.ae, label %.critedge249.thread

bb.ae:                                            ; preds = %._crit_edge
  %i.cb = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.cc = call i32 @OPENSSL_sk_num(ptr noundef %i.cb) #11
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ce = load i32, ptr %i.aw, align 4, !tbaa !73
  %i.cf = load i32, ptr %i.h, align 4, !tbaa !92
  %.not229 = icmp slt i32 %i.ce, %i.cf
  br i1 %.not229, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 -1, ptr %i.aw, align 4, !tbaa !73
  %i.cg = load ptr, ptr %i.ax, align 8, !tbaa !72
  call void @X509_free(ptr noundef %i.cg) #11
  store ptr null, ptr %i.ax, align 8, !tbaa !72
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.af, %bb.ag
  %i.ch = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.ci = call i32 @OPENSSL_sk_num(ptr noundef %i.ch) #11
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.ai, label %.critedge249.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ck = load i32, ptr %i.ay, align 8, !tbaa !74
  %i.cl = load i32, ptr %i.h, align 4, !tbaa !92
  %.not230 = icmp slt i32 %i.ck, %i.cl
  br i1 %.not230, label %.critedge249.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 -1, ptr %i.ay, align 8, !tbaa !74
  br label %.critedge249.thread

.critedge249:                                     ; preds = %X509_self_signed.exit
  %.not231 = icmp eq i32 %.lobit, 0
  br i1 %.not231, label %.critedge249.thread, label %bb.ao

.critedge249.thread:                              ; preds = %bb.aj, %bb.ai, %bb.ah, %._crit_edge, %.critedge249
  %.3184367 = phi i32 [ %.2183336, %.critedge249 ], [ %1, %._crit_edge ], [ %1, %bb.ah ], [ %1, %bb.ai ], [ %1, %bb.aj ]
  %.1193365 = phi i32 [ %i.ba, %.critedge249 ], [ %.0172338, %._crit_edge ], [ %.0172338, %bb.ah ], [ %.0172338, %bb.ai ], [ %.0172338, %bb.aj ]
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.co = call i32 @OPENSSL_sk_push(ptr noundef %i.cm, ptr noundef %i.cn) #11
  %.not232 = icmp eq i32 %i.co, 0
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !95  ; 4 uses
  br i1 %.not232, label %.thread267.thread312, label %bb.ak

.thread267.thread312:                             ; preds = %.critedge249.thread
  call void @X509_free(ptr noundef %i.cp) #11
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3832, ptr noundef nonnull @__func__.build_chain) #11
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524303, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.cd

bb.ak:                                            ; preds = %.critedge249.thread
  %i.cq = call ptr @X509_get0_pubkey(ptr noundef %i.cp) #11
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @__func__.X509_self_signed) #11
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 108, ptr noundef null) #11
  br label %.critedge.sink.split

bb.am:                                            ; preds = %bb.ak
  %i.cs = call i32 @ossl_x509v3_cache_extensions(ptr noundef %i.cp) #11
  %.not.i256 = icmp eq i32 %i.cs, 0
  br i1 %.not.i256, label %.critedge.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 232
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !38
  %i.cv = and i32 %i.cu, 8192
  %i.cw = icmp ne i32 %i.cv, 0
  br label %X509_self_signed.exit258

bb.ao:                                            ; preds = %.critedge249
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.cy = call i32 @X509_cmp(ptr noundef nonnull %i.bg, ptr noundef %i.cx) #11
  %.not233 = icmp eq i32 %i.cy, 0
  br i1 %.not233, label %bb.ap, label %.thread272

.thread272:                                       ; preds = %bb.ao
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !95
  call void @X509_free(ptr noundef %i.cz) #11
  br label %.thread263

bb.ap:                                            ; preds = %bb.ao
  call void @X509_free(ptr noundef nonnull %i.bg) #11
  %i.da = add nsw i32 %i.ba, -1                   ; 3 uses
  store i32 %i.da, ptr %i.h, align 4, !tbaa !92
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.dd = call ptr @OPENSSL_sk_set(ptr noundef %i.db, i32 noundef %i.da, ptr noundef %i.dc) #11 ; 0 uses
  br label %X509_self_signed.exit258

X509_self_signed.exit258:                         ; preds = %bb.an, %bb.ap
  %.3184366 = phi i32 [ %.2183336, %bb.ap ], [ %.3184367, %bb.an ]
  %.2194 = phi i32 [ %i.da, %bb.ap ], [ %.1193365, %bb.an ] ; 2 uses
  %.0 = phi i1 [ true, %bb.ap ], [ %i.cw, %bb.an ]
  %i.de = load i32, ptr %i.h, align 4, !tbaa !92
  %.not235 = icmp sgt i32 %i.de, %.2194
  br i1 %.not235, label %.critedge.sink.split, label %bb.aq, !prof !138

bb.aq:                                            ; preds = %X509_self_signed.exit258
  %i.df = call fastcc i32 @check_trust(ptr noundef %0, i32 noundef %.2194) ; 2 uses
  %.not236 = icmp eq i32 %i.df, 3
  br i1 %.not236, label %bb.ar, label %.loopexit.sink.split

bb.ar:                                            ; preds = %bb.aq
  %i.dg = and i32 %.3184366, -2                   ; 2 uses
  br i1 %.0, label %.thread263, label %.thread267

.thread263:                                       ; preds = %bb.v, %.thread272, %bb.ar, %bb.y
  %.6187 = phi i32 [ %i.dg, %bb.ar ], [ %.2183336, %bb.y ], [ %.2183336, %.thread272 ], [ %.2183336, %bb.v ] ; 5 uses
  %.3177 = phi i32 [ 3, %bb.ar ], [ %.0174337, %bb.y ], [ %.0174337, %.thread272 ], [ %.0174337, %bb.v ] ; 6 uses
  %i.dh = and i32 %.6187, 1
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %.thread263
  %i.dj = and i32 %.6187, 4
  %.not238 = icmp eq i32 %i.dj, 0
  br i1 %.not238, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dk = add nsw i32 %.0172338, -1
  %i.dl = icmp sgt i32 %.0172338, 1
  br i1 %i.dl, label %.thread267, label %.loopexit.sink.split, !llvm.loop !195

bb.au:                                            ; preds = %bb.as
  br i1 %.1179, label %.loopexit.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dm = load i32, ptr %i.h, align 4, !tbaa !92  ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 2
  br i1 %i.dn, label %.loopexit.sink.split, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.do = or disjoint i32 %.6187, 4
  %i.dp = add nsw i32 %i.dm, -1
  br label %bb.ax

bb.ax:                                            ; preds = %.thread263, %bb.aw, %bb.u
  %.7188 = phi i32 [ %i.do, %bb.aw ], [ %.6187, %.thread263 ], [ %.2183336, %bb.u ] ; 8 uses
  %.4 = phi i32 [ %.3177, %bb.aw ], [ %.3177, %.thread263 ], [ %.0174337, %bb.u ] ; 2 uses
  %.2 = phi i32 [ %i.dp, %bb.aw ], [ %.0172338, %.thread263 ], [ %.0172338, %bb.u ] ; 7 uses
  %i.dq = and i32 %.7188, 1
  %.not240 = icmp eq i32 %i.dq, 0
  br i1 %.not240, label %.thread267, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.ds = call i32 @OPENSSL_sk_num(ptr noundef %i.dr) #11 ; 4 uses
  %i.dt = load i32, ptr %i.h, align 4, !tbaa !92
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.az, label %.critedge.sink.split, !prof !196

bb.az:                                            ; preds = %bb.ay
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.dw = add nsw i32 %i.ds, -1
  %i.dx = call ptr @OPENSSL_sk_value(ptr noundef %i.dv, i32 noundef %i.dw) #11 ; 4 uses
  %i.dy = call ptr @X509_get0_pubkey(ptr noundef %i.dx) #11
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @ERR_new() #11
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @__func__.X509_self_signed) #11
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef 108, ptr noundef null) #11
  br label %X509_self_signed.exit261

bb.bb:                                            ; preds = %bb.az
  %i.ea = call i32 @ossl_x509v3_cache_extensions(ptr noundef %i.dx) #11
  %.not.i259 = icmp eq i32 %i.ea, 0
  br i1 %.not.i259, label %X509_self_signed.exit261, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 232
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !38
  %i.ed = and i32 %i.ec, 8192
  %i.ee = icmp ne i32 %i.ed, 0
  %i.ef = icmp sgt i32 %i.ds, %i.as
  %or.cond = select i1 %i.ee, i1 true, i1 %i.ef
  br i1 %or.cond, label %.thread284, label %bb.bd

X509_self_signed.exit261:                         ; preds = %bb.ba, %bb.bb
  %.old = icmp sgt i32 %i.ds, %i.as
  br i1 %.old, label %.thread284, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %X509_self_signed.exit261
  %i.eg = call fastcc ptr @get0_best_issuer_sk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.ab, ptr noundef %i.dx) ; 3 uses
  store ptr %i.eg, ptr %i.a, align 8, !tbaa !95
end_hunk_0
