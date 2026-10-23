Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_color_pick:bb.a
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.md, ptr %i.me, align 8, !tbaa !100
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lu, i64 39
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = and i64 %i.mh, -8
  %i.mj = ptrtoint ptr %i.mf to i64
  %i.mk = sub i64 %i.mi, %i.mj
  store i32 2, ptr %i.lu, align 8, !tbaa !102
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ly, i64 88
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !77
  %i.mn = add i64 %i.mm, %i.mk                    ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !103
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.mn, ptr %i.mp, align 8, !tbaa !104
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i16 1, ptr %i.mq, align 8, !tbaa !177
  %i.mr = fptosi float %i.lx to i16
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lu, i64 18
  store i16 %i.mr, ptr %i.ms, align 2, !tbaa !1216
  %i.mt = trunc i32 %i.km to i16                  ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  store i16 %i.mt, ptr %i.mu, align 4, !tbaa !1217
  %i.mv = fptosi float %i.lv to i16
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lu, i64 22
  store i16 %i.mv, ptr %i.mw, align 2, !tbaa !1218
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i16 %i.mt, ptr %i.mx, align 8, !tbaa !110
  %i.my = getelementptr inbounds nuw i8, ptr %i.lu, i64 26
  store i32 -1, ptr %i.my, align 2, !tbaa !56
  br label %nk_stroke_line.exit83.i.i

nk_stroke_line.exit83.i.i:                        ; preds = %bb.aq, %nk_stroke_line.exit81.i.i
  %i.mz = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.na = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.mz, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i84.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i84.i.i, label %nk_stroke_line.exit85.i.i, label %bb.ar

bb.ar:                                            ; preds = %nk_stroke_line.exit83.i.i
  %i.nb = fadd float %i.kn, 3.000000e+00
  %i.nc = fadd float %i.kn, 7.000000e+00
  %i.nd = fadd float %i.nc, 1.000000e+00
  %i.ne = load ptr, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !69
  %i.nh = ptrtoint ptr %i.na to i64
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = sub i64 %i.nh, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.nj, ptr %i.nk, align 8, !tbaa !100
  %i.nl = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.na, i64 39
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = and i64 %i.nn, -8
  %i.np = ptrtoint ptr %i.nl to i64
  %i.nq = sub i64 %i.no, %i.np
  store i32 2, ptr %i.na, align 8, !tbaa !102
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ne, i64 88
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !77
  %i.nt = add i64 %i.ns, %i.nq                    ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store i64 %i.nt, ptr %i.nu, align 8, !tbaa !103
  %i.nv = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.nt, ptr %i.nv, align 8, !tbaa !104
  %i.nw = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store i16 1, ptr %i.nw, align 8, !tbaa !177
  %i.nx = trunc i32 %i.kj to i16                  ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.na, i64 18
  store i16 %i.nx, ptr %i.ny, align 2, !tbaa !1216
  %i.nz = fptosi float %i.nd to i16
  %i.oa = getelementptr inbounds nuw i8, ptr %i.na, i64 20
  store i16 %i.nz, ptr %i.oa, align 4, !tbaa !1217
  %i.ob = getelementptr inbounds nuw i8, ptr %i.na, i64 22
  store i16 %i.nx, ptr %i.ob, align 2, !tbaa !1218
  %i.oc = fptosi float %i.nb to i16
  %i.od = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  store i16 %i.oc, ptr %i.od, align 8, !tbaa !110
  %i.oe = getelementptr inbounds nuw i8, ptr %i.na, i64 26
  store i32 -1, ptr %i.oe, align 2, !tbaa !56
  br label %nk_stroke_line.exit85.i.i

nk_stroke_line.exit85.i.i:                        ; preds = %bb.ar, %nk_stroke_line.exit83.i.i
  %i.of = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.og = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.of, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i86.i.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i86.i.i, label %nk_do_color_picker.exit, label %bb.as

bb.as:                                            ; preds = %nk_stroke_line.exit85.i.i
  %i.oh = fadd float %i.kn, -2.000000e+00
  %i.oi = fadd float %i.kn, -7.000000e+00
  %i.oj = load ptr, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 64
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !69
  %i.om = ptrtoint ptr %i.og to i64
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = sub i64 %i.om, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !100
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 39
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = and i64 %i.os, -8
  %i.ou = ptrtoint ptr %i.oq to i64
  %i.ov = sub i64 %i.ot, %i.ou
  store i32 2, ptr %i.og, align 8, !tbaa !102
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oj, i64 88
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !77
  %i.oy = add i64 %i.ox, %i.ov                    ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !103
  %i.pa = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.oy, ptr %i.pa, align 8, !tbaa !104
  %i.pb = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store i16 1, ptr %i.pb, align 8, !tbaa !177
  %i.pc = trunc i32 %i.kj to i16                  ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.og, i64 18
  store i16 %i.pc, ptr %i.pd, align 2, !tbaa !1216
  %i.pe = fptosi float %i.oi to i16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.og, i64 20
  store i16 %i.pe, ptr %i.pf, align 4, !tbaa !1217
  %i.pg = getelementptr inbounds nuw i8, ptr %i.og, i64 22
  store i16 %i.pc, ptr %i.pg, align 2, !tbaa !1218
  %i.ph = fptosi float %i.oh to i16
  %i.pi = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  store i16 %i.ph, ptr %i.pi, align 8, !tbaa !110
  %i.pj = getelementptr inbounds nuw i8, ptr %i.og, i64 26
  store i32 -1, ptr %i.pj, align 2, !tbaa !56
  br label %nk_do_color_picker.exit

nk_do_color_picker.exit:                          ; preds = %bb.as, %nk_stroke_line.exit85.i.i, %bb.f, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.f ], [ %i.dg, %nk_stroke_line.exit85.i.i ], [ %i.dg, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @nk_color_picker(ptr nofree noundef captures(address) %0, <2 x float> %1, <2 x float> %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_colorf, align 8          ; 4 uses
  store <2 x float> %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <2 x float> %2, ptr %i.a, align 8
  %i.b = call zeroext i1 @nk_color_pick(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %3) ; 0 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !54
  %.sroa.2.0.copyload = load <2 x float>, ptr %i.a, align 8, !tbaa !54
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  %5 = alloca %struct.nk_text, align 8            ; 9 uses
  %6 = alloca %struct.nk_rect, align 4            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_combo_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 13 uses
  %.not99 = icmp eq ptr %i.b, null
  br i1 %.not99, label %nk_combo_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %nk_combo_begin.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.h = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %nk_combo_begin.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !488
  %i.m = and i32 %i.l, 4096
  %i.n = icmp ne i32 %i.m, 0
  %i.o = icmp ne i32 %i.h, 1
  %or.cond5 = or i1 %i.o, %i.n
  %i.p = select i1 %or.cond5, ptr null, ptr %0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 4 uses
  %i.r = load <2 x float>, ptr %4, align 8        ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load <2 x float>, ptr %i.s, align 8      ; 11 uses
  %i.u = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef %i.q, <2 x float> %i.r, <2 x float> %i.t, ptr noundef %i.p, i32 noundef 0) ; 3 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !460  ; 2 uses
  %i.w = and i32 %i.v, 32
  %.not100 = icmp eq i32 %i.w, 0                  ; 2 uses
  %i.x = extractelement <2 x float> %i.t, i64 0
  %i.y = extractelement <2 x float> %i.r, i64 1
  %i.z = and i32 %i.v, 16
  %.not101 = icmp eq i32 %i.z, 0                  ; 2 uses
  %.186 = select i1 %.not101, i64 8464, i64 8504
  %.187 = select i1 %.not101, i64 8588, i64 8592
  %.sink185 = select i1 %.not100, i64 %.186, i64 8544
  %.sink184 = select i1 %.not100, i64 %.187, i64 8596
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.sink185 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sink184
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !56 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8876 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !570 ; 9 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.ac, 8  ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.ac, 16 ; 2 uses
  %i.ag = fcmp oeq float %i.af, 1.000000e+00      ; 4 uses
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.ac to i8
  br label %nk_rgb_factor.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = and i32 %i.ac, 255
  %i.ai = uitofp nneg i32 %i.ah to float
  %i.aj = fmul float %i.af, %i.ai
  %i.ak = fptoui float %i.aj to i8
  %i.al = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.am = uitofp nneg i32 %i.al to float
  %i.an = fmul float %i.af, %i.am
  %i.ao = fptoui float %i.an to i8
  %i.ap = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.aq = uitofp nneg i32 %i.ap to float
  %i.ar = fmul float %i.af, %i.aq
  %i.as = fptoui float %i.ar to i8
  br label %nk_rgb_factor.exit

nk_rgb_factor.exit:                               ; preds = %bb.f, %bb.g
  %.sroa.3.0.i = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.f ], [ %i.ao, %bb.g ]
  %.sroa.011.0.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.f ], [ %i.ak, %bb.g ]
  %.sroa.512.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.f ], [ %i.as, %bb.g ]
  %.sroa.9.0.extract.shift.i = and i32 %i.ac, -16777216
  %.sroa.512.0.insert.ext.i = zext i8 %.sroa.512.0.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.3.0.i to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.011.0.insert.ext.i = zext i8 %.sroa.011.0.i to i32
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.011.0.insert.ext.i
  store i32 %.sroa.011.0.insert.insert.i, ptr %i.ad, align 4, !tbaa !56
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !413
  switch i32 %i.at, label %bb.m [
    i32 1, label %nk_rgb_factor.exit117
    i32 2, label %nk_rgb_factor.exit129
    i32 0, label %bb.h
  ]

nk_rgb_factor.exit117:                            ; preds = %nk_rgb_factor.exit
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.au, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ax = fmul float %i.af, 2.550000e+02
  %i.ay = fptoui float %i.ax to i8
  %i.az = zext i8 %i.ay to i32
  %.sroa.512.0.insert.ext.i109 = select i1 %i.ag, i32 255, i32 %i.az ; 3 uses
  %.sroa.512.0.insert.shift.i110 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i109, 16
  %.sroa.3.0.insert.shift.i113 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i109, 8
  %.sroa.512.0.insert.insert.i111 = or disjoint i32 %.sroa.512.0.insert.shift.i110, %.sroa.3.0.insert.shift.i113
  %.sroa.3.0.insert.insert.i114 = or disjoint i32 %.sroa.512.0.insert.insert.i111, %.sroa.512.0.insert.ext.i109
  %.sroa.011.0.insert.insert.i116 = or disjoint i32 %.sroa.3.0.insert.insert.i114, -16777216
  tail call void @nk_draw_image(ptr noundef nonnull %i.av, <2 x float> %i.r, <2 x float> %i.t, ptr noundef nonnull %i.aw, i32 %.sroa.011.0.insert.insert.i116)
  br label %bb.m

nk_rgb_factor.exit129:                            ; preds = %nk_rgb_factor.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bd = fmul float %i.af, 2.550000e+02
  %i.be = fptoui float %i.bd to i8
  %i.bf = zext i8 %i.be to i32
  %.sroa.512.0.insert.ext.i121 = select i1 %i.ag, i32 255, i32 %i.bf ; 3 uses
  %.sroa.512.0.insert.shift.i122 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i121, 16
  %.sroa.3.0.insert.shift.i125 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i121, 8
  %.sroa.512.0.insert.insert.i123 = or disjoint i32 %.sroa.512.0.insert.shift.i122, %.sroa.3.0.insert.shift.i125
  %.sroa.3.0.insert.insert.i126 = or disjoint i32 %.sroa.512.0.insert.insert.i123, %.sroa.512.0.insert.ext.i121
  %.sroa.011.0.insert.insert.i128 = or disjoint i32 %.sroa.3.0.insert.insert.i126, -16777216
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.bb, <2 x float> %i.r, <2 x float> %i.t, ptr noundef nonnull %i.bc, i32 %.sroa.011.0.insert.insert.i128)
  br label %bb.m

bb.h:                                             ; preds = %nk_rgb_factor.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !56 ; 6 uses
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !652
  %.sroa.5.0.extract.shift.i130 = lshr i32 %i.bi, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i131 = lshr i32 %i.bi, 16 ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.7.0.extract.trunc.i144 = trunc i32 %.sroa.7.0.extract.shift.i131 to i8
  %.sroa.5.0.extract.trunc.i145 = trunc i32 %.sroa.5.0.extract.shift.i130 to i8
  %.sroa.0.0.extract.trunc.i146 = trunc i32 %i.bi to i8
  br label %nk_rgb_factor.exit147

bb.j:                                             ; preds = %bb.h
  %i.bm = and i32 %i.bi, 255
  %i.bn = uitofp nneg i32 %i.bm to float
  %i.bo = fmul float %i.af, %i.bn
  %i.bp = fptoui float %i.bo to i8
  %i.bq = and i32 %.sroa.5.0.extract.shift.i130, 255
  %i.br = uitofp nneg i32 %i.bq to float
  %i.bs = fmul float %i.af, %i.br
  %i.bt = fptoui float %i.bs to i8
  %i.bu = and i32 %.sroa.7.0.extract.shift.i131, 255
  %i.bv = uitofp nneg i32 %i.bu to float
  %i.bw = fmul float %i.af, %i.bv
  %i.bx = fptoui float %i.bw to i8
  br label %nk_rgb_factor.exit147

nk_rgb_factor.exit147:                            ; preds = %bb.i, %bb.j
  %.sroa.3.0.i132 = phi i8 [ %.sroa.5.0.extract.trunc.i145, %bb.i ], [ %i.bt, %bb.j ]
  %.sroa.011.0.i133 = phi i8 [ %.sroa.0.0.extract.trunc.i146, %bb.i ], [ %i.bp, %bb.j ]
  %.sroa.512.0.i134 = phi i8 [ %.sroa.7.0.extract.trunc.i144, %bb.i ], [ %i.bx, %bb.j ]
  %.sroa.9.0.extract.shift.i135 = and i32 %i.bi, -16777216
  %.sroa.512.0.insert.ext.i136 = zext i8 %.sroa.512.0.i134 to i32
  %.sroa.512.0.insert.shift.i137 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i136, 16
  %.sroa.512.0.insert.insert.i138 = or disjoint i32 %.sroa.512.0.insert.shift.i137, %.sroa.9.0.extract.shift.i135
  %.sroa.3.0.insert.ext.i139 = zext i8 %.sroa.3.0.i132 to i32
  %.sroa.3.0.insert.shift.i140 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i139, 8
  %.sroa.3.0.insert.insert.i141 = or disjoint i32 %.sroa.512.0.insert.insert.i138, %.sroa.3.0.insert.shift.i140
  %.sroa.011.0.insert.ext.i142 = zext i8 %.sroa.011.0.i133 to i32
  %.sroa.011.0.insert.insert.i143 = or disjoint i32 %.sroa.3.0.insert.insert.i141, %.sroa.011.0.insert.ext.i142
  tail call void @nk_fill_rect(ptr noundef nonnull %i.bj, <2 x float> %i.r, <2 x float> %i.t, float noundef %i.bl, i32 %.sroa.011.0.insert.insert.i143)
  %i.by = load float, ptr %i.bk, align 8, !tbaa !652
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8844
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !653
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8584
  %i.cc = load float, ptr %i.ae, align 4, !tbaa !570 ; 4 uses
  %i.cd = load i32, ptr %i.cb, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i148 = lshr i32 %i.cd, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i149 = lshr i32 %i.cd, 16 ; 2 uses
  %i.ce = fcmp oeq float %i.cc, 1.000000e+00
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %nk_rgb_factor.exit147
  %.sroa.7.0.extract.trunc.i162 = trunc i32 %.sroa.7.0.extract.shift.i149 to i8
  %.sroa.5.0.extract.trunc.i163 = trunc i32 %.sroa.5.0.extract.shift.i148 to i8
  %.sroa.0.0.extract.trunc.i164 = trunc i32 %i.cd to i8
  br label %nk_rgb_factor.exit165

bb.l:                                             ; preds = %nk_rgb_factor.exit147
  %i.cf = and i32 %i.cd, 255
  %i.cg = uitofp nneg i32 %i.cf to float
  %i.ch = fmul float %i.cc, %i.cg
  %i.ci = fptoui float %i.ch to i8
  %i.cj = and i32 %.sroa.5.0.extract.shift.i148, 255
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fmul float %i.cc, %i.ck
  %i.cm = fptoui float %i.cl to i8
  %i.cn = and i32 %.sroa.7.0.extract.shift.i149, 255
  %i.co = uitofp nneg i32 %i.cn to float
  %i.cp = fmul float %i.cc, %i.co
  %i.cq = fptoui float %i.cp to i8
  br label %nk_rgb_factor.exit165

nk_rgb_factor.exit165:                            ; preds = %bb.k, %bb.l
  %.sroa.3.0.i150 = phi i8 [ %.sroa.5.0.extract.trunc.i163, %bb.k ], [ %i.cm, %bb.l ]
  %.sroa.011.0.i151 = phi i8 [ %.sroa.0.0.extract.trunc.i164, %bb.k ], [ %i.ci, %bb.l ]
  %.sroa.512.0.i152 = phi i8 [ %.sroa.7.0.extract.trunc.i162, %bb.k ], [ %i.cq, %bb.l ]
  %.sroa.9.0.extract.shift.i153 = and i32 %i.cd, -16777216
  %.sroa.512.0.insert.ext.i154 = zext i8 %.sroa.512.0.i152 to i32
  %.sroa.512.0.insert.shift.i155 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i154, 16
  %.sroa.512.0.insert.insert.i156 = or disjoint i32 %.sroa.512.0.insert.shift.i155, %.sroa.9.0.extract.shift.i153
  %.sroa.3.0.insert.ext.i157 = zext i8 %.sroa.3.0.i150 to i32
  %.sroa.3.0.insert.shift.i158 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i157, 8
  %.sroa.3.0.insert.insert.i159 = or disjoint i32 %.sroa.512.0.insert.insert.i156, %.sroa.3.0.insert.shift.i158
  %.sroa.011.0.insert.ext.i160 = zext i8 %.sroa.011.0.i151 to i32
  %.sroa.011.0.insert.insert.i161 = or disjoint i32 %.sroa.3.0.insert.insert.i159, %.sroa.011.0.insert.ext.i160
  tail call void @nk_stroke_rect(ptr noundef nonnull %i.bj, <2 x float> %i.r, <2 x float> %i.t, float noundef %i.by, float noundef %i.ca, i32 %.sroa.011.0.insert.insert.i161)
  br label %bb.m

bb.m:                                             ; preds = %nk_rgb_factor.exit165, %nk_rgb_factor.exit129, %nk_rgb_factor.exit117, %nk_rgb_factor.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.cr = load i32, ptr %i.q, align 8, !tbaa !460
  %i.cs = and i32 %i.cr, 16
  %.not102 = icmp eq i32 %i.cs, 0
  %. = select i1 %i.u, i64 8840, i64 8832
  %.sink = select i1 %.not102, i64 %., i64 8836
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.092 = load i32, ptr %i.ct, align 4, !tbaa !55 ; 2 uses
  %.not104 = icmp eq i32 %.092, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8860
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %foldExtExtBinop = fadd <2 x float> %i.r, %i.t
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop189 = fsub <2 x float> %foldExtExtBinop, %shift
  %7 = extractelement <2 x float> %foldExtExtBinop189, i64 0
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %8 = load <2 x float>, ptr %i.cz, align 8, !tbaa !54 ; 2 uses
  %i.da = load float, ptr %i.cv, align 8, !tbaa !654 ; 2 uses
  %i.db = load float, ptr %i.cu, align 4, !tbaa !1219
  %i.dc = fsub float %7, %i.db                    ; 3 uses
  store float %i.dc, ptr %6, align 4, !tbaa !112
  %i.dd = fadd float %i.da, %i.y                  ; 2 uses
  store float %i.dd, ptr %i.cx, align 4, !tbaa !114
  %i.de = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.dd, i64 1
  %i.dg = fadd <2 x float> %i.df, %8
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !54
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8852
  %i.di = load <2 x float>, ptr %i.dh, align 4, !tbaa !54 ; 4 uses
  %i.dj = fadd <2 x float> %i.r, %i.di            ; 3 uses
  %9 = insertelement <2 x float> %i.di, float %i.da, i64 0
  %10 = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> splat (float -2.000000e+00), <2 x float> %10) ; 3 uses
  %i.dk = extractelement <2 x float> %11, i64 0   ; 2 uses
  store float %i.dk, ptr %i.cw, align 4, !tbaa !113
  store float %i.dk, ptr %i.cy, align 4, !tbaa !115
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> splat (float -2.000000e+00), <2 x float> %12)
  %13 = insertelement <2 x float> %11, float undef, i64 0 ; 2 uses
  br i1 %.not104, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dm = extractelement <2 x float> %i.di, i64 0
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float -2.000000e+00, float %i.x)
  %.sroa.6.8.vec.insert14 = insertelement <2 x float> %13, float %i.dn, i64 0
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.dp = load ptr, ptr %i.g, align 8, !tbaa !426
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.do, <2 x float> %i.dj, <2 x float> %.sroa.6.8.vec.insert14, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %5, i32 noundef 17, ptr noundef %i.dp)
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8868
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !655
  %i.dt = extractelement <2 x float> %i.di, i64 0
  %i.du = fadd float %i.dt, %i.ds
  %i.dv = fsub float %i.dc, %i.du
  %i.dw = extractelement <2 x float> %i.dj, i64 0
  %i.dx = fsub float %i.dv, %i.dw
  %.sroa.6.8.vec.insert = insertelement <2 x float> %13, float %i.dx, i64 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !426
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.dy, <2 x float> %i.dj, <2 x float> %.sroa.6.8.vec.insert, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %5, i32 noundef 17, ptr noundef %i.dz)
  %i.ea = load i32, ptr %i.q, align 8, !tbaa !460 ; 3 uses
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !414
  %i.ec = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.dy, ptr noundef nonnull readonly %6, i32 noundef %i.ea, ptr noundef nonnull readonly %i.dq) ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !413
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %.sroa.02.0.in.i = select i1 %i.ee, ptr %i.ef, ptr %i.eg
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8, !tbaa !56
  %i.eh = and i32 %i.ea, 16
  %.not.i = icmp eq i32 %i.eh, 0
  %i.ei = and i32 %i.ea, 32
  %.not22.i = icmp eq i32 %i.ei, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not.i, i64 %..i, i64 136
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.ej, align 4, !tbaa !56 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8764
  %i.el = load float, ptr %i.ek, align 4, !tbaa !536 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.em = fcmp oeq float %i.el, 1.000000e+00
  br i1 %i.em, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.p:                                             ; preds = %bb.n
  %i.en = and i32 %.sroa.04.0.i, 255
  %i.eo = uitofp nneg i32 %i.en to float
  %i.ep = fmul float %i.el, %i.eo
  %i.eq = fptoui float %i.ep to i8
  %i.er = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.es = uitofp nneg i32 %i.er to float
  %i.et = fmul float %i.el, %i.es
  %i.eu = fptoui float %i.et to i8
  %i.ev = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.ew = uitofp nneg i32 %i.ev to float
  %i.ex = fmul float %i.el, %i.ew
  %i.ey = fptoui float %i.ex to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.o, %bb.p
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.o ], [ %i.eu, %bb.p ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.o ], [ %i.eq, %bb.p ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.o ], [ %i.ey, %bb.p ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %i.dy, i32 noundef %.092, <2 x float> %i.dg, <2 x float> %i.dl, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef %i.eb)
  br label %bb.q

bb.q:                                             ; preds = %.thread, %nk_draw_button_symbol.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !415 ; 2 uses
  %.not.i166 = icmp eq ptr %i.ez, null
  br i1 %.not.i166, label %nk_combo_begin.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 168
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !416
  %.not44.i = icmp eq ptr %i.fb, null
  br i1 %.not44.i, label %nk_combo_begin.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !464
  %foldExtExtBinop189.a = fadd <2 x float> %i.r, %i.t
  %i.fe = extractelement <2 x float> %foldExtExtBinop189.a, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !656
  %i.fh = fsub float %i.fe, %i.fg
  %.sroa.013.4.vec.insert.i = insertelement <2 x float> %i.r, float %i.fh, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !524 ; 3 uses
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !524
  %i.fl = icmp ne ptr %i.fd, null                 ; 4 uses
  br i1 %i.fl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !529
  %i.fo = icmp eq i32 %i.fn, %i.fj
  br i1 %i.fo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !528
  %i.fr = icmp eq i32 %i.fq, 32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.fs = phi i1 [ false, %bb.t ], [ false, %bb.s ], [ %i.fr, %bb.u ]
  %i.ft = xor i1 %i.fl, true
  %or.cond45.i = select i1 %i.ft, i1 true, i1 %i.fs
  %or.cond9.i = or i1 %i.u, %i.fl
  %or.cond46.i = and i1 %or.cond9.i, %or.cond45.i
  br i1 %or.cond46.i, label %bb.w, label %nk_combo_begin.exit

bb.w:                                             ; preds = %bb.v
  %or.cond.i = and i1 %i.u, %i.fl                 ; 2 uses
  %.sroa.3.0.i167 = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.t
  %.sroa.0.0.i = select i1 %or.cond.i, <2 x float> zeroinitializer, <2 x float> %i.r
  %i.fu = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 0, <2 x float> %.sroa.013.4.vec.insert.i, <2 x float> %3, <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.3.0.i167, i32 noundef 32)
  br i1 %i.fu, label %bb.x, label %nk_combo_begin.exit

bb.x:                                             ; preds = %bb.w
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 32, ptr %i.fv, align 8, !tbaa !528
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.fj, ptr %i.fw, align 8, !tbaa !529
  br label %nk_combo_begin.exit

nk_combo_begin.exit:                              ; preds = %bb.x, %bb.w, %bb.v, %bb.r, %bb.q, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.x ], [ false, %bb.v ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext i1 @nk_button_behavior(ptr nofree noundef nonnull captures(none) %0, <2 x float> %1, <2 x float> %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #29 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !55
  %i.b = and i32 %i.a, 2
  %. = or disjoint i32 %i.b, 4                    ; 3 uses
  store i32 %., ptr %0, align 4, !tbaa !55
  %.not26 = icmp eq ptr %3, null
  br i1 %.not26, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 356
  %i.d = load float, ptr %i.c, align 4, !tbaa !391 ; 2 uses
  %i.e = fcmp ole float %.sroa.0.0.vec.extract.i, %i.d
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.g = fcmp olt float %i.d, %i.f
  %or.cond.i = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.c, label %nk_input_is_mouse_pressed.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.i = load float, ptr %i.h, align 4, !tbaa !392 ; 2 uses
  %i.j = fcmp ole float %.sroa.0.4.vec.extract.i, %i.i
  %foldExtExtBinop73 = fadd <2 x float> %1, %2
  %i.k = extractelement <2 x float> %foldExtExtBinop73, i64 1 ; 2 uses
  %i.l = fcmp olt float %i.i, %i.k
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %nk_input_is_mouse_down.exit, label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_down.exit:                      ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 260
  %i.n = load i8, ptr %i.m, align 4, !tbaa !388, !range !88, !noundef !89
  %i.o = trunc nuw i8 %i.n to i1                  ; 3 uses
  %spec.store.select = select i1 %i.o, i32 34, i32 18 ; 5 uses
  store i32 %spec.store.select, ptr %0, align 4, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 268
  %i.q = load float, ptr %i.p, align 4, !tbaa !389 ; 2 uses
  %i.r = fcmp ole float %.sroa.0.0.vec.extract.i, %i.q
  %i.s = fcmp olt float %i.q, %i.f
  %or.cond.i34 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond.i34, label %nk_input_has_mouse_click_in_button_rect.exit, label %nk_input_is_mouse_pressed.exit

nk_input_has_mouse_click_in_button_rect.exit:     ; preds = %nk_input_is_mouse_down.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.u = load float, ptr %i.t, align 4, !tbaa !390 ; 2 uses
  %i.v = fcmp ole float %.sroa.0.4.vec.extract.i, %i.u
  %i.w = fcmp olt float %i.u, %i.k
  %or.cond16.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond16.i, label %bb.d, label %nk_input_is_mouse_pressed.exit

bb.d:                                             ; preds = %nk_input_has_mouse_click_in_button_rect.exit
  %.not27 = icmp eq i32 %4, 0
  br i1 %.not27, label %bb.e, label %nk_input_is_mouse_pressed.exit

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.y = load i32, ptr %i.x, align 4, !tbaa !383
  %.not6.i = icmp eq i32 %i.y, 0
  br i1 %.not6.i, label %bb.g, label %nk_input_is_mouse_pressed.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_pressed.exit:                   ; preds = %bb.d, %nk_input_is_mouse_down.exit, %bb.b, %bb.c, %bb.g, %bb.f, %nk_input_has_mouse_click_in_button_rect.exit
  %i.z = phi i32 [ %spec.store.select, %nk_input_is_mouse_down.exit ], [ %spec.store.select, %nk_input_has_mouse_click_in_button_rect.exit ], [ %., %bb.c ], [ %., %bb.b ], [ %spec.store.select, %bb.g ], [ 34, %bb.f ], [ %spec.store.select, %bb.d ] ; 2 uses
  %.0 = phi i1 [ false, %nk_input_is_mouse_down.exit ], [ false, %nk_input_has_mouse_click_in_button_rect.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.g ], [ true, %bb.f ], [ %i.o, %bb.d ] ; 3 uses
  %i.aa = and i32 %i.z, 16
  %.not28 = icmp eq i32 %i.aa, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 364
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !393 ; 4 uses
  br i1 %.not28, label %nk_input_is_mouse_pressed.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %nk_input_is_mouse_pressed.exit
  %i.ab = fcmp ole float %.sroa.0.0.vec.extract.i, %.pre
  %i.ac = fcmp olt float %.pre, %i.f
  %or.cond.i46 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond.i46, label %bb.i, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split

bb.i:                                             ; preds = %bb.h
  %.sroa.0.4.vec.extract.i48 = extractelement <2 x float> %1, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !394 ; 2 uses
  %i.af = fcmp ole float %.sroa.0.4.vec.extract.i48, %i.ae
  %foldExtExtBinop75 = fadd <2 x float> %1, %2
  %i.ag = extractelement <2 x float> %foldExtExtBinop75, i64 1
  %i.ah = fcmp olt float %i.ae, %i.ag
  %or.cond64 = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond64, label %nk_input_is_mouse_pressed.exit._crit_edge, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split

nk_input_is_mouse_pressed.exit._crit_edge:        ; preds = %nk_input_is_mouse_pressed.exit, %bb.i
  %i.ai = fcmp ole float %.sroa.0.0.vec.extract.i, %.pre
  %i.aj = fcmp olt float %.pre, %i.f
  %or.cond.i53 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i53, label %bb.j, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread

bb.j:                                             ; preds = %nk_input_is_mouse_pressed.exit._crit_edge
  %.sroa.0.4.vec.extract.i55 = extractelement <2 x float> %1, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.al = load float, ptr %i.ak, align 4, !tbaa !394 ; 2 uses
  %i.am = fcmp ole float %.sroa.0.4.vec.extract.i55, %i.al
  %foldExtExtBinop77 = fadd <2 x float> %1, %2
  %i.an = extractelement <2 x float> %foldExtExtBinop77, i64 1
  %i.ao = fcmp olt float %i.al, %i.an
  %or.cond66 = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond66, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split, label %nk_input_is_mouse_prev_hovering_rect.exit57.thread

nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split: ; preds = %bb.j, %bb.i, %bb.h
  %.sink71 = phi i32 [ 8, %bb.i ], [ 8, %bb.h ], [ 64, %bb.j ]
  %i.ap = or i32 %i.z, %.sink71
  store i32 %i.ap, ptr %0, align 4, !tbaa !55
  br label %nk_input_is_mouse_prev_hovering_rect.exit57.thread

nk_input_is_mouse_prev_hovering_rect.exit57.thread: ; preds = %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split, %nk_input_is_mouse_pressed.exit._crit_edge, %bb.j, %bb.a
  %.024 = phi i1 [ false, %bb.a ], [ %.0, %nk_input_is_mouse_pressed.exit._crit_edge ], [ %.0, %bb.j ], [ %.0, %nk_input_is_mouse_prev_hovering_rect.exit57.thread.sink.split ]
  ret i1 %.024
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_label(ptr noundef %0, ptr noundef %1, <2 x float> %2) local_unnamed_addr #20 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

end_hunk_0
