inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@cf2_decoder_parse_charstrings:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !201
  %.not72 = icmp eq ptr %i.h, null
  br i1 %.not72, label %bb.cm, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !202    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !203  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !204  ; 2 uses
  %.not73 = icmp eq ptr %i.l, null
  br i1 %.not73, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @cf2_free_instance, ptr %i.m, align 8, !tbaa !205
  %i.n = call ptr @ft_mem_alloc(ptr noundef %i.i, i64 noundef 656, ptr noundef nonnull %i.d) #19 ; 11 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !203
  store ptr %i.n, ptr %i.o, align 8, !tbaa !204
  %i.p = load i32, ptr %i.d, align 4, !tbaa !3
  %.not74 = icmp eq i32 %i.p, 0
  br i1 %.not74, label %bb.e, label %bb.cm

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.n, align 8, !tbaa !206
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !216
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4968
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !217
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 648
  store ptr %i.t, ptr %i.u, align 8, !tbaa !232
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  store ptr %i.i, ptr %i.y, align 8, !tbaa !233
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  store ptr %i.w, ptr %i.z, align 8, !tbaa !234
  store ptr @cf2_builder_moveTo, ptr %i.v, align 8, !tbaa !235
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  store ptr @cf2_builder_lineTo, ptr %i.aa, align 8, !tbaa !236
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store ptr @cf2_builder_cubeTo, ptr %i.ab, align 8, !tbaa !237
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.068 = phi ptr [ %i.l, %bb.c ], [ %i.n, %bb.g ] ; 71 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.068, i64 240 ; 3 uses
  store ptr %0, ptr %i.ac, align 8, !tbaa !238
  %i.ad = getelementptr inbounds nuw i8, ptr %.068, i64 176 ; 2 uses
  %i.ae = getelementptr i8, ptr %.068, i64 232    ; 5 uses
  store ptr %0, ptr %i.ae, align 8, !tbaa !239
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !162 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !240
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !246
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !247 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 0, ptr %4, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %1, ptr %i.ap, align 8, !tbaa !251
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.aq, align 8, !tbaa !253
  %.not76 = icmp eq ptr %1, null
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.as = select i1 %.not76, ptr null, ptr %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !254
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !255 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 304
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !256
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 305
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !258
  %.not.i = icmp ne i8 %i.az, 0                   ; 2 uses
  br i1 %.not.i, label %bb.i, label %cf2_getScaleAndHintFlag.exit

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !42
  %i.be = trunc <2 x i64> %i.bd to <2 x i32>
  %i.bf = add <2 x i32> %i.be, splat (i32 32)
  %i.bg = sdiv <2 x i32> %i.bf, splat (i32 64)
  br label %cf2_getScaleAndHintFlag.exit

cf2_getScaleAndHintFlag.exit:                     ; preds = %bb.h, %bb.i
  %i.bh = phi <2 x i32> [ %i.bg, %bb.i ], [ splat (i32 1024), %bb.h ] ; 3 uses
  %i.bi = extractelement <2 x i32> %i.bh, i64 0   ; 2 uses
  store i32 %i.bi, ptr %5, align 4, !tbaa !3
  %i.bj = extractelement <2 x i32> %i.bh, i64 1   ; 2 uses
  store i32 %i.bj, ptr %i.av, align 4, !tbaa !3
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %cf2_getScaleAndHintFlag.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 1208
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !259
  br label %bb.k

bb.k:                                             ; preds = %cf2_getScaleAndHintFlag.exit, %bb.j
  %.sink = phi i8 [ %i.bl, %bb.j ], [ 0, %cf2_getScaleAndHintFlag.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.068, i64 13
  store i8 %.sink, ptr %i.bm, align 1, !tbaa !282
  %i.bn = getelementptr inbounds nuw i8, ptr %.068, i64 12 ; 2 uses
  store i8 %i.f, ptr %i.bn, align 4, !tbaa !283
  %i.bo = getelementptr inbounds nuw i8, ptr %.068, i64 16 ; 3 uses
  %spec.store.select = zext i1 %.not.i to i32     ; 2 uses
  store i32 %spec.store.select, ptr %i.bo, align 8
  %.not79 = icmp eq i8 %i.bb, 0                   ; 2 uses
  br i1 %.not79, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not80 = icmp eq i8 %i.ao, 0
  br i1 %.not80, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = icmp sgt i8 %i.ao, -1
  %i.bq = icmp ne i8 %i.ak, 0
  %or.cond = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = or disjoint i32 %spec.store.select, 2
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !284
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.068, i64 260 ; 3 uses
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %.068, i64 264
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %.068, i64 268
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ai, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %.068, i64 272
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.068, i64 276
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 84
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %.068, i64 280
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.068, i64 284
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 92
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = getelementptr inbounds nuw i8, ptr %.068, i64 288
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !3
  %.val = load ptr, ptr %i.af, align 8, !tbaa !285
  %i.cq = getelementptr i8, ptr %.val, i64 136
  %.val.val = load i16, ptr %i.cq, align 8, !tbaa !286 ; 2 uses
  %i.cr = zext i16 %.val.val to i32               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.068, i64 160 ; 2 uses
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !287
  br i1 %.not79, label %cf2_checkTransform.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = icmp slt <2 x i32> %i.bh, splat (i32 1) ; 2 uses
  %i.cu = extractelement <2 x i1> %i.ct, i64 0
  %i.cv = extractelement <2 x i1> %i.ct, i64 1
  %or.cond94 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond94, label %cf2_setGlyphWidth.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = icmp slt i16 %.val.val, 0
  br i1 %i.cw, label %cf2_setGlyphWidth.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = shl nuw nsw i32 %i.cr, 16
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = call i64 @FT_DivFix(i64 noundef 131072000, i64 noundef %i.cy) #19
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  %i.db = icmp sgt i32 %i.bi, %i.da
  br i1 %i.db, label %cf2_setGlyphWidth.exit, label %6

6:                                                ; preds = %bb.r
  %7 = icmp samesign ugt i32 %i.bj, %i.da
  %cond.fr = freeze i1 %7
  br i1 %cond.fr, label %cf2_setGlyphWidth.exit, label %.cf2_checkTransform.exit_crit_edge

.cf2_checkTransform.exit_crit_edge:               ; preds = %6
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !238
  br label %cf2_checkTransform.exit

cf2_checkTransform.exit:                          ; preds = %.cf2_checkTransform.exit_crit_edge, %bb.o
  %i.dc = phi ptr [ %.pre, %.cf2_checkTransform.exit_crit_edge ], [ %0, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.dd = getelementptr inbounds nuw i8, ptr %.068, i64 164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !288 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.068, i64 168
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !290
  %i.dh = getelementptr inbounds nuw i8, ptr %.068, i64 8 ; 6 uses
  store i32 0, ptr %i.dh, align 8, !tbaa !291
  %i.di = getelementptr i8, ptr %i.dc, i64 1056   ; 3 uses
  %.val.i.i = load ptr, ptr %i.di, align 8, !tbaa !201 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.068, i64 248 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !292
  %.not.i.i = icmp eq ptr %i.dk, %.val.i.i
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %cf2_checkTransform.exit
  store ptr %.val.i.i, ptr %i.dj, align 8, !tbaa !292
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %cf2_checkTransform.exit
  %.0.i.i = phi i8 [ 1, %bb.s ], [ 0, %cf2_checkTransform.exit ] ; 3 uses
  %i.dl = load i8, ptr %i.bn, align 4, !tbaa !283
  %.not113.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not113.i.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr i8, ptr %i.dc, i64 1048   ; 2 uses
  %.val123.i.i = load ptr, ptr %i.dm, align 8, !tbaa !216
  %i.dn = getelementptr inbounds nuw i8, ptr %.val123.i.i, i64 5016
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !293
  %.not114.i.i = icmp eq i32 %i.do, 0
  br i1 %.not114.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %.068, i64 648
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !232 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dc, i64 8
  %.val124.i.i = load ptr, ptr %i.dr, align 8, !tbaa !285 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val124.i.i, i64 896
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !294
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 136
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !295
  %i.dw = call i32 %i.dv(ptr noundef %.val124.i.i, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null) #19, !inline_history !297 ; 2 uses
  store i32 %i.dw, ptr %i.dh, align 8, !tbaa !291
  %.not115.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not115.i.i, label %bb.w, label %cf2_font_setup.exit.thread.i

cf2_font_setup.exit.thread.i:                     ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %cf2_getGlyphOutline.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !298
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1056
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1040 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !300
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !290
  %i.ee = call zeroext i8 %i.dy(ptr noundef nonnull %i.dz, i32 noundef %i.eb, i32 noundef %i.ec, ptr noundef %i.ed) #19, !inline_history !301
  %.not116.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not116.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !302
  %i.eh = load ptr, ptr %i.dm, align 8, !tbaa !216
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !290
  %i.ek = call i32 %i.eg(ptr noundef %i.eh, ptr noundef nonnull %.val.i.i, i32 noundef %i.ei, ptr noundef %i.ej) #19, !inline_history !301 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.i.i = phi i8 [ 1, %bb.x ], [ %.0.i.i, %bb.w ]
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1064
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !303
  %i.en = getelementptr inbounds nuw i8, ptr %.068, i64 104
  store ptr %i.em, ptr %i.en, align 8, !tbaa !304
  %i.eo = getelementptr inbounds nuw i8, ptr %.068, i64 97
  store i8 0, ptr %i.eo, align 1, !tbaa !305
  %i.ep = load i32, ptr %i.ea, align 8, !tbaa !300
  %i.eq = getelementptr inbounds nuw i8, ptr %.068, i64 144
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !306
  %i.er = load i32, ptr %i.a, align 4, !tbaa !3
  %i.es = getelementptr inbounds nuw i8, ptr %.068, i64 148
  store i32 %i.er, ptr %i.es, align 4, !tbaa !307
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !290
  %i.eu = getelementptr inbounds nuw i8, ptr %.068, i64 152
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !308
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u, %bb.t
  %.3.i.i = phi i8 [ %.0.i.i, %bb.t ], [ %.1.i.i, %bb.y ], [ %.0.i.i, %bb.u ]
  %i.ev = getelementptr i8, ptr %i.dc, i64 8
  %.val125.i.i = load ptr, ptr %i.ev, align 8, !tbaa !285
  %i.ew = getelementptr i8, ptr %.val125.i.i, i64 160
  %.val125.val.i.i = load ptr, ptr %i.ew, align 8, !tbaa !309
  %i.ex = getelementptr i8, ptr %.val125.val.i.i, i64 26
  %.val125.val.val.i.i = load i16, ptr %i.ex, align 2, !tbaa !310
  %i.ey = zext i16 %.val125.val.val.i.i to i32
  %i.ez = shl nuw i32 %i.ey, 16                   ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.068, i64 92 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !311
  %.not117.i.i = icmp eq i32 %i.fb, %i.ez
  br i1 %.not117.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !311
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.4.i.i = phi i8 [ 1, %bb.aa ], [ %.3.i.i, %bb.z ]
  %i.fc = load i32, ptr %i.bo, align 8, !tbaa !284 ; 3 uses
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = and i8 %i.fd, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.068, i64 256
  store i8 %i.fe, ptr %i.ff, align 8, !tbaa !312
  %i.fg = getelementptr inbounds nuw i8, ptr %.068, i64 20 ; 2 uses
  %i.fh = load i128, ptr %5, align 4
  %i.fi = load i128, ptr %i.fg, align 1
  %i.fj = icmp ne i128 %i.fh, %i.fi
  %i.fk = zext i1 %i.fj to i32
  %.not118.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not118.i.i, label %bb.ac, label %.thread147.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.fl = getelementptr inbounds nuw i8, ptr %.068, i64 258 ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !313
  %i.fn = zext i8 %i.fm to i32
  %i.fo = and i32 %i.fc, 2                        ; 2 uses
  %.not119.i.i = icmp eq i32 %i.fo, %i.fn
  br i1 %.not119.i.i, label %bb.ad, label %.thread.i.i

.thread147.i.i:                                   ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.fg, ptr noundef nonnull readonly align 4 dereferenceable(24) %5, i64 16, i1 false), !tbaa.struct !314
  %i.fp = getelementptr inbounds nuw i8, ptr %.068, i64 40
  store i32 0, ptr %i.fp, align 8, !tbaa !315
  %i.fq = getelementptr inbounds nuw i8, ptr %.068, i64 36
  store i32 0, ptr %i.fq, align 4, !tbaa !316
  %i.fr = getelementptr inbounds nuw i8, ptr %.068, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.fr, ptr noundef nonnull readonly align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !314
  %i.fs = getelementptr inbounds nuw i8, ptr %.068, i64 68
  store <4 x i32> <i32 65536, i32 0, i32 0, i32 65536>, ptr %i.fs, align 4, !tbaa !3
  %i.ft = getelementptr inbounds nuw i8, ptr %.068, i64 258 ; 3 uses
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !313
  %i.fv = zext i8 %i.fu to i32
  %i.fw = and i32 %i.fc, 2                        ; 2 uses
  %.not119149.i.i = icmp eq i32 %i.fw, %i.fv
  br i1 %.not119149.i.i, label %.thread151.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread147.i.i, %bb.ac
  %i.fx = phi i32 [ %i.fw, %.thread147.i.i ], [ %i.fo, %bb.ac ]
  %i.fy = phi ptr [ %i.ft, %.thread147.i.i ], [ %i.fl, %bb.ac ] ; 2 uses
  %.lobit.i.i = lshr exact i32 %i.fx, 1
  %i.fz = trunc nuw nsw i32 %.lobit.i.i to i8
  store i8 %i.fz, ptr %i.fy, align 2, !tbaa !313
  br label %.thread151.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not120.i.i = icmp eq i8 %.4.i.i, 0
  br i1 %.not120.i.i, label %cf2_font_setup.exit.i, label %.thread151.i.i

.thread151.i.i:                                   ; preds = %bb.ad, %.thread.i.i, %.thread147.i.i
  %i.ga = phi ptr [ %i.fy, %.thread.i.i ], [ %i.fl, %bb.ad ], [ %i.ft, %.thread147.i.i ] ; 3 uses
  %i.gb = load i32, ptr %i.cs, align 8, !tbaa !287 ; 2 uses
  %i.gc = icmp eq i32 %i.gb, 0
  %spec.store.select.i.i = select i1 %i.gc, i32 1000, i32 %i.gb ; 2 uses
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.ez, i32 262144) ; 3 uses
  %i.gd = sdiv i32 65536000, %spec.store.select.i.i ; 5 uses
  %.val126.i.i = load ptr, ptr %i.di, align 8, !tbaa !201
  %i.ge = getelementptr i8, ptr %.val126.i.i, i64 752
  %.val126.val.i.i = load i64, ptr %i.ge, align 8, !tbaa !317
  %i.gf = trunc i64 %.val126.val.i.i to i32
  %i.gg = shl i32 %i.gf, 16                       ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.068, i64 292 ; 3 uses
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !318
  %i.gi = icmp slt i32 %i.gg, 1
  br i1 %i.gi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.thread151.i.i
  %i.gj = sext i32 %i.gd to i64
  %i.gk = call i64 @FT_DivFix(i64 noundef 4915200, i64 noundef %i.gj) #19
  %i.gl = trunc i64 %i.gk to i32                  ; 2 uses
  store i32 %i.gl, ptr %i.gh, align 4, !tbaa !318
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread151.i.i
  %i.gm = phi i32 [ %i.gl, %bb.ae ], [ %i.gg, %.thread151.i.i ]
end_hunk_0
begin_hunk_1_@cf2_decoder_parse_charstrings:bb.a
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ql, i64 12
  store i32 %.sink268.i.i.i, ptr %i.qy, align 4, !tbaa !357
  %i.qz = add nuw nsw i64 %.3195255.i.i.i, 1      ; 2 uses
  %exitcond264.not.i.i.i = icmp eq i64 %i.qz, %i.qe
  br i1 %exitcond264.not.i.i.i, label %cf2_font_setup.exit.i, label %bb.bt, !llvm.loop !358

cf2_font_setup.exit.i:                            ; preds = %bb.bt, %bb.bs, %bb.av, %bb.ad
  %.pr.i = load i32, ptr %i.dh, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i85 = icmp eq i32 %.pr.i, 0
  br i1 %.not.i85, label %.peel.begin.i, label %cf2_getGlyphOutline.exit.thread

.peel.begin.i:                                    ; preds = %cf2_font_setup.exit.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.068, i64 308 ; 2 uses
  store i8 0, ptr %i.ra, align 4, !tbaa !324
  %i.rb = getelementptr inbounds nuw i8, ptr %.068, i64 257
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !323
  %i.rd = getelementptr inbounds nuw i8, ptr %.068, i64 208 ; 3 uses
  %i.re = load ptr, ptr %i.ae, align 8, !tbaa !359
  store i32 0, ptr %i.rd, align 8, !tbaa !360
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !361
  call void @FT_GlyphLoader_Rewind(ptr noundef %i.rg) #19
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %.068, ptr noundef nonnull readonly %4, ptr noundef nonnull %i.ad, ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.c)
  %i.rh = load i32, ptr %i.dh, align 8, !tbaa !3
  %.not19.peel.i = icmp eq i32 %i.rh, 0
  br i1 %.not19.peel.i, label %bb.bu, label %cf2_getGlyphOutline.exit.thread

bb.bu:                                            ; preds = %.peel.begin.i
  %i.ri = icmp eq i8 %i.rc, 0
  br i1 %i.ri, label %.loopexit29.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rj = load i32, ptr %i.rd, align 8, !tbaa !362
  %i.rk = icmp sgt i32 %i.rj, -1
  br i1 %i.rk, label %.loopexit29.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i8 1, ptr %i.ra, align 4, !tbaa !324
  %i.rl = load ptr, ptr %i.ae, align 8, !tbaa !359
  store i32 0, ptr %i.rd, align 8, !tbaa !360
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !361
  call void @FT_GlyphLoader_Rewind(ptr noundef %i.rn) #19
  call fastcc void @cf2_interpT2CharString(ptr noundef nonnull %.068, ptr noundef nonnull readonly %4, ptr noundef nonnull %i.ad, ptr noundef %3, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, ptr noundef %i.c)
  %i.ro = load i32, ptr %i.dh, align 8, !tbaa !3
  %.not19.i = icmp eq i32 %i.ro, 0
  br i1 %.not19.i, label %.loopexit29.i, label %cf2_getGlyphOutline.exit.thread

.loopexit29.i:                                    ; preds = %bb.bw, %bb.bv, %bb.bu
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !359 ; 2 uses
  %i.rp = getelementptr i8, ptr %.val.i, i64 40
  %.val.i21.i = load ptr, ptr %i.rp, align 8, !tbaa !81 ; 11 uses
  %.not.i.i22.i = icmp eq ptr %.val.i21.i, null
  br i1 %.not.i.i22.i, label %cf2_getGlyphOutline.exit, label %bb.bx

bb.bx:                                            ; preds = %.loopexit29.i
  %i.rq = load i16, ptr %.val.i21.i, align 8, !tbaa !160 ; 7 uses
  %i.rr = icmp slt i16 %i.rq, 2
  br i1 %i.rr, label %bb.by, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bx
  %i.rs = zext nneg i16 %i.rq to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !161
  %i.rv = add nuw nsw i64 %i.rs, 4294967294
  %i.rw = and i64 %i.rv, 4294967295
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.rw
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !44
  %i.rz = sext i16 %i.ry to i32
  %i.sa = add nsw i32 %i.rz, 1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.not33.i.i.i = icmp eq i16 %i.rq, 0
  br i1 %.not33.i.i.i, label %._crit_edge.i.i23.i, label %bb.bz

._crit_edge.i.i23.i:                              ; preds = %bb.by
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2
  %.pre.i.i24.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2, !tbaa !153
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by, %.thread.i.i.i
  %i.sb = phi i32 [ %i.sa, %.thread.i.i.i ], [ 0, %bb.by ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !153 ; 2 uses
  %i.se = sext i16 %i.sd to i32
  %i.sf = icmp eq i32 %i.sb, %i.se
  br i1 %i.sf, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.sg = add i16 %i.rq, -1
  store i16 %i.sg, ptr %.val.i21.i, align 8, !tbaa !160
  br label %cf2_getGlyphOutline.exit

bb.cb:                                            ; preds = %bb.bz, %._crit_edge.i.i23.i
  %i.sh = phi i16 [ %i.sd, %bb.bz ], [ %.pre.i.i24.i, %._crit_edge.i.i23.i ] ; 7 uses
  %i.si = phi i32 [ %i.sb, %bb.bz ], [ 0, %._crit_edge.i.i23.i ] ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 2 ; 2 uses
  %i.sk = icmp sgt i16 %i.sh, 1
  br i1 %i.sk, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.sl = zext nneg i16 %i.sh to i64              ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !152 ; 2 uses
  %i.so = sext i32 %i.si to i64
  %i.sp = getelementptr inbounds [16 x i8], ptr %i.sn, i64 %i.so ; 2 uses
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.sn, i64 %i.sl ; 2 uses
  %i.sr = getelementptr inbounds i8, ptr %i.sq, i64 -16
  %i.ss = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 16
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !154
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.sl
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 -1
  %i.sw = load i64, ptr %i.sp, align 8, !tbaa !155
  %i.sx = load i64, ptr %i.sr, align 8, !tbaa !155
  %i.sy = icmp eq i64 %i.sw, %i.sx
  br i1 %i.sy, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !156
  %i.tb = getelementptr inbounds i8, ptr %i.sq, i64 -8
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !156
  %i.td = icmp eq i64 %i.ta, %i.tc
  br i1 %i.td, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.te = load i8, ptr %i.sv, align 1, !tbaa !38
  %i.tf = icmp eq i8 %i.te, 1
  br i1 %i.tf, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.tg = add nsw i16 %i.sh, -1                   ; 2 uses
  store i16 %i.tg, ptr %i.sj, align 2, !tbaa !153
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %i.th = phi i16 [ %i.sh, %bb.cc ], [ %i.sh, %bb.cd ], [ %i.tg, %bb.cf ], [ %i.sh, %bb.ce ], [ %i.sh, %bb.cb ] ; 2 uses
  %i.ti = icmp sgt i16 %i.rq, 0
  br i1 %i.ti, label %bb.ch, label %cf2_getGlyphOutline.exit

bb.ch:                                            ; preds = %bb.cg
  %i.tj = sext i16 %i.th to i32
  %i.tk = add nsw i32 %i.tj, -1                   ; 2 uses
  %i.tl = icmp eq i32 %i.si, %i.tk
  br i1 %i.tl, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.tm = add nsw i16 %i.rq, -1
  store i16 %i.tm, ptr %.val.i21.i, align 8, !tbaa !160
  %i.tn = add i16 %i.th, -1
  store i16 %i.tn, ptr %i.sj, align 2, !tbaa !153
  br label %cf2_getGlyphOutline.exit

bb.cj:                                            ; preds = %bb.ch
  %i.to = trunc i32 %i.tk to i16
  %i.tp = getelementptr inbounds nuw i8, ptr %.val.i21.i, i64 24
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !161
  %i.tr = zext nneg i16 %i.rq to i64
  %i.ts = getelementptr [2 x i8], ptr %i.tq, i64 %i.tr
  %i.tt = getelementptr i8, ptr %i.ts, i64 -2
  store i16 %i.to, ptr %i.tt, align 2, !tbaa !44
  br label %cf2_getGlyphOutline.exit

cf2_getGlyphOutline.exit.thread:                  ; preds = %cf2_font_setup.exit.thread.i, %cf2_font_setup.exit.i, %.peel.begin.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %cf2_setGlyphWidth.exit

cf2_getGlyphOutline.exit:                         ; preds = %.loopexit29.i, %bb.ca, %bb.cg, %bb.ci, %bb.cj
  %i.tu = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !361
  call void @FT_GlyphLoader_Add(ptr noundef %i.tv) #19
  %.pr = load i32, ptr %i.dh, align 8, !tbaa !3
  %i.tw = load i32, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.not83 = icmp eq i32 %.pr, 0
  br i1 %.not83, label %bb.ck, label %cf2_setGlyphWidth.exit

bb.ck:                                            ; preds = %cf2_getGlyphOutline.exit
  %.val84 = load ptr, ptr %i.ae, align 8, !tbaa !359 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.val84, i64 92
  %i.ty = load i8, ptr %i.tx, align 4, !tbaa !195
  %.not.i86 = icmp eq i8 %i.ty, 0
  br i1 %.not.i86, label %bb.cl, label %cf2_setGlyphWidth.exit

bb.cl:                                            ; preds = %bb.ck
  %i.tz = add i32 %i.tw, 32768
  %i.ua = lshr i32 %i.tz, 16
  %i.ub = zext nneg i32 %i.ua to i64
  %sext.i = shl nuw i64 %i.ub, 48
  %i.uc = ashr exact i64 %sext.i, 48
  %i.ud = getelementptr inbounds nuw i8, ptr %.val84, i64 1072
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !363
  store i64 %i.uc, ptr %i.ue, align 8, !tbaa !42
  br label %cf2_setGlyphWidth.exit

cf2_setGlyphWidth.exit:                           ; preds = %6, %bb.q, %bb.p, %bb.r, %bb.cl, %bb.ck, %cf2_getGlyphOutline.exit.thread, %cf2_getGlyphOutline.exit
  %.0 = phi i32 [ 3, %cf2_getGlyphOutline.exit.thread ], [ 0, %bb.cl ], [ 3, %cf2_getGlyphOutline.exit ], [ 0, %bb.ck ], [ 164, %bb.r ], [ 164, %6 ], [ 164, %bb.q ], [ 36, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.cm

bb.cm:                                            ; preds = %bb.d, %bb.b, %cf2_setGlyphWidth.exit
  %.1 = phi i32 [ %.0, %cf2_setGlyphWidth.exit ], [ 8, %bb.b ], [ 64, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @afm_parser_init(ptr noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call ptr @ft_mem_alloc(ptr noundef %1, i64 noundef 32, ptr noundef nonnull %i.a) #19 ; 5 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !364
  store ptr %2, ptr %i.b, align 8, !tbaa !366
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !367
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 2, ptr %i.f, align 8, !tbaa !368
  store ptr %1, ptr %0, align 8, !tbaa !369
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !373
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal void @afm_parser_done(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !369
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !373
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef %i.c) #19
  store ptr null, ptr %i.b, align 8, !tbaa !373
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @afm_parser_parse(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 12 uses
  %3 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca [5 x %struct.AFM_ValueRec_], align 16 ; 15 uses
  %5 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %6 = alloca %struct.AFM_ValueRec_, align 8      ; 6 uses
  %7 = alloca [4 x %struct.AFM_ValueRec_], align 16 ; 19 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !369    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !374  ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %afm_parser_next_key.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %.val67 = load ptr, ptr %i.f, align 8, !tbaa !373 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val67, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val67, i64 16
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !368
  %i.i = icmp sgt i32 %.pre.i, 1
  br i1 %i.i, label %afm_stream_read_string.exit.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val67)
  %i.j = load i32, ptr %i.g, align 8, !tbaa !368
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %afm_stream_read_string.exit.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %.val67, align 8, !tbaa !366 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !367  ; 2 uses
  %i.n = icmp ult ptr %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %afm_stream_read_string.exit.i.preheader

bb.e:                                             ; preds = %.lr.ph
  %i.o = icmp ult ptr %i.q, %i.m
  br i1 %i.o, label %.lr.ph, label %afm_stream_read_string.exit.i.preheader

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.q, ptr %.val67, align 8, !tbaa !366
  %i.r = load i8, ptr %i.p, align 1, !tbaa !38
  switch i8 %i.r, label %bb.e [
    i8 13, label %afm_stream_read_string.exit.i.preheader
    i8 10, label %afm_stream_read_string.exit.i.preheader
    i8 26, label %afm_stream_read_string.exit.i.preheader
  ]

afm_stream_read_string.exit.i.preheader:          ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.e, %bb.b, %bb.c, %bb.d
  br label %afm_stream_read_string.exit.i

afm_stream_read_string.exit.i:                    ; preds = %afm_stream_read_string.exit.i.preheader, %bb.f
  store i32 0, ptr %i.g, align 8, !tbaa !368
  %i.s = tail call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val67) ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %afm_parser_next_key.exit

bb.f:                                             ; preds = %afm_stream_read_string.exit.i
  %i.t = load i32, ptr %i.g, align 8, !tbaa !368
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %afm_stream_read_string.exit.i, label %afm_parser_next_key.exit.thread

afm_parser_next_key.exit:                         ; preds = %afm_stream_read_string.exit.i
  %i.v = load ptr, ptr %.val67, align 8, !tbaa !366
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.x, %i.w
  %.not139 = icmp eq i64 %i.y, -17
  br i1 %.not139, label %bb.g, label %afm_parser_next_key.exit.thread

bb.g:                                             ; preds = %afm_parser_next_key.exit
  %i.z = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(17) @.str.1, i64 noundef 16) #20
  %.not55 = icmp eq i32 %i.z, 0
  br i1 %.not55, label %.preheader155, label %afm_parser_next_key.exit.thread

.preheader155:                                    ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.preheader155, %afm_parse_kern_data.exit
  %.041 = phi i32 [ %.3, %afm_parse_kern_data.exit ], [ 160, %.preheader155 ] ; 16 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !373 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.pre.i68 = load i32, ptr %i.ap, align 8, !tbaa !368
  %i.ar = icmp sgt i32 %.pre.i68, 1
  br i1 %i.ar, label %afm_stream_read_string.exit.i69.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @afm_stream_skip_spaces(ptr noundef nonnull %.val)
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !368
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %afm_stream_read_string.exit.i69.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %.val, align 8, !tbaa !366 ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !367 ; 2 uses
  %i.aw = icmp ult ptr %i.au, %i.av
  br i1 %i.aw, label %.lr.ph643, label %afm_stream_read_string.exit.i69.preheader

bb.k:                                             ; preds = %.lr.ph643
  %i.ax = icmp ult ptr %i.az, %i.av
  br i1 %i.ax, label %.lr.ph643, label %afm_stream_read_string.exit.i69.preheader

.lr.ph643:                                        ; preds = %bb.j, %bb.k
  %i.ay = phi ptr [ %i.az, %bb.k ], [ %i.au, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.az, ptr %.val, align 8, !tbaa !366
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !38
  switch i8 %i.ba, label %bb.k [
    i8 13, label %afm_stream_read_string.exit.i69.preheader
    i8 10, label %afm_stream_read_string.exit.i69.preheader
    i8 26, label %afm_stream_read_string.exit.i69.preheader
  ]

afm_stream_read_string.exit.i69.preheader:        ; preds = %.lr.ph643, %.lr.ph643, %.lr.ph643, %bb.k, %bb.h, %bb.i, %bb.j
  br label %afm_stream_read_string.exit.i69

afm_stream_read_string.exit.i69:                  ; preds = %afm_stream_read_string.exit.i69.preheader, %bb.l
  store i32 0, ptr %i.ap, align 8, !tbaa !368
  %i.bb = tail call fastcc ptr @afm_stream_read_one(ptr noundef nonnull %.val) ; 4 uses
  %.not.i70 = icmp eq ptr %i.bb, null
  br i1 %.not.i70, label %bb.l, label %bb.m

bb.l:                                             ; preds = %afm_stream_read_string.exit.i69
  %i.bc = load i32, ptr %i.ap, align 8, !tbaa !368
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %afm_stream_read_string.exit.i69, label %afm_parser_next_key.exit72.thread

end_hunk_1
