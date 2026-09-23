Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@TT_Vary_Apply_Glyph_Deltas:bb.a
  %i.qe = sub i64 %i.qc, %i.qd
  %i.qf = icmp ult i64 %i.lp, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.lp
  %i.qh = select i1 %i.qf, ptr %i.qg, ptr %i.qa
  store ptr %i.qh, ptr %i.bk, align 8, !tbaa !345
  br label %bb.aj

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.3 = phi ptr [ %.2, %bb.ai ], [ %.0369477, %bb.z ]
  %.2396 = add i64 %.pn, %.1395474
  %i.qi = add nuw nsw i32 %.1392475, 1            ; 2 uses
  %exitcond531.not = icmp eq i32 %i.qi, %i.bv
  br i1 %exitcond531.not, label %._crit_edge480, label %bb.n, !llvm.loop !845

._crit_edge480:                                   ; preds = %bb.aj, %.loopexit642
  %i.qj = getelementptr inbounds nuw i8, ptr %i.d, i64 1216 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !231 ; 3 uses
  %i.ql = and i32 %i.qk, 2
  %.not416 = icmp eq i32 %i.ql, 0                 ; 2 uses
  br i1 %.not416, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge480
  %i.qm = zext i16 %i.l to i64                    ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.qm
  store i64 0, ptr %i.qn, align 8, !tbaa !185
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.qm
  store i64 0, ptr %i.qo, align 8, !tbaa !185
  %i.qp = add nuw nsw i32 %i.m, 1
  %i.qq = zext nneg i32 %i.qp to i64              ; 2 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.qq
  store i64 0, ptr %i.qr, align 8, !tbaa !185
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.qq
  store i64 0, ptr %i.qs, align 8, !tbaa !185
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge480
  %i.qt = and i32 %i.qk, 16
  %.not417 = icmp eq i32 %i.qt, 0
  br i1 %.not417, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qu = add nuw nsw i32 %i.m, 2
  %i.qv = zext nneg i32 %i.qu to i64              ; 2 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.qv
  store i64 0, ptr %i.qw, align 8, !tbaa !185
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.qv
  store i64 0, ptr %i.qx, align 8, !tbaa !185
  %i.qy = add nuw nsw i32 %i.m, 3
  %i.qz = zext nneg i32 %i.qy to i64              ; 2 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.qz
  store i64 0, ptr %i.ra, align 8, !tbaa !185
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.qz
  store i64 0, ptr %i.rb, align 8, !tbaa !185
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.rc = load ptr, ptr %i.q, align 8, !tbaa !442 ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ao
  %indvars.iv532 = phi i64 [ 0, %bb.an ], [ %indvars.iv.next533, %bb.ao ] ; 5 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv532 ; 2 uses
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !185
  %i.rf = add nsw i64 %i.re, 512
  %i.rg = ashr i64 %i.rf, 10
  %i.rh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv532 ; 3 uses
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !230
  %i.rj = add nsw i64 %i.rg, %i.ri
  store i64 %i.rj, ptr %i.rh, align 8, !tbaa !230
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv532 ; 2 uses
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !185
  %i.rm = add nsw i64 %i.rl, 512
  %i.rn = ashr i64 %i.rm, 10
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rh, i64 8 ; 2 uses
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !257
  %i.rq = add nsw i64 %i.rn, %i.rp
  store i64 %i.rq, ptr %i.ro, align 8, !tbaa !257
  %i.rr = load i64, ptr %i.rd, align 8, !tbaa !185
  %i.rs = shl i64 %i.rr, 32
  %i.rt = add i64 %i.rs, 140737488355328
  %i.ru = ashr i64 %i.rt, 48
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %i.rc, i64 %indvars.iv532 ; 3 uses
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !230
  %i.rx = add nsw i64 %i.ru, %i.rw
  store i64 %i.rx, ptr %i.rv, align 8, !tbaa !230
  %i.ry = load i64, ptr %i.rk, align 8, !tbaa !185
  %i.rz = shl i64 %i.ry, 32
  %i.sa = add i64 %i.rz, 140737488355328
  %i.sb = ashr i64 %i.sa, 48
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !257
  %i.se = add nsw i64 %i.sb, %i.sd
  store i64 %i.se, ptr %i.sc, align 8, !tbaa !257
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 2 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count
  br i1 %exitcond536.not, label %bb.ap, label %bb.ao, !llvm.loop !846

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not416, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.sg = zext i16 %i.l to i64                    ; 2 uses
  %i.sh = getelementptr inbounds nuw [16 x i8], ptr %i.rc, i64 %i.sg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sf, ptr noundef nonnull align 8 dereferenceable(16) %i.sh, i64 16, i1 false), !tbaa.struct !299
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.sj = load ptr, ptr %i.q, align 8, !tbaa !442
  %i.sk = add nuw nsw i32 %i.m, 1
  %i.sl = zext nneg i32 %i.sk to i64              ; 2 uses
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %i.sl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.si, ptr noundef nonnull align 8 dereferenceable(16) %i.sm, i64 16, i1 false), !tbaa.struct !299
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.sl
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !230
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.sg
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !230
  %i.sr = add i64 %i.so, 32
  %i.ss = sub i64 %i.sr, %i.sq
  %i.st = lshr i64 %i.ss, 6
  %i.su = trunc i64 %i.st to i32
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.su, ptr %i.sv, align 8, !tbaa !145
  %.pre537 = load i32, ptr %i.qj, align 8, !tbaa !231
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.sw = phi i32 [ %.pre537, %bb.aq ], [ %i.qk, %bb.ap ]
  %i.sx = and i32 %i.sw, 16
  %.not419 = icmp eq i32 %i.sx, 0
  br i1 %.not419, label %bb.as, label %.thread433

bb.as:                                            ; preds = %bb.ar
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.sz = load ptr, ptr %i.q, align 8, !tbaa !442
  %i.ta = add nuw nsw i32 %i.m, 2
  %i.tb = zext nneg i32 %i.ta to i64              ; 2 uses
  %i.tc = getelementptr inbounds nuw [16 x i8], ptr %i.sz, i64 %i.tb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sy, ptr noundef nonnull align 8 dereferenceable(16) %i.tc, i64 16, i1 false), !tbaa.struct !299
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.te = load ptr, ptr %i.q, align 8, !tbaa !442
  %i.tf = add nuw nsw i32 %i.m, 3
  %i.tg = zext nneg i32 %i.tf to i64              ; 2 uses
  %i.th = getelementptr inbounds nuw [16 x i8], ptr %i.te, i64 %i.tg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.td, ptr noundef nonnull align 8 dereferenceable(16) %i.th, i64 16, i1 false), !tbaa.struct !299
  %i.ti = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.tg
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !257
  %i.tl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.tb
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !257
  %i.to = add i64 %i.tk, 32
  %i.tp = sub i64 %i.to, %i.tn
  %i.tq = lshr i64 %i.tp, 6
  %i.tr = trunc i64 %i.tq to i32
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.tr, ptr %i.ts, align 4, !tbaa !147
  br label %.thread433

.thread433:                                       ; preds = %bb.v, %bb.x, %bb.r, %bb.o, %bb.ar, %bb.as, %bb.l
  %.not428 = icmp eq ptr %.0371, inttoptr (i64 -1 to ptr)
  br i1 %.not428, label %bb.at, label %.thread439

.thread439:                                       ; preds = %.loopexit643, %.thread433
  %.1372445 = phi ptr [ %.0371, %.thread433 ], [ null, %.loopexit643 ]
  %.0382443 = phi ptr [ %i.dg, %.thread433 ], [ null, %.loopexit643 ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.1372445) #21
  br label %bb.at

bb.at:                                            ; preds = %.thread433, %.thread439
  %.0382444 = phi ptr [ %i.dg, %.thread433 ], [ %.0382443, %.thread439 ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0382444) #21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.i
  call void @FT_Stream_ExitFrame(ptr noundef %i.f) #21
  %i.tt = load i32, ptr %i.a, align 4, !tbaa !152
  br label %bb.av

bb.av:                                            ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.au
  %.0 = phi i32 [ 6, %bb.b ], [ 0, %bb.c ], [ %i.tt, %bb.au ], [ 0, %bb.d ], [ %i.bj, %bb.f ], [ %i.bi, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TT_Process_Simple_Glyph(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 98 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !440  ; 5 uses
  %i.g = zext i16 %i.f to i32
  %i.h = load ptr, ptr %0, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.m = zext i16 %i.f to i64                     ; 8 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !299
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !299
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !299
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !299
  %i.ab = add nuw nsw i32 %i.g, 4                 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !140   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !118
  %i.af = and i64 %i.ae, 2147418112
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.ai = and i64 %i.ah, 32768
  %.not102 = icmp eq i64 %i.ai, 0
  br i1 %.not102, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = zext nneg i32 %i.ab to i64
  %i.ak = call ptr @ft_mem_qrealloc(ptr noundef %i.j, i64 noundef 16, i64 noundef 0, i64 noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 4 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !152
  %.not103 = icmp eq i32 %i.al, 0
  br i1 %.not103, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.am = call fastcc i32 @TT_Vary_Apply_Glyph_Deltas(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.ak) ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !152
  %.not104 = icmp eq i32 %i.am, 0
  br i1 %.not104, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0100 = phi ptr [ %i.ak, %bb.d ], [ null, %bb.b ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !139 ; 2 uses
  %i.ap = and i64 %i.ao, 2
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = load i16, ptr %i.e, align 2, !tbaa !461
  %i.at = add i16 %i.as, 4                        ; 2 uses
  store i16 %i.at, ptr %i.ar, align 8, !tbaa !178
  %i.au = load i16, ptr %i.d, align 8, !tbaa !462
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i16 %i.au, ptr %i.av, align 2, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %1 = load ptr, ptr %i.aw, align 8, !tbaa !463
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %1, ptr %i.ax, align 8, !tbaa !177
  %2 = load ptr, ptr %i.k, align 8, !tbaa !464    ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %2, ptr %3, align 8, !tbaa !180
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ay = load ptr, ptr %4, align 8, !tbaa !465   ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ay, ptr %5, align 8, !tbaa !181
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %7 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !154
  store <2 x ptr> %7, ptr %6, align 8, !tbaa !154
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i16 0, ptr %i.ba, align 8, !tbaa !184
  %i.bb = zext i16 %i.at to i64
  %i.bc = shl nuw nsw i64 %i.bb, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ay, ptr align 8 %2, i64 %i.bc, i1 false)
  %.pre = load i64, ptr %i.an, align 8, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = phi i64 [ %.pre, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !442 ; 11 uses
  %i.bf = ptrtoaddr ptr %i.be to i64              ; 9 uses
  %i.bg = shl nuw nsw i32 %i.ab, 4
  %.idx = zext nneg i32 %i.bg to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx ; 2 uses
  %i.bi = and i64 %i.bd, 1
  %.not106 = icmp eq i64 %i.bi, 0
  %.pre127 = load ptr, ptr %0, align 8, !tbaa !140 ; 3 uses
  br i1 %.not106, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !117
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !tbaa !185 ; 12 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre127, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !118
  %i.br = and i64 %i.bq, 2147418112
  %.not107 = icmp eq i64 %i.br, 0
  br i1 %.not107, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre127, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !70
  %i.bu = and i64 %i.bt, 32768
  %.not108 = icmp eq i64 %i.bu, 0
  br i1 %.not108, label %.lr.ph125.preheader, label %.lr.ph.preheader

.lr.ph125.preheader:                              ; preds = %bb.i
  %i.bv = zext i16 %i.f to i64
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = add i64 %i.bw, %i.bf
  %i.by = add i64 %i.bx, 64
  %i.bz = add i64 %i.bf, 16
  %i.ca = call i64 @llvm.umax.i64(i64 %i.by, i64 %i.bz)
  %i.cb = xor i64 %i.bf, -1
  %i.cc = add i64 %i.ca, %i.cb
  %i.cd = lshr i64 %i.cc, 4                       ; 2 uses
  %min.iters.check142 = icmp eq i64 %i.cd, 0
  br i1 %min.iters.check142, label %.lr.ph125, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph125.preheader
  %i.ce = extractelement <2 x i64> %i.bo, i64 0
  %i.cf = extractelement <2 x i64> %i.bo, i64 1
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next149, %vector.body145 ] ; 3 uses
  %i.cg = shl i64 %index146, 4
  %next.gep147 = getelementptr i8, ptr %i.be, i64 %i.cg ; 2 uses
  %wide.load148 = load <2 x i64>, ptr %next.gep147, align 8
  %i.ch = mul <2 x i64> %wide.load148, %i.bo      ; 2 uses
  %i.ci = ashr <2 x i64> %i.ch, splat (i64 63)
  %i.cj = add <2 x i64> %i.ch, splat (i64 32768)
  %i.ck = add <2 x i64> %i.cj, %i.ci
  %i.cl = ashr <2 x i64> %i.ck, splat (i64 16)
  store <2 x i64> %i.cl, ptr %next.gep147, align 8
  %index.next149 = add nuw i64 %index146, 1
  %i.cm = icmp eq i64 %index146, %i.cd
  br i1 %i.cm, label %.loopexit, label %vector.body145, !llvm.loop !852

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.i
  %i.cn = zext i16 %i.f to i64
  %i.co = shl nuw nsw i64 %i.cn, 4
  %i.cp = add i64 %i.co, %i.bf
  %i.cq = add i64 %i.cp, 64
  %i.cr = add i64 %i.bf, 16
  %i.cs = call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cr)
  %i.ct = xor i64 %i.bf, -1
  %i.cu = add i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 4
  %min.iters.check = icmp ult i64 %i.cu, 144
  br i1 %min.iters.check, label %.lr.ph.preheader156, label %vector.memcheck

.lr.ph.preheader156:                              ; preds = %vector.memcheck, %.lr.ph.preheader
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.cw = zext i16 %i.f to i64
  %i.cx = shl nuw nsw i64 %i.cw, 4
  %i.cy = add i64 %i.cx, %i.bf
  %i.cz = add i64 %i.cy, 64
  %i.da = add i64 %i.bf, 16
  %umax = call i64 @llvm.umax.i64(i64 %i.cz, i64 %i.da)
  %i.db = xor i64 %i.bf, -1
  %i.dc = add i64 %umax, %i.db
  %i.dd = and i64 %i.dc, -16                      ; 2 uses
  %i.de = or disjoint i64 %i.dd, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.de
  %scevgep131 = getelementptr i8, ptr %.0100, i64 %i.de
  %scevgep132 = getelementptr i8, ptr %i.be, i64 8
  %i.df = add i64 %i.dd, 16                       ; 2 uses
  %scevgep133 = getelementptr i8, ptr %i.be, i64 %i.df
  %scevgep134 = getelementptr i8, ptr %.0100, i64 8
  %scevgep135 = getelementptr i8, ptr %.0100, i64 %i.df
  %bound0 = icmp ult ptr %i.be, %scevgep131
  %bound1 = icmp ult ptr %.0100, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0136 = icmp ult ptr %scevgep132, %scevgep135
  %bound1137 = icmp ult ptr %scevgep134, %scevgep133
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx = or i1 %found.conflict, %found.conflict138
  br i1 %conflict.rdx, label %.lr.ph.preheader156, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dg = extractelement <2 x i64> %i.bo, i64 0
  %i.dh = extractelement <2 x i64> %i.bo, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0100, i64 %i.di
  %next.gep139 = getelementptr i8, ptr %i.be, i64 %i.di
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %i.dj = mul <2 x i64> %wide.load, %i.bo         ; 2 uses
  %i.dk = ashr <2 x i64> %i.dj, splat (i64 63)
  %i.dl = add <2 x i64> %i.dj, splat (i64 32768)
  %i.dm = add <2 x i64> %i.dl, %i.dk
  %i.dn = ashr <2 x i64> %i.dm, splat (i64 16)
  %i.do = add nsw <2 x i64> %i.dn, splat (i64 32)
  %i.dp = ashr <2 x i64> %i.do, splat (i64 6)
  store <2 x i64> %i.dp, ptr %next.gep139, align 8
  %index.next = add nuw i64 %index, 1
  %i.dq = icmp eq i64 %index, %i.cv
  br i1 %i.dq, label %.loopexit, label %vector.body, !llvm.loop !853

.lr.ph:                                           ; preds = %.lr.ph.preheader156, %.lr.ph
  %.0123 = phi ptr [ %i.ea, %.lr.ph ], [ %.0100, %.lr.ph.preheader156 ] ; 2 uses
  %.099122 = phi ptr [ %i.dz, %.lr.ph ], [ %i.be, %.lr.ph.preheader156 ] ; 2 uses
  %i.dr = load <2 x i64>, ptr %.0123, align 8, !tbaa !185
  %i.ds = mul <2 x i64> %i.dr, %i.bo              ; 2 uses
  %i.dt = ashr <2 x i64> %i.ds, splat (i64 63)
  %i.du = add <2 x i64> %i.ds, splat (i64 32768)
  %i.dv = add <2 x i64> %i.du, %i.dt
  %i.dw = ashr <2 x i64> %i.dv, splat (i64 16)
  %i.dx = add nsw <2 x i64> %i.dw, splat (i64 32)
  %i.dy = ashr <2 x i64> %i.dx, splat (i64 6)
  store <2 x i64> %i.dy, ptr %.099122, align 8, !tbaa !185
  %i.dz = getelementptr inbounds nuw i8, ptr %.099122, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0123, i64 16
  %i.eb = icmp ult ptr %i.dz, %i.bh
  br i1 %i.eb, label %.lr.ph, label %.loopexit.loopexit157, !llvm.loop !854

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.lr.ph125
  %.1124 = phi ptr [ %i.ei, %.lr.ph125 ], [ %i.be, %.lr.ph125.preheader ] ; 3 uses
  %i.ec = load <2 x i64>, ptr %.1124, align 8, !tbaa !185
  %i.ed = mul <2 x i64> %i.ec, %i.bo              ; 2 uses
  %i.ee = ashr <2 x i64> %i.ed, splat (i64 63)
  %i.ef = add <2 x i64> %i.ed, splat (i64 32768)
  %i.eg = add <2 x i64> %i.ef, %i.ee
  %i.eh = ashr <2 x i64> %i.eg, splat (i64 16)
  store <2 x i64> %i.eh, ptr %.1124, align 8, !tbaa !185
  %i.ei = getelementptr inbounds nuw i8, ptr %.1124, i64 16 ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %i.bh
  br i1 %i.ej, label %.lr.ph125, label %.loopexit.loopexit, !llvm.loop !855

.loopexit.loopexit:                               ; preds = %.lr.ph125
  %i.ek = extractelement <2 x i64> %i.bo, i64 1
  %i.el = extractelement <2 x i64> %i.bo, i64 0
  br label %.loopexit

.loopexit.loopexit157:                            ; preds = %.lr.ph
  %i.em = extractelement <2 x i64> %i.bo, i64 1
  %i.en = extractelement <2 x i64> %i.bo, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %vector.body145, %.loopexit.loopexit157, %.loopexit.loopexit, %bb.g
  %.097117 = phi i64 [ %i.ek, %.loopexit.loopexit ], [ 0, %bb.g ], [ %i.em, %.loopexit.loopexit157 ], [ %i.cf, %vector.body145 ], [ %i.dh, %vector.body ] ; 2 uses
  %.098114 = phi i64 [ %i.el, %.loopexit.loopexit ], [ 0, %bb.g ], [ %i.en, %.loopexit.loopexit157 ], [ %i.ce, %vector.body145 ], [ %i.dg, %vector.body ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre127, i64 1216 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !231 ; 2 uses
  %i.eq = and i32 %i.ep, 2
  %.not109 = icmp ne i32 %i.eq, 0
  %i.er = and i64 %i.bd, 2
  %i.es = icmp eq i64 %i.er, 0                    ; 3 uses
  %or.cond = and i1 %i.es, %.not109
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.et = load i64, ptr %i.o, align 8, !tbaa !229
  %i.eu = mul i64 %i.et, %.098114                 ; 2 uses
  %i.ev = ashr i64 %i.eu, 63
  %i.ew = add i64 %i.eu, 32768
  %i.ex = add i64 %i.ew, %i.ev
  %i.ey = ashr i64 %i.ex, 16
  store i64 %i.ey, ptr %i.o, align 8, !tbaa !229
  %i.ez = load i64, ptr %i.s, align 8, !tbaa !435
  %i.fa = mul i64 %i.ez, %.098114                 ; 2 uses
  %i.fb = ashr i64 %i.fa, 63
  %i.fc = add i64 %i.fa, 32768
  %i.fd = add i64 %i.fc, %i.fb
  %i.fe = ashr i64 %i.fd, 16
end_hunk_0
begin_hunk_1_@TT_Process_Composite_Component:bb.a
  %.166 = phi i64 [ %i.bj, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %.164 = phi i64 [ %i.bo, %bb.i ], [ %i.ar, %bb.h ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !139 ; 2 uses
  %i.br = and i64 %i.bq, 1
  %.not74 = icmp eq i64 %i.br, 0
  br i1 %.not74, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !141
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !117 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !417
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !409
  %i.ca = mul i64 %i.bx, %.166                    ; 2 uses
  %i.cb = ashr i64 %i.ca, 63
  %i.cc = add i64 %i.ca, 32768
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = ashr i64 %i.cd, 16                      ; 3 uses
  %i.cf = mul i64 %i.bz, %.164                    ; 2 uses
  %i.cg = ashr i64 %i.cf, 63
  %i.ch = add i64 %i.cf, 32768
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = ashr i64 %i.ci, 16                      ; 2 uses
  %i.ck = load i16, ptr %i.m, align 4, !tbaa !453
  %i.cl = and i16 %i.ck, 4
  %.not75 = icmp ne i16 %i.cl, 0
  %i.cm = and i64 %i.bq, 2
  %i.cn = icmp eq i64 %i.cm, 0
  %or.cond79 = and i1 %i.cn, %.not75
  br i1 %or.cond79, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !220
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 948
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !215
  %.not76 = icmp eq i32 %i.cr, 0
  %i.cs = add nsw i64 %i.ce, 32
  %i.ct = and i64 %i.cs, -64
  %.267 = select i1 %.not76, i64 %i.ct, i64 %i.ce
  %i.cu = add nsw i64 %i.cj, 32
  %i.cv = and i64 %i.cu, -64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f, %bb.j
  %.4 = phi i64 [ %.166, %bb.j ], [ %i.ai, %bb.f ], [ %.267, %bb.l ], [ %i.ce, %bb.k ] ; 2 uses
  %.3 = phi i64 [ %.164, %bb.j ], [ %i.an, %bb.f ], [ %i.cv, %bb.l ], [ %i.cj, %bb.k ] ; 2 uses
  %i.cw = icmp ne i64 %.4, 0
  %i.cx = icmp ne i64 %.3, 0
  %or.cond3 = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond3, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  call void @FT_Outline_Translate(ptr noundef nonnull %4, i64 noundef %.4, i64 noundef %.3) #21
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.n, %bb.m, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.n ], [ 0, %bb.m ], [ 21, %bb.d ], [ 21, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TT_Process_Composite_Glyph(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 65535) %1, i32 noundef range(i32 0, 65536) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 26 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !443  ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  %i.h = load i16, ptr %i.g, align 2, !tbaa !470
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %i.f, 4
  %i.k = add nuw nsw i32 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !471
  %.not = icmp ugt i32 %i.k, %i.m
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %i.c, i32 noundef 4, i32 noundef 0) #21 ; 2 uses
  %.not55 = icmp eq i32 %i.n, 0
  br i1 %.not55, label %._crit_edge69, label %.thread63

._crit_edge69:                                    ; preds = %bb.b
  %.pre = load i16, ptr %i.d, align 2, !tbaa !440
  br label %.thread

.thread:                                          ; preds = %bb.a, %._crit_edge69
  %i.o = phi i16 [ %.pre, %._crit_edge69 ], [ %i.e, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !442
  %i.r = zext i16 %i.o to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !299
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !442
  %i.v = load i16, ptr %i.d, align 2, !tbaa !440
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !299
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !442
  %i.ab = load i16, ptr %i.d, align 2, !tbaa !440
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !299
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !442
  %i.ah = load i16, ptr %i.d, align 2, !tbaa !440
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !299
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !220 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !159 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 656 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !193
  %.not56 = icmp eq i32 %i.at, 0
  br i1 %.not56, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 664 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !192
  tail call void @ft_mem_free(ptr noundef %i.ap, ptr noundef %i.av) #21
  store ptr null, ptr %i.au, align 8, !tbaa !192
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  store i32 0, ptr %i.as, align 8, !tbaa !193
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !445
  %i.ay = tail call i32 @FT_Stream_Seek(ptr noundef %i.ar, i64 noundef %i.ax) #21 ; 3 uses
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !152
  %.not57 = icmp eq i32 %i.ay, 0
  br i1 %.not57, label %bb.e, label %.thread63

bb.e:                                             ; preds = %bb.d
  %i.az = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %i.ar, ptr noundef nonnull %i.a) #21 ; 3 uses
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !152 ; 2 uses
  %.not58 = icmp eq i32 %i.ba, 0
  br i1 %.not58, label %bb.f, label %.thread63

bb.f:                                             ; preds = %bb.e
  %.not59 = icmp eq i16 %i.az, 0
  br i1 %.not59, label %.thread63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = zext i16 %i.az to i32                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !425
  %i.be = icmp ult i32 %i.bd, %i.bb
  br i1 %i.be, label %.thread63, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = zext i16 %i.az to i64                   ; 2 uses
  %i.bg = call ptr @ft_mem_qrealloc(ptr noundef %i.ap, i64 noundef 1, i64 noundef 0, i64 noundef %i.bf, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 664
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !192
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !152 ; 2 uses
  %.not60 = icmp eq i32 %i.bi, 0
  br i1 %.not60, label %bb.i, label %.thread63

bb.i:                                             ; preds = %bb.h
  %i.bj = call i32 @FT_Stream_Read(ptr noundef %i.ar, ptr noundef %i.bg, i64 noundef %i.bf) #21 ; 3 uses
  store i32 %i.bj, ptr %i.a, align 4, !tbaa !152
  %.not61 = icmp eq i32 %i.bj, 0
  br i1 %.not61, label %bb.j, label %.thread63

bb.j:                                             ; preds = %bb.i
  store i32 %i.bb, ptr %i.as, align 8, !tbaa !193
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !223 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 26
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !461 ; 2 uses
  %i.bp = trunc nuw i32 %1 to i16                 ; 3 uses
  %reass.sub = sub i16 %i.bo, %i.bp
  %i.bq = add i16 %reass.sub, 4
  store i16 %i.bq, ptr %i.bk, align 8, !tbaa !178
  %i.br = load i16, ptr %i.bm, align 8, !tbaa !462
  %i.bs = trunc nuw i32 %2 to i16
  %i.bt = sub i16 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !179
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !463
  %i.bx = zext nneg i32 %1 to i64                 ; 4 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !177
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !464
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !180
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !465
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.bx
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !181
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !858
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.bx
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !183
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !859
  %i.co = zext nneg i32 %2 to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !182
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i16 %i.bp, ptr %i.cr, align 8, !tbaa !184
  %.not67 = icmp eq i16 %i.bo, %i.bp
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.j ] ; 2 uses
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !860
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !186
  %i.cv = and i8 %i.cu, -25
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !186
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = load i16, ptr %i.bk, align 8, !tbaa !861
  %i.cx = zext i16 %i.cw to i64
  %i.cy = add nuw nsw i64 %i.cx, 4294967292
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %.lr.ph, label %._crit_edge, !llvm.loop !857

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  %i.db = call fastcc i32 @TT_Hint_Glyph(ptr noundef %0, i8 noundef zeroext 1)
  br label %.thread63

.thread63:                                        ; preds = %bb.h, %bb.i, %bb.d, %bb.e, %bb.g, %bb.f, %bb.b, %._crit_edge
  %.1 = phi i32 [ %i.n, %bb.b ], [ %i.db, %._crit_edge ], [ 22, %bb.g ], [ %i.ay, %bb.d ], [ 0, %bb.f ], [ %i.ba, %bb.e ], [ %i.bj, %bb.i ], [ %i.bi, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tt_interpolate_deltas(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !441
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.critedge56
  %.048 = phi i32 [ %.3, %.critedge56 ], [ 0, %.preheader ] ; 7 uses
  %.0 = phi i16 [ %i.eb, %.critedge56 ], [ 0, %.preheader ] ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !448
  %i.f = sext i16 %.0 to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !128  ; 3 uses
  %i.i = zext i16 %i.h to i32                     ; 5 uses
  %.not5268 = icmp sgt i32 %.048, %i.i
  br i1 %.not5268, label %.critedge56, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.j = sext i32 %.048 to i64                    ; 2 uses
  %i.k = zext i16 %i.h to i64                     ; 2 uses
  %i.l = add nuw nsw i32 %i.i, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.c ] ; 2 uses
  %indvars.iv82.in = phi i32 [ %.048, %.lr.ph.preheader ], [ %indvars.iv82, %bb.c ]
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 11 uses
  %indvars.iv82 = add i32 %indvars.iv82.in, 1     ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !186
  %.not53 = icmp eq i8 %i.n, 0
  br i1 %.not53, label %bb.c, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph
  %i.o = trunc nsw i64 %indvars.iv to i32         ; 9 uses
  %.270 = add nsw i32 %i.o, 1
  %.not54.not71 = icmp slt i32 %i.o, %i.i         ; 2 uses
  br i1 %.not54.not71, label %.lr.ph75.preheader, label %.critedge._crit_edge.thread

.lr.ph75.preheader:                               ; preds = %.critedge.preheader
  %i.p = sext i32 %indvars.iv82 to i64
  %i.q = add nuw nsw i32 %i.i, 1                  ; 4 uses
  br label %.lr.ph75

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.k
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %.critedge56, label %.lr.ph, !llvm.loop !862

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %tt_delta_interpolate.exit
  %indvars.iv85 = phi i64 [ %i.p, %.lr.ph75.preheader ], [ %indvars.iv.next86, %tt_delta_interpolate.exit ] ; 5 uses
  %.2.in73 = phi i32 [ %i.o, %.lr.ph75.preheader ], [ %.pre-phi, %tt_delta_interpolate.exit ]
  %.04972 = phi i32 [ %i.o, %.lr.ph75.preheader ], [ %.150, %tt_delta_interpolate.exit ] ; 6 uses
  %i.r = getelementptr inbounds i8, ptr %3, i64 %indvars.iv85
  %i.s = load i8, ptr %i.r, align 1, !tbaa !186
  %.not55 = icmp eq i8 %i.s, 0
  br i1 %.not55, label %.lr.ph75.tt_delta_interpolate.exit_crit_edge, label %bb.d

.lr.ph75.tt_delta_interpolate.exit_crit_edge:     ; preds = %.lr.ph75
  %.pre = trunc nsw i64 %indvars.iv85 to i32
  br label %tt_delta_interpolate.exit

bb.d:                                             ; preds = %.lr.ph75
  %.not62 = icmp slt i32 %.04972, %.2.in73
  %i.t = trunc nsw i64 %indvars.iv85 to i32       ; 10 uses
  br i1 %.not62, label %.preheader.split.preheader.i, label %tt_delta_interpolate.exit

.preheader.split.preheader.i:                     ; preds = %bb.d
  %i.u = add nsw i32 %.04972, 1
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = sext i32 %.04972 to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %2, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !230
  %i.z = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv85
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !230
  %i.ab = icmp sgt i64 %i.y, %i.aa                ; 2 uses
  %spec.select.i = select i1 %i.ab, i32 %i.t, i32 %.04972 ; 3 uses
  %spec.select74.i = select i1 %i.ab, i32 %.04972, i32 %i.t ; 3 uses
  %i.ac = sext i32 %spec.select.i to i64          ; 3 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %2, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !230 ; 5 uses
  %i.af = sext i32 %spec.select74.i to i64        ; 3 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %2, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !230 ; 4 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ac
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !230 ; 4 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %1, i64 %i.af
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !230 ; 3 uses
  %i.am = sub i64 %i.aj, %i.ae
  %i.an = sub i64 %i.al, %i.ah
  %.not.i = icmp ne i64 %i.ae, %i.ah              ; 2 uses
  %i.ao = icmp eq i64 %i.aj, %i.al
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.ao
  br i1 %or.cond.i, label %bb.e, label %..loopexit_crit_edge.i

bb.e:                                             ; preds = %.preheader.split.preheader.i
  br i1 %.not.i, label %bb.f, label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.ap = sub nsw i64 %i.al, %i.aj
  %i.aq = sub nsw i64 %i.ah, %i.ae
  %i.ar = tail call i64 @FT_DivFix(i64 noundef %i.ap, i64 noundef %i.aq) #21
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.e
  %i.as = phi i64 [ %i.ar, %bb.f ], [ 0, %bb.e ]
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.v, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !230 ; 5 uses
  %.not72.i = icmp sgt i64 %i.au, %i.ae
  br i1 %.not72.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i64 %i.am, %i.au
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not73.i = icmp slt i64 %i.au, %i.ah
  br i1 %.not73.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add nsw i64 %i.an, %i.au
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ax = sub nsw i64 %i.au, %i.ae
  %i.ay = mul i64 %i.ax, %i.as                    ; 2 uses
  %i.az = ashr i64 %i.ay, 63
  %i.ba = add i64 %i.ay, 32768
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = ashr i64 %i.bb, 16
  %i.bd = add nsw i64 %i.bc, %i.aj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.0.i = phi i64 [ %i.av, %bb.h ], [ %i.aw, %bb.j ], [ %i.bd, %bb.k ]
  %i.be = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.i
  store i64 %.0.i, ptr %i.be, align 8, !tbaa !230
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.t, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.i, label %bb.g, !llvm.loop !3

..loopexit_crit_edge.i:                           ; preds = %bb.l, %.preheader.split.preheader.i
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.ac
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !230
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.af
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !230
  %i.bj = icmp sgt i64 %i.bg, %i.bi               ; 2 uses
  %spec.select.1.i = select i1 %i.bj, i32 %spec.select74.i, i32 %spec.select.i
  %spec.select74.1.i = select i1 %i.bj, i32 %spec.select.i, i32 %spec.select74.i
  %i.bk = sext i32 %spec.select.1.i to i64        ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !230 ; 5 uses
  %i.bn = sext i32 %spec.select74.1.i to i64      ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.bswap.i32
!263 = !{!157, !22, i64 470}
!264 = !{!157, !22, i64 472}
!265 = !{!157, !12, i64 848}
!266 = !{!157, !29, i64 536}
!267 = !{!157, !9, i64 712}
!268 = !{!"TT_CallRec_", !9, i64 0, !29, i64 8, !29, i64 16, !155, i64 24}
!269 = !{!268, !155, i64 24}
!270 = !{!"TT_DefRecord_", !9, i64 0, !29, i64 8, !29, i64 16, !9, i64 24, !8, i64 28}
!271 = !{!157, !29, i64 976}
!272 = !{!157, !29, i64 984}
!273 = !{!157, !29, i64 544}
!274 = !{!157, !29, i64 552}
!275 = !{!157, !29, i64 560}
!276 = !{!270, !9, i64 24}
!277 = !{!270, !8, i64 28}
!278 = !{!268, !9, i64 0}
!279 = !{!268, !29, i64 8}
!280 = !{!268, !29, i64 16}
!281 = !{!270, !9, i64 0}
!282 = !{!270, !29, i64 8}
!283 = !{!157, !24, i64 112}
!284 = !{!157, !29, i64 960}
!285 = !{!157, !29, i64 968}
!286 = !{!"IUP_WorkerRec_", !23, i64 0, !23, i64 8, !23, i64 16, !9, i64 24}
!287 = !{!286, !23, i64 0}
!288 = !{!286, !23, i64 8}
!289 = !{!286, !23, i64 16}
!290 = !{!286, !9, i64 24}
!291 = !{!"llvm.loop.unroll.disable"}
!292 = !{!157, !8, i64 841}
!293 = !{!157, !23, i64 88}
!294 = !{!157, !23, i64 104}
!295 = !{!157, !23, i64 144}
!296 = !{!157, !29, i64 376}
!297 = !{!157, !29, i64 384}
!298 = !{!157, !23, i64 160}
!299 = !{i64 0, i64 8, !185, i64 8, i64 8, !185}
!300 = !{!157, !12, i64 920}
!301 = !{!157, !44, i64 808}
!302 = !{!157, !22, i64 800}
!303 = !{!157, !12, i64 928}
!304 = !{!157, !12, i64 912}
!305 = !{!157, !22, i64 568}
!306 = !{!157, !22, i64 570}
!307 = !{!157, !12, i64 936}
!308 = !{!157, !29, i64 816}
!309 = !{!157, !29, i64 824}
!310 = !{!157, !29, i64 832}
!311 = !{!157, !22, i64 456}
!312 = !{!"p1 _ZTS10FT_MM_Var_", !12, i64 0}
!313 = !{!"p1 _ZTS16GX_AVarTableRec_", !12, i64 0}
!314 = !{!"p1 _ZTS17GX_HVVarTableRec_", !12, i64 0}
!315 = !{!"p1 _ZTS16GX_MVarTableRec_", !12, i64 0}
!316 = !{!"GX_BlendRec_", !9, i64 0, !44, i64 8, !44, i64 16, !312, i64 24, !29, i64 32, !44, i64 40, !8, i64 48, !313, i64 56, !8, i64 64, !8, i64 65, !9, i64 68, !314, i64 72, !8, i64 80, !8, i64 81, !9, i64 84, !314, i64 88, !315, i64 96, !9, i64 104, !44, i64 112, !44, i64 120, !9, i64 128, !44, i64 136, !29, i64 144}
!317 = !{!316, !9, i64 0}
!318 = !{!316, !44, i64 16}
!319 = !{!157, !8, i64 840}
!320 = !{!316, !44, i64 8}
!321 = !{!68, !8, i64 1201}
!322 = !{!42, !29, i64 24}
!323 = !{!68, !12, i64 832}
!324 = !{!316, !312, i64 24}
!325 = !{!"p1 _ZTS12FT_Var_Axis_", !12, i64 0}
!326 = !{!"p1 _ZTS19FT_Var_Named_Style_", !12, i64 0}
!327 = !{!"FT_MM_Var_", !9, i64 0, !9, i64 4, !9, i64 8, !325, i64 16, !326, i64 24}
!328 = !{!327, !9, i64 0}
!329 = !{!327, !325, i64 16}
!330 = !{!327, !326, i64 24}
!331 = !{!"FT_Var_Named_Style_", !44, i64 0, !9, i64 8, !9, i64 12}
!332 = !{!331, !44, i64 0}
!333 = !{!"FT_Var_Axis_", !24, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !9, i64 40}
!334 = !{!333, !29, i64 24}
!335 = !{!333, !29, i64 8}
!336 = !{!333, !29, i64 16}
!337 = !{!316, !44, i64 40}
!338 = !{!316, !8, i64 48}
!339 = !{!331, !9, i64 8}
!340 = !{!68, !9, i64 1236}
!341 = !{!312, !312, i64 0}
!342 = !{!"GX_DeltaSetIdxMapRec_", !29, i64 0, !65, i64 8, !65, i64 16}
!343 = !{!342, !65, i64 16}
!344 = !{!342, !65, i64 8}
!345 = !{!89, !24, i64 64}
!346 = !{!"p1 _ZTS18GX_ItemVarDataRec_", !12, i64 0}
!347 = !{!"p1 _ZTS16GX_VarRegionRec_", !12, i64 0}
!348 = !{!"GX_ItemVarStoreRec_", !9, i64 0, !346, i64 8, !22, i64 16, !9, i64 20, !347, i64 24}
!349 = !{!348, !9, i64 0}
!350 = !{!348, !346, i64 8}
!351 = !{!"GX_ItemVarDataRec_", !9, i64 0, !9, i64 4, !65, i64 8, !24, i64 16, !22, i64 24, !8, i64 26}
!352 = !{!351, !9, i64 0}
!353 = !{!348, !22, i64 16}
!354 = !{!348, !347, i64 24}
!355 = !{!348, !9, i64 20}
!356 = !{!"p1 _ZTS17GX_AxisCoordsRec_", !12, i64 0}
!357 = !{!"GX_VarRegionRec_", !356, i64 0}
!358 = !{!357, !356, i64 0}
!359 = !{!"GX_AxisCoordsRec_", !29, i64 0, !29, i64 8, !29, i64 16}
!360 = !{!359, !29, i64 0}
!361 = !{!359, !29, i64 8}
!362 = !{!359, !29, i64 16}
!363 = !{!351, !65, i64 8}
!364 = !{!351, !9, i64 4}
!365 = !{!351, !22, i64 24}
!366 = !{!351, !8, i64 26}
!367 = !{!351, !24, i64 16}
!368 = !{!316, !313, i64 56}
!369 = !{!"p1 _ZTS18GX_AVarSegmentRec_", !12, i64 0}
!370 = !{!"GX_AVarTableRec_", !369, i64 0, !348, i64 8, !342, i64 40}
!371 = !{!370, !369, i64 0}
!372 = !{!"p1 _ZTS25GX_AVarCorrespondenceRec_", !12, i64 0}
!373 = !{!"GX_AVarSegmentRec_", !22, i64 0, !372, i64 8}
!374 = !{!373, !372, i64 8}
!375 = !{!316, !314, i64 72}
!376 = !{!316, !314, i64 88}
!377 = !{!316, !315, i64 96}
!378 = !{!"p1 _ZTS12GX_ValueRec_", !12, i64 0}
!379 = !{!"GX_MVarTableRec_", !22, i64 0, !348, i64 8, !378, i64 40}
!380 = !{!379, !378, i64 40}
!381 = !{!316, !44, i64 120}
!382 = !{!316, !44, i64 112}
!383 = !{!316, !44, i64 136}
!384 = !{!89, !24, i64 72}
!385 = !{!316, !9, i64 128}
!386 = !{!316, !9, i64 104}
!387 = !{!373, !22, i64 0}
!388 = !{!"GX_AVarCorrespondenceRec_", !29, i64 0, !29, i64 8}
!389 = !{!388, !29, i64 8}
!390 = !{!388, !29, i64 0}
!391 = !{!89, !24, i64 0}
!392 = !{!"FT_ListNodeRec_", !18, i64 0, !18, i64 8, !12, i64 16}
!393 = !{!392, !12, i64 16}
!394 = !{!379, !22, i64 0}
!395 = !{!"GX_ValueRec_", !29, i64 0, !22, i64 8, !22, i64 10, !22, i64 12}
!396 = !{!395, !29, i64 0}
!397 = !{!395, !22, i64 8}
!398 = !{!395, !22, i64 10}
!399 = !{!395, !22, i64 12}
!400 = !{!314, !314, i64 0}
!401 = !{!"GX_HVVarTableRec_", !348, i64 0, !342, i64 32}
!402 = !{!401, !65, i64 48}
!403 = !{!401, !29, i64 32}
!404 = !{!401, !65, i64 40}
!405 = !{!"FT_Service_MetricsVariationsRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!406 = !{!405, !12, i64 64}
!407 = !{!68, !22, i64 336}
!408 = !{!68, !22, i64 138}
!409 = !{!97, !29, i64 16}
!410 = !{!97, !29, i64 24}
!411 = !{!68, !22, i64 140}
!412 = !{!97, !29, i64 32}
!413 = !{!68, !22, i64 142}
!414 = !{!97, !29, i64 40}
!415 = !{!68, !22, i64 390}
!416 = !{!138, !9, i64 40}
!417 = !{!97, !29, i64 8}
!418 = !{!68, !41, i64 240}
!419 = !{!"p1 _ZTS24FT_Incremental_FuncsRec_", !12, i64 0}
!420 = !{!"p1 _ZTS18FT_IncrementalRec_", !12, i64 0}
!421 = !{!"FT_Incremental_InterfaceRec_", !419, i64 0, !420, i64 8}
!422 = !{!421, !419, i64 0}
!423 = !{!"FT_Incremental_FuncsRec_", !12, i64 0, !12, i64 8, !12, i64 16}
!424 = !{!421, !420, i64 8}
!425 = !{!138, !9, i64 56}
!426 = !{!68, !29, i64 1192}
!427 = !{!138, !22, i64 60}
!428 = !{!138, !29, i64 88}
!429 = !{!423, !12, i64 16}
!430 = !{!"FT_Incremental_MetricsRec_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!431 = !{!430, !29, i64 0}
!432 = !{!430, !29, i64 8}
!433 = !{!430, !29, i64 16}
!434 = !{!138, !29, i64 64}
!435 = !{!138, !29, i64 128}
!436 = !{!138, !29, i64 288}
!437 = !{!138, !29, i64 296}
!438 = !{!138, !29, i64 304}
!439 = !{!138, !29, i64 312}
!440 = !{!110, !22, i64 2}
!441 = !{!110, !22, i64 0}
!442 = !{!110, !23, i64 8}
!443 = !{!225, !22, i64 26}
!444 = !{!225, !22, i64 24}
!445 = !{!138, !29, i64 264}
!446 = !{!225, !9, i64 152}
!447 = !{!110, !24, i64 16}
!448 = !{!110, !25, i64 24}
!449 = !{!225, !111, i64 160}
!450 = !{!"FT_SubGlyphRec_", !9, i64 0, !22, i64 4, !9, i64 8, !9, i64 12, !72, i64 16}
!451 = !{!450, !9, i64 8}
!452 = !{!450, !9, i64 12}
!453 = !{!450, !22, i64 4}
!454 = !{!450, !9, i64 0}
!455 = !{!225, !9, i64 56}
!456 = !{!157, !44, i64 648}
!457 = !{!68, !29, i64 32}
!458 = !{!157, !29, i64 424}
!459 = !{!157, !29, i64 432}
!460 = !{!157, !29, i64 640}
!461 = !{!224, !22, i64 2}
!462 = !{!224, !22, i64 0}
!463 = !{!224, !23, i64 40}
!464 = !{!224, !23, i64 8}
!465 = !{!224, !23, i64 48}
!466 = !{!450, !29, i64 16}
!467 = !{!450, !29, i64 24}
!468 = !{!450, !29, i64 40}
!469 = !{!450, !29, i64 32}
!470 = !{!225, !22, i64 98}
!471 = !{!225, !9, i64 8}
!472 = !{!68, !9, i64 1296}
!473 = !{!68, !22, i64 288}
!474 = !{!68, !46, i64 296}
!475 = !{!"TT_TableRec_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!476 = !{!138, !24, i64 320}
!477 = !{!138, !24, i64 328}
!478 = !{!16, !14, i64 8}
!479 = !{!16, !13, i64 0}
!480 = !{!"FT_Module_Class_", !29, i64 0, !29, i64 8, !24, i64 16, !29, i64 24, !29, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!481 = !{!480, !12, i64 40}
!482 = !{!30, !12, i64 32}
!483 = !{!21, !14, i64 8}
!484 = !{!30, !12, i64 8}
!485 = !{!68, !29, i64 280}
!486 = !{!30, !12, i64 16}
!487 = !{!42, !9, i64 56}
!488 = !{!68, !12, i64 1168}
!489 = !{!68, !12, i64 1160}
!490 = !{!30, !12, i64 24}
!491 = distinct !{null, null}
!492 = distinct !{null, null, null}
!493 = distinct !{null, null, null}
!494 = distinct !{null}
!495 = distinct !{!495, !219}
!496 = !{!113, !96, i64 8}
!497 = !{!42, !29, i64 32}
!498 = !{!30, !12, i64 152}
!499 = !{!"TT_SBit_MetricsRec_", !22, i64 0, !22, i64 2, !22, i64 4, !22, i64 6, !22, i64 8, !22, i64 10, !22, i64 12, !22, i64 14}
!500 = !{!499, !22, i64 2}
!501 = !{!499, !22, i64 0}
!502 = !{!499, !22, i64 4}
!503 = !{!499, !22, i64 6}
!504 = !{!499, !22, i64 8}
!505 = !{!499, !22, i64 10}
!506 = !{!499, !22, i64 12}
!507 = !{!499, !22, i64 14}
!508 = !{!113, !9, i64 192}
!509 = !{!113, !9, i64 196}
!510 = !{!68, !29, i64 1248}
!511 = !{!105, !29, i64 32}
!512 = !{!105, !29, i64 40}
!513 = !{!113, !8, i64 178}
!514 = !{!68, !9, i64 1336}
!515 = !{!68, !12, i64 1472}
!516 = !{!30, !12, i64 376}
!517 = !{!68, !39, i64 176}
!518 = !{!49, !22, i64 24}
!519 = !{!49, !22, i64 26}
!520 = !{!49, !22, i64 28}
!521 = !{!49, !22, i64 22}
!522 = !{!49, !22, i64 20}
!523 = !{!105, !8, i64 186}
!524 = !{!105, !8, i64 187}
!525 = !{!157, !137, i64 8}
!526 = !{i64 0, i64 8, !185, i64 8, i64 8, !185, i64 16, i64 8, !185, i64 24, i64 8, !185, i64 32, i64 2, !128, i64 34, i64 1, !186, i64 35, i64 1, !186}
!527 = !{!68, !24, i64 1120}
!528 = !{!105, !8, i64 324}
!529 = !{!105, !8, i64 325}
!530 = !{!105, !8, i64 326}
!531 = !{!105, !9, i64 328}
!532 = !{!105, !23, i64 344}
!533 = !{!105, !22, i64 336}
!534 = !{!105, !23, i64 352}
!535 = !{!68, !24, i64 1136}
!536 = !{!68, !29, i64 776}
!537 = !{!113, !9, i64 240}
!538 = !{!113, !111, i64 248}
!539 = !{i64 0, i64 2, !128, i64 2, i64 2, !128, i64 8, i64 8, !197, i64 16, i64 8, !198, i64 24, i64 8, !199, i64 32, i64 4, !152}
!540 = !{!113, !9, i64 232}
!541 = !{!113, !12, i64 256}
!542 = !{!113, !29, i64 264}
!543 = !{!68, !9, i64 1372}
!544 = !{!30, !12, i64 176}
!545 = distinct !{!545, !219, !232, !233}
!546 = distinct !{!546, !219, !233, !232}
!547 = distinct !{!547, !219, !232, !233}
!548 = distinct !{!548, !219, !233, !232}
!549 = distinct !{null}
!550 = distinct !{!550, !219, !553}
!551 = distinct !{null}
!552 = distinct !{!552, !219}
!553 = !{!"llvm.loop.unswitch.partial.disable"}
!554 = !{!30, !12, i64 224}
!555 = !{ptr @tt_size_select}
!556 = !{!"FT_Size_RequestRec_", !9, i64 0, !29, i64 8, !29, i64 16, !9, i64 24, !9, i64 28}
!557 = !{!556, !9, i64 0}
!558 = distinct !{!558, !219}
!559 = distinct !{!559, !219}
!560 = distinct !{null}
!561 = distinct !{!561, !219}
!562 = distinct !{!562, !219}
!563 = distinct !{!563, !219}
!564 = distinct !{!564, !219}
!565 = distinct !{null}
!566 = distinct !{!566, !219}
!567 = distinct !{!567, !219}
!568 = distinct !{!568, !291}
!569 = distinct !{!569, !291}
!570 = distinct !{!570, !219}
!571 = distinct !{!571, !219}
!572 = distinct !{!572, !219}
!573 = distinct !{null, null}
!574 = distinct !{!574, !219}
!575 = distinct !{null, null}
!576 = distinct !{!576, !219}
!577 = distinct !{null, null}
!578 = distinct !{!578, !219}
!579 = distinct !{!579, !219, !232, !233}
!580 = distinct !{!580, !219, !233, !232}
!581 = distinct !{!581, !219}
!582 = distinct !{null}
!583 = distinct !{!583, !219}
!584 = distinct !{null}
!585 = distinct !{null}
!586 = distinct !{!586, !219}
!587 = distinct !{null}
!588 = distinct !{!588, !219}
!589 = distinct !{!589, !291}
!590 = distinct !{!590, !219}
!591 = distinct !{null}
!592 = distinct !{null}
!593 = distinct !{null}
!594 = distinct !{null}
!595 = distinct !{null}
!596 = distinct !{null}
!597 = distinct !{null}
!598 = distinct !{null}
!599 = distinct !{null}
!600 = distinct !{!600, !219}
!601 = distinct !{null}
!602 = distinct !{null}
!603 = distinct !{!603, !219}
!604 = distinct !{!604, !219}
!605 = distinct !{!605, !219}
!606 = distinct !{!606, !219}
!607 = distinct !{!607, !219}
!608 = distinct !{!608, !219}
!609 = distinct !{!609, !219, !232, !233}
!610 = distinct !{!610, !291}
!611 = distinct !{!611, !219, !232}
!612 = distinct !{!612, !291}
!613 = distinct !{!613, !291}
!614 = distinct !{!614, !291}
!615 = distinct !{!615, !219}
!616 = !{!157, !29, i64 64}
!617 = !{!157, !22, i64 192}
!618 = !{!157, !23, i64 208}
!619 = !{!102, !22, i64 0}
!620 = !{!102, !22, i64 2}
!621 = !{!157, !24, i64 224}
!622 = !{!157, !22, i64 474}
!623 = !{!157, !29, i64 488}
!624 = !{!157, !9, i64 496}
!625 = !{!270, !29, i64 16}
!626 = !{!157, !29, i64 448}
!627 = !{!157, !23, i64 256}
!628 = !{!157, !23, i64 264}
!629 = !{!157, !23, i64 272}
!630 = !{!157, !25, i64 288}
!631 = !{!157, !22, i64 296}
!632 = !{!157, !24, i64 280}
!633 = !{!157, !22, i64 194}
!634 = !{!157, !25, i64 232}
!635 = !{!157, !22, i64 240}
!636 = !{!157, !23, i64 200}
!637 = !{!157, !23, i64 216}
!638 = !{!157, !8, i64 458}
!639 = !{!157, !8, i64 459}
!640 = distinct !{!640, !219}
!641 = distinct !{!641, !219}
!642 = distinct !{!642, !219}
!643 = distinct !{!643, !291}
!644 = distinct !{!644, !219}
!645 = distinct !{!645, !219, !232, !233}
!646 = distinct !{!646, !291}
!647 = distinct !{!647, !219, !232}
!648 = distinct !{!648, !219}
!649 = distinct !{!649, !291}
!650 = distinct !{!650, !219}
!651 = distinct !{!651, !291}
!652 = distinct !{!652, !219}
!653 = distinct !{!653, !219}
!654 = distinct !{!654, !219}
!655 = distinct !{!655, !219}
!656 = distinct !{!656, !291}
!657 = distinct !{!657, !219}
!658 = distinct !{!658, !291}
!659 = distinct !{!659, !219}
!660 = !{!"GX_FVar_Head_", !29, i64 0, !22, i64 8, !22, i64 10, !22, i64 12, !22, i64 14, !22, i64 16}
!661 = !{!660, !22, i64 14}
!662 = !{!660, !22, i64 16}
!663 = !{!660, !22, i64 10}
!664 = !{!316, !29, i64 32}
!665 = !{!327, !9, i64 4}
!666 = !{!327, !9, i64 8}
!667 = !{!333, !24, i64 0}
!668 = !{!660, !22, i64 8}
!669 = !{!"fvar_axis_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !22, i64 32, !22, i64 34}
!670 = !{!669, !29, i64 0}
!671 = !{!333, !29, i64 32}
!672 = !{!669, !29, i64 24}
!673 = !{!669, !22, i64 34}
!674 = !{!333, !9, i64 40}
!675 = !{!669, !22, i64 32}
!676 = !{!331, !9, i64 12}
!677 = !{!30, !12, i64 352}
!678 = distinct !{!678, !219}
!679 = distinct !{!679, !219}
!680 = distinct !{!680, !219}
!681 = distinct !{!681, !219}
!682 = distinct !{!682, !219, !232, !233}
!683 = distinct !{!683, !291}
!684 = distinct !{!684, !219, !232}
!685 = distinct !{!685, !219}
!686 = distinct !{!686, !291}
!687 = distinct !{!687, !291}
!688 = distinct !{!688, !219}
!689 = !{!30, !12, i64 344}
!690 = !{!42, !24, i64 48}
!691 = !{!68, !24, i64 1240}
!692 = !{!68, !24, i64 1176}
!693 = distinct !{!693, !219}
!694 = !{!342, !29, i64 0}
!695 = distinct !{!695, !219}
!696 = distinct !{!696, !291}
!697 = distinct !{!697, !219}
!698 = distinct !{!698, !219}
!699 = distinct !{!699, !219}
!700 = distinct !{!700, !219}
!701 = distinct !{!701, !219}
!702 = distinct !{!702, !219}
!703 = distinct !{!703, !219}
!704 = distinct !{!704, !219}
!705 = !{!44, !44, i64 0}
!706 = distinct !{!706, !219}
!707 = distinct !{!707, !219}
!708 = distinct !{!708, !219}
!709 = distinct !{null}
!710 = distinct !{!710, !219}
!711 = distinct !{!711, !219}
!712 = distinct !{!712, !219}
!713 = distinct !{!713, !219}
!714 = distinct !{!714, !219}
!715 = distinct !{!715, !219}
!716 = distinct !{!716, !219, !232, !233}
!717 = distinct !{!717, !219, !233, !232}
!718 = distinct !{!718, !291}
!719 = distinct !{!719, !219}
!720 = distinct !{!720, !219, !232, !233}
!721 = distinct !{!721, !291}
!722 = distinct !{!722, !219, !232}
!723 = distinct !{!723, !219}
!724 = distinct !{!724, !219}
!725 = distinct !{!725, !219}
!726 = distinct !{!726, !219}
!727 = distinct !{!727, !219, !232, !233}
!728 = distinct !{!728, !219, !233, !232}
!729 = !{!68, !8, i64 1200}
!730 = !{!"GX_GVar_Head_", !29, i64 0, !22, i64 8, !22, i64 10, !29, i64 16, !22, i64 24, !22, i64 26, !29, i64 32}
!731 = !{!730, !29, i64 0}
!732 = !{!730, !22, i64 8}
!733 = !{!730, !22, i64 10}
!734 = !{!730, !22, i64 24}
!735 = !{!730, !22, i64 26}
!736 = !{!316, !29, i64 144}
!737 = !{!730, !29, i64 32}
!738 = !{!730, !29, i64 16}
!739 = distinct !{!739, !219}
!740 = distinct !{!740, !219, !232, !233}
!741 = distinct !{!741, !219}
!742 = distinct !{!742, !219}
!743 = distinct !{!743, !219}
!744 = distinct !{!744, !219}
!745 = distinct !{!745, !219}
!746 = distinct !{!746, !219}
!747 = distinct !{!747, !219, !232}
!748 = distinct !{!748, !219}
!749 = distinct !{!749, !291}
!750 = distinct !{!750, !219}
!751 = distinct !{!751, !219}
!752 = distinct !{!752, !219}
!753 = distinct !{!753, !219, !232, !233}
!754 = distinct !{!754, !291}
!755 = distinct !{!755, !219, !232}
!756 = distinct !{!756, !219}
!757 = distinct !{!757, !291}
!758 = distinct !{!758, !219}
!759 = distinct !{!759, !219}
!760 = distinct !{!760, !219}
!761 = distinct !{!761, !219}
!762 = distinct !{!762, !219}
!763 = distinct !{!763, !219}
!764 = distinct !{!764, !219}
!765 = distinct !{!765, !219}
!766 = distinct !{!766, !219, !232, !233}
!767 = distinct !{!767, !291}
!768 = distinct !{!768, !219}
!769 = distinct !{!769, !219, !232}
!770 = !{!370, !346, i64 16}
!771 = !{!370, !65, i64 56}
!772 = !{!370, !29, i64 40}
!773 = !{!370, !65, i64 48}
!774 = distinct !{!774, !219}
!775 = distinct !{!775, !219}
!776 = !{!68, !22, i64 930}
!777 = !{!68, !56, i64 936}
!778 = !{!316, !8, i64 64}
!779 = !{!316, !9, i64 68}
!780 = !{!316, !8, i64 65}
!781 = !{!316, !8, i64 80}
!782 = !{!316, !9, i64 84}
!783 = !{!316, !8, i64 81}
!784 = distinct !{!784, !219}
!785 = !{!68, !12, i64 912}
!786 = !{!42, !22, i64 142}
!787 = !{!42, !22, i64 138}
!788 = !{!42, !22, i64 140}
!789 = !{!68, !22, i64 768}
!790 = !{!68, !22, i64 770}
!791 = !{!42, !22, i64 148}
!792 = !{!42, !22, i64 150}
!793 = distinct !{null, null}
!794 = distinct !{null, null}
!795 = distinct !{null}
!796 = distinct !{!796, !219}
!797 = distinct !{!797, !219}
!798 = distinct !{!798, !219}
!799 = distinct !{!799, !219}
!800 = distinct !{!800, !219}
!801 = !{!68, !22, i64 490}
!802 = !{!423, !12, i64 0}
!803 = !{!"FT_Data_", !24, i64 0, !9, i64 8}
!804 = !{!803, !9, i64 8}
!805 = !{!803, !24, i64 0}
!806 = !{!138, !9, i64 96}
!807 = !{!138, !9, i64 100}
!808 = !{!138, !9, i64 280}
!809 = !{!138, !8, i64 108}
!810 = !{!430, !29, i64 24}
!811 = !{!138, !29, i64 120}
!812 = !{!138, !29, i64 136}
!813 = !{!18, !18, i64 0}
!814 = !{!392, !18, i64 8}
!815 = !{!423, !12, i64 8}
!816 = !{i64 0, i64 8, !185, i64 8, i64 8, !185, i64 16, i64 8, !185, i64 24, i64 8, !185}
!817 = !{!35, !29, i64 0}
!818 = !{!35, !29, i64 24}
!819 = !{!35, !29, i64 16}
!820 = !{!35, !29, i64 8}
!821 = !{!68, !22, i64 542}
!822 = !{!157, !22, i64 728}
!823 = !{!157, !22, i64 730}
!824 = !{!157, !22, i64 304}
!825 = !{!157, !22, i64 368}
!826 = !{!157, !22, i64 370}
!827 = distinct !{!827, !219, !232, !233}
!828 = distinct !{!828, !219, !232}
!829 = distinct !{!829, !219, !232, !233}
!830 = distinct !{!830, !219, !232}
!831 = distinct !{!831, !219}
!832 = distinct !{!832, !219}
!833 = distinct !{!833, !219}
!834 = distinct !{!834, !"LVerDomain"}
!835 = distinct !{!835, !834}
!836 = distinct !{!836, !834}
!837 = distinct !{!837, !834}
!838 = distinct !{!838, !834}
!839 = distinct !{!839, !219, !232, !233}
!840 = distinct !{!840, !219, !232}
!841 = distinct !{!841, !219}
!842 = distinct !{!842, !219}
!843 = distinct !{!843, !219, !232, !233}
!844 = distinct !{!844, !219, !233, !232}
!845 = distinct !{!845, !219}
!846 = distinct !{!846, !219}
!847 = !{!835}
!848 = !{!837, !836}
!849 = !{!838}
!850 = !{!837}
!851 = !{!836}
!852 = distinct !{!852, !219, !232, !233}
!853 = distinct !{!853, !219, !232, !233}
!854 = distinct !{!854, !219, !232}
!855 = distinct !{!855, !219, !233, !232}
!856 = !{!225, !23, i64 32}
!857 = distinct !{!857, !219}
!858 = !{!224, !24, i64 16}
!859 = !{!224, !25, i64 24}
!860 = !{!138, !24, i64 232}
!861 = !{!138, !22, i64 200}
!862 = distinct !{!862, !219}
!863 = distinct !{!863, !219}
!864 = distinct !{!864, !219, !232, !233}
!865 = distinct !{!865, !219, !232, !233}
!866 = distinct !{!866, !219, !233, !232}
!867 = distinct !{!867, !219, !233, !232}
!868 = distinct !{!868, !219}
!869 = !{!225, !24, i64 112}
!870 = distinct !{!870, !219}
!871 = !{!105, !22, i64 24}
!872 = !{!105, !22, i64 26}
!873 = !{!68, !22, i64 136}
!874 = !{!68, !22, i64 144}
!875 = !{!97, !29, i64 48}
!876 = !{!105, !29, i64 152}
!877 = !{!105, !29, i64 160}
!878 = distinct !{null, null}
!879 = distinct !{!879, !291}
!880 = distinct !{!880, !219}
!881 = distinct !{!881, !219}
!882 = distinct !{!882, !291}
!883 = distinct !{!883, !219}
!884 = distinct !{!884, !219}
!885 = !{!42, !24, i64 40}
!886 = !{!475, !29, i64 0}
!887 = !{!475, !29, i64 24}
!888 = !{!"tt_sfnt_id_rec_", !29, i64 0, !29, i64 8}
!889 = !{!888, !29, i64 8}
!890 = !{!888, !29, i64 0}
!891 = distinct !{!891, !219}
!892 = !{!68, !24, i64 1280}
!893 = !{!68, !29, i64 1288}
!894 = distinct !{!894, !219}
!895 = !{!475, !29, i64 16}
!896 = !{!89, !29, i64 8}
!897 = distinct !{!897, !219}
!898 = !{!138, !29, i64 72}
!899 = !{!138, !29, i64 80}
!900 = distinct !{!900, !219}
!901 = distinct !{!901, !219}
!902 = distinct !{!902, !219}
!903 = distinct !{!903, !219}
!904 = !{!225, !22, i64 96}
!905 = !{!225, !9, i64 12}
!906 = distinct !{!906, !219}
end_hunk_2
