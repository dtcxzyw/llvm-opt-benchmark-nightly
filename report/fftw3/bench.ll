Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/bench?download=true
inline.NumInlined: 38
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mkplan:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !66
  %i.ec = srem i32 %i.dz, %i.eb
  %.not13.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not13.i.i.i, label %bb.x, label %expressible_as_api_many.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !61
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !61
  %i.eh = srem i32 %i.ee, %i.eg
  %.not14.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not14.i.i.i, label %bb.v, label %expressible_as_api_many.exit.thread.i.i, !llvm.loop !12

bb.y:                                             ; preds = %bb.q
  %i.ei = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  switch i32 %i.ei, label %bb.ai [
    i32 1, label %bb.z
    i32 2, label %bb.ac
    i32 3, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  %i.ej = load i32, ptr @verbose, align 4, !tbaa !59
  %i.ek = icmp sgt i32 %i.ej, 2
  br i1 %i.ek, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %puts71.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !58
  %i.en = load i32, ptr %i.em, align 4, !tbaa !67
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !53
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !55
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.et = load i32, ptr %i.es, align 8, !tbaa !51
  %i.eu = tail call ptr @fftw_plan_dft_1d(i32 noundef %i.en, ptr noundef %i.ep, ptr noundef %i.er, i32 noundef %i.et, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.ac:                                            ; preds = %bb.y
  %i.ev = load i32, ptr @verbose, align 4, !tbaa !59
  %i.ew = icmp sgt i32 %i.ev, 2
  br i1 %i.ew, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %puts70.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !58 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !67
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !55
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !51
  %i.fi = tail call ptr @fftw_plan_dft_2d(i32 noundef %i.ez, i32 noundef %i.fb, ptr noundef %i.fd, ptr noundef %i.ff, i32 noundef %i.fh, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.af:                                            ; preds = %bb.y
  %i.fj = load i32, ptr @verbose, align 4, !tbaa !59
  %i.fk = icmp sgt i32 %i.fj, 2
  br i1 %i.fk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %puts69.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !58 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !67
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !67
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !67
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !53
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !55
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !51
  %i.fy = tail call ptr @fftw_plan_dft_3d(i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef %i.fr, ptr noundef %i.ft, ptr noundef %i.fv, i32 noundef %i.fx, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.ai:                                            ; preds = %bb.y
  %i.fz = sext i32 %i.ei to i64
  %i.ga = shl nsw i64 %i.fz, 3
  %i.gb = tail call ptr @bench_malloc(i64 noundef %i.ga) #6 ; 3 uses
  %i.gc = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i.i13.i, label %mkn.exit.i.i

.lr.ph.i.i13.i:                                   ; preds = %bb.ai
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !58
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i.i13.i
  %indvars.iv.i73.i.i = phi i64 [ 0, %.lr.ph.i.i13.i ], [ %indvars.iv.next.i.i14.i, %bb.aj ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %i.gf, i64 %indvars.iv.i73.i.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !67
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i73.i.i
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !59
  %indvars.iv.next.i.i14.i = add nuw nsw i64 %indvars.iv.i73.i.i, 1 ; 2 uses
  %i.gj = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next.i.i14.i, %i.gk
  br i1 %i.gl, label %bb.aj, label %mkn.exit.i.i, !llvm.loop !13

mkn.exit.i.i:                                     ; preds = %bb.aj, %bb.ai
  %i.gm = phi i32 [ %i.gc, %bb.ai ], [ %i.gj, %bb.aj ]
  %i.gn = load i32, ptr @verbose, align 4, !tbaa !59
  %i.go = icmp sgt i32 %i.gn, 2
  br i1 %i.go, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %mkn.exit.i.i
  %puts72.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %.pre.i12.i = load i32, ptr %i.e, align 8, !tbaa !57
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %mkn.exit.i.i
  %i.gp = phi i32 [ %.pre.i12.i, %bb.ak ], [ %i.gm, %mkn.exit.i.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !53
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !55
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !51
  %i.gw = tail call ptr @fftw_plan_dft(i32 noundef %i.gp, ptr noundef %i.gb, ptr noundef %i.gr, ptr noundef %i.gt, i32 noundef %i.gv, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.gb) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.i.i:                 ; preds = %bb.v, %bb.u
  %i.gx = load i32, ptr %i.g, align 8, !tbaa !57
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.an, label %bb.am

bb.am:                                            ; preds = %expressible_as_api_many.exit.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 372, ptr noundef nonnull @.str.6) #6
  %.pre99.i.i = load i32, ptr %i.e, align 8, !tbaa !57
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %expressible_as_api_many.exit.i.i
  %i.gz = phi i32 [ %.pre99.i.i, %bb.am ], [ %i.do, %expressible_as_api_many.exit.i.i ]
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 3
  %i.hc = tail call ptr @bench_malloc(i64 noundef %i.hb) #6 ; 3 uses
  %i.hd = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i74.i.i, label %.mkn.exit77_crit_edge.i.i

.mkn.exit77_crit_edge.i.i:                        ; preds = %bb.an
  %.pre102.i.i = sext i32 %i.hd to i64
  br label %mkn.exit77.i.i

.lr.ph.i74.i.i:                                   ; preds = %bb.an
  %i.hf = load ptr, ptr %i.dq, align 8, !tbaa !58
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i74.i.i
  %indvars.iv.i75.i.i = phi i64 [ 0, %.lr.ph.i74.i.i ], [ %indvars.iv.next.i76.i.i, %bb.ao ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %i.hf, i64 %indvars.iv.i75.i.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !67
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i75.i.i
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !59
  %indvars.iv.next.i76.i.i = add nuw nsw i64 %indvars.iv.i75.i.i, 1 ; 2 uses
  %i.hj = load i32, ptr %i.e, align 8, !tbaa !57
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = icmp slt i64 %indvars.iv.next.i76.i.i, %i.hk
  br i1 %i.hl, label %bb.ao, label %mkn.exit77.i.i, !llvm.loop !13

mkn.exit77.i.i:                                   ; preds = %bb.ao, %.mkn.exit77_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre102.i.i, %.mkn.exit77_crit_edge.i.i ], [ %i.hk, %bb.ao ]
  %i.hm = shl nsw i64 %.pre-phi.i.i, 3
  %i.hn = tail call ptr @bench_malloc(i64 noundef %i.hm) #6 ; 6 uses
  %i.ho = load i32, ptr %i.e, align 8, !tbaa !57
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 3
  %i.hr = tail call ptr @bench_malloc(i64 noundef %i.hq) #6 ; 6 uses
  %i.hs = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %.not.i78.i.i = icmp eq i32 %i.hs, 2147483647
  br i1 %.not.i78.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %mkn.exit77.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i82.i.i = load i32, ptr %i.e, align 8, !tbaa !57
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %mkn.exit77.i.i
  %i.ht = phi i32 [ %.pre.i82.i.i, %bb.ap ], [ %i.hs, %mkn.exit77.i.i ] ; 3 uses
  %i.hu = icmp sgt i32 %i.ht, 1
  br i1 %i.hu, label %.lr.ph.i79.i.i, label %mknembed_many.exit.i.i

.lr.ph.i79.i.i:                                   ; preds = %bb.aq
  %i.hv = add nsw i32 %i.ht, -1                   ; 3 uses
  %i.hw = load ptr, ptr %i.dq, align 8, !tbaa !58 ; 7 uses
  %i.hx = zext i32 %i.hv to i64                   ; 6 uses
  %2 = icmp ne i32 %i.hv, 0
  %.neg201 = sext i1 %2 to i64
  %i.hy = zext nneg i32 %i.ht to i64
  %i.hz = add nsw i64 %.neg201, %i.hy             ; 3 uses
  %min.iters.check186 = icmp ult i64 %i.hz, 4
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i79.i.i
  %.not202 = icmp eq i32 %i.hv, 0                 ; 2 uses
  %3 = select i1 %.not202, i64 0, i64 4           ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.hn, i64 %3 ; 2 uses
  %i.ia = shl nuw nsw i64 %i.hx, 2
  %i.ib = add nuw nsw i64 %i.ia, 4                ; 2 uses
  %scevgep169 = getelementptr i8, ptr %i.hn, i64 %i.ib ; 2 uses
  %scevgep170 = getelementptr i8, ptr %i.hr, i64 %3 ; 2 uses
  %scevgep171 = getelementptr i8, ptr %i.hr, i64 %i.ib ; 2 uses
  %4 = select i1 %.not202, i64 -8, i64 4
  %scevgep172 = getelementptr i8, ptr %i.hw, i64 %4 ; 2 uses
  %i.ic = mul nuw nsw i64 %i.hx, 12
  %i.id = getelementptr i8, ptr %i.hw, i64 %i.ic
  %scevgep173 = getelementptr i8, ptr %i.id, i64 12 ; 2 uses
  %bound0174 = icmp ult ptr %scevgep168, %scevgep171
  %bound1175 = icmp ult ptr %scevgep170, %scevgep169
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0177 = icmp ult ptr %scevgep168, %scevgep173
  %bound1178 = icmp ult ptr %scevgep172, %scevgep169
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %found.conflict176, %found.conflict179
  %bound0181 = icmp ult ptr %scevgep170, %scevgep173
  %bound1182 = icmp ult ptr %scevgep172, %scevgep171
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  br i1 %conflict.rdx184, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck166
  %n.vec188 = and i64 %i.hz, -4                   ; 3 uses
  %i.ie = sub nsw i64 %i.hx, %n.vec188
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next193, %vector.body189 ] ; 2 uses
  %i.if = sub i64 %i.hx, %index190                ; 6 uses
  %i.ig = getelementptr [12 x i8], ptr %i.hw, i64 %i.if ; 4 uses
  %i.ih = getelementptr [12 x i8], ptr %i.hw, i64 %i.if ; 4 uses
  %i.ii = getelementptr [12 x i8], ptr %i.hw, i64 %i.if ; 4 uses
  %i.ij = getelementptr [12 x i8], ptr %i.hw, i64 %i.if ; 4 uses
  %i.ik = getelementptr i8, ptr %i.ig, i64 -8
  %i.il = getelementptr i8, ptr %i.ih, i64 -20
  %i.im = getelementptr i8, ptr %i.ii, i64 -32
  %i.in = getelementptr i8, ptr %i.ij, i64 -44
  %i.io = load i32, ptr %i.ik, align 4, !tbaa !66, !alias.scope !68
  %i.ip = load i32, ptr %i.il, align 4, !tbaa !66, !alias.scope !68
  %i.iq = load i32, ptr %i.im, align 4, !tbaa !66, !alias.scope !68
  %i.ir = load i32, ptr %i.in, align 4, !tbaa !66, !alias.scope !68
  %i.is = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %i.it = insertelement <4 x i32> %i.is, i32 %i.iq, i64 1
  %i.iu = insertelement <4 x i32> %i.it, i32 %i.ip, i64 2
  %i.iv = insertelement <4 x i32> %i.iu, i32 %i.io, i64 3
  %i.iw = getelementptr i8, ptr %i.ig, i64 4
  %i.ix = getelementptr i8, ptr %i.ih, i64 -8
  %i.iy = getelementptr i8, ptr %i.ii, i64 -20
  %i.iz = getelementptr i8, ptr %i.ij, i64 -32
  %i.ja = load i32, ptr %i.iw, align 4, !tbaa !66, !alias.scope !68
  %i.jb = load i32, ptr %i.ix, align 4, !tbaa !66, !alias.scope !68
  %i.jc = load i32, ptr %i.iy, align 4, !tbaa !66, !alias.scope !68
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !66, !alias.scope !68
  %i.je = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %i.jf = insertelement <4 x i32> %i.je, i32 %i.jc, i64 1
  %i.jg = insertelement <4 x i32> %i.jf, i32 %i.jb, i64 2
  %i.jh = insertelement <4 x i32> %i.jg, i32 %i.ja, i64 3
  %reverse191 = sdiv <4 x i32> %i.iv, %i.jh
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.if
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -12
  store <4 x i32> %reverse191, ptr %i.jj, align 4, !tbaa !59, !alias.scope !69, !noalias !70
  %i.jk = getelementptr i8, ptr %i.ig, i64 -4
  %i.jl = getelementptr i8, ptr %i.ih, i64 -16
  %i.jm = getelementptr i8, ptr %i.ii, i64 -28
  %i.jn = getelementptr i8, ptr %i.ij, i64 -40
  %i.jo = load i32, ptr %i.jk, align 4, !tbaa !61, !alias.scope !68
  %i.jp = load i32, ptr %i.jl, align 4, !tbaa !61, !alias.scope !68
  %i.jq = load i32, ptr %i.jm, align 4, !tbaa !61, !alias.scope !68
  %i.jr = load i32, ptr %i.jn, align 4, !tbaa !61, !alias.scope !68
  %i.js = insertelement <4 x i32> poison, i32 %i.jr, i64 0
  %i.jt = insertelement <4 x i32> %i.js, i32 %i.jq, i64 1
  %i.ju = insertelement <4 x i32> %i.jt, i32 %i.jp, i64 2
  %i.jv = insertelement <4 x i32> %i.ju, i32 %i.jo, i64 3
  %i.jw = getelementptr i8, ptr %i.ig, i64 8
  %i.jx = getelementptr i8, ptr %i.ih, i64 -4
  %i.jy = getelementptr i8, ptr %i.ii, i64 -16
  %i.jz = getelementptr i8, ptr %i.ij, i64 -28
  %i.ka = load i32, ptr %i.jw, align 4, !tbaa !61, !alias.scope !68
  %i.kb = load i32, ptr %i.jx, align 4, !tbaa !61, !alias.scope !68
  %i.kc = load i32, ptr %i.jy, align 4, !tbaa !61, !alias.scope !68
  %i.kd = load i32, ptr %i.jz, align 4, !tbaa !61, !alias.scope !68
  %i.ke = insertelement <4 x i32> poison, i32 %i.kd, i64 0
  %i.kf = insertelement <4 x i32> %i.ke, i32 %i.kc, i64 1
  %i.kg = insertelement <4 x i32> %i.kf, i32 %i.kb, i64 2
  %i.kh = insertelement <4 x i32> %i.kg, i32 %i.ka, i64 3
  %reverse192 = sdiv <4 x i32> %i.jv, %i.kh
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.if
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -12
  store <4 x i32> %reverse192, ptr %i.kj, align 4, !tbaa !59, !alias.scope !71, !noalias !68
  %index.next193 = add nuw i64 %index190, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.kk, label %middle.block194, label %vector.body189, !llvm.loop !18

middle.block194:                                  ; preds = %vector.body189
  %cmp.n195 = icmp eq i64 %i.hz, %n.vec188
  br i1 %cmp.n195, label %mknembed_many.exit.i.i, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %vector.memcheck166, %.lr.ph.i79.i.i, %middle.block194
  %indvars.iv.i80.i.i.ph = phi i64 [ %i.hx, %vector.memcheck166 ], [ %i.hx, %.lr.ph.i79.i.i ], [ %i.ie, %middle.block194 ]
  br label %scalar.ph185

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv.i80.i.i = phi i64 [ %indvars.iv.next.i81.i.i, %scalar.ph185 ], [ %indvars.iv.i80.i.i.ph, %scalar.ph185.preheader ] ; 4 uses
  %indvars.iv.next.i81.i.i = add nsw i64 %indvars.iv.i80.i.i, -1 ; 2 uses
  %i.kl = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %indvars.iv.next.i81.i.i ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !66
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !66
  %i.kq = sdiv i32 %i.kn, %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i80.i.i
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !59
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !61
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kl, i64 20
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !61
  %i.kw = sdiv i32 %i.kt, %i.kv
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.i80.i.i
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !59
  %i.ky = icmp samesign ugt i64 %indvars.iv.i80.i.i, 1
  br i1 %i.ky, label %scalar.ph185, label %mknembed_many.exit.i.i, !llvm.loop !19

mknembed_many.exit.i.i:                           ; preds = %scalar.ph185, %middle.block194, %bb.aq
  %i.kz = load i32, ptr @verbose, align 4, !tbaa !59
  %i.la = icmp sgt i32 %i.kz, 2
  br i1 %i.la, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %mknembed_many.exit.i.i
  %puts68.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %mknembed_many.exit.i.i
  %i.lb = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !58 ; 3 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !67
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !53
  %i.lh = load ptr, ptr %i.dq, align 8, !tbaa !58
  %i.li = sext i32 %i.lb to i64
  %i.lj = getelementptr [12 x i8], ptr %i.lh, i64 %i.li ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 -8
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !66
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !66
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !55
  %i.lq = getelementptr i8, ptr %i.lj, i64 -4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !61
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !61
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !51
  %i.lw = tail call ptr @fftw_plan_many_dft(i32 noundef %i.lb, ptr noundef %i.hc, i32 noundef %i.le, ptr noundef %i.lg, ptr noundef %i.hn, i32 noundef %i.ll, i32 noundef %i.ln, ptr noundef %i.lp, ptr noundef %i.hr, i32 noundef %i.lr, i32 noundef %i.lt, i32 noundef %i.lv, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.hc) #6
  tail call void @bench_free(ptr noundef %i.hn) #6
  tail call void @bench_free(ptr noundef %i.hr) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i:          ; preds = %bb.x, %bb.w, %bb.r
  %i.lx = phi i32 [ %.pre100.i.i, %bb.r ], [ %i.do, %bb.w ], [ %i.do, %bb.x ] ; 2 uses
  %i.ly = icmp sgt i32 %i.lx, -1
  br i1 %i.ly, label %bb.au, label %bb.at

bb.at:                                            ; preds = %expressible_as_api_many.exit.thread.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i5.i = load i32, ptr %i.e, align 8, !tbaa !57
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %expressible_as_api_many.exit.thread.i.i
  %i.lz = phi i32 [ %.pr.i.i5.i, %bb.at ], [ %i.lx, %expressible_as_api_many.exit.thread.i.i ] ; 2 uses
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %bench_tensor_to_fftw_iodim.exit.i6.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mb = sext i32 %i.lz to i64
  %i.mc = mul nsw i64 %i.mb, 12
  %i.md = tail call ptr @bench_malloc(i64 noundef %i.mc) #6 ; 8 uses
  %i.me = load i32, ptr %i.e, align 8, !tbaa !57  ; 3 uses
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph.i83.i.i, label %bench_tensor_to_fftw_iodim.exit.i6.i

.lr.ph.i83.i.i:                                   ; preds = %bb.av
  %i.mg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i.i9.i = zext nneg i32 %i.me to i64 ; 2 uses
  %xtraiter274 = and i64 %wide.trip.count.i.i9.i, 3 ; 3 uses
  %i.mi = icmp ult i32 %i.me, 4
  br i1 %i.mi, label %.epil.preheader273, label %.lr.ph.i83.i.i.new

.lr.ph.i83.i.i.new:                               ; preds = %.lr.ph.i83.i.i
  %unroll_iter278 = and i64 %wide.trip.count.i.i9.i, 2147483644
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i83.i.i.new
  %indvars.iv.i84.i.i = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %indvars.iv.next.i85.i.i.3, %bb.aw ] ; 6 uses
  %niter279 = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %niter279.next.3, %bb.aw ]
  %i.mj = getelementptr inbounds nuw [12 x i8], ptr %i.mh, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.mk = getelementptr inbounds nuw [12 x i8], ptr %i.md, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.ml = load <2 x i32>, ptr %i.mj, align 4, !tbaa !59
  store <2 x i32> %i.ml, ptr %i.mk, align 4, !tbaa !59
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !61
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !63
end_hunk_0
begin_hunk_1_@mkplan:bb.a
bb.cu:                                            ; preds = %bb.cq
  br i1 %i.wp, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %puts119.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21) ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !58 ; 2 uses
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !67
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 12
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !67
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !53
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !55
  %i.xj = tail call ptr @fftw_plan_dft_c2r_2d(i32 noundef %i.xc, i32 noundef %i.xe, ptr noundef %i.xg, ptr noundef %i.xi, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.cx:                                            ; preds = %bb.ci
  %i.xk = load i32, ptr %i.uq, align 8, !tbaa !51
  %i.xl = icmp slt i32 %i.xk, 0
  %i.xm = load i32, ptr @verbose, align 4, !tbaa !59
  %i.xn = icmp sgt i32 %i.xm, 2                   ; 2 uses
  br i1 %i.xl, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.xn, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %puts118.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.xo = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !58 ; 3 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !67
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 12
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !67
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !67
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !53
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !55
  %i.xz = tail call ptr @fftw_plan_dft_r2c_3d(i32 noundef %i.xq, i32 noundef %i.xs, i32 noundef %i.xu, ptr noundef %i.xw, ptr noundef %i.xy, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.db:                                            ; preds = %bb.cx
  br i1 %i.xn, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %puts117.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.ya = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !58 ; 3 uses
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !67
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yb, i64 12
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !67
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !67
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !53
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !55
  %i.yl = tail call ptr @fftw_plan_dft_c2r_3d(i32 noundef %i.yc, i32 noundef %i.ye, i32 noundef %i.yg, ptr noundef %i.yi, ptr noundef %i.yk, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.de:                                            ; preds = %bb.ci
  %i.ym = sext i32 %i.vr to i64
  %i.yn = shl nsw i64 %i.ym, 3
  %i.yo = tail call ptr @bench_malloc(i64 noundef %i.yn) #6 ; 4 uses
  %i.yp = load i32, ptr %i.ps, align 8, !tbaa !57 ; 2 uses
  %i.yq = icmp sgt i32 %i.yp, 0
  br i1 %i.yq, label %.lr.ph.i.i14.i, label %mkn.exit.i.i28

.lr.ph.i.i14.i:                                   ; preds = %bb.de
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !58
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph.i.i14.i
  %indvars.iv.i125.i.i = phi i64 [ 0, %.lr.ph.i.i14.i ], [ %indvars.iv.next.i.i15.i, %bb.df ] ; 3 uses
  %i.yt = getelementptr inbounds nuw [12 x i8], ptr %i.ys, i64 %indvars.iv.i125.i.i
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !67
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %indvars.iv.i125.i.i
  store i32 %i.yu, ptr %i.yv, align 4, !tbaa !59
  %indvars.iv.next.i.i15.i = add nuw nsw i64 %indvars.iv.i125.i.i, 1 ; 2 uses
  %i.yw = load i32, ptr %i.ps, align 8, !tbaa !57 ; 2 uses
  %i.yx = sext i32 %i.yw to i64
  %i.yy = icmp slt i64 %indvars.iv.next.i.i15.i, %i.yx
  br i1 %i.yy, label %bb.df, label %mkn.exit.i.i28, !llvm.loop !13

mkn.exit.i.i28:                                   ; preds = %bb.df, %bb.de
  %i.yz = phi i32 [ %i.yp, %bb.de ], [ %i.yw, %bb.df ] ; 2 uses
  %i.za = load i32, ptr %i.uq, align 8, !tbaa !51
  %i.zb = icmp slt i32 %i.za, 0
  %i.zc = load i32, ptr @verbose, align 4, !tbaa !59
  %i.zd = icmp sgt i32 %i.zc, 2                   ; 2 uses
  br i1 %i.zb, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.zd, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %puts124.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %.pre169.i.i = load i32, ptr %i.ps, align 8, !tbaa !57
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ze = phi i32 [ %.pre169.i.i, %bb.dh ], [ %i.yz, %bb.dg ]
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !53
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !55
  %i.zj = tail call ptr @fftw_plan_dft_r2c(i32 noundef %i.ze, ptr noundef %i.yo, ptr noundef %i.zg, ptr noundef %i.zi, i32 noundef %1) #6
  br label %bb.dm

bb.dj:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.zd, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %puts123.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %.pre.i13.i = load i32, ptr %i.ps, align 8, !tbaa !57
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.zk = phi i32 [ %.pre.i13.i, %bb.dk ], [ %i.yz, %bb.dj ]
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !53
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !55
  %i.zp = tail call ptr @fftw_plan_dft_c2r(i32 noundef %i.zk, ptr noundef %i.yo, ptr noundef %i.zm, ptr noundef %i.zo, i32 noundef %1) #6
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.di
  %.0110.i.i = phi ptr [ %i.zj, %bb.di ], [ %i.zp, %bb.dl ]
  tail call void @bench_free(ptr noundef %i.yo) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.i.i21:               ; preds = %bb.cf, %bb.ce
  %i.zq = load i32, ptr %i.pu, align 8, !tbaa !57
  %i.zr = icmp eq i32 %i.zq, 1
  br i1 %i.zr, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %expressible_as_api_many.exit.i.i21
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 236, ptr noundef nonnull @.str.6) #6
  %.pre170.i.i = load i32, ptr %i.ps, align 8, !tbaa !57
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %expressible_as_api_many.exit.i.i21
  %i.zs = phi i32 [ %.pre170.i.i, %bb.dn ], [ %i.ux, %expressible_as_api_many.exit.i.i21 ]
  %i.zt = sext i32 %i.zs to i64
  %i.zu = shl nsw i64 %i.zt, 3
  %i.zv = tail call ptr @bench_malloc(i64 noundef %i.zu) #6 ; 4 uses
  %i.zw = load i32, ptr %i.ps, align 8, !tbaa !57 ; 2 uses
  %i.zx = icmp sgt i32 %i.zw, 0
  br i1 %i.zx, label %.lr.ph.i126.i.i, label %.mkn.exit129_crit_edge.i.i

.mkn.exit129_crit_edge.i.i:                       ; preds = %bb.do
  %.pre173.i.i = sext i32 %i.zw to i64
  br label %mkn.exit129.i.i

.lr.ph.i126.i.i:                                  ; preds = %bb.do
  %i.zy = load ptr, ptr %i.uz, align 8, !tbaa !58
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %.lr.ph.i126.i.i
  %indvars.iv.i127.i.i = phi i64 [ 0, %.lr.ph.i126.i.i ], [ %indvars.iv.next.i128.i.i, %bb.dp ] ; 3 uses
  %i.zz = getelementptr inbounds nuw [12 x i8], ptr %i.zy, i64 %indvars.iv.i127.i.i
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !67
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv.i127.i.i
  store i32 %i.aaa, ptr %i.aab, align 4, !tbaa !59
  %indvars.iv.next.i128.i.i = add nuw nsw i64 %indvars.iv.i127.i.i, 1 ; 2 uses
  %i.aac = load i32, ptr %i.ps, align 8, !tbaa !57
  %i.aad = sext i32 %i.aac to i64                 ; 2 uses
  %i.aae = icmp slt i64 %indvars.iv.next.i128.i.i, %i.aad
  br i1 %i.aae, label %bb.dp, label %mkn.exit129.i.i, !llvm.loop !13

mkn.exit129.i.i:                                  ; preds = %bb.dp, %.mkn.exit129_crit_edge.i.i
  %.pre-phi.i.i22 = phi i64 [ %.pre173.i.i, %.mkn.exit129_crit_edge.i.i ], [ %i.aad, %bb.dp ]
  %i.aaf = shl nsw i64 %.pre-phi.i.i22, 3
  %i.aag = tail call ptr @bench_malloc(i64 noundef %i.aaf) #6 ; 7 uses
  %i.aah = load i32, ptr %i.ps, align 8, !tbaa !57
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = shl nsw i64 %i.aai, 3
  %i.aak = tail call ptr @bench_malloc(i64 noundef %i.aaj) #6 ; 7 uses
  %i.aal = load i32, ptr %i.ps, align 8, !tbaa !57 ; 2 uses
  %.not.i130.i.i = icmp eq i32 %i.aal, 2147483647
  br i1 %.not.i130.i.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %mkn.exit129.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i134.i.i = load i32, ptr %i.ps, align 8, !tbaa !57
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %mkn.exit129.i.i
  %i.aam = phi i32 [ %.pre.i134.i.i, %bb.dq ], [ %i.aal, %mkn.exit129.i.i ] ; 3 uses
  %i.aan = icmp sgt i32 %i.aam, 1
  br i1 %i.aan, label %.lr.ph.i131.i.i, label %mknembed_many.exit.i.i23

.lr.ph.i131.i.i:                                  ; preds = %bb.dr
  %i.aao = add nsw i32 %i.aam, -1                 ; 3 uses
  %i.aap = load ptr, ptr %i.uz, align 8, !tbaa !58 ; 7 uses
  %i.aaq = zext i32 %i.aao to i64                 ; 6 uses
  %5 = icmp ne i32 %i.aao, 0
  %.neg198 = sext i1 %5 to i64
  %i.aar = zext nneg i32 %i.aam to i64
  %i.aas = add nsw i64 %.neg198, %i.aar           ; 3 uses
  %min.iters.check155 = icmp ult i64 %i.aas, 4
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.i131.i.i
  %.not199 = icmp eq i32 %i.aao, 0                ; 2 uses
  %6 = select i1 %.not199, i64 0, i64 4           ; 2 uses
  %scevgep137 = getelementptr i8, ptr %i.aag, i64 %6 ; 2 uses
  %i.aat = shl nuw nsw i64 %i.aaq, 2
  %i.aau = add nuw nsw i64 %i.aat, 4              ; 2 uses
  %scevgep138 = getelementptr i8, ptr %i.aag, i64 %i.aau ; 2 uses
  %scevgep139 = getelementptr i8, ptr %i.aak, i64 %6 ; 2 uses
  %scevgep140 = getelementptr i8, ptr %i.aak, i64 %i.aau ; 2 uses
  %7 = select i1 %.not199, i64 -8, i64 4
  %scevgep141 = getelementptr i8, ptr %i.aap, i64 %7 ; 2 uses
  %i.aav = mul nuw nsw i64 %i.aaq, 12
  %i.aaw = getelementptr i8, ptr %i.aap, i64 %i.aav
  %scevgep142 = getelementptr i8, ptr %i.aaw, i64 12 ; 2 uses
  %bound0143 = icmp ult ptr %scevgep137, %scevgep140
  %bound1144 = icmp ult ptr %scevgep139, %scevgep138
  %found.conflict145 = and i1 %bound0143, %bound1144
  %bound0146 = icmp ult ptr %scevgep137, %scevgep142
  %bound1147 = icmp ult ptr %scevgep141, %scevgep138
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %found.conflict145, %found.conflict148
  %bound0150 = icmp ult ptr %scevgep139, %scevgep142
  %bound1151 = icmp ult ptr %scevgep141, %scevgep140
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  br i1 %conflict.rdx153, label %scalar.ph154.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck135
  %n.vec157 = and i64 %i.aas, -4                  ; 3 uses
  %i.aax = sub nsw i64 %i.aaq, %n.vec157
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 2 uses
  %i.aay = sub i64 %i.aaq, %index159              ; 6 uses
  %i.aaz = getelementptr [12 x i8], ptr %i.aap, i64 %i.aay ; 4 uses
  %i.aba = getelementptr [12 x i8], ptr %i.aap, i64 %i.aay ; 4 uses
  %i.abb = getelementptr [12 x i8], ptr %i.aap, i64 %i.aay ; 4 uses
  %i.abc = getelementptr [12 x i8], ptr %i.aap, i64 %i.aay ; 4 uses
  %i.abd = getelementptr i8, ptr %i.aaz, i64 -8
  %i.abe = getelementptr i8, ptr %i.aba, i64 -20
  %i.abf = getelementptr i8, ptr %i.abb, i64 -32
  %i.abg = getelementptr i8, ptr %i.abc, i64 -44
  %i.abh = load i32, ptr %i.abd, align 4, !tbaa !66, !alias.scope !75
  %i.abi = load i32, ptr %i.abe, align 4, !tbaa !66, !alias.scope !75
  %i.abj = load i32, ptr %i.abf, align 4, !tbaa !66, !alias.scope !75
  %i.abk = load i32, ptr %i.abg, align 4, !tbaa !66, !alias.scope !75
  %i.abl = insertelement <4 x i32> poison, i32 %i.abk, i64 0
  %i.abm = insertelement <4 x i32> %i.abl, i32 %i.abj, i64 1
  %i.abn = insertelement <4 x i32> %i.abm, i32 %i.abi, i64 2
  %i.abo = insertelement <4 x i32> %i.abn, i32 %i.abh, i64 3
  %i.abp = getelementptr i8, ptr %i.aaz, i64 4
  %i.abq = getelementptr i8, ptr %i.aba, i64 -8
  %i.abr = getelementptr i8, ptr %i.abb, i64 -20
  %i.abs = getelementptr i8, ptr %i.abc, i64 -32
  %i.abt = load i32, ptr %i.abp, align 4, !tbaa !66, !alias.scope !75
  %i.abu = load i32, ptr %i.abq, align 4, !tbaa !66, !alias.scope !75
  %i.abv = load i32, ptr %i.abr, align 4, !tbaa !66, !alias.scope !75
  %i.abw = load i32, ptr %i.abs, align 4, !tbaa !66, !alias.scope !75
  %i.abx = insertelement <4 x i32> poison, i32 %i.abw, i64 0
  %i.aby = insertelement <4 x i32> %i.abx, i32 %i.abv, i64 1
  %i.abz = insertelement <4 x i32> %i.aby, i32 %i.abu, i64 2
  %i.aca = insertelement <4 x i32> %i.abz, i32 %i.abt, i64 3
  %reverse160 = sdiv <4 x i32> %i.abo, %i.aca
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %i.aay
  %i.acc = getelementptr inbounds i8, ptr %i.acb, i64 -12
  store <4 x i32> %reverse160, ptr %i.acc, align 4, !tbaa !59, !alias.scope !76, !noalias !77
  %i.acd = getelementptr i8, ptr %i.aaz, i64 -4
  %i.ace = getelementptr i8, ptr %i.aba, i64 -16
  %i.acf = getelementptr i8, ptr %i.abb, i64 -28
  %i.acg = getelementptr i8, ptr %i.abc, i64 -40
  %i.ach = load i32, ptr %i.acd, align 4, !tbaa !61, !alias.scope !75
  %i.aci = load i32, ptr %i.ace, align 4, !tbaa !61, !alias.scope !75
  %i.acj = load i32, ptr %i.acf, align 4, !tbaa !61, !alias.scope !75
  %i.ack = load i32, ptr %i.acg, align 4, !tbaa !61, !alias.scope !75
  %i.acl = insertelement <4 x i32> poison, i32 %i.ack, i64 0
  %i.acm = insertelement <4 x i32> %i.acl, i32 %i.acj, i64 1
  %i.acn = insertelement <4 x i32> %i.acm, i32 %i.aci, i64 2
  %i.aco = insertelement <4 x i32> %i.acn, i32 %i.ach, i64 3
  %i.acp = getelementptr i8, ptr %i.aaz, i64 8
  %i.acq = getelementptr i8, ptr %i.aba, i64 -4
  %i.acr = getelementptr i8, ptr %i.abb, i64 -16
  %i.acs = getelementptr i8, ptr %i.abc, i64 -28
  %i.act = load i32, ptr %i.acp, align 4, !tbaa !61, !alias.scope !75
  %i.acu = load i32, ptr %i.acq, align 4, !tbaa !61, !alias.scope !75
  %i.acv = load i32, ptr %i.acr, align 4, !tbaa !61, !alias.scope !75
  %i.acw = load i32, ptr %i.acs, align 4, !tbaa !61, !alias.scope !75
  %i.acx = insertelement <4 x i32> poison, i32 %i.acw, i64 0
  %i.acy = insertelement <4 x i32> %i.acx, i32 %i.acv, i64 1
  %i.acz = insertelement <4 x i32> %i.acy, i32 %i.acu, i64 2
  %i.ada = insertelement <4 x i32> %i.acz, i32 %i.act, i64 3
  %reverse161 = sdiv <4 x i32> %i.aco, %i.ada
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.aay
  %i.adc = getelementptr inbounds i8, ptr %i.adb, i64 -12
  store <4 x i32> %reverse161, ptr %i.adc, align 4, !tbaa !59, !alias.scope !78, !noalias !75
  %index.next162 = add nuw i64 %index159, 4       ; 2 uses
  %i.add = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.add, label %middle.block163, label %vector.body158, !llvm.loop !28

middle.block163:                                  ; preds = %vector.body158
  %cmp.n164 = icmp eq i64 %i.aas, %n.vec157
  br i1 %cmp.n164, label %mknembed_many.exit.i.i23, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %vector.memcheck135, %.lr.ph.i131.i.i, %middle.block163
  %indvars.iv.i132.i.i.ph = phi i64 [ %i.aaq, %vector.memcheck135 ], [ %i.aaq, %.lr.ph.i131.i.i ], [ %i.aax, %middle.block163 ]
  br label %scalar.ph154

scalar.ph154:                                     ; preds = %scalar.ph154.preheader, %scalar.ph154
  %indvars.iv.i132.i.i = phi i64 [ %indvars.iv.next.i133.i.i, %scalar.ph154 ], [ %indvars.iv.i132.i.i.ph, %scalar.ph154.preheader ] ; 4 uses
  %indvars.iv.next.i133.i.i = add nsw i64 %indvars.iv.i132.i.i, -1 ; 2 uses
  %i.ade = getelementptr inbounds nuw [12 x i8], ptr %i.aap, i64 %indvars.iv.next.i133.i.i ; 4 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !66
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !66
  %i.adj = sdiv i32 %i.adg, %i.adi
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %indvars.iv.i132.i.i
  store i32 %i.adj, ptr %i.adk, align 4, !tbaa !59
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !61
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ade, i64 20
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !61
  %i.adp = sdiv i32 %i.adm, %i.ado
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv.i132.i.i
  store i32 %i.adp, ptr %i.adq, align 4, !tbaa !59
  %i.adr = icmp samesign ugt i64 %indvars.iv.i132.i.i, 1
  br i1 %i.adr, label %scalar.ph154, label %mknembed_many.exit.i.i23, !llvm.loop !29

mknembed_many.exit.i.i23:                         ; preds = %scalar.ph154, %middle.block163, %bb.dr
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !51
  %i.adu = icmp slt i32 %i.adt, 0
  %i.adv = load i32, ptr @verbose, align 4, !tbaa !59
  %i.adw = icmp sgt i32 %i.adv, 2                 ; 2 uses
  br i1 %i.adu, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.adw, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %puts116.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.adx = load i32, ptr %i.ps, align 8, !tbaa !57 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !58 ; 3 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !67
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !53
  %i.aed = load ptr, ptr %i.uz, align 8, !tbaa !58
  %i.aee = sext i32 %i.adx to i64
  %i.aef = getelementptr [12 x i8], ptr %i.aed, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr i8, ptr %i.aef, i64 -8
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !66
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adz, i64 4
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !66
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !55
  %i.aem = getelementptr i8, ptr %i.aef, i64 -4
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !61
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !61
  %i.aeq = tail call ptr @fftw_plan_many_dft_r2c(i32 noundef %i.adx, ptr noundef %i.zv, i32 noundef %i.aea, ptr noundef %i.aec, ptr noundef %i.aag, i32 noundef %i.aeh, i32 noundef %i.aej, ptr noundef %i.ael, ptr noundef %i.aak, i32 noundef %i.aen, i32 noundef %i.aep, i32 noundef %1) #6
  br label %bb.dy

bb.dv:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.adw, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %puts115.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.aer = load i32, ptr %i.ps, align 8, !tbaa !57 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !58 ; 3 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !67
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !53
  %i.aex = load ptr, ptr %i.uz, align 8, !tbaa !58
  %i.aey = sext i32 %i.aer to i64
  %i.aez = getelementptr [12 x i8], ptr %i.aex, i64 %i.aey ; 2 uses
  %i.afa = getelementptr i8, ptr %i.aez, i64 -8
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !66
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aet, i64 4
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !66
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !55
  %i.afg = getelementptr i8, ptr %i.aez, i64 -4
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !61
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !61
  %i.afk = tail call ptr @fftw_plan_many_dft_c2r(i32 noundef %i.aer, ptr noundef %i.zv, i32 noundef %i.aeu, ptr noundef %i.aew, ptr noundef %i.aag, i32 noundef %i.afb, i32 noundef %i.afd, ptr noundef %i.aff, ptr noundef %i.aak, i32 noundef %i.afh, i32 noundef %i.afj, i32 noundef %1) #6
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.du
  %.1.i.i = phi ptr [ %i.aeq, %bb.du ], [ %i.afk, %bb.dx ]
  tail call void @bench_free(ptr noundef %i.zv) #6
  tail call void @bench_free(ptr noundef %i.aag) #6
  tail call void @bench_free(ptr noundef %i.aak) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i19:        ; preds = %bb.ch, %bb.cg, %bb.cb
  %i.afl = phi i32 [ %.pre.i, %bb.cb ], [ %i.ux, %bb.cg ], [ %i.ux, %bb.ch ] ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !51
  %i.afo = icmp slt i32 %i.afn, 0
  %i.afp = icmp sgt i32 %i.afl, -1                ; 2 uses
  br i1 %i.afo, label %bb.dz, label %bb.em

end_hunk_1
begin_hunk_2_@mkplan:bb.a
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !66
  %i.aoo = srem i32 %i.aol, %i.aon
  %.not13.i.i = icmp eq i32 %i.aoo, 0
  br i1 %.not13.i.i, label %bb.fx, label %expressible_as_api_many.exit.thread.i

bb.fx:                                            ; preds = %bb.fw
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !61
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoj, i64 20
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !61
  %i.aot = srem i32 %i.aoq, %i.aos
  %.not14.i.i = icmp eq i32 %i.aot, 0
  br i1 %.not14.i.i, label %bb.fv, label %expressible_as_api_many.exit.thread.i, !llvm.loop !12

bb.fy:                                            ; preds = %bb.fq
  %i.aou = load i32, ptr %i.amt, align 8, !tbaa !57 ; 2 uses
  switch i32 %i.aou, label %bb.gi [
    i32 1, label %bb.fz
    i32 2, label %bb.gc
    i32 3, label %bb.gf
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.aov = load i32, ptr @verbose, align 4, !tbaa !59
  %i.aow = icmp sgt i32 %i.aov, 2
  br i1 %i.aow, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %puts108.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aox = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !58
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !67
  %i.apa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !53
  %i.apc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !55
  %i.ape = load i32, ptr %i.amz, align 4, !tbaa !59
  %i.apf = tail call ptr @fftw_plan_r2r_1d(i32 noundef %i.aoz, ptr noundef %i.apb, ptr noundef %i.apd, i32 noundef %i.ape, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gc:                                            ; preds = %bb.fy
  %i.apg = load i32, ptr @verbose, align 4, !tbaa !59
  %i.aph = icmp sgt i32 %i.apg, 2
  br i1 %i.aph, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %puts107.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.api = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !58 ; 2 uses
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !67
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apj, i64 12
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !67
  %i.apn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !53
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !55
  %i.apr = load i32, ptr %i.amz, align 4, !tbaa !59
  %i.aps = getelementptr inbounds nuw i8, ptr %i.amz, i64 4
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !59
  %i.apu = tail call ptr @fftw_plan_r2r_2d(i32 noundef %i.apk, i32 noundef %i.apm, ptr noundef %i.apo, ptr noundef %i.apq, i32 noundef %i.apr, i32 noundef %i.apt, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gf:                                            ; preds = %bb.fy
  %i.apv = load i32, ptr @verbose, align 4, !tbaa !59
  %i.apw = icmp sgt i32 %i.apv, 2
  br i1 %i.apw, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %puts106.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.apx = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !58 ; 3 uses
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !67
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 12
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !67
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apy, i64 24
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !67
  %i.aqe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !53
  %i.aqg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !55
  %i.aqi = load i32, ptr %i.amz, align 4, !tbaa !59
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.amz, i64 4
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !59
  %i.aql = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !59
  %i.aqn = tail call ptr @fftw_plan_r2r_3d(i32 noundef %i.apz, i32 noundef %i.aqb, i32 noundef %i.aqd, ptr noundef %i.aqf, ptr noundef %i.aqh, i32 noundef %i.aqi, i32 noundef %i.aqk, i32 noundef %i.aqm, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gi:                                            ; preds = %bb.fy
  %i.aqo = sext i32 %i.aou to i64
  %i.aqp = shl nsw i64 %i.aqo, 3
  %i.aqq = tail call ptr @bench_malloc(i64 noundef %i.aqp) #6 ; 3 uses
  %i.aqr = load i32, ptr %i.amt, align 8, !tbaa !57 ; 2 uses
  %i.aqs = icmp sgt i32 %i.aqr, 0
  br i1 %i.aqs, label %.lr.ph.i.i, label %mkn.exit.i

.lr.ph.i.i:                                       ; preds = %bb.gi
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !58
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %.lr.ph.i.i
  %indvars.iv.i110.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gj ] ; 3 uses
  %i.aqv = getelementptr inbounds nuw [12 x i8], ptr %i.aqu, i64 %indvars.iv.i110.i
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !67
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aqq, i64 %indvars.iv.i110.i
  store i32 %i.aqw, ptr %i.aqx, align 4, !tbaa !59
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i110.i, 1 ; 2 uses
  %i.aqy = load i32, ptr %i.amt, align 8, !tbaa !57 ; 2 uses
  %i.aqz = sext i32 %i.aqy to i64
  %i.ara = icmp slt i64 %indvars.iv.next.i.i, %i.aqz
  br i1 %i.ara, label %bb.gj, label %mkn.exit.i, !llvm.loop !13

mkn.exit.i:                                       ; preds = %bb.gj, %bb.gi
  %i.arb = phi i32 [ %i.aqr, %bb.gi ], [ %i.aqy, %bb.gj ]
  %i.arc = load i32, ptr @verbose, align 4, !tbaa !59
  %i.ard = icmp sgt i32 %i.arc, 2
  br i1 %i.ard, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %mkn.exit.i
  %puts109.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %.pre.i35 = load i32, ptr %i.amt, align 8, !tbaa !57
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %mkn.exit.i
  %i.are = phi i32 [ %.pre.i35, %bb.gk ], [ %i.arb, %mkn.exit.i ]
  %i.arf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !53
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !55
  %i.arj = tail call ptr @fftw_plan_r2r(i32 noundef %i.are, ptr noundef %i.aqq, ptr noundef %i.arg, ptr noundef %i.ari, ptr noundef %i.amz, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.aqq) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.i:                   ; preds = %bb.fv, %bb.fu
  %i.ark = load i32, ptr %i.amv, align 8, !tbaa !57
  %i.arl = icmp eq i32 %i.ark, 1
  br i1 %i.arl, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %expressible_as_api_many.exit.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 484, ptr noundef nonnull @.str.6) #6
  %.pre138.i = load i32, ptr %i.amt, align 8, !tbaa !57
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %expressible_as_api_many.exit.i
  %i.arm = phi i32 [ %.pre138.i, %bb.gm ], [ %i.aoa, %expressible_as_api_many.exit.i ]
  %i.arn = sext i32 %i.arm to i64
  %i.aro = shl nsw i64 %i.arn, 3
  %i.arp = tail call ptr @bench_malloc(i64 noundef %i.aro) #6 ; 3 uses
  %i.arq = load i32, ptr %i.amt, align 8, !tbaa !57 ; 2 uses
  %i.arr = icmp sgt i32 %i.arq, 0
  br i1 %i.arr, label %.lr.ph.i111.i, label %.mkn.exit114_crit_edge.i

.mkn.exit114_crit_edge.i:                         ; preds = %bb.gn
  %.pre143.i = sext i32 %i.arq to i64
  br label %mkn.exit114.i

.lr.ph.i111.i:                                    ; preds = %bb.gn
  %i.ars = load ptr, ptr %i.aoc, align 8, !tbaa !58
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ 0, %.lr.ph.i111.i ], [ %indvars.iv.next.i113.i, %bb.go ] ; 3 uses
  %i.art = getelementptr inbounds nuw [12 x i8], ptr %i.ars, i64 %indvars.iv.i112.i
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !67
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.arp, i64 %indvars.iv.i112.i
  store i32 %i.aru, ptr %i.arv, align 4, !tbaa !59
  %indvars.iv.next.i113.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.arw = load i32, ptr %i.amt, align 8, !tbaa !57
  %i.arx = sext i32 %i.arw to i64                 ; 2 uses
  %i.ary = icmp slt i64 %indvars.iv.next.i113.i, %i.arx
  br i1 %i.ary, label %bb.go, label %mkn.exit114.i, !llvm.loop !13

mkn.exit114.i:                                    ; preds = %bb.go, %.mkn.exit114_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre143.i, %.mkn.exit114_crit_edge.i ], [ %i.arx, %bb.go ]
  %i.arz = shl nsw i64 %.pre-phi.i, 3
  %i.asa = tail call ptr @bench_malloc(i64 noundef %i.arz) #6 ; 6 uses
  %i.asb = load i32, ptr %i.amt, align 8, !tbaa !57
  %i.asc = sext i32 %i.asb to i64
  %i.asd = shl nsw i64 %i.asc, 3
  %i.ase = tail call ptr @bench_malloc(i64 noundef %i.asd) #6 ; 6 uses
  %i.asf = load i32, ptr %i.amt, align 8, !tbaa !57 ; 2 uses
  %.not.i115.i = icmp eq i32 %i.asf, 2147483647
  br i1 %.not.i115.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %mkn.exit114.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i119.i = load i32, ptr %i.amt, align 8, !tbaa !57
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %mkn.exit114.i
  %i.asg = phi i32 [ %.pre.i119.i, %bb.gp ], [ %i.asf, %mkn.exit114.i ] ; 3 uses
  %i.ash = icmp sgt i32 %i.asg, 1
  br i1 %i.ash, label %.lr.ph.i116.i, label %mknembed_many.exit.i

.lr.ph.i116.i:                                    ; preds = %bb.gq
  %i.asi = add nsw i32 %i.asg, -1                 ; 3 uses
  %i.asj = load ptr, ptr %i.aoc, align 8, !tbaa !58 ; 7 uses
  %i.ask = zext i32 %i.asi to i64                 ; 6 uses
  %8 = icmp ne i32 %i.asi, 0
  %.neg = sext i1 %8 to i64
  %i.asl = zext nneg i32 %i.asg to i64
  %i.asm = add nsw i64 %.neg, %i.asl              ; 3 uses
  %min.iters.check = icmp ult i64 %i.asm, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i116.i
  %.not = icmp eq i32 %i.asi, 0                   ; 2 uses
  %9 = select i1 %.not, i64 0, i64 4              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.asa, i64 %9 ; 2 uses
  %i.asn = shl nuw nsw i64 %i.ask, 2
  %i.aso = add nuw nsw i64 %i.asn, 4              ; 2 uses
  %scevgep122 = getelementptr i8, ptr %i.asa, i64 %i.aso ; 2 uses
  %scevgep123 = getelementptr i8, ptr %i.ase, i64 %9 ; 2 uses
  %scevgep124 = getelementptr i8, ptr %i.ase, i64 %i.aso ; 2 uses
  %10 = select i1 %.not, i64 -8, i64 4
  %scevgep125 = getelementptr i8, ptr %i.asj, i64 %10 ; 2 uses
  %i.asp = mul nuw nsw i64 %i.ask, 12
  %i.asq = getelementptr i8, ptr %i.asj, i64 %i.asp
  %scevgep126 = getelementptr i8, ptr %i.asq, i64 12 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep124
  %bound1 = icmp ult ptr %scevgep123, %scevgep122
  %found.conflict = and i1 %bound0, %bound1
  %bound0127 = icmp ult ptr %scevgep, %scevgep126
  %bound1128 = icmp ult ptr %scevgep125, %scevgep122
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx = or i1 %found.conflict, %found.conflict129
  %bound0130 = icmp ult ptr %scevgep123, %scevgep126
  %bound1131 = icmp ult ptr %scevgep125, %scevgep124
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx, %found.conflict132
  br i1 %conflict.rdx133, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.asm, -4                     ; 3 uses
  %i.asr = sub nsw i64 %i.ask, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ass = sub i64 %i.ask, %index                 ; 6 uses
  %i.ast = getelementptr [12 x i8], ptr %i.asj, i64 %i.ass ; 4 uses
  %i.asu = getelementptr [12 x i8], ptr %i.asj, i64 %i.ass ; 4 uses
  %i.asv = getelementptr [12 x i8], ptr %i.asj, i64 %i.ass ; 4 uses
  %i.asw = getelementptr [12 x i8], ptr %i.asj, i64 %i.ass ; 4 uses
  %i.asx = getelementptr i8, ptr %i.ast, i64 -8
  %i.asy = getelementptr i8, ptr %i.asu, i64 -20
  %i.asz = getelementptr i8, ptr %i.asv, i64 -32
  %i.ata = getelementptr i8, ptr %i.asw, i64 -44
  %i.atb = load i32, ptr %i.asx, align 4, !tbaa !66, !alias.scope !80
  %i.atc = load i32, ptr %i.asy, align 4, !tbaa !66, !alias.scope !80
  %i.atd = load i32, ptr %i.asz, align 4, !tbaa !66, !alias.scope !80
  %i.ate = load i32, ptr %i.ata, align 4, !tbaa !66, !alias.scope !80
  %i.atf = insertelement <4 x i32> poison, i32 %i.ate, i64 0
  %i.atg = insertelement <4 x i32> %i.atf, i32 %i.atd, i64 1
  %i.ath = insertelement <4 x i32> %i.atg, i32 %i.atc, i64 2
  %i.ati = insertelement <4 x i32> %i.ath, i32 %i.atb, i64 3
  %i.atj = getelementptr i8, ptr %i.ast, i64 4
  %i.atk = getelementptr i8, ptr %i.asu, i64 -8
  %i.atl = getelementptr i8, ptr %i.asv, i64 -20
  %i.atm = getelementptr i8, ptr %i.asw, i64 -32
  %i.atn = load i32, ptr %i.atj, align 4, !tbaa !66, !alias.scope !80
  %i.ato = load i32, ptr %i.atk, align 4, !tbaa !66, !alias.scope !80
  %i.atp = load i32, ptr %i.atl, align 4, !tbaa !66, !alias.scope !80
  %i.atq = load i32, ptr %i.atm, align 4, !tbaa !66, !alias.scope !80
  %i.atr = insertelement <4 x i32> poison, i32 %i.atq, i64 0
  %i.ats = insertelement <4 x i32> %i.atr, i32 %i.atp, i64 1
  %i.att = insertelement <4 x i32> %i.ats, i32 %i.ato, i64 2
  %i.atu = insertelement <4 x i32> %i.att, i32 %i.atn, i64 3
  %reverse = sdiv <4 x i32> %i.ati, %i.atu
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %i.ass
  %i.atw = getelementptr inbounds i8, ptr %i.atv, i64 -12
  store <4 x i32> %reverse, ptr %i.atw, align 4, !tbaa !59, !alias.scope !81, !noalias !82
  %i.atx = getelementptr i8, ptr %i.ast, i64 -4
  %i.aty = getelementptr i8, ptr %i.asu, i64 -16
  %i.atz = getelementptr i8, ptr %i.asv, i64 -28
  %i.aua = getelementptr i8, ptr %i.asw, i64 -40
  %i.aub = load i32, ptr %i.atx, align 4, !tbaa !61, !alias.scope !80
  %i.auc = load i32, ptr %i.aty, align 4, !tbaa !61, !alias.scope !80
  %i.aud = load i32, ptr %i.atz, align 4, !tbaa !61, !alias.scope !80
  %i.aue = load i32, ptr %i.aua, align 4, !tbaa !61, !alias.scope !80
  %i.auf = insertelement <4 x i32> poison, i32 %i.aue, i64 0
  %i.aug = insertelement <4 x i32> %i.auf, i32 %i.aud, i64 1
  %i.auh = insertelement <4 x i32> %i.aug, i32 %i.auc, i64 2
  %i.aui = insertelement <4 x i32> %i.auh, i32 %i.aub, i64 3
  %i.auj = getelementptr i8, ptr %i.ast, i64 8
  %i.auk = getelementptr i8, ptr %i.asu, i64 -4
  %i.aul = getelementptr i8, ptr %i.asv, i64 -16
  %i.aum = getelementptr i8, ptr %i.asw, i64 -28
  %i.aun = load i32, ptr %i.auj, align 4, !tbaa !61, !alias.scope !80
  %i.auo = load i32, ptr %i.auk, align 4, !tbaa !61, !alias.scope !80
  %i.aup = load i32, ptr %i.aul, align 4, !tbaa !61, !alias.scope !80
  %i.auq = load i32, ptr %i.aum, align 4, !tbaa !61, !alias.scope !80
  %i.aur = insertelement <4 x i32> poison, i32 %i.auq, i64 0
  %i.aus = insertelement <4 x i32> %i.aur, i32 %i.aup, i64 1
  %i.aut = insertelement <4 x i32> %i.aus, i32 %i.auo, i64 2
  %i.auu = insertelement <4 x i32> %i.aut, i32 %i.aun, i64 3
  %reverse134 = sdiv <4 x i32> %i.aui, %i.auu
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %i.ase, i64 %i.ass
  %i.auw = getelementptr inbounds i8, ptr %i.auv, i64 -12
  store <4 x i32> %reverse134, ptr %i.auw, align 4, !tbaa !59, !alias.scope !83, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aux = icmp eq i64 %index.next, %n.vec
  br i1 %i.aux, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.asm, %n.vec
  br i1 %cmp.n, label %mknembed_many.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i116.i, %middle.block
  %indvars.iv.i117.i.ph = phi i64 [ %i.ask, %vector.memcheck ], [ %i.ask, %.lr.ph.i116.i ], [ %i.asr, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i117.i = phi i64 [ %indvars.iv.next.i118.i, %scalar.ph ], [ %indvars.iv.i117.i.ph, %scalar.ph.preheader ] ; 4 uses
  %indvars.iv.next.i118.i = add nsw i64 %indvars.iv.i117.i, -1 ; 2 uses
  %i.auy = getelementptr inbounds nuw [12 x i8], ptr %i.asj, i64 %indvars.iv.next.i118.i ; 4 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 4
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !66
  %i.avb = getelementptr inbounds nuw i8, ptr %i.auy, i64 16
  %i.avc = load i32, ptr %i.avb, align 4, !tbaa !66
  %i.avd = sdiv i32 %i.ava, %i.avc
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %indvars.iv.i117.i
  store i32 %i.avd, ptr %i.ave, align 4, !tbaa !59
  %i.avf = getelementptr inbounds nuw i8, ptr %i.auy, i64 8
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !61
  %i.avh = getelementptr inbounds nuw i8, ptr %i.auy, i64 20
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !61
  %i.avj = sdiv i32 %i.avg, %i.avi
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.ase, i64 %indvars.iv.i117.i
  store i32 %i.avj, ptr %i.avk, align 4, !tbaa !59
  %i.avl = icmp samesign ugt i64 %indvars.iv.i117.i, 1
  br i1 %i.avl, label %scalar.ph, label %mknembed_many.exit.i, !llvm.loop !40

mknembed_many.exit.i:                             ; preds = %scalar.ph, %middle.block, %bb.gq
  %i.avm = load i32, ptr @verbose, align 4, !tbaa !59
  %i.avn = icmp sgt i32 %i.avm, 2
  br i1 %i.avn, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %mknembed_many.exit.i
  %puts105.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %mknembed_many.exit.i
  %i.avo = load i32, ptr %i.amt, align 8, !tbaa !57 ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !58 ; 3 uses
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !67
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !53
  %i.avu = load ptr, ptr %i.aoc, align 8, !tbaa !58
  %i.avv = sext i32 %i.avo to i64
  %i.avw = getelementptr [12 x i8], ptr %i.avu, i64 %i.avv ; 2 uses
  %i.avx = getelementptr i8, ptr %i.avw, i64 -8
  %i.avy = load i32, ptr %i.avx, align 4, !tbaa !66
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avq, i64 4
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !66
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !55
  %i.awd = getelementptr i8, ptr %i.avw, i64 -4
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !61
  %i.awf = getelementptr inbounds nuw i8, ptr %i.avq, i64 8
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !61
  %i.awh = tail call ptr @fftw_plan_many_r2r(i32 noundef %i.avo, ptr noundef %i.arp, i32 noundef %i.avr, ptr noundef %i.avt, ptr noundef %i.asa, i32 noundef %i.avy, i32 noundef %i.awa, ptr noundef %i.awc, ptr noundef %i.ase, i32 noundef %i.awe, i32 noundef %i.awg, ptr noundef %i.amz, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.arp) #6
  tail call void @bench_free(ptr noundef %i.asa) #6
  tail call void @bench_free(ptr noundef %i.ase) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.thread.i:            ; preds = %bb.fx, %bb.fw, %bb.fr
  %i.awi = phi i32 [ %.pre139.i, %bb.fr ], [ %i.aoa, %bb.fw ], [ %i.aoa, %bb.fx ] ; 2 uses
  %i.awj = icmp sgt i32 %i.awi, -1
  br i1 %i.awj, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %expressible_as_api_many.exit.thread.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i31 = load i32, ptr %i.amt, align 8, !tbaa !57
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %expressible_as_api_many.exit.thread.i
  %i.awk = phi i32 [ %.pr.i.i31, %bb.gt ], [ %i.awi, %expressible_as_api_many.exit.thread.i ] ; 2 uses
  %i.awl = icmp eq i32 %i.awk, 0
  br i1 %i.awl, label %bench_tensor_to_fftw_iodim.exit.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.awm = sext i32 %i.awk to i64
  %i.awn = mul nsw i64 %i.awm, 12
  %i.awo = tail call ptr @bench_malloc(i64 noundef %i.awn) #6 ; 8 uses
  %i.awp = load i32, ptr %i.amt, align 8, !tbaa !57 ; 3 uses
  %i.awq = icmp sgt i32 %i.awp, 0
  br i1 %i.awq, label %.lr.ph.i120.i, label %bench_tensor_to_fftw_iodim.exit.i

.lr.ph.i120.i:                                    ; preds = %bb.gv
  %i.awr = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.awp to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.awt = icmp ult i32 %i.awp, 4
  br i1 %i.awt, label %.epil.preheader, label %.lr.ph.i120.i.new

.lr.ph.i120.i.new:                                ; preds = %.lr.ph.i120.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gw, %.lr.ph.i120.i.new
  %indvars.iv.i121.i = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %indvars.iv.next.i122.i.3, %bb.gw ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %niter.next.3, %bb.gw ]
  %i.awu = getelementptr inbounds nuw [12 x i8], ptr %i.aws, i64 %indvars.iv.i121.i ; 2 uses
  %i.awv = getelementptr inbounds nuw [12 x i8], ptr %i.awo, i64 %indvars.iv.i121.i ; 2 uses
  %i.aww = load <2 x i32>, ptr %i.awu, align 4, !tbaa !59
  store <2 x i32> %i.aww, ptr %i.awv, align 4, !tbaa !59
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awu, i64 8
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !61
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awv, i64 8
  store i32 %i.awy, ptr %i.awz, align 4, !tbaa !63
  %indvars.iv.next.i122.i = or disjoint i64 %indvars.iv.i121.i, 1 ; 2 uses
  %i.axa = getelementptr inbounds nuw [12 x i8], ptr %i.aws, i64 %indvars.iv.next.i122.i ; 2 uses
end_hunk_2
