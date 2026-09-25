Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ech_internal?download=true
inline.NumInlined: 166
inline.NumDeleted: 29
begin_hunk_0_@ossl_ech_early_decrypt:bb.a
bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3096
  store i32 1, ptr %i.v, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3104
  store i16 -499, ptr %i.w, align 8, !tbaa !116
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.y = load i32, ptr %i.x, align 8, !tbaa !142
  %i.z = icmp eq i32 %i.y, 1
  %spec.select = zext i1 %i.z to i32              ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 16
  %.val174 = load i64, ptr %i.aa, align 8, !tbaa !134 ; 8 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !133   ; 6 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !121 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !124 ; 2 uses
  %i.ae = zext i8 %i.ad to i64                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2376
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !228
  %i.ag = icmp ugt i8 %i.ad, 32
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i64 %i.ab, 1                        ; 2 uses
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = icmp ugt i64 %i.ai, %.val174
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1989, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 47, i32 noundef 110, ptr noundef null) #10
  br label %.thread231

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 1 %i.al, i64 %i.ae, i1 false)
  %i.am = load i64, ptr %i.g, align 8, !tbaa !121 ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = call fastcc i32 @ech_get_outer_sni(ptr noundef %0, ptr noundef %i.j, ptr noundef nonnull %.val, i64 noundef %.val174, i64 noundef %i.am)
  %.not162.not = icmp eq i32 %i.an, 0
  br i1 %.not162.not, label %.thread231, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.n, label %._crit_edge200

._crit_edge200:                                   ; preds = %bb.m
  %.pre = load i64, ptr %i.f, align 8, !tbaa !121
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1998, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 47, i32 noundef 110, ptr noundef null) #10
  br label %.thread231

bb.o:                                             ; preds = %._crit_edge200, %bb.k
  %i.aq = phi i64 [ %.pre, %._crit_edge200 ], [ %i.o, %bb.k ] ; 3 uses
  %i.ar = add i64 %.val174, -4                    ; 2 uses
  %i.as = icmp ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2006, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #10
  br label %.thread231

bb.q:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %.val, i64 %i.aq  ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !124
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 8
  %i.ay = getelementptr i8, ptr %i.at, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !124
  %i.ba = zext i8 %i.az to i64
  %i.bb = or disjoint i64 %i.ax, %i.ba            ; 2 uses
  %i.bc = sub nuw i64 %i.ar, %i.aq
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2012, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #10
  br label %.thread231

bb.s:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !154
  store ptr %i.be, ptr %3, align 8, !tbaa !133
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !134
  %i.bh = call fastcc i32 @ech_decode_inbound_ech(ptr noundef %0, ptr noundef %3, ptr noundef %i.b, ptr noundef %i.h)
  %.not164.not = icmp eq i32 %i.bh, 0
  %.pre201 = load ptr, ptr %i.b, align 8, !tbaa !153 ; 12 uses
  br i1 %.not164.not, label %bb.au, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !121
  %i.bj = add i64 %i.bi, 6
  %i.bk = load i64, ptr %i.h, align 8, !tbaa !121
  %i.bl = add i64 %i.bj, %i.bk                    ; 3 uses
  store i64 %i.bl, ptr %i.h, align 8, !tbaa !121
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre201, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !156 ; 2 uses
  %i.bo = add i64 %i.bn, %i.bl
  %i.bp = icmp ult i64 %.val174, %i.bo
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2031, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 50, i32 noundef 110, ptr noundef null) #10
  br label %.thread237

bb.v:                                             ; preds = %bb.t
  %i.bq = call ptr @CRYPTO_memdup(ptr noundef nonnull %.val, i64 noundef %.val174, ptr noundef nonnull @.str, i32 noundef 2034) #10 ; 6 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2036, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #10
  br label %.thread237

bb.x:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bs, i8 0, i64 %i.bn, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 3132 ; 6 uses
  store i32 -1, ptr %i.bt, align 4, !tbaa !129
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !114 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2045, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 47, i32 noundef 110, ptr noundef null) #10
  br label %.thread237

bb.z:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !18 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.bw) #10 ; 3 uses
  %.not195 = icmp eq i32 %i.by, 0
  br i1 %.not195, label %.loopexit, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre201, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre201, i64 2
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph188, %.loopexit185
  %.0143187 = phi i32 [ 0, %.lr.ph188 ], [ %i.cw, %.loopexit185 ] ; 2 uses
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.cc = call ptr @OPENSSL_sk_value(ptr noundef %i.cb, i32 noundef %.0143187) #10 ; 4 uses
  %i.cd = load i8, ptr %i.bz, align 4, !tbaa !229
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 49
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !31
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %.preheader184, label %.loopexit185

.preheader184:                                    ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !28 ; 2 uses
  %.not196 = icmp eq i32 %i.ci, 0
  br i1 %.not196, label %.loopexit185, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader184
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29
  %i.cl = load i16, ptr %.pre201, align 8, !tbaa !157
  %i.cm = zext i32 %i.ci to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [6 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !127
  %i.cq = icmp eq i16 %i.cp, %i.cl
  br i1 %i.cq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !128
  %i.ct = load i16, ptr %i.ca, align 2, !tbaa !158
  %4 = icmp eq i16 %i.cs, %i.ct
  %spec.select173 = zext i1 %4 to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2141 = phi i32 [ 0, %bb.ac ], [ %spec.select173, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = icmp ne i64 %indvars.iv.next, %i.cm
  %5 = icmp eq i32 %.2141, 0
  %i.cv = and i1 %5, %i.cu
  br i1 %i.cv, label %bb.ac, label %.loopexit185, !llvm.loop !225

.loopexit185:                                     ; preds = %bb.ae, %.preheader184, %bb.ab
  %.3142 = phi i32 [ 0, %bb.ab ], [ 0, %.preheader184 ], [ %.2141, %bb.ae ] ; 2 uses
  %i.cw = add nuw nsw i32 %.0143187, 1            ; 2 uses
  %i.cx = icmp ne i32 %i.cw, %i.by
  %6 = icmp eq i32 %.3142, 0
  %i.cy = and i1 %i.cx, %6
  br i1 %i.cy, label %bb.ab, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %.loopexit185
  %7 = icmp eq i32 %.3142, 1
  br i1 %7, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  %i.cz = call fastcc ptr @hpke_decrypt_encch(ptr noundef %0, ptr noundef %i.cc, ptr noundef nonnull %.pre201, i64 noundef %.val174, ptr noundef %i.bq, i32 noundef %spec.select, ptr noundef %i.c) ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  store i32 1, ptr %i.bt, align 4, !tbaa !129
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !119
  %i.dd = and i64 %i.dc, 274877906944
  %.not165 = icmp eq i64 %i.dd, 0
  br i1 %.not165, label %.loopexit, label %.lr.ph193

bb.ai:                                            ; preds = %.lr.ph193
  %i.de = add nuw nsw i32 %.1144192, 1            ; 2 uses
  %.not166 = icmp eq i32 %i.de, %i.by
  br i1 %.not166, label %.loopexit, label %.lr.ph193, !llvm.loop !227

.lr.ph193:                                        ; preds = %bb.ah, %bb.ai
  %.1144192 = phi i32 [ %i.de, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.df = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.dg = call ptr @OPENSSL_sk_value(ptr noundef %i.df, i32 noundef %.1144192) #10
  %i.dh = call fastcc ptr @hpke_decrypt_encch(ptr noundef %0, ptr noundef %i.dg, ptr noundef %.pre201, i64 noundef %.val174, ptr noundef %i.bq, i32 noundef %spec.select, ptr noundef %i.c) ; 2 uses
  %.not167 = icmp eq ptr %i.dh, null
  br i1 %.not167, label %bb.ai, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph193
  store i32 0, ptr %i.bt, align 4, !tbaa !129
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %bb.aa, %bb.z, %bb.af, %bb.aj, %bb.ah
  %.2137 = phi ptr [ %i.dh, %bb.aj ], [ %i.cz, %bb.af ], [ null, %bb.ah ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.ai ] ; 5 uses
  call void @CRYPTO_free(ptr noundef nonnull %i.bq, ptr noundef nonnull @.str, i32 noundef 2092) #10
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3100
  store i32 1, ptr %i.di, align 4, !tbaa !141
  store i32 1, ptr %i.bt, align 4, !tbaa !129
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  store i32 0, ptr %i.dj, align 8, !tbaa !143
  %.not183 = icmp eq ptr %.2137, null
  br i1 %.not183, label %.thread177, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  store i32 0, ptr %i.bt, align 4, !tbaa !129
  store i32 1, ptr %i.dj, align 8, !tbaa !143
  br label %.thread177

.thread177:                                       ; preds = %bb.ak, %.loopexit
  call fastcc void @ossl_ech_encch_free(ptr noundef %.pre201)
  call void @CRYPTO_free(ptr noundef %.pre201, ptr noundef nonnull @.str, i32 noundef 2117) #10
  store ptr null, ptr %i.b, align 8, !tbaa !153
  %i.dk = load i32, ptr %i.bt, align 4, !tbaa !129
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread177
  call void @CRYPTO_free(ptr noundef %.2137, ptr noundef nonnull @.str, i32 noundef 2120) #10
  br label %bb.aw

bb.am:                                            ; preds = %.thread177
  %i.dm = load i64, ptr %i.c, align 8, !tbaa !121
  %i.dn = call fastcc i32 @ech_decode_inner(ptr noundef %0, ptr noundef nonnull %.val, i64 noundef %.val174, ptr noundef %.2137, i64 noundef %i.dm)
  %.not168.not = icmp eq i32 %i.dn, 0
  br i1 %.not168.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2125, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #10
  br label %.thread231

bb.ao:                                            ; preds = %bb.am
  call void @CRYPTO_free(ptr noundef %.2137, ptr noundef nonnull @.str, i32 noundef 2128) #10
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !147 ; 4 uses
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !148 ; 5 uses
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2137, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #10
  br label %.thread231

bb.aq:                                            ; preds = %bb.ao
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dq, ptr %i.dt, align 8, !tbaa !154
  store ptr %i.dq, ptr %2, align 8, !tbaa !133
  %i.du = getelementptr i8, ptr %2, i64 16        ; 2 uses
  store i64 %i.dr, ptr %i.du, align 8, !tbaa !134
  %i.dv = icmp samesign ult i64 %i.dr, 4
  br i1 %i.dv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2142, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #10
  br label %.thread231

bb.as:                                            ; preds = %bb.aq
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dw, ptr %2, align 8, !tbaa !133
  %i.dx = add nsw i64 %i.dr, -4
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !134
  %i.dy = call i32 @ossl_ech_intbuf_add(ptr noundef nonnull %0, ptr noundef %i.dq, i64 noundef %i.dr, i32 noundef 0)
  %.not171.not = icmp eq i32 %i.dy, 0
  br i1 %.not171.not, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @ERR_new() #10
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @__func__.ossl_ech_early_decrypt) #10
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #10
  br label %.thread231

.thread231:                                       ; preds = %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.ar, %bb.an, %bb.ap, %bb.at
  %.3.ph = phi ptr [ null, %bb.at ], [ null, %bb.ap ], [ %.2137, %bb.an ], [ null, %bb.ar ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.n ], [ null, %bb.l ], [ null, %bb.j ]
  call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2153) #10
  br label %bb.av

.thread237:                                       ; preds = %bb.w, %bb.y, %bb.u
  %.0134.ph = phi ptr [ null, %bb.u ], [ %i.bq, %bb.y ], [ null, %bb.w ]
  call void @CRYPTO_free(ptr noundef %.0134.ph, ptr noundef nonnull @.str, i32 noundef 2153) #10
  br label %ossl_ech_encch_free.exit

bb.au:                                            ; preds = %bb.s
  call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2153) #10
  %.not172 = icmp eq ptr %.pre201, null
  br i1 %.not172, label %bb.av, label %ossl_ech_encch_free.exit

ossl_ech_encch_free.exit:                         ; preds = %.thread237, %bb.au
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre201, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !159
  call void @CRYPTO_free(ptr noundef %i.ea, ptr noundef nonnull @.str, i32 noundef 1196) #10
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre201, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !160
  call void @CRYPTO_free(ptr noundef %i.ec, ptr noundef nonnull @.str, i32 noundef 1197) #10
  call void @CRYPTO_free(ptr noundef nonnull %.pre201, ptr noundef nonnull @.str, i32 noundef 2156) #10
  br label %bb.av

bb.av:                                            ; preds = %.thread231, %ossl_ech_encch_free.exit, %bb.au
  %.3235 = phi ptr [ %.3.ph, %.thread231 ], [ null, %ossl_ech_encch_free.exit ], [ null, %bb.au ]
  call void @CRYPTO_free(ptr noundef %.3235, ptr noundef nonnull @.str, i32 noundef 2158) #10
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.e, %bb.d, %bb.a, %bb.av, %bb.al, %bb.g, %bb.c
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.av ], [ 1, %bb.al ], [ 1, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ech_get_outer_sni(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.PACKET, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %.not = icmp ult i64 %4, %3
  br i1 %.not, label %bb.b, label %PACKET_buf_init.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 6 uses
  %i.b = sub nuw i64 %3, %4                       ; 3 uses
  %or.cond51 = icmp slt i64 %i.b, 2
  br i1 %or.cond51, label %PACKET_buf_init.exit.thread, label %PACKET_get_net_2.exit

PACKET_get_net_2.exit:                            ; preds = %bb.b
  %i.c = load i8, ptr %i.a, align 1, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !124
  %i.f = or i8 %i.e, %i.c
  %i.g = icmp ne i8 %i.f, 0
  %i.h = icmp samesign ult i64 %i.b, 4
  %or.cond52 = or i1 %i.h, %i.g
  br i1 %or.cond52, label %PACKET_buf_init.exit.thread, label %bb.c

bb.c:                                             ; preds = %PACKET_get_net_2.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !124
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !124
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.l, %i.o               ; 2 uses
  %i.q = add nsw i64 %i.b, -4
  %i.r = icmp samesign ult i64 %i.q, %i.p
end_hunk_0
