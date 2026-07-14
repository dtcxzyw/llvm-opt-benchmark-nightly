inline.NumInlined: 294
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 36
begin_hunk_0_@TT_Vary_Apply_Glyph_Deltas:bb.a
  %i.on = getelementptr inbounds nuw [16 x i8], ptr %i.ol, i64 %i.om
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oj, ptr noundef nonnull align 8 dereferenceable(16) %i.on, i64 16, i1 false), !tbaa.struct !436
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.op = load ptr, ptr %i.ok, align 8, !tbaa !769
  %i.oq = add nsw i32 %i.m, 1
  %i.or = zext i32 %i.oq to i64                   ; 2 uses
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.op, i64 %i.or
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull align 8 dereferenceable(16) %i.os, i64 16, i1 false), !tbaa.struct !436
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.or
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !260
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.om
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !260
  %i.ox = add i64 %i.ou, 32
  %i.oy = sub i64 %i.ox, %i.ow
  %i.oz = lshr i64 %i.oy, 6
  %i.pa = trunc i64 %i.oz to i32
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.pa, ptr %i.pb, align 8, !tbaa !171
  %.pre509 = load i32, ptr %i.mm, align 8, !tbaa !261
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge455
  %i.pc = phi i32 [ %.pre509, %bb.al ], [ %i.mn, %._crit_edge455 ]
  %i.pd = and i32 %i.pc, 16
  %.not380 = icmp eq i32 %i.pd, 0
  br i1 %.not380, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !769
  %i.ph = add nsw i32 %i.m, 2
  %i.pi = zext i32 %i.ph to i64                   ; 2 uses
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.pg, i64 %i.pi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i64 16, i1 false), !tbaa.struct !436
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.pl = load ptr, ptr %i.pf, align 8, !tbaa !769
  %i.pm = add nsw i32 %i.m, 3
  %i.pn = zext i32 %i.pm to i64                   ; 2 uses
  %i.po = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %i.pn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pk, ptr noundef nonnull align 8 dereferenceable(16) %i.po, i64 16, i1 false), !tbaa.struct !436
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.pn
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !342
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.pi
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !342
  %i.pv = add i64 %i.pr, 32
  %i.pw = sub i64 %i.pv, %i.pu
  %i.px = lshr i64 %i.pw, 6
  %i.py = trunc i64 %i.px to i32
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 %i.py, ptr %i.pz, align 4, !tbaa !173
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.p, %bb.q, %bb.ae
  %.0348 = phi ptr [ null, %bb.p ], [ %i.dz, %bb.q ], [ %i.dz, %bb.ae ], [ %i.dz, %bb.am ], [ %i.dz, %bb.an ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %i.dx) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0348) #22
  %.not387 = icmp eq ptr %.0345, inttoptr (i64 -1 to ptr)
  br i1 %.not387, label %bb.ap, label %.thread395

.thread395:                                       ; preds = %bb.m, %bb.j, %bb.i, %bb.h, %bb.ao
  %.0343403 = phi ptr [ %i.ch, %bb.ao ], [ %i.ch, %bb.m ], [ %i.ch, %bb.j ], [ %i.ch, %bb.i ], [ null, %bb.h ]
  %.0344401 = phi ptr [ %i.cl, %bb.ao ], [ %i.cl, %bb.m ], [ %i.cl, %bb.j ], [ null, %bb.i ], [ null, %bb.h ]
  %.1346400 = phi ptr [ %.0345, %bb.ao ], [ null, %bb.m ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.1346400) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread395
  %.0343404 = phi ptr [ %i.ch, %bb.ao ], [ %.0343403, %.thread395 ]
  %.0344402 = phi ptr [ %i.cl, %bb.ao ], [ %.0344401, %.thread395 ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %i.cd) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0343404) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0344402) #22
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.f) #22
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.e, %bb.d, %bb.c, %bb.g, %bb.f
  %.0335 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %i.bl, %bb.e ], [ %i.bl, %bb.f ], [ %i.bl, %bb.g ], [ %i.bl, %bb.ap ]
  %.0334 = phi ptr [ null, %bb.c ], [ %i.bj, %bb.d ], [ %i.bj, %bb.e ], [ %i.bj, %bb.f ], [ %i.bj, %bb.g ], [ %i.bj, %bb.ap ]
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %i.bh) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0334) #22
  call void @ft_mem_free(ptr noundef %i.h, ptr noundef %.0335) #22
  %i.qa = load i32, ptr %i.a, align 4, !tbaa !3
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
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 98 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !767  ; 7 uses
  %i.g = sext i16 %i.f to i32
  %i.h = load ptr, ptr %0, align 8, !tbaa !166
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.m = sext i16 %i.f to i64                     ; 8 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !436
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.q = getelementptr [16 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !436
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.u = getelementptr [16 x i8], ptr %i.t, i64 %i.m
  %i.v = getelementptr i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !436
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.y = getelementptr [16 x i8], ptr %i.x, i64 %i.m
  %i.z = getelementptr i8, ptr %i.y, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !436
  %i.ab = add nsw i32 %i.g, 4                     ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !130
  %i.af = and i64 %i.ae, 2147418112
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !73
  %i.ai = and i64 %i.ah, 32768
  %.not102 = icmp eq i64 %i.ai, 0
  br i1 %.not102, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = sext i32 %i.ab to i64
  %i.ak = call ptr @ft_mem_qrealloc(ptr noundef %i.j, i64 noundef 16, i64 noundef 0, i64 noundef %i.aj, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 4 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !3
  %.not103 = icmp eq i32 %i.al, 0
  br i1 %.not103, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.am = call fastcc i32 @TT_Vary_Apply_Glyph_Deltas(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.ak) ; 2 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !3
  %.not104 = icmp eq i32 %i.am, 0
  br i1 %.not104, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0100 = phi ptr [ %i.ak, %bb.d ], [ null, %bb.b ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !162 ; 2 uses
  %i.ap = and i64 %i.ao, 2
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i16, ptr %i.e, align 2, !tbaa !849
  %i.as = add i16 %i.ar, 4                        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i16 %i.as, ptr %i.at, align 4, !tbaa !850
  %i.au = load i16, ptr %i.d, align 8, !tbaa !851
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i16 %i.au, ptr %i.av, align 2, !tbaa !852
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !853
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !201
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !854 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !200
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !855 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bg = load <2 x ptr>, ptr %i.be, align 8, !tbaa !225
  store <2 x ptr> %i.bg, ptr %i.bf, align 8, !tbaa !225
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i16 0, ptr %i.bh, align 8, !tbaa !856
  %i.bi = zext i16 %i.as to i64
  %i.bj = shl nuw nsw i64 %i.bi, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bc, ptr align 8 %i.az, i64 %i.bj, i1 false)
  %.pre = load i64, ptr %i.an, align 8, !tbaa !162
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bk = phi i64 [ %.pre, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !769 ; 13 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bn = sext i32 %i.ab to i64
  %.idx = shl nsw i64 %i.bn, 4
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %.idx ; 2 uses
  %i.bp = and i64 %i.bk, 1
  %.not106 = icmp eq i64 %i.bp, 0
  %.pre151 = load ptr, ptr %0, align 8, !tbaa !166 ; 3 uses
  br i1 %.not106, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !167
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load <2 x i64>, ptr %i.bu, align 8, !tbaa !223 ; 5 uses
  %i.bw = bitcast <2 x i64> %i.bv to <4 x i32>
  %i.bx = extractelement <4 x i32> %i.bw, i64 0   ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pre151, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !130
  %i.ca = and i64 %i.bz, 2147418112
  %.not107 = icmp eq i64 %i.ca, 0
  br i1 %.not107, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre151, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !73
  %i.cd = and i64 %i.cc, 32768
  %.not108 = icmp eq i64 %i.cd, 0
  br i1 %.not108, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.ce = icmp sgt i16 %i.f, -4
  %i.cf = extractelement <2 x i64> %i.bv, i64 1   ; 3 uses
  br i1 %i.ce, label %.lr.ph149, label %.loopexit

.lr.ph149:                                        ; preds = %.preheader
  %i.cg = shl <2 x i64> %i.bv, splat (i64 32)
  %i.ch = ashr exact <2 x i64> %i.cg, splat (i64 32) ; 2 uses
  %1 = ptrtoint ptr %i.bl to i64                  ; 3 uses
  %i.ci = sext i16 %i.f to i64
  %i.cj = shl nsw i64 %i.ci, 4
  %i.ck = add i64 %i.cj, %1
  %i.cl = add i64 %i.ck, 64
  %i.cm = add i64 %1, 16
  %umax166 = call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.cm)
  %i.cn = xor i64 %1, -1
  %i.co = add i64 %umax166, %i.cn
  %i.cp = lshr i64 %i.co, 4                       ; 2 uses
  %min.iters.check168 = icmp eq i64 %i.cp, 0
  br i1 %min.iters.check168, label %scalar.ph167, label %vector.body172

vector.body172:                                   ; preds = %.lr.ph149, %vector.body172
  %index173 = phi i64 [ %index.next176, %vector.body172 ], [ 0, %.lr.ph149 ] ; 3 uses
  %i.cq = shl i64 %index173, 4
  %next.gep174 = getelementptr i8, ptr %i.bl, i64 %i.cq ; 2 uses
  %wide.load175 = load <2 x i64>, ptr %next.gep174, align 8
  %i.cr = shl <2 x i64> %wide.load175, splat (i64 32)
  %i.cs = ashr exact <2 x i64> %i.cr, splat (i64 32)
  %i.ct = mul nsw <2 x i64> %i.cs, %i.ch          ; 2 uses
  %i.cu = ashr <2 x i64> %i.ct, splat (i64 63)
  %i.cv = add nsw <2 x i64> %i.ct, splat (i64 32768)
  %i.cw = add nsw <2 x i64> %i.cv, %i.cu
  %i.cx = shl <2 x i64> %i.cw, splat (i64 16)
  %i.cy = ashr <2 x i64> %i.cx, splat (i64 32)
  store <2 x i64> %i.cy, ptr %next.gep174, align 8
  %index.next176 = add nuw i64 %index173, 1
  %i.cz = icmp eq i64 %index173, %i.cp
  br i1 %i.cz, label %.loopexit, label %vector.body172, !llvm.loop !857

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.da = icmp sgt i16 %i.f, -4
  %i.db = extractelement <2 x i64> %i.bv, i64 1   ; 3 uses
  br i1 %i.da, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.dc = shl <2 x i64> %i.bv, splat (i64 32)
  %i.dd = ashr exact <2 x i64> %i.dc, splat (i64 32) ; 2 uses
  %2 = ptrtoint ptr %i.bl to i64                  ; 3 uses
  %i.de = sext i16 %i.f to i64
  %i.df = shl nsw i64 %i.de, 4
  %i.dg = add i64 %i.df, %2
  %i.dh = add i64 %i.dg, 64
  %i.di = add i64 %2, 16
  %umax163 = call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.di)
  %i.dj = xor i64 %2, -1
  %i.dk = add i64 %umax163, %i.dj                 ; 2 uses
  %i.dl = lshr i64 %i.dk, 4
  %min.iters.check = icmp ult i64 %i.dk, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.dm = sext i16 %i.f to i64
  %i.dn = shl nsw i64 %i.dm, 4
  %i.do = add i64 %i.dn, %i.bm
  %i.dp = add i64 %i.do, 64
  %i.dq = add i64 %i.bm, 16
  %umax = call i64 @llvm.umax.i64(i64 %i.dp, i64 %i.dq)
  %i.dr = xor i64 %i.bm, -1
  %i.ds = add i64 %umax, %i.dr
  %i.dt = and i64 %i.ds, -16                      ; 2 uses
  %i.du = or disjoint i64 %i.dt, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bl, i64 %i.du
  %scevgep155 = getelementptr i8, ptr %.0100, i64 %i.du
  %scevgep156 = getelementptr i8, ptr %i.bl, i64 8
  %i.dv = add i64 %i.dt, 16                       ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.bl, i64 %i.dv
  %scevgep158 = getelementptr i8, ptr %.0100, i64 8
  %scevgep159 = getelementptr i8, ptr %.0100, i64 %i.dv
  %bound0 = icmp ult ptr %i.bl, %scevgep155
  %bound1 = icmp ult ptr %.0100, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0160 = icmp ult ptr %scevgep156, %scevgep159
  %bound1161 = icmp ult ptr %scevgep158, %scevgep157
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx = or i1 %found.conflict, %found.conflict162
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dw = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0100, i64 %i.dw
  %next.gep164 = getelementptr i8, ptr %i.bl, i64 %i.dw
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %i.dx = shl <2 x i64> %wide.load, splat (i64 32)
  %i.dy = ashr exact <2 x i64> %i.dx, splat (i64 32)
  %i.dz = mul nsw <2 x i64> %i.dy, %i.dd          ; 2 uses
  %i.ea = ashr <2 x i64> %i.dz, splat (i64 63)
  %i.eb = add nsw <2 x i64> %i.dz, splat (i64 32768)
  %i.ec = add nsw <2 x i64> %i.eb, %i.ea
  %i.ed = shl <2 x i64> %i.ec, splat (i64 16)
  %i.ee = ashr <2 x i64> %i.ed, splat (i64 32)
  %i.ef = add nsw <2 x i64> %i.ee, splat (i64 32)
  %i.eg = ashr <2 x i64> %i.ef, splat (i64 6)
  store <2 x i64> %i.eg, ptr %next.gep164, align 8
  %index.next = add nuw i64 %index, 1
  %i.eh = icmp eq i64 %index, %i.dl
  br i1 %i.eh, label %.loopexit, label %vector.body, !llvm.loop !858

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0147 = phi ptr [ %i.eu, %scalar.ph ], [ %.0100, %scalar.ph.preheader ] ; 2 uses
  %.099146 = phi ptr [ %i.et, %scalar.ph ], [ %i.bl, %scalar.ph.preheader ] ; 2 uses
  %i.ei = load <2 x i64>, ptr %.0147, align 8, !tbaa !223
  %i.ej = shl <2 x i64> %i.ei, splat (i64 32)
  %i.ek = ashr exact <2 x i64> %i.ej, splat (i64 32)
  %i.el = mul nsw <2 x i64> %i.ek, %i.dd          ; 2 uses
  %i.em = ashr <2 x i64> %i.el, splat (i64 63)
  %i.en = add nsw <2 x i64> %i.el, splat (i64 32768)
  %i.eo = add nsw <2 x i64> %i.en, %i.em
  %i.ep = shl <2 x i64> %i.eo, splat (i64 16)
  %i.eq = ashr <2 x i64> %i.ep, splat (i64 32)
  %i.er = add nsw <2 x i64> %i.eq, splat (i64 32)
  %i.es = ashr <2 x i64> %i.er, splat (i64 6)
  store <2 x i64> %i.es, ptr %.099146, align 8, !tbaa !223
  %i.et = getelementptr inbounds nuw i8, ptr %.099146, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0147, i64 16
  %i.ev = icmp ult ptr %i.et, %i.bo
  br i1 %i.ev, label %scalar.ph, label %.loopexit, !llvm.loop !859

scalar.ph167:                                     ; preds = %.lr.ph149, %scalar.ph167
  %.1148 = phi ptr [ %i.ff, %scalar.ph167 ], [ %i.bl, %.lr.ph149 ] ; 3 uses
  %i.ew = load <2 x i64>, ptr %.1148, align 8, !tbaa !223
  %i.ex = shl <2 x i64> %i.ew, splat (i64 32)
  %i.ey = ashr exact <2 x i64> %i.ex, splat (i64 32)
  %i.ez = mul nsw <2 x i64> %i.ey, %i.ch          ; 2 uses
  %i.fa = ashr <2 x i64> %i.ez, splat (i64 63)
  %i.fb = add nsw <2 x i64> %i.ez, splat (i64 32768)
  %i.fc = add nsw <2 x i64> %i.fb, %i.fa
  %i.fd = shl <2 x i64> %i.fc, splat (i64 16)
  %i.fe = ashr <2 x i64> %i.fd, splat (i64 32)
  store <2 x i64> %i.fe, ptr %.1148, align 8, !tbaa !223
  %i.ff = getelementptr inbounds nuw i8, ptr %.1148, i64 16 ; 2 uses
  %i.fg = icmp ult ptr %i.ff, %i.bo
  br i1 %i.fg, label %scalar.ph167, label %.loopexit, !llvm.loop !860

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %vector.body172, %scalar.ph167, %bb.j, %.preheader, %bb.g
  %.097117 = phi i64 [ %i.cf, %.preheader ], [ 0, %bb.g ], [ %i.db, %bb.j ], [ %i.db, %scalar.ph ], [ %i.cf, %vector.body172 ], [ %i.cf, %scalar.ph167 ], [ %i.db, %vector.body ]
  %.098114 = phi i32 [ %i.bx, %.preheader ], [ 0, %bb.g ], [ %i.bx, %bb.j ], [ %i.bx, %scalar.ph ], [ %i.bx, %vector.body172 ], [ %i.bx, %scalar.ph167 ], [ %i.bx, %vector.body ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre151, i64 1224 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !261 ; 2 uses
  %i.fj = and i32 %i.fi, 2
  %.not109 = icmp ne i32 %i.fj, 0
  %i.fk = and i64 %i.bk, 2
  %i.fl = icmp eq i64 %i.fk, 0                    ; 3 uses
  %or.cond = and i1 %i.fl, %.not109
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.fm = load i64, ptr %i.o, align 8, !tbaa !253
  %sext126 = shl i64 %i.fm, 32
  %i.fn = ashr exact i64 %sext126, 32
  %i.fo = sext i32 %.098114 to i64                ; 2 uses
  %i.fp = mul nsw i64 %i.fn, %i.fo                ; 2 uses
  %i.fq = ashr i64 %i.fp, 63
  %i.fr = add nsw i64 %i.fp, 32768
  %i.fs = add nsw i64 %i.fr, %i.fq
  %i.ft = shl i64 %i.fs, 16
  %i.fu = ashr i64 %i.ft, 32
  store i64 %i.fu, ptr %i.o, align 8, !tbaa !253
  %i.fv = load i64, ptr %i.s, align 8, !tbaa !761
  %sext128 = shl i64 %i.fv, 32
  %i.fw = ashr exact i64 %sext128, 32
  %i.fx = mul nsw i64 %i.fw, %i.fo                ; 2 uses
  %i.fy = ashr i64 %i.fx, 63
  %i.fz = add nsw i64 %i.fx, 32768
  %i.ga = add nsw i64 %i.fz, %i.fy
  %i.gb = shl i64 %i.ga, 16
  %i.gc = ashr i64 %i.gb, 32
  store i64 %i.gc, ptr %i.s, align 8, !tbaa !761
  br label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.gd = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false), !tbaa.struct !436
  %i.ge = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.gf = getelementptr [16 x i8], ptr %i.ge, i64 %i.m
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !436
  %.pre152 = load i32, ptr %i.fh, align 8, !tbaa !261
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.gh = phi i32 [ %.pre152, %bb.l ], [ %i.fi, %bb.k ]
  %i.gi = and i32 %i.gh, 16
  %.not110 = icmp ne i32 %i.gi, 0
  %or.cond120 = and i1 %i.fl, %.not110
  br i1 %or.cond120, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.gj = load i64, ptr %i.w, align 8, !tbaa !763
  %sext130 = shl i64 %i.gj, 32
  %i.gk = ashr exact i64 %sext130, 32
  %i.gl = sext i32 %.098114 to i64                ; 2 uses
  %i.gm = mul nsw i64 %i.gk, %i.gl                ; 2 uses
  %i.gn = ashr i64 %i.gm, 63
  %i.go = add nsw i64 %i.gm, 32768
  %i.gp = add nsw i64 %i.go, %i.gn
  %i.gq = shl i64 %i.gp, 16
  %i.gr = ashr i64 %i.gq, 32
  store i64 %i.gr, ptr %i.w, align 8, !tbaa !763
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !764
  %sext132 = shl i64 %i.gt, 32
  %i.gu = ashr exact i64 %sext132, 32
  %sext133 = shl i64 %.097117, 32
  %i.gv = ashr exact i64 %sext133, 32             ; 2 uses
  %i.gw = mul nsw i64 %i.gu, %i.gv                ; 2 uses
  %i.gx = ashr i64 %i.gw, 63
  %i.gy = add nsw i64 %i.gw, 32768
  %i.gz = add nsw i64 %i.gy, %i.gx
  %i.ha = shl i64 %i.gz, 16
  %i.hb = ashr i64 %i.ha, 32
  store i64 %i.hb, ptr %i.gs, align 8, !tbaa !764
  %i.hc = load i64, ptr %i.aa, align 8, !tbaa !765
  %sext135 = shl i64 %i.hc, 32
  %i.hd = ashr exact i64 %sext135, 32
  %i.he = mul nsw i64 %i.hd, %i.gl                ; 2 uses
  %i.hf = ashr i64 %i.he, 63
  %i.hg = add nsw i64 %i.he, 32768
  %i.hh = add nsw i64 %i.hg, %i.hf
  %i.hi = shl i64 %i.hh, 16
  %i.hj = ashr i64 %i.hi, 32
  store i64 %i.hj, ptr %i.aa, align 8, !tbaa !765
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !766
  %sext137 = shl i64 %i.hl, 32
  %i.hm = ashr exact i64 %sext137, 32
  %i.hn = mul nsw i64 %i.hm, %i.gv                ; 2 uses
  %i.ho = ashr i64 %i.hn, 63
  %i.hp = add nsw i64 %i.hn, 32768
  %i.hq = add nsw i64 %i.hp, %i.ho
  %i.hr = shl i64 %i.hq, 16
  %i.hs = ashr i64 %i.hr, 32
  store i64 %i.hs, ptr %i.hk, align 8, !tbaa !766
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ht = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.hu = getelementptr [16 x i8], ptr %i.ht, i64 %i.m
  %i.hv = getelementptr i8, ptr %i.hu, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false), !tbaa.struct !436
  %i.hw = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.hx = getelementptr [16 x i8], ptr %i.hw, i64 %i.m
end_hunk_0
