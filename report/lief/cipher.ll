Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/cipher?download=true
inline.NumInlined: 52
inline.NumDeleted: 25
begin_hunk_0_@mbedtls_cipher_update:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %1, i64 %2, i1 false)
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !29
  %i.be = add i64 %i.bd, %2
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !29
  br label %.thread201

.thread200:                                       ; preds = %bb.p, %bb.n, %bb.q, %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !29 ; 3 uses
  %.not184 = icmp eq i64 %i.bg, 0
  br i1 %.not184, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.thread200
  %i.bh = sub i64 %i.i, %i.bg                     ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %1, i64 %i.bh, i1 false)
  %.val196 = load i32, ptr %i.f, align 8
  %i.bk = lshr i32 %.val196, 26
  %i.bl = and i32 %i.bk, 31
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = tail call i32 %i.bq(ptr noundef %i.bs, i32 noundef %i.ao, i64 noundef %i.i, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bi, ptr noundef %3) #15 ; 2 uses
  %.not185 = icmp eq i32 %i.bu, 0
  br i1 %.not185, label %bb.u, label %.thread201

bb.u:                                             ; preds = %bb.t
  %i.bv = load i64, ptr %4, align 8, !tbaa !30
  %i.bw = add i64 %i.bv, %i.i
  store i64 %i.bw, ptr %4, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  store i64 0, ptr %i.bf, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh
  %i.bz = sub i64 %2, %i.bh
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread200
  %.0162 = phi ptr [ %i.by, %bb.u ], [ %1, %.thread200 ] ; 2 uses
  %.0160 = phi i64 [ %i.bz, %bb.u ], [ %2, %.thread200 ] ; 4 uses
  %.0159 = phi ptr [ %i.bx, %bb.u ], [ %3, %.thread200 ]
  %.not186 = icmp eq i64 %.0160, 0
  br i1 %.not186, label %.thread201, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = urem i64 %.0160, %i.i                   ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cc = load i32, ptr %i.an, align 4, !tbaa !27
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !31
  %.not187 = icmp eq ptr %i.cf, null
  %spec.select = select i1 %.not187, i64 0, i64 %i.i
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %.0 = phi i64 [ %i.ca, %bb.w ], [ %spec.select, %bb.y ], [ 0, %bb.x ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ch = sub i64 %.0160, %.0                     ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0162, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr align 1 %i.ci, i64 %.0, i1 false)
  %i.cj = load i64, ptr %i.bf, align 8, !tbaa !29
  %i.ck = add i64 %i.cj, %.0
  store i64 %i.ck, ptr %i.bf, align 8, !tbaa !29
  %.not188 = icmp eq i64 %.0160, %.0
  br i1 %.not188, label %.thread201, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = load ptr, ptr %0, align 8, !tbaa !25
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %.val195 = load i32, ptr %i.cm, align 8
  %i.cn = lshr i32 %.val195, 26
  %i.co = and i32 %i.cn, 31
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !32
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !21
  %i.cw = load i32, ptr %i.an, align 4, !tbaa !27
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cy = tail call i32 %i.ct(ptr noundef %i.cv, i32 noundef %i.cw, i64 noundef %i.ch, ptr noundef nonnull %i.cx, ptr noundef %.0162, ptr noundef %.0159) #15 ; 2 uses
  %.not189 = icmp eq i32 %i.cy, 0
  br i1 %.not189, label %bb.ab, label %.thread201

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load i64, ptr %4, align 8, !tbaa !30
  %i.da = add i64 %i.cz, %i.ch
  store i64 %i.da, ptr %4, align 8, !tbaa !30
  br label %.thread201

bb.ac:                                            ; preds = %bb.m
  %i.db = lshr i32 %i.g, 26
  %i.dc = and i32 %i.db, 31
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !57
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.do = tail call i32 %i.dh(ptr noundef %i.dj, i32 noundef %i.dl, i64 noundef %2, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dn, ptr noundef %1, ptr noundef %3) #15 ; 2 uses
  %.not181 = icmp eq i32 %i.do, 0
  br i1 %.not181, label %bb.ad, label %.thread201

bb.ad:                                            ; preds = %bb.ac
  store i64 %2, ptr %4, align 8, !tbaa !30
  br label %.thread201

bb.ae:                                            ; preds = %bb.m
  %i.dp = lshr i32 %i.g, 26
  %i.dq = and i32 %i.dp, 31
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !58
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ea = tail call i32 %i.dv(ptr noundef %i.dx, i64 noundef %2, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dz, ptr noundef %1, ptr noundef %3) #15 ; 2 uses
  %.not180 = icmp eq i32 %i.ea, 0
  br i1 %.not180, label %bb.af, label %.thread201

bb.af:                                            ; preds = %bb.ae
  store i64 %2, ptr %4, align 8, !tbaa !30
  br label %.thread201

bb.ag:                                            ; preds = %bb.m
  %i.eb = lshr i32 %i.g, 26
  %i.ec = and i32 %i.eb, 31
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !59
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.en = tail call i32 %i.eh(ptr noundef %i.ej, i64 noundef %2, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.el, ptr noundef nonnull %i.em, ptr noundef %1, ptr noundef %3) #15 ; 2 uses
  %.not179 = icmp eq i32 %i.en, 0
  br i1 %.not179, label %bb.ah, label %.thread201

bb.ah:                                            ; preds = %bb.ag
  store i64 %2, ptr %4, align 8, !tbaa !30
  br label %.thread201

bb.ai:                                            ; preds = %bb.m
  %i.eo = lshr i32 %i.g, 26
  %i.ep = and i32 %i.eo, 31
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !60
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !21
  %i.ex = tail call i32 %i.eu(ptr noundef %i.ew, i64 noundef %2, ptr noundef %1, ptr noundef %3) #15 ; 2 uses
  %.not178 = icmp eq i32 %i.ex, 0
  br i1 %.not178, label %bb.aj, label %.thread201

bb.aj:                                            ; preds = %bb.ai
  store i64 %2, ptr %4, align 8, !tbaa !30
  br label %.thread201

.thread201:                                       ; preds = %bb.v, %bb.m, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.s, %bb.t, %bb.aa, %bb.ab, %bb.z, %bb.k, %bb.l, %bb.e, %bb.d, %mbedtls_cipher_get_block_size.exit, %bb.b, %bb.a, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.i, %bb.g, %bb.f
  %.1 = phi i32 [ %i.ex, %bb.ai ], [ -135, %bb.a ], [ -24704, %bb.b ], [ -25472, %mbedtls_cipher_get_block_size.exit ], [ %i.x, %bb.e ], [ -25216, %bb.d ], [ %i.aa, %bb.f ], [ %i.ad, %bb.g ], [ %i.ai, %bb.i ], [ 0, %bb.aj ], [ -135, %bb.k ], [ 0, %bb.z ], [ 0, %bb.ad ], [ %i.do, %bb.ac ], [ 0, %bb.af ], [ %i.ea, %bb.ae ], [ 0, %bb.ah ], [ %i.en, %bb.ag ], [ -135, %bb.l ], [ 0, %bb.s ], [ %i.cy, %bb.aa ], [ %i.bu, %bb.t ], [ 0, %bb.ab ], [ -24704, %bb.m ], [ 0, %bb.v ]
  ret i32 %.1
}

declare i32 @mbedtls_gcm_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @mbedtls_ccm_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @mbedtls_chachapoly_update(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_cipher_finish_padded(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %2, align 8, !tbaa !30
  store i64 0, ptr %3, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = and i32 %i.g, 61440
  %i.i = icmp eq i32 %i.h, 8192
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 12
  %i.n = and i32 %i.m, 15                         ; 2 uses
  %switch.tableidx = add nsw i32 %i.n, -3         ; 2 uses
  %i.o = icmp ult i32 %switch.tableidx, 8
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -33, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond75 = select i1 %i.o, i1 %switch.lobit, i1 false
  %i.p = and i32 %i.g, 16646144
  %switch = icmp eq i32 %i.p, 4587520
  %or.cond76 = or i1 %or.cond75, %switch
  br i1 %or.cond76, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.n, label %switch.lookup [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %.not52 = icmp eq i64 %i.r, 0
  %. = select i1 %.not52, i32 0, i32 -25216
  br label %switch.lookup

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 2 uses
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.i, label %mbedtls_cipher_get_block_size.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %mbedtls_cipher_get_iv_size.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29
  %.not51 = icmp eq i64 %i.z, 0
  %.53 = select i1 %.not51, i32 0, i32 -25216
  br label %switch.lookup

mbedtls_cipher_get_iv_size.exit:                  ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  %i.ad = lshr i32 %i.g, 3
  %i.ae = and i32 %i.ad, 28
  %i.af = trunc i64 %i.ac to i32
  %.0.i = select i1 %.not.i, i32 %i.ae, i32 %i.af
  %i.ag = sext i32 %.0.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !29
  tail call void %i.w(ptr noundef nonnull %i.aa, i64 noundef %i.ag, i64 noundef %i.ai) #15
  %.pre = load ptr, ptr %0, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.val.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre66 = load i32, ptr %i.s, align 4, !tbaa !27
  %.pre67 = and i32 %.val.pre, 31
  %.pre68 = zext nneg i32 %.pre67 to i64
  br label %mbedtls_cipher_get_block_size.exit60

mbedtls_cipher_get_block_size.exit:               ; preds = %bb.h
  %i.aj = and i32 %i.g, 31
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %.not = icmp eq i64 %i.am, %i.ak
  br i1 %.not, label %mbedtls_cipher_get_block_size.exit60, label %bb.k

bb.k:                                             ; preds = %mbedtls_cipher_get_block_size.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = icmp eq i64 %i.am, 0
  %or.cond = and i1 %i.aq, %i.ap
  %spec.select = select i1 %or.cond, i32 0, i32 -25216
  br label %switch.lookup

mbedtls_cipher_get_block_size.exit60:             ; preds = %mbedtls_cipher_get_block_size.exit, %mbedtls_cipher_get_iv_size.exit
  %.pre-phi69 = phi i64 [ %i.ak, %mbedtls_cipher_get_block_size.exit ], [ %.pre68, %mbedtls_cipher_get_iv_size.exit ]
  %4 = phi i32 [ %i.t, %mbedtls_cipher_get_block_size.exit ], [ %.pre66, %mbedtls_cipher_get_iv_size.exit ]
  %.val = phi i32 [ %i.g, %mbedtls_cipher_get_block_size.exit ], [ %.val.pre, %mbedtls_cipher_get_iv_size.exit ]
  %i.ar = lshr i32 %.val, 26
  %i.as = and i32 %i.ar, 31
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = tail call i32 %i.ax(ptr noundef %i.az, i32 noundef %4, i64 noundef %.pre-phi69, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef %1) #15 ; 2 uses
  %.not50 = icmp eq i32 %i.bc, 0
  br i1 %.not50, label %bb.l, label %switch.lookup

bb.l:                                             ; preds = %mbedtls_cipher_get_block_size.exit60
  %i.bd = load i32, ptr %i.s, align 4, !tbaa !27
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %.val55 = load ptr, ptr %0, align 8, !tbaa !25  ; 2 uses
  %i.bh = icmp eq ptr %.val55, null
  br i1 %i.bh, label %mbedtls_cipher_get_block_size.exit62, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.val55, i64 8
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = and i32 %i.bj, 31
  %i.bl = zext nneg i32 %i.bk to i64
  br label %mbedtls_cipher_get_block_size.exit62

mbedtls_cipher_get_block_size.exit62:             ; preds = %bb.m, %bb.n
  %.0.i61 = phi i64 [ %i.bl, %bb.n ], [ 0, %bb.m ]
  %i.bm = tail call i32 %i.bg(ptr noundef %1, i64 noundef %.0.i61, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  br label %switch.lookup

bb.o:                                             ; preds = %bb.l
  %.val54 = load ptr, ptr %0, align 8, !tbaa !25  ; 2 uses
  %i.bn = icmp eq ptr %.val54, null
  br i1 %i.bn, label %mbedtls_cipher_get_block_size.exit64, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %.val54, i64 8
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = and i32 %i.bp, 31
  %i.br = zext nneg i32 %i.bq to i64
  br label %mbedtls_cipher_get_block_size.exit64

mbedtls_cipher_get_block_size.exit64:             ; preds = %bb.o, %bb.p
  %.0.i63 = phi i64 [ %i.br, %bb.p ], [ 0, %bb.o ]
  store i64 %.0.i63, ptr %2, align 8, !tbaa !30
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.e, %bb.k, %bb.f, %mbedtls_cipher_get_block_size.exit62, %mbedtls_cipher_get_block_size.exit64, %bb.j, %mbedtls_cipher_get_block_size.exit60, %bb.g, %bb.d, %bb.b, %bb.a
  %.1 = phi i32 [ %i.bc, %mbedtls_cipher_get_block_size.exit60 ], [ -135, %bb.a ], [ -24704, %bb.b ], [ -135, %bb.d ], [ %.53, %bb.j ], [ %., %bb.g ], [ -24704, %bb.f ], [ 0, %bb.e ], [ %i.bm, %mbedtls_cipher_get_block_size.exit62 ], [ %spec.select, %bb.k ], [ 0, %mbedtls_cipher_get_block_size.exit64 ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_cipher_finish(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.b = call i32 @mbedtls_cipher_finish_padded(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i64, ptr %i.a, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 150
  %i.g = sub nsw i32 0, %i.f
  %.0 = select i1 %i.c, i32 %i.g, i32 %i.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -24704, 1) i32 @mbedtls_cipher_set_padding_mode(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 61440
  %.not = icmp eq i32 %i.e, 8192
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i8, ptr %i.f, align 8, !tbaa !20
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not10 = icmp eq i32 %1, 1
  %. = select i1 %.not10, i32 0, i32 -24704
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  switch i32 %1, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @add_pkcs_padding, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @mbedtls_get_pkcs_padding, ptr %i.j, align 8, !tbaa !33
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @get_no_padding, ptr %i.l, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.d, %bb.a, %bb.b
  %.0 = phi i32 [ -24704, %bb.e ], [ %., %bb.d ], [ -135, %bb.a ], [ -135, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @add_pkcs_padding(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) #13 {
bb.a:
  %i.a = sub i64 %1, %2                           ; 9 uses
  %.not = icmp eq i64 %1, %2
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = trunc i64 %i.a to i8                     ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %2         ; 3 uses
  %min.iters.check = icmp ult i64 %i.a, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.d = xor i64 %2, -1
  %i.e = add i64 %1, %i.d                         ; 2 uses
  %i.f = and i64 %i.e, 255
  %i.g = icmp eq i64 %i.f, 255
  %i.h = icmp ugt i64 %i.e, 255
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check12 = icmp ult i64 %i.a, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.a, 28
  %n.vec = and i64 %i.a, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.c, i64 %index   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.k, align 1, !tbaa !34
  store <16 x i8> %broadcast.splat, ptr %i.l, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.a, -4                     ; 3 uses
  %broadcast.splatinsert14 = insertelement <4 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat15 = shufflevector <4 x i8> %broadcast.splatinsert14, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.n = getelementptr i8, ptr %i.c, i64 %index16
  store <4 x i8> %broadcast.splat15, ptr %i.n, align 1, !tbaa !34
  %index.next17 = add nuw i64 %index16, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next17, %n.vec13
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.a, %n.vec13
  br i1 %cmp.n18, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.b, ptr %i.p, align 1, !tbaa !34
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.q = and i64 %indvars.iv.next, 255
  %i.r = icmp ugt i64 %i.a, %i.q
  br i1 %i.r, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
end_hunk_0
