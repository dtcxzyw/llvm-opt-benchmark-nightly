Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/truetype?download=true
inline.NumInlined: 294
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 36
begin_hunk_0_@TT_Vary_Apply_Glyph_Deltas:bb.a
  br i1 %.not377, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge450
  %i.mp = zext i32 %i.m to i64                    ; 2 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.mp
  store i64 0, ptr %i.mq, align 8, !tbaa !176
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.mp
  store i64 0, ptr %i.mr, align 8, !tbaa !176
  %i.ms = add nsw i32 %i.m, 1
  %i.mt = zext i32 %i.ms to i64                   ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.mt
  store i64 0, ptr %i.mu, align 8, !tbaa !176
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.mt
  store i64 0, ptr %i.mv, align 8, !tbaa !176
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge450
  %i.mw = and i32 %i.mn, 16
  %.not378 = icmp eq i32 %i.mw, 0
  br i1 %.not378, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mx = add nsw i32 %i.m, 2
  %i.my = zext i32 %i.mx to i64                   ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.my
  store i64 0, ptr %i.mz, align 8, !tbaa !176
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.my
  store i64 0, ptr %i.na, align 8, !tbaa !176
  %i.nb = add nsw i32 %i.m, 3
  %i.nc = zext i32 %i.nb to i64                   ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.nc
  store i64 0, ptr %i.nd, align 8, !tbaa !176
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.nc
  store i64 0, ptr %i.ne, align 8, !tbaa !176
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br i1 %.not455, label %._crit_edge454, label %.lr.ph453

.lr.ph453:                                        ; preds = %bb.aj
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !448
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph453, %bb.ak
  %indvars.iv503 = phi i64 [ 0, %.lr.ph453 ], [ %indvars.iv.next504, %bb.ak ] ; 5 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv503 ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !176
  %i.nj = add nsw i64 %i.ni, 512
  %i.nk = ashr i64 %i.nj, 10
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv503 ; 3 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !203
  %i.nn = add nsw i64 %i.nk, %i.nm
  store i64 %i.nn, ptr %i.nl, align 8, !tbaa !203
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv503 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !176
  %i.nq = add nsw i64 %i.np, 512
  %i.nr = ashr i64 %i.nq, 10
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nl, i64 8 ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !259
  %i.nu = add nsw i64 %i.nr, %i.nt
  store i64 %i.nu, ptr %i.ns, align 8, !tbaa !259
  %i.nv = load i64, ptr %i.nh, align 8, !tbaa !176
  %i.nw = shl i64 %i.nv, 32
  %i.nx = add i64 %i.nw, 140737488355328
  %i.ny = ashr i64 %i.nx, 48
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.ng, i64 %indvars.iv503 ; 3 uses
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !203
  %i.ob = add nsw i64 %i.ny, %i.oa
  store i64 %i.ob, ptr %i.nz, align 8, !tbaa !203
  %i.oc = load i64, ptr %i.no, align 8, !tbaa !176
  %i.od = shl i64 %i.oc, 32
  %i.oe = add i64 %i.od, 140737488355328
  %i.of = ashr i64 %i.oe, 48
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !259
  %i.oi = add nsw i64 %i.of, %i.oh
  store i64 %i.oi, ptr %i.og, align 8, !tbaa !259
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %exitcond507.not = icmp eq i64 %indvars.iv.next504, %i.bg
  br i1 %exitcond507.not, label %._crit_edge454, label %bb.ak, !llvm.loop !856

._crit_edge454:                                   ; preds = %bb.ak, %bb.aj
  br i1 %.not377, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge454
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !448
  %i.om = zext i32 %i.m to i64                    ; 2 uses
  %i.on = getelementptr inbounds nuw [16 x i8], ptr %i.ol, i64 %i.om
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oj, ptr noundef nonnull align 8 dereferenceable(16) %i.on, i64 16, i1 false), !tbaa.struct !306
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.op = load ptr, ptr %i.ok, align 8, !tbaa !448
  %i.oq = add nsw i32 %i.m, 1
  %i.or = zext i32 %i.oq to i64                   ; 2 uses
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.op, i64 %i.or
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull align 8 dereferenceable(16) %i.os, i64 16, i1 false), !tbaa.struct !306
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.or
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !203
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.om
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !203
  %i.ox = add i64 %i.ou, 32
  %i.oy = sub i64 %i.ox, %i.ow
  %i.oz = lshr i64 %i.oy, 6
  %i.pa = trunc i64 %i.oz to i32
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.pa, ptr %i.pb, align 8, !tbaa !140
  %.pre508 = load i32, ptr %i.mm, align 8, !tbaa !204
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge454
  %i.pc = phi i32 [ %.pre508, %bb.al ], [ %i.mn, %._crit_edge454 ]
  %i.pd = and i32 %i.pc, 16
  %.not380 = icmp eq i32 %i.pd, 0
  br i1 %.not380, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !448
  %i.ph = add nsw i32 %i.m, 2
  %i.pi = zext i32 %i.ph to i64                   ; 2 uses
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.pg, i64 %i.pi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i64 16, i1 false), !tbaa.struct !306
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.pl = load ptr, ptr %i.pf, align 8, !tbaa !448
  %i.pm = add nsw i32 %i.m, 3
  %i.pn = zext i32 %i.pm to i64                   ; 2 uses
  %i.po = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %i.pn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pk, ptr noundef nonnull align 8 dereferenceable(16) %i.po, i64 16, i1 false), !tbaa.struct !306
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.pn
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !259
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.pi
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !259
  %i.pv = add i64 %i.pr, 32
  %i.pw = sub i64 %i.pv, %i.pu
  %i.px = lshr i64 %i.pw, 6
  %i.py = trunc i64 %i.px to i32
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 %i.py, ptr %i.pz, align 4, !tbaa !142
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.p, %bb.q, %bb.ae
  %.0336 = phi ptr [ null, %bb.p ], [ %i.dz, %bb.q ], [ %i.dz, %bb.ae ], [ %i.dz, %bb.am ], [ %i.dz, %bb.an ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %i.dx) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0336) #22
  %.not387 = icmp eq ptr %.0339, inttoptr (i64 -1 to ptr)
  br i1 %.not387, label %bb.ap, label %.thread394

.thread394:                                       ; preds = %bb.m, %bb.j, %bb.i, %bb.h, %bb.ao
  %.1340403 = phi ptr [ %.0339, %bb.ao ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.m ]
  %.0341401 = phi ptr [ %i.cl, %bb.ao ], [ null, %bb.h ], [ null, %bb.i ], [ %i.cl, %bb.j ], [ %i.cl, %bb.m ]
  %.0342399 = phi ptr [ %i.ch, %bb.ao ], [ null, %bb.h ], [ %i.ch, %bb.i ], [ %i.ch, %bb.j ], [ %i.ch, %bb.m ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.1340403) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread394
  %.0341402 = phi ptr [ %i.cl, %bb.ao ], [ %.0341401, %.thread394 ]
  %.0342400 = phi ptr [ %i.ch, %bb.ao ], [ %.0342399, %.thread394 ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %i.cd) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0342400) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0341402) #22
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.f) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.e, %bb.d, %bb.c, %bb.g, %bb.f
  %.0353 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %i.bl, %bb.e ], [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.ap ]
  %.0334 = phi ptr [ null, %bb.c ], [ %i.bj, %bb.d ], [ %i.bj, %bb.e ], [ %i.bj, %bb.f ], [ %i.bj, %bb.g ], [ %i.bj, %bb.ap ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %i.bh) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0334) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0353) #22
  %i.qa = load i32, ptr %i.a, align 4, !tbaa !9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.b, %._crit_edge, %bb.a, %bb.aq
  %.0 = phi i32 [ 6, %bb.a ], [ %i.qa, %bb.aq ], [ 0, %bb.b ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TT_Process_Simple_Glyph(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 98 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !446  ; 7 uses
  %i.g = sext i16 %i.f to i32
  %i.h = load ptr, ptr %0, align 8, !tbaa !135
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !448
  %i.m = sext i16 %i.f to i64                     ; 8 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !306
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !448
  %i.q = getelementptr [16 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !306
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !448
  %i.u = getelementptr [16 x i8], ptr %i.t, i64 %i.m
  %i.v = getelementptr i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !306
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !448
  %i.y = getelementptr [16 x i8], ptr %i.x, i64 %i.m
  %i.z = getelementptr i8, ptr %i.y, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !306
  %i.ab = add nsw i32 %i.g, 4                     ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !135   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !119
  %i.af = and i64 %i.ae, 2147418112
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.ai = and i64 %i.ah, 32768
  %.not102 = icmp eq i64 %i.ai, 0
  br i1 %.not102, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = sext i32 %i.ab to i64
  %i.ak = call ptr @ft_mem_qrealloc(ptr noundef %i.j, i64 noundef 16, i64 noundef 0, i64 noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 4 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !9
  %.not103 = icmp eq i32 %i.al, 0
  br i1 %.not103, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.am = call fastcc i32 @TT_Vary_Apply_Glyph_Deltas(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.ak) ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !9
  %.not104 = icmp eq i32 %i.am, 0
  br i1 %.not104, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0100 = phi ptr [ %i.ak, %bb.d ], [ null, %bb.b ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !134 ; 2 uses
  %i.ap = and i64 %i.ao, 2
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i16, ptr %i.e, align 2, !tbaa !466
  %i.as = add i16 %i.ar, 4                        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i16 %i.as, ptr %i.at, align 4, !tbaa !467
  %i.au = load i16, ptr %i.d, align 8, !tbaa !468
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i16 %i.au, ptr %i.av, align 2, !tbaa !469
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %2 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !196
  %3 = load ptr, ptr %1, align 8, !tbaa !470
  %4 = load <2 x ptr>, ptr %i.k, align 8, !tbaa !179
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !471
  %5 = shufflevector <2 x ptr> %2, <2 x ptr> %4, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x ptr> %5, ptr %i.ax, align 8, !tbaa !179
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %6 = load ptr, ptr %i.az, align 8, !tbaa !472
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %6, ptr %7, align 8, !tbaa !163
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i16 0, ptr %i.ba, align 8, !tbaa !473
  %i.bb = zext i16 %i.as to i64
  %i.bc = shl nuw nsw i64 %i.bb, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %i.ay, i64 %i.bc, i1 false)
  %.pre = load i64, ptr %i.an, align 8, !tbaa !134
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = phi i64 [ %.pre, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !448 ; 11 uses
  %i.bf = ptrtoaddr ptr %i.be to i64              ; 9 uses
  %i.bg = sext i32 %i.ab to i64
  %.idx = shl nsw i64 %i.bg, 4
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %.idx ; 2 uses
  %i.bi = and i64 %i.bd, 1
  %.not106 = icmp eq i64 %i.bi, 0
  %.pre151 = load ptr, ptr %0, align 8, !tbaa !135 ; 3 uses
  br i1 %.not106, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !118
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !tbaa !176 ; 5 uses
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = extractelement <4 x i32> %i.bp, i64 0   ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.pre151, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !119
  %i.bt = and i64 %i.bs, 2147418112
  %.not107 = icmp eq i64 %i.bt, 0
  br i1 %.not107, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre151, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !69
  %i.bw = and i64 %i.bv, 32768
  %.not108 = icmp eq i64 %i.bw, 0
  br i1 %.not108, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.bx = icmp sgt i16 %i.f, -4
  %i.by = extractelement <2 x i64> %i.bo, i64 1   ; 3 uses
  br i1 %i.bx, label %.lr.ph149, label %.loopexit

.lr.ph149:                                        ; preds = %.preheader
  %i.bz = shl <2 x i64> %i.bo, splat (i64 32)
  %i.ca = ashr exact <2 x i64> %i.bz, splat (i64 32) ; 2 uses
  %i.cb = sext i16 %i.f to i64
  %i.cc = shl nsw i64 %i.cb, 4
  %i.cd = add i64 %i.cc, %i.bf
  %i.ce = add i64 %i.cd, 64
  %i.cf = add i64 %i.bf, 16
  %i.cg = call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cf)
  %i.ch = xor i64 %i.bf, -1
  %i.ci = add i64 %i.cg, %i.ch
  %i.cj = lshr i64 %i.ci, 4                       ; 2 uses
  %min.iters.check166 = icmp eq i64 %i.cj, 0
  br i1 %min.iters.check166, label %scalar.ph165, label %vector.body169

vector.body169:                                   ; preds = %.lr.ph149, %vector.body169
  %index170 = phi i64 [ %index.next173, %vector.body169 ], [ 0, %.lr.ph149 ] ; 3 uses
  %i.ck = shl i64 %index170, 4
  %next.gep171 = getelementptr i8, ptr %i.be, i64 %i.ck ; 2 uses
  %wide.load172 = load <2 x i64>, ptr %next.gep171, align 8
  %i.cl = shl <2 x i64> %wide.load172, splat (i64 32)
  %i.cm = ashr exact <2 x i64> %i.cl, splat (i64 32)
  %i.cn = mul nsw <2 x i64> %i.cm, %i.ca          ; 2 uses
  %i.co = ashr <2 x i64> %i.cn, splat (i64 63)
  %i.cp = add nsw <2 x i64> %i.cn, splat (i64 32768)
  %i.cq = add nsw <2 x i64> %i.cp, %i.co
  %i.cr = shl <2 x i64> %i.cq, splat (i64 16)
  %i.cs = ashr <2 x i64> %i.cr, splat (i64 32)
  store <2 x i64> %i.cs, ptr %next.gep171, align 8
  %index.next173 = add nuw i64 %index170, 1
  %i.ct = icmp eq i64 %index170, %i.cj
  br i1 %i.ct, label %.loopexit, label %vector.body169, !llvm.loop !869

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cu = icmp sgt i16 %i.f, -4
  %i.cv = extractelement <2 x i64> %i.bo, i64 1   ; 3 uses
  br i1 %i.cu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.cw = shl <2 x i64> %i.bo, splat (i64 32)
  %i.cx = ashr exact <2 x i64> %i.cw, splat (i64 32) ; 2 uses
  %i.cy = sext i16 %i.f to i64
  %i.cz = shl nsw i64 %i.cy, 4
  %i.da = add i64 %i.cz, %i.bf
  %i.db = add i64 %i.da, 64
  %i.dc = add i64 %i.bf, 16
  %i.dd = call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %i.de = xor i64 %i.bf, -1
  %i.df = add i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = lshr i64 %i.df, 4
  %min.iters.check = icmp ult i64 %i.df, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.dh = sext i16 %i.f to i64
  %i.di = shl nsw i64 %i.dh, 4
  %i.dj = add i64 %i.di, %i.bf
  %i.dk = add i64 %i.dj, 64
  %i.dl = add i64 %i.bf, 16
  %umax = call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.dl)
  %i.dm = xor i64 %i.bf, -1
  %i.dn = add i64 %umax, %i.dm
  %i.do = and i64 %i.dn, -16                      ; 2 uses
  %i.dp = or disjoint i64 %i.do, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.dp
  %scevgep155 = getelementptr i8, ptr %.0100, i64 %i.dp
  %scevgep156 = getelementptr i8, ptr %i.be, i64 8
  %i.dq = add i64 %i.do, 16                       ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.be, i64 %i.dq
  %scevgep158 = getelementptr i8, ptr %.0100, i64 8
  %scevgep159 = getelementptr i8, ptr %.0100, i64 %i.dq
  %bound0 = icmp ult ptr %i.be, %scevgep155
  %bound1 = icmp ult ptr %.0100, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0160 = icmp ult ptr %scevgep156, %scevgep159
  %bound1161 = icmp ult ptr %scevgep158, %scevgep157
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx = or i1 %found.conflict, %found.conflict162
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dr = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0100, i64 %i.dr
  %next.gep163 = getelementptr i8, ptr %i.be, i64 %i.dr
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %i.ds = shl <2 x i64> %wide.load, splat (i64 32)
  %i.dt = ashr exact <2 x i64> %i.ds, splat (i64 32)
  %i.du = mul nsw <2 x i64> %i.dt, %i.cx          ; 2 uses
  %i.dv = ashr <2 x i64> %i.du, splat (i64 63)
  %i.dw = add nsw <2 x i64> %i.du, splat (i64 32768)
  %i.dx = add nsw <2 x i64> %i.dw, %i.dv
  %i.dy = shl <2 x i64> %i.dx, splat (i64 16)
  %i.dz = ashr <2 x i64> %i.dy, splat (i64 32)
  %i.ea = add nsw <2 x i64> %i.dz, splat (i64 32)
  %i.eb = ashr <2 x i64> %i.ea, splat (i64 6)
  store <2 x i64> %i.eb, ptr %next.gep163, align 8
  %index.next = add nuw i64 %index, 1
  %i.ec = icmp eq i64 %index, %i.dg
  br i1 %i.ec, label %.loopexit, label %vector.body, !llvm.loop !870

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0147 = phi ptr [ %i.ep, %scalar.ph ], [ %.0100, %scalar.ph.preheader ] ; 2 uses
  %.099146 = phi ptr [ %i.eo, %scalar.ph ], [ %i.be, %scalar.ph.preheader ] ; 2 uses
  %i.ed = load <2 x i64>, ptr %.0147, align 8, !tbaa !176
  %i.ee = shl <2 x i64> %i.ed, splat (i64 32)
  %i.ef = ashr exact <2 x i64> %i.ee, splat (i64 32)
  %i.eg = mul nsw <2 x i64> %i.ef, %i.cx          ; 2 uses
  %i.eh = ashr <2 x i64> %i.eg, splat (i64 63)
  %i.ei = add nsw <2 x i64> %i.eg, splat (i64 32768)
  %i.ej = add nsw <2 x i64> %i.ei, %i.eh
  %i.ek = shl <2 x i64> %i.ej, splat (i64 16)
  %i.el = ashr <2 x i64> %i.ek, splat (i64 32)
  %i.em = add nsw <2 x i64> %i.el, splat (i64 32)
  %i.en = ashr <2 x i64> %i.em, splat (i64 6)
  store <2 x i64> %i.en, ptr %.099146, align 8, !tbaa !176
  %i.eo = getelementptr inbounds nuw i8, ptr %.099146, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0147, i64 16
  %i.eq = icmp ult ptr %i.eo, %i.bh
  br i1 %i.eq, label %scalar.ph, label %.loopexit, !llvm.loop !871

scalar.ph165:                                     ; preds = %.lr.ph149, %scalar.ph165
  %.1148 = phi ptr [ %i.fa, %scalar.ph165 ], [ %i.be, %.lr.ph149 ] ; 3 uses
  %i.er = load <2 x i64>, ptr %.1148, align 8, !tbaa !176
  %i.es = shl <2 x i64> %i.er, splat (i64 32)
  %i.et = ashr exact <2 x i64> %i.es, splat (i64 32)
  %i.eu = mul nsw <2 x i64> %i.et, %i.ca          ; 2 uses
  %i.ev = ashr <2 x i64> %i.eu, splat (i64 63)
  %i.ew = add nsw <2 x i64> %i.eu, splat (i64 32768)
  %i.ex = add nsw <2 x i64> %i.ew, %i.ev
  %i.ey = shl <2 x i64> %i.ex, splat (i64 16)
  %i.ez = ashr <2 x i64> %i.ey, splat (i64 32)
  store <2 x i64> %i.ez, ptr %.1148, align 8, !tbaa !176
  %i.fa = getelementptr inbounds nuw i8, ptr %.1148, i64 16 ; 2 uses
  %i.fb = icmp ult ptr %i.fa, %i.bh
  br i1 %i.fb, label %scalar.ph165, label %.loopexit, !llvm.loop !872

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %vector.body169, %scalar.ph165, %bb.j, %.preheader, %bb.g
  %.097117 = phi i64 [ %i.by, %.preheader ], [ 0, %bb.g ], [ %i.cv, %bb.j ], [ %i.cv, %scalar.ph ], [ %i.by, %vector.body169 ], [ %i.by, %scalar.ph165 ], [ %i.cv, %vector.body ]
  %.098114 = phi i32 [ %i.bq, %.preheader ], [ 0, %bb.g ], [ %i.bq, %bb.j ], [ %i.bq, %scalar.ph ], [ %i.bq, %vector.body169 ], [ %i.bq, %scalar.ph165 ], [ %i.bq, %vector.body ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre151, i64 1224 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !204 ; 2 uses
  %i.fe = and i32 %i.fd, 2
  %.not109 = icmp ne i32 %i.fe, 0
  %i.ff = and i64 %i.bd, 2
  %i.fg = icmp eq i64 %i.ff, 0                    ; 3 uses
  %or.cond = and i1 %i.fg, %.not109
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.fh = load i64, ptr %i.o, align 8, !tbaa !199
  %sext126 = shl i64 %i.fh, 32
  %i.fi = ashr exact i64 %sext126, 32
  %i.fj = sext i32 %.098114 to i64                ; 2 uses
  %i.fk = mul nsw i64 %i.fi, %i.fj                ; 2 uses
end_hunk_0
begin_hunk_1_@TT_Process_Composite_Component:bb.a
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !118 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !423
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !414
  %sext83 = shl i64 %i.bz, 32
  %i.cc = ashr exact i64 %sext83, 32
  %i.cd = mul nsw i64 %i.cc, %.168                ; 2 uses
  %i.ce = ashr i64 %i.cd, 63
  %i.cf = add nsw i64 %i.cd, 32768
  %i.cg = add nsw i64 %i.cf, %i.ce
  %i.ch = shl i64 %i.cg, 16
  %i.ci = ashr i64 %i.ch, 32                      ; 3 uses
  %sext85 = shl i64 %i.cb, 32
  %i.cj = ashr exact i64 %sext85, 32
  %i.ck = mul nsw i64 %i.cj, %.166                ; 2 uses
  %i.cl = ashr i64 %i.ck, 63
  %i.cm = add nsw i64 %i.ck, 32768
  %i.cn = add nsw i64 %i.cm, %i.cl
  %i.co = shl i64 %i.cn, 16
  %i.cp = ashr i64 %i.co, 32                      ; 2 uses
  %i.cq = load i16, ptr %i.m, align 4, !tbaa !459
  %i.cr = and i16 %i.cq, 4
  %.not78 = icmp ne i16 %i.cr, 0
  %i.cs = and i64 %i.bs, 2
  %i.ct = icmp eq i64 %i.cs, 0
  %or.cond81 = and i1 %i.ct, %.not78
  br i1 %or.cond81, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cu = load ptr, ptr %0, align 8, !tbaa !135
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 176
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !26
  %i.cz = icmp eq i32 %i.cy, 35
  %i.da = add nsw i64 %i.ci, 32
  %i.db = and i64 %i.da, -64
  %.269 = select i1 %i.cz, i64 %i.db, i64 %i.ci
  %i.dc = add nsw i64 %i.cp, 32
  %i.dd = and i64 %i.dc, -64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f, %bb.j
  %.5 = phi i64 [ %.168, %bb.j ], [ %i.ai, %bb.f ], [ %i.ci, %bb.k ], [ %.269, %bb.l ] ; 2 uses
  %.4 = phi i64 [ %.166, %bb.j ], [ %i.an, %bb.f ], [ %i.cp, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  %i.de = icmp ne i64 %.5, 0
  %i.df = icmp ne i64 %.4, 0
  %or.cond3 = select i1 %i.de, i1 true, i1 %i.df
  br i1 %or.cond3, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  call void @FT_Outline_Translate(ptr noundef nonnull %4, i64 noundef %.5, i64 noundef %.4) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.n, %bb.m, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.n ], [ 0, %bb.m ], [ 21, %bb.d ], [ 21, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TT_Process_Composite_Glyph(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -32768, 32768) %1, i32 noundef range(i32 -32768, 32768) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 26 ; 5 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !446  ; 3 uses
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = add nsw i32 %i.h, 4                      ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  %i.l = load i16, ptr %i.k, align 2, !tbaa !478
  %i.m = sext i16 %i.l to i32
  %i.n = add nsw i32 %i.i, %i.h
  %i.o = add nsw i32 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !479
  %.not = icmp ugt i32 %i.o, %i.q
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.c, i32 noundef %i.i, i32 noundef 0) #22 ; 2 uses
  %.not59 = icmp eq i32 %i.r, 0
  br i1 %.not59, label %._crit_edge74, label %.thread68

._crit_edge74:                                    ; preds = %bb.c
  %.pre = load i16, ptr %i.f, align 2, !tbaa !446
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %._crit_edge74
  %i.s = phi i16 [ %.pre, %._crit_edge74 ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !448
  %i.v = sext i16 %i.s to i64
  %i.w = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !306
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !448
  %i.z = load i16, ptr %i.f, align 2, !tbaa !446
  %i.aa = sext i16 %i.z to i64
  %i.ab = getelementptr [16 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !306
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !448
  %i.af = load i16, ptr %i.f, align 2, !tbaa !446
  %i.ag = sext i16 %i.af to i64
  %i.ah = getelementptr [16 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !306
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !448
  %i.al = load i16, ptr %i.f, align 2, !tbaa !446
  %i.am = sext i16 %i.al to i64
  %i.an = getelementptr [16 x i8], ptr %i.ak, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !306
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !188 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !152 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !161
  %.not60 = icmp eq i32 %i.av, 0
  br i1 %.not60, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 720 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !160
  tail call void @ft_mem_free(ptr noundef %i.at, ptr noundef %i.ax) #22
  store ptr null, ptr %i.aw, align 8, !tbaa !160
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  store i32 0, ptr %i.au, align 8, !tbaa !161
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !451
  %i.ba = tail call i32 @FT_Stream_Seek(ptr noundef %i.e, i64 noundef %i.az) #22 ; 3 uses
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !9
  %.not61 = icmp eq i32 %i.ba, 0
  br i1 %.not61, label %bb.f, label %.thread68

bb.f:                                             ; preds = %bb.e
  %i.bb = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.e, ptr noundef nonnull %i.a) #22 ; 3 uses
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %.not62 = icmp eq i32 %i.bc, 0
  br i1 %.not62, label %bb.g, label %.thread68

bb.g:                                             ; preds = %bb.f
  %.not63 = icmp eq i16 %i.bb, 0
  br i1 %.not63, label %.thread68, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = zext i16 %i.bb to i32                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !431
  %i.bg = icmp ult i32 %i.bf, %i.bd
  br i1 %i.bg, label %.thread68, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = zext i16 %i.bb to i64                   ; 2 uses
  %i.bi = call ptr @ft_mem_qrealloc(ptr noundef %i.at, i64 noundef 1, i64 noundef 0, i64 noundef %i.bh, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 720
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !160
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %.not64 = icmp eq i32 %i.bk, 0
  br i1 %.not64, label %bb.j, label %.thread68

bb.j:                                             ; preds = %bb.i
  %i.bl = call i32 @FT_Stream_Read(ptr noundef %i.e, ptr noundef %i.bi, i64 noundef %i.bh) #22 ; 3 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !9
  %.not65 = icmp eq i32 %i.bl, 0
  br i1 %.not65, label %bb.k, label %.thread68

bb.k:                                             ; preds = %bb.j
  store i32 %i.bd, ptr %i.au, align 8, !tbaa !161
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !191 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 26
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !466 ; 2 uses
  %i.bq = trunc nsw i32 %1 to i16                 ; 3 uses
  %reass.sub = sub i16 %i.bp, %i.bq
  %i.br = add i16 %reass.sub, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  store i16 %i.br, ptr %i.bs, align 4, !tbaa !467
  %i.bt = load i16, ptr %i.bn, align 8, !tbaa !468
  %i.bu = trunc nsw i32 %2 to i16
  %i.bv = sub i16 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !469
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !875
  %i.bz = zext i32 %1 to i64                      ; 4 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !166
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !471
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !165
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !470
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.bz
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !167
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !876
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.bz
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !164
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !472
  %i.cq = zext i32 %2 to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !163
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i16 %i.bq, ptr %i.ct, align 8, !tbaa !473
  %.not72 = icmp eq i16 %i.bp, %i.bq
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.k ] ; 2 uses
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !877
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !177
  %i.cx = and i8 %i.cw, -25
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !177
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i16, ptr %i.bs, align 4, !tbaa !878
  %i.cz = zext i16 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cz, 4294967292
  %i.db = and i64 %i.da, 4294967295
  %i.dc = icmp samesign ult i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !llvm.loop !874

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.dd = call fastcc i32 @TT_Hint_Glyph(ptr noundef %0, i8 noundef zeroext 1)
  br label %.thread68

.thread68:                                        ; preds = %bb.i, %bb.j, %bb.e, %bb.f, %bb.h, %bb.g, %bb.c, %._crit_edge
  %.1 = phi i32 [ %i.r, %bb.c ], [ %i.dd, %._crit_edge ], [ 22, %bb.h ], [ %i.ba, %bb.e ], [ 0, %bb.g ], [ %i.bc, %bb.f ], [ %i.bl, %bb.j ], [ %i.bk, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tt_interpolate_deltas(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !447
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge56
  %indvars.iv80 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next81, %.critedge56 ] ; 2 uses
  %.048 = phi i32 [ 0, %.preheader ], [ %.3, %.critedge56 ] ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !454
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv80
  %i.e = load i16, ptr %i.d, align 2, !tbaa !120  ; 3 uses
  %i.f = sext i16 %i.e to i32                     ; 5 uses
  %.not5259 = icmp sgt i32 %.048, %i.f
  br i1 %.not5259, label %.critedge56, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = sext i32 %.048 to i64                    ; 5 uses
  %i.h = sext i16 %i.e to i64                     ; 2 uses
  %i.i = add nsw i32 %i.f, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.c ] ; 5 uses
  %indvars.iv73.in = phi i32 [ %.048, %.lr.ph.preheader ], [ %indvars.iv73, %bb.c ]
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 11 uses
  %indvars.iv73 = add i32 %indvars.iv73.in, 1     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %3, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !177
  %.not53 = icmp eq i8 %i.k, 0
  br i1 %.not53, label %bb.c, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph
  %i.l = trunc nsw i64 %indvars.iv to i32         ; 9 uses
  %.261 = add nsw i32 %i.l, 1
  %.not54.not62 = icmp slt i32 %i.l, %i.f         ; 2 uses
  br i1 %.not54.not62, label %.lr.ph66.preheader, label %.critedge._crit_edge.thread

.lr.ph66.preheader:                               ; preds = %.critedge.preheader
  %i.m = sext i32 %indvars.iv73 to i64
  %i.n = add nsw i32 %i.f, 1                      ; 4 uses
  br label %.lr.ph66

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.h
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %.critedge56, label %.lr.ph, !llvm.loop !879

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %.critedge
  %indvars.iv76 = phi i64 [ %i.m, %.lr.ph66.preheader ], [ %indvars.iv.next77, %.critedge ] ; 4 uses
  %.2.in64 = phi i32 [ %i.l, %.lr.ph66.preheader ], [ %.pre-phi, %.critedge ]
  %.04963 = phi i32 [ %i.l, %.lr.ph66.preheader ], [ %.150, %.critedge ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %3, i64 %indvars.iv76
  %i.p = load i8, ptr %i.o, align 1, !tbaa !177
  %.not55 = icmp eq i8 %i.p, 0
  br i1 %.not55, label %.lr.ph66..critedge_crit_edge, label %bb.d

.lr.ph66..critedge_crit_edge:                     ; preds = %.lr.ph66
  %.pre = trunc nsw i64 %indvars.iv76 to i32
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph66
  %i.q = add nsw i32 %.04963, 1
  %i.r = trunc nsw i64 %indvars.iv76 to i32       ; 3 uses
  tail call fastcc void @tt_delta_interpolate(i32 noundef %i.q, i32 noundef %.2.in64, i32 noundef %.04963, i32 noundef %i.r, ptr noundef %2, ptr noundef %1)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph66..critedge_crit_edge, %bb.d
  %.pre-phi = phi i32 [ %.pre, %.lr.ph66..critedge_crit_edge ], [ %i.r, %bb.d ]
  %.150 = phi i32 [ %.04963, %.lr.ph66..critedge_crit_edge ], [ %i.r, %bb.d ] ; 5 uses
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next77 to i32
  %exitcond79.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond79.not, label %.critedge._crit_edge, label %.lr.ph66, !llvm.loop !880

.critedge._crit_edge:                             ; preds = %.critedge
  %i.s = icmp eq i32 %.150, %i.l
  br i1 %i.s, label %.critedge._crit_edge.thread, label %bb.e

.critedge._crit_edge.thread:                      ; preds = %.critedge.preheader, %.critedge._crit_edge
  %.2.lcssa88 = phi i32 [ %i.n, %.critedge._crit_edge ], [ %.261, %.critedge.preheader ] ; 4 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv
  %i.u = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !176 ; 2 uses
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !176 ; 2 uses
  %i.x = sub nsw <2 x i64> %i.v, %i.w             ; 6 uses
  %i.y = icmp eq <2 x i64> %i.v, %i.w             ; 2 uses
  %i.z = extractelement <2 x i1> %i.y, i64 0
  %i.aa = extractelement <2 x i1> %i.y, i64 1
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %.critedge56, label %.preheader30.i

.preheader30.i:                                   ; preds = %.critedge._crit_edge.thread
  %i.ab = icmp slt i32 %.048, %i.l
  br i1 %i.ab, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.preheader30.i
  %min.iters.check97 = icmp ult i64 %indvar, 4
  br i1 %min.iters.check97, label %.lr.ph.i.preheader110, label %vector.ph98

vector.ph98:                                      ; preds = %.lr.ph.i.preheader
  %n.vec99 = and i64 %indvar, -2                  ; 3 uses
  %i.ac = add i64 %n.vec99, %i.g
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next104, %vector.body100 ] ; 2 uses
  %i.ad = add i64 %index101, %i.g                 ; 2 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.af = getelementptr [16 x i8], ptr %1, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %wide.load102 = load <2 x i64>, ptr %i.ae, align 8
  %wide.load103 = load <2 x i64>, ptr %i.ag, align 8
  %i.ah = add nsw <2 x i64> %wide.load102, %i.x
  %i.ai = add nsw <2 x i64> %wide.load103, %i.x
  store <2 x i64> %i.ah, ptr %i.ae, align 8
  store <2 x i64> %i.ai, ptr %i.ag, align 8
  %index.next104 = add nuw i64 %index101, 2       ; 2 uses
  %i.aj = icmp eq i64 %index.next104, %n.vec99
  br i1 %i.aj, label %middle.block105, label %vector.body100, !llvm.loop !881

middle.block105:                                  ; preds = %vector.body100
  %cmp.n106 = icmp eq i64 %indvar, %n.vec99
  br i1 %cmp.n106, label %.preheader.i, label %.lr.ph.i.preheader110

.lr.ph.i.preheader110:                            ; preds = %.lr.ph.i.preheader, %middle.block105
  %indvars.iv.i.ph = phi i64 [ %i.g, %.lr.ph.i.preheader ], [ %i.ac, %middle.block105 ]
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %middle.block105, %.preheader30.i
  br i1 %.not54.not62, label %.lr.ph34.preheader.i, label %.critedge56

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count39.i = sext i16 %i.e to i64
  %i.ak = add i64 %indvar, %i.g
  %i.al = sub i64 %i.h, %i.ak                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph34.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph34.preheader.i
  %n.vec = and i64 %i.al, -2                      ; 3 uses
  %i.am = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = add i64 %indvars.iv, %index             ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %1, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 16     ; 2 uses
  %i.aq = getelementptr [16 x i8], ptr %1, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 32     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ap, align 8
  %wide.load95 = load <2 x i64>, ptr %i.ar, align 8
  %i.as = add nsw <2 x i64> %wide.load, %i.x
  %i.at = add nsw <2 x i64> %wide.load95, %i.x
  store <2 x i64> %i.as, ptr %i.ap, align 8
  store <2 x i64> %i.at, ptr %i.ar, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !882
end_hunk_1
begin_hunk_2_@llvm.bswap.i32
!270 = !{!151, !8, i64 768}
!271 = !{!"TT_CallRec_", !8, i64 0, !27, i64 8, !27, i64 16, !100, i64 24}
!272 = !{!271, !100, i64 24}
!273 = !{!"TT_DefRecord_", !8, i64 0, !27, i64 8, !27, i64 16, !8, i64 24, !7, i64 28}
!274 = !{!151, !27, i64 584}
!275 = !{!151, !27, i64 592}
!276 = !{!151, !27, i64 600}
!277 = !{!151, !100, i64 752}
!278 = !{!151, !8, i64 744}
!279 = !{!273, !8, i64 24}
!280 = !{!273, !7, i64 28}
!281 = !{!271, !8, i64 0}
!282 = !{!271, !27, i64 8}
!283 = !{!271, !27, i64 16}
!284 = !{!273, !8, i64 0}
!285 = !{!273, !27, i64 8}
!286 = !{!"TT_CodeRange_", !22, i64 0, !27, i64 8}
!287 = !{!286, !22, i64 0}
!288 = !{!286, !27, i64 8}
!289 = !{!151, !22, i64 112}
!290 = !{!151, !100, i64 736}
!291 = !{!151, !8, i64 728}
!292 = !{!151, !20, i64 278}
!293 = !{!"IUP_WorkerRec_", !21, i64 0, !21, i64 8, !21, i64 16, !8, i64 24}
!294 = !{!293, !21, i64 0}
!295 = !{!293, !21, i64 8}
!296 = !{!293, !21, i64 16}
!297 = !{!293, !8, i64 24}
!298 = !{!"llvm.loop.unroll.disable"}
!299 = !{!151, !7, i64 1000}
!300 = !{!151, !21, i64 88}
!301 = !{!151, !21, i64 104}
!302 = !{!151, !21, i64 152}
!303 = !{!151, !27, i64 408}
!304 = !{!151, !27, i64 416}
!305 = !{!151, !21, i64 168}
!306 = !{i64 0, i64 8, !176, i64 8, i64 8, !176}
!307 = !{!151, !20, i64 840}
!308 = !{!151, !43, i64 848}
!309 = !{!151, !27, i64 392}
!310 = !{!151, !7, i64 580}
!311 = !{!151, !20, i64 608}
!312 = !{!151, !20, i64 610}
!313 = !{!151, !43, i64 688}
!314 = !{!151, !27, i64 872}
!315 = !{!151, !27, i64 880}
!316 = !{!151, !27, i64 888}
!317 = !{!151, !20, i64 472}
!318 = !{!151, !7, i64 896}
!319 = !{!151, !27, i64 456}
!320 = !{!151, !27, i64 464}
!321 = !{!151, !27, i64 696}
!322 = !{!252, !43, i64 16}
!323 = !{!252, !43, i64 8}
!324 = !{!67, !7, i64 1209}
!325 = !{!40, !27, i64 24}
!326 = !{!67, !10, i64 832}
!327 = !{!252, !248, i64 24}
!328 = !{!"p1 _ZTS12FT_Var_Axis_", !10, i64 0}
!329 = !{!"p1 _ZTS19FT_Var_Named_Style_", !10, i64 0}
!330 = !{!"FT_MM_Var_", !8, i64 0, !8, i64 4, !8, i64 8, !328, i64 16, !329, i64 24}
!331 = !{!330, !8, i64 0}
!332 = !{!330, !328, i64 16}
!333 = !{!330, !329, i64 24}
!334 = !{!"FT_Var_Named_Style_", !43, i64 0, !8, i64 8, !8, i64 12}
!335 = !{!334, !43, i64 0}
!336 = !{!"FT_Var_Axis_", !22, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !8, i64 40}
!337 = !{!336, !27, i64 24}
!338 = !{!336, !27, i64 8}
!339 = !{!336, !27, i64 16}
!340 = !{!252, !43, i64 40}
!341 = !{!252, !7, i64 48}
!342 = !{!334, !8, i64 8}
!343 = !{!67, !8, i64 1244}
!344 = !{!248, !248, i64 0}
!345 = !{!"GX_DeltaSetIdxMapRec_", !27, i64 0, !64, i64 8, !64, i64 16}
!346 = !{!345, !64, i64 16}
!347 = !{!345, !64, i64 8}
!348 = !{!"p1 _ZTS18GX_ItemVarDataRec_", !10, i64 0}
!349 = !{!"p1 _ZTS16GX_VarRegionRec_", !10, i64 0}
!350 = !{!"GX_ItemVarStoreRec_", !8, i64 0, !348, i64 8, !20, i64 16, !8, i64 20, !349, i64 24}
!351 = !{!350, !8, i64 0}
!352 = !{!350, !348, i64 8}
!353 = !{!"GX_ItemVarDataRec_", !8, i64 0, !8, i64 4, !64, i64 8, !22, i64 16, !20, i64 24, !7, i64 26}
!354 = !{!353, !8, i64 0}
!355 = !{!350, !20, i64 16}
!356 = !{!350, !349, i64 24}
!357 = !{!350, !8, i64 20}
!358 = !{!"p1 _ZTS17GX_AxisCoordsRec_", !10, i64 0}
!359 = !{!"GX_VarRegionRec_", !358, i64 0}
!360 = !{!359, !358, i64 0}
!361 = !{!"GX_AxisCoordsRec_", !27, i64 0, !27, i64 8, !27, i64 16}
!362 = !{!361, !27, i64 0}
!363 = !{!361, !27, i64 8}
!364 = !{!361, !27, i64 16}
!365 = !{!353, !64, i64 8}
!366 = !{!353, !8, i64 4}
!367 = !{!353, !20, i64 24}
!368 = !{!353, !7, i64 26}
!369 = !{!353, !22, i64 16}
!370 = !{!252, !249, i64 56}
!371 = !{!"p1 _ZTS18GX_AVarSegmentRec_", !10, i64 0}
!372 = !{!"GX_AVarTableRec_", !371, i64 0, !350, i64 8, !345, i64 40}
!373 = !{!372, !371, i64 0}
!374 = !{!"p1 _ZTS25GX_AVarCorrespondenceRec_", !10, i64 0}
!375 = !{!"GX_AVarSegmentRec_", !20, i64 0, !374, i64 8}
!376 = !{!375, !374, i64 8}
!377 = !{!252, !250, i64 72}
!378 = !{!252, !250, i64 88}
!379 = !{!252, !251, i64 96}
!380 = !{!"p1 _ZTS12GX_ValueRec_", !10, i64 0}
!381 = !{!"GX_MVarTableRec_", !20, i64 0, !350, i64 8, !380, i64 40}
!382 = !{!381, !380, i64 40}
!383 = !{!252, !43, i64 112}
!384 = !{!252, !43, i64 128}
!385 = !{!252, !27, i64 136}
!386 = !{!252, !8, i64 120}
!387 = !{!252, !8, i64 104}
!388 = !{!375, !20, i64 0}
!389 = !{!"GX_AVarCorrespondenceRec_", !27, i64 0, !27, i64 8}
!390 = !{!389, !27, i64 8}
!391 = !{!389, !27, i64 0}
!392 = !{!87, !22, i64 64}
!393 = !{!87, !22, i64 0}
!394 = !{!87, !22, i64 72}
!395 = !{!"FT_ListNodeRec_", !16, i64 0, !16, i64 8, !10, i64 16}
!396 = !{!395, !10, i64 16}
!397 = !{!381, !20, i64 0}
!398 = !{!"GX_ValueRec_", !27, i64 0, !20, i64 8, !20, i64 10, !20, i64 12}
!399 = !{!398, !27, i64 0}
!400 = !{!398, !20, i64 8}
!401 = !{!398, !20, i64 10}
!402 = !{!398, !20, i64 12}
!403 = !{!250, !250, i64 0}
!404 = !{!"GX_HVVarTableRec_", !350, i64 0, !345, i64 32}
!405 = !{!404, !64, i64 48}
!406 = !{!404, !27, i64 32}
!407 = !{!404, !64, i64 40}
!408 = !{!"FT_Service_MetricsVariationsRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64}
!409 = !{!408, !10, i64 64}
!410 = !{!104, !94, i64 0}
!411 = !{i64 0, i64 2, !120, i64 2, i64 2, !120, i64 8, i64 8, !176, i64 16, i64 8, !176, i64 24, i64 8, !176, i64 32, i64 8, !176, i64 40, i64 8, !176, i64 48, i64 8, !176}
!412 = !{!67, !20, i64 336}
!413 = !{!67, !20, i64 138}
!414 = !{!95, !27, i64 16}
!415 = !{!95, !27, i64 24}
!416 = !{!67, !20, i64 140}
!417 = !{!95, !27, i64 32}
!418 = !{!67, !20, i64 142}
!419 = !{!95, !27, i64 40}
!420 = !{!67, !20, i64 390}
!421 = !{!67, !27, i64 1192}
!422 = !{!133, !8, i64 40}
!423 = !{!95, !27, i64 8}
!424 = !{!67, !39, i64 240}
!425 = !{!"p1 _ZTS24FT_Incremental_FuncsRec_", !10, i64 0}
!426 = !{!"p1 _ZTS18FT_IncrementalRec_", !10, i64 0}
!427 = !{!"FT_Incremental_InterfaceRec_", !425, i64 0, !426, i64 8}
!428 = !{!427, !425, i64 0}
!429 = !{!"FT_Incremental_FuncsRec_", !10, i64 0, !10, i64 8, !10, i64 16}
!430 = !{!427, !426, i64 8}
!431 = !{!133, !8, i64 56}
!432 = !{!67, !27, i64 1200}
!433 = !{!133, !20, i64 60}
!434 = !{!133, !27, i64 88}
!435 = !{!429, !10, i64 16}
!436 = !{!"FT_Incremental_MetricsRec_", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!437 = !{!436, !27, i64 0}
!438 = !{!436, !27, i64 8}
!439 = !{!436, !27, i64 16}
!440 = !{!133, !27, i64 64}
!441 = !{!133, !27, i64 128}
!442 = !{!133, !27, i64 312}
!443 = !{!133, !27, i64 320}
!444 = !{!133, !27, i64 328}
!445 = !{!133, !27, i64 336}
!446 = !{!111, !20, i64 2}
!447 = !{!111, !20, i64 0}
!448 = !{!111, !21, i64 8}
!449 = !{!193, !20, i64 26}
!450 = !{!193, !20, i64 24}
!451 = !{!133, !27, i64 288}
!452 = !{!193, !8, i64 152}
!453 = !{!111, !22, i64 16}
!454 = !{!111, !23, i64 24}
!455 = !{!193, !112, i64 160}
!456 = !{!"FT_SubGlyphRec_", !8, i64 0, !20, i64 4, !8, i64 8, !8, i64 12, !71, i64 16}
!457 = !{!456, !8, i64 8}
!458 = !{!456, !8, i64 12}
!459 = !{!456, !20, i64 4}
!460 = !{!456, !8, i64 0}
!461 = !{!193, !8, i64 56}
!462 = !{i64 0, i64 8, !197, i64 8, i64 8, !176}
!463 = !{!13, !13, i64 0}
!464 = !{i64 0, i64 8, !463, i64 8, i64 2, !120, i64 10, i64 2, !120, i64 12, i64 2, !120, i64 14, i64 2, !120, i64 16, i64 8, !196, i64 24, i64 8, !196, i64 32, i64 8, !196, i64 40, i64 8, !197, i64 48, i64 8, !198, i64 56, i64 2, !120}
!465 = !{!104, !27, i64 184}
!466 = !{!192, !20, i64 2}
!467 = !{!24, !20, i64 12}
!468 = !{!192, !20, i64 0}
!469 = !{!24, !20, i64 14}
!470 = !{!192, !21, i64 48}
!471 = !{!192, !21, i64 8}
!472 = !{!192, !23, i64 24}
!473 = !{!24, !20, i64 56}
!474 = !{!456, !27, i64 16}
!475 = !{!456, !27, i64 24}
!476 = !{!456, !27, i64 40}
!477 = !{!456, !27, i64 32}
!478 = !{!193, !20, i64 98}
!479 = !{!193, !8, i64 8}
!480 = !{!67, !8, i64 1304}
!481 = !{!67, !20, i64 288}
!482 = !{!67, !45, i64 296}
!483 = !{!"TT_TableRec_", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!484 = !{!133, !22, i64 344}
!485 = !{!133, !22, i64 352}
!486 = !{!14, !12, i64 8}
!487 = !{!14, !11, i64 0}
!488 = !{!"FT_Module_Class_", !27, i64 0, !27, i64 8, !22, i64 16, !27, i64 24, !27, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64}
!489 = !{!488, !10, i64 40}
!490 = !{!28, !10, i64 32}
!491 = !{!28, !10, i64 8}
!492 = !{!67, !27, i64 280}
!493 = !{!28, !10, i64 16}
!494 = !{!40, !8, i64 56}
!495 = !{!67, !10, i64 1176}
!496 = !{!67, !10, i64 1168}
!497 = !{!28, !10, i64 24}
!498 = distinct !{null, null}
!499 = distinct !{null, null}
!500 = distinct !{null}
!501 = !{!114, !94, i64 8}
!502 = !{!40, !27, i64 32}
!503 = !{!104, !27, i64 32}
!504 = !{!104, !27, i64 40}
!505 = !{!28, !10, i64 144}
!506 = !{!67, !27, i64 1256}
!507 = !{!114, !20, i64 202}
!508 = !{!114, !20, i64 200}
!509 = !{!114, !7, i64 178}
!510 = !{!114, !8, i64 192}
!511 = !{!114, !8, i64 196}
!512 = !{!"TT_SBit_MetricsRec_", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14}
!513 = !{!512, !20, i64 2}
!514 = !{!512, !20, i64 0}
!515 = !{!512, !20, i64 4}
!516 = !{!512, !20, i64 6}
!517 = !{!512, !20, i64 8}
!518 = !{!512, !20, i64 10}
!519 = !{!512, !20, i64 12}
!520 = !{!512, !20, i64 14}
!521 = !{!67, !8, i64 1344}
!522 = !{!67, !10, i64 1480}
!523 = !{!28, !10, i64 360}
!524 = !{!67, !37, i64 176}
!525 = !{!48, !20, i64 24}
!526 = !{!48, !20, i64 26}
!527 = !{!104, !8, i64 276}
!528 = !{!104, !8, i64 288}
!529 = !{!104, !8, i64 292}
!530 = !{!48, !20, i64 22}
!531 = !{!99, !7, i64 73}
!532 = !{!99, !7, i64 74}
!533 = !{!48, !20, i64 20}
!534 = !{!104, !20, i64 484}
!535 = !{!104, !21, i64 488}
!536 = !{!104, !21, i64 496}
!537 = !{!133, !22, i64 280}
!538 = !{!67, !27, i64 776}
!539 = !{!114, !8, i64 240}
!540 = !{!114, !8, i64 232}
!541 = !{!114, !112, i64 248}
!542 = !{i64 0, i64 2, !120, i64 2, i64 2, !120, i64 8, i64 8, !196, i64 16, i64 8, !197, i64 24, i64 8, !198, i64 32, i64 4, !9}
!543 = !{!114, !10, i64 256}
!544 = !{!114, !27, i64 264}
!545 = !{!28, !10, i64 168}
!546 = distinct !{!546, !209, !210, !211}
!547 = distinct !{!547, !209, !211, !210}
!548 = distinct !{!548, !209, !210, !211}
!549 = distinct !{!549, !209, !211, !210}
!550 = distinct !{!550, !209, !554}
!551 = distinct !{null}
!552 = distinct !{!552, !209}
!553 = !{ptr @TT_Get_VMetrics}
!554 = !{!"llvm.loop.unswitch.partial.disable"}
!555 = !{!28, !10, i64 208}
!556 = !{ptr @tt_size_select}
!557 = !{!"FT_Size_RequestRec_", !8, i64 0, !27, i64 8, !27, i64 16, !8, i64 24, !8, i64 28}
!558 = !{!557, !8, i64 0}
!559 = distinct !{!559, !209}
!560 = distinct !{null}
!561 = distinct !{!561, !209}
!562 = distinct !{!562, !209}
!563 = distinct !{!563, !209}
!564 = distinct !{!564, !209}
!565 = distinct !{null}
!566 = distinct !{!566, !209}
!567 = distinct !{!567, !209}
!568 = distinct !{!568, !298}
!569 = distinct !{!569, !298}
!570 = distinct !{!570, !209}
!571 = distinct !{!571, !209}
!572 = distinct !{!572, !209}
!573 = distinct !{!573, !209}
!574 = distinct !{!574, !209}
!575 = distinct !{!575, !209}
!576 = distinct !{!576, !209, !210, !211}
!577 = distinct !{!577, !209, !211, !210}
!578 = distinct !{!578, !298}
!579 = distinct !{!579, !298}
!580 = distinct !{!580, !298}
!581 = distinct !{!581, !298}
!582 = distinct !{!582, !209}
!583 = distinct !{null}
!584 = distinct !{!584, !209}
!585 = distinct !{null}
!586 = distinct !{null}
!587 = distinct !{!587, !209}
!588 = distinct !{null}
!589 = distinct !{!589, !209}
!590 = distinct !{!590, !298}
!591 = distinct !{!591, !209}
!592 = distinct !{null}
!593 = distinct !{null}
!594 = distinct !{null}
!595 = distinct !{null}
!596 = distinct !{null}
!597 = distinct !{null}
!598 = distinct !{null}
!599 = distinct !{null}
!600 = distinct !{null}
!601 = distinct !{!601, !209}
!602 = distinct !{null}
!603 = distinct !{null}
!604 = distinct !{!604, !209}
!605 = distinct !{!605, !209}
!606 = distinct !{!606, !209}
!607 = distinct !{!607, !209}
!608 = distinct !{!608, !209}
!609 = distinct !{!609, !209}
!610 = distinct !{!610, !209}
!611 = distinct !{!611, !209}
!612 = !{!151, !20, i64 340}
!613 = !{!151, !27, i64 1104}
!614 = !{!151, !27, i64 1120}
!615 = !{!151, !27, i64 1112}
!616 = !{!151, !27, i64 1128}
!617 = !{!151, !20, i64 400}
!618 = !{!151, !20, i64 402}
!619 = !{!151, !10, i64 1080}
!620 = !{!151, !10, i64 1088}
!621 = !{!151, !10, i64 1056}
!622 = !{!151, !8, i64 668}
!623 = !{!151, !20, i64 212}
!624 = !{!151, !21, i64 224}
!625 = !{!101, !20, i64 0}
!626 = !{!101, !20, i64 2}
!627 = !{!151, !22, i64 240}
!628 = !{!273, !27, i64 16}
!629 = !{!151, !27, i64 488}
!630 = !{!151, !8, i64 760}
!631 = !{!151, !8, i64 732}
!632 = !{!151, !21, i64 280}
!633 = !{!151, !21, i64 288}
!634 = !{!151, !21, i64 296}
!635 = !{!151, !23, i64 312}
!636 = !{!151, !20, i64 320}
!637 = !{!151, !22, i64 304}
!638 = !{!151, !20, i64 214}
!639 = !{!151, !23, i64 248}
!640 = !{!151, !20, i64 256}
!641 = !{!151, !21, i64 216}
!642 = !{!151, !21, i64 232}
!643 = !{!151, !7, i64 529}
!644 = !{!151, !7, i64 530}
!645 = !{!151, !8, i64 748}
!646 = !{!151, !8, i64 764}
!647 = distinct !{!647, !209}
!648 = distinct !{!648, !209, !210, !211}
!649 = distinct !{!649, !298}
!650 = distinct !{!650, !209, !210}
!651 = distinct !{!651, !209}
!652 = distinct !{!652, !209}
!653 = distinct !{!653, !209, !210, !211}
!654 = distinct !{!654, !298}
!655 = distinct !{!655, !209, !210}
!656 = distinct !{!656, !209}
!657 = distinct !{!657, !298}
!658 = distinct !{!658, !209}
!659 = distinct !{!659, !298}
!660 = distinct !{!660, !209}
!661 = distinct !{!661, !209}
!662 = distinct !{!662, !209}
!663 = distinct !{!663, !209}
!664 = distinct !{!664, !298}
!665 = distinct !{!665, !209}
!666 = distinct !{!666, !298}
!667 = distinct !{!667, !209}
!668 = !{!"GX_FVar_Head_", !27, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16}
!669 = !{!668, !20, i64 14}
!670 = !{!668, !20, i64 16}
!671 = !{!668, !20, i64 10}
!672 = !{!252, !27, i64 32}
end_hunk_2
begin_hunk_3_@llvm.bswap.i32
!675 = !{!336, !22, i64 0}
!676 = !{!668, !20, i64 8}
!677 = !{!"fvar_axis_", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !20, i64 32, !20, i64 34}
!678 = !{!677, !27, i64 0}
!679 = !{!336, !27, i64 32}
!680 = !{!677, !27, i64 24}
!681 = !{!677, !20, i64 34}
!682 = !{!336, !8, i64 40}
!683 = !{!677, !20, i64 32}
!684 = !{!334, !8, i64 12}
!685 = !{!28, !10, i64 336}
!686 = distinct !{!686, !209}
!687 = distinct !{!687, !209}
!688 = distinct !{!688, !209}
!689 = distinct !{!689, !209, !210, !211}
!690 = distinct !{!690, !298}
!691 = distinct !{!691, !209, !210}
!692 = !{!28, !10, i64 328}
!693 = !{!40, !22, i64 48}
!694 = !{!67, !22, i64 1248}
!695 = !{!67, !22, i64 1184}
!696 = distinct !{!696, !209}
!697 = distinct !{!697, !209}
!698 = !{!345, !27, i64 0}
!699 = distinct !{!699, !209}
!700 = distinct !{!700, !209}
!701 = distinct !{!701, !209}
!702 = distinct !{!702, !209}
!703 = distinct !{!703, !209}
!704 = distinct !{!704, !298}
!705 = distinct !{!705, !209}
!706 = distinct !{!706, !209}
!707 = distinct !{!707, !209}
!708 = distinct !{!708, !209}
!709 = distinct !{!709, !209}
!710 = distinct !{!710, !209}
!711 = distinct !{!711, !209}
!712 = distinct !{!712, !209}
!713 = !{!43, !43, i64 0}
!714 = distinct !{!714, !209}
!715 = distinct !{!715, !209}
!716 = distinct !{null}
!717 = distinct !{!717, !209}
!718 = distinct !{!718, !209}
!719 = distinct !{!719, !209}
!720 = distinct !{!720, !209}
!721 = distinct !{!721, !209}
!722 = distinct !{!722, !209}
!723 = distinct !{!723, !209, !210, !211}
!724 = distinct !{!724, !209, !211, !210}
!725 = distinct !{!725, !298}
!726 = distinct !{!726, !209}
!727 = distinct !{!727, !209, !210, !211}
!728 = distinct !{!728, !298}
!729 = distinct !{!729, !209, !210}
!730 = distinct !{!730, !209}
!731 = distinct !{!731, !209}
!732 = distinct !{!732, !209}
!733 = !{!67, !7, i64 1208}
!734 = !{!"GX_GVar_Head_", !27, i64 0, !20, i64 8, !20, i64 10, !27, i64 16, !20, i64 24, !20, i64 26, !27, i64 32}
!735 = !{!734, !27, i64 0}
!736 = !{!734, !20, i64 8}
!737 = !{!734, !20, i64 10}
!738 = !{!734, !20, i64 24}
!739 = !{!734, !20, i64 26}
!740 = !{!734, !27, i64 32}
!741 = !{!734, !27, i64 16}
!742 = distinct !{!742, !209}
!743 = distinct !{!743, !209, !210, !211}
!744 = distinct !{!744, !209}
!745 = distinct !{!745, !209}
!746 = distinct !{!746, !209}
!747 = distinct !{!747, !209}
!748 = distinct !{!748, !209}
!749 = distinct !{!749, !209}
!750 = distinct !{!750, !209, !210}
!751 = distinct !{!751, !209}
!752 = distinct !{!752, !209}
!753 = distinct !{!753, !209}
!754 = distinct !{!754, !209}
!755 = distinct !{!755, !209}
!756 = distinct !{!756, !209}
!757 = distinct !{!757, !209}
!758 = distinct !{!758, !209}
!759 = distinct !{!759, !209}
!760 = distinct !{!760, !209}
!761 = distinct !{!761, !209}
!762 = distinct !{!762, !209}
!763 = distinct !{!763, !209}
!764 = distinct !{!764, !209}
!765 = distinct !{!765, !209, !210, !211}
!766 = distinct !{!766, !298}
!767 = distinct !{!767, !209}
!768 = distinct !{!768, !209, !210}
!769 = !{!372, !348, i64 16}
!770 = !{!372, !64, i64 56}
!771 = !{!372, !27, i64 40}
!772 = !{!372, !64, i64 48}
!773 = distinct !{!773, !209}
!774 = distinct !{!774, !209}
!775 = !{!67, !20, i64 930}
!776 = !{!67, !55, i64 936}
!777 = !{!252, !7, i64 64}
!778 = !{!252, !8, i64 68}
!779 = !{!252, !7, i64 65}
!780 = !{!252, !7, i64 80}
!781 = !{!252, !8, i64 84}
!782 = !{!252, !7, i64 81}
!783 = distinct !{!783, !209}
!784 = !{!67, !10, i64 912}
!785 = !{!40, !20, i64 142}
!786 = !{!40, !20, i64 138}
!787 = !{!40, !20, i64 140}
!788 = !{!67, !20, i64 768}
!789 = !{!67, !20, i64 770}
!790 = !{!40, !20, i64 148}
!791 = !{!40, !20, i64 150}
!792 = distinct !{null, null}
!793 = distinct !{null, ptr @TT_Get_VMetrics}
!794 = distinct !{null}
!795 = distinct !{!795, !209}
!796 = distinct !{!796, !209}
!797 = distinct !{!797, !209}
!798 = distinct !{!798, !209}
!799 = distinct !{!799, !209}
!800 = !{!67, !20, i64 490}
!801 = !{!429, !10, i64 0}
!802 = !{!"FT_Data_", !22, i64 0, !8, i64 8}
!803 = !{!802, !8, i64 8}
!804 = !{!802, !22, i64 0}
!805 = !{!133, !8, i64 96}
!806 = !{!133, !8, i64 100}
!807 = !{!133, !8, i64 304}
!808 = !{!133, !7, i64 108}
!809 = !{!436, !27, i64 24}
!810 = !{!133, !27, i64 120}
!811 = !{!133, !27, i64 136}
!812 = !{!16, !16, i64 0}
!813 = !{!395, !16, i64 8}
!814 = !{!429, !10, i64 8}
!815 = !{i64 0, i64 8, !176, i64 8, i64 8, !176, i64 16, i64 8, !176, i64 24, i64 8, !176}
!816 = !{!33, !27, i64 0}
!817 = !{!33, !27, i64 24}
!818 = !{!33, !27, i64 16}
!819 = !{!33, !27, i64 8}
!820 = !{!67, !20, i64 542}
!821 = !{!151, !132, i64 8}
!822 = !{i64 0, i64 8, !176, i64 8, i64 8, !176, i64 16, i64 2, !120, i64 24, i64 8, !176, i64 32, i64 8, !176, i64 40, i64 32, !177, i64 72, i64 1, !177, i64 73, i64 1, !177, i64 74, i64 1, !177}
!823 = !{!48, !20, i64 28}
!824 = distinct !{!824, !209}
!825 = !{!67, !22, i64 1136}
!826 = !{!24, !20, i64 8}
!827 = !{!24, !20, i64 10}
!828 = !{!99, !20, i64 16}
!829 = !{!99, !27, i64 32}
!830 = !{!99, !27, i64 24}
!831 = !{!67, !22, i64 1120}
!832 = distinct !{!832, !209, !210, !211}
!833 = distinct !{!833, !209, !210}
!834 = distinct !{!834, !209, !210, !211}
!835 = distinct !{!835, !209, !210}
!836 = distinct !{!836, !209}
!837 = distinct !{!837, !209}
!838 = distinct !{!838, !209}
!839 = distinct !{!839, !"LVerDomain"}
!840 = distinct !{!840, !839}
!841 = distinct !{!841, !839}
!842 = distinct !{!842, !839}
!843 = distinct !{!843, !839}
!844 = distinct !{!844, !209, !210, !211}
!845 = distinct !{!845, !209, !210}
!846 = distinct !{!846, !209}
!847 = distinct !{!847, !209}
!848 = distinct !{!848, !"LVerDomain"}
!849 = distinct !{!849, !848}
!850 = distinct !{!850, !848}
!851 = distinct !{!851, !848}
!852 = distinct !{!852, !848}
!853 = distinct !{!853, !209, !210, !211}
!854 = distinct !{!854, !209, !210}
!855 = distinct !{!855, !209}
!856 = distinct !{!856, !209}
!857 = !{!840}
!858 = !{!843, !842, !841}
!859 = !{!843}
!860 = !{!842, !841}
!861 = !{!842}
!862 = !{!841}
!863 = !{!849}
!864 = !{!852, !851, !850}
!865 = !{!852}
!866 = !{!851, !850}
!867 = !{!851}
!868 = !{!850}
!869 = distinct !{!869, !209, !210, !211}
!870 = distinct !{!870, !209, !210, !211}
!871 = distinct !{!871, !209, !210}
!872 = distinct !{!872, !209, !211, !210}
!873 = !{!193, !21, i64 32}
!874 = distinct !{!874, !209}
!875 = !{!192, !21, i64 40}
!876 = !{!192, !22, i64 16}
!877 = !{!133, !22, i64 248}
!878 = !{!133, !20, i64 220}
!879 = distinct !{!879, !209}
!880 = distinct !{!880, !209}
!881 = distinct !{!881, !209, !210, !211}
!882 = distinct !{!882, !209, !210, !211}
!883 = distinct !{!883, !209, !211, !210}
!884 = distinct !{!884, !209, !211, !210}
!885 = distinct !{!885, !209}
!886 = distinct !{!886, !209}
!887 = distinct !{null}
!888 = !{!193, !22, i64 112}
!889 = distinct !{!889, !209}
!890 = !{!67, !20, i64 136}
!891 = !{!67, !20, i64 144}
!892 = !{!95, !27, i64 48}
!893 = !{!104, !27, i64 152}
!894 = !{!104, !27, i64 160}
!895 = !{i64 0, i64 8, !196, i64 8, i64 8, !197, i64 16, i64 8, !198, i64 24, i64 2, !120}
!896 = distinct !{null, null}
!897 = distinct !{!897, !209}
!898 = distinct !{!898, !209}
!899 = distinct !{!899, !209}
!900 = distinct !{!900, !209}
!901 = !{!40, !22, i64 40}
!902 = !{!483, !27, i64 0}
!903 = !{!483, !27, i64 24}
!904 = !{!"tt_sfnt_id_rec_", !27, i64 0, !27, i64 8}
!905 = !{!904, !27, i64 8}
!906 = !{!904, !27, i64 0}
!907 = distinct !{!907, !209}
!908 = !{!67, !22, i64 1288}
!909 = !{!67, !27, i64 1296}
!910 = distinct !{!910, !209}
!911 = !{!483, !27, i64 16}
!912 = !{!87, !27, i64 8}
!913 = distinct !{!913, !209}
!914 = !{!133, !27, i64 72}
!915 = !{!133, !27, i64 80}
!916 = distinct !{!916, !209}
!917 = distinct !{!917, !209}
!918 = distinct !{!918, !209}
!919 = distinct !{!919, !209}
!920 = !{!193, !20, i64 96}
!921 = !{!193, !8, i64 12}
!922 = distinct !{!922, !209}
end_hunk_3
