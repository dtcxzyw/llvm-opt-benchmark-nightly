Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@b3World_Step:bb.a
  %i.ew = fdiv float %i.eo, %i.es
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ex = fmul float %i.et, %i.ev
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.ex, i64 1
  br label %b3MakeSoft.exit

b3MakeSoft.exit:                                  ; preds = %bb.aa, %bb.ab
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.ab ], [ zeroinitializer, %bb.aa ]
  %.sroa.5.0.i = phi float [ %i.ev, %bb.ab ], [ 0.000000e+00, %bb.aa ]
  store <2 x float> %.sroa.014.0.i, ptr %i.ek, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float %.sroa.5.0.i, ptr %.sroa.416.0..sroa_idx, align 4, !tbaa !144
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ez = fmul float %i.ej, 2.000000e+00          ; 2 uses
  %i.fa = fcmp oeq float %i.ez, 0.000000e+00
  br i1 %i.fa, label %b3MakeSoft.exit149, label %bb.ac

bb.ac:                                            ; preds = %b3MakeSoft.exit
  %i.fb = fmul float %i.em, 5.000000e-01
  %i.fc = fmul float %i.ez, f0x40C90FDB           ; 2 uses
  %i.fd = fmul float %i.fb, 2.000000e+00
  %i.fe = extractelement <2 x float> %i.ea, i64 1
  %i.ff = fmul float %i.fc, %i.fe                 ; 2 uses
  %i.fg = fadd float %i.fd, %i.ff                 ; 2 uses
  %i.fh = fmul float %i.ff, %i.fg                 ; 2 uses
  %i.fi = fadd float %i.fh, 1.000000e+00
  %i.fj = fdiv float 1.000000e+00, %i.fi          ; 2 uses
  %i.fk = fdiv float %i.fc, %i.fg
  %.sroa.014.0.vec.insert17.i143 = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fl = fmul float %i.fh, %i.fj
  %.sroa.014.4.vec.insert19.i144 = insertelement <2 x float> %.sroa.014.0.vec.insert17.i143, float %i.fl, i64 1
  br label %b3MakeSoft.exit149

b3MakeSoft.exit149:                               ; preds = %b3MakeSoft.exit, %bb.ac
  %.sroa.014.0.i145 = phi <2 x float> [ %.sroa.014.4.vec.insert19.i144, %bb.ac ], [ zeroinitializer, %b3MakeSoft.exit ]
  %.sroa.5.0.i146 = phi float [ %i.fj, %bb.ac ], [ 0.000000e+00, %b3MakeSoft.exit ]
  store <2 x float> %.sroa.014.0.i145, ptr %i.ey, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %.sroa.5.0.i146, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !144
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 4444
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.fo = load <2 x float>, ptr %i.fm, align 4, !tbaa !144
  store <2 x float> %i.fo, ptr %i.fn, align 4, !tbaa !144
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 4764
  %i.fq = load i8, ptr %i.fp, align 4, !tbaa !148 ; 3 uses
  %i.fr = icmp ult i8 %i.fq, 2
  br i1 %i.fr, label %bb.ae, label %bb.ad, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %b3MakeSoft.exit149
  %i.fs = zext i8 %i.fq to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @128, i64 %i.fs) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %b3MakeSoft.exit149
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 212
  store i8 %i.fq, ptr %i.ft, align 4, !tbaa !451
  %i.fu = call i64 @b3GetTicks() #16
  %i.fv = load ptr, ptr %i.dd, align 8, !tbaa !240 ; 33 uses
  %i.fw = icmp ne ptr %i.fv, null, !nosanitize !10
  %i.fx = ptrtoint ptr %i.fv to i64, !nosanitize !10 ; 2 uses
  %i.fy = and i64 %i.fx, 7, !nosanitize !10
  %i.fz = icmp eq i64 %i.fy, 0, !nosanitize !10
  %i.ga = and i1 %i.fw, %i.fz, !nosanitize !10
  br i1 %i.ga, label %bb.ag, label %bb.af, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @458, i64 %i.fx) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ag:                                            ; preds = %bb.ae
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 1144 ; 3 uses
  %i.gc = ptrtoint ptr %i.gb to i64, !nosanitize !10 ; 6 uses
  br label %.preheader299.i

.preheader299.i:                                  ; preds = %bb.ag, %bb.am
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.am ], [ 0, %bb.ag ] ; 3 uses
  %.02392427.i = phi i32 [ %i.gt, %bb.am ], [ 0, %bb.ag ] ; 2 uses
  %i.gd = mul nuw nsw i64 %indvars.iv.i, 112
  %i.ge = add i64 %i.gd, %i.gc, !nosanitize !10   ; 2 uses
  %.not298.i = icmp ult i64 %i.ge, %i.gc, !nosanitize !10
  br i1 %.not298.i, label %bb.ah, label %bb.ai, !prof !78, !nosanitize !10

bb.ah:                                            ; preds = %.preheader299.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @459, i64 %i.gc, i64 %i.ge) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ai:                                            ; preds = %.preheader299.i
  %i.gf = getelementptr inbounds nuw [112 x i8], ptr %i.gb, i64 %indvars.iv.i ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !247 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !248 ; 2 uses
  %i.gk = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gh, i32 %i.gj), !nosanitize !10 ; 2 uses
  %i.gl = extractvalue { i32, i1 } %i.gk, 1, !nosanitize !10
  br i1 %i.gl, label %bb.aj, label %bb.ak, !prof !78, !nosanitize !10

bb.aj:                                            ; preds = %bb.ai
  %i.gm = zext i32 %i.gh to i64, !nosanitize !10
  %i.gn = zext i32 %i.gj to i64, !nosanitize !10
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @460, i64 %i.gm, i64 %i.gn) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ak:                                            ; preds = %bb.ai
  %i.go = extractvalue { i32, i1 } %i.gk, 0, !nosanitize !10 ; 2 uses
  %i.gp = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.02392427.i, i32 %i.go), !nosanitize !10 ; 2 uses
  %i.gq = extractvalue { i32, i1 } %i.gp, 1, !nosanitize !10
  br i1 %i.gq, label %bb.al, label %bb.am, !prof !78, !nosanitize !10

bb.al:                                            ; preds = %bb.ak
  %i.gr = zext i32 %.02392427.i to i64, !nosanitize !10
  %i.gs = zext i32 %i.go to i64, !nosanitize !10
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @461, i64 %i.gr, i64 %i.gs) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.am:                                            ; preds = %bb.ak
  %i.gt = extractvalue { i32, i1 } %i.gp, 0, !nosanitize !10 ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 24
  br i1 %exitcond.not.i, label %bb.an, label %.preheader299.i, !llvm.loop !425

bb.an:                                            ; preds = %bb.am
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 3920 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !95 ; 6 uses
  %i.gw = ptrtoint ptr %i.gv to i64, !nosanitize !10 ; 2 uses
  %i.gx = add i64 %i.gw, 176, !nosanitize !10     ; 2 uses
  %i.gy = icmp ne ptr %i.gv, null, !nosanitize !10
  %i.gz = icmp ne i64 %i.gx, 0
  %i.ha = and i1 %i.gy, %i.gz
  %i.hb = icmp ult ptr %i.gv, inttoptr (i64 -176 to ptr)
  %i.hc = and i1 %i.hb, %i.ha, !nosanitize !10
  br i1 %i.hc, label %bb.ap, label %bb.ao, !prof !11, !nosanitize !10

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @462, i64 %i.gw, i64 %i.gx) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ap:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 176
  %i.he = ptrtoint ptr %i.hd to i64, !nosanitize !10 ; 2 uses
  %i.hf = and i64 %i.he, 7, !nosanitize !10
  %i.hg = icmp eq i64 %i.hf, 0, !nosanitize !10
  br i1 %i.hg, label %bb.ar, label %bb.aq, !prof !11, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @463, i64 %i.he) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ar:                                            ; preds = %bb.ap
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 224 ; 2 uses
  %i.hi = ptrtoint ptr %i.hh to i64, !nosanitize !10 ; 2 uses
  %i.hj = and i64 %i.hi, 7, !nosanitize !10
  %i.hk = icmp eq i64 %i.hj, 0, !nosanitize !10
  br i1 %i.hk, label %bb.at, label %bb.as, !prof !11, !nosanitize !10

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @464, i64 %i.hi) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.at:                                            ; preds = %bb.ar
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 232 ; 2 uses
  %i.hm = ptrtoint ptr %i.hl to i64, !nosanitize !10 ; 2 uses
  %i.hn = and i64 %i.hm, 7, !nosanitize !10
  %i.ho = icmp eq i64 %i.hn, 0, !nosanitize !10
  br i1 %i.ho, label %bb.av, label %bb.au, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @465, i64 %i.hm) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.av:                                            ; preds = %bb.at
  %i.hp = load i32, ptr %i.hl, align 8, !tbaa !249 ; 4 uses
  %i.hq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.gt, i32 %i.hp), !nosanitize !10 ; 2 uses
  %i.hr = extractvalue { i32, i1 } %i.hq, 0, !nosanitize !10 ; 3 uses
  %i.hs = extractvalue { i32, i1 } %i.hq, 1, !nosanitize !10
  br i1 %i.hs, label %bb.aw, label %bb.ax, !prof !78, !nosanitize !10

bb.aw:                                            ; preds = %bb.av
  %i.ht = zext i32 %i.gt to i64, !nosanitize !10
  %i.hu = zext i32 %i.hp to i64, !nosanitize !10
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @466, i64 %i.ht, i64 %i.hu) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ax:                                            ; preds = %bb.av
  %i.hv = icmp eq i32 %i.hr, 0
  br i1 %i.hv, label %b3Collide.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hw = shl i32 %i.hr, 2
  %i.hx = call ptr @b3StackAlloc(ptr noundef nonnull %i.fv, i32 noundef %i.hw, ptr noundef nonnull @.str.59) #16
  %.fr2652.i = freeze ptr %i.hx                   ; 8 uses
  %i.hy = ptrtoint ptr %.fr2652.i to i64          ; 11 uses
  %.not2653.i = icmp eq ptr %.fr2652.i, null      ; 3 uses
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge2523.i
  %i.hz = icmp sgt i32 %i.hp, 0
  br i1 %i.hz, label %bb.br, label %b3GetIdCapacity.exit.i

bb.ba:                                            ; preds = %._crit_edge2523.i, %bb.ay
  %indvars.iv4669.i = phi i64 [ 0, %bb.ay ], [ %indvars.iv.next4670.i, %._crit_edge2523.i ] ; 3 uses
  %.02372597.i = phi i32 [ 0, %bb.ay ], [ %.2.lcssa.i, %._crit_edge2523.i ] ; 6 uses
  %i.ia = getelementptr inbounds nuw [112 x i8], ptr %i.gb, i64 %indvars.iv4669.i ; 4 uses
  %i.ib = mul nuw nsw i64 %indvars.iv4669.i, 112
  %i.ic = add i64 %i.ib, %i.gc, !nosanitize !10   ; 2 uses
  %.not2655.i = icmp ult i64 %i.ic, %i.gc, !nosanitize !10
  br i1 %.not2655.i, label %bb.bb, label %bb.bc, !prof !78, !nosanitize !10

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @467, i64 %i.gc, i64 %i.ic) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bc:                                            ; preds = %bb.ba
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !247 ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bc
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !452
  %.fr2656.i = freeze ptr %i.ih                   ; 3 uses
  %i.ii = ptrtoint ptr %.fr2656.i to i64, !nosanitize !10 ; 5 uses
  %.not2657.i = icmp eq ptr %.fr2656.i, null, !nosanitize !10
  br i1 %.not2657.i, label %.split2433.i, label %.lr.ph.split.i, !prof !78

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %.not2653.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.preheader.i, !prof !78

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %i.ij = zext nneg i32 %i.ie to i64
  %i.ik = sext i32 %.02372597.i to i64
  %i.il = add i32 %i.ie, %.02372597.i
  %i.im = sub i32 2147483647, %.02372597.i
  %wide.trip.count.i = zext i32 %i.im to i64
  br label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.in = and i64 %i.ii, 3, !nosanitize !10
  %i.io = icmp eq i64 %i.in, 0, !nosanitize !10
  br i1 %i.io, label %bb.bd, label %.split2433.i, !prof !11, !nosanitize !10

bb.bd:                                            ; preds = %.lr.ph.split.split.us.i
  %i.ip = sext i32 %.02372597.i to i64
  %i.iq = shl nsw i64 %i.ip, 2                    ; 2 uses
  %i.ir = icmp eq i32 %.02372597.i, 0
  %i.is = icmp uge i64 %i.iq, %i.hy, !nosanitize !10
  %i.it = and i1 %i.ir, %i.is
  br i1 %i.it, label %.split2477.i, label %.split2473.us.i, !prof !11, !nosanitize !10

bb.be:                                            ; preds = %bb.bi
  %indvars.iv.next4651.i = add nuw nsw i64 %indvars.iv4650.i, 1 ; 2 uses
  %indvars.iv.next4653.i = add nsw i64 %indvars.iv4652.i, 1
  %exitcond4658.not.i = icmp eq i64 %indvars.iv.next4651.i, %i.ij
  br i1 %exitcond4658.not.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !426

.lr.ph.split.split.i:                             ; preds = %bb.be, %.lr.ph.split.split.preheader.i
  %indvars.iv4652.i = phi i64 [ %i.ik, %.lr.ph.split.split.preheader.i ], [ %indvars.iv.next4653.i, %bb.be ] ; 5 uses
  %indvars.iv4650.i = phi i64 [ 0, %.lr.ph.split.split.preheader.i ], [ %indvars.iv.next4651.i, %bb.be ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.fr2656.i, i64 %indvars.iv4650.i ; 2 uses
  %i.iv = shl nuw nsw i64 %indvars.iv4650.i, 2
  %i.iw = add i64 %i.iv, %i.ii, !nosanitize !10   ; 2 uses
  %.not2658.i = icmp ult i64 %i.iw, %i.ii, !nosanitize !10
  br i1 %.not2658.i, label %.split.us.i, label %bb.bf, !prof !78, !nosanitize !10

.split.us.i:                                      ; preds = %.lr.ph.split.split.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @468, i64 %i.ii, i64 %i.iw) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bf:                                            ; preds = %.lr.ph.split.split.i
  %i.ix = ptrtoint ptr %i.iu to i64, !nosanitize !10 ; 2 uses
  %i.iy = and i64 %i.ix, 3, !nosanitize !10
  %i.iz = icmp eq i64 %i.iy, 0, !nosanitize !10
  br i1 %i.iz, label %bb.bg, label %.split2433.i, !prof !11, !nosanitize !10

.split2433.i:                                     ; preds = %.lr.ph.i, %bb.bf, %.lr.ph.split.split.us.i
  %.us-phi2434.i = phi i64 [ %i.ix, %bb.bf ], [ %i.ii, %.lr.ph.split.split.us.i ], [ 0, %.lr.ph.i ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @469, i64 %.us-phi2434.i) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bg:                                            ; preds = %bb.bf
  %i.ja = load i32, ptr %i.iu, align 4, !tbaa !84
  %i.jb = getelementptr inbounds [4 x i8], ptr %.fr2652.i, i64 %indvars.iv4652.i ; 2 uses
  %i.jc = shl nsw i64 %indvars.iv4652.i, 2
  %i.jd = add i64 %i.jc, %i.hy, !nosanitize !10   ; 3 uses
  %i.je = icmp ne i64 %i.jd, 0
  %i.jf = icmp uge i64 %i.jd, %i.hy, !nosanitize !10
  %i.jg = icmp slt i64 %indvars.iv4652.i, 0
  %i.jh = xor i1 %i.jg, %i.jf
  %i.ji = and i1 %i.je, %i.jh, !nosanitize !10
  br i1 %i.ji, label %bb.bh, label %.split2473.us.i, !prof !11, !nosanitize !10

.split2473.us.i:                                  ; preds = %bb.bg, %bb.bd
  %.us-phi2475.i = phi i64 [ %i.iq, %bb.bd ], [ %i.jd, %bb.bg ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @470, i64 %i.hy, i64 %.us-phi2475.i) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bh:                                            ; preds = %bb.bg
  %i.jj = ptrtoint ptr %i.jb to i64, !nosanitize !10 ; 2 uses
  %i.jk = and i64 %i.jj, 3, !nosanitize !10
  %i.jl = icmp eq i64 %i.jk, 0, !nosanitize !10
  br i1 %i.jl, label %bb.bi, label %.split2477.i, !prof !11, !nosanitize !10

.split2477.i:                                     ; preds = %bb.bh, %bb.bd
  %.us-phi2478.i = phi i64 [ 0, %bb.bd ], [ %i.jj, %bb.bh ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @471, i64 %.us-phi2478.i) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bi:                                            ; preds = %bb.bh
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !84
  %exitcond4657.i = icmp eq i64 %indvars.iv4650.i, %wide.trip.count.i
  br i1 %exitcond4657.i, label %bb.bj, label %bb.be, !prof !78, !nosanitize !10

bb.bj:                                            ; preds = %bb.bi
  %i.jm = and i64 %indvars.iv4652.i, 4294967295
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @472, i64 %i.jm, i64 1) #15, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge.i:                                    ; preds = %bb.be, %bb.bc
  %.1.lcssa.i = phi i32 [ %.02372597.i, %bb.bc ], [ %i.il, %bb.be ] ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !248 ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph2522.i, label %._crit_edge2523.i

.lr.ph2522.i:                                     ; preds = %._crit_edge.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !250
  %.fr.i = freeze ptr %i.jr                       ; 3 uses
  %i.js = ptrtoint ptr %.fr.i to i64, !nosanitize !10 ; 5 uses
  %.not2659.i = icmp eq ptr %.fr.i, null, !nosanitize !10
  br i1 %.not2659.i, label %.split2530.i, label %.lr.ph2522.split.i, !prof !78

.lr.ph2522.split.i:                               ; preds = %.lr.ph2522.i
  br i1 %.not2653.i, label %.lr.ph2522.split.split.us.i, label %.lr.ph2522.split.split.preheader.i, !prof !78

.lr.ph2522.split.split.preheader.i:               ; preds = %.lr.ph2522.split.i
  %i.jt = zext nneg i32 %i.jo to i64
  %i.ju = sext i32 %.1.lcssa.i to i64
  %i.jv = add i32 %i.jo, %.1.lcssa.i
  br label %.lr.ph2522.split.split.i

.lr.ph2522.split.split.us.i:                      ; preds = %.lr.ph2522.split.i
  %i.jw = and i64 %i.js, 3, !nosanitize !10
  %i.jx = icmp eq i64 %i.jw, 0, !nosanitize !10
  br i1 %i.jx, label %bb.bk, label %.split2530.i, !prof !11, !nosanitize !10

bb.bk:                                            ; preds = %.lr.ph2522.split.split.us.i
  %i.jy = sext i32 %.1.lcssa.i to i64
  %i.jz = shl nsw i64 %i.jy, 2                    ; 2 uses
  %i.ka = icmp eq i32 %.1.lcssa.i, 0
  %i.kb = icmp uge i64 %i.jz, %i.hy, !nosanitize !10
  %i.kc = and i1 %i.ka, %i.kb
  br i1 %i.kc, label %.split2565.i, label %.split2561.us.i, !prof !11, !nosanitize !10

bb.bl:                                            ; preds = %bb.bp
  %indvars.iv.next4660.i = add nuw nsw i64 %indvars.iv4659.i, 1 ; 2 uses
  %indvars.iv.next4662.i = add nsw i64 %indvars.iv4661.i, 1
  %exitcond4668.not.i = icmp eq i64 %indvars.iv.next4660.i, %i.jt
  br i1 %exitcond4668.not.i, label %._crit_edge2523.i, label %.lr.ph2522.split.split.i, !llvm.loop !427

.lr.ph2522.split.split.i:                         ; preds = %bb.bl, %.lr.ph2522.split.split.preheader.i
  %indvars.iv4661.i = phi i64 [ %i.ju, %.lr.ph2522.split.split.preheader.i ], [ %indvars.iv.next4662.i, %bb.bl ] ; 5 uses
  %indvars.iv4659.i = phi i64 [ 0, %.lr.ph2522.split.split.preheader.i ], [ %indvars.iv.next4660.i, %bb.bl ] ; 3 uses
  %i.kd = getelementptr inbounds nuw [12 x i8], ptr %.fr.i, i64 %indvars.iv4659.i ; 2 uses
  %i.ke = mul nuw nsw i64 %indvars.iv4659.i, 12
  %i.kf = add i64 %i.ke, %i.js, !nosanitize !10   ; 2 uses
  %.not2660.i = icmp ult i64 %i.kf, %i.js, !nosanitize !10
  br i1 %.not2660.i, label %.split2526.us.i, label %bb.bm, !prof !78, !nosanitize !10

.split2526.us.i:                                  ; preds = %.lr.ph2522.split.split.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @473, i64 %i.js, i64 %i.kf) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bm:                                            ; preds = %.lr.ph2522.split.split.i
  %i.kg = ptrtoint ptr %i.kd to i64, !nosanitize !10 ; 2 uses
  %i.kh = and i64 %i.kg, 3, !nosanitize !10
  %i.ki = icmp eq i64 %i.kh, 0, !nosanitize !10
  br i1 %i.ki, label %bb.bn, label %.split2530.i, !prof !11, !nosanitize !10

.split2530.i:                                     ; preds = %.lr.ph2522.i, %bb.bm, %.lr.ph2522.split.split.us.i
  %.us-phi2531.i = phi i64 [ %i.kg, %bb.bm ], [ %i.js, %.lr.ph2522.split.split.us.i ], [ 0, %.lr.ph2522.i ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @475, i64 %.us-phi2531.i) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bn:                                            ; preds = %bb.bm
  %i.kj = load i32, ptr %i.kd, align 4, !tbaa !453
  %i.kk = getelementptr inbounds [4 x i8], ptr %.fr2652.i, i64 %indvars.iv4661.i ; 2 uses
  %i.kl = shl nsw i64 %indvars.iv4661.i, 2
  %i.km = add i64 %i.kl, %i.hy, !nosanitize !10   ; 3 uses
  %i.kn = icmp ne i64 %i.km, 0
  %i.ko = icmp uge i64 %i.km, %i.hy, !nosanitize !10
  %i.kp = icmp slt i64 %indvars.iv4661.i, 0
  %i.kq = xor i1 %i.kp, %i.ko
  %i.kr = and i1 %i.kn, %i.kq, !nosanitize !10
  br i1 %i.kr, label %bb.bo, label %.split2561.us.i, !prof !11, !nosanitize !10

.split2561.us.i:                                  ; preds = %bb.bn, %bb.bk
  %.us-phi2563.i = phi i64 [ %i.jz, %bb.bk ], [ %i.km, %bb.bn ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @476, i64 %i.hy, i64 %.us-phi2563.i) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bo:                                            ; preds = %bb.bn
  %i.ks = ptrtoint ptr %i.kk to i64, !nosanitize !10 ; 2 uses
  %i.kt = and i64 %i.ks, 3, !nosanitize !10
  %i.ku = icmp eq i64 %i.kt, 0, !nosanitize !10
  br i1 %i.ku, label %bb.bp, label %.split2565.i, !prof !11, !nosanitize !10

.split2565.i:                                     ; preds = %bb.bo, %bb.bk
  %.us-phi2566.i = phi i64 [ 0, %bb.bk ], [ %i.ks, %bb.bo ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @477, i64 %.us-phi2566.i) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bp:                                            ; preds = %bb.bo
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !84
  %exitcond4667.i = icmp eq i64 %indvars.iv4661.i, 2147483647
  br i1 %exitcond4667.i, label %bb.bq, label %bb.bl, !prof !78, !nosanitize !10

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @478, i64 2147483647, i64 1) #15, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge2523.i:                                ; preds = %bb.bl, %._crit_edge.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.jv, %bb.bl ]
  %indvars.iv.next4670.i = add nuw nsw i64 %indvars.iv4669.i, 1 ; 2 uses
  %exitcond4672.not.i = icmp eq i64 %indvars.iv.next4670.i, 24
  br i1 %exitcond4672.not.i, label %bb.az, label %bb.ba, !llvm.loop !428

bb.br:                                            ; preds = %bb.az
  %i.kv = load ptr, ptr %i.hh, align 8, !tbaa !111 ; 3 uses
  %i.kw = sext i32 %i.gt to i64                   ; 2 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %.fr2652.i, i64 %i.kw ; 2 uses
  %i.ky = shl nsw i64 %i.kw, 2
  %i.kz = add i64 %i.ky, %i.hy, !nosanitize !10   ; 3 uses
  %i.la = icmp ne ptr %.fr2652.i, null, !nosanitize !10
  %i.lb = icmp eq i64 %i.kz, 0
  %i.lc = xor i1 %i.la, %i.lb
  %i.ld = icmp uge i64 %i.kz, %i.hy, !nosanitize !10
  %i.le = icmp slt i32 %i.gt, 0
  %i.lf = xor i1 %i.le, %i.ld
  %i.lg = and i1 %i.lc, %i.lf, !nosanitize !10
  br i1 %i.lg, label %bb.bt, label %bb.bs, !prof !11, !nosanitize !10

bb.bs:                                            ; preds = %bb.br
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @479, i64 %i.hy, i64 %i.kz) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bt:                                            ; preds = %bb.br
  %i.lh = zext nneg i32 %i.hp to i64
  %i.li = shl nuw nsw i64 %i.lh, 2
  br i1 %.not2653.i, label %bb.bu, label %bb.bv, !prof !78, !nosanitize !10

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @480) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bv:                                            ; preds = %bb.bt
  %i.lj = ptrtoint ptr %i.kx to i64, !nosanitize !10 ; 2 uses
  %i.lk = and i64 %i.lj, 3, !nosanitize !10
  %i.ll = icmp eq i64 %i.lk, 0, !nosanitize !10
  br i1 %i.ll, label %bb.bx, label %bb.bw, !prof !11, !nosanitize !10

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @481, i64 %i.lj) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bx:                                            ; preds = %bb.bv
  %.not284.i = icmp eq ptr %i.kv, null, !nosanitize !10
  br i1 %.not284.i, label %bb.by, label %bb.bz, !prof !78, !nosanitize !10

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @482) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bz:                                            ; preds = %bb.bx
  %i.lm = ptrtoint ptr %i.kv to i64, !nosanitize !10 ; 2 uses
  %i.ln = and i64 %i.lm, 3, !nosanitize !10
  %i.lo = icmp eq i64 %i.ln, 0, !nosanitize !10
  br i1 %i.lo, label %bb.cb, label %bb.ca, !prof !11, !nosanitize !10

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @483, i64 %i.lm) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kx, ptr nonnull align 4 %i.kv, i64 %i.li, i1 false)
  br label %b3GetIdCapacity.exit.i

b3GetIdCapacity.exit.i:                           ; preds = %bb.cb, %bb.az
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  store ptr %.fr2652.i, ptr %i.lp, align 8, !tbaa !252
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fv, i64 3992
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !226
  %i.ls = getelementptr inbounds nuw i8, ptr %i.fv, i64 4680 ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.fv, i64 4144 ; 4 uses
  %i.lu = load i32, ptr %i.ls, align 8, !tbaa !153
  %i.lv = icmp sgt i32 %i.lu, 0
  br i1 %i.lv, label %.lr.ph2632.i, label %.split2604.us.i

.lr.ph2632.i:                                     ; preds = %b3GetIdCapacity.exit.i, %bb.cd
  %indvars.iv4673.i = phi i64 [ %indvars.iv.next4674.i, %bb.cd ], [ 0, %b3GetIdCapacity.exit.i ] ; 3 uses
  %i.lw = load ptr, ptr %i.lt, align 8, !tbaa !162 ; 3 uses
  %i.lx = getelementptr inbounds nuw [3848 x i8], ptr %i.lw, i64 %indvars.iv4673.i ; 6 uses
  %i.ly = mul nuw nsw i64 %indvars.iv4673.i, 3848
  %i.lz = ptrtoint ptr %i.lw to i64, !nosanitize !10 ; 3 uses
  %i.ma = add i64 %i.ly, %i.lz, !nosanitize !10   ; 3 uses
  %i.mb = icmp ne ptr %i.lw, null, !nosanitize !10 ; 2 uses
  %i.mc = icmp eq i64 %i.ma, 0
  %i.md = xor i1 %i.mb, %i.mc
  %i.me = icmp uge i64 %i.ma, %i.lz, !nosanitize !10
  %i.mf = and i1 %i.me, %i.md, !nosanitize !10
  br i1 %i.mf, label %bb.cc, label %.split2607.us.i, !prof !11, !nosanitize !10

bb.cc:                                            ; preds = %.lr.ph2632.i
  %i.mg = ptrtoint ptr %i.lx to i64, !nosanitize !10 ; 2 uses
  %i.mh = and i64 %i.mg, 7, !nosanitize !10
  %i.mi = icmp eq i64 %i.mh, 0, !nosanitize !10
  %i.mj = and i1 %i.mb, %i.mi
  br i1 %i.mj, label %bb.cd, label %.split2611.us.i, !prof !11, !nosanitize !10

bb.cd:                                            ; preds = %bb.cc
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  call void @b3SetBitCountAndClear(ptr noundef nonnull %i.mk, i32 noundef %i.lr) #16
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lx, i64 136
  store i32 0, ptr %i.ml, align 8, !tbaa !454
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 140
  store i32 0, ptr %i.mm, align 4, !tbaa !455
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lx, i64 156
  store i32 0, ptr %i.mn, align 4, !tbaa !253
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lx, i64 3752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mo, i8 0, i64 32, i1 false)
  %indvars.iv.next4674.i = add nuw nsw i64 %indvars.iv4673.i, 1 ; 2 uses
  %i.mp = load i32, ptr %i.ls, align 8, !tbaa !153
  %i.mq = sext i32 %i.mp to i64
  %i.mr = icmp slt i64 %indvars.iv.next4674.i, %i.mq
  br i1 %i.mr, label %.lr.ph2632.i, label %.split2604.us.i

.split2604.us.i:                                  ; preds = %bb.cd, %b3GetIdCapacity.exit.i
  call void @b3ParallelFor(ptr noundef nonnull %i.fv, ptr noundef nonnull @b3CollideTask, i32 noundef %i.hr, i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull @.str.60) #16
  call void @b3StackFree(ptr noundef nonnull %i.fv, ptr noundef %.fr2652.i) #16
  store ptr null, ptr %i.lp, align 8, !tbaa !252
  %i.ms = load ptr, ptr %i.lt, align 8, !tbaa !162 ; 8 uses
  %i.mt = icmp ne ptr %i.ms, null, !nosanitize !10
  %i.mu = ptrtoint ptr %i.ms to i64, !nosanitize !10 ; 2 uses
  %i.mv = and i64 %i.mu, 7, !nosanitize !10
  %i.mw = icmp eq i64 %i.mv, 0, !nosanitize !10
  %i.mx = and i1 %i.mt, %i.mw, !nosanitize !10
  br i1 %i.mx, label %bb.cf, label %bb.ce, !prof !11, !nosanitize !10

.split2607.us.i:                                  ; preds = %.lr.ph2632.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @484, i64 %i.lz, i64 %i.ma) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split2611.us.i:                                  ; preds = %bb.cc
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @485, i64 %i.mg) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ce:                                            ; preds = %.split2604.us.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @486, i64 %i.mu) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.cf:                                            ; preds = %.split2604.us.i
  %i.my = load float, ptr %4, align 8, !tbaa !447
  %i.mz = fcmp ogt float %i.my, 0.000000e+00      ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 40 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ms, i64 136
  %i.nc = getelementptr inbounds nuw i8, ptr %i.fv, i64 4584 ; 3 uses
  %i.nd = load i32, ptr %i.nb, align 8, !tbaa !454
  %i.ne = select i1 %i.mz, i32 %i.nd, i32 0
  store i32 %i.ne, ptr %i.nc, align 8, !tbaa !456
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ms, i64 140
  %i.ng = getelementptr inbounds nuw i8, ptr %i.fv, i64 4588 ; 3 uses
  %i.nh = load i32, ptr %i.nf, align 4, !tbaa !455
  %i.ni = select i1 %i.mz, i32 %i.nh, i32 0
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !457
  %i.nj = getelementptr inbounds nuw i8, ptr %i.fv, i64 4592 ; 10 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ms, i64 3752
  %i.nl = ptrtoint ptr %i.nj to i64, !nosanitize !10 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nj, ptr noundef nonnull align 8 dereferenceable(32) %i.nk, i64 32, i1 false)
  %i.nm = load i32, ptr %i.ls, align 8, !tbaa !153 ; 2 uses
  %i.nn = icmp sgt i32 %i.nm, 1
  br i1 %i.nn, label %.lr.ph2637.preheader.i, label %.preheader.i

.lr.ph2637.preheader.i:                           ; preds = %bb.cf
  %i.no = add i64 %i.nl, 8
  %i.np = add i64 %i.nl, 12
  %i.nq = add i64 %i.nl, 16
  %i.nr = add i64 %i.nl, 20
  %i.ns = add i64 %i.nl, 24
  %i.nt = add i64 %i.nl, 28
  %i.nu = getelementptr inbounds nuw i8, ptr %i.fv, i64 4596 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.fv, i64 4600 ; 2 uses
  %.not296.2.i = icmp ugt ptr %i.nj, inttoptr (i64 -9 to ptr)
  %i.nw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4604 ; 2 uses
  %.not296.3.i = icmp ugt ptr %i.nj, inttoptr (i64 -13 to ptr)
  %i.nx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4608 ; 2 uses
  %.not296.4.i = icmp ugt ptr %i.nj, inttoptr (i64 -17 to ptr)
  %i.ny = getelementptr inbounds nuw i8, ptr %i.fv, i64 4612 ; 2 uses
  %.not296.5.i = icmp ugt ptr %i.nj, inttoptr (i64 -21 to ptr)
  %i.nz = getelementptr inbounds nuw i8, ptr %i.fv, i64 4616 ; 2 uses
  %.not296.6.i = icmp ugt ptr %i.nj, inttoptr (i64 -25 to ptr)
  %i.oa = getelementptr inbounds nuw i8, ptr %i.fv, i64 4620 ; 2 uses
  %.not296.7.i = icmp ugt ptr %i.nj, inttoptr (i64 -29 to ptr)
  br label %.lr.ph2637.i

.preheader.i:                                     ; preds = %bb.dm, %bb.cf
  %i.ob = phi i32 [ %i.nm, %bb.cf ], [ %i.ro, %bb.dm ]
  %i.oc = icmp sgt i32 %i.ob, 0
  br i1 %i.oc, label %.lr.ph2639.i, label %._crit_edge2640.i

.lr.ph2637.i:                                     ; preds = %bb.dm, %.lr.ph2637.preheader.i
  %i.od = phi ptr [ %i.ms, %.lr.ph2637.preheader.i ], [ %i.om, %bb.dm ] ; 2 uses
  %indvars.iv4680.i = phi i64 [ 1, %.lr.ph2637.preheader.i ], [ %indvars.iv.next4681.i, %bb.dm ] ; 4 uses
  %i.oe = getelementptr inbounds nuw [3848 x i8], ptr %i.od, i64 %indvars.iv4680.i ; 2 uses
  %i.of = mul nuw nsw i64 %indvars.iv4680.i, 3848 ; 2 uses
  %i.og = ptrtoint ptr %i.od to i64, !nosanitize !10 ; 3 uses
  %i.oh = add i64 %i.of, %i.og, !nosanitize !10   ; 2 uses
  %.not.i150 = icmp ult i64 %i.oh, %i.og, !nosanitize !10
  br i1 %.not.i150, label %bb.cg, label %bb.ch, !prof !78, !nosanitize !10

end_hunk_0
