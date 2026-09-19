Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/bench?download=true
inline.NumInlined: 38
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mkplan:bb.a

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
  %i.hv = add nsw i32 %i.ht, -1
  %i.hw = load ptr, ptr %i.dq, align 8, !tbaa !58 ; 7 uses
  %i.hx = zext i32 %i.hv to i64                   ; 8 uses
  %min.iters.check186 = icmp ult i32 %i.ht, 5
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i79.i.i
  %scevgep168.a = getelementptr i8, ptr %i.hn, i64 4 ; 2 uses
  %i.hy = shl nuw nsw i64 %i.hx, 2
  %i.hz = add nuw nsw i64 %i.hy, 4                ; 2 uses
  %scevgep169.a = getelementptr i8, ptr %i.hn, i64 %i.hz ; 2 uses
  %scevgep170.a = getelementptr i8, ptr %i.hr, i64 4 ; 2 uses
  %scevgep171.a = getelementptr i8, ptr %i.hr, i64 %i.hz ; 2 uses
  %scevgep172 = getelementptr i8, ptr %i.hw, i64 4 ; 2 uses
  %i.ia = mul nuw nsw i64 %i.hx, 12
  %i.ib = getelementptr i8, ptr %i.hw, i64 %i.ia
  %scevgep173 = getelementptr i8, ptr %i.ib, i64 12 ; 2 uses
  %bound0174 = icmp ult ptr %scevgep168.a, %scevgep171.a
  %bound1175 = icmp ult ptr %scevgep170.a, %scevgep169.a
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0177 = icmp ult ptr %scevgep168.a, %scevgep173
  %bound1178 = icmp ult ptr %scevgep172, %scevgep169.a
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %found.conflict176, %found.conflict179
  %bound0181 = icmp ult ptr %scevgep170.a, %scevgep173
  %bound1182 = icmp ult ptr %scevgep172, %scevgep171.a
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  br i1 %conflict.rdx184, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %vector.memcheck166
  %n.vec188 = and i64 %i.hx, 4294967292           ; 2 uses
  %2 = and i64 %i.hx, 3
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next193, %vector.body189 ] ; 2 uses
  %i.ic = sub i64 %i.hx, %index190                ; 6 uses
  %i.id = getelementptr [12 x i8], ptr %i.hw, i64 %i.ic ; 4 uses
  %i.ie = getelementptr [12 x i8], ptr %i.hw, i64 %i.ic ; 4 uses
  %i.if = getelementptr [12 x i8], ptr %i.hw, i64 %i.ic ; 4 uses
  %i.ig = getelementptr [12 x i8], ptr %i.hw, i64 %i.ic ; 4 uses
  %i.ih = getelementptr i8, ptr %i.id, i64 -8
  %i.ii = getelementptr i8, ptr %i.ie, i64 -20
  %i.ij = getelementptr i8, ptr %i.if, i64 -32
  %i.ik = getelementptr i8, ptr %i.ig, i64 -44
  %i.il = load i32, ptr %i.ih, align 4, !tbaa !66, !alias.scope !68
  %i.im = load i32, ptr %i.ii, align 4, !tbaa !66, !alias.scope !68
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !66, !alias.scope !68
  %i.io = load i32, ptr %i.ik, align 4, !tbaa !66, !alias.scope !68
  %i.ip = insertelement <4 x i32> poison, i32 %i.io, i64 0
  %i.iq = insertelement <4 x i32> %i.ip, i32 %i.in, i64 1
  %i.ir = insertelement <4 x i32> %i.iq, i32 %i.im, i64 2
  %i.is = insertelement <4 x i32> %i.ir, i32 %i.il, i64 3
  %i.it = getelementptr i8, ptr %i.id, i64 4
  %i.iu = getelementptr i8, ptr %i.ie, i64 -8
  %i.iv = getelementptr i8, ptr %i.if, i64 -20
  %i.iw = getelementptr i8, ptr %i.ig, i64 -32
  %i.ix = load i32, ptr %i.it, align 4, !tbaa !66, !alias.scope !68
  %i.iy = load i32, ptr %i.iu, align 4, !tbaa !66, !alias.scope !68
  %i.iz = load i32, ptr %i.iv, align 4, !tbaa !66, !alias.scope !68
  %i.ja = load i32, ptr %i.iw, align 4, !tbaa !66, !alias.scope !68
  %i.jb = insertelement <4 x i32> poison, i32 %i.ja, i64 0
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.iz, i64 1
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iy, i64 2
  %i.je = insertelement <4 x i32> %i.jd, i32 %i.ix, i64 3
  %reverse191 = sdiv <4 x i32> %i.is, %i.je
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ic
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -12
  store <4 x i32> %reverse191, ptr %i.jg, align 4, !tbaa !59, !alias.scope !69, !noalias !70
  %i.jh = getelementptr i8, ptr %i.id, i64 -4
  %i.ji = getelementptr i8, ptr %i.ie, i64 -16
  %i.jj = getelementptr i8, ptr %i.if, i64 -28
  %i.jk = getelementptr i8, ptr %i.ig, i64 -40
  %i.jl = load i32, ptr %i.jh, align 4, !tbaa !61, !alias.scope !68
  %i.jm = load i32, ptr %i.ji, align 4, !tbaa !61, !alias.scope !68
  %i.jn = load i32, ptr %i.jj, align 4, !tbaa !61, !alias.scope !68
  %i.jo = load i32, ptr %i.jk, align 4, !tbaa !61, !alias.scope !68
  %i.jp = insertelement <4 x i32> poison, i32 %i.jo, i64 0
  %i.jq = insertelement <4 x i32> %i.jp, i32 %i.jn, i64 1
  %i.jr = insertelement <4 x i32> %i.jq, i32 %i.jm, i64 2
  %i.js = insertelement <4 x i32> %i.jr, i32 %i.jl, i64 3
  %i.jt = getelementptr i8, ptr %i.id, i64 8
  %i.ju = getelementptr i8, ptr %i.ie, i64 -4
  %i.jv = getelementptr i8, ptr %i.if, i64 -16
  %i.jw = getelementptr i8, ptr %i.ig, i64 -28
  %i.jx = load i32, ptr %i.jt, align 4, !tbaa !61, !alias.scope !68
  %i.jy = load i32, ptr %i.ju, align 4, !tbaa !61, !alias.scope !68
  %i.jz = load i32, ptr %i.jv, align 4, !tbaa !61, !alias.scope !68
  %i.ka = load i32, ptr %i.jw, align 4, !tbaa !61, !alias.scope !68
  %i.kb = insertelement <4 x i32> poison, i32 %i.ka, i64 0
  %i.kc = insertelement <4 x i32> %i.kb, i32 %i.jz, i64 1
  %i.kd = insertelement <4 x i32> %i.kc, i32 %i.jy, i64 2
  %i.ke = insertelement <4 x i32> %i.kd, i32 %i.jx, i64 3
  %reverse192 = sdiv <4 x i32> %i.js, %i.ke
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ic
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -12
  store <4 x i32> %reverse192, ptr %i.kg, align 4, !tbaa !59, !alias.scope !71, !noalias !68
  %index.next193 = add nuw i64 %index190, 4       ; 2 uses
  %i.kh = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.kh, label %middle.block194, label %vector.body189, !llvm.loop !18

middle.block194:                                  ; preds = %vector.body189
  %cmp.n195 = icmp eq i64 %n.vec188, %i.hx
  br i1 %cmp.n195, label %mknembed_many.exit.i.i, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %vector.memcheck166, %.lr.ph.i79.i.i, %middle.block194
  %indvars.iv.i80.i.i.ph = phi i64 [ %i.hx, %vector.memcheck166 ], [ %i.hx, %.lr.ph.i79.i.i ], [ %2, %middle.block194 ]
  br label %scalar.ph185

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv.i80.i.i = phi i64 [ %indvars.iv.next.i81.i.i, %scalar.ph185 ], [ %indvars.iv.i80.i.i.ph, %scalar.ph185.preheader ] ; 4 uses
  %indvars.iv.next.i81.i.i = add nsw i64 %indvars.iv.i80.i.i, -1 ; 2 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %indvars.iv.next.i81.i.i ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !66
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !66
  %i.kn = sdiv i32 %i.kk, %i.km
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i80.i.i
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !59
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !61
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !61
  %i.kt = sdiv i32 %i.kq, %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.i80.i.i
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !59
  %i.kv = icmp samesign ugt i64 %indvars.iv.i80.i.i, 1
  br i1 %i.kv, label %scalar.ph185, label %mknembed_many.exit.i.i, !llvm.loop !19

mknembed_many.exit.i.i:                           ; preds = %scalar.ph185, %middle.block194, %bb.aq
  %i.kw = load i32, ptr @verbose, align 4, !tbaa !59
  %i.kx = icmp sgt i32 %i.kw, 2
  br i1 %i.kx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %mknembed_many.exit.i.i
  %puts68.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %mknembed_many.exit.i.i
  %i.ky = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !58 ; 3 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !67
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !53
  %i.le = load ptr, ptr %i.dq, align 8, !tbaa !58
  %i.lf = sext i32 %i.ky to i64
  %i.lg = getelementptr [12 x i8], ptr %i.le, i64 %i.lf ; 2 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 -8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !66
  %i.lj = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !66
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !55
  %i.ln = getelementptr i8, ptr %i.lg, i64 -4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !61
  %i.lp = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !61
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !51
  %i.lt = tail call ptr @fftw_plan_many_dft(i32 noundef %i.ky, ptr noundef %i.hc, i32 noundef %i.lb, ptr noundef %i.ld, ptr noundef %i.hn, i32 noundef %i.li, i32 noundef %i.lk, ptr noundef %i.lm, ptr noundef %i.hr, i32 noundef %i.lo, i32 noundef %i.lq, i32 noundef %i.ls, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.hc) #6
  tail call void @bench_free(ptr noundef %i.hn) #6
  tail call void @bench_free(ptr noundef %i.hr) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i:          ; preds = %bb.x, %bb.w, %bb.r
  %i.lu = phi i32 [ %.pre100.i.i, %bb.r ], [ %i.do, %bb.w ], [ %i.do, %bb.x ] ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, -1
  br i1 %i.lv, label %bb.au, label %bb.at

bb.at:                                            ; preds = %expressible_as_api_many.exit.thread.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i5.i = load i32, ptr %i.e, align 8, !tbaa !57
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %expressible_as_api_many.exit.thread.i.i
  %i.lw = phi i32 [ %.pr.i.i5.i, %bb.at ], [ %i.lu, %expressible_as_api_many.exit.thread.i.i ] ; 2 uses
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bench_tensor_to_fftw_iodim.exit.i6.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ly = sext i32 %i.lw to i64
  %i.lz = mul nsw i64 %i.ly, 12
  %i.ma = tail call ptr @bench_malloc(i64 noundef %i.lz) #6 ; 8 uses
  %i.mb = load i32, ptr %i.e, align 8, !tbaa !57  ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph.i83.i.i, label %bench_tensor_to_fftw_iodim.exit.i6.i

.lr.ph.i83.i.i:                                   ; preds = %bb.av
  %i.md = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i.i9.i = zext nneg i32 %i.mb to i64 ; 2 uses
  %xtraiter274 = and i64 %wide.trip.count.i.i9.i, 3 ; 3 uses
  %i.mf = icmp ult i32 %i.mb, 4
  br i1 %i.mf, label %.epil.preheader273, label %.lr.ph.i83.i.i.new

.lr.ph.i83.i.i.new:                               ; preds = %.lr.ph.i83.i.i
  %unroll_iter278 = and i64 %wide.trip.count.i.i9.i, 2147483644
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i83.i.i.new
  %indvars.iv.i84.i.i = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %indvars.iv.next.i85.i.i.3, %bb.aw ] ; 6 uses
  %niter279 = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %niter279.next.3, %bb.aw ]
  %i.mg = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.ma, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.mi = load <2 x i32>, ptr %i.mg, align 4, !tbaa !59
  store <2 x i32> %i.mi, ptr %i.mh, align 4, !tbaa !59
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !61
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !63
  %indvars.iv.next.i85.i.i = or disjoint i64 %indvars.iv.i84.i.i, 1 ; 2 uses
  %i.mm = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %indvars.iv.next.i85.i.i ; 2 uses
  %i.mn = getelementptr inbounds nuw [12 x i8], ptr %i.ma, i64 %indvars.iv.next.i85.i.i ; 2 uses
  %i.mo = load <2 x i32>, ptr %i.mm, align 4, !tbaa !59
  store <2 x i32> %i.mo, ptr %i.mn, align 4, !tbaa !59
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !61
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !63
  %indvars.iv.next.i85.i.i.1 = or disjoint i64 %indvars.iv.i84.i.i, 2 ; 2 uses
  %i.ms = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %indvars.iv.next.i85.i.i.1 ; 2 uses
  %i.mt = getelementptr inbounds nuw [12 x i8], ptr %i.ma, i64 %indvars.iv.next.i85.i.i.1 ; 2 uses
  %i.mu = load <2 x i32>, ptr %i.ms, align 4, !tbaa !59
  store <2 x i32> %i.mu, ptr %i.mt, align 4, !tbaa !59
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !61
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !63
  %indvars.iv.next.i85.i.i.2 = or disjoint i64 %indvars.iv.i84.i.i, 3 ; 2 uses
  %i.my = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %indvars.iv.next.i85.i.i.2 ; 2 uses
  %i.mz = getelementptr inbounds nuw [12 x i8], ptr %i.ma, i64 %indvars.iv.next.i85.i.i.2 ; 2 uses
  %i.na = load <2 x i32>, ptr %i.my, align 4, !tbaa !59
  store <2 x i32> %i.na, ptr %i.mz, align 4, !tbaa !59
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !61
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !63
  %indvars.iv.next.i85.i.i.3 = add nuw nsw i64 %indvars.iv.i84.i.i, 4 ; 2 uses
  %niter279.next.3 = add i64 %niter279, 4         ; 2 uses
  %niter279.ncmp.3 = icmp eq i64 %niter279.next.3, %unroll_iter278
  br i1 %niter279.ncmp.3, label %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa, label %bb.aw, !llvm.loop !9

bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa: ; preds = %bb.aw
  %lcmp.mod276.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod276.not, label %bench_tensor_to_fftw_iodim.exit.i6.i, label %.epil.preheader273

.epil.preheader273:                               ; preds = %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa, %.lr.ph.i83.i.i
  %indvars.iv.i84.i.i.epil.init = phi i64 [ 0, %.lr.ph.i83.i.i ], [ %indvars.iv.next.i85.i.i.3, %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa ]
  %lcmp.mod277 = icmp ne i64 %xtraiter274, 0
  tail call void @llvm.assume(i1 %lcmp.mod277)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader273
  %indvars.iv.i84.i.i.epil = phi i64 [ %indvars.iv.i84.i.i.epil.init, %.epil.preheader273 ], [ %indvars.iv.next.i85.i.i.epil, %bb.ax ] ; 3 uses
  %epil.iter275 = phi i64 [ 0, %.epil.preheader273 ], [ %epil.iter275.next, %bb.ax ]
  %i.ne = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %indvars.iv.i84.i.i.epil ; 2 uses
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.ma, i64 %indvars.iv.i84.i.i.epil ; 2 uses
  %i.ng = load <2 x i32>, ptr %i.ne, align 4, !tbaa !59
  store <2 x i32> %i.ng, ptr %i.nf, align 4, !tbaa !59
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !61
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 %i.ni, ptr %i.nj, align 4, !tbaa !63
  %indvars.iv.next.i85.i.i.epil = add nuw nsw i64 %indvars.iv.i84.i.i.epil, 1
  %epil.iter275.next = add i64 %epil.iter275, 1   ; 2 uses
  %epil.iter275.cmp.not = icmp eq i64 %epil.iter275.next, %xtraiter274
  br i1 %epil.iter275.cmp.not, label %bench_tensor_to_fftw_iodim.exit.i6.i, label %bb.ax, !llvm.loop !20

bench_tensor_to_fftw_iodim.exit.i6.i:             ; preds = %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa, %bb.ax, %bb.av, %bb.au
  %.019.i.i7.i = phi ptr [ null, %bb.au ], [ %i.ma, %bb.av ], [ %i.ma, %bb.ax ], [ %i.ma, %bench_tensor_to_fftw_iodim.exit.i6.i.loopexit.unr-lcssa ] ; 2 uses
  %i.nk = load i32, ptr %i.g, align 8, !tbaa !57  ; 2 uses
  %i.nl = icmp sgt i32 %i.nk, -1
  br i1 %i.nl, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bench_tensor_to_fftw_iodim.exit.i6.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i86.i.i = load i32, ptr %i.g, align 8, !tbaa !57
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bench_tensor_to_fftw_iodim.exit.i6.i
  %i.nm = phi i32 [ %.pr.i86.i.i, %bb.ay ], [ %i.nk, %bench_tensor_to_fftw_iodim.exit.i6.i ] ; 2 uses
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %bench_tensor_to_fftw_iodim.exit93.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.no = sext i32 %i.nm to i64
  %i.np = mul nsw i64 %i.no, 12
  %i.nq = tail call ptr @bench_malloc(i64 noundef %i.np) #6 ; 8 uses
  %i.nr = load i32, ptr %i.g, align 8, !tbaa !57  ; 6 uses
  %i.ns = icmp sgt i32 %i.nr, 0
  br i1 %i.ns, label %.lr.ph.i88.i.i, label %bench_tensor_to_fftw_iodim.exit93.i.i

.lr.ph.i88.i.i:                                   ; preds = %bb.ba
  %i.nt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i89.i.i = zext nneg i32 %i.nr to i64 ; 2 uses
  %xtraiter281 = and i64 %wide.trip.count.i89.i.i, 3 ; 3 uses
  %i.nv = icmp ult i32 %i.nr, 4
  br i1 %i.nv, label %.epil.preheader280, label %.lr.ph.i88.i.i.new

.lr.ph.i88.i.i.new:                               ; preds = %.lr.ph.i88.i.i
  %unroll_iter285 = and i64 %wide.trip.count.i89.i.i, 2147483644
  br label %bb.bb

end_hunk_0
begin_hunk_1_@mkplan:bb.a
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.wx = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !58 ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !67
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 12
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !67
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !53
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !55
  %i.xg = tail call ptr @fftw_plan_dft_c2r_2d(i32 noundef %i.wz, i32 noundef %i.xb, ptr noundef %i.xd, ptr noundef %i.xf, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.cx:                                            ; preds = %bb.ci
  %i.xh = load i32, ptr %i.un, align 8, !tbaa !51
  %i.xi = icmp slt i32 %i.xh, 0
  %i.xj = load i32, ptr @verbose, align 4, !tbaa !59
  %i.xk = icmp sgt i32 %i.xj, 2                   ; 2 uses
  br i1 %i.xi, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.xk, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %puts118.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.xl = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !58 ; 3 uses
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !67
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 12
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !67
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !67
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !53
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !55
  %i.xw = tail call ptr @fftw_plan_dft_r2c_3d(i32 noundef %i.xn, i32 noundef %i.xp, i32 noundef %i.xr, ptr noundef %i.xt, ptr noundef %i.xv, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.db:                                            ; preds = %bb.cx
  br i1 %i.xk, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %puts117.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.xx = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !58 ; 3 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !67
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 12
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !67
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !67
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !53
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !55
  %i.yi = tail call ptr @fftw_plan_dft_c2r_3d(i32 noundef %i.xz, i32 noundef %i.yb, i32 noundef %i.yd, ptr noundef %i.yf, ptr noundef %i.yh, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.de:                                            ; preds = %bb.ci
  %i.yj = sext i32 %i.vo to i64
  %i.yk = shl nsw i64 %i.yj, 3
  %i.yl = tail call ptr @bench_malloc(i64 noundef %i.yk) #6 ; 4 uses
  %i.ym = load i32, ptr %i.pp, align 8, !tbaa !57 ; 2 uses
  %i.yn = icmp sgt i32 %i.ym, 0
  br i1 %i.yn, label %.lr.ph.i.i14.i, label %mkn.exit.i.i28

.lr.ph.i.i14.i:                                   ; preds = %bb.de
  %i.yo = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !58
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph.i.i14.i
  %indvars.iv.i125.i.i = phi i64 [ 0, %.lr.ph.i.i14.i ], [ %indvars.iv.next.i.i15.i, %bb.df ] ; 3 uses
  %i.yq = getelementptr inbounds nuw [12 x i8], ptr %i.yp, i64 %indvars.iv.i125.i.i
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !67
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %indvars.iv.i125.i.i
  store i32 %i.yr, ptr %i.ys, align 4, !tbaa !59
  %indvars.iv.next.i.i15.i = add nuw nsw i64 %indvars.iv.i125.i.i, 1 ; 2 uses
  %i.yt = load i32, ptr %i.pp, align 8, !tbaa !57 ; 2 uses
  %i.yu = sext i32 %i.yt to i64
  %i.yv = icmp slt i64 %indvars.iv.next.i.i15.i, %i.yu
  br i1 %i.yv, label %bb.df, label %mkn.exit.i.i28, !llvm.loop !13

mkn.exit.i.i28:                                   ; preds = %bb.df, %bb.de
  %i.yw = phi i32 [ %i.ym, %bb.de ], [ %i.yt, %bb.df ] ; 2 uses
  %i.yx = load i32, ptr %i.un, align 8, !tbaa !51
  %i.yy = icmp slt i32 %i.yx, 0
  %i.yz = load i32, ptr @verbose, align 4, !tbaa !59
  %i.za = icmp sgt i32 %i.yz, 2                   ; 2 uses
  br i1 %i.yy, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.za, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %puts124.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %.pre169.i.i = load i32, ptr %i.pp, align 8, !tbaa !57
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zb = phi i32 [ %.pre169.i.i, %bb.dh ], [ %i.yw, %bb.dg ]
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !53
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !55
  %i.zg = tail call ptr @fftw_plan_dft_r2c(i32 noundef %i.zb, ptr noundef %i.yl, ptr noundef %i.zd, ptr noundef %i.zf, i32 noundef %1) #6
  br label %bb.dm

bb.dj:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.za, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %puts123.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %.pre.i13.i = load i32, ptr %i.pp, align 8, !tbaa !57
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.zh = phi i32 [ %.pre.i13.i, %bb.dk ], [ %i.yw, %bb.dj ]
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !53
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !55
  %i.zm = tail call ptr @fftw_plan_dft_c2r(i32 noundef %i.zh, ptr noundef %i.yl, ptr noundef %i.zj, ptr noundef %i.zl, i32 noundef %1) #6
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.di
  %.0110.i.i = phi ptr [ %i.zg, %bb.di ], [ %i.zm, %bb.dl ]
  tail call void @bench_free(ptr noundef %i.yl) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.i.i21:               ; preds = %bb.cf, %bb.ce
  %i.zn = load i32, ptr %i.pr, align 8, !tbaa !57
  %i.zo = icmp eq i32 %i.zn, 1
  br i1 %i.zo, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %expressible_as_api_many.exit.i.i21
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 236, ptr noundef nonnull @.str.6) #6
  %.pre170.i.i = load i32, ptr %i.pp, align 8, !tbaa !57
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %expressible_as_api_many.exit.i.i21
  %i.zp = phi i32 [ %.pre170.i.i, %bb.dn ], [ %i.uu, %expressible_as_api_many.exit.i.i21 ]
  %i.zq = sext i32 %i.zp to i64
  %i.zr = shl nsw i64 %i.zq, 3
  %i.zs = tail call ptr @bench_malloc(i64 noundef %i.zr) #6 ; 4 uses
  %i.zt = load i32, ptr %i.pp, align 8, !tbaa !57 ; 2 uses
  %i.zu = icmp sgt i32 %i.zt, 0
  br i1 %i.zu, label %.lr.ph.i126.i.i, label %.mkn.exit129_crit_edge.i.i

.mkn.exit129_crit_edge.i.i:                       ; preds = %bb.do
  %.pre173.i.i = sext i32 %i.zt to i64
  br label %mkn.exit129.i.i

.lr.ph.i126.i.i:                                  ; preds = %bb.do
  %i.zv = load ptr, ptr %i.uw, align 8, !tbaa !58
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %.lr.ph.i126.i.i
  %indvars.iv.i127.i.i = phi i64 [ 0, %.lr.ph.i126.i.i ], [ %indvars.iv.next.i128.i.i, %bb.dp ] ; 3 uses
  %i.zw = getelementptr inbounds nuw [12 x i8], ptr %i.zv, i64 %indvars.iv.i127.i.i
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !67
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %indvars.iv.i127.i.i
  store i32 %i.zx, ptr %i.zy, align 4, !tbaa !59
  %indvars.iv.next.i128.i.i = add nuw nsw i64 %indvars.iv.i127.i.i, 1 ; 2 uses
  %i.zz = load i32, ptr %i.pp, align 8, !tbaa !57
  %i.aaa = sext i32 %i.zz to i64                  ; 2 uses
  %i.aab = icmp slt i64 %indvars.iv.next.i128.i.i, %i.aaa
  br i1 %i.aab, label %bb.dp, label %mkn.exit129.i.i, !llvm.loop !13

mkn.exit129.i.i:                                  ; preds = %bb.dp, %.mkn.exit129_crit_edge.i.i
  %.pre-phi.i.i22 = phi i64 [ %.pre173.i.i, %.mkn.exit129_crit_edge.i.i ], [ %i.aaa, %bb.dp ]
  %i.aac = shl nsw i64 %.pre-phi.i.i22, 3
  %i.aad = tail call ptr @bench_malloc(i64 noundef %i.aac) #6 ; 7 uses
  %i.aae = load i32, ptr %i.pp, align 8, !tbaa !57
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = shl nsw i64 %i.aaf, 3
  %i.aah = tail call ptr @bench_malloc(i64 noundef %i.aag) #6 ; 7 uses
  %i.aai = load i32, ptr %i.pp, align 8, !tbaa !57 ; 2 uses
  %.not.i130.i.i = icmp eq i32 %i.aai, 2147483647
  br i1 %.not.i130.i.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %mkn.exit129.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i134.i.i = load i32, ptr %i.pp, align 8, !tbaa !57
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %mkn.exit129.i.i
  %i.aaj = phi i32 [ %.pre.i134.i.i, %bb.dq ], [ %i.aai, %mkn.exit129.i.i ] ; 3 uses
  %i.aak = icmp sgt i32 %i.aaj, 1
  br i1 %i.aak, label %.lr.ph.i131.i.i, label %mknembed_many.exit.i.i23

.lr.ph.i131.i.i:                                  ; preds = %bb.dr
  %i.aal = add nsw i32 %i.aaj, -1
  %i.aam = load ptr, ptr %i.uw, align 8, !tbaa !58 ; 7 uses
  %i.aan = zext i32 %i.aal to i64                 ; 8 uses
  %min.iters.check155 = icmp ult i32 %i.aaj, 5
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.i131.i.i
  %scevgep137.a = getelementptr i8, ptr %i.aad, i64 4 ; 2 uses
  %i.aao = shl nuw nsw i64 %i.aan, 2
  %i.aap = add nuw nsw i64 %i.aao, 4              ; 2 uses
  %scevgep138.a = getelementptr i8, ptr %i.aad, i64 %i.aap ; 2 uses
  %scevgep139.a = getelementptr i8, ptr %i.aah, i64 4 ; 2 uses
  %scevgep140.a = getelementptr i8, ptr %i.aah, i64 %i.aap ; 2 uses
  %scevgep141.a = getelementptr i8, ptr %i.aam, i64 4 ; 2 uses
  %i.aaq = mul nuw nsw i64 %i.aan, 12
  %i.aar = getelementptr i8, ptr %i.aam, i64 %i.aaq
  %scevgep142 = getelementptr i8, ptr %i.aar, i64 12 ; 2 uses
  %bound0143 = icmp ult ptr %scevgep137.a, %scevgep140.a
  %bound1144 = icmp ult ptr %scevgep139.a, %scevgep138.a
  %found.conflict145 = and i1 %bound0143, %bound1144
  %bound0146 = icmp ult ptr %scevgep137.a, %scevgep142
  %bound1147 = icmp ult ptr %scevgep141.a, %scevgep138.a
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %found.conflict145, %found.conflict148
  %bound0150 = icmp ult ptr %scevgep139.a, %scevgep142
  %bound1151 = icmp ult ptr %scevgep141.a, %scevgep140.a
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  br i1 %conflict.rdx153, label %scalar.ph154.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck135
  %n.vec157 = and i64 %i.aan, 4294967292          ; 2 uses
  %3 = and i64 %i.aan, 3
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 2 uses
  %i.aas = sub i64 %i.aan, %index159              ; 6 uses
  %i.aat = getelementptr [12 x i8], ptr %i.aam, i64 %i.aas ; 4 uses
  %i.aau = getelementptr [12 x i8], ptr %i.aam, i64 %i.aas ; 4 uses
  %i.aav = getelementptr [12 x i8], ptr %i.aam, i64 %i.aas ; 4 uses
  %i.aaw = getelementptr [12 x i8], ptr %i.aam, i64 %i.aas ; 4 uses
  %i.aax = getelementptr i8, ptr %i.aat, i64 -8
  %i.aay = getelementptr i8, ptr %i.aau, i64 -20
  %i.aaz = getelementptr i8, ptr %i.aav, i64 -32
  %i.aba = getelementptr i8, ptr %i.aaw, i64 -44
  %i.abb = load i32, ptr %i.aax, align 4, !tbaa !66, !alias.scope !75
  %i.abc = load i32, ptr %i.aay, align 4, !tbaa !66, !alias.scope !75
  %i.abd = load i32, ptr %i.aaz, align 4, !tbaa !66, !alias.scope !75
  %i.abe = load i32, ptr %i.aba, align 4, !tbaa !66, !alias.scope !75
  %i.abf = insertelement <4 x i32> poison, i32 %i.abe, i64 0
  %i.abg = insertelement <4 x i32> %i.abf, i32 %i.abd, i64 1
  %i.abh = insertelement <4 x i32> %i.abg, i32 %i.abc, i64 2
  %i.abi = insertelement <4 x i32> %i.abh, i32 %i.abb, i64 3
  %i.abj = getelementptr i8, ptr %i.aat, i64 4
  %i.abk = getelementptr i8, ptr %i.aau, i64 -8
  %i.abl = getelementptr i8, ptr %i.aav, i64 -20
  %i.abm = getelementptr i8, ptr %i.aaw, i64 -32
  %i.abn = load i32, ptr %i.abj, align 4, !tbaa !66, !alias.scope !75
  %i.abo = load i32, ptr %i.abk, align 4, !tbaa !66, !alias.scope !75
  %i.abp = load i32, ptr %i.abl, align 4, !tbaa !66, !alias.scope !75
  %i.abq = load i32, ptr %i.abm, align 4, !tbaa !66, !alias.scope !75
  %i.abr = insertelement <4 x i32> poison, i32 %i.abq, i64 0
  %i.abs = insertelement <4 x i32> %i.abr, i32 %i.abp, i64 1
  %i.abt = insertelement <4 x i32> %i.abs, i32 %i.abo, i64 2
  %i.abu = insertelement <4 x i32> %i.abt, i32 %i.abn, i64 3
  %reverse160.a = sdiv <4 x i32> %i.abi, %i.abu
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %i.aas
  %i.abw = getelementptr inbounds i8, ptr %i.abv, i64 -12
  store <4 x i32> %reverse160.a, ptr %i.abw, align 4, !tbaa !59, !alias.scope !76, !noalias !77
  %i.abx = getelementptr i8, ptr %i.aat, i64 -4
  %i.aby = getelementptr i8, ptr %i.aau, i64 -16
  %i.abz = getelementptr i8, ptr %i.aav, i64 -28
  %i.aca = getelementptr i8, ptr %i.aaw, i64 -40
  %i.acb = load i32, ptr %i.abx, align 4, !tbaa !61, !alias.scope !75
  %i.acc = load i32, ptr %i.aby, align 4, !tbaa !61, !alias.scope !75
  %i.acd = load i32, ptr %i.abz, align 4, !tbaa !61, !alias.scope !75
  %i.ace = load i32, ptr %i.aca, align 4, !tbaa !61, !alias.scope !75
  %i.acf = insertelement <4 x i32> poison, i32 %i.ace, i64 0
  %i.acg = insertelement <4 x i32> %i.acf, i32 %i.acd, i64 1
  %i.ach = insertelement <4 x i32> %i.acg, i32 %i.acc, i64 2
  %i.aci = insertelement <4 x i32> %i.ach, i32 %i.acb, i64 3
  %i.acj = getelementptr i8, ptr %i.aat, i64 8
  %i.ack = getelementptr i8, ptr %i.aau, i64 -4
  %i.acl = getelementptr i8, ptr %i.aav, i64 -16
  %i.acm = getelementptr i8, ptr %i.aaw, i64 -28
  %i.acn = load i32, ptr %i.acj, align 4, !tbaa !61, !alias.scope !75
  %i.aco = load i32, ptr %i.ack, align 4, !tbaa !61, !alias.scope !75
  %i.acp = load i32, ptr %i.acl, align 4, !tbaa !61, !alias.scope !75
  %i.acq = load i32, ptr %i.acm, align 4, !tbaa !61, !alias.scope !75
  %i.acr = insertelement <4 x i32> poison, i32 %i.acq, i64 0
  %i.acs = insertelement <4 x i32> %i.acr, i32 %i.acp, i64 1
  %i.act = insertelement <4 x i32> %i.acs, i32 %i.aco, i64 2
  %i.acu = insertelement <4 x i32> %i.act, i32 %i.acn, i64 3
  %reverse161 = sdiv <4 x i32> %i.aci, %i.acu
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %i.aas
  %i.acw = getelementptr inbounds i8, ptr %i.acv, i64 -12
  store <4 x i32> %reverse161, ptr %i.acw, align 4, !tbaa !59, !alias.scope !78, !noalias !75
  %index.next162 = add nuw i64 %index159, 4       ; 2 uses
  %i.acx = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.acx, label %middle.block163, label %vector.body158, !llvm.loop !28

middle.block163:                                  ; preds = %vector.body158
  %cmp.n164 = icmp eq i64 %n.vec157, %i.aan
  br i1 %cmp.n164, label %mknembed_many.exit.i.i23, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %vector.memcheck135, %.lr.ph.i131.i.i, %middle.block163
  %indvars.iv.i132.i.i.ph = phi i64 [ %i.aan, %vector.memcheck135 ], [ %i.aan, %.lr.ph.i131.i.i ], [ %3, %middle.block163 ]
  br label %scalar.ph154

scalar.ph154:                                     ; preds = %scalar.ph154.preheader, %scalar.ph154
  %indvars.iv.i132.i.i = phi i64 [ %indvars.iv.next.i133.i.i, %scalar.ph154 ], [ %indvars.iv.i132.i.i.ph, %scalar.ph154.preheader ] ; 4 uses
  %indvars.iv.next.i133.i.i = add nsw i64 %indvars.iv.i132.i.i, -1 ; 2 uses
  %i.acy = getelementptr inbounds nuw [12 x i8], ptr %i.aam, i64 %indvars.iv.next.i133.i.i ; 4 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !66
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !66
  %i.add = sdiv i32 %i.ada, %i.adc
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %indvars.iv.i132.i.i
  store i32 %i.add, ptr %i.ade, align 4, !tbaa !59
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !61
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acy, i64 20
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !61
  %i.adj = sdiv i32 %i.adg, %i.adi
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv.i132.i.i
  store i32 %i.adj, ptr %i.adk, align 4, !tbaa !59
  %i.adl = icmp samesign ugt i64 %indvars.iv.i132.i.i, 1
  br i1 %i.adl, label %scalar.ph154, label %mknembed_many.exit.i.i23, !llvm.loop !29

mknembed_many.exit.i.i23:                         ; preds = %scalar.ph154, %middle.block163, %bb.dr
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !51
  %i.ado = icmp slt i32 %i.adn, 0
  %i.adp = load i32, ptr @verbose, align 4, !tbaa !59
  %i.adq = icmp sgt i32 %i.adp, 2                 ; 2 uses
  br i1 %i.ado, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.adq, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %puts116.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.adr = load i32, ptr %i.pp, align 8, !tbaa !57 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !58 ; 3 uses
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !67
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !53
  %i.adx = load ptr, ptr %i.uw, align 8, !tbaa !58
  %i.ady = sext i32 %i.adr to i64
  %i.adz = getelementptr [12 x i8], ptr %i.adx, i64 %i.ady ; 2 uses
  %i.aea = getelementptr i8, ptr %i.adz, i64 -8
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !66
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adt, i64 4
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !66
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !55
  %i.aeg = getelementptr i8, ptr %i.adz, i64 -4
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !61
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adt, i64 8
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !61
  %i.aek = tail call ptr @fftw_plan_many_dft_r2c(i32 noundef %i.adr, ptr noundef %i.zs, i32 noundef %i.adu, ptr noundef %i.adw, ptr noundef %i.aad, i32 noundef %i.aeb, i32 noundef %i.aed, ptr noundef %i.aef, ptr noundef %i.aah, i32 noundef %i.aeh, i32 noundef %i.aej, i32 noundef %1) #6
  br label %bb.dy

bb.dv:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.adq, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %puts115.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.ael = load i32, ptr %i.pp, align 8, !tbaa !57 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !58 ; 3 uses
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !67
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !53
  %i.aer = load ptr, ptr %i.uw, align 8, !tbaa !58
  %i.aes = sext i32 %i.ael to i64
  %i.aet = getelementptr [12 x i8], ptr %i.aer, i64 %i.aes ; 2 uses
  %i.aeu = getelementptr i8, ptr %i.aet, i64 -8
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !66
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aen, i64 4
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !66
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !55
  %i.afa = getelementptr i8, ptr %i.aet, i64 -4
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !61
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !61
  %i.afe = tail call ptr @fftw_plan_many_dft_c2r(i32 noundef %i.ael, ptr noundef %i.zs, i32 noundef %i.aeo, ptr noundef %i.aeq, ptr noundef %i.aad, i32 noundef %i.aev, i32 noundef %i.aex, ptr noundef %i.aez, ptr noundef %i.aah, i32 noundef %i.afb, i32 noundef %i.afd, i32 noundef %1) #6
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.du
  %.1.i.i = phi ptr [ %i.aek, %bb.du ], [ %i.afe, %bb.dx ]
  tail call void @bench_free(ptr noundef %i.zs) #6
  tail call void @bench_free(ptr noundef %i.aad) #6
  tail call void @bench_free(ptr noundef %i.aah) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i19:        ; preds = %bb.ch, %bb.cg, %bb.cb
  %i.aff = phi i32 [ %.pre.i, %bb.cb ], [ %i.uu, %bb.cg ], [ %i.uu, %bb.ch ] ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !51
  %i.afi = icmp slt i32 %i.afh, 0
  %i.afj = icmp sgt i32 %i.aff, -1                ; 2 uses
  br i1 %i.afi, label %bb.dz, label %bb.em

bb.dz:                                            ; preds = %expressible_as_api_many.exit.thread.i.i19
  br i1 %i.afj, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i7.i = load i32, ptr %i.pp, align 8, !tbaa !57
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.afk = phi i32 [ %.pr.i.i7.i, %bb.ea ], [ %i.aff, %bb.dz ] ; 2 uses
  %i.afl = icmp eq i32 %i.afk, 0
  br i1 %i.afl, label %bench_tensor_to_fftw_iodim.exit.i8.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.afm = sext i32 %i.afk to i64
  %i.afn = mul nsw i64 %i.afm, 12
  %i.afo = tail call ptr @bench_malloc(i64 noundef %i.afn) #6 ; 8 uses
  %i.afp = load i32, ptr %i.pp, align 8, !tbaa !57 ; 3 uses
  %i.afq = icmp sgt i32 %i.afp, 0
  br i1 %i.afq, label %.lr.ph.i135.i.i, label %bench_tensor_to_fftw_iodim.exit.i8.i

.lr.ph.i135.i.i:                                  ; preds = %bb.ec
  %i.afr = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i.i10.i = zext nneg i32 %i.afp to i64 ; 2 uses
  %xtraiter246 = and i64 %wide.trip.count.i.i10.i, 3 ; 3 uses
  %i.aft = icmp ult i32 %i.afp, 4
  br i1 %i.aft, label %.epil.preheader245, label %.lr.ph.i135.i.i.new

.lr.ph.i135.i.i.new:                              ; preds = %.lr.ph.i135.i.i
  %unroll_iter250 = and i64 %wide.trip.count.i.i10.i, 2147483644
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %.lr.ph.i135.i.i.new
  %indvars.iv.i136.i.i = phi i64 [ 0, %.lr.ph.i135.i.i.new ], [ %indvars.iv.next.i137.i.i.3, %bb.ed ] ; 6 uses
  %niter251 = phi i64 [ 0, %.lr.ph.i135.i.i.new ], [ %niter251.next.3, %bb.ed ]
  %i.afu = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %indvars.iv.i136.i.i ; 2 uses
  %i.afv = getelementptr inbounds nuw [12 x i8], ptr %i.afo, i64 %indvars.iv.i136.i.i ; 2 uses
  %i.afw = load <2 x i32>, ptr %i.afu, align 4, !tbaa !59
  store <2 x i32> %i.afw, ptr %i.afv, align 4, !tbaa !59
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !61
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  store i32 %i.afy, ptr %i.afz, align 4, !tbaa !63
  %indvars.iv.next.i137.i.i = or disjoint i64 %indvars.iv.i136.i.i, 1 ; 2 uses
  %i.aga = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %indvars.iv.next.i137.i.i ; 2 uses
  %i.agb = getelementptr inbounds nuw [12 x i8], ptr %i.afo, i64 %indvars.iv.next.i137.i.i ; 2 uses
  %i.agc = load <2 x i32>, ptr %i.aga, align 4, !tbaa !59
  store <2 x i32> %i.agc, ptr %i.agb, align 4, !tbaa !59
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !61
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  store i32 %i.age, ptr %i.agf, align 4, !tbaa !63
  %indvars.iv.next.i137.i.i.1 = or disjoint i64 %indvars.iv.i136.i.i, 2 ; 2 uses
  %i.agg = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %indvars.iv.next.i137.i.i.1 ; 2 uses
  %i.agh = getelementptr inbounds nuw [12 x i8], ptr %i.afo, i64 %indvars.iv.next.i137.i.i.1 ; 2 uses
  %i.agi = load <2 x i32>, ptr %i.agg, align 4, !tbaa !59
  store <2 x i32> %i.agi, ptr %i.agh, align 4, !tbaa !59
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !61
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  store i32 %i.agk, ptr %i.agl, align 4, !tbaa !63
  %indvars.iv.next.i137.i.i.2 = or disjoint i64 %indvars.iv.i136.i.i, 3 ; 2 uses
  %i.agm = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %indvars.iv.next.i137.i.i.2 ; 2 uses
  %i.agn = getelementptr inbounds nuw [12 x i8], ptr %i.afo, i64 %indvars.iv.next.i137.i.i.2 ; 2 uses
  %i.ago = load <2 x i32>, ptr %i.agm, align 4, !tbaa !59
  store <2 x i32> %i.ago, ptr %i.agn, align 4, !tbaa !59
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !61
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  store i32 %i.agq, ptr %i.agr, align 4, !tbaa !63
  %indvars.iv.next.i137.i.i.3 = add nuw nsw i64 %indvars.iv.i136.i.i, 4 ; 2 uses
  %niter251.next.3 = add i64 %niter251, 4         ; 2 uses
  %niter251.ncmp.3 = icmp eq i64 %niter251.next.3, %unroll_iter250
  br i1 %niter251.ncmp.3, label %bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa, label %bb.ed, !llvm.loop !9

bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa: ; preds = %bb.ed
  %lcmp.mod248.not = icmp eq i64 %xtraiter246, 0
  br i1 %lcmp.mod248.not, label %bench_tensor_to_fftw_iodim.exit.i8.i, label %.epil.preheader245

.epil.preheader245:                               ; preds = %bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa, %.lr.ph.i135.i.i
  %indvars.iv.i136.i.i.epil.init = phi i64 [ 0, %.lr.ph.i135.i.i ], [ %indvars.iv.next.i137.i.i.3, %bench_tensor_to_fftw_iodim.exit.i8.i.loopexit.unr-lcssa ]
  %lcmp.mod249 = icmp ne i64 %xtraiter246, 0
  tail call void @llvm.assume(i1 %lcmp.mod249)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %.epil.preheader245
  %indvars.iv.i136.i.i.epil = phi i64 [ %indvars.iv.i136.i.i.epil.init, %.epil.preheader245 ], [ %indvars.iv.next.i137.i.i.epil, %bb.ee ] ; 3 uses
  %epil.iter247 = phi i64 [ 0, %.epil.preheader245 ], [ %epil.iter247.next, %bb.ee ]
  %i.ags = getelementptr inbounds nuw [12 x i8], ptr %i.afs, i64 %indvars.iv.i136.i.i.epil ; 2 uses
  %i.agt = getelementptr inbounds nuw [12 x i8], ptr %i.afo, i64 %indvars.iv.i136.i.i.epil ; 2 uses
  %i.agu = load <2 x i32>, ptr %i.ags, align 4, !tbaa !59
  store <2 x i32> %i.agu, ptr %i.agt, align 4, !tbaa !59
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
end_hunk_1
begin_hunk_2_@mkplan:bb.a
bb.fx:                                            ; preds = %bb.fw
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !61
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aod, i64 20
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !61
  %i.aon = srem i32 %i.aok, %i.aom
  %.not14.i.i = icmp eq i32 %i.aon, 0
  br i1 %.not14.i.i, label %bb.fv, label %expressible_as_api_many.exit.thread.i, !llvm.loop !12

bb.fy:                                            ; preds = %bb.fq
  %i.aoo = load i32, ptr %i.amn, align 8, !tbaa !57 ; 2 uses
  switch i32 %i.aoo, label %bb.gi [
    i32 1, label %bb.fz
    i32 2, label %bb.gc
    i32 3, label %bb.gf
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.aop = load i32, ptr @verbose, align 4, !tbaa !59
  %i.aoq = icmp sgt i32 %i.aop, 2
  br i1 %i.aoq, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %puts108.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aor = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !58
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !67
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !53
  %i.aow = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !55
  %i.aoy = load i32, ptr %i.amt, align 4, !tbaa !59
  %i.aoz = tail call ptr @fftw_plan_r2r_1d(i32 noundef %i.aot, ptr noundef %i.aov, ptr noundef %i.aox, i32 noundef %i.aoy, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gc:                                            ; preds = %bb.fy
  %i.apa = load i32, ptr @verbose, align 4, !tbaa !59
  %i.apb = icmp sgt i32 %i.apa, 2
  br i1 %i.apb, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %puts107.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.apc = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !58 ; 2 uses
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !67
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apd, i64 12
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !67
  %i.aph = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !53
  %i.apj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !55
  %i.apl = load i32, ptr %i.amt, align 4, !tbaa !59
  %i.apm = getelementptr inbounds nuw i8, ptr %i.amt, i64 4
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !59
  %i.apo = tail call ptr @fftw_plan_r2r_2d(i32 noundef %i.ape, i32 noundef %i.apg, ptr noundef %i.api, ptr noundef %i.apk, i32 noundef %i.apl, i32 noundef %i.apn, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gf:                                            ; preds = %bb.fy
  %i.app = load i32, ptr @verbose, align 4, !tbaa !59
  %i.apq = icmp sgt i32 %i.app, 2
  br i1 %i.apq, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %puts106.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.apr = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !58 ; 3 uses
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !67
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aps, i64 12
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !67
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aps, i64 24
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !67
  %i.apy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !53
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !55
  %i.aqc = load i32, ptr %i.amt, align 4, !tbaa !59
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.amt, i64 4
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !59
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !59
  %i.aqh = tail call ptr @fftw_plan_r2r_3d(i32 noundef %i.apt, i32 noundef %i.apv, i32 noundef %i.apx, ptr noundef %i.apz, ptr noundef %i.aqb, i32 noundef %i.aqc, i32 noundef %i.aqe, i32 noundef %i.aqg, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gi:                                            ; preds = %bb.fy
  %i.aqi = sext i32 %i.aoo to i64
  %i.aqj = shl nsw i64 %i.aqi, 3
  %i.aqk = tail call ptr @bench_malloc(i64 noundef %i.aqj) #6 ; 3 uses
  %i.aql = load i32, ptr %i.amn, align 8, !tbaa !57 ; 2 uses
  %i.aqm = icmp sgt i32 %i.aql, 0
  br i1 %i.aqm, label %.lr.ph.i.i, label %mkn.exit.i

.lr.ph.i.i:                                       ; preds = %bb.gi
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !58
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %.lr.ph.i.i
  %indvars.iv.i110.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gj ] ; 3 uses
  %i.aqp = getelementptr inbounds nuw [12 x i8], ptr %i.aqo, i64 %indvars.iv.i110.i
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !67
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %i.aqk, i64 %indvars.iv.i110.i
  store i32 %i.aqq, ptr %i.aqr, align 4, !tbaa !59
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i110.i, 1 ; 2 uses
  %i.aqs = load i32, ptr %i.amn, align 8, !tbaa !57 ; 2 uses
  %i.aqt = sext i32 %i.aqs to i64
  %i.aqu = icmp slt i64 %indvars.iv.next.i.i, %i.aqt
  br i1 %i.aqu, label %bb.gj, label %mkn.exit.i, !llvm.loop !13

mkn.exit.i:                                       ; preds = %bb.gj, %bb.gi
  %i.aqv = phi i32 [ %i.aql, %bb.gi ], [ %i.aqs, %bb.gj ]
  %i.aqw = load i32, ptr @verbose, align 4, !tbaa !59
  %i.aqx = icmp sgt i32 %i.aqw, 2
  br i1 %i.aqx, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %mkn.exit.i
  %puts109.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %.pre.i35 = load i32, ptr %i.amn, align 8, !tbaa !57
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %mkn.exit.i
  %i.aqy = phi i32 [ %.pre.i35, %bb.gk ], [ %i.aqv, %mkn.exit.i ]
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !53
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !55
  %i.ard = tail call ptr @fftw_plan_r2r(i32 noundef %i.aqy, ptr noundef %i.aqk, ptr noundef %i.ara, ptr noundef %i.arc, ptr noundef %i.amt, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.aqk) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.i:                   ; preds = %bb.fv, %bb.fu
  %i.are = load i32, ptr %i.amp, align 8, !tbaa !57
  %i.arf = icmp eq i32 %i.are, 1
  br i1 %i.arf, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %expressible_as_api_many.exit.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 484, ptr noundef nonnull @.str.6) #6
  %.pre138.i = load i32, ptr %i.amn, align 8, !tbaa !57
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %expressible_as_api_many.exit.i
  %i.arg = phi i32 [ %.pre138.i, %bb.gm ], [ %i.anu, %expressible_as_api_many.exit.i ]
  %i.arh = sext i32 %i.arg to i64
  %i.ari = shl nsw i64 %i.arh, 3
  %i.arj = tail call ptr @bench_malloc(i64 noundef %i.ari) #6 ; 3 uses
  %i.ark = load i32, ptr %i.amn, align 8, !tbaa !57 ; 2 uses
  %i.arl = icmp sgt i32 %i.ark, 0
  br i1 %i.arl, label %.lr.ph.i111.i, label %.mkn.exit114_crit_edge.i

.mkn.exit114_crit_edge.i:                         ; preds = %bb.gn
  %.pre143.i = sext i32 %i.ark to i64
  br label %mkn.exit114.i

.lr.ph.i111.i:                                    ; preds = %bb.gn
  %i.arm = load ptr, ptr %i.anw, align 8, !tbaa !58
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ 0, %.lr.ph.i111.i ], [ %indvars.iv.next.i113.i, %bb.go ] ; 3 uses
  %i.arn = getelementptr inbounds nuw [12 x i8], ptr %i.arm, i64 %indvars.iv.i112.i
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !67
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %indvars.iv.i112.i
  store i32 %i.aro, ptr %i.arp, align 4, !tbaa !59
  %indvars.iv.next.i113.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.arq = load i32, ptr %i.amn, align 8, !tbaa !57
  %i.arr = sext i32 %i.arq to i64                 ; 2 uses
  %i.ars = icmp slt i64 %indvars.iv.next.i113.i, %i.arr
  br i1 %i.ars, label %bb.go, label %mkn.exit114.i, !llvm.loop !13

mkn.exit114.i:                                    ; preds = %bb.go, %.mkn.exit114_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre143.i, %.mkn.exit114_crit_edge.i ], [ %i.arr, %bb.go ]
  %i.art = shl nsw i64 %.pre-phi.i, 3
  %i.aru = tail call ptr @bench_malloc(i64 noundef %i.art) #6 ; 6 uses
  %i.arv = load i32, ptr %i.amn, align 8, !tbaa !57
  %i.arw = sext i32 %i.arv to i64
  %i.arx = shl nsw i64 %i.arw, 3
  %i.ary = tail call ptr @bench_malloc(i64 noundef %i.arx) #6 ; 6 uses
  %i.arz = load i32, ptr %i.amn, align 8, !tbaa !57 ; 2 uses
  %.not.i115.i = icmp eq i32 %i.arz, 2147483647
  br i1 %.not.i115.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %mkn.exit114.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i119.i = load i32, ptr %i.amn, align 8, !tbaa !57
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %mkn.exit114.i
  %i.asa = phi i32 [ %.pre.i119.i, %bb.gp ], [ %i.arz, %mkn.exit114.i ] ; 3 uses
  %i.asb = icmp sgt i32 %i.asa, 1
  br i1 %i.asb, label %.lr.ph.i116.i, label %mknembed_many.exit.i

.lr.ph.i116.i:                                    ; preds = %bb.gq
  %i.asc = add nsw i32 %i.asa, -1
  %i.asd = load ptr, ptr %i.anw, align 8, !tbaa !58 ; 7 uses
  %i.ase = zext i32 %i.asc to i64                 ; 8 uses
  %min.iters.check = icmp ult i32 %i.asa, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i116.i
  %scevgep = getelementptr i8, ptr %i.aru, i64 4  ; 2 uses
  %i.asf = shl nuw nsw i64 %i.ase, 2
  %i.asg = add nuw nsw i64 %i.asf, 4              ; 2 uses
  %scevgep122 = getelementptr i8, ptr %i.aru, i64 %i.asg ; 2 uses
  %scevgep123 = getelementptr i8, ptr %i.ary, i64 4 ; 2 uses
  %scevgep124 = getelementptr i8, ptr %i.ary, i64 %i.asg ; 2 uses
  %scevgep125 = getelementptr i8, ptr %i.asd, i64 4 ; 2 uses
  %i.ash = mul nuw nsw i64 %i.ase, 12
  %i.asi = getelementptr i8, ptr %i.asd, i64 %i.ash
  %scevgep126 = getelementptr i8, ptr %i.asi, i64 12 ; 2 uses
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
  %n.vec = and i64 %i.ase, 4294967292             ; 2 uses
  %4 = and i64 %i.ase, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.asj = sub i64 %i.ase, %index                 ; 6 uses
  %i.ask = getelementptr [12 x i8], ptr %i.asd, i64 %i.asj ; 4 uses
  %i.asl = getelementptr [12 x i8], ptr %i.asd, i64 %i.asj ; 4 uses
  %i.asm = getelementptr [12 x i8], ptr %i.asd, i64 %i.asj ; 4 uses
  %i.asn = getelementptr [12 x i8], ptr %i.asd, i64 %i.asj ; 4 uses
  %i.aso = getelementptr i8, ptr %i.ask, i64 -8
  %i.asp = getelementptr i8, ptr %i.asl, i64 -20
  %i.asq = getelementptr i8, ptr %i.asm, i64 -32
  %i.asr = getelementptr i8, ptr %i.asn, i64 -44
  %i.ass = load i32, ptr %i.aso, align 4, !tbaa !66, !alias.scope !80
  %i.ast = load i32, ptr %i.asp, align 4, !tbaa !66, !alias.scope !80
  %i.asu = load i32, ptr %i.asq, align 4, !tbaa !66, !alias.scope !80
  %i.asv = load i32, ptr %i.asr, align 4, !tbaa !66, !alias.scope !80
  %i.asw = insertelement <4 x i32> poison, i32 %i.asv, i64 0
  %i.asx = insertelement <4 x i32> %i.asw, i32 %i.asu, i64 1
  %i.asy = insertelement <4 x i32> %i.asx, i32 %i.ast, i64 2
  %i.asz = insertelement <4 x i32> %i.asy, i32 %i.ass, i64 3
  %i.ata = getelementptr i8, ptr %i.ask, i64 4
  %i.atb = getelementptr i8, ptr %i.asl, i64 -8
  %i.atc = getelementptr i8, ptr %i.asm, i64 -20
  %i.atd = getelementptr i8, ptr %i.asn, i64 -32
  %i.ate = load i32, ptr %i.ata, align 4, !tbaa !66, !alias.scope !80
  %i.atf = load i32, ptr %i.atb, align 4, !tbaa !66, !alias.scope !80
  %i.atg = load i32, ptr %i.atc, align 4, !tbaa !66, !alias.scope !80
  %i.ath = load i32, ptr %i.atd, align 4, !tbaa !66, !alias.scope !80
  %i.ati = insertelement <4 x i32> poison, i32 %i.ath, i64 0
  %i.atj = insertelement <4 x i32> %i.ati, i32 %i.atg, i64 1
  %i.atk = insertelement <4 x i32> %i.atj, i32 %i.atf, i64 2
  %i.atl = insertelement <4 x i32> %i.atk, i32 %i.ate, i64 3
  %reverse = sdiv <4 x i32> %i.asz, %i.atl
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %i.asj
  %i.atn = getelementptr inbounds i8, ptr %i.atm, i64 -12
  store <4 x i32> %reverse, ptr %i.atn, align 4, !tbaa !59, !alias.scope !81, !noalias !82
  %i.ato = getelementptr i8, ptr %i.ask, i64 -4
  %i.atp = getelementptr i8, ptr %i.asl, i64 -16
  %i.atq = getelementptr i8, ptr %i.asm, i64 -28
  %i.atr = getelementptr i8, ptr %i.asn, i64 -40
  %i.ats = load i32, ptr %i.ato, align 4, !tbaa !61, !alias.scope !80
  %i.att = load i32, ptr %i.atp, align 4, !tbaa !61, !alias.scope !80
  %i.atu = load i32, ptr %i.atq, align 4, !tbaa !61, !alias.scope !80
  %i.atv = load i32, ptr %i.atr, align 4, !tbaa !61, !alias.scope !80
  %i.atw = insertelement <4 x i32> poison, i32 %i.atv, i64 0
  %i.atx = insertelement <4 x i32> %i.atw, i32 %i.atu, i64 1
  %i.aty = insertelement <4 x i32> %i.atx, i32 %i.att, i64 2
  %i.atz = insertelement <4 x i32> %i.aty, i32 %i.ats, i64 3
  %i.aua = getelementptr i8, ptr %i.ask, i64 8
  %i.aub = getelementptr i8, ptr %i.asl, i64 -4
  %i.auc = getelementptr i8, ptr %i.asm, i64 -16
  %i.aud = getelementptr i8, ptr %i.asn, i64 -28
  %i.aue = load i32, ptr %i.aua, align 4, !tbaa !61, !alias.scope !80
  %i.auf = load i32, ptr %i.aub, align 4, !tbaa !61, !alias.scope !80
  %i.aug = load i32, ptr %i.auc, align 4, !tbaa !61, !alias.scope !80
  %i.auh = load i32, ptr %i.aud, align 4, !tbaa !61, !alias.scope !80
  %i.aui = insertelement <4 x i32> poison, i32 %i.auh, i64 0
  %i.auj = insertelement <4 x i32> %i.aui, i32 %i.aug, i64 1
  %i.auk = insertelement <4 x i32> %i.auj, i32 %i.auf, i64 2
  %i.aul = insertelement <4 x i32> %i.auk, i32 %i.aue, i64 3
  %reverse134 = sdiv <4 x i32> %i.atz, %i.aul
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.ary, i64 %i.asj
  %i.aun = getelementptr inbounds i8, ptr %i.aum, i64 -12
  store <4 x i32> %reverse134, ptr %i.aun, align 4, !tbaa !59, !alias.scope !83, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.auo = icmp eq i64 %index.next, %n.vec
  br i1 %i.auo, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ase
  br i1 %cmp.n, label %mknembed_many.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i116.i, %middle.block
  %indvars.iv.i117.i.ph = phi i64 [ %i.ase, %vector.memcheck ], [ %i.ase, %.lr.ph.i116.i ], [ %4, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i117.i = phi i64 [ %indvars.iv.next.i118.i, %scalar.ph ], [ %indvars.iv.i117.i.ph, %scalar.ph.preheader ] ; 4 uses
  %indvars.iv.next.i118.i = add nsw i64 %indvars.iv.i117.i, -1 ; 2 uses
  %i.aup = getelementptr inbounds nuw [12 x i8], ptr %i.asd, i64 %indvars.iv.next.i118.i ; 4 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 4
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !66
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aup, i64 16
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !66
  %i.auu = sdiv i32 %i.aur, %i.aut
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %indvars.iv.i117.i
  store i32 %i.auu, ptr %i.auv, align 4, !tbaa !59
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aup, i64 8
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !61
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aup, i64 20
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !61
  %i.ava = sdiv i32 %i.aux, %i.auz
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.ary, i64 %indvars.iv.i117.i
  store i32 %i.ava, ptr %i.avb, align 4, !tbaa !59
  %i.avc = icmp samesign ugt i64 %indvars.iv.i117.i, 1
  br i1 %i.avc, label %scalar.ph, label %mknembed_many.exit.i, !llvm.loop !40

mknembed_many.exit.i:                             ; preds = %scalar.ph, %middle.block, %bb.gq
  %i.avd = load i32, ptr @verbose, align 4, !tbaa !59
  %i.ave = icmp sgt i32 %i.avd, 2
  br i1 %i.ave, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %mknembed_many.exit.i
  %puts105.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %mknembed_many.exit.i
  %i.avf = load i32, ptr %i.amn, align 8, !tbaa !57 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.amp, i64 8
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !58 ; 3 uses
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !67
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !53
  %i.avl = load ptr, ptr %i.anw, align 8, !tbaa !58
  %i.avm = sext i32 %i.avf to i64
  %i.avn = getelementptr [12 x i8], ptr %i.avl, i64 %i.avm ; 2 uses
  %i.avo = getelementptr i8, ptr %i.avn, i64 -8
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !66
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avh, i64 4
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !66
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !55
  %i.avu = getelementptr i8, ptr %i.avn, i64 -4
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !61
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avh, i64 8
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !61
  %i.avy = tail call ptr @fftw_plan_many_r2r(i32 noundef %i.avf, ptr noundef %i.arj, i32 noundef %i.avi, ptr noundef %i.avk, ptr noundef %i.aru, i32 noundef %i.avp, i32 noundef %i.avr, ptr noundef %i.avt, ptr noundef %i.ary, i32 noundef %i.avv, i32 noundef %i.avx, ptr noundef %i.amt, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.arj) #6
  tail call void @bench_free(ptr noundef %i.aru) #6
  tail call void @bench_free(ptr noundef %i.ary) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.thread.i:            ; preds = %bb.fx, %bb.fw, %bb.fr
  %i.avz = phi i32 [ %.pre139.i, %bb.fr ], [ %i.anu, %bb.fw ], [ %i.anu, %bb.fx ] ; 2 uses
  %i.awa = icmp sgt i32 %i.avz, -1
  br i1 %i.awa, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %expressible_as_api_many.exit.thread.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i31 = load i32, ptr %i.amn, align 8, !tbaa !57
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %expressible_as_api_many.exit.thread.i
  %i.awb = phi i32 [ %.pr.i.i31, %bb.gt ], [ %i.avz, %expressible_as_api_many.exit.thread.i ] ; 2 uses
  %i.awc = icmp eq i32 %i.awb, 0
  br i1 %i.awc, label %bench_tensor_to_fftw_iodim.exit.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.awd = sext i32 %i.awb to i64
  %i.awe = mul nsw i64 %i.awd, 12
  %i.awf = tail call ptr @bench_malloc(i64 noundef %i.awe) #6 ; 8 uses
  %i.awg = load i32, ptr %i.amn, align 8, !tbaa !57 ; 3 uses
  %i.awh = icmp sgt i32 %i.awg, 0
  br i1 %i.awh, label %.lr.ph.i120.i, label %bench_tensor_to_fftw_iodim.exit.i

.lr.ph.i120.i:                                    ; preds = %bb.gv
  %i.awi = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.awg to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.awk = icmp ult i32 %i.awg, 4
  br i1 %i.awk, label %.epil.preheader, label %.lr.ph.i120.i.new

.lr.ph.i120.i.new:                                ; preds = %.lr.ph.i120.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gw, %.lr.ph.i120.i.new
  %indvars.iv.i121.i = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %indvars.iv.next.i122.i.3, %bb.gw ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %niter.next.3, %bb.gw ]
  %i.awl = getelementptr inbounds nuw [12 x i8], ptr %i.awj, i64 %indvars.iv.i121.i ; 2 uses
  %i.awm = getelementptr inbounds nuw [12 x i8], ptr %i.awf, i64 %indvars.iv.i121.i ; 2 uses
  %i.awn = load <2 x i32>, ptr %i.awl, align 4, !tbaa !59
  store <2 x i32> %i.awn, ptr %i.awm, align 4, !tbaa !59
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awl, i64 8
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !61
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  store i32 %i.awp, ptr %i.awq, align 4, !tbaa !63
  %indvars.iv.next.i122.i = or disjoint i64 %indvars.iv.i121.i, 1 ; 2 uses
  %i.awr = getelementptr inbounds nuw [12 x i8], ptr %i.awj, i64 %indvars.iv.next.i122.i ; 2 uses
  %i.aws = getelementptr inbounds nuw [12 x i8], ptr %i.awf, i64 %indvars.iv.next.i122.i ; 2 uses
  %i.awt = load <2 x i32>, ptr %i.awr, align 4, !tbaa !59
  store <2 x i32> %i.awt, ptr %i.aws, align 4, !tbaa !59
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awr, i64 8
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !61
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aws, i64 8
  store i32 %i.awv, ptr %i.aww, align 4, !tbaa !63
  %indvars.iv.next.i122.i.1 = or disjoint i64 %indvars.iv.i121.i, 2 ; 2 uses
  %i.awx = getelementptr inbounds nuw [12 x i8], ptr %i.awj, i64 %indvars.iv.next.i122.i.1 ; 2 uses
  %i.awy = getelementptr inbounds nuw [12 x i8], ptr %i.awf, i64 %indvars.iv.next.i122.i.1 ; 2 uses
  %i.awz = load <2 x i32>, ptr %i.awx, align 4, !tbaa !59
  store <2 x i32> %i.awz, ptr %i.awy, align 4, !tbaa !59
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awx, i64 8
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !61
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  store i32 %i.axb, ptr %i.axc, align 4, !tbaa !63
  %indvars.iv.next.i122.i.2 = or disjoint i64 %indvars.iv.i121.i, 3 ; 2 uses
  %i.axd = getelementptr inbounds nuw [12 x i8], ptr %i.awj, i64 %indvars.iv.next.i122.i.2 ; 2 uses
  %i.axe = getelementptr inbounds nuw [12 x i8], ptr %i.awf, i64 %indvars.iv.next.i122.i.2 ; 2 uses
  %i.axf = load <2 x i32>, ptr %i.axd, align 4, !tbaa !59
  store <2 x i32> %i.axf, ptr %i.axe, align 4, !tbaa !59
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !61
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  store i32 %i.axh, ptr %i.axi, align 4, !tbaa !63
  %indvars.iv.next.i122.i.3 = add nuw nsw i64 %indvars.iv.i121.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa, label %bb.gw, !llvm.loop !9

bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa: ; preds = %bb.gw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bench_tensor_to_fftw_iodim.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa, %.lr.ph.i120.i
  %indvars.iv.i121.i.epil.init = phi i64 [ 0, %.lr.ph.i120.i ], [ %indvars.iv.next.i122.i.3, %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gx, %.epil.preheader
  %indvars.iv.i121.i.epil = phi i64 [ %indvars.iv.i121.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i122.i.epil, %bb.gx ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.gx ]
  %i.axj = getelementptr inbounds nuw [12 x i8], ptr %i.awj, i64 %indvars.iv.i121.i.epil ; 2 uses
  %i.axk = getelementptr inbounds nuw [12 x i8], ptr %i.awf, i64 %indvars.iv.i121.i.epil ; 2 uses
  %i.axl = load <2 x i32>, ptr %i.axj, align 4, !tbaa !59
  store <2 x i32> %i.axl, ptr %i.axk, align 4, !tbaa !59
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axj, i64 8
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !61
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  store i32 %i.axn, ptr %i.axo, align 4, !tbaa !63
  %indvars.iv.next.i122.i.epil = add nuw nsw i64 %indvars.iv.i121.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bench_tensor_to_fftw_iodim.exit.i, label %bb.gx, !llvm.loop !41

bench_tensor_to_fftw_iodim.exit.i:                ; preds = %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa, %bb.gx, %bb.gv, %bb.gu
  %.019.i.i = phi ptr [ null, %bb.gu ], [ %i.awf, %bb.gv ], [ %i.awf, %bb.gx ], [ %i.awf, %bench_tensor_to_fftw_iodim.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %i.axp = load i32, ptr %i.amp, align 8, !tbaa !57 ; 2 uses
  %i.axq = icmp sgt i32 %i.axp, -1
  br i1 %i.axq, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bench_tensor_to_fftw_iodim.exit.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i123.i = load i32, ptr %i.amp, align 8, !tbaa !57
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bench_tensor_to_fftw_iodim.exit.i
  %i.axr = phi i32 [ %.pr.i123.i, %bb.gy ], [ %i.axp, %bench_tensor_to_fftw_iodim.exit.i ] ; 2 uses
  %i.axs = icmp eq i32 %i.axr, 0
  br i1 %i.axs, label %bench_tensor_to_fftw_iodim.exit130.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.axt = sext i32 %i.axr to i64
  %i.axu = mul nsw i64 %i.axt, 12
  %i.axv = tail call ptr @bench_malloc(i64 noundef %i.axu) #6 ; 8 uses
  %i.axw = load i32, ptr %i.amp, align 8, !tbaa !57 ; 6 uses
  %i.axx = icmp sgt i32 %i.axw, 0
  br i1 %i.axx, label %.lr.ph.i125.i, label %bench_tensor_to_fftw_iodim.exit130.i

.lr.ph.i125.i:                                    ; preds = %bb.ha
  %i.axy = getelementptr inbounds nuw i8, ptr %i.amp, i64 8
  %i.axz = load ptr, ptr %i.axy, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i126.i = zext nneg i32 %i.axw to i64 ; 2 uses
  %xtraiter211 = and i64 %wide.trip.count.i126.i, 3 ; 3 uses
  %i.aya = icmp ult i32 %i.axw, 4
  br i1 %i.aya, label %.epil.preheader210, label %.lr.ph.i125.i.new

.lr.ph.i125.i.new:                                ; preds = %.lr.ph.i125.i
  %unroll_iter215 = and i64 %wide.trip.count.i126.i, 2147483644
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hb, %.lr.ph.i125.i.new
  %indvars.iv.i127.i = phi i64 [ 0, %.lr.ph.i125.i.new ], [ %indvars.iv.next.i128.i.3, %bb.hb ] ; 6 uses
end_hunk_2
