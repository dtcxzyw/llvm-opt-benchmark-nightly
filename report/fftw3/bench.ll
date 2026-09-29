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
  %i.hv = add nsw i32 %i.ht, -1                   ; 2 uses
  %i.hw = load ptr, ptr %i.dq, align 8, !tbaa !58 ; 7 uses
  %i.hx = zext i32 %i.hv to i64                   ; 6 uses
  %i.hy = icmp ne i32 %i.hv, 0                    ; 3 uses
  %.neg201 = sext i1 %i.hy to i64
  %i.hz = zext nneg i32 %i.ht to i64
  %i.ia = add nsw i64 %.neg201, %i.hz             ; 3 uses
  %min.iters.check186 = icmp ult i64 %i.ia, 4
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i79.i.i
  %i.ib = select i1 %i.hy, i64 4, i64 0           ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.hn, i64 %i.ib ; 2 uses
  %i.ic = shl nuw nsw i64 %i.hx, 2
  %i.id = add nuw nsw i64 %i.ic, 4                ; 2 uses
  %scevgep169 = getelementptr i8, ptr %i.hn, i64 %i.id ; 2 uses
  %scevgep170 = getelementptr i8, ptr %i.hr, i64 %i.ib ; 2 uses
  %scevgep171 = getelementptr i8, ptr %i.hr, i64 %i.id ; 2 uses
  %i.ie = select i1 %i.hy, i64 4, i64 -8
  %scevgep172 = getelementptr i8, ptr %i.hw, i64 %i.ie ; 2 uses
  %i.if = mul nuw nsw i64 %i.hx, 12
  %i.ig = getelementptr i8, ptr %i.hw, i64 %i.if
  %scevgep173 = getelementptr i8, ptr %i.ig, i64 12 ; 2 uses
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
  %n.vec188 = and i64 %i.ia, -4                   ; 3 uses
  %i.ih = sub nsw i64 %i.hx, %n.vec188
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next193, %vector.body189 ] ; 2 uses
  %i.ii = sub i64 %i.hx, %index190                ; 6 uses
  %i.ij = getelementptr [12 x i8], ptr %i.hw, i64 %i.ii ; 4 uses
  %i.ik = getelementptr [12 x i8], ptr %i.hw, i64 %i.ii ; 4 uses
  %i.il = getelementptr [12 x i8], ptr %i.hw, i64 %i.ii ; 4 uses
  %i.im = getelementptr [12 x i8], ptr %i.hw, i64 %i.ii ; 4 uses
  %i.in = getelementptr i8, ptr %i.ij, i64 -8
  %i.io = getelementptr i8, ptr %i.ik, i64 -20
  %i.ip = getelementptr i8, ptr %i.il, i64 -32
  %i.iq = getelementptr i8, ptr %i.im, i64 -44
  %i.ir = load i32, ptr %i.in, align 4, !tbaa !66, !alias.scope !68
  %i.is = load i32, ptr %i.io, align 4, !tbaa !66, !alias.scope !68
  %i.it = load i32, ptr %i.ip, align 4, !tbaa !66, !alias.scope !68
  %i.iu = load i32, ptr %i.iq, align 4, !tbaa !66, !alias.scope !68
  %i.iv = insertelement <4 x i32> poison, i32 %i.iu, i64 0
  %i.iw = insertelement <4 x i32> %i.iv, i32 %i.it, i64 1
  %i.ix = insertelement <4 x i32> %i.iw, i32 %i.is, i64 2
  %i.iy = insertelement <4 x i32> %i.ix, i32 %i.ir, i64 3
  %i.iz = getelementptr i8, ptr %i.ij, i64 4
  %i.ja = getelementptr i8, ptr %i.ik, i64 -8
  %i.jb = getelementptr i8, ptr %i.il, i64 -20
  %i.jc = getelementptr i8, ptr %i.im, i64 -32
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !66, !alias.scope !68
  %i.je = load i32, ptr %i.ja, align 4, !tbaa !66, !alias.scope !68
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !66, !alias.scope !68
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !66, !alias.scope !68
  %i.jh = insertelement <4 x i32> poison, i32 %i.jg, i64 0
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.jf, i64 1
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.je, i64 2
  %i.jk = insertelement <4 x i32> %i.jj, i32 %i.jd, i64 3
  %reverse191 = sdiv <4 x i32> %i.iy, %i.jk
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ii
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -12
  store <4 x i32> %reverse191, ptr %i.jm, align 4, !tbaa !59, !alias.scope !69, !noalias !70
  %i.jn = getelementptr i8, ptr %i.ij, i64 -4
  %i.jo = getelementptr i8, ptr %i.ik, i64 -16
  %i.jp = getelementptr i8, ptr %i.il, i64 -28
  %i.jq = getelementptr i8, ptr %i.im, i64 -40
  %i.jr = load i32, ptr %i.jn, align 4, !tbaa !61, !alias.scope !68
  %i.js = load i32, ptr %i.jo, align 4, !tbaa !61, !alias.scope !68
  %i.jt = load i32, ptr %i.jp, align 4, !tbaa !61, !alias.scope !68
  %i.ju = load i32, ptr %i.jq, align 4, !tbaa !61, !alias.scope !68
  %i.jv = insertelement <4 x i32> poison, i32 %i.ju, i64 0
  %i.jw = insertelement <4 x i32> %i.jv, i32 %i.jt, i64 1
  %i.jx = insertelement <4 x i32> %i.jw, i32 %i.js, i64 2
  %i.jy = insertelement <4 x i32> %i.jx, i32 %i.jr, i64 3
  %i.jz = getelementptr i8, ptr %i.ij, i64 8
  %i.ka = getelementptr i8, ptr %i.ik, i64 -4
  %i.kb = getelementptr i8, ptr %i.il, i64 -16
  %i.kc = getelementptr i8, ptr %i.im, i64 -28
  %i.kd = load i32, ptr %i.jz, align 4, !tbaa !61, !alias.scope !68
  %i.ke = load i32, ptr %i.ka, align 4, !tbaa !61, !alias.scope !68
  %i.kf = load i32, ptr %i.kb, align 4, !tbaa !61, !alias.scope !68
  %i.kg = load i32, ptr %i.kc, align 4, !tbaa !61, !alias.scope !68
  %i.kh = insertelement <4 x i32> poison, i32 %i.kg, i64 0
  %i.ki = insertelement <4 x i32> %i.kh, i32 %i.kf, i64 1
  %i.kj = insertelement <4 x i32> %i.ki, i32 %i.ke, i64 2
  %i.kk = insertelement <4 x i32> %i.kj, i32 %i.kd, i64 3
  %reverse192 = sdiv <4 x i32> %i.jy, %i.kk
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ii
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -12
  store <4 x i32> %reverse192, ptr %i.km, align 4, !tbaa !59, !alias.scope !71, !noalias !68
  %index.next193 = add nuw i64 %index190, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.kn, label %middle.block194, label %vector.body189, !llvm.loop !18

middle.block194:                                  ; preds = %vector.body189
  %cmp.n195 = icmp eq i64 %i.ia, %n.vec188
  br i1 %cmp.n195, label %mknembed_many.exit.i.i, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %vector.memcheck166, %.lr.ph.i79.i.i, %middle.block194
  %indvars.iv.i80.i.i.ph = phi i64 [ %i.hx, %vector.memcheck166 ], [ %i.hx, %.lr.ph.i79.i.i ], [ %i.ih, %middle.block194 ]
  br label %scalar.ph185

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv.i80.i.i = phi i64 [ %indvars.iv.next.i81.i.i, %scalar.ph185 ], [ %indvars.iv.i80.i.i.ph, %scalar.ph185.preheader ] ; 4 uses
  %indvars.iv.next.i81.i.i = add nsw i64 %indvars.iv.i80.i.i, -1 ; 2 uses
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %indvars.iv.next.i81.i.i ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !66
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !66
  %i.kt = sdiv i32 %i.kq, %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i80.i.i
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !59
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !61
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ko, i64 20
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !61
  %i.kz = sdiv i32 %i.kw, %i.ky
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.i80.i.i
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !59
  %i.lb = icmp samesign ugt i64 %indvars.iv.i80.i.i, 1
  br i1 %i.lb, label %scalar.ph185, label %mknembed_many.exit.i.i, !llvm.loop !19

mknembed_many.exit.i.i:                           ; preds = %scalar.ph185, %middle.block194, %bb.aq
  %i.lc = load i32, ptr @verbose, align 4, !tbaa !59
  %i.ld = icmp sgt i32 %i.lc, 2
  br i1 %i.ld, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %mknembed_many.exit.i.i
  %puts68.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %mknembed_many.exit.i.i
  %i.le = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !58 ; 3 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !67
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !53
  %i.lk = load ptr, ptr %i.dq, align 8, !tbaa !58
  %i.ll = sext i32 %i.le to i64
  %i.lm = getelementptr [12 x i8], ptr %i.lk, i64 %i.ll ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 -8
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !66
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !66
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !55
  %i.lt = getelementptr i8, ptr %i.lm, i64 -4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !61
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !61
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !51
  %i.lz = tail call ptr @fftw_plan_many_dft(i32 noundef %i.le, ptr noundef %i.hc, i32 noundef %i.lh, ptr noundef %i.lj, ptr noundef %i.hn, i32 noundef %i.lo, i32 noundef %i.lq, ptr noundef %i.ls, ptr noundef %i.hr, i32 noundef %i.lu, i32 noundef %i.lw, i32 noundef %i.ly, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.hc) #6
  tail call void @bench_free(ptr noundef %i.hn) #6
  tail call void @bench_free(ptr noundef %i.hr) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i:          ; preds = %bb.x, %bb.w, %bb.r
  %i.ma = phi i32 [ %.pre100.i.i, %bb.r ], [ %i.do, %bb.w ], [ %i.do, %bb.x ] ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, -1
  br i1 %i.mb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %expressible_as_api_many.exit.thread.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i5.i = load i32, ptr %i.e, align 8, !tbaa !57
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %expressible_as_api_many.exit.thread.i.i
  %i.mc = phi i32 [ %.pr.i.i5.i, %bb.at ], [ %i.ma, %expressible_as_api_many.exit.thread.i.i ] ; 2 uses
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bench_tensor_to_fftw_iodim.exit.i6.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.me = sext i32 %i.mc to i64
  %i.mf = mul nsw i64 %i.me, 12
  %i.mg = tail call ptr @bench_malloc(i64 noundef %i.mf) #6 ; 8 uses
  %i.mh = load i32, ptr %i.e, align 8, !tbaa !57  ; 3 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph.i83.i.i, label %bench_tensor_to_fftw_iodim.exit.i6.i

.lr.ph.i83.i.i:                                   ; preds = %bb.av
  %i.mj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i.i9.i = zext nneg i32 %i.mh to i64 ; 2 uses
  %xtraiter274 = and i64 %wide.trip.count.i.i9.i, 3 ; 3 uses
  %i.ml = icmp ult i32 %i.mh, 4
  br i1 %i.ml, label %.epil.preheader273, label %.lr.ph.i83.i.i.new

.lr.ph.i83.i.i.new:                               ; preds = %.lr.ph.i83.i.i
  %unroll_iter278 = and i64 %wide.trip.count.i.i9.i, 2147483644
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i83.i.i.new
  %indvars.iv.i84.i.i = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %indvars.iv.next.i85.i.i.3, %bb.aw ] ; 6 uses
  %niter279 = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %niter279.next.3, %bb.aw ]
  %i.mm = getelementptr inbounds nuw [12 x i8], ptr %i.mk, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.mn = getelementptr inbounds nuw [12 x i8], ptr %i.mg, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.mo = load <2 x i32>, ptr %i.mm, align 4, !tbaa !59
  store <2 x i32> %i.mo, ptr %i.mn, align 4, !tbaa !59
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !61
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
end_hunk_0
begin_hunk_1_@mkplan:bb.a
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.xd = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !58 ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !67
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 12
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !67
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !53
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !55
  %i.xm = tail call ptr @fftw_plan_dft_c2r_2d(i32 noundef %i.xf, i32 noundef %i.xh, ptr noundef %i.xj, ptr noundef %i.xl, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.cx:                                            ; preds = %bb.ci
  %i.xn = load i32, ptr %i.ut, align 8, !tbaa !51
  %i.xo = icmp slt i32 %i.xn, 0
  %i.xp = load i32, ptr @verbose, align 4, !tbaa !59
  %i.xq = icmp sgt i32 %i.xp, 2                   ; 2 uses
  br i1 %i.xo, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.xq, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %puts118.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.xr = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !58 ; 3 uses
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !67
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 12
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !67
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !67
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !53
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !55
  %i.yc = tail call ptr @fftw_plan_dft_r2c_3d(i32 noundef %i.xt, i32 noundef %i.xv, i32 noundef %i.xx, ptr noundef %i.xz, ptr noundef %i.yb, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.db:                                            ; preds = %bb.cx
  br i1 %i.xq, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %puts117.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.yd = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !58 ; 3 uses
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !67
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 12
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !67
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 24
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !67
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !53
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !55
  %i.yo = tail call ptr @fftw_plan_dft_c2r_3d(i32 noundef %i.yf, i32 noundef %i.yh, i32 noundef %i.yj, ptr noundef %i.yl, ptr noundef %i.yn, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.de:                                            ; preds = %bb.ci
  %i.yp = sext i32 %i.vu to i64
  %i.yq = shl nsw i64 %i.yp, 3
  %i.yr = tail call ptr @bench_malloc(i64 noundef %i.yq) #6 ; 4 uses
  %i.ys = load i32, ptr %i.pv, align 8, !tbaa !57 ; 2 uses
  %i.yt = icmp sgt i32 %i.ys, 0
  br i1 %i.yt, label %.lr.ph.i.i14.i, label %mkn.exit.i.i28

.lr.ph.i.i14.i:                                   ; preds = %bb.de
  %i.yu = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !58
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph.i.i14.i
  %indvars.iv.i125.i.i = phi i64 [ 0, %.lr.ph.i.i14.i ], [ %indvars.iv.next.i.i15.i, %bb.df ] ; 3 uses
  %i.yw = getelementptr inbounds nuw [12 x i8], ptr %i.yv, i64 %indvars.iv.i125.i.i
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !67
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.i125.i.i
  store i32 %i.yx, ptr %i.yy, align 4, !tbaa !59
  %indvars.iv.next.i.i15.i = add nuw nsw i64 %indvars.iv.i125.i.i, 1 ; 2 uses
  %i.yz = load i32, ptr %i.pv, align 8, !tbaa !57 ; 2 uses
  %i.za = sext i32 %i.yz to i64
  %i.zb = icmp slt i64 %indvars.iv.next.i.i15.i, %i.za
  br i1 %i.zb, label %bb.df, label %mkn.exit.i.i28, !llvm.loop !13

mkn.exit.i.i28:                                   ; preds = %bb.df, %bb.de
  %i.zc = phi i32 [ %i.ys, %bb.de ], [ %i.yz, %bb.df ] ; 2 uses
  %i.zd = load i32, ptr %i.ut, align 8, !tbaa !51
  %i.ze = icmp slt i32 %i.zd, 0
  %i.zf = load i32, ptr @verbose, align 4, !tbaa !59
  %i.zg = icmp sgt i32 %i.zf, 2                   ; 2 uses
  br i1 %i.ze, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.zg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %puts124.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %.pre169.i.i = load i32, ptr %i.pv, align 8, !tbaa !57
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zh = phi i32 [ %.pre169.i.i, %bb.dh ], [ %i.zc, %bb.dg ]
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !53
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !55
  %i.zm = tail call ptr @fftw_plan_dft_r2c(i32 noundef %i.zh, ptr noundef %i.yr, ptr noundef %i.zj, ptr noundef %i.zl, i32 noundef %1) #6
  br label %bb.dm

bb.dj:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.zg, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %puts123.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %.pre.i13.i = load i32, ptr %i.pv, align 8, !tbaa !57
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.zn = phi i32 [ %.pre.i13.i, %bb.dk ], [ %i.zc, %bb.dj ]
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !53
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !55
  %i.zs = tail call ptr @fftw_plan_dft_c2r(i32 noundef %i.zn, ptr noundef %i.yr, ptr noundef %i.zp, ptr noundef %i.zr, i32 noundef %1) #6
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.di
  %.0110.i.i = phi ptr [ %i.zm, %bb.di ], [ %i.zs, %bb.dl ]
  tail call void @bench_free(ptr noundef %i.yr) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.i.i21:               ; preds = %bb.cf, %bb.ce
  %i.zt = load i32, ptr %i.px, align 8, !tbaa !57
  %i.zu = icmp eq i32 %i.zt, 1
  br i1 %i.zu, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %expressible_as_api_many.exit.i.i21
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 236, ptr noundef nonnull @.str.6) #6
  %.pre170.i.i = load i32, ptr %i.pv, align 8, !tbaa !57
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %expressible_as_api_many.exit.i.i21
  %i.zv = phi i32 [ %.pre170.i.i, %bb.dn ], [ %i.va, %expressible_as_api_many.exit.i.i21 ]
  %i.zw = sext i32 %i.zv to i64
  %i.zx = shl nsw i64 %i.zw, 3
  %i.zy = tail call ptr @bench_malloc(i64 noundef %i.zx) #6 ; 4 uses
  %i.zz = load i32, ptr %i.pv, align 8, !tbaa !57 ; 2 uses
  %i.aaa = icmp sgt i32 %i.zz, 0
  br i1 %i.aaa, label %.lr.ph.i126.i.i, label %.mkn.exit129_crit_edge.i.i

.mkn.exit129_crit_edge.i.i:                       ; preds = %bb.do
  %.pre173.i.i = sext i32 %i.zz to i64
  br label %mkn.exit129.i.i

.lr.ph.i126.i.i:                                  ; preds = %bb.do
  %i.aab = load ptr, ptr %i.vc, align 8, !tbaa !58
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %.lr.ph.i126.i.i
  %indvars.iv.i127.i.i = phi i64 [ 0, %.lr.ph.i126.i.i ], [ %indvars.iv.next.i128.i.i, %bb.dp ] ; 3 uses
  %i.aac = getelementptr inbounds nuw [12 x i8], ptr %i.aab, i64 %indvars.iv.i127.i.i
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !67
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %indvars.iv.i127.i.i
  store i32 %i.aad, ptr %i.aae, align 4, !tbaa !59
  %indvars.iv.next.i128.i.i = add nuw nsw i64 %indvars.iv.i127.i.i, 1 ; 2 uses
  %i.aaf = load i32, ptr %i.pv, align 8, !tbaa !57
  %i.aag = sext i32 %i.aaf to i64                 ; 2 uses
  %i.aah = icmp slt i64 %indvars.iv.next.i128.i.i, %i.aag
  br i1 %i.aah, label %bb.dp, label %mkn.exit129.i.i, !llvm.loop !13

mkn.exit129.i.i:                                  ; preds = %bb.dp, %.mkn.exit129_crit_edge.i.i
  %.pre-phi.i.i22 = phi i64 [ %.pre173.i.i, %.mkn.exit129_crit_edge.i.i ], [ %i.aag, %bb.dp ]
  %i.aai = shl nsw i64 %.pre-phi.i.i22, 3
  %i.aaj = tail call ptr @bench_malloc(i64 noundef %i.aai) #6 ; 7 uses
  %i.aak = load i32, ptr %i.pv, align 8, !tbaa !57
  %i.aal = sext i32 %i.aak to i64
  %i.aam = shl nsw i64 %i.aal, 3
  %i.aan = tail call ptr @bench_malloc(i64 noundef %i.aam) #6 ; 7 uses
  %i.aao = load i32, ptr %i.pv, align 8, !tbaa !57 ; 2 uses
  %.not.i130.i.i = icmp eq i32 %i.aao, 2147483647
  br i1 %.not.i130.i.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %mkn.exit129.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i134.i.i = load i32, ptr %i.pv, align 8, !tbaa !57
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %mkn.exit129.i.i
  %i.aap = phi i32 [ %.pre.i134.i.i, %bb.dq ], [ %i.aao, %mkn.exit129.i.i ] ; 3 uses
  %i.aaq = icmp sgt i32 %i.aap, 1
  br i1 %i.aaq, label %.lr.ph.i131.i.i, label %mknembed_many.exit.i.i23

.lr.ph.i131.i.i:                                  ; preds = %bb.dr
  %i.aar = add nsw i32 %i.aap, -1                 ; 2 uses
  %i.aas = load ptr, ptr %i.vc, align 8, !tbaa !58 ; 7 uses
  %i.aat = zext i32 %i.aar to i64                 ; 6 uses
  %i.aau = icmp ne i32 %i.aar, 0                  ; 3 uses
  %.neg198 = sext i1 %i.aau to i64
  %i.aav = zext nneg i32 %i.aap to i64
  %i.aaw = add nsw i64 %.neg198, %i.aav           ; 3 uses
  %min.iters.check155 = icmp ult i64 %i.aaw, 4
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.i131.i.i
  %i.aax = select i1 %i.aau, i64 4, i64 0         ; 2 uses
  %scevgep137 = getelementptr i8, ptr %i.aaj, i64 %i.aax ; 2 uses
  %i.aay = shl nuw nsw i64 %i.aat, 2
  %i.aaz = add nuw nsw i64 %i.aay, 4              ; 2 uses
  %scevgep138 = getelementptr i8, ptr %i.aaj, i64 %i.aaz ; 2 uses
  %scevgep139 = getelementptr i8, ptr %i.aan, i64 %i.aax ; 2 uses
  %scevgep140 = getelementptr i8, ptr %i.aan, i64 %i.aaz ; 2 uses
  %i.aba = select i1 %i.aau, i64 4, i64 -8
  %scevgep141 = getelementptr i8, ptr %i.aas, i64 %i.aba ; 2 uses
  %i.abb = mul nuw nsw i64 %i.aat, 12
  %i.abc = getelementptr i8, ptr %i.aas, i64 %i.abb
  %scevgep142 = getelementptr i8, ptr %i.abc, i64 12 ; 2 uses
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
  %n.vec157 = and i64 %i.aaw, -4                  ; 3 uses
  %i.abd = sub nsw i64 %i.aat, %n.vec157
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 2 uses
  %i.abe = sub i64 %i.aat, %index159              ; 6 uses
  %i.abf = getelementptr [12 x i8], ptr %i.aas, i64 %i.abe ; 4 uses
  %i.abg = getelementptr [12 x i8], ptr %i.aas, i64 %i.abe ; 4 uses
  %i.abh = getelementptr [12 x i8], ptr %i.aas, i64 %i.abe ; 4 uses
  %i.abi = getelementptr [12 x i8], ptr %i.aas, i64 %i.abe ; 4 uses
  %i.abj = getelementptr i8, ptr %i.abf, i64 -8
  %i.abk = getelementptr i8, ptr %i.abg, i64 -20
  %i.abl = getelementptr i8, ptr %i.abh, i64 -32
  %i.abm = getelementptr i8, ptr %i.abi, i64 -44
  %i.abn = load i32, ptr %i.abj, align 4, !tbaa !66, !alias.scope !75
  %i.abo = load i32, ptr %i.abk, align 4, !tbaa !66, !alias.scope !75
  %i.abp = load i32, ptr %i.abl, align 4, !tbaa !66, !alias.scope !75
  %i.abq = load i32, ptr %i.abm, align 4, !tbaa !66, !alias.scope !75
  %i.abr = insertelement <4 x i32> poison, i32 %i.abq, i64 0
  %i.abs = insertelement <4 x i32> %i.abr, i32 %i.abp, i64 1
  %i.abt = insertelement <4 x i32> %i.abs, i32 %i.abo, i64 2
  %i.abu = insertelement <4 x i32> %i.abt, i32 %i.abn, i64 3
  %i.abv = getelementptr i8, ptr %i.abf, i64 4
  %i.abw = getelementptr i8, ptr %i.abg, i64 -8
  %i.abx = getelementptr i8, ptr %i.abh, i64 -20
  %i.aby = getelementptr i8, ptr %i.abi, i64 -32
  %i.abz = load i32, ptr %i.abv, align 4, !tbaa !66, !alias.scope !75
  %i.aca = load i32, ptr %i.abw, align 4, !tbaa !66, !alias.scope !75
  %i.acb = load i32, ptr %i.abx, align 4, !tbaa !66, !alias.scope !75
  %i.acc = load i32, ptr %i.aby, align 4, !tbaa !66, !alias.scope !75
  %i.acd = insertelement <4 x i32> poison, i32 %i.acc, i64 0
  %i.ace = insertelement <4 x i32> %i.acd, i32 %i.acb, i64 1
  %i.acf = insertelement <4 x i32> %i.ace, i32 %i.aca, i64 2
  %i.acg = insertelement <4 x i32> %i.acf, i32 %i.abz, i64 3
  %reverse160 = sdiv <4 x i32> %i.abu, %i.acg
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %i.abe
  %i.aci = getelementptr inbounds i8, ptr %i.ach, i64 -12
  store <4 x i32> %reverse160, ptr %i.aci, align 4, !tbaa !59, !alias.scope !76, !noalias !77
  %i.acj = getelementptr i8, ptr %i.abf, i64 -4
  %i.ack = getelementptr i8, ptr %i.abg, i64 -16
  %i.acl = getelementptr i8, ptr %i.abh, i64 -28
  %i.acm = getelementptr i8, ptr %i.abi, i64 -40
  %i.acn = load i32, ptr %i.acj, align 4, !tbaa !61, !alias.scope !75
  %i.aco = load i32, ptr %i.ack, align 4, !tbaa !61, !alias.scope !75
  %i.acp = load i32, ptr %i.acl, align 4, !tbaa !61, !alias.scope !75
  %i.acq = load i32, ptr %i.acm, align 4, !tbaa !61, !alias.scope !75
  %i.acr = insertelement <4 x i32> poison, i32 %i.acq, i64 0
  %i.acs = insertelement <4 x i32> %i.acr, i32 %i.acp, i64 1
  %i.act = insertelement <4 x i32> %i.acs, i32 %i.aco, i64 2
  %i.acu = insertelement <4 x i32> %i.act, i32 %i.acn, i64 3
  %i.acv = getelementptr i8, ptr %i.abf, i64 8
  %i.acw = getelementptr i8, ptr %i.abg, i64 -4
  %i.acx = getelementptr i8, ptr %i.abh, i64 -16
  %i.acy = getelementptr i8, ptr %i.abi, i64 -28
  %i.acz = load i32, ptr %i.acv, align 4, !tbaa !61, !alias.scope !75
  %i.ada = load i32, ptr %i.acw, align 4, !tbaa !61, !alias.scope !75
  %i.adb = load i32, ptr %i.acx, align 4, !tbaa !61, !alias.scope !75
  %i.adc = load i32, ptr %i.acy, align 4, !tbaa !61, !alias.scope !75
  %i.add = insertelement <4 x i32> poison, i32 %i.adc, i64 0
  %i.ade = insertelement <4 x i32> %i.add, i32 %i.adb, i64 1
  %i.adf = insertelement <4 x i32> %i.ade, i32 %i.ada, i64 2
  %i.adg = insertelement <4 x i32> %i.adf, i32 %i.acz, i64 3
  %reverse161 = sdiv <4 x i32> %i.acu, %i.adg
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.abe
  %i.adi = getelementptr inbounds i8, ptr %i.adh, i64 -12
  store <4 x i32> %reverse161, ptr %i.adi, align 4, !tbaa !59, !alias.scope !78, !noalias !75
  %index.next162 = add nuw i64 %index159, 4       ; 2 uses
  %i.adj = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.adj, label %middle.block163, label %vector.body158, !llvm.loop !28

middle.block163:                                  ; preds = %vector.body158
  %cmp.n164 = icmp eq i64 %i.aaw, %n.vec157
  br i1 %cmp.n164, label %mknembed_many.exit.i.i23, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %vector.memcheck135, %.lr.ph.i131.i.i, %middle.block163
  %indvars.iv.i132.i.i.ph = phi i64 [ %i.aat, %vector.memcheck135 ], [ %i.aat, %.lr.ph.i131.i.i ], [ %i.abd, %middle.block163 ]
  br label %scalar.ph154

scalar.ph154:                                     ; preds = %scalar.ph154.preheader, %scalar.ph154
  %indvars.iv.i132.i.i = phi i64 [ %indvars.iv.next.i133.i.i, %scalar.ph154 ], [ %indvars.iv.i132.i.i.ph, %scalar.ph154.preheader ] ; 4 uses
  %indvars.iv.next.i133.i.i = add nsw i64 %indvars.iv.i132.i.i, -1 ; 2 uses
  %i.adk = getelementptr inbounds nuw [12 x i8], ptr %i.aas, i64 %indvars.iv.next.i133.i.i ; 4 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 4
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !66
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !66
  %i.adp = sdiv i32 %i.adm, %i.ado
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv.i132.i.i
  store i32 %i.adp, ptr %i.adq, align 4, !tbaa !59
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !61
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adk, i64 20
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !61
  %i.adv = sdiv i32 %i.ads, %i.adu
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %indvars.iv.i132.i.i
  store i32 %i.adv, ptr %i.adw, align 4, !tbaa !59
  %i.adx = icmp samesign ugt i64 %indvars.iv.i132.i.i, 1
  br i1 %i.adx, label %scalar.ph154, label %mknembed_many.exit.i.i23, !llvm.loop !29

mknembed_many.exit.i.i23:                         ; preds = %scalar.ph154, %middle.block163, %bb.dr
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !51
  %i.aea = icmp slt i32 %i.adz, 0
  %i.aeb = load i32, ptr @verbose, align 4, !tbaa !59
  %i.aec = icmp sgt i32 %i.aeb, 2                 ; 2 uses
  br i1 %i.aea, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.aec, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %puts116.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.aed = load i32, ptr %i.pv, align 8, !tbaa !57 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !58 ; 3 uses
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !67
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !53
  %i.aej = load ptr, ptr %i.vc, align 8, !tbaa !58
  %i.aek = sext i32 %i.aed to i64
  %i.ael = getelementptr [12 x i8], ptr %i.aej, i64 %i.aek ; 2 uses
  %i.aem = getelementptr i8, ptr %i.ael, i64 -8
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !66
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aef, i64 4
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !66
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !55
  %i.aes = getelementptr i8, ptr %i.ael, i64 -4
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !61
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !61
  %i.aew = tail call ptr @fftw_plan_many_dft_r2c(i32 noundef %i.aed, ptr noundef %i.zy, i32 noundef %i.aeg, ptr noundef %i.aei, ptr noundef %i.aaj, i32 noundef %i.aen, i32 noundef %i.aep, ptr noundef %i.aer, ptr noundef %i.aan, i32 noundef %i.aet, i32 noundef %i.aev, i32 noundef %1) #6
  br label %bb.dy

bb.dv:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.aec, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %puts115.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.aex = load i32, ptr %i.pv, align 8, !tbaa !57 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !58 ; 3 uses
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !67
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !53
  %i.afd = load ptr, ptr %i.vc, align 8, !tbaa !58
  %i.afe = sext i32 %i.aex to i64
  %i.aff = getelementptr [12 x i8], ptr %i.afd, i64 %i.afe ; 2 uses
  %i.afg = getelementptr i8, ptr %i.aff, i64 -8
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !66
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aez, i64 4
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !66
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !55
  %i.afm = getelementptr i8, ptr %i.aff, i64 -4
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !61
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !61
  %i.afq = tail call ptr @fftw_plan_many_dft_c2r(i32 noundef %i.aex, ptr noundef %i.zy, i32 noundef %i.afa, ptr noundef %i.afc, ptr noundef %i.aaj, i32 noundef %i.afh, i32 noundef %i.afj, ptr noundef %i.afl, ptr noundef %i.aan, i32 noundef %i.afn, i32 noundef %i.afp, i32 noundef %1) #6
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.du
  %.1.i.i = phi ptr [ %i.aew, %bb.du ], [ %i.afq, %bb.dx ]
  tail call void @bench_free(ptr noundef %i.zy) #6
  tail call void @bench_free(ptr noundef %i.aaj) #6
  tail call void @bench_free(ptr noundef %i.aan) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i19:        ; preds = %bb.ch, %bb.cg, %bb.cb
  %i.afr = phi i32 [ %.pre.i, %bb.cb ], [ %i.va, %bb.cg ], [ %i.va, %bb.ch ] ; 3 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aft = load i32, ptr %i.afs, align 8, !tbaa !51
  %i.afu = icmp slt i32 %i.aft, 0
  %i.afv = icmp sgt i32 %i.afr, -1                ; 2 uses
  br i1 %i.afu, label %bb.dz, label %bb.em
end_hunk_1
begin_hunk_2_@mkplan:bb.a
bb.fx:                                            ; preds = %bb.fw
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !61
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aop, i64 20
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !61
  %i.aoz = srem i32 %i.aow, %i.aoy
  %.not14.i.i = icmp eq i32 %i.aoz, 0
  br i1 %.not14.i.i, label %bb.fv, label %expressible_as_api_many.exit.thread.i, !llvm.loop !12

bb.fy:                                            ; preds = %bb.fq
  %i.apa = load i32, ptr %i.amz, align 8, !tbaa !57 ; 2 uses
  switch i32 %i.apa, label %bb.gi [
    i32 1, label %bb.fz
    i32 2, label %bb.gc
    i32 3, label %bb.gf
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.apb = load i32, ptr @verbose, align 4, !tbaa !59
  %i.apc = icmp sgt i32 %i.apb, 2
  br i1 %i.apc, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %puts108.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.apd = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !58
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !67
  %i.apg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !53
  %i.api = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !55
  %i.apk = load i32, ptr %i.anf, align 4, !tbaa !59
  %i.apl = tail call ptr @fftw_plan_r2r_1d(i32 noundef %i.apf, ptr noundef %i.aph, ptr noundef %i.apj, i32 noundef %i.apk, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gc:                                            ; preds = %bb.fy
  %i.apm = load i32, ptr @verbose, align 4, !tbaa !59
  %i.apn = icmp sgt i32 %i.apm, 2
  br i1 %i.apn, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %puts107.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.apo = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !58 ; 2 uses
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !67
  %i.apr = getelementptr inbounds nuw i8, ptr %i.app, i64 12
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !67
  %i.apt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !53
  %i.apv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !55
  %i.apx = load i32, ptr %i.anf, align 4, !tbaa !59
  %i.apy = getelementptr inbounds nuw i8, ptr %i.anf, i64 4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !59
  %i.aqa = tail call ptr @fftw_plan_r2r_2d(i32 noundef %i.apq, i32 noundef %i.aps, ptr noundef %i.apu, ptr noundef %i.apw, i32 noundef %i.apx, i32 noundef %i.apz, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gf:                                            ; preds = %bb.fy
  %i.aqb = load i32, ptr @verbose, align 4, !tbaa !59
  %i.aqc = icmp sgt i32 %i.aqb, 2
  br i1 %i.aqc, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %puts106.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !58 ; 3 uses
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !67
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqe, i64 12
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !67
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqe, i64 24
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !67
  %i.aqk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !53
  %i.aqm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !55
  %i.aqo = load i32, ptr %i.anf, align 4, !tbaa !59
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.anf, i64 4
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !59
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !59
  %i.aqt = tail call ptr @fftw_plan_r2r_3d(i32 noundef %i.aqf, i32 noundef %i.aqh, i32 noundef %i.aqj, ptr noundef %i.aql, ptr noundef %i.aqn, i32 noundef %i.aqo, i32 noundef %i.aqq, i32 noundef %i.aqs, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gi:                                            ; preds = %bb.fy
  %i.aqu = sext i32 %i.apa to i64
  %i.aqv = shl nsw i64 %i.aqu, 3
  %i.aqw = tail call ptr @bench_malloc(i64 noundef %i.aqv) #6 ; 3 uses
  %i.aqx = load i32, ptr %i.amz, align 8, !tbaa !57 ; 2 uses
  %i.aqy = icmp sgt i32 %i.aqx, 0
  br i1 %i.aqy, label %.lr.ph.i.i, label %mkn.exit.i

.lr.ph.i.i:                                       ; preds = %bb.gi
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !58
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %.lr.ph.i.i
  %indvars.iv.i110.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gj ] ; 3 uses
  %i.arb = getelementptr inbounds nuw [12 x i8], ptr %i.ara, i64 %indvars.iv.i110.i
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !67
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.aqw, i64 %indvars.iv.i110.i
  store i32 %i.arc, ptr %i.ard, align 4, !tbaa !59
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i110.i, 1 ; 2 uses
  %i.are = load i32, ptr %i.amz, align 8, !tbaa !57 ; 2 uses
  %i.arf = sext i32 %i.are to i64
  %i.arg = icmp slt i64 %indvars.iv.next.i.i, %i.arf
  br i1 %i.arg, label %bb.gj, label %mkn.exit.i, !llvm.loop !13

mkn.exit.i:                                       ; preds = %bb.gj, %bb.gi
  %i.arh = phi i32 [ %i.aqx, %bb.gi ], [ %i.are, %bb.gj ]
  %i.ari = load i32, ptr @verbose, align 4, !tbaa !59
  %i.arj = icmp sgt i32 %i.ari, 2
  br i1 %i.arj, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %mkn.exit.i
  %puts109.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %.pre.i35 = load i32, ptr %i.amz, align 8, !tbaa !57
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %mkn.exit.i
  %i.ark = phi i32 [ %.pre.i35, %bb.gk ], [ %i.arh, %mkn.exit.i ]
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !53
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !55
  %i.arp = tail call ptr @fftw_plan_r2r(i32 noundef %i.ark, ptr noundef %i.aqw, ptr noundef %i.arm, ptr noundef %i.aro, ptr noundef %i.anf, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.aqw) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.i:                   ; preds = %bb.fv, %bb.fu
  %i.arq = load i32, ptr %i.anb, align 8, !tbaa !57
  %i.arr = icmp eq i32 %i.arq, 1
  br i1 %i.arr, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %expressible_as_api_many.exit.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 484, ptr noundef nonnull @.str.6) #6
  %.pre138.i = load i32, ptr %i.amz, align 8, !tbaa !57
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %expressible_as_api_many.exit.i
  %i.ars = phi i32 [ %.pre138.i, %bb.gm ], [ %i.aog, %expressible_as_api_many.exit.i ]
  %i.art = sext i32 %i.ars to i64
  %i.aru = shl nsw i64 %i.art, 3
  %i.arv = tail call ptr @bench_malloc(i64 noundef %i.aru) #6 ; 3 uses
  %i.arw = load i32, ptr %i.amz, align 8, !tbaa !57 ; 2 uses
  %i.arx = icmp sgt i32 %i.arw, 0
  br i1 %i.arx, label %.lr.ph.i111.i, label %.mkn.exit114_crit_edge.i

.mkn.exit114_crit_edge.i:                         ; preds = %bb.gn
  %.pre143.i = sext i32 %i.arw to i64
  br label %mkn.exit114.i

.lr.ph.i111.i:                                    ; preds = %bb.gn
  %i.ary = load ptr, ptr %i.aoi, align 8, !tbaa !58
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ 0, %.lr.ph.i111.i ], [ %indvars.iv.next.i113.i, %bb.go ] ; 3 uses
  %i.arz = getelementptr inbounds nuw [12 x i8], ptr %i.ary, i64 %indvars.iv.i112.i
  %i.asa = load i32, ptr %i.arz, align 4, !tbaa !67
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.arv, i64 %indvars.iv.i112.i
  store i32 %i.asa, ptr %i.asb, align 4, !tbaa !59
  %indvars.iv.next.i113.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.asc = load i32, ptr %i.amz, align 8, !tbaa !57
  %i.asd = sext i32 %i.asc to i64                 ; 2 uses
  %i.ase = icmp slt i64 %indvars.iv.next.i113.i, %i.asd
  br i1 %i.ase, label %bb.go, label %mkn.exit114.i, !llvm.loop !13

mkn.exit114.i:                                    ; preds = %bb.go, %.mkn.exit114_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre143.i, %.mkn.exit114_crit_edge.i ], [ %i.asd, %bb.go ]
  %i.asf = shl nsw i64 %.pre-phi.i, 3
  %i.asg = tail call ptr @bench_malloc(i64 noundef %i.asf) #6 ; 6 uses
  %i.ash = load i32, ptr %i.amz, align 8, !tbaa !57
  %i.asi = sext i32 %i.ash to i64
  %i.asj = shl nsw i64 %i.asi, 3
  %i.ask = tail call ptr @bench_malloc(i64 noundef %i.asj) #6 ; 6 uses
  %i.asl = load i32, ptr %i.amz, align 8, !tbaa !57 ; 2 uses
  %.not.i115.i = icmp eq i32 %i.asl, 2147483647
  br i1 %.not.i115.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %mkn.exit114.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i119.i = load i32, ptr %i.amz, align 8, !tbaa !57
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %mkn.exit114.i
  %i.asm = phi i32 [ %.pre.i119.i, %bb.gp ], [ %i.asl, %mkn.exit114.i ] ; 3 uses
  %i.asn = icmp sgt i32 %i.asm, 1
  br i1 %i.asn, label %.lr.ph.i116.i, label %mknembed_many.exit.i

.lr.ph.i116.i:                                    ; preds = %bb.gq
  %i.aso = add nsw i32 %i.asm, -1                 ; 2 uses
  %i.asp = load ptr, ptr %i.aoi, align 8, !tbaa !58 ; 7 uses
  %i.asq = zext i32 %i.aso to i64                 ; 6 uses
  %i.asr = icmp ne i32 %i.aso, 0                  ; 3 uses
  %.neg = sext i1 %i.asr to i64
  %i.ass = zext nneg i32 %i.asm to i64
  %i.ast = add nsw i64 %.neg, %i.ass              ; 3 uses
  %min.iters.check = icmp ult i64 %i.ast, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i116.i
  %i.asu = select i1 %i.asr, i64 4, i64 0         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.asg, i64 %i.asu ; 2 uses
  %i.asv = shl nuw nsw i64 %i.asq, 2
  %i.asw = add nuw nsw i64 %i.asv, 4              ; 2 uses
  %scevgep122 = getelementptr i8, ptr %i.asg, i64 %i.asw ; 2 uses
  %scevgep123 = getelementptr i8, ptr %i.ask, i64 %i.asu ; 2 uses
  %scevgep124 = getelementptr i8, ptr %i.ask, i64 %i.asw ; 2 uses
  %i.asx = select i1 %i.asr, i64 4, i64 -8
  %scevgep125 = getelementptr i8, ptr %i.asp, i64 %i.asx ; 2 uses
  %i.asy = mul nuw nsw i64 %i.asq, 12
  %i.asz = getelementptr i8, ptr %i.asp, i64 %i.asy
  %scevgep126 = getelementptr i8, ptr %i.asz, i64 12 ; 2 uses
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
  %n.vec = and i64 %i.ast, -4                     ; 3 uses
  %i.ata = sub nsw i64 %i.asq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.atb = sub i64 %i.asq, %index                 ; 6 uses
  %i.atc = getelementptr [12 x i8], ptr %i.asp, i64 %i.atb ; 4 uses
  %i.atd = getelementptr [12 x i8], ptr %i.asp, i64 %i.atb ; 4 uses
  %i.ate = getelementptr [12 x i8], ptr %i.asp, i64 %i.atb ; 4 uses
  %i.atf = getelementptr [12 x i8], ptr %i.asp, i64 %i.atb ; 4 uses
  %i.atg = getelementptr i8, ptr %i.atc, i64 -8
  %i.ath = getelementptr i8, ptr %i.atd, i64 -20
  %i.ati = getelementptr i8, ptr %i.ate, i64 -32
  %i.atj = getelementptr i8, ptr %i.atf, i64 -44
  %i.atk = load i32, ptr %i.atg, align 4, !tbaa !66, !alias.scope !80
  %i.atl = load i32, ptr %i.ath, align 4, !tbaa !66, !alias.scope !80
  %i.atm = load i32, ptr %i.ati, align 4, !tbaa !66, !alias.scope !80
  %i.atn = load i32, ptr %i.atj, align 4, !tbaa !66, !alias.scope !80
  %i.ato = insertelement <4 x i32> poison, i32 %i.atn, i64 0
  %i.atp = insertelement <4 x i32> %i.ato, i32 %i.atm, i64 1
  %i.atq = insertelement <4 x i32> %i.atp, i32 %i.atl, i64 2
  %i.atr = insertelement <4 x i32> %i.atq, i32 %i.atk, i64 3
  %i.ats = getelementptr i8, ptr %i.atc, i64 4
  %i.att = getelementptr i8, ptr %i.atd, i64 -8
  %i.atu = getelementptr i8, ptr %i.ate, i64 -20
  %i.atv = getelementptr i8, ptr %i.atf, i64 -32
  %i.atw = load i32, ptr %i.ats, align 4, !tbaa !66, !alias.scope !80
  %i.atx = load i32, ptr %i.att, align 4, !tbaa !66, !alias.scope !80
  %i.aty = load i32, ptr %i.atu, align 4, !tbaa !66, !alias.scope !80
  %i.atz = load i32, ptr %i.atv, align 4, !tbaa !66, !alias.scope !80
  %i.aua = insertelement <4 x i32> poison, i32 %i.atz, i64 0
  %i.aub = insertelement <4 x i32> %i.aua, i32 %i.aty, i64 1
  %i.auc = insertelement <4 x i32> %i.aub, i32 %i.atx, i64 2
  %i.aud = insertelement <4 x i32> %i.auc, i32 %i.atw, i64 3
  %reverse = sdiv <4 x i32> %i.atr, %i.aud
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %i.atb
  %i.auf = getelementptr inbounds i8, ptr %i.aue, i64 -12
  store <4 x i32> %reverse, ptr %i.auf, align 4, !tbaa !59, !alias.scope !81, !noalias !82
  %i.aug = getelementptr i8, ptr %i.atc, i64 -4
  %i.auh = getelementptr i8, ptr %i.atd, i64 -16
  %i.aui = getelementptr i8, ptr %i.ate, i64 -28
  %i.auj = getelementptr i8, ptr %i.atf, i64 -40
  %i.auk = load i32, ptr %i.aug, align 4, !tbaa !61, !alias.scope !80
  %i.aul = load i32, ptr %i.auh, align 4, !tbaa !61, !alias.scope !80
  %i.aum = load i32, ptr %i.aui, align 4, !tbaa !61, !alias.scope !80
  %i.aun = load i32, ptr %i.auj, align 4, !tbaa !61, !alias.scope !80
  %i.auo = insertelement <4 x i32> poison, i32 %i.aun, i64 0
  %i.aup = insertelement <4 x i32> %i.auo, i32 %i.aum, i64 1
  %i.auq = insertelement <4 x i32> %i.aup, i32 %i.aul, i64 2
  %i.aur = insertelement <4 x i32> %i.auq, i32 %i.auk, i64 3
  %i.aus = getelementptr i8, ptr %i.atc, i64 8
  %i.aut = getelementptr i8, ptr %i.atd, i64 -4
  %i.auu = getelementptr i8, ptr %i.ate, i64 -16
  %i.auv = getelementptr i8, ptr %i.atf, i64 -28
  %i.auw = load i32, ptr %i.aus, align 4, !tbaa !61, !alias.scope !80
  %i.aux = load i32, ptr %i.aut, align 4, !tbaa !61, !alias.scope !80
  %i.auy = load i32, ptr %i.auu, align 4, !tbaa !61, !alias.scope !80
  %i.auz = load i32, ptr %i.auv, align 4, !tbaa !61, !alias.scope !80
  %i.ava = insertelement <4 x i32> poison, i32 %i.auz, i64 0
  %i.avb = insertelement <4 x i32> %i.ava, i32 %i.auy, i64 1
  %i.avc = insertelement <4 x i32> %i.avb, i32 %i.aux, i64 2
  %i.avd = insertelement <4 x i32> %i.avc, i32 %i.auw, i64 3
  %reverse134 = sdiv <4 x i32> %i.aur, %i.avd
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %i.atb
  %i.avf = getelementptr inbounds i8, ptr %i.ave, i64 -12
  store <4 x i32> %reverse134, ptr %i.avf, align 4, !tbaa !59, !alias.scope !83, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.avg = icmp eq i64 %index.next, %n.vec
  br i1 %i.avg, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ast, %n.vec
  br i1 %cmp.n, label %mknembed_many.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i116.i, %middle.block
  %indvars.iv.i117.i.ph = phi i64 [ %i.asq, %vector.memcheck ], [ %i.asq, %.lr.ph.i116.i ], [ %i.ata, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i117.i = phi i64 [ %indvars.iv.next.i118.i, %scalar.ph ], [ %indvars.iv.i117.i.ph, %scalar.ph.preheader ] ; 4 uses
  %indvars.iv.next.i118.i = add nsw i64 %indvars.iv.i117.i, -1 ; 2 uses
  %i.avh = getelementptr inbounds nuw [12 x i8], ptr %i.asp, i64 %indvars.iv.next.i118.i ; 4 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 4
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !66
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avh, i64 16
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !66
  %i.avm = sdiv i32 %i.avj, %i.avl
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %indvars.iv.i117.i
  store i32 %i.avm, ptr %i.avn, align 4, !tbaa !59
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avh, i64 8
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !61
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avh, i64 20
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !61
  %i.avs = sdiv i32 %i.avp, %i.avr
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %indvars.iv.i117.i
  store i32 %i.avs, ptr %i.avt, align 4, !tbaa !59
  %i.avu = icmp samesign ugt i64 %indvars.iv.i117.i, 1
  br i1 %i.avu, label %scalar.ph, label %mknembed_many.exit.i, !llvm.loop !40

mknembed_many.exit.i:                             ; preds = %scalar.ph, %middle.block, %bb.gq
  %i.avv = load i32, ptr @verbose, align 4, !tbaa !59
  %i.avw = icmp sgt i32 %i.avv, 2
  br i1 %i.avw, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %mknembed_many.exit.i
  %puts105.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %mknembed_many.exit.i
  %i.avx = load i32, ptr %i.amz, align 8, !tbaa !57 ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.anb, i64 8
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !58 ; 3 uses
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !67
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !53
  %i.awd = load ptr, ptr %i.aoi, align 8, !tbaa !58
  %i.awe = sext i32 %i.avx to i64
  %i.awf = getelementptr [12 x i8], ptr %i.awd, i64 %i.awe ; 2 uses
  %i.awg = getelementptr i8, ptr %i.awf, i64 -8
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !66
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avz, i64 4
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !66
  %i.awk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !55
  %i.awm = getelementptr i8, ptr %i.awf, i64 -4
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !61
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !61
  %i.awq = tail call ptr @fftw_plan_many_r2r(i32 noundef %i.avx, ptr noundef %i.arv, i32 noundef %i.awa, ptr noundef %i.awc, ptr noundef %i.asg, i32 noundef %i.awh, i32 noundef %i.awj, ptr noundef %i.awl, ptr noundef %i.ask, i32 noundef %i.awn, i32 noundef %i.awp, ptr noundef %i.anf, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.arv) #6
  tail call void @bench_free(ptr noundef %i.asg) #6
  tail call void @bench_free(ptr noundef %i.ask) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.thread.i:            ; preds = %bb.fx, %bb.fw, %bb.fr
  %i.awr = phi i32 [ %.pre139.i, %bb.fr ], [ %i.aog, %bb.fw ], [ %i.aog, %bb.fx ] ; 2 uses
  %i.aws = icmp sgt i32 %i.awr, -1
  br i1 %i.aws, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %expressible_as_api_many.exit.thread.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i31 = load i32, ptr %i.amz, align 8, !tbaa !57
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %expressible_as_api_many.exit.thread.i
  %i.awt = phi i32 [ %.pr.i.i31, %bb.gt ], [ %i.awr, %expressible_as_api_many.exit.thread.i ] ; 2 uses
  %i.awu = icmp eq i32 %i.awt, 0
  br i1 %i.awu, label %bench_tensor_to_fftw_iodim.exit.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.awv = sext i32 %i.awt to i64
  %i.aww = mul nsw i64 %i.awv, 12
  %i.awx = tail call ptr @bench_malloc(i64 noundef %i.aww) #6 ; 8 uses
  %i.awy = load i32, ptr %i.amz, align 8, !tbaa !57 ; 3 uses
  %i.awz = icmp sgt i32 %i.awy, 0
  br i1 %i.awz, label %.lr.ph.i120.i, label %bench_tensor_to_fftw_iodim.exit.i

.lr.ph.i120.i:                                    ; preds = %bb.gv
  %i.axa = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.awy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.axc = icmp ult i32 %i.awy, 4
  br i1 %i.axc, label %.epil.preheader, label %.lr.ph.i120.i.new

.lr.ph.i120.i.new:                                ; preds = %.lr.ph.i120.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gw, %.lr.ph.i120.i.new
  %indvars.iv.i121.i = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %indvars.iv.next.i122.i.3, %bb.gw ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %niter.next.3, %bb.gw ]
  %i.axd = getelementptr inbounds nuw [12 x i8], ptr %i.axb, i64 %indvars.iv.i121.i ; 2 uses
  %i.axe = getelementptr inbounds nuw [12 x i8], ptr %i.awx, i64 %indvars.iv.i121.i ; 2 uses
  %i.axf = load <2 x i32>, ptr %i.axd, align 4, !tbaa !59
  store <2 x i32> %i.axf, ptr %i.axe, align 4, !tbaa !59
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !61
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  store i32 %i.axh, ptr %i.axi, align 4, !tbaa !63
  %indvars.iv.next.i122.i = or disjoint i64 %indvars.iv.i121.i, 1 ; 2 uses
end_hunk_2
