Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/noisydgrambio?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
begin_hunk_0_@noisy_dgram_recvmmsg:bb.a

.lr.ph.i:                                         ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16464 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i
  %.04960.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aj, %bb.k ] ; 3 uses
  %i.ab = add i64 %.04960.i, %.pre.i
  %i.ac = and i64 %i.ab, 1023
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %.not.i = icmp ult i64 %i.af, %..i.i
  br i1 %.not.i, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !27
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.ai = sub i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !30
  %i.aj = add nuw i64 %.04960.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.z
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !31

._crit_edge.i:                                    ; preds = %bb.k, %bb.j, %bb.i
  %.049.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.z, %bb.k ], [ %.04960.i, %bb.j ] ; 2 uses
  %i.ak = add i64 %.049.lcssa.i, %.pre.i
  %i.al = and i64 %i.ak, 1023                     ; 2 uses
  store i64 %i.al, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  %i.am = sub i64 %i.z, %.049.lcssa.i             ; 2 uses
  store i64 %i.am, ptr %i.y, align 8, !tbaa !25
  %.not72.i = icmp eq i64 %i.t, 0
  br i1 %.not72.i, label %bandwidth_limit.exit, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16464 ; 2 uses
  %.promoted.i = load i64, ptr %i.an, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph67.i
  %i.ao = phi i64 [ %i.am, %.lr.ph67.i ], [ %i.bd, %bb.p ] ; 3 uses
  %i.ap = phi i64 [ %i.al, %.lr.ph67.i ], [ %i.be, %bb.p ] ; 3 uses
  %i.aq = phi i64 [ %.promoted.i, %.lr.ph67.i ], [ %.pre-phi.i, %bb.p ]
  %.15065.i = phi i64 [ 0, %.lr.ph67.i ], [ %i.bj, %bb.p ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.15065.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !33 ; 2 uses
  %i.au = add i64 %i.at, %i.aq                    ; 3 uses
  %i.av = udiv i64 %i.au, 10
  %i.aw = icmp ugt i64 %i.av, %i.w
  br i1 %i.aw, label %bandwidth_limit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp ugt i64 %i.ao, 1023
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ap
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !27
  %i.ba = add nuw nsw i64 %i.ap, 1
  %i.bb = and i64 %i.ba, 1023                     ; 2 uses
  store i64 %i.bb, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  %.pre74.i = sub i64 %i.au, %i.az
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bc = add nuw nsw i64 %i.ao, 1                ; 2 uses
  store i64 %i.bc, ptr %i.y, align 8, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi.i = phi i64 [ %.pre74.i, %bb.n ], [ %i.au, %bb.o ] ; 2 uses
  %i.bd = phi i64 [ %i.ao, %bb.n ], [ %i.bc, %bb.o ] ; 2 uses
  %i.be = phi i64 [ %i.bb, %bb.n ], [ %i.ap, %bb.o ] ; 2 uses
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = and i64 %i.bf, 1023
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.bg ; 2 uses
  store i64 %i.at, ptr %i.bh, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %.sroa.02.0, ptr %i.bi, align 8, !tbaa !34
  store i64 %.pre-phi.i, ptr %i.an, align 8, !tbaa !30
  %i.bj = add nuw nsw i64 %.15065.i, 1            ; 2 uses
  %exitcond73.not.i = icmp eq i64 %i.bj, %spec.store.select.i
  br i1 %exitcond73.not.i, label %bandwidth_limit.exit.thread, label %bb.l, !llvm.loop !35

bandwidth_limit.exit:                             ; preds = %bb.l, %bb.h, %._crit_edge.i
  %.0.i = phi i64 [ %i.t, %bb.h ], [ %spec.store.select.i, %._crit_edge.i ], [ %.15065.i, %bb.l ] ; 2 uses
  %i.bk = icmp eq i64 %.0.i, 0
  br i1 %i.bk, label %.thread127, label %bandwidth_limit.exit.thread

.thread127:                                       ; preds = %bandwidth_limit.exit
  store i64 0, ptr %5, align 8, !tbaa !34
  br label %bb.ah

bandwidth_limit.exit.thread:                      ; preds = %bb.p, %bandwidth_limit.exit
  %.0.i119 = phi i64 [ %.0.i, %bandwidth_limit.exit ], [ %spec.store.select.i, %bb.p ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread129, label %.lr.ph150

.lr.ph150:                                        ; preds = %bandwidth_limit.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  br label %bb.q

.thread129:                                       ; preds = %bandwidth_limit.exit.thread
  store i64 %.0.i119, ptr %5, align 8, !tbaa !34
  br label %.thread124

bb.q:                                             ; preds = %.lr.ph150, %bb.ag
  %.180148 = phi i64 [ 0, %.lr.ph150 ], [ %i.ek, %bb.ag ] ; 5 uses
  %.084147 = phi ptr [ %1, %.lr.ph150 ], [ %i.el, %bb.ag ] ; 6 uses
  %.085146 = phi i64 [ %.0.i119, %.lr.ph150 ], [ %.287, %bb.ag ] ; 8 uses
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !38 ; 2 uses
  %.not98 = icmp eq i64 %i.br, 0
  br i1 %.not98, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !39
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bu = icmp ult i64 %.085146, %3
  br i1 %i.bu, label %.preheader131, label %bb.v

.preheader131:                                    ; preds = %bb.s
  %i.bv = icmp ugt i64 %.085146, %.180148
  br i1 %i.bv, label %.lr.ph144, label %._crit_edge145

bb.t:                                             ; preds = %.lr.ph144
  %i.bw = add i64 %.082143, -1                    ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, %.180148
  br i1 %i.bx, label %.lr.ph144, label %._crit_edge145, !llvm.loop !40

.lr.ph144:                                        ; preds = %.preheader131, %bb.t
  %.082143 = phi i64 [ %i.bw, %bb.t ], [ %.085146, %.preheader131 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.082143 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -40
  %i.ca = tail call i32 @bio_msg_copy(ptr noundef nonnull %i.by, ptr noundef %i.bz) #3
  %.not105 = icmp eq i32 %i.ca, 0
  br i1 %.not105, label %.thread124, label %bb.t

._crit_edge145:                                   ; preds = %bb.t, %.preheader131
  %i.cb = tail call i32 @bio_msg_copy(ptr noundef %.084147, ptr noundef nonnull %i.bp) #3
  %.not104 = icmp eq i32 %i.cb, 0
  br i1 %.not104, label %.thread124, label %bb.u

bb.u:                                             ; preds = %._crit_edge145
  %i.cc = add i64 %.085146, 1
  store i64 0, ptr %i.bo, align 8, !tbaa !38
  br label %bb.ag

bb.v:                                             ; preds = %bb.s
  store i64 0, ptr %i.bo, align 8, !tbaa !38
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r, %bb.q
  %i.cd = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.ce = load ptr, ptr %.084147, align 8, !tbaa !41
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !42
  %i.cg = tail call i32 @test_random() #3
  %i.ch = urem i32 %i.cg, %i.cd
  %.not.i108 = icmp eq i32 %i.ch, 0
  br i1 %.not.i108, label %bb.x, label %get_noise.exit

bb.x:                                             ; preds = %bb.w
  %i.ci = tail call i32 @test_random() #3
  %i.cj = and i32 %i.ci, 3                        ; 4 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = icmp eq i32 %i.cj, 2                    ; 3 uses
  %i.cm = or i1 %i.ck, %i.cl                      ; 3 uses
  %i.cn = add nsw i32 %i.cj, -1
  %or.cond.i = icmp ult i32 %i.cn, 2
  br i1 %or.cond.i, label %.thread.i, label %bb.y

.thread.i:                                        ; preds = %bb.x
  %i.co = tail call i32 @test_random() #3
  %i.cp = and i32 %i.co, 3
  %i.cq = add nuw nsw i32 %i.cp, 1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = zext i1 %i.cl to i64
  %i.ct = add nuw nsw i64 %i.cr, %i.cs
  br label %get_noise.exit

bb.y:                                             ; preds = %bb.x
  %i.cu = zext i1 %i.cl to i64                    ; 2 uses
  %i.cv = icmp eq i32 %i.cj, 3
  br i1 %i.cv, label %bb.z, label %get_noise.exit

bb.z:                                             ; preds = %bb.y
  %i.cw = tail call i32 @test_random() #3
  %i.cx = urem i32 %i.cw, 255
  %i.cy = add nuw nsw i32 %i.cx, 1
  %i.cz = tail call i32 @test_random() #3
  %i.da = and i32 %i.cz, 7
  %i.db = shl nuw nsw i32 %i.cy, %i.da
  %i.dc = trunc nuw nsw i32 %i.db to i16
  %i.dd = tail call i32 @test_random() #3
  %isneg = icmp slt i8 %i.cf, 0
  %6 = select i1 %isneg, i32 50, i32 25
  %i.de = urem i32 %i.dd, %6
  %i.df = zext nneg i32 %i.de to i64
  br label %get_noise.exit

get_noise.exit:                                   ; preds = %bb.w, %.thread.i, %bb.y, %bb.z
  %.0117 = phi i64 [ %i.ct, %.thread.i ], [ %i.cu, %bb.z ], [ %i.cu, %bb.y ], [ 0, %bb.w ] ; 2 uses
  %.1116.shrunk = phi i1 [ %i.cm, %.thread.i ], [ %i.cm, %bb.z ], [ %i.cm, %bb.y ], [ false, %bb.w ] ; 2 uses
  %.1 = phi i16 [ 0, %.thread.i ], [ %i.dc, %bb.z ], [ 0, %bb.y ], [ 0, %bb.w ] ; 3 uses
  %.0 = phi i64 [ 0, %.thread.i ], [ %i.df, %bb.z ], [ 0, %bb.y ], [ 0, %bb.w ] ; 2 uses
  %i.dg = load i32, ptr %i.bq, align 8, !tbaa !12 ; 2 uses
  %.not99 = icmp eq i32 %i.dg, 0
  br i1 %.not99, label %bb.aa, label %.thread

.thread:                                          ; preds = %get_noise.exit
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.bq, align 8, !tbaa !12
  br label %flip_bits.exit

bb.aa:                                            ; preds = %get_noise.exit
  %i.di = getelementptr inbounds nuw i8, ptr %.084147, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !33 ; 3 uses
  %i.dk = icmp eq i16 %.1, 0
  %i.dl = icmp ult i64 %i.dj, 2
  %or.cond.i109 = or i1 %i.dk, %i.dl
  br i1 %or.cond.i109, label %flip_bits.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %.084147, align 8, !tbaa !41
  %i.dn = add nuw nsw i64 %.0, 2
  %i.do = icmp ult i64 %i.dj, %i.dn
  %i.dp = add i64 %i.dj, -2
  %spec.select.i = select i1 %i.do, i64 %i.dp, i64 %.0
  %i.dq = lshr i16 %.1, 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %spec.select.i ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !42
  %i.dt = trunc nuw nsw i16 %i.dq to i8
  %i.du = xor i8 %i.ds, %i.dt
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !42
  %i.dv = getelementptr i8, ptr %i.dr, i64 1      ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !42
  %i.dx = trunc i16 %.1 to i8
  %i.dy = xor i8 %i.dw, %i.dx
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !42
  br label %flip_bits.exit

flip_bits.exit:                                   ; preds = %.thread, %bb.aa, %bb.ab
  %.0115123.shrunk = phi i1 [ false, %.thread ], [ %.1116.shrunk, %bb.aa ], [ %.1116.shrunk, %bb.ab ]
  %.not100 = icmp eq i64 %.0117, 0
  br i1 %.not100, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %flip_bits.exit
  %i.dz = load i64, ptr %i.bo, align 8, !tbaa !38
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eb = tail call i32 @bio_msg_copy(ptr noundef nonnull %i.bp, ptr noundef nonnull %.084147) #3
  %.not101 = icmp eq i32 %i.eb, 0
  br i1 %.not101, label %.thread124, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !39
  %i.ed = add i64 %i.ec, %.0117
  store i64 %i.ed, ptr %i.bo, align 8, !tbaa !38
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %flip_bits.exit
  br i1 %.0115123.shrunk, label %.preheader.preheader, label %bb.ag

.preheader.preheader:                             ; preds = %bb.af
  %.183183 = add nuw i64 %.180148, 1              ; 2 uses
  %i.ee = icmp ult i64 %.183183, %.085146
  br i1 %i.ee, label %.lr.ph186, label %.preheader._crit_edge

.preheader:                                       ; preds = %.lr.ph186
  %.183 = add nuw i64 %.183185, 1                 ; 2 uses
  %i.ef = icmp ult i64 %.183, %.085146
  br i1 %i.ef, label %.lr.ph186, label %.preheader._crit_edge, !llvm.loop !43

.lr.ph186:                                        ; preds = %.preheader.preheader, %.preheader
  %.183185 = phi i64 [ %.183, %.preheader ], [ %.183183, %.preheader.preheader ] ; 3 uses
  %.183.in184 = phi i64 [ %.183185, %.preheader ], [ %.180148, %.preheader.preheader ]
  %i.eg = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.183.in184
  %i.eh = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.183185
  %i.ei = tail call i32 @bio_msg_copy(ptr noundef %i.eg, ptr noundef nonnull %i.eh) #3
  %.not103 = icmp eq i32 %i.ei, 0
  br i1 %.not103, label %.thread124, label %.preheader, !llvm.loop !43

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.ej = add i64 %.085146, -1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.u, %.preheader._crit_edge, %bb.af
  %.287 = phi i64 [ %i.ej, %.preheader._crit_edge ], [ %i.cc, %bb.u ], [ %.085146, %bb.af ] ; 4 uses
  %i.ek = add nuw i64 %.180148, 1                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.084147, i64 40
  %i.em = load i64, ptr %i.c, align 8, !tbaa !39
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %i.c, align 8, !tbaa !39
  %i.eo = icmp ult i64 %i.ek, %.287
  br i1 %i.eo, label %bb.q, label %._crit_edge151, !llvm.loop !44

._crit_edge151:                                   ; preds = %bb.ag
  store i64 %.287, ptr %5, align 8, !tbaa !34
  %i.ep = icmp eq i64 %.287, 0
  br i1 %i.ep, label %bb.ah, label %.thread124

bb.ah:                                            ; preds = %.thread127, %._crit_edge151
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 467, ptr noundef nonnull @__func__.noisy_dgram_recvmmsg) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 112, ptr noundef null) #3
  br label %.thread124

.thread124:                                       ; preds = %.peel.next, %bb.ad, %._crit_edge145, %.lr.ph144, %.lr.ph186, %.lr.ph, %.thread129, %._crit_edge151, %._crit_edge, %bb.b, %bb.a, %bb.ah
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %.lr.ph ], [ 0, %bb.ah ], [ 0, %._crit_edge ], [ 1, %.thread129 ], [ 0, %.lr.ph186 ], [ 0, %bb.a ], [ 1, %._crit_edge151 ], [ 0, %.lr.ph144 ], [ 0, %bb.ad ], [ 0, %._crit_edge145 ], [ 0, %.peel.next ]
  ret i32 %.2
}

declare i32 @BIO_meth_set_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @noisy_dgram_new(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 32912, ptr noundef nonnull @.str.1, i32 noundef 487) #3 ; 7 uses
  %i.b = tail call i32 @test_ptr(ptr noundef nonnull @.str.1, i32 noundef 489, ptr noundef nonnull @.str.2, ptr noundef %i.a) #3
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 5, ptr %i.c, align 4, !tbaa !18
  %i.d = tail call noalias ptr @CRYPTO_malloc(i64 noundef 1472, ptr noundef nonnull @.str.1, i32 noundef 493) #3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = tail call ptr @BIO_ADDR_new() #3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !46
  %i.h = tail call ptr @BIO_ADDR_new() #3         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !47
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %data_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp eq ptr %i.h, null
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %data_free.exit, label %bb.d

data_free.exit:                                   ; preds = %bb.c, %bb.b
  tail call void @CRYPTO_free(ptr noundef %i.j, ptr noundef nonnull @.str.1, i32 noundef 479) #3
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !46
  tail call void @BIO_ADDR_free(ptr noundef %i.o) #3
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !47
  tail call void @BIO_ADDR_free(ptr noundef %i.p) #3
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i32 noundef 482) #3
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @BIO_set_data(ptr noundef %0, ptr noundef nonnull %i.a) #3
  tail call void @BIO_set_init(ptr noundef %0, i32 noundef 1) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %data_free.exit
  %.0 = phi i32 [ 0, %data_free.exit ], [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @BIO_meth_set_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @noisy_dgram_free(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #3 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %data_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  tail call void @CRYPTO_free(ptr noundef %i.d, ptr noundef nonnull @.str.1, i32 noundef 479) #3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  tail call void @BIO_ADDR_free(ptr noundef %i.f) #3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  tail call void @BIO_ADDR_free(ptr noundef %i.h) #3
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i32 noundef 482) #3
  br label %data_free.exit

data_free.exit:                                   ; preds = %bb.a, %bb.b
  tail call void @BIO_set_data(ptr noundef %0, ptr noundef null) #3
  tail call void @BIO_set_init(ptr noundef %0, i32 noundef 0) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @bio_f_noisy_dgram_filter_free() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @method_noisy_dgram, align 8, !tbaa !9
end_hunk_0
