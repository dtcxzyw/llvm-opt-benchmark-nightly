Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/bench?download=true
inline.NumInlined: 38
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mkplan:bb.a
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
  %min.iters.check201 = icmp ult i32 %i.ht, 5
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph.i79.i.i
  %i.hy = getelementptr i8, ptr %i.hn, i64 4      ; 2 uses
  %i.hz = shl nuw nsw i64 %i.hx, 2
  %i.ia = add nuw nsw i64 %i.hz, 4                ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hn, i64 %i.ia  ; 2 uses
  %i.ic = getelementptr i8, ptr %i.hr, i64 4      ; 2 uses
  %i.id = getelementptr i8, ptr %i.hr, i64 %i.ia  ; 2 uses
  %2 = getelementptr i8, ptr %i.hw, i64 4         ; 2 uses
  %3 = mul nuw nsw i64 %i.hx, 12
  %4 = getelementptr i8, ptr %i.hw, i64 %3
  %i.ie = getelementptr i8, ptr %4, i64 12        ; 2 uses
  %bound0203 = icmp ult ptr %i.hy, %i.id
  %bound1204 = icmp ult ptr %i.ic, %i.ib
  %found.conflict205 = and i1 %bound0203, %bound1204
  %bound0206 = icmp ult ptr %i.hy, %i.ie
  %bound1207 = icmp ult ptr %2, %i.ib
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %found.conflict205, %found.conflict208
  %bound0210 = icmp ult ptr %i.ic, %i.ie
  %bound1211 = icmp ult ptr %2, %i.id
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  br i1 %conflict.rdx213, label %scalar.ph200.preheader, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck202
  %n.vec215 = and i64 %i.hx, 4294967292           ; 2 uses
  %i.if = and i64 %i.hx, 3
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next220, %vector.body216 ] ; 2 uses
  %i.ig = sub i64 %i.hx, %index217                ; 6 uses
  %i.ih = getelementptr [12 x i8], ptr %i.hw, i64 %i.ig ; 4 uses
  %i.ii = getelementptr [12 x i8], ptr %i.hw, i64 %i.ig ; 4 uses
  %i.ij = getelementptr [12 x i8], ptr %i.hw, i64 %i.ig ; 4 uses
  %i.ik = getelementptr [12 x i8], ptr %i.hw, i64 %i.ig ; 4 uses
  %i.il = getelementptr i8, ptr %i.ih, i64 -8
  %i.im = getelementptr i8, ptr %i.ii, i64 -20
  %i.in = getelementptr i8, ptr %i.ij, i64 -32
  %i.io = getelementptr i8, ptr %i.ik, i64 -44
  %i.ip = load i32, ptr %i.il, align 4, !tbaa !66, !alias.scope !68
  %i.iq = load i32, ptr %i.im, align 4, !tbaa !66, !alias.scope !68
  %i.ir = load i32, ptr %i.in, align 4, !tbaa !66, !alias.scope !68
  %i.is = load i32, ptr %i.io, align 4, !tbaa !66, !alias.scope !68
  %i.it = insertelement <4 x i32> poison, i32 %i.is, i64 0
  %i.iu = insertelement <4 x i32> %i.it, i32 %i.ir, i64 1
  %i.iv = insertelement <4 x i32> %i.iu, i32 %i.iq, i64 2
  %i.iw = insertelement <4 x i32> %i.iv, i32 %i.ip, i64 3
  %i.ix = getelementptr i8, ptr %i.ih, i64 4
  %i.iy = getelementptr i8, ptr %i.ii, i64 -8
  %i.iz = getelementptr i8, ptr %i.ij, i64 -20
  %i.ja = getelementptr i8, ptr %i.ik, i64 -32
  %i.jb = load i32, ptr %i.ix, align 4, !tbaa !66, !alias.scope !68
  %i.jc = load i32, ptr %i.iy, align 4, !tbaa !66, !alias.scope !68
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !66, !alias.scope !68
  %i.je = load i32, ptr %i.ja, align 4, !tbaa !66, !alias.scope !68
  %i.jf = insertelement <4 x i32> poison, i32 %i.je, i64 0
  %i.jg = insertelement <4 x i32> %i.jf, i32 %i.jd, i64 1
  %i.jh = insertelement <4 x i32> %i.jg, i32 %i.jc, i64 2
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.jb, i64 3
  %reverse218 = sdiv <4 x i32> %i.iw, %i.ji
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ig
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -12
  store <4 x i32> %reverse218, ptr %i.jk, align 4, !tbaa !59, !alias.scope !69, !noalias !70
  %i.jl = getelementptr i8, ptr %i.ih, i64 -4
  %i.jm = getelementptr i8, ptr %i.ii, i64 -16
  %i.jn = getelementptr i8, ptr %i.ij, i64 -28
  %i.jo = getelementptr i8, ptr %i.ik, i64 -40
  %i.jp = load i32, ptr %i.jl, align 4, !tbaa !61, !alias.scope !68
  %i.jq = load i32, ptr %i.jm, align 4, !tbaa !61, !alias.scope !68
  %i.jr = load i32, ptr %i.jn, align 4, !tbaa !61, !alias.scope !68
  %i.js = load i32, ptr %i.jo, align 4, !tbaa !61, !alias.scope !68
  %i.jt = insertelement <4 x i32> poison, i32 %i.js, i64 0
  %i.ju = insertelement <4 x i32> %i.jt, i32 %i.jr, i64 1
  %i.jv = insertelement <4 x i32> %i.ju, i32 %i.jq, i64 2
  %i.jw = insertelement <4 x i32> %i.jv, i32 %i.jp, i64 3
  %i.jx = getelementptr i8, ptr %i.ih, i64 8
  %i.jy = getelementptr i8, ptr %i.ii, i64 -4
  %i.jz = getelementptr i8, ptr %i.ij, i64 -16
  %i.ka = getelementptr i8, ptr %i.ik, i64 -28
  %i.kb = load i32, ptr %i.jx, align 4, !tbaa !61, !alias.scope !68
  %i.kc = load i32, ptr %i.jy, align 4, !tbaa !61, !alias.scope !68
  %i.kd = load i32, ptr %i.jz, align 4, !tbaa !61, !alias.scope !68
  %i.ke = load i32, ptr %i.ka, align 4, !tbaa !61, !alias.scope !68
  %i.kf = insertelement <4 x i32> poison, i32 %i.ke, i64 0
  %i.kg = insertelement <4 x i32> %i.kf, i32 %i.kd, i64 1
  %i.kh = insertelement <4 x i32> %i.kg, i32 %i.kc, i64 2
  %i.ki = insertelement <4 x i32> %i.kh, i32 %i.kb, i64 3
  %reverse219 = sdiv <4 x i32> %i.jw, %i.ki
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ig
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -12
  store <4 x i32> %reverse219, ptr %i.kk, align 4, !tbaa !59, !alias.scope !71, !noalias !68
  %index.next220 = add nuw i64 %index217, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next220, %n.vec215
  br i1 %i.kl, label %middle.block221, label %vector.body216, !llvm.loop !18

middle.block221:                                  ; preds = %vector.body216
  %cmp.n222 = icmp eq i64 %n.vec215, %i.hx
  br i1 %cmp.n222, label %mknembed_many.exit.i.i, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %vector.memcheck202, %.lr.ph.i79.i.i, %middle.block221
  %indvars.iv.i80.i.i.ph = phi i64 [ %i.hx, %vector.memcheck202 ], [ %i.hx, %.lr.ph.i79.i.i ], [ %i.if, %middle.block221 ]
  br label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.preheader, %scalar.ph200
  %indvars.iv.i80.i.i = phi i64 [ %indvars.iv.next.i81.i.i, %scalar.ph200 ], [ %indvars.iv.i80.i.i.ph, %scalar.ph200.preheader ] ; 4 uses
  %indvars.iv.next.i81.i.i = add nsw i64 %indvars.iv.i80.i.i, -1 ; 2 uses
  %i.km = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %indvars.iv.next.i81.i.i ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !66
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !66
  %i.kr = sdiv i32 %i.ko, %i.kq
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.i80.i.i
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !59
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !61
  %i.kv = getelementptr inbounds nuw i8, ptr %i.km, i64 20
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !61
  %i.kx = sdiv i32 %i.ku, %i.kw
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.i80.i.i
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !59
  %i.kz = icmp samesign ugt i64 %indvars.iv.i80.i.i, 1
  br i1 %i.kz, label %scalar.ph200, label %mknembed_many.exit.i.i, !llvm.loop !19

mknembed_many.exit.i.i:                           ; preds = %scalar.ph200, %middle.block221, %bb.aq
  %i.la = load i32, ptr @verbose, align 4, !tbaa !59
  %i.lb = icmp sgt i32 %i.la, 2
  br i1 %i.lb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %mknembed_many.exit.i.i
  %puts68.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %mknembed_many.exit.i.i
  %i.lc = load i32, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !58 ; 3 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !67
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !53
  %i.li = load ptr, ptr %i.dq, align 8, !tbaa !58
  %i.lj = sext i32 %i.lc to i64
  %i.lk = getelementptr [12 x i8], ptr %i.li, i64 %i.lj ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lk, i64 -8
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !66
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !66
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !55
  %i.lr = getelementptr i8, ptr %i.lk, i64 -4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !61
  %i.lt = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !61
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !51
  %i.lx = tail call ptr @fftw_plan_many_dft(i32 noundef %i.lc, ptr noundef %i.hc, i32 noundef %i.lf, ptr noundef %i.lh, ptr noundef %i.hn, i32 noundef %i.lm, i32 noundef %i.lo, ptr noundef %i.lq, ptr noundef %i.hr, i32 noundef %i.ls, i32 noundef %i.lu, i32 noundef %i.lw, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.hc) #6
  tail call void @bench_free(ptr noundef %i.hn) #6
  tail call void @bench_free(ptr noundef %i.hr) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i:          ; preds = %bb.x, %bb.w, %bb.r
  %i.ly = phi i32 [ %.pre100.i.i, %bb.r ], [ %i.do, %bb.w ], [ %i.do, %bb.x ] ; 2 uses
  %i.lz = icmp sgt i32 %i.ly, -1
  br i1 %i.lz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %expressible_as_api_many.exit.thread.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i5.i = load i32, ptr %i.e, align 8, !tbaa !57
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %expressible_as_api_many.exit.thread.i.i
  %i.ma = phi i32 [ %.pr.i.i5.i, %bb.at ], [ %i.ly, %expressible_as_api_many.exit.thread.i.i ] ; 2 uses
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bench_tensor_to_fftw_iodim.exit.i6.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mc = sext i32 %i.ma to i64
  %i.md = mul nsw i64 %i.mc, 12
  %i.me = tail call ptr @bench_malloc(i64 noundef %i.md) #6 ; 8 uses
  %i.mf = load i32, ptr %i.e, align 8, !tbaa !57  ; 3 uses
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %.lr.ph.i83.i.i, label %bench_tensor_to_fftw_iodim.exit.i6.i

.lr.ph.i83.i.i:                                   ; preds = %bb.av
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i.i9.i = zext nneg i32 %i.mf to i64 ; 2 uses
  %xtraiter297 = and i64 %wide.trip.count.i.i9.i, 3 ; 3 uses
  %i.mj = icmp ult i32 %i.mf, 4
  br i1 %i.mj, label %.epil.preheader296, label %.lr.ph.i83.i.i.new

.lr.ph.i83.i.i.new:                               ; preds = %.lr.ph.i83.i.i
  %unroll_iter301 = and i64 %wide.trip.count.i.i9.i, 2147483644
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i83.i.i.new
  %indvars.iv.i84.i.i = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %indvars.iv.next.i85.i.i.3, %bb.aw ] ; 6 uses
  %niter302 = phi i64 [ 0, %.lr.ph.i83.i.i.new ], [ %niter302.next.3, %bb.aw ]
  %i.mk = getelementptr inbounds nuw [12 x i8], ptr %i.mi, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.mm = load <2 x i32>, ptr %i.mk, align 4, !tbaa !59
  store <2 x i32> %i.mm, ptr %i.ml, align 4, !tbaa !59
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !61
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store i32 %i.mo, ptr %i.mp, align 4, !tbaa !63
  %indvars.iv.next.i85.i.i = or disjoint i64 %indvars.iv.i84.i.i, 1 ; 2 uses
  %i.mq = getelementptr inbounds nuw [12 x i8], ptr %i.mi, i64 %indvars.iv.next.i85.i.i ; 2 uses
  %i.mr = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %indvars.iv.next.i85.i.i ; 2 uses
  %i.ms = load <2 x i32>, ptr %i.mq, align 4, !tbaa !59
  store <2 x i32> %i.ms, ptr %i.mr, align 4, !tbaa !59
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !61
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !63
  %indvars.iv.next.i85.i.i.1 = or disjoint i64 %indvars.iv.i84.i.i, 2 ; 2 uses
  %i.mw = getelementptr inbounds nuw [12 x i8], ptr %i.mi, i64 %indvars.iv.next.i85.i.i.1 ; 2 uses
  %i.mx = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %indvars.iv.next.i85.i.i.1 ; 2 uses
end_hunk_0
begin_hunk_1_@mkplan:bb.a
  br label %mkplan_complex.exit

bb.cx:                                            ; preds = %bb.ci
  %i.xl = load i32, ptr %i.ur, align 8, !tbaa !51
  %i.xm = icmp slt i32 %i.xl, 0
  %i.xn = load i32, ptr @verbose, align 4, !tbaa !59
  %i.xo = icmp sgt i32 %i.xn, 2                   ; 2 uses
  br i1 %i.xm, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.xo, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %puts118.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.xp = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !58 ; 3 uses
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !67
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !67
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xq, i64 24
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !67
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !53
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !55
  %i.ya = tail call ptr @fftw_plan_dft_r2c_3d(i32 noundef %i.xr, i32 noundef %i.xt, i32 noundef %i.xv, ptr noundef %i.xx, ptr noundef %i.xz, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.db:                                            ; preds = %bb.cx
  br i1 %i.xo, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %puts117.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.yb = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !58 ; 3 uses
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !67
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 12
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !67
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 24
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !67
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !53
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !55
  %i.ym = tail call ptr @fftw_plan_dft_c2r_3d(i32 noundef %i.yd, i32 noundef %i.yf, i32 noundef %i.yh, ptr noundef %i.yj, ptr noundef %i.yl, i32 noundef %1) #6
  br label %mkplan_complex.exit

bb.de:                                            ; preds = %bb.ci
  %i.yn = sext i32 %i.vs to i64
  %i.yo = shl nsw i64 %i.yn, 3
  %i.yp = tail call ptr @bench_malloc(i64 noundef %i.yo) #6 ; 4 uses
  %i.yq = load i32, ptr %i.pt, align 8, !tbaa !57 ; 2 uses
  %i.yr = icmp sgt i32 %i.yq, 0
  br i1 %i.yr, label %.lr.ph.i.i14.i, label %mkn.exit.i.i28

.lr.ph.i.i14.i:                                   ; preds = %bb.de
  %i.ys = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !58
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph.i.i14.i
  %indvars.iv.i125.i.i = phi i64 [ 0, %.lr.ph.i.i14.i ], [ %indvars.iv.next.i.i15.i, %bb.df ] ; 3 uses
  %i.yu = getelementptr inbounds nuw [12 x i8], ptr %i.yt, i64 %indvars.iv.i125.i.i
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !67
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %indvars.iv.i125.i.i
  store i32 %i.yv, ptr %i.yw, align 4, !tbaa !59
  %indvars.iv.next.i.i15.i = add nuw nsw i64 %indvars.iv.i125.i.i, 1 ; 2 uses
  %i.yx = load i32, ptr %i.pt, align 8, !tbaa !57 ; 2 uses
  %i.yy = sext i32 %i.yx to i64
  %i.yz = icmp slt i64 %indvars.iv.next.i.i15.i, %i.yy
  br i1 %i.yz, label %bb.df, label %mkn.exit.i.i28, !llvm.loop !13

mkn.exit.i.i28:                                   ; preds = %bb.df, %bb.de
  %i.za = phi i32 [ %i.yq, %bb.de ], [ %i.yx, %bb.df ] ; 2 uses
  %i.zb = load i32, ptr %i.ur, align 8, !tbaa !51
  %i.zc = icmp slt i32 %i.zb, 0
  %i.zd = load i32, ptr @verbose, align 4, !tbaa !59
  %i.ze = icmp sgt i32 %i.zd, 2                   ; 2 uses
  br i1 %i.zc, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.ze, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %puts124.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %.pre169.i.i = load i32, ptr %i.pt, align 8, !tbaa !57
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zf = phi i32 [ %.pre169.i.i, %bb.dh ], [ %i.za, %bb.dg ]
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !53
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !55
  %i.zk = tail call ptr @fftw_plan_dft_r2c(i32 noundef %i.zf, ptr noundef %i.yp, ptr noundef %i.zh, ptr noundef %i.zj, i32 noundef %1) #6
  br label %bb.dm

bb.dj:                                            ; preds = %mkn.exit.i.i28
  br i1 %i.ze, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %puts123.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %.pre.i13.i = load i32, ptr %i.pt, align 8, !tbaa !57
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.zl = phi i32 [ %.pre.i13.i, %bb.dk ], [ %i.za, %bb.dj ]
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !53
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !55
  %i.zq = tail call ptr @fftw_plan_dft_c2r(i32 noundef %i.zl, ptr noundef %i.yp, ptr noundef %i.zn, ptr noundef %i.zp, i32 noundef %1) #6
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.di
  %.0110.i.i = phi ptr [ %i.zk, %bb.di ], [ %i.zq, %bb.dl ]
  tail call void @bench_free(ptr noundef %i.yp) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.i.i21:               ; preds = %bb.cf, %bb.ce
  %i.zr = load i32, ptr %i.pv, align 8, !tbaa !57
  %i.zs = icmp eq i32 %i.zr, 1
  br i1 %i.zs, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %expressible_as_api_many.exit.i.i21
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 236, ptr noundef nonnull @.str.6) #6
  %.pre170.i.i = load i32, ptr %i.pt, align 8, !tbaa !57
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %expressible_as_api_many.exit.i.i21
  %i.zt = phi i32 [ %.pre170.i.i, %bb.dn ], [ %i.uy, %expressible_as_api_many.exit.i.i21 ]
  %i.zu = sext i32 %i.zt to i64
  %i.zv = shl nsw i64 %i.zu, 3
  %i.zw = tail call ptr @bench_malloc(i64 noundef %i.zv) #6 ; 4 uses
  %i.zx = load i32, ptr %i.pt, align 8, !tbaa !57 ; 2 uses
  %i.zy = icmp sgt i32 %i.zx, 0
  br i1 %i.zy, label %.lr.ph.i126.i.i, label %.mkn.exit129_crit_edge.i.i

.mkn.exit129_crit_edge.i.i:                       ; preds = %bb.do
  %.pre173.i.i = sext i32 %i.zx to i64
  br label %mkn.exit129.i.i

.lr.ph.i126.i.i:                                  ; preds = %bb.do
  %i.zz = load ptr, ptr %i.va, align 8, !tbaa !58
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %.lr.ph.i126.i.i
  %indvars.iv.i127.i.i = phi i64 [ 0, %.lr.ph.i126.i.i ], [ %indvars.iv.next.i128.i.i, %bb.dp ] ; 3 uses
  %i.aaa = getelementptr inbounds nuw [12 x i8], ptr %i.zz, i64 %indvars.iv.i127.i.i
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !67
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv.i127.i.i
  store i32 %i.aab, ptr %i.aac, align 4, !tbaa !59
  %indvars.iv.next.i128.i.i = add nuw nsw i64 %indvars.iv.i127.i.i, 1 ; 2 uses
  %i.aad = load i32, ptr %i.pt, align 8, !tbaa !57
  %i.aae = sext i32 %i.aad to i64                 ; 2 uses
  %i.aaf = icmp slt i64 %indvars.iv.next.i128.i.i, %i.aae
  br i1 %i.aaf, label %bb.dp, label %mkn.exit129.i.i, !llvm.loop !13

mkn.exit129.i.i:                                  ; preds = %bb.dp, %.mkn.exit129_crit_edge.i.i
  %.pre-phi.i.i22 = phi i64 [ %.pre173.i.i, %.mkn.exit129_crit_edge.i.i ], [ %i.aae, %bb.dp ]
  %i.aag = shl nsw i64 %.pre-phi.i.i22, 3
  %i.aah = tail call ptr @bench_malloc(i64 noundef %i.aag) #6 ; 7 uses
  %i.aai = load i32, ptr %i.pt, align 8, !tbaa !57
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = shl nsw i64 %i.aaj, 3
  %i.aal = tail call ptr @bench_malloc(i64 noundef %i.aak) #6 ; 7 uses
  %i.aam = load i32, ptr %i.pt, align 8, !tbaa !57 ; 2 uses
  %.not.i130.i.i = icmp eq i32 %i.aam, 2147483647
  br i1 %.not.i130.i.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %mkn.exit129.i.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i134.i.i = load i32, ptr %i.pt, align 8, !tbaa !57
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %mkn.exit129.i.i
  %i.aan = phi i32 [ %.pre.i134.i.i, %bb.dq ], [ %i.aam, %mkn.exit129.i.i ] ; 3 uses
  %i.aao = icmp sgt i32 %i.aan, 1
  br i1 %i.aao, label %.lr.ph.i131.i.i, label %mknembed_many.exit.i.i23

.lr.ph.i131.i.i:                                  ; preds = %bb.dr
  %i.aap = add nsw i32 %i.aan, -1
  %i.aaq = load ptr, ptr %i.va, align 8, !tbaa !58 ; 7 uses
  %i.aar = zext i32 %i.aap to i64                 ; 8 uses
  %min.iters.check160 = icmp ult i32 %i.aan, 5
  br i1 %min.iters.check160, label %scalar.ph159.preheader, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.i131.i.i
  %i.aas = getelementptr i8, ptr %i.aah, i64 4    ; 2 uses
  %i.aat = shl nuw nsw i64 %i.aar, 2
  %i.aau = add nuw nsw i64 %i.aat, 4              ; 2 uses
  %i.aav = getelementptr i8, ptr %i.aah, i64 %i.aau ; 2 uses
  %i.aaw = getelementptr i8, ptr %i.aal, i64 4    ; 2 uses
  %i.aax = getelementptr i8, ptr %i.aal, i64 %i.aau ; 2 uses
  %5 = getelementptr i8, ptr %i.aaq, i64 4        ; 2 uses
  %6 = mul nuw nsw i64 %i.aar, 12
  %7 = getelementptr i8, ptr %i.aaq, i64 %6
  %i.aay = getelementptr i8, ptr %7, i64 12       ; 2 uses
  %bound0162 = icmp ult ptr %i.aas, %i.aax
  %bound1163 = icmp ult ptr %i.aaw, %i.aav
  %found.conflict164 = and i1 %bound0162, %bound1163
  %bound0165 = icmp ult ptr %i.aas, %i.aay
  %bound1166 = icmp ult ptr %5, %i.aav
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %found.conflict164, %found.conflict167
  %bound0169 = icmp ult ptr %i.aaw, %i.aay
  %bound1170 = icmp ult ptr %5, %i.aax
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  br i1 %conflict.rdx172, label %scalar.ph159.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck161
  %n.vec174 = and i64 %i.aar, 4294967292          ; 2 uses
  %i.aaz = and i64 %i.aar, 3
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next179, %vector.body175 ] ; 2 uses
  %i.aba = sub i64 %i.aar, %index176              ; 6 uses
  %i.abb = getelementptr [12 x i8], ptr %i.aaq, i64 %i.aba ; 4 uses
  %i.abc = getelementptr [12 x i8], ptr %i.aaq, i64 %i.aba ; 4 uses
  %i.abd = getelementptr [12 x i8], ptr %i.aaq, i64 %i.aba ; 4 uses
  %i.abe = getelementptr [12 x i8], ptr %i.aaq, i64 %i.aba ; 4 uses
  %i.abf = getelementptr i8, ptr %i.abb, i64 -8
  %i.abg = getelementptr i8, ptr %i.abc, i64 -20
  %i.abh = getelementptr i8, ptr %i.abd, i64 -32
  %i.abi = getelementptr i8, ptr %i.abe, i64 -44
  %i.abj = load i32, ptr %i.abf, align 4, !tbaa !66, !alias.scope !75
  %i.abk = load i32, ptr %i.abg, align 4, !tbaa !66, !alias.scope !75
  %i.abl = load i32, ptr %i.abh, align 4, !tbaa !66, !alias.scope !75
  %i.abm = load i32, ptr %i.abi, align 4, !tbaa !66, !alias.scope !75
  %i.abn = insertelement <4 x i32> poison, i32 %i.abm, i64 0
  %i.abo = insertelement <4 x i32> %i.abn, i32 %i.abl, i64 1
  %i.abp = insertelement <4 x i32> %i.abo, i32 %i.abk, i64 2
  %i.abq = insertelement <4 x i32> %i.abp, i32 %i.abj, i64 3
  %i.abr = getelementptr i8, ptr %i.abb, i64 4
  %i.abs = getelementptr i8, ptr %i.abc, i64 -8
  %i.abt = getelementptr i8, ptr %i.abd, i64 -20
  %i.abu = getelementptr i8, ptr %i.abe, i64 -32
  %i.abv = load i32, ptr %i.abr, align 4, !tbaa !66, !alias.scope !75
  %i.abw = load i32, ptr %i.abs, align 4, !tbaa !66, !alias.scope !75
  %i.abx = load i32, ptr %i.abt, align 4, !tbaa !66, !alias.scope !75
  %i.aby = load i32, ptr %i.abu, align 4, !tbaa !66, !alias.scope !75
  %i.abz = insertelement <4 x i32> poison, i32 %i.aby, i64 0
  %i.aca = insertelement <4 x i32> %i.abz, i32 %i.abx, i64 1
  %i.acb = insertelement <4 x i32> %i.aca, i32 %i.abw, i64 2
  %i.acc = insertelement <4 x i32> %i.acb, i32 %i.abv, i64 3
  %reverse177 = sdiv <4 x i32> %i.abq, %i.acc
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %i.aba
  %i.ace = getelementptr inbounds i8, ptr %i.acd, i64 -12
  store <4 x i32> %reverse177, ptr %i.ace, align 4, !tbaa !59, !alias.scope !76, !noalias !77
  %i.acf = getelementptr i8, ptr %i.abb, i64 -4
  %i.acg = getelementptr i8, ptr %i.abc, i64 -16
  %i.ach = getelementptr i8, ptr %i.abd, i64 -28
  %i.aci = getelementptr i8, ptr %i.abe, i64 -40
  %i.acj = load i32, ptr %i.acf, align 4, !tbaa !61, !alias.scope !75
  %i.ack = load i32, ptr %i.acg, align 4, !tbaa !61, !alias.scope !75
  %i.acl = load i32, ptr %i.ach, align 4, !tbaa !61, !alias.scope !75
  %i.acm = load i32, ptr %i.aci, align 4, !tbaa !61, !alias.scope !75
  %i.acn = insertelement <4 x i32> poison, i32 %i.acm, i64 0
  %i.aco = insertelement <4 x i32> %i.acn, i32 %i.acl, i64 1
  %i.acp = insertelement <4 x i32> %i.aco, i32 %i.ack, i64 2
  %i.acq = insertelement <4 x i32> %i.acp, i32 %i.acj, i64 3
  %i.acr = getelementptr i8, ptr %i.abb, i64 8
  %i.acs = getelementptr i8, ptr %i.abc, i64 -4
  %i.act = getelementptr i8, ptr %i.abd, i64 -16
  %i.acu = getelementptr i8, ptr %i.abe, i64 -28
  %i.acv = load i32, ptr %i.acr, align 4, !tbaa !61, !alias.scope !75
  %i.acw = load i32, ptr %i.acs, align 4, !tbaa !61, !alias.scope !75
  %i.acx = load i32, ptr %i.act, align 4, !tbaa !61, !alias.scope !75
  %i.acy = load i32, ptr %i.acu, align 4, !tbaa !61, !alias.scope !75
  %i.acz = insertelement <4 x i32> poison, i32 %i.acy, i64 0
  %i.ada = insertelement <4 x i32> %i.acz, i32 %i.acx, i64 1
  %i.adb = insertelement <4 x i32> %i.ada, i32 %i.acw, i64 2
  %i.adc = insertelement <4 x i32> %i.adb, i32 %i.acv, i64 3
  %reverse178 = sdiv <4 x i32> %i.acq, %i.adc
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %i.aba
  %i.ade = getelementptr inbounds i8, ptr %i.add, i64 -12
  store <4 x i32> %reverse178, ptr %i.ade, align 4, !tbaa !59, !alias.scope !78, !noalias !75
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %i.adf = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.adf, label %middle.block180, label %vector.body175, !llvm.loop !28

middle.block180:                                  ; preds = %vector.body175
  %cmp.n181 = icmp eq i64 %n.vec174, %i.aar
  br i1 %cmp.n181, label %mknembed_many.exit.i.i23, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %vector.memcheck161, %.lr.ph.i131.i.i, %middle.block180
  %indvars.iv.i132.i.i.ph = phi i64 [ %i.aar, %vector.memcheck161 ], [ %i.aar, %.lr.ph.i131.i.i ], [ %i.aaz, %middle.block180 ]
  br label %scalar.ph159

scalar.ph159:                                     ; preds = %scalar.ph159.preheader, %scalar.ph159
  %indvars.iv.i132.i.i = phi i64 [ %indvars.iv.next.i133.i.i, %scalar.ph159 ], [ %indvars.iv.i132.i.i.ph, %scalar.ph159.preheader ] ; 4 uses
  %indvars.iv.next.i133.i.i = add nsw i64 %indvars.iv.i132.i.i, -1 ; 2 uses
  %i.adg = getelementptr inbounds nuw [12 x i8], ptr %i.aaq, i64 %indvars.iv.next.i133.i.i ; 4 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 4
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !66
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !66
  %i.adl = sdiv i32 %i.adi, %i.adk
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %indvars.iv.i132.i.i
  store i32 %i.adl, ptr %i.adm, align 4, !tbaa !59
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !61
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adg, i64 20
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !61
  %i.adr = sdiv i32 %i.ado, %i.adq
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv.i132.i.i
  store i32 %i.adr, ptr %i.ads, align 4, !tbaa !59
  %i.adt = icmp samesign ugt i64 %indvars.iv.i132.i.i, 1
  br i1 %i.adt, label %scalar.ph159, label %mknembed_many.exit.i.i23, !llvm.loop !29

mknembed_many.exit.i.i23:                         ; preds = %scalar.ph159, %middle.block180, %bb.dr
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.adv = load i32, ptr %i.adu, align 8, !tbaa !51
  %i.adw = icmp slt i32 %i.adv, 0
  %i.adx = load i32, ptr @verbose, align 4, !tbaa !59
  %i.ady = icmp sgt i32 %i.adx, 2                 ; 2 uses
  br i1 %i.adw, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.ady, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %puts116.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.adz = load i32, ptr %i.pt, align 8, !tbaa !57 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !58 ; 3 uses
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !67
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !53
  %i.aef = load ptr, ptr %i.va, align 8, !tbaa !58
  %i.aeg = sext i32 %i.adz to i64
  %i.aeh = getelementptr [12 x i8], ptr %i.aef, i64 %i.aeg ; 2 uses
  %i.aei = getelementptr i8, ptr %i.aeh, i64 -8
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !66
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeb, i64 4
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !66
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !55
  %i.aeo = getelementptr i8, ptr %i.aeh, i64 -4
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !61
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !61
  %i.aes = tail call ptr @fftw_plan_many_dft_r2c(i32 noundef %i.adz, ptr noundef %i.zw, i32 noundef %i.aec, ptr noundef %i.aee, ptr noundef %i.aah, i32 noundef %i.aej, i32 noundef %i.ael, ptr noundef %i.aen, ptr noundef %i.aal, i32 noundef %i.aep, i32 noundef %i.aer, i32 noundef %1) #6
  br label %bb.dy

bb.dv:                                            ; preds = %mknembed_many.exit.i.i23
  br i1 %i.ady, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %puts115.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.aet = load i32, ptr %i.pt, align 8, !tbaa !57 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !58 ; 3 uses
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !67
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !53
  %i.aez = load ptr, ptr %i.va, align 8, !tbaa !58
  %i.afa = sext i32 %i.aet to i64
  %i.afb = getelementptr [12 x i8], ptr %i.aez, i64 %i.afa ; 2 uses
  %i.afc = getelementptr i8, ptr %i.afb, i64 -8
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !66
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !66
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !55
  %i.afi = getelementptr i8, ptr %i.afb, i64 -4
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !61
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !61
  %i.afm = tail call ptr @fftw_plan_many_dft_c2r(i32 noundef %i.aet, ptr noundef %i.zw, i32 noundef %i.aew, ptr noundef %i.aey, ptr noundef %i.aah, i32 noundef %i.afd, i32 noundef %i.aff, ptr noundef %i.afh, ptr noundef %i.aal, i32 noundef %i.afj, i32 noundef %i.afl, i32 noundef %1) #6
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.du
  %.1.i.i = phi ptr [ %i.aes, %bb.du ], [ %i.afm, %bb.dx ]
  tail call void @bench_free(ptr noundef %i.zw) #6
  tail call void @bench_free(ptr noundef %i.aah) #6
  tail call void @bench_free(ptr noundef %i.aal) #6
  br label %mkplan_complex.exit

expressible_as_api_many.exit.thread.i.i19:        ; preds = %bb.ch, %bb.cg, %bb.cb
  %i.afn = phi i32 [ %.pre.i, %bb.cb ], [ %i.uy, %bb.cg ], [ %i.uy, %bb.ch ] ; 3 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.afp = load i32, ptr %i.afo, align 8, !tbaa !51
  %i.afq = icmp slt i32 %i.afp, 0
  %i.afr = icmp sgt i32 %i.afn, -1                ; 2 uses
  br i1 %i.afq, label %bb.dz, label %bb.em

bb.dz:                                            ; preds = %expressible_as_api_many.exit.thread.i.i19
  br i1 %i.afr, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i7.i = load i32, ptr %i.pt, align 8, !tbaa !57
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.afs = phi i32 [ %.pr.i.i7.i, %bb.ea ], [ %i.afn, %bb.dz ] ; 2 uses
  %i.aft = icmp eq i32 %i.afs, 0
  br i1 %i.aft, label %bench_tensor_to_fftw_iodim.exit.i8.i, label %bb.ec
end_hunk_1
begin_hunk_2_@mkplan:bb.a
    i32 2, label %bb.gc
    i32 3, label %bb.gf
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.aox = load i32, ptr @verbose, align 4, !tbaa !59
  %i.aoy = icmp sgt i32 %i.aox, 2
  br i1 %i.aoy, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %puts108.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !58
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !67
  %i.apc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !53
  %i.ape = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !55
  %i.apg = load i32, ptr %i.anb, align 4, !tbaa !59
  %i.aph = tail call ptr @fftw_plan_r2r_1d(i32 noundef %i.apb, ptr noundef %i.apd, ptr noundef %i.apf, i32 noundef %i.apg, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gc:                                            ; preds = %bb.fy
  %i.api = load i32, ptr @verbose, align 4, !tbaa !59
  %i.apj = icmp sgt i32 %i.api, 2
  br i1 %i.apj, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %puts107.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.apk = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !58 ; 2 uses
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !67
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apl, i64 12
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !67
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !53
  %i.apr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !55
  %i.apt = load i32, ptr %i.anb, align 4, !tbaa !59
  %i.apu = getelementptr inbounds nuw i8, ptr %i.anb, i64 4
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !59
  %i.apw = tail call ptr @fftw_plan_r2r_2d(i32 noundef %i.apm, i32 noundef %i.apo, ptr noundef %i.apq, ptr noundef %i.aps, i32 noundef %i.apt, i32 noundef %i.apv, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gf:                                            ; preds = %bb.fy
  %i.apx = load i32, ptr @verbose, align 4, !tbaa !59
  %i.apy = icmp sgt i32 %i.apx, 2
  br i1 %i.apy, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %puts106.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.apz = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !58 ; 3 uses
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !67
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqa, i64 12
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !67
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqa, i64 24
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !67
  %i.aqg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !53
  %i.aqi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !55
  %i.aqk = load i32, ptr %i.anb, align 4, !tbaa !59
  %i.aql = getelementptr inbounds nuw i8, ptr %i.anb, i64 4
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !59
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.anb, i64 8
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !59
  %i.aqp = tail call ptr @fftw_plan_r2r_3d(i32 noundef %i.aqb, i32 noundef %i.aqd, i32 noundef %i.aqf, ptr noundef %i.aqh, ptr noundef %i.aqj, i32 noundef %i.aqk, i32 noundef %i.aqm, i32 noundef %i.aqo, i32 noundef %1) #6
  br label %mkplan_r2r.exit

bb.gi:                                            ; preds = %bb.fy
  %i.aqq = sext i32 %i.aow to i64
  %i.aqr = shl nsw i64 %i.aqq, 3
  %i.aqs = tail call ptr @bench_malloc(i64 noundef %i.aqr) #6 ; 3 uses
  %i.aqt = load i32, ptr %i.amv, align 8, !tbaa !57 ; 2 uses
  %i.aqu = icmp sgt i32 %i.aqt, 0
  br i1 %i.aqu, label %.lr.ph.i.i, label %mkn.exit.i

.lr.ph.i.i:                                       ; preds = %bb.gi
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !58
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %.lr.ph.i.i
  %indvars.iv.i110.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gj ] ; 3 uses
  %i.aqx = getelementptr inbounds nuw [12 x i8], ptr %i.aqw, i64 %indvars.iv.i110.i
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !67
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %indvars.iv.i110.i
  store i32 %i.aqy, ptr %i.aqz, align 4, !tbaa !59
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i110.i, 1 ; 2 uses
  %i.ara = load i32, ptr %i.amv, align 8, !tbaa !57 ; 2 uses
  %i.arb = sext i32 %i.ara to i64
  %i.arc = icmp slt i64 %indvars.iv.next.i.i, %i.arb
  br i1 %i.arc, label %bb.gj, label %mkn.exit.i, !llvm.loop !13

mkn.exit.i:                                       ; preds = %bb.gj, %bb.gi
  %i.ard = phi i32 [ %i.aqt, %bb.gi ], [ %i.ara, %bb.gj ]
  %i.are = load i32, ptr @verbose, align 4, !tbaa !59
  %i.arf = icmp sgt i32 %i.are, 2
  br i1 %i.arf, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %mkn.exit.i
  %puts109.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %.pre.i35 = load i32, ptr %i.amv, align 8, !tbaa !57
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %mkn.exit.i
  %i.arg = phi i32 [ %.pre.i35, %bb.gk ], [ %i.ard, %mkn.exit.i ]
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !53
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !55
  %i.arl = tail call ptr @fftw_plan_r2r(i32 noundef %i.arg, ptr noundef %i.aqs, ptr noundef %i.ari, ptr noundef %i.ark, ptr noundef %i.anb, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.aqs) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.i:                   ; preds = %bb.fv, %bb.fu
  %i.arm = load i32, ptr %i.amx, align 8, !tbaa !57
  %i.arn = icmp eq i32 %i.arm, 1
  br i1 %i.arn, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %expressible_as_api_many.exit.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.13, i32 noundef 484, ptr noundef nonnull @.str.6) #6
  %.pre138.i = load i32, ptr %i.amv, align 8, !tbaa !57
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %expressible_as_api_many.exit.i
  %i.aro = phi i32 [ %.pre138.i, %bb.gm ], [ %i.aoc, %expressible_as_api_many.exit.i ]
  %i.arp = sext i32 %i.aro to i64
  %i.arq = shl nsw i64 %i.arp, 3
  %i.arr = tail call ptr @bench_malloc(i64 noundef %i.arq) #6 ; 3 uses
  %i.ars = load i32, ptr %i.amv, align 8, !tbaa !57 ; 2 uses
  %i.art = icmp sgt i32 %i.ars, 0
  br i1 %i.art, label %.lr.ph.i111.i, label %.mkn.exit114_crit_edge.i

.mkn.exit114_crit_edge.i:                         ; preds = %bb.gn
  %.pre143.i = sext i32 %i.ars to i64
  br label %mkn.exit114.i

.lr.ph.i111.i:                                    ; preds = %bb.gn
  %i.aru = load ptr, ptr %i.aoe, align 8, !tbaa !58
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ 0, %.lr.ph.i111.i ], [ %indvars.iv.next.i113.i, %bb.go ] ; 3 uses
  %i.arv = getelementptr inbounds nuw [12 x i8], ptr %i.aru, i64 %indvars.iv.i112.i
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !67
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.i112.i
  store i32 %i.arw, ptr %i.arx, align 4, !tbaa !59
  %indvars.iv.next.i113.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.ary = load i32, ptr %i.amv, align 8, !tbaa !57
  %i.arz = sext i32 %i.ary to i64                 ; 2 uses
  %i.asa = icmp slt i64 %indvars.iv.next.i113.i, %i.arz
  br i1 %i.asa, label %bb.go, label %mkn.exit114.i, !llvm.loop !13

mkn.exit114.i:                                    ; preds = %bb.go, %.mkn.exit114_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre143.i, %.mkn.exit114_crit_edge.i ], [ %i.arz, %bb.go ]
  %i.asb = shl nsw i64 %.pre-phi.i, 3
  %i.asc = tail call ptr @bench_malloc(i64 noundef %i.asb) #6 ; 6 uses
  %i.asd = load i32, ptr %i.amv, align 8, !tbaa !57
  %i.ase = sext i32 %i.asd to i64
  %i.asf = shl nsw i64 %i.ase, 3
  %i.asg = tail call ptr @bench_malloc(i64 noundef %i.asf) #6 ; 6 uses
  %i.ash = load i32, ptr %i.amv, align 8, !tbaa !57 ; 2 uses
  %.not.i115.i = icmp eq i32 %i.ash, 2147483647
  br i1 %.not.i115.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %mkn.exit114.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.16, i32 noundef 94, ptr noundef nonnull @.str.6) #6
  %.pre.i119.i = load i32, ptr %i.amv, align 8, !tbaa !57
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %mkn.exit114.i
  %i.asi = phi i32 [ %.pre.i119.i, %bb.gp ], [ %i.ash, %mkn.exit114.i ] ; 3 uses
  %i.asj = icmp sgt i32 %i.asi, 1
  br i1 %i.asj, label %.lr.ph.i116.i, label %mknembed_many.exit.i

.lr.ph.i116.i:                                    ; preds = %bb.gq
  %i.ask = add nsw i32 %i.asi, -1
  %i.asl = load ptr, ptr %i.aoe, align 8, !tbaa !58 ; 7 uses
  %i.asm = zext i32 %i.ask to i64                 ; 8 uses
  %min.iters.check = icmp ult i32 %i.asi, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i116.i
  %i.asn = getelementptr i8, ptr %i.asc, i64 4    ; 2 uses
  %i.aso = shl nuw nsw i64 %i.asm, 2
  %i.asp = add nuw nsw i64 %i.aso, 4              ; 2 uses
  %i.asq = getelementptr i8, ptr %i.asc, i64 %i.asp ; 2 uses
  %i.asr = getelementptr i8, ptr %i.asg, i64 4    ; 2 uses
  %i.ass = getelementptr i8, ptr %i.asg, i64 %i.asp ; 2 uses
  %8 = getelementptr i8, ptr %i.asl, i64 4        ; 2 uses
  %9 = mul nuw nsw i64 %i.asm, 12
  %10 = getelementptr i8, ptr %i.asl, i64 %9
  %i.ast = getelementptr i8, ptr %10, i64 12      ; 2 uses
  %bound0 = icmp ult ptr %i.asn, %i.ass
  %bound1 = icmp ult ptr %i.asr, %i.asq
  %found.conflict = and i1 %bound0, %bound1
  %bound0134 = icmp ult ptr %i.asn, %i.ast
  %bound1135 = icmp ult ptr %8, %i.asq
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx = or i1 %found.conflict, %found.conflict136
  %bound0137 = icmp ult ptr %i.asr, %i.ast
  %bound1138 = icmp ult ptr %8, %i.ass
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx, %found.conflict139
  br i1 %conflict.rdx140, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.asm, 4294967292             ; 2 uses
  %i.asu = and i64 %i.asm, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.asv = sub i64 %i.asm, %index                 ; 6 uses
  %i.asw = getelementptr [12 x i8], ptr %i.asl, i64 %i.asv ; 4 uses
  %i.asx = getelementptr [12 x i8], ptr %i.asl, i64 %i.asv ; 4 uses
  %i.asy = getelementptr [12 x i8], ptr %i.asl, i64 %i.asv ; 4 uses
  %i.asz = getelementptr [12 x i8], ptr %i.asl, i64 %i.asv ; 4 uses
  %i.ata = getelementptr i8, ptr %i.asw, i64 -8
  %i.atb = getelementptr i8, ptr %i.asx, i64 -20
  %i.atc = getelementptr i8, ptr %i.asy, i64 -32
  %i.atd = getelementptr i8, ptr %i.asz, i64 -44
  %i.ate = load i32, ptr %i.ata, align 4, !tbaa !66, !alias.scope !80
  %i.atf = load i32, ptr %i.atb, align 4, !tbaa !66, !alias.scope !80
  %i.atg = load i32, ptr %i.atc, align 4, !tbaa !66, !alias.scope !80
  %i.ath = load i32, ptr %i.atd, align 4, !tbaa !66, !alias.scope !80
  %i.ati = insertelement <4 x i32> poison, i32 %i.ath, i64 0
  %i.atj = insertelement <4 x i32> %i.ati, i32 %i.atg, i64 1
  %i.atk = insertelement <4 x i32> %i.atj, i32 %i.atf, i64 2
  %i.atl = insertelement <4 x i32> %i.atk, i32 %i.ate, i64 3
  %i.atm = getelementptr i8, ptr %i.asw, i64 4
  %i.atn = getelementptr i8, ptr %i.asx, i64 -8
  %i.ato = getelementptr i8, ptr %i.asy, i64 -20
  %i.atp = getelementptr i8, ptr %i.asz, i64 -32
  %i.atq = load i32, ptr %i.atm, align 4, !tbaa !66, !alias.scope !80
  %i.atr = load i32, ptr %i.atn, align 4, !tbaa !66, !alias.scope !80
  %i.ats = load i32, ptr %i.ato, align 4, !tbaa !66, !alias.scope !80
  %i.att = load i32, ptr %i.atp, align 4, !tbaa !66, !alias.scope !80
  %i.atu = insertelement <4 x i32> poison, i32 %i.att, i64 0
  %i.atv = insertelement <4 x i32> %i.atu, i32 %i.ats, i64 1
  %i.atw = insertelement <4 x i32> %i.atv, i32 %i.atr, i64 2
  %i.atx = insertelement <4 x i32> %i.atw, i32 %i.atq, i64 3
  %reverse = sdiv <4 x i32> %i.atl, %i.atx
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %i.asv
  %i.atz = getelementptr inbounds i8, ptr %i.aty, i64 -12
  store <4 x i32> %reverse, ptr %i.atz, align 4, !tbaa !59, !alias.scope !81, !noalias !82
  %i.aua = getelementptr i8, ptr %i.asw, i64 -4
  %i.aub = getelementptr i8, ptr %i.asx, i64 -16
  %i.auc = getelementptr i8, ptr %i.asy, i64 -28
  %i.aud = getelementptr i8, ptr %i.asz, i64 -40
  %i.aue = load i32, ptr %i.aua, align 4, !tbaa !61, !alias.scope !80
  %i.auf = load i32, ptr %i.aub, align 4, !tbaa !61, !alias.scope !80
  %i.aug = load i32, ptr %i.auc, align 4, !tbaa !61, !alias.scope !80
  %i.auh = load i32, ptr %i.aud, align 4, !tbaa !61, !alias.scope !80
  %i.aui = insertelement <4 x i32> poison, i32 %i.auh, i64 0
  %i.auj = insertelement <4 x i32> %i.aui, i32 %i.aug, i64 1
  %i.auk = insertelement <4 x i32> %i.auj, i32 %i.auf, i64 2
  %i.aul = insertelement <4 x i32> %i.auk, i32 %i.aue, i64 3
  %i.aum = getelementptr i8, ptr %i.asw, i64 8
  %i.aun = getelementptr i8, ptr %i.asx, i64 -4
  %i.auo = getelementptr i8, ptr %i.asy, i64 -16
  %i.aup = getelementptr i8, ptr %i.asz, i64 -28
  %i.auq = load i32, ptr %i.aum, align 4, !tbaa !61, !alias.scope !80
  %i.aur = load i32, ptr %i.aun, align 4, !tbaa !61, !alias.scope !80
  %i.aus = load i32, ptr %i.auo, align 4, !tbaa !61, !alias.scope !80
  %i.aut = load i32, ptr %i.aup, align 4, !tbaa !61, !alias.scope !80
  %i.auu = insertelement <4 x i32> poison, i32 %i.aut, i64 0
  %i.auv = insertelement <4 x i32> %i.auu, i32 %i.aus, i64 1
  %i.auw = insertelement <4 x i32> %i.auv, i32 %i.aur, i64 2
  %i.aux = insertelement <4 x i32> %i.auw, i32 %i.auq, i64 3
  %reverse141 = sdiv <4 x i32> %i.aul, %i.aux
  %i.auy = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %i.asv
  %i.auz = getelementptr inbounds i8, ptr %i.auy, i64 -12
  store <4 x i32> %reverse141, ptr %i.auz, align 4, !tbaa !59, !alias.scope !83, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ava = icmp eq i64 %index.next, %n.vec
  br i1 %i.ava, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.asm
  br i1 %cmp.n, label %mknembed_many.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i116.i, %middle.block
  %indvars.iv.i117.i.ph = phi i64 [ %i.asm, %vector.memcheck ], [ %i.asm, %.lr.ph.i116.i ], [ %i.asu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i117.i = phi i64 [ %indvars.iv.next.i118.i, %scalar.ph ], [ %indvars.iv.i117.i.ph, %scalar.ph.preheader ] ; 4 uses
  %indvars.iv.next.i118.i = add nsw i64 %indvars.iv.i117.i, -1 ; 2 uses
  %i.avb = getelementptr inbounds nuw [12 x i8], ptr %i.asl, i64 %indvars.iv.next.i118.i ; 4 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 4
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !66
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avb, i64 16
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !66
  %i.avg = sdiv i32 %i.avd, %i.avf
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %indvars.iv.i117.i
  store i32 %i.avg, ptr %i.avh, align 4, !tbaa !59
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avb, i64 8
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !61
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avb, i64 20
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !61
  %i.avm = sdiv i32 %i.avj, %i.avl
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %indvars.iv.i117.i
  store i32 %i.avm, ptr %i.avn, align 4, !tbaa !59
  %i.avo = icmp samesign ugt i64 %indvars.iv.i117.i, 1
  br i1 %i.avo, label %scalar.ph, label %mknembed_many.exit.i, !llvm.loop !40

mknembed_many.exit.i:                             ; preds = %scalar.ph, %middle.block, %bb.gq
  %i.avp = load i32, ptr @verbose, align 4, !tbaa !59
  %i.avq = icmp sgt i32 %i.avp, 2
  br i1 %i.avq, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %mknembed_many.exit.i
  %puts105.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %mknembed_many.exit.i
  %i.avr = load i32, ptr %i.amv, align 8, !tbaa !57 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !58 ; 3 uses
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !67
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !53
  %i.avx = load ptr, ptr %i.aoe, align 8, !tbaa !58
  %i.avy = sext i32 %i.avr to i64
  %i.avz = getelementptr [12 x i8], ptr %i.avx, i64 %i.avy ; 2 uses
  %i.awa = getelementptr i8, ptr %i.avz, i64 -8
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !66
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avt, i64 4
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !66
  %i.awe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !55
  %i.awg = getelementptr i8, ptr %i.avz, i64 -4
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !61
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avt, i64 8
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !61
  %i.awk = tail call ptr @fftw_plan_many_r2r(i32 noundef %i.avr, ptr noundef %i.arr, i32 noundef %i.avu, ptr noundef %i.avw, ptr noundef %i.asc, i32 noundef %i.awb, i32 noundef %i.awd, ptr noundef %i.awf, ptr noundef %i.asg, i32 noundef %i.awh, i32 noundef %i.awj, ptr noundef %i.anb, i32 noundef %1) #6
  tail call void @bench_free(ptr noundef %i.arr) #6
  tail call void @bench_free(ptr noundef %i.asc) #6
  tail call void @bench_free(ptr noundef %i.asg) #6
  br label %mkplan_r2r.exit

expressible_as_api_many.exit.thread.i:            ; preds = %bb.fx, %bb.fw, %bb.fr
  %i.awl = phi i32 [ %.pre139.i, %bb.fr ], [ %i.aoc, %bb.fw ], [ %i.aoc, %bb.fx ] ; 2 uses
  %i.awm = icmp sgt i32 %i.awl, -1
  br i1 %i.awm, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %expressible_as_api_many.exit.thread.i
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.8, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  %.pr.i.i31 = load i32, ptr %i.amv, align 8, !tbaa !57
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %expressible_as_api_many.exit.thread.i
  %i.awn = phi i32 [ %.pr.i.i31, %bb.gt ], [ %i.awl, %expressible_as_api_many.exit.thread.i ] ; 2 uses
  %i.awo = icmp eq i32 %i.awn, 0
  br i1 %i.awo, label %bench_tensor_to_fftw_iodim.exit.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.awp = sext i32 %i.awn to i64
  %i.awq = mul nsw i64 %i.awp, 12
  %i.awr = tail call ptr @bench_malloc(i64 noundef %i.awq) #6 ; 8 uses
  %i.aws = load i32, ptr %i.amv, align 8, !tbaa !57 ; 3 uses
  %i.awt = icmp sgt i32 %i.aws, 0
  br i1 %i.awt, label %.lr.ph.i120.i, label %bench_tensor_to_fftw_iodim.exit.i

.lr.ph.i120.i:                                    ; preds = %bb.gv
  %i.awu = getelementptr inbounds nuw i8, ptr %i.amv, i64 8
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.aws to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.aww = icmp ult i32 %i.aws, 4
  br i1 %i.aww, label %.epil.preheader, label %.lr.ph.i120.i.new

.lr.ph.i120.i.new:                                ; preds = %.lr.ph.i120.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gw, %.lr.ph.i120.i.new
  %indvars.iv.i121.i = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %indvars.iv.next.i122.i.3, %bb.gw ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i120.i.new ], [ %niter.next.3, %bb.gw ]
  %i.awx = getelementptr inbounds nuw [12 x i8], ptr %i.awv, i64 %indvars.iv.i121.i ; 2 uses
  %i.awy = getelementptr inbounds nuw [12 x i8], ptr %i.awr, i64 %indvars.iv.i121.i ; 2 uses
  %i.awz = load <2 x i32>, ptr %i.awx, align 4, !tbaa !59
  store <2 x i32> %i.awz, ptr %i.awy, align 4, !tbaa !59
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awx, i64 8
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !61
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  store i32 %i.axb, ptr %i.axc, align 4, !tbaa !63
  %indvars.iv.next.i122.i = or disjoint i64 %indvars.iv.i121.i, 1 ; 2 uses
  %i.axd = getelementptr inbounds nuw [12 x i8], ptr %i.awv, i64 %indvars.iv.next.i122.i ; 2 uses
  %i.axe = getelementptr inbounds nuw [12 x i8], ptr %i.awr, i64 %indvars.iv.next.i122.i ; 2 uses
  %i.axf = load <2 x i32>, ptr %i.axd, align 4, !tbaa !59
  store <2 x i32> %i.axf, ptr %i.axe, align 4, !tbaa !59
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !61
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  store i32 %i.axh, ptr %i.axi, align 4, !tbaa !63
  %indvars.iv.next.i122.i.1 = or disjoint i64 %indvars.iv.i121.i, 2 ; 2 uses
  %i.axj = getelementptr inbounds nuw [12 x i8], ptr %i.awv, i64 %indvars.iv.next.i122.i.1 ; 2 uses
  %i.axk = getelementptr inbounds nuw [12 x i8], ptr %i.awr, i64 %indvars.iv.next.i122.i.1 ; 2 uses
  %i.axl = load <2 x i32>, ptr %i.axj, align 4, !tbaa !59
  store <2 x i32> %i.axl, ptr %i.axk, align 4, !tbaa !59
end_hunk_2
