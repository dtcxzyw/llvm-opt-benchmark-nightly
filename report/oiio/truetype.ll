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
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !769 ; 11 uses
  %1 = ptrtoaddr ptr %i.bl to i64                 ; 9 uses
  %i.bm = sext i32 %i.ab to i64
  %.idx = shl nsw i64 %i.bm, 4
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %.idx ; 2 uses
  %i.bo = and i64 %i.bk, 1
  %.not106 = icmp eq i64 %i.bo, 0
  %.pre151 = load ptr, ptr %0, align 8, !tbaa !166 ; 3 uses
  br i1 %.not106, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !167
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !129
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load <2 x i64>, ptr %i.bt, align 8, !tbaa !223 ; 5 uses
  %i.bv = bitcast <2 x i64> %i.bu to <4 x i32>
  %i.bw = extractelement <4 x i32> %i.bv, i64 0   ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre151, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !130
  %i.bz = and i64 %i.by, 2147418112
  %.not107 = icmp eq i64 %i.bz, 0
  br i1 %.not107, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre151, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !73
  %i.cc = and i64 %i.cb, 32768
  %.not108 = icmp eq i64 %i.cc, 0
  br i1 %.not108, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.cd = icmp sgt i16 %i.f, -4
  %i.ce = extractelement <2 x i64> %i.bu, i64 1   ; 3 uses
  br i1 %i.cd, label %.lr.ph149, label %.loopexit

.lr.ph149:                                        ; preds = %.preheader
  %i.cf = shl <2 x i64> %i.bu, splat (i64 32)
  %i.cg = ashr exact <2 x i64> %i.cf, splat (i64 32) ; 2 uses
  %i.ch = sext i16 %i.f to i64
  %i.ci = shl nsw i64 %i.ch, 4
  %i.cj = add i64 %i.ci, %1
  %i.ck = add i64 %i.cj, 64
  %i.cl = add i64 %1, 16
  %i.cm = call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cl)
  %i.cn = xor i64 %1, -1
  %i.co = add i64 %i.cm, %i.cn
  %i.cp = lshr i64 %i.co, 4                       ; 2 uses
  %min.iters.check166 = icmp eq i64 %i.cp, 0
  br i1 %min.iters.check166, label %scalar.ph165, label %vector.body170

vector.body170:                                   ; preds = %.lr.ph149, %vector.body170
  %index171 = phi i64 [ %index.next174, %vector.body170 ], [ 0, %.lr.ph149 ] ; 3 uses
  %i.cq = shl i64 %index171, 4
  %next.gep172 = getelementptr i8, ptr %i.bl, i64 %i.cq ; 2 uses
  %wide.load173 = load <2 x i64>, ptr %next.gep172, align 8
  %i.cr = shl <2 x i64> %wide.load173, splat (i64 32)
  %i.cs = ashr exact <2 x i64> %i.cr, splat (i64 32)
  %i.ct = mul nsw <2 x i64> %i.cs, %i.cg          ; 2 uses
  %i.cu = ashr <2 x i64> %i.ct, splat (i64 63)
  %i.cv = add nsw <2 x i64> %i.ct, splat (i64 32768)
  %i.cw = add nsw <2 x i64> %i.cv, %i.cu
  %i.cx = shl <2 x i64> %i.cw, splat (i64 16)
  %i.cy = ashr <2 x i64> %i.cx, splat (i64 32)
  store <2 x i64> %i.cy, ptr %next.gep172, align 8
  %index.next174 = add nuw i64 %index171, 1
  %i.cz = icmp eq i64 %index171, %i.cp
  br i1 %i.cz, label %.loopexit, label %vector.body170, !llvm.loop !857

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.da = icmp sgt i16 %i.f, -4
  %i.db = extractelement <2 x i64> %i.bu, i64 1   ; 3 uses
  br i1 %i.da, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.dc = shl <2 x i64> %i.bu, splat (i64 32)
  %i.dd = ashr exact <2 x i64> %i.dc, splat (i64 32) ; 2 uses
  %i.de = sext i16 %i.f to i64
  %i.df = shl nsw i64 %i.de, 4
  %i.dg = add i64 %i.df, %1
  %i.dh = add i64 %i.dg, 64
  %i.di = add i64 %1, 16
  %i.dj = call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.di)
  %i.dk = xor i64 %1, -1
  %i.dl = add i64 %i.dj, %i.dk                    ; 2 uses
  %i.dm = lshr i64 %i.dl, 4
  %min.iters.check = icmp ult i64 %i.dl, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.dn = sext i16 %i.f to i64
  %i.do = shl nsw i64 %i.dn, 4
  %i.dp = add i64 %i.do, %1
  %i.dq = add i64 %i.dp, 64
  %i.dr = add i64 %1, 16
  %umax = call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.dr)
  %i.ds = xor i64 %1, -1
  %i.dt = add i64 %umax, %i.ds
  %i.du = and i64 %i.dt, -16                      ; 2 uses
  %i.dv = or disjoint i64 %i.du, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bl, i64 %i.dv
  %scevgep155 = getelementptr i8, ptr %.0100, i64 %i.dv
  %scevgep156 = getelementptr i8, ptr %i.bl, i64 8
  %i.dw = add i64 %i.du, 16                       ; 2 uses
  %scevgep157 = getelementptr i8, ptr %i.bl, i64 %i.dw
  %scevgep158 = getelementptr i8, ptr %.0100, i64 8
  %scevgep159 = getelementptr i8, ptr %.0100, i64 %i.dw
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
  %i.dx = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0100, i64 %i.dx
  %next.gep163 = getelementptr i8, ptr %i.bl, i64 %i.dx
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %i.dy = shl <2 x i64> %wide.load, splat (i64 32)
  %i.dz = ashr exact <2 x i64> %i.dy, splat (i64 32)
  %i.ea = mul nsw <2 x i64> %i.dz, %i.dd          ; 2 uses
  %i.eb = ashr <2 x i64> %i.ea, splat (i64 63)
  %i.ec = add nsw <2 x i64> %i.ea, splat (i64 32768)
  %i.ed = add nsw <2 x i64> %i.ec, %i.eb
  %i.ee = shl <2 x i64> %i.ed, splat (i64 16)
  %i.ef = ashr <2 x i64> %i.ee, splat (i64 32)
  %i.eg = add nsw <2 x i64> %i.ef, splat (i64 32)
  %i.eh = ashr <2 x i64> %i.eg, splat (i64 6)
  store <2 x i64> %i.eh, ptr %next.gep163, align 8
  %index.next = add nuw i64 %index, 1
  %i.ei = icmp eq i64 %index, %i.dm
  br i1 %i.ei, label %.loopexit, label %vector.body, !llvm.loop !858

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0147 = phi ptr [ %i.ev, %scalar.ph ], [ %.0100, %scalar.ph.preheader ] ; 2 uses
  %.099146 = phi ptr [ %i.eu, %scalar.ph ], [ %i.bl, %scalar.ph.preheader ] ; 2 uses
  %i.ej = load <2 x i64>, ptr %.0147, align 8, !tbaa !223
  %i.ek = shl <2 x i64> %i.ej, splat (i64 32)
  %i.el = ashr exact <2 x i64> %i.ek, splat (i64 32)
  %i.em = mul nsw <2 x i64> %i.el, %i.dd          ; 2 uses
  %i.en = ashr <2 x i64> %i.em, splat (i64 63)
  %i.eo = add nsw <2 x i64> %i.em, splat (i64 32768)
  %i.ep = add nsw <2 x i64> %i.eo, %i.en
  %i.eq = shl <2 x i64> %i.ep, splat (i64 16)
  %i.er = ashr <2 x i64> %i.eq, splat (i64 32)
  %i.es = add nsw <2 x i64> %i.er, splat (i64 32)
  %i.et = ashr <2 x i64> %i.es, splat (i64 6)
  store <2 x i64> %i.et, ptr %.099146, align 8, !tbaa !223
  %i.eu = getelementptr inbounds nuw i8, ptr %.099146, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0147, i64 16
  %i.ew = icmp ult ptr %i.eu, %i.bn
  br i1 %i.ew, label %scalar.ph, label %.loopexit, !llvm.loop !859

scalar.ph165:                                     ; preds = %.lr.ph149, %scalar.ph165
  %.1148 = phi ptr [ %i.fg, %scalar.ph165 ], [ %i.bl, %.lr.ph149 ] ; 3 uses
  %i.ex = load <2 x i64>, ptr %.1148, align 8, !tbaa !223
  %i.ey = shl <2 x i64> %i.ex, splat (i64 32)
  %i.ez = ashr exact <2 x i64> %i.ey, splat (i64 32)
  %i.fa = mul nsw <2 x i64> %i.ez, %i.cg          ; 2 uses
  %i.fb = ashr <2 x i64> %i.fa, splat (i64 63)
  %i.fc = add nsw <2 x i64> %i.fa, splat (i64 32768)
  %i.fd = add nsw <2 x i64> %i.fc, %i.fb
  %i.fe = shl <2 x i64> %i.fd, splat (i64 16)
  %i.ff = ashr <2 x i64> %i.fe, splat (i64 32)
  store <2 x i64> %i.ff, ptr %.1148, align 8, !tbaa !223
  %i.fg = getelementptr inbounds nuw i8, ptr %.1148, i64 16 ; 2 uses
  %i.fh = icmp ult ptr %i.fg, %i.bn
  br i1 %i.fh, label %scalar.ph165, label %.loopexit, !llvm.loop !860

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %vector.body170, %scalar.ph165, %bb.j, %.preheader, %bb.g
  %.097117 = phi i64 [ %i.ce, %.preheader ], [ 0, %bb.g ], [ %i.db, %bb.j ], [ %i.db, %scalar.ph ], [ %i.ce, %vector.body170 ], [ %i.ce, %scalar.ph165 ], [ %i.db, %vector.body ]
  %.098114 = phi i32 [ %i.bw, %.preheader ], [ 0, %bb.g ], [ %i.bw, %bb.j ], [ %i.bw, %scalar.ph ], [ %i.bw, %vector.body170 ], [ %i.bw, %scalar.ph165 ], [ %i.bw, %vector.body ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.pre151, i64 1224 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !261 ; 2 uses
  %i.fk = and i32 %i.fj, 2
  %.not109 = icmp ne i32 %i.fk, 0
  %i.fl = and i64 %i.bk, 2
  %i.fm = icmp eq i64 %i.fl, 0                    ; 3 uses
  %or.cond = and i1 %i.fm, %.not109
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.fn = load i64, ptr %i.o, align 8, !tbaa !253
  %sext126 = shl i64 %i.fn, 32
  %i.fo = ashr exact i64 %sext126, 32
  %i.fp = sext i32 %.098114 to i64                ; 2 uses
  %i.fq = mul nsw i64 %i.fo, %i.fp                ; 2 uses
  %i.fr = ashr i64 %i.fq, 63
  %i.fs = add nsw i64 %i.fq, 32768
  %i.ft = add nsw i64 %i.fs, %i.fr
  %i.fu = shl i64 %i.ft, 16
  %i.fv = ashr i64 %i.fu, 32
  store i64 %i.fv, ptr %i.o, align 8, !tbaa !253
  %i.fw = load i64, ptr %i.s, align 8, !tbaa !761
  %sext128 = shl i64 %i.fw, 32
  %i.fx = ashr exact i64 %sext128, 32
  %i.fy = mul nsw i64 %i.fx, %i.fp                ; 2 uses
  %i.fz = ashr i64 %i.fy, 63
  %i.ga = add nsw i64 %i.fy, 32768
  %i.gb = add nsw i64 %i.ga, %i.fz
  %i.gc = shl i64 %i.gb, 16
  %i.gd = ashr i64 %i.gc, 32
  store i64 %i.gd, ptr %i.s, align 8, !tbaa !761
  br label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.ge = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !tbaa.struct !436
  %i.gf = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.gg = getelementptr [16 x i8], ptr %i.gf, i64 %i.m
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false), !tbaa.struct !436
  %.pre152 = load i32, ptr %i.fi, align 8, !tbaa !261
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.gi = phi i32 [ %.pre152, %bb.l ], [ %i.fj, %bb.k ]
  %i.gj = and i32 %i.gi, 16
  %.not110 = icmp ne i32 %i.gj, 0
  %or.cond120 = and i1 %i.fm, %.not110
  br i1 %or.cond120, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.gk = load i64, ptr %i.w, align 8, !tbaa !763
  %sext130 = shl i64 %i.gk, 32
  %i.gl = ashr exact i64 %sext130, 32
  %i.gm = sext i32 %.098114 to i64                ; 2 uses
  %i.gn = mul nsw i64 %i.gl, %i.gm                ; 2 uses
  %i.go = ashr i64 %i.gn, 63
  %i.gp = add nsw i64 %i.gn, 32768
  %i.gq = add nsw i64 %i.gp, %i.go
  %i.gr = shl i64 %i.gq, 16
  %i.gs = ashr i64 %i.gr, 32
  store i64 %i.gs, ptr %i.w, align 8, !tbaa !763
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !764
  %sext132 = shl i64 %i.gu, 32
  %i.gv = ashr exact i64 %sext132, 32
  %sext133 = shl i64 %.097117, 32
  %i.gw = ashr exact i64 %sext133, 32             ; 2 uses
  %i.gx = mul nsw i64 %i.gv, %i.gw                ; 2 uses
  %i.gy = ashr i64 %i.gx, 63
  %i.gz = add nsw i64 %i.gx, 32768
  %i.ha = add nsw i64 %i.gz, %i.gy
  %i.hb = shl i64 %i.ha, 16
  %i.hc = ashr i64 %i.hb, 32
  store i64 %i.hc, ptr %i.gt, align 8, !tbaa !764
  %i.hd = load i64, ptr %i.aa, align 8, !tbaa !765
  %sext135 = shl i64 %i.hd, 32
  %i.he = ashr exact i64 %sext135, 32
  %i.hf = mul nsw i64 %i.he, %i.gm                ; 2 uses
  %i.hg = ashr i64 %i.hf, 63
  %i.hh = add nsw i64 %i.hf, 32768
  %i.hi = add nsw i64 %i.hh, %i.hg
  %i.hj = shl i64 %i.hi, 16
  %i.hk = ashr i64 %i.hj, 32
  store i64 %i.hk, ptr %i.aa, align 8, !tbaa !765
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !766
  %sext137 = shl i64 %i.hm, 32
  %i.hn = ashr exact i64 %sext137, 32
  %i.ho = mul nsw i64 %i.hn, %i.gw                ; 2 uses
  %i.hp = ashr i64 %i.ho, 63
  %i.hq = add nsw i64 %i.ho, 32768
  %i.hr = add nsw i64 %i.hq, %i.hp
  %i.hs = shl i64 %i.hr, 16
  %i.ht = ashr i64 %i.hs, 32
  store i64 %i.ht, ptr %i.hl, align 8, !tbaa !766
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hu = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.hv = getelementptr [16 x i8], ptr %i.hu, i64 %i.m
  %i.hw = getelementptr i8, ptr %i.hv, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false), !tbaa.struct !436
  %i.hx = load ptr, ptr %i.k, align 8, !tbaa !769
  %i.hy = getelementptr [16 x i8], ptr %i.hx, i64 %i.m
end_hunk_0
