Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.1?download=true
inline.NumInlined: 231
inline.NumDeleted: 109
begin_hunk_0_@_RINvNtCsksn9slvsHfS_10image_webp3yuv28fill_row_fancy_with_1_uv_rowKj4_EB4_:bb.a
  store i8 %i.ug, ptr %i.sp, align 1, !alias.scope !341
  %i.uh = zext i8 %i.ss to i32
  %i.ui = mul nuw nsw i32 %i.uh, 19077
  %i.uj = lshr i32 %i.ui, 8                       ; 3 uses
  %i.uk = extractelement <4 x i16> %i.th, i64 3
  %i.ul = zext nneg i16 %i.uk to i32              ; 2 uses
  %i.um = mul nuw nsw i32 %i.ul, 26149
  %i.un = lshr i32 %i.um, 8
  %i.uo = add nsw i32 %i.uj, -14234
  %i.up = add nsw i32 %i.uo, %i.un
  %i.uq = ashr i32 %i.up, 6
  %..i.i.i32 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.uq, i32 0)
  %i.ur = tail call i32 @llvm.umin.i32(i32 %..i.i.i32, i32 255)
  %i.us = trunc nuw i32 %i.ur to i8
  store i8 %i.us, ptr %i.sq, align 1, !alias.scope !342
  %i.ut = extractelement <4 x i16> %i.th, i64 2
  %i.uu = zext nneg i16 %i.ut to i32              ; 2 uses
  %i.uv = mul nuw nsw i32 %i.uu, 6419
  %i.uw = lshr i32 %i.uv, 8
  %i.ux = mul nuw nsw i32 %i.ul, 13320
  %i.uy = lshr i32 %i.ux, 8
  %.neg86 = add nuw nsw i32 %i.uj, 8708
  %i.uz = add nuw nsw i32 %i.uw, %i.uy
  %i.va = sub nsw i32 %.neg86, %i.uz
  %i.vb = ashr i32 %i.va, 6
  %..i.i2.i35 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.vb, i32 0)
  %i.vc = tail call i32 @llvm.umin.i32(i32 %..i.i2.i35, i32 255)
  %i.vd = trunc nuw i32 %i.vc to i8
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 5
  store i8 %i.vd, ptr %i.ve, align 1, !alias.scope !342
  %i.vf = mul nuw nsw i32 %i.uu, 33050
  %i.vg = lshr i32 %i.vf, 8
  %i.vh = add nsw i32 %i.uj, -17685
  %i.vi = add nsw i32 %i.vh, %i.vg
  %i.vj = ashr i32 %i.vi, 6
  %..i.i3.i36 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.vj, i32 0)
  %i.vk = tail call i32 @llvm.umin.i32(i32 %..i.i3.i36, i32 255)
  %i.vl = trunc nuw i32 %i.vk to i8
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.662.092, i64 6
  store i8 %i.vl, ptr %i.vm, align 1, !alias.scope !342
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.qn, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !339
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj3_EB4_(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7, ptr noalias nofree noundef nonnull readonly captures(none) %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias nofree noundef nonnull readonly captures(none) %10, i64 noundef range(i64 0, -9223372036854775808) %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %2, align 1, !noundef !7
  %.not25 = icmp eq i64 %5, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not26 = icmp eq i64 %7, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.c = load i8, ptr %4, align 1, !noundef !7
  %i.d = load i8, ptr %6, align 1, !noundef !7
  %i.e = zext i8 %i.c to i16
  %i.f = zext i8 %i.d to i16                      ; 2 uses
  %i.g = mul nuw nsw i16 %i.e, 12
  %i.h = mul nuw nsw i16 %i.f, 3
  %i.i = add nuw nsw i16 %i.g, 8
  %i.j = add nuw nsw i16 %i.i, %i.f
  %i.k = add nuw nsw i16 %i.j, %i.h
  %i.l = lshr i16 %i.k, 4
  %.not27 = icmp eq i64 %9, 0
  br i1 %.not27, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not28 = icmp eq i64 %11, 0
  br i1 %.not28, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.m = load i8, ptr %8, align 1, !noundef !7
  %i.n = load i8, ptr %10, align 1, !noundef !7
  %i.o = zext i8 %i.m to i16
  %i.p = zext i8 %i.n to i16                      ; 2 uses
  %i.q = mul nuw nsw i16 %i.o, 12
  %i.r = mul nuw nsw i16 %i.p, 3
  %i.s = add nuw nsw i16 %i.q, 8
  %i.t = add nuw nsw i16 %i.s, %i.p
  %i.u = add nuw nsw i16 %i.t, %i.r
  %i.v = lshr i16 %i.u, 4
  %i.w = zext i8 %i.b to i32
  %i.x = mul nuw nsw i32 %i.w, 19077
  %i.y = lshr i32 %i.x, 8                         ; 3 uses
  %i.z = zext nneg i16 %i.v to i32                ; 2 uses
  %i.aa = mul nuw nsw i32 %i.z, 26149
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.y, -14234
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %0, align 1, !alias.scope !354
  %i.ah = zext nneg i16 %i.l to i32               ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.z, 13320
  %i.al = lshr i32 %i.ak, 8
  %.neg125 = add nuw nsw i32 %i.y, 8708
  %i.am = add nuw nsw i32 %i.aj, %i.al
  %i.an = sub nsw i32 %.neg125, %i.am
  %i.ao = ashr i32 %i.an, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ao, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !alias.scope !354
  %i.as = mul nuw nsw i32 %i.ah, 33050
  %i.at = lshr i32 %i.as, 8
  %i.au = add nsw i32 %i.y, -17685
  %i.av = add nsw i32 %i.au, %i.at
  %i.aw = ashr i32 %i.av, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.aw, i32 0)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ay = trunc nuw i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !alias.scope !354
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  %i.bb = add nsw i64 %1, -3                      ; 2 uses
  %i.bc = add nsw i64 %3, -1                      ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.be = urem i64 %i.bb, 6                       ; 3 uses
  %i.bf = sub nuw i64 %i.bb, %i.be                ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 3 uses
  %i.bh = and i64 %i.bc, 1
  %i.bi = and i64 %i.bc, -2                       ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi
  %.not.i.i.i.i.i.i.i.i.i.i.i141 = icmp samesign ult i64 %1, 9
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i141, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bk = sub i64 5, %i.bf
  %i.bl = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 -6)
  %i.bm = add i64 %i.bl, %i.bf
  %i.bn = udiv i64 %i.bm, 6
  %i.bo = lshr i64 %i.bc, 1
  %i.bp = add nsw i64 %11, -1
  %i.bq = add nsw i64 %9, -1
  %i.br = add nsw i64 %7, -1
  %i.bs = add nsw i64 %5, -1
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bo)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bp)
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bq)
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.br)
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bs) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bx, 16
  br i1 %min.iters.check, label %.lr.ph.preheader203, label %vector.ph

.lr.ph.preheader203:                              ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.37.0153.ph = phi i64 [ %11, %.lr.ph.preheader ], [ %i.cc, %vector.body ]
  %.sroa.34.0152.ph = phi ptr [ %10, %.lr.ph.preheader ], [ %i.cd, %vector.body ]
  %.sroa.28.0151.ph = phi i64 [ %9, %.lr.ph.preheader ], [ %i.ce, %vector.body ]
  %.sroa.25.0150.ph = phi ptr [ %8, %.lr.ph.preheader ], [ %i.cf, %vector.body ]
  %.sroa.19.0149.ph = phi i64 [ %7, %.lr.ph.preheader ], [ %i.cg, %vector.body ]
  %.sroa.16.0148.ph = phi ptr [ %6, %.lr.ph.preheader ], [ %i.ch, %vector.body ]
  %.sroa.10.0147.ph = phi i64 [ %5, %.lr.ph.preheader ], [ %i.ci, %vector.body ]
  %.sroa.790.0146.ph = phi ptr [ %4, %.lr.ph.preheader ], [ %i.cj, %vector.body ]
  %.sroa.0.0145.ph = phi ptr [ %i.bd, %.lr.ph.preheader ], [ %i.cl, %vector.body ]
  %.sroa.599.0144.ph = phi i64 [ %i.bi, %.lr.ph.preheader ], [ %i.cn, %vector.body ]
  %.sroa.6101.0143.ph = phi ptr [ %i.ba, %.lr.ph.preheader ], [ %i.cp, %vector.body ]
  %.sroa.9102.0142.ph = phi i64 [ %i.bf, %.lr.ph.preheader ], [ %i.cr, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.bz = and i64 %i.by, 15                       ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = select i1 %i.ca, i64 16, i64 %i.bz
  %n.vec = sub nsw i64 %i.by, %i.cb               ; 13 uses
  %i.cc = sub i64 %11, %n.vec
  %i.cd = getelementptr i8, ptr %10, i64 %n.vec
  %i.ce = sub i64 %9, %n.vec
  %i.cf = getelementptr i8, ptr %8, i64 %n.vec
  %i.cg = sub i64 %7, %n.vec
  %i.ch = getelementptr i8, ptr %6, i64 %n.vec
  %i.ci = sub i64 %5, %n.vec
  %i.cj = getelementptr i8, ptr %4, i64 %n.vec
  %i.ck = shl i64 %n.vec, 1
  %i.cl = getelementptr i8, ptr %i.bd, i64 %i.ck
  %i.cm = shl i64 %n.vec, 1
  %i.cn = sub i64 %i.bi, %i.cm
  %i.co = mul i64 %n.vec, 6
  %i.cp = getelementptr i8, ptr %i.ba, i64 %i.co
  %i.cq = mul i64 %n.vec, -6
  %i.cr = add i64 %i.bf, %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %next.gep = getelementptr i8, ptr %10, i64 %index ; 2 uses
  %next.gep165 = getelementptr i8, ptr %8, i64 %index ; 2 uses
  %next.gep166 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep167 = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.cs = shl i64 %index, 1                       ; 16 uses
  %next.gep168 = getelementptr i8, ptr %i.bd, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.ct, i64 2
  %i.cu = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cu, i64 4
  %i.cv = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.cv, i64 6
  %i.cw = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.cw, i64 8
  %i.cx = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.cx, i64 10
  %i.cy = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.cy, i64 12
  %i.cz = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.cz, i64 14
  %i.da = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.da, i64 16
  %i.db = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.db, i64 18
  %i.dc = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.dc, i64 20
  %i.dd = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.dd, i64 22
  %i.de = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.de, i64 24
  %i.df = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.df, i64 26
  %i.dg = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.dg, i64 28
  %i.dh = getelementptr i8, ptr %i.bd, i64 %i.cs  ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.dh, i64 30
  %i.di = mul i64 %index, 6
  %next.gep184 = getelementptr i8, ptr %i.ba, i64 %i.di
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep167, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep166, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %next.gep165, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.dn = load i8, ptr %next.gep168, align 1, !noundef !7
  %i.do = load i8, ptr %next.gep169, align 1, !noundef !7
  %i.dp = load i8, ptr %next.gep170, align 1, !noundef !7
  %i.dq = load i8, ptr %next.gep171, align 1, !noundef !7
  %i.dr = load i8, ptr %next.gep172, align 1, !noundef !7
  %i.ds = load i8, ptr %next.gep173, align 1, !noundef !7
  %i.dt = load i8, ptr %next.gep174, align 1, !noundef !7
  %i.du = load i8, ptr %next.gep175, align 1, !noundef !7
  %i.dv = load i8, ptr %next.gep176, align 1, !noundef !7
  %i.dw = load i8, ptr %next.gep177, align 1, !noundef !7
  %i.dx = load i8, ptr %next.gep178, align 1, !noundef !7
  %i.dy = load i8, ptr %next.gep179, align 1, !noundef !7
  %i.dz = load i8, ptr %next.gep180, align 1, !noundef !7
  %i.ea = load i8, ptr %next.gep181, align 1, !noundef !7
  %i.eb = load i8, ptr %next.gep182, align 1, !noundef !7
  %i.ec = load i8, ptr %next.gep183, align 1, !noundef !7
  %i.ed = insertelement <16 x i8> poison, i8 %i.dn, i64 0
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 1
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 2
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 3
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 4
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 5
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 6
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 7
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 8
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 9
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 10
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 11
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 12
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 13
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 14
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep167, align 1
  %wide.load185 = load <16 x i8>, ptr %i.dj, align 1
  %wide.load186 = load <16 x i8>, ptr %next.gep166, align 1
  %wide.load187 = load <16 x i8>, ptr %i.dk, align 1
  %i.et = zext <16 x i8> %wide.load to <16 x i16> ; 2 uses
  %i.eu = zext <16 x i8> %wide.load185 to <16 x i16> ; 2 uses
  %i.ev = zext <16 x i8> %wide.load186 to <16 x i16> ; 2 uses
  %i.ew = zext <16 x i8> %wide.load187 to <16 x i16> ; 2 uses
  %i.ex = mul nuw nsw <16 x i16> %i.et, splat (i16 9)
  %i.ey = add nuw nsw <16 x i16> %i.ev, %i.eu
  %i.ez = mul nuw nsw <16 x i16> %i.ey, splat (i16 3)
  %i.fa = add nuw nsw <16 x i16> %i.ex, splat (i16 8)
  %i.fb = add nuw nsw <16 x i16> %i.fa, %i.ew
  %i.fc = add nuw nsw <16 x i16> %i.fb, %i.ez
  %i.fd = lshr <16 x i16> %i.fc, splat (i16 4)
  %wide.load188 = load <16 x i8>, ptr %next.gep165, align 1
  %wide.load189 = load <16 x i8>, ptr %i.dl, align 1
  %wide.load190 = load <16 x i8>, ptr %next.gep, align 1
  %wide.load191 = load <16 x i8>, ptr %i.dm, align 1
  %i.fe = zext <16 x i8> %wide.load188 to <16 x i16> ; 2 uses
  %i.ff = zext <16 x i8> %wide.load189 to <16 x i16> ; 2 uses
  %i.fg = zext <16 x i8> %wide.load190 to <16 x i16> ; 2 uses
  %i.fh = zext <16 x i8> %wide.load191 to <16 x i16> ; 2 uses
  %i.fi = mul nuw nsw <16 x i16> %i.fe, splat (i16 9)
  %i.fj = add nuw nsw <16 x i16> %i.fg, %i.ff
  %i.fk = mul nuw nsw <16 x i16> %i.fj, splat (i16 3)
  %i.fl = add nuw nsw <16 x i16> %i.fi, splat (i16 8)
  %i.fm = add nuw nsw <16 x i16> %i.fl, %i.fh
  %i.fn = add nuw nsw <16 x i16> %i.fm, %i.fk
  %i.fo = lshr <16 x i16> %i.fn, splat (i16 4)
  %i.fp = zext <16 x i8> %i.es to <16 x i32>
  %i.fq = mul nuw nsw <16 x i32> %i.fp, splat (i32 19077)
  %i.fr = lshr <16 x i32> %i.fq, splat (i32 8)    ; 3 uses
  %i.fs = zext nneg <16 x i16> %i.fo to <16 x i32> ; 2 uses
  %i.ft = mul nuw nsw <16 x i32> %i.fs, splat (i32 26149)
  %i.fu = lshr <16 x i32> %i.ft, splat (i32 8)
  %i.fv = add nsw <16 x i32> %i.fr, splat (i32 -14234)
  %i.fw = add nsw <16 x i32> %i.fv, %i.fu
  %i.fx = zext nneg <16 x i16> %i.fd to <16 x i32> ; 2 uses
  %i.fy = mul nuw nsw <16 x i32> %i.fx, splat (i32 6419)
  %i.fz = lshr <16 x i32> %i.fy, splat (i32 8)
  %i.ga = mul nuw nsw <16 x i32> %i.fs, splat (i32 13320)
  %i.gb = lshr <16 x i32> %i.ga, splat (i32 8)
  %i.gc = add nuw nsw <16 x i32> %i.fr, splat (i32 8708)
  %i.gd = add nuw nsw <16 x i32> %i.fz, %i.gb
  %i.ge = sub nsw <16 x i32> %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %next.gep168, i64 1
  %i.gg = getelementptr i8, ptr %i.ct, i64 3
  %i.gh = getelementptr i8, ptr %i.cu, i64 5
  %i.gi = getelementptr i8, ptr %i.cv, i64 7
  %i.gj = getelementptr i8, ptr %i.cw, i64 9
  %i.gk = getelementptr i8, ptr %i.cx, i64 11
  %i.gl = getelementptr i8, ptr %i.cy, i64 13
  %i.gm = getelementptr i8, ptr %i.cz, i64 15
  %i.gn = getelementptr i8, ptr %i.da, i64 17
  %i.go = getelementptr i8, ptr %i.db, i64 19
  %i.gp = getelementptr i8, ptr %i.dc, i64 21
  %i.gq = getelementptr i8, ptr %i.dd, i64 23
  %i.gr = getelementptr i8, ptr %i.de, i64 25
  %i.gs = getelementptr i8, ptr %i.df, i64 27
  %i.gt = getelementptr i8, ptr %i.dg, i64 29
  %i.gu = getelementptr i8, ptr %i.dh, i64 31
  %i.gv = load i8, ptr %i.gf, align 1, !noundef !7
  %i.gw = load i8, ptr %i.gg, align 1, !noundef !7
  %i.gx = load i8, ptr %i.gh, align 1, !noundef !7
  %i.gy = load i8, ptr %i.gi, align 1, !noundef !7
  %i.gz = load i8, ptr %i.gj, align 1, !noundef !7
  %i.ha = load i8, ptr %i.gk, align 1, !noundef !7
  %i.hb = load i8, ptr %i.gl, align 1, !noundef !7
  %i.hc = load i8, ptr %i.gm, align 1, !noundef !7
  %i.hd = load i8, ptr %i.gn, align 1, !noundef !7
  %i.he = load i8, ptr %i.go, align 1, !noundef !7
  %i.hf = load i8, ptr %i.gp, align 1, !noundef !7
  %i.hg = load i8, ptr %i.gq, align 1, !noundef !7
  %i.hh = load i8, ptr %i.gr, align 1, !noundef !7
  %i.hi = load i8, ptr %i.gs, align 1, !noundef !7
  %i.hj = load i8, ptr %i.gt, align 1, !noundef !7
  %i.hk = load i8, ptr %i.gu, align 1, !noundef !7
  %i.hl = insertelement <16 x i8> poison, i8 %i.gv, i64 0
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 1
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 2
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 3
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 4
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 5
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 6
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 7
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 8
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 9
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 10
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 11
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 12
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 13
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 14
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 15
  %i.ib = mul nuw nsw <16 x i16> %i.eu, splat (i16 9)
  %i.ic = add nuw nsw <16 x i16> %i.ew, %i.et
  %i.id = mul nuw nsw <16 x i16> %i.ic, splat (i16 3)
  %i.ie = add nuw nsw <16 x i16> %i.ib, splat (i16 8)
  %i.if = add nuw nsw <16 x i16> %i.ie, %i.ev
  %i.ig = add nuw nsw <16 x i16> %i.if, %i.id
  %i.ih = lshr <16 x i16> %i.ig, splat (i16 4)
  %i.ii = mul nuw nsw <16 x i16> %i.ff, splat (i16 9)
  %i.ij = add nuw nsw <16 x i16> %i.fh, %i.fe
  %i.ik = mul nuw nsw <16 x i16> %i.ij, splat (i16 3)
  %i.il = add nuw nsw <16 x i16> %i.ii, splat (i16 8)
  %i.im = add nuw nsw <16 x i16> %i.il, %i.fg
end_hunk_0
begin_hunk_1_@_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj3_EB4_:bb.a
  %i.ov = add nsw i32 %i.nf, %i.ou
  %i.ow = ashr i32 %i.ov, 6
  %..i.i3.i47 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ow, i32 0)
  %i.ox = tail call i32 @llvm.umin.i32(i32 %..i.i3.i47, i32 255)
  %i.oy = trunc nuw i32 %i.ox to i8
  store i8 %i.oy, ptr %i.ng, align 1, !alias.scope !356
  %i.oz = zext i8 %i.nj to i32
  %i.pa = mul nuw nsw i32 %i.oz, 19077
  %i.pb = lshr i32 %i.pa, 8                       ; 3 uses
  %i.pc = extractelement <4 x i16> %i.nz, i64 1
  %i.pd = zext nneg i16 %i.pc to i32              ; 2 uses
  %i.pe = mul nuw nsw i32 %i.pd, 26149
  %i.pf = lshr i32 %i.pe, 8
  %i.pg = add nsw i32 %i.pb, -14234
  %i.ph = add nsw i32 %i.pg, %i.pf
  %i.pi = ashr i32 %i.ph, 6
  %..i.i.i48 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.pi, i32 0)
  %i.pj = tail call i32 @llvm.umin.i32(i32 %..i.i.i48, i32 255)
  %i.pk = trunc nuw i32 %i.pj to i8
  store i8 %i.pk, ptr %i.nh, align 1, !alias.scope !357
  %i.pl = extractelement <4 x i16> %i.nz, i64 0
  %i.pm = zext nneg i16 %i.pl to i32              ; 2 uses
  %i.pn = mul nuw nsw i32 %i.pm, 6419
  %i.po = lshr i32 %i.pn, 8
  %i.pp = mul nuw nsw i32 %i.pd, 13320
  %i.pq = lshr i32 %i.pp, 8
  %i.pr = add nuw nsw i32 %i.pb, 8708
  %i.ps = add nuw nsw i32 %i.po, %i.pq
  %i.pt = sub nsw i32 %i.pr, %i.ps
  %i.pu = ashr i32 %i.pt, 6
  %..i.i2.i50 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.pu, i32 0)
  %i.pv = tail call i32 @llvm.umin.i32(i32 %..i.i2.i50, i32 255)
  %i.pw = trunc nuw i32 %i.pv to i8
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 4
  store i8 %i.pw, ptr %i.px, align 1, !alias.scope !357
  %i.py = mul nuw nsw i32 %i.pm, 33050
  %i.pz = lshr i32 %i.py, 8
  %i.qa = add nsw i32 %i.pz, -17685
  %i.qb = add nsw i32 %i.qa, %i.pb
  %i.qc = ashr i32 %i.qb, 6
  %..i.i3.i51 = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.qc, i32 0)
  %i.qd = tail call i32 @llvm.umin.i32(i32 %..i.i3.i51, i32 255)
  %i.qe = trunc nuw i32 %i.qd to i8
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.6101.0143, i64 5
  store i8 %i.qe, ptr %i.qf, align 1, !alias.scope !357
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.kc, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !353
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsksn9slvsHfS_10image_webp3yuv29fill_row_fancy_with_2_uv_rowsKj4_EB4_(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7, ptr noalias nofree noundef nonnull readonly captures(none) %8, i64 noundef range(i64 0, -9223372036854775808) %9, ptr noalias nofree noundef nonnull readonly captures(none) %10, i64 noundef range(i64 0, -9223372036854775808) %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %2, align 1, !noundef !7
  %.not25 = icmp eq i64 %5, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not26 = icmp eq i64 %7, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.c = load i8, ptr %4, align 1, !noundef !7
  %i.d = load i8, ptr %6, align 1, !noundef !7
  %i.e = zext i8 %i.c to i16
  %i.f = zext i8 %i.d to i16                      ; 2 uses
  %i.g = mul nuw nsw i16 %i.e, 12
  %i.h = mul nuw nsw i16 %i.f, 3
  %i.i = add nuw nsw i16 %i.g, 8
  %i.j = add nuw nsw i16 %i.i, %i.f
  %i.k = add nuw nsw i16 %i.j, %i.h
  %i.l = lshr i16 %i.k, 4
  %.not27 = icmp eq i64 %9, 0
  br i1 %.not27, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #9
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not28 = icmp eq i64 %11, 0
  br i1 %.not28, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #9
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.m = load i8, ptr %8, align 1, !noundef !7
  %i.n = load i8, ptr %10, align 1, !noundef !7
  %i.o = zext i8 %i.m to i16
  %i.p = zext i8 %i.n to i16                      ; 2 uses
  %i.q = mul nuw nsw i16 %i.o, 12
  %i.r = mul nuw nsw i16 %i.p, 3
  %i.s = add nuw nsw i16 %i.q, 8
  %i.t = add nuw nsw i16 %i.s, %i.p
  %i.u = add nuw nsw i16 %i.t, %i.r
  %i.v = lshr i16 %i.u, 4
  %i.w = zext i8 %i.b to i32
  %i.x = mul nuw nsw i32 %i.w, 19077
  %i.y = lshr i32 %i.x, 8                         ; 3 uses
  %i.z = zext nneg i16 %i.v to i32                ; 2 uses
  %i.aa = mul nuw nsw i32 %i.z, 26149
  %i.ab = lshr i32 %i.aa, 8
  %i.ac = add nsw i32 %i.y, -14234
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = ashr i32 %i.ad, 6
  %..i.i.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ae, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %..i.i.i, i32 255)
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %0, align 1, !alias.scope !368
  %i.ah = zext nneg i16 %i.l to i32               ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ah, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.z, 13320
  %i.al = lshr i32 %i.ak, 8
  %.neg125 = add nuw nsw i32 %i.y, 8708
  %i.am = add nuw nsw i32 %i.aj, %i.al
  %i.an = sub nsw i32 %.neg125, %i.am
  %i.ao = ashr i32 %i.an, 6
  %..i.i2.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.ao, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %..i.i2.i, i32 255)
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !alias.scope !368
  %i.as = mul nuw nsw i32 %i.ah, 33050
  %i.at = lshr i32 %i.as, 8
  %i.au = add nsw i32 %i.y, -17685
  %i.av = add nsw i32 %i.au, %i.at
  %i.aw = ashr i32 %i.av, 6
  %..i.i3.i = tail call noundef range(i32 0, 535) i32 @llvm.smax.i32(i32 range(i32 -277, 535) %i.aw, i32 0)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %..i.i3.i, i32 255)
  %i.ay = trunc nuw i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !alias.scope !368
  %i.ba = icmp eq i64 %1, 3
  br i1 %i.ba, label %bb.n, label %bb.o, !prof !5

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #9
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #9
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 19 uses
  %i.bc = add nsw i64 %1, -4                      ; 2 uses
  %i.bd = add nsw i64 %3, -1                      ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 19 uses
  %i.bf = and i64 %i.bc, 7                        ; 2 uses
  %i.bg = and i64 %i.bc, -8                       ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg ; 3 uses
  %i.bi = and i64 %i.bd, 1
  %i.bj = and i64 %i.bd, -2                       ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj
  %.not.i.i.i.i.i.i.i.i.i.i.i141 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i141, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.bl = lshr i64 %i.bd, 1
  %i.bm = add nsw i64 %1, -12
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nsw i64 %11, -1
  %i.bp = add nsw i64 %9, -1
  %i.bq = add nsw i64 %7, -1
  %i.br = add nsw i64 %5, -1
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bn)
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bo)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bp)
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bq)
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.br) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bw, 16
  br i1 %min.iters.check, label %.lr.ph.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %i.by = and i64 %i.bx, 15                       ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 16, i64 %i.by
  %n.vec = sub nsw i64 %i.bx, %i.ca               ; 13 uses
  %i.cb = sub i64 %11, %n.vec
  %i.cc = getelementptr i8, ptr %10, i64 %n.vec
  %i.cd = sub i64 %9, %n.vec
  %i.ce = getelementptr i8, ptr %8, i64 %n.vec
  %i.cf = sub i64 %7, %n.vec
  %i.cg = getelementptr i8, ptr %6, i64 %n.vec
  %i.ch = sub i64 %5, %n.vec
  %i.ci = getelementptr i8, ptr %4, i64 %n.vec
  %i.cj = shl i64 %n.vec, 1
  %i.ck = getelementptr i8, ptr %i.be, i64 %i.cj
  %i.cl = shl i64 %n.vec, 1
  %i.cm = sub i64 %i.bj, %i.cl
  %i.cn = shl i64 %n.vec, 3
  %i.co = getelementptr i8, ptr %i.bb, i64 %i.cn
  %i.cp = shl i64 %n.vec, 3
  %i.cq = sub i64 %i.bg, %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %next.gep = getelementptr i8, ptr %10, i64 %index ; 2 uses
  %next.gep166 = getelementptr i8, ptr %8, i64 %index ; 2 uses
  %next.gep167 = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep168 = getelementptr i8, ptr %4, i64 %index ; 2 uses
  %i.cr = shl i64 %index, 1                       ; 16 uses
  %next.gep169 = getelementptr i8, ptr %i.be, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cs, i64 2
  %i.ct = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.ct, i64 4
  %i.cu = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.cu, i64 6
  %i.cv = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.cv, i64 8
  %i.cw = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.cw, i64 10
  %i.cx = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.cx, i64 12
  %i.cy = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.cy, i64 14
  %i.cz = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.cz, i64 16
  %i.da = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.da, i64 18
  %i.db = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.db, i64 20
  %i.dc = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep180 = getelementptr i8, ptr %i.dc, i64 22
  %i.dd = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.dd, i64 24
  %i.de = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.de, i64 26
  %i.df = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.df, i64 28
  %i.dg = getelementptr i8, ptr %i.be, i64 %i.cr  ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.dg, i64 30
  %i.dh = shl i64 %index, 3                       ; 16 uses
  %next.gep185 = getelementptr i8, ptr %i.bb, i64 %i.dh ; 6 uses
  %i.di = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep186 = getelementptr i8, ptr %i.di, i64 8
  %i.dj = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep187 = getelementptr i8, ptr %i.dj, i64 16
  %i.dk = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep188 = getelementptr i8, ptr %i.dk, i64 24
  %i.dl = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep189 = getelementptr i8, ptr %i.dl, i64 32
  %i.dm = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep190 = getelementptr i8, ptr %i.dm, i64 40
  %i.dn = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep191 = getelementptr i8, ptr %i.dn, i64 48
  %i.do = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep192 = getelementptr i8, ptr %i.do, i64 56
  %i.dp = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep193 = getelementptr i8, ptr %i.dp, i64 64
  %i.dq = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep194 = getelementptr i8, ptr %i.dq, i64 72
  %i.dr = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep195 = getelementptr i8, ptr %i.dr, i64 80
  %i.ds = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep196 = getelementptr i8, ptr %i.ds, i64 88
  %i.dt = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep197 = getelementptr i8, ptr %i.dt, i64 96
  %i.du = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep198 = getelementptr i8, ptr %i.du, i64 104
  %i.dv = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep199 = getelementptr i8, ptr %i.dv, i64 112
  %i.dw = getelementptr i8, ptr %i.bb, i64 %i.dh  ; 6 uses
  %next.gep200 = getelementptr i8, ptr %i.dw, i64 120
  %i.dx = getelementptr inbounds nuw i8, ptr %next.gep168, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep167, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep166, i64 1
  %i.ea = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.eb = load i8, ptr %next.gep169, align 1, !noundef !7
  %i.ec = load i8, ptr %next.gep170, align 1, !noundef !7
  %i.ed = load i8, ptr %next.gep171, align 1, !noundef !7
  %i.ee = load i8, ptr %next.gep172, align 1, !noundef !7
  %i.ef = load i8, ptr %next.gep173, align 1, !noundef !7
  %i.eg = load i8, ptr %next.gep174, align 1, !noundef !7
  %i.eh = load i8, ptr %next.gep175, align 1, !noundef !7
  %i.ei = load i8, ptr %next.gep176, align 1, !noundef !7
  %i.ej = load i8, ptr %next.gep177, align 1, !noundef !7
  %i.ek = load i8, ptr %next.gep178, align 1, !noundef !7
  %i.el = load i8, ptr %next.gep179, align 1, !noundef !7
  %i.em = load i8, ptr %next.gep180, align 1, !noundef !7
  %i.en = load i8, ptr %next.gep181, align 1, !noundef !7
  %i.eo = load i8, ptr %next.gep182, align 1, !noundef !7
  %i.ep = load i8, ptr %next.gep183, align 1, !noundef !7
  %i.eq = load i8, ptr %next.gep184, align 1, !noundef !7
  %i.er = insertelement <16 x i8> poison, i8 %i.eb, i64 0
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 1
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 2
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 3
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 4
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 5
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 6
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 7
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 8
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 9
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 10
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 11
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 12
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 13
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 14
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep168, align 1
  %wide.load201 = load <16 x i8>, ptr %i.dx, align 1
  %wide.load202 = load <16 x i8>, ptr %next.gep167, align 1
  %wide.load203 = load <16 x i8>, ptr %i.dy, align 1
  %i.fh = zext <16 x i8> %wide.load to <16 x i16> ; 2 uses
  %i.fi = zext <16 x i8> %wide.load201 to <16 x i16> ; 2 uses
  %i.fj = zext <16 x i8> %wide.load202 to <16 x i16> ; 2 uses
  %i.fk = zext <16 x i8> %wide.load203 to <16 x i16> ; 2 uses
  %i.fl = mul nuw nsw <16 x i16> %i.fh, splat (i16 9)
  %i.fm = add nuw nsw <16 x i16> %i.fj, %i.fi
  %i.fn = mul nuw nsw <16 x i16> %i.fm, splat (i16 3)
  %i.fo = add nuw nsw <16 x i16> %i.fl, splat (i16 8)
  %i.fp = add nuw nsw <16 x i16> %i.fo, %i.fk
  %i.fq = add nuw nsw <16 x i16> %i.fp, %i.fn
  %i.fr = lshr <16 x i16> %i.fq, splat (i16 4)
  %wide.load204 = load <16 x i8>, ptr %next.gep166, align 1
  %wide.load205 = load <16 x i8>, ptr %i.dz, align 1
  %wide.load206 = load <16 x i8>, ptr %next.gep, align 1
  %wide.load207 = load <16 x i8>, ptr %i.ea, align 1
  %i.fs = zext <16 x i8> %wide.load204 to <16 x i16> ; 2 uses
  %i.ft = zext <16 x i8> %wide.load205 to <16 x i16> ; 2 uses
  %i.fu = zext <16 x i8> %wide.load206 to <16 x i16> ; 2 uses
  %i.fv = zext <16 x i8> %wide.load207 to <16 x i16> ; 2 uses
  %i.fw = mul nuw nsw <16 x i16> %i.fs, splat (i16 9)
  %i.fx = add nuw nsw <16 x i16> %i.fu, %i.ft
  %i.fy = mul nuw nsw <16 x i16> %i.fx, splat (i16 3)
  %i.fz = add nuw nsw <16 x i16> %i.fw, splat (i16 8)
  %i.ga = add nuw nsw <16 x i16> %i.fz, %i.fv
  %i.gb = add nuw nsw <16 x i16> %i.ga, %i.fy
  %i.gc = lshr <16 x i16> %i.gb, splat (i16 4)
  %i.gd = zext <16 x i8> %i.fg to <16 x i32>
  %i.ge = mul nuw nsw <16 x i32> %i.gd, splat (i32 19077)
  %i.gf = lshr <16 x i32> %i.ge, splat (i32 8)    ; 3 uses
  %i.gg = zext nneg <16 x i16> %i.gc to <16 x i32> ; 2 uses
  %i.gh = mul nuw nsw <16 x i32> %i.gg, splat (i32 26149)
  %i.gi = lshr <16 x i32> %i.gh, splat (i32 8)
  %i.gj = add nsw <16 x i32> %i.gf, splat (i32 -14234)
  %i.gk = add nsw <16 x i32> %i.gj, %i.gi
  %i.gl = ashr <16 x i32> %i.gk, splat (i32 6)
  %i.gm = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.gl, <16 x i32> zeroinitializer)
  %i.gn = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.gm, <16 x i32> splat (i32 255))
  %i.go = trunc nuw <16 x i32> %i.gn to <16 x i8> ; 16 uses
  %i.gp = extractelement <16 x i8> %i.go, i64 0
  store i8 %i.gp, ptr %next.gep185, align 1, !alias.scope !369
  %i.gq = extractelement <16 x i8> %i.go, i64 1
  store i8 %i.gq, ptr %next.gep186, align 1, !alias.scope !369
  %i.gr = extractelement <16 x i8> %i.go, i64 2
  store i8 %i.gr, ptr %next.gep187, align 1, !alias.scope !369
  %i.gs = extractelement <16 x i8> %i.go, i64 3
  store i8 %i.gs, ptr %next.gep188, align 1, !alias.scope !369
  %i.gt = extractelement <16 x i8> %i.go, i64 4
  store i8 %i.gt, ptr %next.gep189, align 1, !alias.scope !369
  %i.gu = extractelement <16 x i8> %i.go, i64 5
  store i8 %i.gu, ptr %next.gep190, align 1, !alias.scope !369
  %i.gv = extractelement <16 x i8> %i.go, i64 6
  store i8 %i.gv, ptr %next.gep191, align 1, !alias.scope !369
  %i.gw = extractelement <16 x i8> %i.go, i64 7
  store i8 %i.gw, ptr %next.gep192, align 1, !alias.scope !369
  %i.gx = extractelement <16 x i8> %i.go, i64 8
  store i8 %i.gx, ptr %next.gep193, align 1, !alias.scope !369
  %i.gy = extractelement <16 x i8> %i.go, i64 9
  store i8 %i.gy, ptr %next.gep194, align 1, !alias.scope !369
  %i.gz = extractelement <16 x i8> %i.go, i64 10
  store i8 %i.gz, ptr %next.gep195, align 1, !alias.scope !369
  %i.ha = extractelement <16 x i8> %i.go, i64 11
  store i8 %i.ha, ptr %next.gep196, align 1, !alias.scope !369
  %i.hb = extractelement <16 x i8> %i.go, i64 12
  store i8 %i.hb, ptr %next.gep197, align 1, !alias.scope !369
  %i.hc = extractelement <16 x i8> %i.go, i64 13
  store i8 %i.hc, ptr %next.gep198, align 1, !alias.scope !369
  %i.hd = extractelement <16 x i8> %i.go, i64 14
  store i8 %i.hd, ptr %next.gep199, align 1, !alias.scope !369
  %i.he = extractelement <16 x i8> %i.go, i64 15
  store i8 %i.he, ptr %next.gep200, align 1, !alias.scope !369
  %i.hf = zext nneg <16 x i16> %i.fr to <16 x i32> ; 2 uses
  %i.hg = mul nuw nsw <16 x i32> %i.hf, splat (i32 6419)
end_hunk_1
