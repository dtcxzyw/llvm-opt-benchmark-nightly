Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@TT_Vary_Apply_Glyph_Deltas:bb.a
  %i.sm = ashr i64 %i.sl, 48
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sg, i64 8 ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !257
  %i.sp = add nsw i64 %i.sm, %i.so
  store i64 %i.sp, ptr %i.sn, align 8, !tbaa !257
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 2 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count
  br i1 %exitcond536.not, label %bb.ap, label %bb.ao, !llvm.loop !846

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not416, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.sr = zext i16 %i.l to i64                    ; 2 uses
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.sr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sq, ptr noundef nonnull align 8 dereferenceable(16) %i.ss, i64 16, i1 false), !tbaa.struct !299
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.su = load ptr, ptr %i.q, align 8, !tbaa !442
  %i.sv = add nuw nsw i32 %i.m, 1
  %i.sw = zext nneg i32 %i.sv to i64              ; 2 uses
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.su, i64 %i.sw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.st, ptr noundef nonnull align 8 dereferenceable(16) %i.sx, i64 16, i1 false), !tbaa.struct !299
  %i.sy = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.sw
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !230
  %i.ta = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.sr
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !230
  %i.tc = add i64 %i.sz, 32
  %i.td = sub i64 %i.tc, %i.tb
  %i.te = lshr i64 %i.td, 6
  %i.tf = trunc i64 %i.te to i32
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.tf, ptr %i.tg, align 8, !tbaa !145
  %.pre537 = load i32, ptr %i.qu, align 8, !tbaa !231
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.th = phi i32 [ %.pre537, %bb.aq ], [ %i.qv, %bb.ap ]
  %i.ti = and i32 %i.th, 16
  %.not419 = icmp eq i32 %i.ti, 0
  br i1 %.not419, label %bb.as, label %.thread433

bb.as:                                            ; preds = %bb.ar
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.tk = load ptr, ptr %i.q, align 8, !tbaa !442
  %i.tl = add nuw nsw i32 %i.m, 2
  %i.tm = zext nneg i32 %i.tl to i64              ; 2 uses
  %i.tn = getelementptr inbounds nuw [16 x i8], ptr %i.tk, i64 %i.tm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tj, ptr noundef nonnull align 8 dereferenceable(16) %i.tn, i64 16, i1 false), !tbaa.struct !299
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.tp = load ptr, ptr %i.q, align 8, !tbaa !442
  %i.tq = add nuw nsw i32 %i.m, 3
  %i.tr = zext nneg i32 %i.tq to i64              ; 2 uses
  %i.ts = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %i.tr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.to, ptr noundef nonnull align 8 dereferenceable(16) %i.ts, i64 16, i1 false), !tbaa.struct !299
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.tr
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !257
  %i.tw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.tm
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !257
  %i.tz = add i64 %i.tv, 32
  %i.ua = sub i64 %i.tz, %i.ty
  %i.ub = lshr i64 %i.ua, 6
  %i.uc = trunc i64 %i.ub to i32
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.uc, ptr %i.ud, align 4, !tbaa !147
  br label %.thread433

.thread433:                                       ; preds = %bb.v, %bb.x, %bb.r, %bb.o, %bb.ar, %bb.as, %bb.l
  %.not428 = icmp eq ptr %.0371, inttoptr (i64 -1 to ptr)
  br i1 %.not428, label %bb.at, label %.thread439

.thread439:                                       ; preds = %.loopexit652, %.thread433
  %.1372445 = phi ptr [ %.0371, %.thread433 ], [ null, %.loopexit652 ]
  %.0382443 = phi ptr [ %i.dm, %.thread433 ], [ null, %.loopexit652 ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.1372445) #21
  br label %bb.at

bb.at:                                            ; preds = %.thread433, %.thread439
  %.0382444 = phi ptr [ %i.dm, %.thread433 ], [ %.0382443, %.thread439 ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0382444) #21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.i
  call void @FT_Stream_ExitFrame(ptr noundef %i.f) #21
  %i.ue = load i32, ptr %i.a, align 4, !tbaa !152
  br label %bb.av

bb.av:                                            ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.au
  %.0 = phi i32 [ 6, %bb.b ], [ 0, %bb.c ], [ %i.ue, %bb.au ], [ 0, %bb.d ], [ %i.bp, %bb.f ], [ %i.bo, %bb.e ]
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
  %i.f = load i16, ptr %i.e, align 2, !tbaa !440  ; 4 uses
  %i.g = zext i16 %i.f to i32
  %i.h = load ptr, ptr %0, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 10 uses
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
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.az = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !197
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !463
  %i.bb = load <2 x ptr>, ptr %i.k, align 8, !tbaa !154
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !464
  %i.bd = shufflevector <2 x ptr> %i.az, <2 x ptr> %i.bb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x ptr> %i.bd, ptr %i.ax, align 8, !tbaa !154
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !465
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !182
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i16 0, ptr %i.bh, align 8, !tbaa !184
  %i.bi = zext i16 %i.at to i64
  %i.bj = shl nuw nsw i64 %i.bi, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ba, ptr align 8 %i.bc, i64 %i.bj, i1 false)
  %.pre = load i64, ptr %i.an, align 8, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bk = phi i64 [ %.pre, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !442 ; 12 uses
  %i.bm = shl nuw nsw i32 %i.ab, 4
  %.idx = zext nneg i32 %i.bm to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx ; 2 uses
  %i.bo = and i64 %i.bk, 1
  %.not106 = icmp eq i64 %i.bo, 0
  %.pre127 = load ptr, ptr %0, align 8, !tbaa !140 ; 3 uses
  br i1 %.not106, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !117
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load <2 x i64>, ptr %i.bt, align 8, !tbaa !185 ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre127, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !118
  %i.bx = and i64 %i.bw, 2147418112
  %.not107 = icmp eq i64 %i.bx, 0
  br i1 %.not107, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.pre127, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !70
  %i.ca = and i64 %i.bz, 32768
  %.not108 = icmp eq i64 %i.ca, 0
  br i1 %.not108, label %.lr.ph125.preheader, label %.lr.ph.preheader

.lr.ph125.preheader:                              ; preds = %bb.i
  %1 = ptrtoaddr ptr %i.bl to i64                 ; 3 uses
  %i.cb = zext i16 %i.f to i64
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = add i64 %i.cc, %1
  %i.ce = add i64 %i.cd, 64
  %i.cf = add i64 %1, 16
  %i.cg = call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cf)
  %i.ch = xor i64 %1, -1
  %i.ci = add i64 %i.cg, %i.ch
  %i.cj = lshr i64 %i.ci, 4                       ; 2 uses
  %min.iters.check145 = icmp eq i64 %i.cj, 0
  br i1 %min.iters.check145, label %.lr.ph125, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph125.preheader
  %i.ck = extractelement <2 x i64> %i.bu, i64 0
  %i.cl = extractelement <2 x i64> %i.bu, i64 1
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next152, %vector.body148 ] ; 3 uses
  %i.cm = shl i64 %index149, 4
  %next.gep150 = getelementptr i8, ptr %i.bl, i64 %i.cm ; 2 uses
  %wide.load151 = load <2 x i64>, ptr %next.gep150, align 8
  %i.cn = mul <2 x i64> %wide.load151, %i.bu      ; 2 uses
  %i.co = ashr <2 x i64> %i.cn, splat (i64 63)
  %i.cp = add <2 x i64> %i.cn, splat (i64 32768)
  %i.cq = add <2 x i64> %i.cp, %i.co
  %i.cr = ashr <2 x i64> %i.cq, splat (i64 16)
  store <2 x i64> %i.cr, ptr %next.gep150, align 8
  %index.next152 = add nuw i64 %index149, 1
  %i.cs = icmp eq i64 %index149, %i.cj
  br i1 %i.cs, label %.loopexit, label %vector.body148, !llvm.loop !852

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.i
  %2 = ptrtoaddr ptr %i.bl to i64                 ; 5 uses
  %i.ct = zext i16 %i.f to i64                    ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ct, 4
  %i.cv = add i64 %i.cu, %2
  %i.cw = add i64 %i.cv, 64
  %i.cx = add i64 %2, 16                          ; 2 uses
  %i.cy = call i64 @llvm.umax.i64(i64 %i.cw, i64 %i.cx)
  %i.cz = xor i64 %2, -1
  %i.da = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = lshr i64 %i.da, 4
  %min.iters.check = icmp ult i64 %i.da, 144
  br i1 %min.iters.check, label %.lr.ph.preheader159, label %vector.memcheck

.lr.ph.preheader159:                              ; preds = %vector.memcheck, %.lr.ph.preheader
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dc = shl nuw nsw i64 %i.ct, 4
  %i.dd = add i64 %i.dc, %2
  %i.de = add i64 %i.dd, 64
  %i.df = call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cx)
  %i.dg = xor i64 %2, -1
  %i.dh = add i64 %i.df, %i.dg
  %i.di = and i64 %i.dh, -16                      ; 2 uses
  %i.dj = or disjoint i64 %i.di, 8                ; 2 uses
  %i.dk = getelementptr i8, ptr %i.bl, i64 %i.dj
  %i.dl = getelementptr i8, ptr %.0100, i64 %i.dj
  %i.dm = getelementptr i8, ptr %i.bl, i64 8
  %i.dn = add i64 %i.di, 16                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.bl, i64 %i.dn
  %i.dp = getelementptr i8, ptr %.0100, i64 8
  %i.dq = getelementptr i8, ptr %.0100, i64 %i.dn
  %bound0 = icmp ult ptr %i.bl, %i.dl
  %bound1 = icmp ult ptr %.0100, %i.dk
  %found.conflict = and i1 %bound0, %bound1
  %bound0139 = icmp ult ptr %i.dm, %i.dq
  %bound1140 = icmp ult ptr %i.dp, %i.do
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %.lr.ph.preheader159, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dr = extractelement <2 x i64> %i.bu, i64 0
  %i.ds = extractelement <2 x i64> %i.bu, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dt = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0100, i64 %i.dt
  %next.gep142 = getelementptr i8, ptr %i.bl, i64 %i.dt
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %i.du = mul <2 x i64> %wide.load, %i.bu         ; 2 uses
  %i.dv = ashr <2 x i64> %i.du, splat (i64 63)
  %i.dw = add <2 x i64> %i.du, splat (i64 32768)
  %i.dx = add <2 x i64> %i.dw, %i.dv
  %i.dy = ashr <2 x i64> %i.dx, splat (i64 16)
  %i.dz = add nsw <2 x i64> %i.dy, splat (i64 32)
  %i.ea = ashr <2 x i64> %i.dz, splat (i64 6)
  store <2 x i64> %i.ea, ptr %next.gep142, align 8
  %index.next = add nuw i64 %index, 1
  %i.eb = icmp eq i64 %index, %i.db
  br i1 %i.eb, label %.loopexit, label %vector.body, !llvm.loop !853

.lr.ph:                                           ; preds = %.lr.ph.preheader159, %.lr.ph
  %.0123 = phi ptr [ %i.el, %.lr.ph ], [ %.0100, %.lr.ph.preheader159 ] ; 2 uses
  %.099122 = phi ptr [ %i.ek, %.lr.ph ], [ %i.bl, %.lr.ph.preheader159 ] ; 2 uses
  %i.ec = load <2 x i64>, ptr %.0123, align 8, !tbaa !185
  %i.ed = mul <2 x i64> %i.ec, %i.bu              ; 2 uses
  %i.ee = ashr <2 x i64> %i.ed, splat (i64 63)
  %i.ef = add <2 x i64> %i.ed, splat (i64 32768)
  %i.eg = add <2 x i64> %i.ef, %i.ee
  %i.eh = ashr <2 x i64> %i.eg, splat (i64 16)
  %i.ei = add nsw <2 x i64> %i.eh, splat (i64 32)
  %i.ej = ashr <2 x i64> %i.ei, splat (i64 6)
  store <2 x i64> %i.ej, ptr %.099122, align 8, !tbaa !185
  %i.ek = getelementptr inbounds nuw i8, ptr %.099122, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0123, i64 16
  %i.em = icmp ult ptr %i.ek, %i.bn
  br i1 %i.em, label %.lr.ph, label %.loopexit.loopexit160, !llvm.loop !854

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.lr.ph125
  %.1124 = phi ptr [ %i.et, %.lr.ph125 ], [ %i.bl, %.lr.ph125.preheader ] ; 3 uses
  %i.en = load <2 x i64>, ptr %.1124, align 8, !tbaa !185
  %i.eo = mul <2 x i64> %i.en, %i.bu              ; 2 uses
  %i.ep = ashr <2 x i64> %i.eo, splat (i64 63)
  %i.eq = add <2 x i64> %i.eo, splat (i64 32768)
  %i.er = add <2 x i64> %i.eq, %i.ep
  %i.es = ashr <2 x i64> %i.er, splat (i64 16)
  store <2 x i64> %i.es, ptr %.1124, align 8, !tbaa !185
  %i.et = getelementptr inbounds nuw i8, ptr %.1124, i64 16 ; 2 uses
  %i.eu = icmp ult ptr %i.et, %i.bn
  br i1 %i.eu, label %.lr.ph125, label %.loopexit.loopexit, !llvm.loop !855

.loopexit.loopexit:                               ; preds = %.lr.ph125
  %i.ev = extractelement <2 x i64> %i.bu, i64 1
  %i.ew = extractelement <2 x i64> %i.bu, i64 0
  br label %.loopexit

.loopexit.loopexit160:                            ; preds = %.lr.ph
  %i.ex = extractelement <2 x i64> %i.bu, i64 1
  %i.ey = extractelement <2 x i64> %i.bu, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %vector.body, %vector.body148, %.loopexit.loopexit160, %.loopexit.loopexit, %bb.g
  %.097117 = phi i64 [ %i.ev, %.loopexit.loopexit ], [ 0, %bb.g ], [ %i.ex, %.loopexit.loopexit160 ], [ %i.cl, %vector.body148 ], [ %i.ds, %vector.body ] ; 2 uses
  %.098114 = phi i64 [ %i.ew, %.loopexit.loopexit ], [ 0, %bb.g ], [ %i.ey, %.loopexit.loopexit160 ], [ %i.ck, %vector.body148 ], [ %i.dr, %vector.body ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.pre127, i64 1216 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !231 ; 2 uses
  %i.fb = and i32 %i.fa, 2
  %.not109 = icmp ne i32 %i.fb, 0
  %i.fc = and i64 %i.bk, 2
  %i.fd = icmp eq i64 %i.fc, 0                    ; 3 uses
  %or.cond = and i1 %i.fd, %.not109
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.fe = load i64, ptr %i.o, align 8, !tbaa !229
  %i.ff = mul i64 %i.fe, %.098114                 ; 2 uses
  %i.fg = ashr i64 %i.ff, 63
  %i.fh = add i64 %i.ff, 32768
  %i.fi = add i64 %i.fh, %i.fg
  %i.fj = ashr i64 %i.fi, 16
  store i64 %i.fj, ptr %i.o, align 8, !tbaa !229
  %i.fk = load i64, ptr %i.s, align 8, !tbaa !435
  %i.fl = mul i64 %i.fk, %.098114                 ; 2 uses
  %i.fm = ashr i64 %i.fl, 63
  %i.fn = add i64 %i.fl, 32768
  %i.fo = add i64 %i.fn, %i.fm
  %i.fp = ashr i64 %i.fo, 16
  store i64 %i.fp, ptr %i.s, align 8, !tbaa !435
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false), !tbaa.struct !299
  %i.fr = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %i.m
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !tbaa.struct !299
  %.pre128 = load i32, ptr %i.ez, align 8, !tbaa !231
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fu = phi i32 [ %.pre128, %bb.k ], [ %i.fa, %bb.j ]
  %i.fv = and i32 %i.fu, 16
  %.not110 = icmp ne i32 %i.fv, 0
  %or.cond120 = and i1 %i.fd, %.not110
  br i1 %or.cond120, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.fw = load i64, ptr %i.w, align 8, !tbaa !436
  %i.fx = mul i64 %i.fw, %.098114                 ; 2 uses
  %i.fy = ashr i64 %i.fx, 63
  %i.fz = add i64 %i.fx, 32768
  %i.ga = add i64 %i.fz, %i.fy
  %i.gb = ashr i64 %i.ga, 16
  store i64 %i.gb, ptr %i.w, align 8, !tbaa !436
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !437
  %i.ge = mul i64 %i.gd, %.097117                 ; 2 uses
  %i.gf = ashr i64 %i.ge, 63
  %i.gg = add i64 %i.ge, 32768
  %i.gh = add i64 %i.gg, %i.gf
  %i.gi = ashr i64 %i.gh, 16
  store i64 %i.gi, ptr %i.gc, align 8, !tbaa !437
  %i.gj = load i64, ptr %i.aa, align 8, !tbaa !438
  %i.gk = mul i64 %i.gj, %.098114                 ; 2 uses
  %i.gl = ashr i64 %i.gk, 63
  %i.gm = add i64 %i.gk, 32768
  %i.gn = add i64 %i.gm, %i.gl
  %i.go = ashr i64 %i.gn, 16
  store i64 %i.go, ptr %i.aa, align 8, !tbaa !438
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !439
  %i.gr = mul i64 %i.gq, %.097117                 ; 2 uses
  %i.gs = ashr i64 %i.gr, 63
  %i.gt = add i64 %i.gr, 32768
  %i.gu = add i64 %i.gt, %i.gs
  %i.gv = ashr i64 %i.gu, 16
  store i64 %i.gv, ptr %i.gp, align 8, !tbaa !439
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gw = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %i.m
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !299
  %i.gz = load ptr, ptr %i.k, align 8, !tbaa !442
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %i.m
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !tbaa.struct !299
  br i1 %i.fd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
  %i.hc = call fastcc i32 @TT_Hint_Glyph(ptr noundef %0, i8 noundef zeroext 0)
  store i32 %i.hc, ptr %i.a, align 4, !tbaa !152
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.d, %bb.n, %bb.m
  %.1101 = phi ptr [ %i.ak, %bb.c ], [ %i.ak, %bb.d ], [ %.0100, %bb.n ], [ %.0100, %bb.m ]
  call void @ft_mem_free(ptr noundef %i.j, ptr noundef %.1101) #21
  %i.hd = load i32, ptr %i.a, align 4, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.hd
}

declare hidden void @FT_GlyphLoader_Add(ptr noundef) local_unnamed_addr #4

declare ptr @FT_List_Find(ptr noundef, ptr noundef) local_unnamed_addr #4

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @FT_List_Add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 22) i32 @TT_Process_Composite_Component(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 65536) %2, i32 noundef range(i32 0, 65536) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.FT_Outline_, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
end_hunk_0
