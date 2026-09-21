Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render_gl?download=true
inline.NumInlined: 42
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@GL_CreateTexture:bb.a
  tail call void %i.ip(i32 noundef %i.d, i32 noundef 10240, i32 noundef 9728) #7, !inline_history !0
  br label %SetTextureScaleMode.exit249

bb.bn:                                            ; preds = %bb.bl, %bb.bj
  %i.iq = icmp eq i32 %i.ih, 318769153
  %i.ir = load ptr, ptr %i.fb, align 8            ; 2 uses
  br i1 %i.iq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  tail call void %i.ir(i32 noundef %i.d, i32 noundef 10241, i32 noundef 9728) #7, !inline_history !0
  %i.is = load ptr, ptr %i.fb, align 8
  tail call void %i.is(i32 noundef %i.d, i32 noundef 10240, i32 noundef 9728) #7, !inline_history !0
  br label %SetTextureScaleMode.exit249

bb.bp:                                            ; preds = %bb.bn
  tail call void %i.ir(i32 noundef %i.d, i32 noundef 10241, i32 noundef 9729) #7, !inline_history !0
  %i.it = load ptr, ptr %i.fb, align 8
  tail call void %i.it(i32 noundef %i.d, i32 noundef 10240, i32 noundef 9729) #7, !inline_history !0
  br label %SetTextureScaleMode.exit249

bb.bq:                                            ; preds = %bb.bj
  %i.iu = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.43, i32 noundef %i.ii) #7 ; 0 uses
  br label %SetTextureScaleMode.exit249

SetTextureScaleMode.exit249:                      ; preds = %bb.bk, %bb.bm, %bb.bo, %bb.bp, %bb.bq
  %i.iv = load i32, ptr %i.dy, align 4
  %i.iw = load i32, ptr %i.dz, align 8
  %i.ix = load ptr, ptr %i.fb, align 8
  %switch.selectcmp.i.i250 = icmp eq i32 %i.iv, 2
  %switch.select.i.i251 = select i1 %switch.selectcmp.i.i250, i32 10497, i32 33071
  tail call void %i.ix(i32 noundef %i.d, i32 noundef 10242, i32 noundef %switch.select.i.i251) #7, !inline_history !1
  %i.iy = load ptr, ptr %i.fb, align 8
  %switch.selectcmp.i5.i252 = icmp eq i32 %i.iw, 2
  %switch.select.i6.i253 = select i1 %switch.selectcmp.i5.i252, i32 10497, i32 33071
  tail call void %i.iy(i32 noundef %i.d, i32 noundef 10243, i32 noundef %switch.select.i6.i253) #7, !inline_history !1
  %i.iz = load i32, ptr %i.hw, align 8
  %i.ja = zext i32 %i.iz to i64
  %i.jb = tail call zeroext i1 @SDL_SetNumberProperty_REAL(i32 noundef %i.dh, ptr noundef nonnull @.str.59, i64 noundef %i.ja) #7 ; 0 uses
  %.pre275 = load i32, ptr %1, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bf, %SetTextureScaleMode.exit249
  %i.jc = phi i32 [ %i.hs, %bb.bf ], [ %.pre275, %SetTextureScaleMode.exit249 ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  switch i32 %i.jc, label %bb.bt [
    i32 318769153, label %bb.bu
    i32 376840196, label %bb.bs
    i32 372645892, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  br label %bb.bu

bb.bu:                                            ; preds = %bb.br, %bb.bs, %bb.bt
  %.sink285 = phi i32 [ 7, %bb.bs ], [ 5, %bb.bt ], [ 2, %bb.br ]
  store i32 %.sink285, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jh = load <2 x i32>, ptr %i.je, align 4
  %i.ji = sitofp <2 x i32> %i.jh to <2 x float>   ; 2 uses
  %i.jj = fdiv <2 x float> splat (float 1.000000e+00), %i.ji
  store <2 x float> %i.jj, ptr %i.jf, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store <2 x float> %i.ji, ptr %i.jk, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.r, i64 84
  %i.jm = load i8, ptr %i.jl, align 4, !range !8, !noundef !9
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jo = getelementptr inbounds nuw i8, ptr %i.r, i64 85
  %i.jp = load i8, ptr %i.jo, align 1, !range !8, !noundef !9
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.bx, label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  %i.jr = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 9, ptr %i.jr, align 8
  br label %bb.ce

bb.bx:                                            ; preds = %bb.bv
  %i.js = icmp eq i32 %i.jc, 842094158
  %i.jt = tail call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.60, i1 noundef zeroext false) #7 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 4 uses
  br i1 %i.js, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  br i1 %i.jt, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 11, ptr %i.ju, align 8
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  store i32 10, ptr %i.ju, align 8
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bx
  br i1 %i.jt, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 13, ptr %i.ju, align 8
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  store i32 12, ptr %i.ju, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ca, %bb.bz, %bb.cd, %bb.cc, %bb.bw
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jw = load i32, ptr %i.jv, align 8
  %i.jx = load i32, ptr %i.je, align 4
  %i.jy = load i32, ptr %i.jg, align 8
  %i.jz = tail call ptr @SDL_GetYCbCRtoRGBConversionMatrix(i32 noundef %i.jw, i32 noundef %i.jx, i32 noundef %i.jy, i32 noundef 8) #7 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.jz, ptr %i.ka, align 8
  %.not233 = icmp eq ptr %i.jz, null
  br i1 %.not233, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.kb = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.61) #7
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce, %bb.bv
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.kd = load ptr, ptr %i.kc, align 8
  tail call void %i.kd(i32 noundef %i.d) #7
  %i.ke = tail call fastcc zeroext i1 @GL_CheckAllErrors(ptr noundef nonnull @.str.48, ptr noundef %0, i32 noundef 785, ptr noundef nonnull @__func__.GL_CreateTexture)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.p, %bb.cf, %bb.cg, %bb.ab, %bb.f, %bb.v, %convert_format.exit, %bb.c
  %.2 = phi i1 [ false, %bb.f ], [ false, %bb.v ], [ false, %bb.p ], [ %i.n, %bb.c ], [ %i.q, %convert_format.exit ], [ %i.ke, %bb.cg ], [ %i.kb, %bb.cf ], [ false, %bb.ab ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @GL_UpdateTexture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %i.g = load i32, ptr %1, align 8                ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  %.mask = and i32 %i.g, -268435456
  %.not92 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not92
  br i1 %or.cond, label %switch.edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.g, label %bb.c [
    i32 844715353, label %switch.edge.thread
    i32 1498831189, label %switch.edge.thread
    i32 1431918169, label %switch.edge.thread
    i32 808530000, label %switch.edge.thread
  ]

bb.c:                                             ; preds = %bb.b
  br label %switch.edge.thread

switch.edge:                                      ; preds = %bb.a
  %i.h = and i32 %i.g, 255                        ; 2 uses
  %.not93.old = icmp eq i32 %i.h, 0
  br i1 %.not93.old, label %.preheader, label %switch.edge.thread

.preheader:                                       ; preds = %switch.edge, %.preheader
  %i.i = tail call i32 @SDL_ReportAssertion_REAL(ptr noundef nonnull @GL_UpdateTexture.sdl_assert_data, ptr noundef nonnull @__func__.GL_UpdateTexture, ptr noundef nonnull @.str.30, i32 noundef 796) #7
  switch i32 %i.i, label %switch.edge.thread [
    i32 0, label %.preheader
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader
  tail call void @llvm.debugtrap()
  br label %switch.edge.thread

switch.edge.thread:                               ; preds = %.preheader, %bb.d, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %switch.edge
  %i.j = phi i32 [ 2, %bb.b ], [ 0, %bb.d ], [ %i.h, %switch.edge ], [ 2, %bb.b ], [ 1, %bb.c ], [ 2, %bb.b ], [ 2, %bb.b ], [ 0, %.preheader ]
  %i.k = tail call fastcc zeroext i1 @GL_ActivateRenderer(ptr noundef nonnull %0) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr %i.f, align 8
  tail call void %i.n(i32 noundef %i.d, i32 noundef %i.o) #7
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(i32 noundef 3317, i32 noundef 1) #7
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = sdiv i32 %4, %i.j
  tail call void %i.r(i32 noundef 3314, i32 noundef %i.s) #7
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i32, ptr %2, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4
  tail call void %i.u(i32 noundef %i.d, i32 noundef 0, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, ptr noundef %3) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.ah = load i8, ptr %i.ag, align 4, !range !8, !noundef !9
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %switch.edge.thread
  %i.aj = load ptr, ptr %i.p, align 8
  %i.ak = add nsw i32 %4, 1
  %i.al = sdiv i32 %i.ak, 2                       ; 2 uses
  tail call void %i.aj(i32 noundef 3314, i32 noundef %i.al) #7
  %i.am = load i32, ptr %i.aa, align 4
  %i.an = mul nsw i32 %i.am, %4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %3, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %1, align 8
  %i.ar = icmp eq i32 %i.aq, 842094169
  %i.as = load ptr, ptr %i.m, align 8
  %. = select i1 %i.ar, i64 96, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 %.
  %i.au = load i32, ptr %i.at, align 8
  tail call void %i.as(i32 noundef %i.d, i32 noundef %i.au) #7
  %i.av = load ptr, ptr %i.t, align 8
  %5 = load <4 x i32>, ptr %2, align 4
  %6 = add nsw <4 x i32> %5, <i32 0, i32 0, i32 1, i32 1>
  %7 = sdiv <4 x i32> %6, splat (i32 2)           ; 4 uses
  %i.aw = load i32, ptr %i.ac, align 8
  %i.ax = load i32, ptr %i.ae, align 4
  %8 = extractelement <4 x i32> %7, i64 0
  %9 = extractelement <4 x i32> %7, i64 1
  %10 = extractelement <4 x i32> %7, i64 2
  %11 = extractelement <4 x i32> %7, i64 3
  tail call void %i.av(i32 noundef %i.d, i32 noundef 0, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %i.aw, i32 noundef %i.ax, ptr noundef %i.ap) #7
  %i.ay = load i32, ptr %i.aa, align 4
  %i.az = add nsw i32 %i.ay, 1
  %i.ba = sdiv i32 %i.az, 2
  %i.bb = mul nsw i32 %i.ba, %i.al
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ap, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %1, align 8
  %i.bf = icmp eq i32 %i.be, 842094169
  %.sink103 = select i1 %i.bf, i64 88, i64 96
  %i.bg = load ptr, ptr %i.m, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink103
  %i.bi = load i32, ptr %i.bh, align 8
  tail call void %i.bg(i32 noundef %i.d, i32 noundef %i.bi) #7
  %i.bj = load ptr, ptr %i.t, align 8
  %i.bk = load i32, ptr %2, align 4
  %i.bl = sdiv i32 %i.bk, 2
  %i.bm = load i32, ptr %i.w, align 4
  %i.bn = sdiv i32 %i.bm, 2
  %12 = load i32, ptr %i.y, align 4
  %13 = add nsw i32 %12, 1
  %14 = sdiv i32 %13, 2
  %i.bo = load i32, ptr %i.aa, align 4
  %15 = add nsw i32 %i.bo, 1
  %16 = sdiv i32 %15, 2
  %17 = load i32, ptr %i.ac, align 8
  %18 = load i32, ptr %i.ae, align 4
  tail call void %i.bj(i32 noundef %i.d, i32 noundef 0, i32 noundef %i.bl, i32 noundef %i.bn, i32 noundef %14, i32 noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %i.bd) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %switch.edge.thread
  %.089 = phi ptr [ %i.bd, %bb.e ], [ %3, %switch.edge.thread ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 85
  %i.bq = load i8, ptr %i.bp, align 1, !range !8, !noundef !9
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = load ptr, ptr %i.p, align 8
  %i.bt = add nsw i32 %4, 1
  %i.bu = sdiv i32 %i.bt, 2
  tail call void %i.bs(i32 noundef 3314, i32 noundef %i.bu) #7
  %i.bv = load i32, ptr %i.aa, align 4
  %i.bw = mul nsw i32 %i.bv, %4
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %.089, i64 %i.bx
  %i.bz = load ptr, ptr %i.m, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.cb = load i32, ptr %i.ca, align 8
  tail call void %i.bz(i32 noundef %i.d, i32 noundef %i.cb) #7
  %i.cc = load ptr, ptr %i.t, align 8
  %i.cd = load i32, ptr %2, align 4
  %i.ce = sdiv i32 %i.cd, 2
  %i.cf = load i32, ptr %i.w, align 4
  %i.cg = sdiv i32 %i.cf, 2
  %i.ch = load i32, ptr %i.y, align 4
  %i.ci = add nsw i32 %i.ch, 1
  %i.cj = sdiv i32 %i.ci, 2
  %i.ck = load i32, ptr %i.aa, align 4
  %i.cl = add nsw i32 %i.ck, 1
  %i.cm = sdiv i32 %i.cl, 2
  tail call void %i.cc(i32 noundef %i.d, i32 noundef 0, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.cj, i32 noundef %i.cm, i32 noundef 6410, i32 noundef 5121, ptr noundef %i.by) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cn = tail call fastcc zeroext i1 @GL_CheckAllErrors(ptr noundef nonnull @.str.44, ptr noundef nonnull %0, i32 noundef 846, ptr noundef nonnull @__func__.GL_UpdateTexture)
  ret i1 %i.cn
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @GL_UpdateTextureYUV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = tail call fastcc zeroext i1 @GL_ActivateRenderer(ptr noundef %0) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %i.f, align 8
  tail call void %i.j(i32 noundef %i.d, i32 noundef %i.k) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(i32 noundef 3317, i32 noundef 1) #7
  %i.n = load ptr, ptr %i.l, align 8
  tail call void %i.n(i32 noundef 3314, i32 noundef %4) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i32, ptr %2, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4
  tail call void %i.p(i32 noundef %i.d, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa, ptr noundef %3) #7
  %i.ab = load ptr, ptr %i.l, align 8
  tail call void %i.ab(i32 noundef 3314, i32 noundef %6) #7
  %i.ac = load ptr, ptr %i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ae = load i32, ptr %i.ad, align 8
  tail call void %i.ac(i32 noundef %i.d, i32 noundef %i.ae) #7
  %i.af = load ptr, ptr %i.o, align 8
  %i.ag = load <4 x i32>, ptr %2, align 4
  %i.ah = add nsw <4 x i32> %i.ag, <i32 0, i32 0, i32 1, i32 1>
  %i.ai = sdiv <4 x i32> %i.ah, splat (i32 2)     ; 4 uses
  %i.aj = load i32, ptr %i.x, align 8
  %i.ak = load i32, ptr %i.z, align 4
  %i.al = extractelement <4 x i32> %i.ai, i64 0
  %i.am = extractelement <4 x i32> %i.ai, i64 1
  %i.an = extractelement <4 x i32> %i.ai, i64 2
  %i.ao = extractelement <4 x i32> %i.ai, i64 3
  tail call void %i.af(i32 noundef %i.d, i32 noundef 0, i32 noundef %i.al, i32 noundef %i.am, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef %5) #7
  %i.ap = load ptr, ptr %i.l, align 8
  tail call void %i.ap(i32 noundef 3314, i32 noundef %8) #7
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.as = load i32, ptr %i.ar, align 8
  tail call void %i.aq(i32 noundef %i.d, i32 noundef %i.as) #7
  %i.at = load ptr, ptr %i.o, align 8
  %i.au = load <4 x i32>, ptr %2, align 4
  %i.av = add nsw <4 x i32> %i.au, <i32 0, i32 0, i32 1, i32 1>
  %i.aw = sdiv <4 x i32> %i.av, splat (i32 2)     ; 4 uses
  %i.ax = load i32, ptr %i.x, align 8
  %i.ay = load i32, ptr %i.z, align 4
  %i.az = extractelement <4 x i32> %i.aw, i64 0
  %i.ba = extractelement <4 x i32> %i.aw, i64 1
  %i.bb = extractelement <4 x i32> %i.aw, i64 2
  %i.bc = extractelement <4 x i32> %i.aw, i64 3
  tail call void %i.at(i32 noundef %i.d, i32 noundef 0, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef %7) #7
  %i.bd = tail call fastcc zeroext i1 @GL_CheckAllErrors(ptr noundef nonnull @.str.44, ptr noundef %0, i32 noundef 883, ptr noundef nonnull @__func__.GL_UpdateTextureYUV)
  ret i1 %i.bd
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @GL_UpdateTextureNV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = tail call fastcc zeroext i1 @GL_ActivateRenderer(ptr noundef %0) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %i.f, align 8
  tail call void %i.j(i32 noundef %i.d, i32 noundef %i.k) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(i32 noundef 3317, i32 noundef 1) #7
  %i.n = load ptr, ptr %i.l, align 8
  tail call void %i.n(i32 noundef 3314, i32 noundef %4) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 400 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i32, ptr %2, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.aa = load i32, ptr %i.z, align 4
  tail call void %i.p(i32 noundef %i.d, i32 noundef 0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa, ptr noundef %3) #7
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = sdiv i32 %6, 2
  tail call void %i.ab(i32 noundef 3314, i32 noundef %i.ac) #7
  %i.ad = load ptr, ptr %i.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.af = load i32, ptr %i.ae, align 8
  tail call void %i.ad(i32 noundef %i.d, i32 noundef %i.af) #7
  %i.ag = load ptr, ptr %i.o, align 8
  %i.ah = load i32, ptr %2, align 4
  %i.ai = sdiv i32 %i.ah, 2
  %i.aj = load i32, ptr %i.r, align 4
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = load i32, ptr %i.t, align 4
  %i.am = add nsw i32 %i.al, 1
  %i.an = sdiv i32 %i.am, 2
  %i.ao = load i32, ptr %i.v, align 4
  %i.ap = add nsw i32 %i.ao, 1
  %i.aq = sdiv i32 %i.ap, 2
  tail call void %i.ag(i32 noundef %i.d, i32 noundef 0, i32 noundef %i.ai, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef 6410, i32 noundef 5121, ptr noundef %5) #7
  %i.ar = tail call fastcc zeroext i1 @GL_CheckAllErrors(ptr noundef nonnull @.str.44, ptr noundef %0, i32 noundef 912, ptr noundef nonnull @__func__.GL_UpdateTextureNV)
  ret i1 %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @GL_LockTexture(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %2, align 4
  %i.k = load i32, ptr %1, align 8                ; 4 uses
  %.not = icmp eq i32 %i.k, 0
  %.mask = and i32 %i.k, -268435456
  %.not17 = icmp eq i32 %.mask, 268435456
  %or.cond = or i1 %.not, %.not17
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.k, label %bb.c [
    i32 844715353, label %switch.edge
    i32 1498831189, label %switch.edge
    i32 1431918169, label %switch.edge
    i32 808530000, label %switch.edge
  ]
end_hunk_0
