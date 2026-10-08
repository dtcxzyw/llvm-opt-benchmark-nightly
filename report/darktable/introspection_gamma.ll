Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_gamma?download=true
inline.NumInlined: 42
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@process:bb.a
  store i8 %i.iz, ptr %i.ir, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.ja = extractelement <8 x i8> %i.in, i64 4
  store i8 %i.ja, ptr %i.is, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.jb = extractelement <8 x i8> %i.in, i64 5
  store i8 %i.jb, ptr %i.it, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.jc = extractelement <8 x i8> %i.in, i64 6
  store i8 %i.jc, ptr %i.iu, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.jd = extractelement <8 x i8> %i.in, i64 7
  store i8 %i.jd, ptr %i.iv, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.je = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %predphi151
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %i.je, %i.hq
  %i.jg = fadd reassoc nsz arcp contract afn <8 x float> %i.jf, %predphi151
  %i.jh = fmul reassoc nsz arcp contract afn <8 x float> %i.jg, splat (float 2.550000e+02)
  %i.ji = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.jh)
  %i.jj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ji, <8 x float> zeroinitializer)
  %i.jk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.jj, <8 x float> splat (float 2.550000e+02))
  %i.jl = fptoui <8 x float> %i.jk to <8 x i8>    ; 8 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hc, i64 5
  %i.jo = getelementptr inbounds nuw i8, ptr %i.he, i64 9
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hg, i64 13
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hi, i64 17
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hk, i64 21
  %i.js = getelementptr inbounds nuw i8, ptr %i.hm, i64 25
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ho, i64 29
  %i.ju = extractelement <8 x i8> %i.jl, i64 0
  store i8 %i.ju, ptr %i.jm, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.jv = extractelement <8 x i8> %i.jl, i64 1
  store i8 %i.jv, ptr %i.jn, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.jw = extractelement <8 x i8> %i.jl, i64 2
  store i8 %i.jw, ptr %i.jo, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.jx = extractelement <8 x i8> %i.jl, i64 3
  store i8 %i.jx, ptr %i.jp, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.jy = extractelement <8 x i8> %i.jl, i64 4
  store i8 %i.jy, ptr %i.jq, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.jz = extractelement <8 x i8> %i.jl, i64 5
  store i8 %i.jz, ptr %i.jr, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.ka = extractelement <8 x i8> %i.jl, i64 6
  store i8 %i.ka, ptr %i.js, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.kb = extractelement <8 x i8> %i.jl, i64 7
  store i8 %i.kb, ptr %i.jt, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.kc = fmul reassoc nsz arcp contract afn <8 x float> %predphi152, %i.hq
  %i.kd = fsub reassoc nsz arcp contract afn <8 x float> %predphi152, %i.kc
  %i.ke = fmul reassoc nsz arcp contract afn <8 x float> %i.kd, splat (float 2.550000e+02)
  %i.kf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.ke)
  %i.kg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kf, <8 x float> zeroinitializer)
  %i.kh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.kg, <8 x float> splat (float 2.550000e+02))
  %i.ki = fptoui <8 x float> %i.kh to <8 x i8>    ; 8 uses
  %i.kj = extractelement <8 x i8> %i.ki, i64 0
  store i8 %i.kj, ptr %i.hb, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.kk = extractelement <8 x i8> %i.ki, i64 1
  store i8 %i.kk, ptr %i.hd, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.kl = extractelement <8 x i8> %i.ki, i64 2
  store i8 %i.kl, ptr %i.hf, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.km = extractelement <8 x i8> %i.ki, i64 3
  store i8 %i.km, ptr %i.hh, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.kn = extractelement <8 x i8> %i.ki, i64 4
  store i8 %i.kn, ptr %i.hj, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.ko = extractelement <8 x i8> %i.ki, i64 5
  store i8 %i.ko, ptr %i.hl, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.kp = extractelement <8 x i8> %i.ki, i64 6
  store i8 %i.kp, ptr %i.hn, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %i.kq = extractelement <8 x i8> %i.ki, i64 7
  store i8 %i.kq, ptr %i.hp, align 1, !tbaa !19, !alias.scope !145, !noalias !146
  %index.next153 = add nuw i64 %index146, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next153, %n.vec142
  br i1 %i.kr, label %.lr.ph261.i.preheader335, label %vector.body145, !llvm.loop !32

.preheader248.i:                                  ; preds = %bb.f
  %.not277.i = icmp eq i64 %i.v, 0
  br i1 %.not277.i, label %_channel_display_false_color.exit.thread, label %.lr.ph265.preheader.i

.lr.ph265.preheader.i:                            ; preds = %.preheader248.i
  %invariant.op.i.a = fmul reassoc nnan nsz arcp contract afn float %i.x, 2.550000e+02 ; 2 uses
  %i.ks = add i64 %i.v, -4                        ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.ks, 32
  br i1 %min.iters.check172, label %.lr.ph265.i.preheader, label %vector.ph173

.lr.ph265.i.preheader:                            ; preds = %vector.body179, %.lr.ph265.preheader.i
  %.0101264.i.ph = phi i64 [ 0, %.lr.ph265.preheader.i ], [ %i.kz, %vector.body179 ]
  %i.kt = insertelement <2 x float> poison, float %invariant.op.i.a, i64 1
  br label %.lr.ph265.i

vector.ph173:                                     ; preds = %.lr.ph265.preheader.i
  %i.ku = lshr exact i64 %i.ks, 2
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 2 uses
  %i.kw = and i64 %i.kv, 7                        ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 0
  %i.ky = select i1 %i.kx, i64 8, i64 %i.kw
  %n.vec174 = sub nsw i64 %i.kv, %i.ky            ; 2 uses
  %i.kz = shl i64 %n.vec174, 2
  %broadcast.splatinsert175.a = insertelement <8 x float> poison, float %invariant.op.i.a, i64 0
  %broadcast.splat176.a = shufflevector <8 x float> %broadcast.splatinsert175.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <8 x float> poison, float %i.x, i64 0
  %broadcast.splat178 = shufflevector <8 x float> %broadcast.splatinsert177, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph173
  %index180 = phi i64 [ 0, %vector.ph173 ], [ %index.next185, %vector.body179 ] ; 2 uses
  %i.la = shl nuw i64 %index180, 2                ; 9 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %wide.vec181 = load <32 x float>, ptr %i.lc, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 2 uses
  %strided.vec182 = shufflevector <32 x float> %wide.vec181, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec183 = shufflevector <32 x float> %wide.vec181, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 %i.la ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 %i.la ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 %i.la ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 %i.la ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 %i.la ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 %i.la ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 20
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 %i.la ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 %i.la ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 28
  %i.ls = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec183, %broadcast.splat178
  %i.lt = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec182, splat (float 3.130800e-03)
  %i.lu = fmul reassoc nnan nsz arcp contract afn <8 x float> %strided.vec182, splat (float 1.292000e+01)
  %i.lv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %strided.vec182, <8 x float> splat (float f0x3ED55555))
  %i.lw = fmul reassoc nsz arcp contract afn <8 x float> %i.lv, splat (float 1.055000e+00)
  %i.lx = fadd reassoc nsz arcp contract afn <8 x float> %i.lw, splat (float -5.500000e-02)
  %predphi184 = select reassoc nsz arcp contract afn <8 x i1> %i.lt, <8 x float> %i.lx, <8 x float> %i.lu ; 2 uses
  %i.ly = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat176.a, %strided.vec183
  %i.lz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.ly)
  %i.ma = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.lz, <8 x float> zeroinitializer)
  %i.mb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ma, <8 x float> splat (float 2.550000e+02))
  %i.mc = fptoui <8 x float> %i.mb to <8 x i8>    ; 8 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.me = getelementptr inbounds nuw i8, ptr %i.le, i64 6
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lg, i64 10
  %i.mg = getelementptr inbounds nuw i8, ptr %i.li, i64 14
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lk, i64 18
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lm, i64 22
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 26
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lq, i64 30
  %i.ml = extractelement <8 x i8> %i.mc, i64 0    ; 2 uses
  store i8 %i.ml, ptr %i.md, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.mm = extractelement <8 x i8> %i.mc, i64 1    ; 2 uses
  store i8 %i.mm, ptr %i.me, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.mn = extractelement <8 x i8> %i.mc, i64 2    ; 2 uses
  store i8 %i.mn, ptr %i.mf, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.mo = extractelement <8 x i8> %i.mc, i64 3    ; 2 uses
  store i8 %i.mo, ptr %i.mg, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.mp = extractelement <8 x i8> %i.mc, i64 4    ; 2 uses
  store i8 %i.mp, ptr %i.mh, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.mq = extractelement <8 x i8> %i.mc, i64 5    ; 2 uses
  store i8 %i.mq, ptr %i.mi, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.mr = extractelement <8 x i8> %i.mc, i64 6    ; 2 uses
  store i8 %i.mr, ptr %i.mj, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.ms = extractelement <8 x i8> %i.mc, i64 7    ; 2 uses
  store i8 %i.ms, ptr %i.mk, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.le, i64 5
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lg, i64 9
  %i.mw = getelementptr inbounds nuw i8, ptr %i.li, i64 13
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lk, i64 17
  %i.my = getelementptr inbounds nuw i8, ptr %i.lm, i64 21
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lo, i64 25
  %i.na = getelementptr inbounds nuw i8, ptr %i.lq, i64 29
  store i8 %i.ml, ptr %i.mt, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  store i8 %i.mm, ptr %i.mu, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  store i8 %i.mn, ptr %i.mv, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  store i8 %i.mo, ptr %i.mw, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  store i8 %i.mp, ptr %i.mx, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  store i8 %i.mq, ptr %i.my, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  store i8 %i.mr, ptr %i.mz, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  store i8 %i.ms, ptr %i.na, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.nb = fmul reassoc nsz arcp contract afn <8 x float> %i.ls, %predphi184
  %i.nc = fsub reassoc nsz arcp contract afn <8 x float> %predphi184, %i.nb
  %i.nd = fmul reassoc nsz arcp contract afn <8 x float> %i.nc, splat (float 2.550000e+02)
  %i.ne = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.nd)
  %i.nf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ne, <8 x float> zeroinitializer)
  %i.ng = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.nf, <8 x float> splat (float 2.550000e+02))
  %i.nh = fptoui <8 x float> %i.ng to <8 x i8>    ; 8 uses
  %i.ni = extractelement <8 x i8> %i.nh, i64 0
  store i8 %i.ni, ptr %i.ld, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.nj = extractelement <8 x i8> %i.nh, i64 1
  store i8 %i.nj, ptr %i.lf, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.nk = extractelement <8 x i8> %i.nh, i64 2
  store i8 %i.nk, ptr %i.lh, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.nl = extractelement <8 x i8> %i.nh, i64 3
  store i8 %i.nl, ptr %i.lj, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.nm = extractelement <8 x i8> %i.nh, i64 4
  store i8 %i.nm, ptr %i.ll, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.nn = extractelement <8 x i8> %i.nh, i64 5
  store i8 %i.nn, ptr %i.ln, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.no = extractelement <8 x i8> %i.nh, i64 6
  store i8 %i.no, ptr %i.lp, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.np = extractelement <8 x i8> %i.nh, i64 7
  store i8 %i.np, ptr %i.lr, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %index.next185 = add nuw i64 %index180, 8       ; 2 uses
  %i.nq = icmp eq i64 %index.next185, %n.vec174
  br i1 %i.nq, label %.lr.ph265.i.preheader, label %vector.body179, !llvm.loop !37

.preheader246.i:                                  ; preds = %bb.f
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.x, 2.550000e+02 ; 2 uses
  %.not278.i.a = icmp eq i64 %i.v, 0
  br i1 %.not278.i.a, label %_channel_display_false_color.exit.thread, label %.lr.ph267.i.preheader

.lr.ph267.i.preheader:                            ; preds = %.preheader246.i
  %i.nr = add i64 %i.v, -4                        ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.nr, 32
  br i1 %min.iters.check189, label %.lr.ph267.i.preheader330, label %vector.ph190

.lr.ph267.i.preheader330:                         ; preds = %vector.body196, %.lr.ph267.i.preheader
  %.0102266.i.ph = phi i64 [ 0, %.lr.ph267.i.preheader ], [ %i.nx, %vector.body196 ]
  %6 = insertelement <2 x float> poison, float %invariant.op.i, i64 1
  br label %.lr.ph267.i

vector.ph190:                                     ; preds = %.lr.ph267.i.preheader
  %i.ns = lshr exact i64 %i.nr, 2
  %i.nt = add nuw nsw i64 %i.ns, 1                ; 2 uses
  %i.nu = and i64 %i.nt, 7                        ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 0
  %i.nw = select i1 %i.nv, i64 8, i64 %i.nu
  %n.vec191 = sub nsw i64 %i.nt, %i.nw            ; 2 uses
  %i.nx = shl i64 %n.vec191, 2
  %broadcast.splatinsert192.a = insertelement <8 x float> poison, float %i.x, i64 0
  %broadcast.splat193.a = shufflevector <8 x float> %broadcast.splatinsert192.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x float> poison, float %invariant.op.i, i64 0
  %broadcast.splat195 = shufflevector <8 x float> %broadcast.splatinsert194, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph190
  %index197 = phi i64 [ 0, %vector.ph190 ], [ %index.next202, %vector.body196 ] ; 2 uses
  %i.ny = shl nuw i64 %index197, 2                ; 9 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %wide.vec198 = load <32 x float>, ptr %i.oa, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 2 uses
  %strided.vec199 = shufflevector <32 x float> %wide.vec198, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec200 = shufflevector <32 x float> %wide.vec198, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %3, i64 %i.ny ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 %i.ny ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 %i.ny ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 %i.ny ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 %i.ny ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 %i.ny ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 20
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 %i.ny ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 %i.ny ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 28
  %i.oq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec200, %broadcast.splat193.a
  %i.or = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec199, splat (float 3.130800e-03)
  %i.os = fmul reassoc nnan nsz arcp contract afn <8 x float> %strided.vec199, splat (float 1.292000e+01)
  %i.ot = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %strided.vec199, <8 x float> splat (float f0x3ED55555))
  %i.ou = fmul reassoc nsz arcp contract afn <8 x float> %i.ot, splat (float 1.055000e+00)
  %i.ov = fadd reassoc nsz arcp contract afn <8 x float> %i.ou, splat (float -5.500000e-02)
  %predphi201 = select reassoc nsz arcp contract afn <8 x i1> %i.or, <8 x float> %i.ov, <8 x float> %i.os ; 2 uses
  %i.ow = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat195, %strided.vec200
  %i.ox = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.ow)
  %i.oy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ox, <8 x float> zeroinitializer)
  %i.oz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.oy, <8 x float> splat (float 2.550000e+02))
  %i.pa = fptoui <8 x float> %i.oz to <8 x i8>    ; 8 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oc, i64 6
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 10
  %i.pe = getelementptr inbounds nuw i8, ptr %i.og, i64 14
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oi, i64 18
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ok, i64 22
  %i.ph = getelementptr inbounds nuw i8, ptr %i.om, i64 26
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oo, i64 30
  %i.pj = extractelement <8 x i8> %i.pa, i64 0
  store i8 %i.pj, ptr %i.pb, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.pk = extractelement <8 x i8> %i.pa, i64 1
  store i8 %i.pk, ptr %i.pc, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.pl = extractelement <8 x i8> %i.pa, i64 2
  store i8 %i.pl, ptr %i.pd, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.pm = extractelement <8 x i8> %i.pa, i64 3
  store i8 %i.pm, ptr %i.pe, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.pn = extractelement <8 x i8> %i.pa, i64 4
  store i8 %i.pn, ptr %i.pf, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.po = extractelement <8 x i8> %i.pa, i64 5
  store i8 %i.po, ptr %i.pg, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.pp = extractelement <8 x i8> %i.pa, i64 6
  store i8 %i.pp, ptr %i.ph, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.pq = extractelement <8 x i8> %i.pa, i64 7
  store i8 %i.pq, ptr %i.pi, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.pr = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %predphi201
  %i.ps = fmul reassoc nsz arcp contract afn <8 x float> %i.oq, %i.pr
  %i.pt = fadd reassoc nsz arcp contract afn <8 x float> %i.ps, %predphi201
  %i.pu = fmul reassoc nsz arcp contract afn <8 x float> %i.pt, splat (float 2.550000e+02)
  %i.pv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.pu)
  %i.pw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pv, <8 x float> zeroinitializer)
  %i.px = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.pw, <8 x float> splat (float 2.550000e+02))
  %i.py = fptoui <8 x float> %i.px to <8 x i8>    ; 8 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oc, i64 5
  %i.qb = getelementptr inbounds nuw i8, ptr %i.oe, i64 9
  %i.qc = getelementptr inbounds nuw i8, ptr %i.og, i64 13
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oi, i64 17
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ok, i64 21
  %i.qf = getelementptr inbounds nuw i8, ptr %i.om, i64 25
  %i.qg = getelementptr inbounds nuw i8, ptr %i.oo, i64 29
  %i.qh = extractelement <8 x i8> %i.py, i64 0
  store i8 %i.qh, ptr %i.pz, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.qi = extractelement <8 x i8> %i.py, i64 1
  store i8 %i.qi, ptr %i.qa, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.qj = extractelement <8 x i8> %i.py, i64 2
  store i8 %i.qj, ptr %i.qb, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.qk = extractelement <8 x i8> %i.py, i64 3
  store i8 %i.qk, ptr %i.qc, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.ql = extractelement <8 x i8> %i.py, i64 4
  store i8 %i.ql, ptr %i.qd, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.qm = extractelement <8 x i8> %i.py, i64 5
  store i8 %i.qm, ptr %i.qe, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.qn = extractelement <8 x i8> %i.py, i64 6
  store i8 %i.qn, ptr %i.qf, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.qo = extractelement <8 x i8> %i.py, i64 7
  store i8 %i.qo, ptr %i.qg, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  store i8 0, ptr %i.ob, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  store i8 0, ptr %i.od, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  store i8 0, ptr %i.of, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  store i8 0, ptr %i.oh, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  store i8 0, ptr %i.oj, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  store i8 0, ptr %i.ol, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  store i8 0, ptr %i.on, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  store i8 0, ptr %i.op, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %index.next202 = add nuw i64 %index197, 8       ; 2 uses
  %i.qp = icmp eq i64 %index.next202, %n.vec191
  br i1 %i.qp, label %.lr.ph267.i.preheader330, label %vector.body196, !llvm.loop !42

.preheader244.i:                                  ; preds = %bb.f
  %invariant.op268.i = fmul reassoc nnan nsz arcp contract afn float %i.x, 2.550000e+02 ; 2 uses
  %.not279.i = icmp eq i64 %i.v, 0
  br i1 %.not279.i, label %_channel_display_false_color.exit.thread, label %.lr.ph269.i.preheader

.lr.ph269.i.preheader:                            ; preds = %.preheader244.i
  %i.qq = add i64 %i.v, -4                        ; 2 uses
  %min.iters.check206 = icmp ult i64 %i.qq, 32
  br i1 %min.iters.check206, label %.lr.ph269.i.preheader328, label %vector.ph207

.lr.ph269.i.preheader328:                         ; preds = %vector.body213, %.lr.ph269.i.preheader
  %.0103268.i.ph = phi i64 [ 0, %.lr.ph269.i.preheader ], [ %i.qx, %vector.body213 ]
  %i.qr = insertelement <2 x float> poison, float %invariant.op268.i, i64 0
  br label %.lr.ph269.i

vector.ph207:                                     ; preds = %.lr.ph269.i.preheader
  %i.qs = lshr exact i64 %i.qq, 2
  %i.qt = add nuw nsw i64 %i.qs, 1                ; 2 uses
  %i.qu = and i64 %i.qt, 7                        ; 2 uses
  %i.qv = icmp eq i64 %i.qu, 0
  %i.qw = select i1 %i.qv, i64 8, i64 %i.qu
  %n.vec208 = sub nsw i64 %i.qt, %i.qw            ; 2 uses
  %i.qx = shl i64 %n.vec208, 2
  %broadcast.splatinsert209.a = insertelement <8 x float> poison, float %i.x, i64 0
  %broadcast.splat210.a = shufflevector <8 x float> %broadcast.splatinsert209.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert211 = insertelement <8 x float> poison, float %invariant.op268.i, i64 0
  %broadcast.splat212 = shufflevector <8 x float> %broadcast.splatinsert211, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph207
  %index214 = phi i64 [ 0, %vector.ph207 ], [ %index.next219, %vector.body213 ] ; 2 uses
  %i.qy = shl nuw i64 %index214, 2                ; 9 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %wide.vec215 = load <32 x float>, ptr %i.ra, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 2 uses
  %strided.vec216 = shufflevector <32 x float> %wide.vec215, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec217 = shufflevector <32 x float> %wide.vec215, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %3, i64 %i.qy ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 %i.qy ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 %i.qy ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 %i.qy ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 12
  %i.ri = getelementptr inbounds nuw i8, ptr %3, i64 %i.qy ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %3, i64 %i.qy ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 20
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 %i.qy ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = getelementptr inbounds nuw i8, ptr %3, i64 %i.qy ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 28
  %i.rq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec217, %broadcast.splat210.a
  %i.rr = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec216, splat (float 3.130800e-03)
  %i.rs = fmul reassoc nnan nsz arcp contract afn <8 x float> %strided.vec216, splat (float 1.292000e+01)
  %i.rt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %strided.vec216, <8 x float> splat (float f0x3ED55555))
  %i.ru = fmul reassoc nsz arcp contract afn <8 x float> %i.rt, splat (float 1.055000e+00)
  %i.rv = fadd reassoc nsz arcp contract afn <8 x float> %i.ru, splat (float -5.500000e-02)
  %predphi218 = select reassoc nsz arcp contract afn <8 x i1> %i.rr, <8 x float> %i.rv, <8 x float> %i.rs ; 2 uses
  %i.rw = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %predphi218
  %i.rx = fmul reassoc nsz arcp contract afn <8 x float> %i.rq, %i.rw
  %i.ry = fadd reassoc nsz arcp contract afn <8 x float> %i.rx, %predphi218
  %i.rz = fmul reassoc nsz arcp contract afn <8 x float> %i.ry, splat (float 2.550000e+02)
  %i.sa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.rz)
  %i.sb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.sa, <8 x float> zeroinitializer)
  %i.sc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.sb, <8 x float> splat (float 2.550000e+02))
  %i.sd = fptoui <8 x float> %i.sc to <8 x i8>    ; 8 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.rb, i64 2
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rc, i64 6
  %i.sg = getelementptr inbounds nuw i8, ptr %i.re, i64 10
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rg, i64 14
  %i.si = getelementptr inbounds nuw i8, ptr %i.ri, i64 18
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rk, i64 22
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rm, i64 26
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ro, i64 30
  %i.sm = extractelement <8 x i8> %i.sd, i64 0
  store i8 %i.sm, ptr %i.se, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.sn = extractelement <8 x i8> %i.sd, i64 1
  store i8 %i.sn, ptr %i.sf, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.so = extractelement <8 x i8> %i.sd, i64 2
  store i8 %i.so, ptr %i.sg, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.sp = extractelement <8 x i8> %i.sd, i64 3
  store i8 %i.sp, ptr %i.sh, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.sq = extractelement <8 x i8> %i.sd, i64 4
  store i8 %i.sq, ptr %i.si, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.sr = extractelement <8 x i8> %i.sd, i64 5
  store i8 %i.sr, ptr %i.sj, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.ss = extractelement <8 x i8> %i.sd, i64 6
  store i8 %i.ss, ptr %i.sk, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.st = extractelement <8 x i8> %i.sd, i64 7
  store i8 %i.st, ptr %i.sl, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.su = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat212, %strided.vec217
  %i.sv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.su)
  %i.sw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.sv, <8 x float> zeroinitializer)
  %i.sx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.sw, <8 x float> splat (float 2.550000e+02))
  %i.sy = fptoui <8 x float> %i.sx to <8 x i8>    ; 8 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.rb, i64 1
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rc, i64 5
  %i.tb = getelementptr inbounds nuw i8, ptr %i.re, i64 9
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rg, i64 13
  %i.td = getelementptr inbounds nuw i8, ptr %i.ri, i64 17
  %i.te = getelementptr inbounds nuw i8, ptr %i.rk, i64 21
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rm, i64 25
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ro, i64 29
  %i.th = extractelement <8 x i8> %i.sy, i64 0
  store i8 %i.th, ptr %i.sz, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.ti = extractelement <8 x i8> %i.sy, i64 1
  store i8 %i.ti, ptr %i.ta, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.tj = extractelement <8 x i8> %i.sy, i64 2
  store i8 %i.tj, ptr %i.tb, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.tk = extractelement <8 x i8> %i.sy, i64 3
  store i8 %i.tk, ptr %i.tc, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.tl = extractelement <8 x i8> %i.sy, i64 4
  store i8 %i.tl, ptr %i.td, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.tm = extractelement <8 x i8> %i.sy, i64 5
  store i8 %i.tm, ptr %i.te, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.tn = extractelement <8 x i8> %i.sy, i64 6
  store i8 %i.tn, ptr %i.tf, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.to = extractelement <8 x i8> %i.sy, i64 7
  store i8 %i.to, ptr %i.tg, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  store i8 0, ptr %i.rb, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  store i8 0, ptr %i.rd, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  store i8 0, ptr %i.rf, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  store i8 0, ptr %i.rh, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  store i8 0, ptr %i.rj, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  store i8 0, ptr %i.rl, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  store i8 0, ptr %i.rn, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  store i8 0, ptr %i.rp, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %index.next219 = add nuw i64 %index214, 8       ; 2 uses
  %i.tp = icmp eq i64 %index.next219, %n.vec208
  br i1 %i.tp, label %.lr.ph269.i.preheader328, label %vector.body213, !llvm.loop !47

.preheader242.i:                                  ; preds = %bb.f
  %.not280.i = icmp eq i64 %i.v, 0
  br i1 %.not280.i, label %_channel_display_false_color.exit.thread, label %.lr.ph271.i.preheader

.lr.ph271.i.preheader:                            ; preds = %.preheader242.i
  %i.tq = add i64 %i.v, -4                        ; 2 uses
  %min.iters.check223 = icmp ult i64 %i.tq, 32
  br i1 %min.iters.check223, label %.lr.ph271.i.preheader326, label %vector.ph224

.lr.ph271.i.preheader326:                         ; preds = %vector.body228, %.lr.ph271.i.preheader
  %.0105270.i.ph = phi i64 [ 0, %.lr.ph271.i.preheader ], [ %i.tw, %vector.body228 ]
  br label %.lr.ph271.i.a

vector.ph224:                                     ; preds = %.lr.ph271.i.preheader
  %i.tr = lshr exact i64 %i.tq, 2
  %i.ts = add nuw nsw i64 %i.tr, 1                ; 2 uses
  %i.tt = and i64 %i.ts, 7                        ; 2 uses
  %i.tu = icmp eq i64 %i.tt, 0
  %i.tv = select i1 %i.tu, i64 8, i64 %i.tt
  %n.vec225 = sub nsw i64 %i.ts, %i.tv            ; 2 uses
  %i.tw = shl i64 %n.vec225, 2
  %broadcast.splatinsert226 = insertelement <8 x float> poison, float %i.x, i64 0
  %broadcast.splat227 = shufflevector <8 x float> %broadcast.splatinsert226, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph224
  %index229 = phi i64 [ 0, %vector.ph224 ], [ %index.next236, %vector.body228 ] ; 2 uses
  %i.tx = shl nuw i64 %index229, 2                ; 9 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  %wide.vec230 = load <32 x float>, ptr %i.tz, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 2 uses
  %strided.vec231 = shufflevector <32 x float> %wide.vec230, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec232 = shufflevector <32 x float> %wide.vec230, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.ua = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec231, splat (float 2.560000e+02)
  %i.ub = fadd reassoc nsz arcp contract afn <8 x float> %i.ua, splat (float -1.280000e+02)
  %i.uc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ub, <8 x float> splat (float -6.500000e+01))
  %i.ud = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.uc, <8 x float> splat (float 6.500000e+01)) ; 2 uses
  %i.ue = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ud, splat (float 2.652520e-04)
  %i.uf = fadd reassoc nsz arcp contract afn <8 x float> %i.ue, splat (float f0x3F27B961) ; 6 uses
  %i.ug = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ud, splat (float 5.000000e-03)
  %i.uh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.uf, splat (float f0x3E53DCB1)
  %i.ui = fmul reassoc nsz arcp contract afn <8 x float> %i.uf, %i.uf
  %i.uj = fmul reassoc nsz arcp contract afn <8 x float> %i.ui, %i.uf
  %i.uk = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.uf, splat (float f0x3E038026)
  %i.ul = fadd reassoc nsz arcp contract afn <8 x float> %i.uk, splat (float f0xBC911AA6)
  %i.um = select reassoc nsz arcp contract afn <8 x i1> %i.uh, <8 x float> %i.uj, <8 x float> %i.ul ; 3 uses
  %i.un = fsub reassoc nsz arcp contract afn <8 x float> %i.uf, %i.ug ; 5 uses
  %i.uo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.un, splat (float f0x3E53DCB1)
  %i.up = fmul reassoc nsz arcp contract afn <8 x float> %i.un, %i.un
  %i.uq = fmul reassoc nsz arcp contract afn <8 x float> %i.up, %i.un
  %i.ur = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.un, splat (float f0x3E038026)
  %i.us = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ur, splat (float f0xBC911AA6)
  %i.ut = select reassoc nsz arcp contract afn <8 x i1> %i.uo, <8 x float> %i.uq, <8 x float> %i.us ; 3 uses
  %i.uu = fmul reassoc nsz arcp contract afn <8 x float> %i.um, splat (float f0x3FB3D067)
  %i.uv = fmul reassoc nsz arcp contract afn <8 x float> %i.ut, splat (float f0x3ECF35E2)
  %i.uw = fsub reassoc nsz arcp contract afn <8 x float> %i.uu, %i.uv ; 2 uses
  %i.ux = fmul reassoc nsz arcp contract afn <8 x float> %i.um, splat (float 9.724130e-01)
  %i.uy = fmul reassoc nsz arcp contract afn <8 x float> %i.ut, splat (float f0x3CE2116F)
  %i.uz = fadd reassoc nsz arcp contract afn <8 x float> %i.uy, %i.ux ; 2 uses
  %i.va = fmul reassoc nsz arcp contract afn <8 x float> %i.um, splat (float f0x3E2373E2)
  %i.vb = fmul reassoc nsz arcp contract afn <8 x float> %i.ut, splat (float f0x3F94602A)
  %i.vc = fsub reassoc nsz arcp contract afn <8 x float> %i.vb, %i.va ; 2 uses
  %i.vd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.uw, <8 x float> %i.uz)
  %i.ve = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.vd, <8 x float> %i.vc) ; 3 uses
  %i.vf = fmul reassoc nsz arcp contract afn <8 x float> %i.uw, splat (float 7.500000e-01)
  %i.vg = fdiv reassoc nsz arcp contract afn <8 x float> %i.vf, %i.ve ; 3 uses
  %i.vh = fmul reassoc nsz arcp contract afn <8 x float> %i.uz, splat (float 7.500000e-01)
  %i.vi = fdiv reassoc nsz arcp contract afn <8 x float> %i.vh, %i.ve ; 3 uses
  %i.vj = fmul reassoc nsz arcp contract afn <8 x float> %i.vc, splat (float 7.500000e-01)
  %i.vk = fdiv reassoc nsz arcp contract afn <8 x float> %i.vj, %i.ve ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 %i.tx ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %3, i64 %i.tx ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 4
  %i.vo = getelementptr inbounds nuw i8, ptr %3, i64 %i.tx ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vq = getelementptr inbounds nuw i8, ptr %3, i64 %i.tx ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 12
  %i.vs = getelementptr inbounds nuw i8, ptr %3, i64 %i.tx ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %3, i64 %i.tx ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 20
  %i.vw = getelementptr inbounds nuw i8, ptr %3, i64 %i.tx ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.vy = getelementptr inbounds nuw i8, ptr %3, i64 %i.tx ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 28
  %i.wa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec232, %broadcast.splat227 ; 3 uses
  %i.wb = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.vg, splat (float 3.130800e-03)
  %i.wc = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.vg, splat (float 1.292000e+01)
  %i.wd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.vg, <8 x float> splat (float f0x3ED55555))
  %i.we = fmul reassoc nsz arcp contract afn <8 x float> %i.wd, splat (float 1.055000e+00)
  %i.wf = fadd reassoc nsz arcp contract afn <8 x float> %i.we, splat (float -5.500000e-02)
  %predphi233.a = select reassoc nsz arcp contract afn <8 x i1> %i.wb, <8 x float> %i.wf, <8 x float> %i.wc ; 2 uses
  %i.wg = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.vi, splat (float 3.130800e-03)
  %i.wh = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.vi, splat (float 1.292000e+01)
  %i.wi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.vi, <8 x float> splat (float f0x3ED55555))
  %i.wj = fmul reassoc nsz arcp contract afn <8 x float> %i.wi, splat (float 1.055000e+00)
  %i.wk = fadd reassoc nsz arcp contract afn <8 x float> %i.wj, splat (float -5.500000e-02)
  %predphi234 = select reassoc nsz arcp contract afn <8 x i1> %i.wg, <8 x float> %i.wk, <8 x float> %i.wh ; 2 uses
  %i.wl = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.vk, splat (float 3.130800e-03)
  %i.wm = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.vk, splat (float 1.292000e+01)
  %i.wn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.vk, <8 x float> splat (float f0x3ED55555))
  %i.wo = fmul reassoc nsz arcp contract afn <8 x float> %i.wn, splat (float 1.055000e+00)
  %i.wp = fadd reassoc nsz arcp contract afn <8 x float> %i.wo, splat (float -5.500000e-02)
  %predphi235 = select reassoc nsz arcp contract afn <8 x i1> %i.wl, <8 x float> %i.wp, <8 x float> %i.wm ; 2 uses
  %i.wq = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %predphi233.a
  %i.wr = fmul reassoc nsz arcp contract afn <8 x float> %i.wq, %i.wa
  %i.ws = fadd reassoc nsz arcp contract afn <8 x float> %i.wr, %predphi233.a
  %i.wt = fmul reassoc nsz arcp contract afn <8 x float> %i.ws, splat (float 2.550000e+02)
  %i.wu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.wt)
  %i.wv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.wu, <8 x float> zeroinitializer)
  %i.ww = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.wv, <8 x float> splat (float 2.550000e+02))
  %i.wx = fptoui <8 x float> %i.ww to <8 x i8>    ; 8 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vl, i64 2
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vm, i64 6
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vo, i64 10
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vq, i64 14
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vs, i64 18
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vu, i64 22
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vw, i64 26
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vy, i64 30
  %i.xg = extractelement <8 x i8> %i.wx, i64 0
  store i8 %i.xg, ptr %i.wy, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.xh = extractelement <8 x i8> %i.wx, i64 1
  store i8 %i.xh, ptr %i.wz, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.xi = extractelement <8 x i8> %i.wx, i64 2
  store i8 %i.xi, ptr %i.xa, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.xj = extractelement <8 x i8> %i.wx, i64 3
  store i8 %i.xj, ptr %i.xb, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.xk = extractelement <8 x i8> %i.wx, i64 4
  store i8 %i.xk, ptr %i.xc, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.xl = extractelement <8 x i8> %i.wx, i64 5
  store i8 %i.xl, ptr %i.xd, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.xm = extractelement <8 x i8> %i.wx, i64 6
  store i8 %i.xm, ptr %i.xe, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.xn = extractelement <8 x i8> %i.wx, i64 7
  store i8 %i.xn, ptr %i.xf, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.xo = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %predphi234
  %i.xp = fmul reassoc nsz arcp contract afn <8 x float> %i.xo, %i.wa
  %i.xq = fadd reassoc nsz arcp contract afn <8 x float> %i.xp, %predphi234
  %i.xr = fmul reassoc nsz arcp contract afn <8 x float> %i.xq, splat (float 2.550000e+02)
  %i.xs = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.xr)
  %i.xt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.xs, <8 x float> zeroinitializer)
  %i.xu = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.xt, <8 x float> splat (float 2.550000e+02))
  %i.xv = fptoui <8 x float> %i.xu to <8 x i8>    ; 8 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  %i.xx = getelementptr inbounds nuw i8, ptr %i.vm, i64 5
  %i.xy = getelementptr inbounds nuw i8, ptr %i.vo, i64 9
  %i.xz = getelementptr inbounds nuw i8, ptr %i.vq, i64 13
  %i.ya = getelementptr inbounds nuw i8, ptr %i.vs, i64 17
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vu, i64 21
  %i.yc = getelementptr inbounds nuw i8, ptr %i.vw, i64 25
  %i.yd = getelementptr inbounds nuw i8, ptr %i.vy, i64 29
  %i.ye = extractelement <8 x i8> %i.xv, i64 0
  store i8 %i.ye, ptr %i.xw, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yf = extractelement <8 x i8> %i.xv, i64 1
  store i8 %i.yf, ptr %i.xx, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yg = extractelement <8 x i8> %i.xv, i64 2
  store i8 %i.yg, ptr %i.xy, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yh = extractelement <8 x i8> %i.xv, i64 3
  store i8 %i.yh, ptr %i.xz, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yi = extractelement <8 x i8> %i.xv, i64 4
  store i8 %i.yi, ptr %i.ya, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yj = extractelement <8 x i8> %i.xv, i64 5
  store i8 %i.yj, ptr %i.yb, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yk = extractelement <8 x i8> %i.xv, i64 6
  store i8 %i.yk, ptr %i.yc, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yl = extractelement <8 x i8> %i.xv, i64 7
  store i8 %i.yl, ptr %i.yd, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.ym = fmul reassoc nsz arcp contract afn <8 x float> %predphi235, %i.wa
  %i.yn = fsub reassoc nsz arcp contract afn <8 x float> %predphi235, %i.ym
  %i.yo = fmul reassoc nsz arcp contract afn <8 x float> %i.yn, splat (float 2.550000e+02)
  %i.yp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.yo)
  %i.yq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.yp, <8 x float> zeroinitializer)
  %i.yr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.yq, <8 x float> splat (float 2.550000e+02))
  %i.ys = fptoui <8 x float> %i.yr to <8 x i8>    ; 8 uses
  %i.yt = extractelement <8 x i8> %i.ys, i64 0
  store i8 %i.yt, ptr %i.vl, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yu = extractelement <8 x i8> %i.ys, i64 1
  store i8 %i.yu, ptr %i.vn, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yv = extractelement <8 x i8> %i.ys, i64 2
  store i8 %i.yv, ptr %i.vp, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yw = extractelement <8 x i8> %i.ys, i64 3
  store i8 %i.yw, ptr %i.vr, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yx = extractelement <8 x i8> %i.ys, i64 4
  store i8 %i.yx, ptr %i.vt, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yy = extractelement <8 x i8> %i.ys, i64 5
  store i8 %i.yy, ptr %i.vv, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.yz = extractelement <8 x i8> %i.ys, i64 6
  store i8 %i.yz, ptr %i.vx, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.za = extractelement <8 x i8> %i.ys, i64 7
  store i8 %i.za, ptr %i.vz, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %index.next236 = add nuw i64 %index229, 8       ; 2 uses
  %i.zb = icmp eq i64 %index.next236, %n.vec225
  br i1 %i.zb, label %.lr.ph271.i.preheader326, label %vector.body228, !llvm.loop !52

.preheader.i:                                     ; preds = %bb.f
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.agx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.1.i.i.i, float f0x3ED55555)
  %i.agy = fmul reassoc nsz arcp contract afn float %i.agx, 1.055000e+00
  %i.agz = fadd reassoc nsz arcp contract afn float %i.agy, -5.500000e-02
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aha = phi reassoc nsz arcp contract afn float [ %i.agw, %bb.j ], [ %i.agz, %bb.k ] ; 2 uses
  %i.ahb = fcmp reassoc nsz arcp contract afn ugt float %.reass.2.i.i.i, 3.130800e-03
  br i1 %i.ahb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ahc = fmul reassoc nnan nsz arcp contract afn float %.reass.2.i.i.i, 1.292000e+01
  br label %_write_pixel.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ahd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.2.i.i.i, float f0x3ED55555)
  %i.ahe = fmul reassoc nsz arcp contract afn float %i.ahd, 1.055000e+00
  %i.ahf = fadd reassoc nsz arcp contract afn float %i.ahe, -5.500000e-02
  br label %_write_pixel.exit.i

_write_pixel.exit.i:                              ; preds = %bb.n, %bb.m
  %i.ahg = phi reassoc nsz arcp contract afn float [ %i.ahc, %bb.m ], [ %i.ahf, %bb.n ] ; 2 uses
  %i.ahh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.agu
  %i.ahi = fmul reassoc nsz arcp contract afn float %i.ahh, %i.ago
  %i.ahj = fadd reassoc nsz arcp contract afn float %i.ahi, %i.agu
  %i.ahk = fmul reassoc nsz arcp contract afn float %i.ahj, 2.550000e+02
  %i.ahl = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ahk)
  %i.ahm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ahl, float 0.000000e+00)
  %i.ahn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ahm, float 2.550000e+02)
  %i.aho = fptoui float %i.ahn to i8
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.agl, i64 2
  store i8 %i.aho, ptr %i.ahp, align 1, !tbaa !19, !alias.scope !155, !noalias !156
  %i.ahq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aha
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agl, i64 1
  %i.ahs = fmul reassoc nsz arcp contract afn float %i.ahq, %i.ago
  %i.aht = fadd reassoc nsz arcp contract afn float %i.ahs, %i.aha
  %i.ahu = fmul reassoc nsz arcp contract afn float %i.ahg, %i.ago
  %i.ahv = fsub reassoc nsz arcp contract afn float %i.ahg, %i.ahu
  %i.ahw = insertelement <2 x float> poison, float %i.ahv, i64 0
  %i.ahx = insertelement <2 x float> %i.ahw, float %i.aht, i64 1
  %i.ahy = fmul reassoc nsz arcp contract afn <2 x float> %i.ahx, splat (float 2.550000e+02)
  %i.ahz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.ahy)
  %i.aia = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ahz, <2 x float> zeroinitializer)
  %i.aib = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aia, <2 x float> splat (float 2.550000e+02))
  %i.aic = fptoui <2 x float> %i.aib to <2 x i8>  ; 2 uses
  %i.aid = extractelement <2 x i8> %i.aic, i64 1
  store i8 %i.aid, ptr %i.ahr, align 1, !tbaa !19, !alias.scope !155, !noalias !156
  %i.aie = extractelement <2 x i8> %i.aic, i64 0
  store i8 %i.aie, ptr %i.agl, align 1, !tbaa !19, !alias.scope !155, !noalias !156
  %i.aif = add nuw i64 %.0104272.i, 4             ; 2 uses
  %i.aig = icmp ult i64 %i.aif, %i.v
  br i1 %i.aig, label %.lr.ph273.i.a, label %_channel_display_false_color.exit, !llvm.loop !58

.lr.ph271.i.a:                                    ; preds = %.lr.ph271.i.preheader326, %_write_pixel.exit112.i
  %.0105270.i = phi i64 [ %i.alm, %_write_pixel.exit112.i ], [ %.0105270.i.ph, %.lr.ph271.i.preheader326 ] ; 3 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0105270.i ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 4
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !140, !alias.scope !138, !noalias !139
  %i.aik = fmul reassoc nsz arcp contract afn float %i.aij, 2.560000e+02
  %i.ail = fadd reassoc nsz arcp contract afn float %i.aik, -1.280000e+02
  %i.aim = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ail, float -6.500000e+01)
  %i.ain = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aim, float 6.500000e+01) ; 2 uses
  %i.aio = fmul reassoc nnan nsz arcp contract afn float %i.ain, 2.652520e-04
  %i.aip = fadd reassoc nsz arcp contract afn float %i.aio, f0x3F27B961 ; 6 uses
  %i.aiq = fmul reassoc nnan nsz arcp contract afn float %i.ain, 5.000000e-03
  %i.air = fcmp reassoc nsz arcp contract afn ogt float %i.aip, f0x3E53DCB1
  %i.ais = fmul reassoc nsz arcp contract afn float %i.aip, %i.aip
  %i.ait = fmul reassoc nsz arcp contract afn float %i.ais, %i.aip
  %i.aiu = fmul reassoc nnan nsz arcp contract afn float %i.aip, f0x3E038026
  %i.aiv = fadd reassoc nsz arcp contract afn float %i.aiu, f0xBC911AA6
  %i.aiw = select reassoc nsz arcp contract afn i1 %i.air, float %i.ait, float %i.aiv ; 3 uses
  %i.aix = fsub reassoc nsz arcp contract afn float %i.aip, %i.aiq ; 5 uses
  %i.aiy = fcmp reassoc nsz arcp contract afn ogt float %i.aix, f0x3E53DCB1
  %i.aiz = fmul reassoc nsz arcp contract afn float %i.aix, %i.aix
  %i.aja = fmul reassoc nsz arcp contract afn float %i.aiz, %i.aix
  %i.ajb = fmul reassoc nnan nsz arcp contract afn float %i.aix, f0x3E038026
  %i.ajc = fadd reassoc nnan nsz arcp contract afn float %i.ajb, f0xBC911AA6
  %i.ajd = select reassoc nsz arcp contract afn i1 %i.aiy, float %i.aja, float %i.ajc ; 3 uses
  %i.aje = fmul reassoc nsz arcp contract afn float %i.aiw, f0x3FB3D067
  %i.ajf = fmul reassoc nsz arcp contract afn float %i.ajd, f0x3ECF35E2
  %i.ajg = fsub reassoc nsz arcp contract afn float %i.aje, %i.ajf ; 2 uses
  %i.ajh = fmul reassoc nsz arcp contract afn float %i.aiw, 9.724130e-01
  %i.aji = fmul reassoc nsz arcp contract afn float %i.ajd, f0x3CE2116F
  %i.ajj = fadd reassoc nsz arcp contract afn float %i.aji, %i.ajh ; 2 uses
  %i.ajk = fmul reassoc nsz arcp contract afn float %i.aiw, f0x3E2373E2
  %i.ajl = fmul reassoc nsz arcp contract afn float %i.ajd, f0x3F94602A
  %i.ajm = fsub reassoc nsz arcp contract afn float %i.ajl, %i.ajk ; 2 uses
  %i.ajn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ajg, float %i.ajj)
  %i.ajo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ajn, float %i.ajm) ; 3 uses
  %i.ajp = fmul reassoc nsz arcp contract afn float %i.ajg, 7.500000e-01
  %.reass.i.i108.i = fdiv reassoc nsz arcp contract afn float %i.ajp, %i.ajo ; 3 uses
  %i.ajq = fmul reassoc nsz arcp contract afn float %i.ajj, 7.500000e-01
  %.reass.1.i.i109.i = fdiv reassoc nsz arcp contract afn float %i.ajq, %i.ajo ; 3 uses
  %i.ajr = fmul reassoc nsz arcp contract afn float %i.ajm, 7.500000e-01
  %.reass.2.i.i110.i = fdiv reassoc nsz arcp contract afn float %i.ajr, %i.ajo ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %3, i64 %.0105270.i ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aih, i64 12
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !140, !alias.scope !138, !noalias !139
  %i.ajv = fmul reassoc nsz arcp contract afn float %i.aju, %i.x ; 3 uses
  %i.ajw = fcmp reassoc nsz arcp contract afn ugt float %.reass.i.i108.i, 3.130800e-03
  br i1 %i.ajw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph271.i.a
  %i.ajx = fmul reassoc nnan nsz arcp contract afn float %.reass.i.i108.i, 1.292000e+01
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph271.i.a
  %i.ajy = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.i.i108.i, float f0x3ED55555)
  %i.ajz = fmul reassoc nsz arcp contract afn float %i.ajy, 1.055000e+00
  %i.aka = fadd reassoc nsz arcp contract afn float %i.ajz, -5.500000e-02
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.akb = phi reassoc nsz arcp contract afn float [ %i.ajx, %bb.o ], [ %i.aka, %bb.p ] ; 2 uses
  %i.akc = fcmp reassoc nsz arcp contract afn ugt float %.reass.1.i.i109.i, 3.130800e-03
  br i1 %i.akc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.akd = fmul reassoc nnan nsz arcp contract afn float %.reass.1.i.i109.i, 1.292000e+01
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ake = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.1.i.i109.i, float f0x3ED55555)
  %i.akf = fmul reassoc nsz arcp contract afn float %i.ake, 1.055000e+00
  %i.akg = fadd reassoc nsz arcp contract afn float %i.akf, -5.500000e-02
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.akh = phi reassoc nsz arcp contract afn float [ %i.akd, %bb.r ], [ %i.akg, %bb.s ] ; 2 uses
  %i.aki = fcmp reassoc nsz arcp contract afn ugt float %.reass.2.i.i110.i, 3.130800e-03
  br i1 %i.aki, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.akj = fmul reassoc nnan nsz arcp contract afn float %.reass.2.i.i110.i, 1.292000e+01
  br label %_write_pixel.exit112.i

bb.v:                                             ; preds = %bb.t
  %i.akk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.2.i.i110.i, float f0x3ED55555)
  %i.akl = fmul reassoc nsz arcp contract afn float %i.akk, 1.055000e+00
  %i.akm = fadd reassoc nsz arcp contract afn float %i.akl, -5.500000e-02
  br label %_write_pixel.exit112.i

_write_pixel.exit112.i:                           ; preds = %bb.v, %bb.u
  %i.akn = phi reassoc nsz arcp contract afn float [ %i.akj, %bb.u ], [ %i.akm, %bb.v ] ; 2 uses
  %i.ako = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.akb
  %i.akp = fmul reassoc nsz arcp contract afn float %i.ako, %i.ajv
  %i.akq = fadd reassoc nsz arcp contract afn float %i.akp, %i.akb
  %i.akr = fmul reassoc nsz arcp contract afn float %i.akq, 2.550000e+02
  %i.aks = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.akr)
  %i.akt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aks, float 0.000000e+00)
  %i.aku = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.akt, float 2.550000e+02)
  %i.akv = fptoui float %i.aku to i8
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ajs, i64 2
  store i8 %i.akv, ptr %i.akw, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.akx = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.akh
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ajs, i64 1
  %i.akz = fmul reassoc nsz arcp contract afn float %i.akx, %i.ajv
  %i.ala = fadd reassoc nsz arcp contract afn float %i.akz, %i.akh
  %i.alb = fmul reassoc nsz arcp contract afn float %i.akn, %i.ajv
  %i.alc = fsub reassoc nsz arcp contract afn float %i.akn, %i.alb
  %i.ald = insertelement <2 x float> poison, float %i.alc, i64 0
  %i.ale = insertelement <2 x float> %i.ald, float %i.ala, i64 1
  %i.alf = fmul reassoc nsz arcp contract afn <2 x float> %i.ale, splat (float 2.550000e+02)
  %i.alg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.alf)
  %i.alh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.alg, <2 x float> zeroinitializer)
  %i.ali = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.alh, <2 x float> splat (float 2.550000e+02))
  %i.alj = fptoui <2 x float> %i.ali to <2 x i8>  ; 2 uses
  %i.alk = extractelement <2 x i8> %i.alj, i64 1
  store i8 %i.alk, ptr %i.aky, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.all = extractelement <2 x i8> %i.alj, i64 0
  store i8 %i.all, ptr %i.ajs, align 1, !tbaa !19, !alias.scope !153, !noalias !154
  %i.alm = add nuw i64 %.0105270.i, 4             ; 2 uses
  %i.aln = icmp ult i64 %i.alm, %i.v
  br i1 %i.aln, label %.lr.ph271.i.a, label %_channel_display_false_color.exit, !llvm.loop !59

.lr.ph269.i:                                      ; preds = %.lr.ph269.i.preheader328, %_write_pixel.exit113.i
  %.0103268.i = phi i64 [ %i.amn, %_write_pixel.exit113.i ], [ %.0103268.i.ph, %.lr.ph269.i.preheader328 ] ; 3 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0103268.i ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 4
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %3, i64 %.0103268.i ; 3 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alo, i64 12
  %i.alt = load float, ptr %i.als, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 2 uses
  %i.alu = fmul reassoc nsz arcp contract afn float %i.alt, %i.x
  %i.alv = fcmp reassoc nsz arcp contract afn ugt float %i.alq, 3.130800e-03
  br i1 %i.alv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph269.i
  %i.alw = fmul reassoc nnan nsz arcp contract afn float %i.alq, 1.292000e+01
  br label %_write_pixel.exit113.i

bb.x:                                             ; preds = %.lr.ph269.i
  %i.alx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.alq, float f0x3ED55555)
  %i.aly = fmul reassoc nsz arcp contract afn float %i.alx, 1.055000e+00
  %i.alz = fadd reassoc nsz arcp contract afn float %i.aly, -5.500000e-02
  br label %_write_pixel.exit113.i

_write_pixel.exit113.i:                           ; preds = %bb.x, %bb.w
  %i.ama = phi reassoc nsz arcp contract afn float [ %i.alw, %bb.w ], [ %i.alz, %bb.x ] ; 2 uses
  %i.amb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ama
  %i.amc = fmul reassoc nsz arcp contract afn float %i.alu, %i.amb
  %i.amd = fadd reassoc nsz arcp contract afn float %i.amc, %i.ama
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alr, i64 2
  %i.amf = insertelement <2 x float> %i.qr, float %i.amd, i64 1
  %7 = insertelement <2 x float> <float poison, float 2.550000e+02>, float %i.alt, i64 0
  %i.amg = fmul reassoc nsz arcp contract afn <2 x float> %i.amf, %7
  %i.amh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.amg)
  %i.ami = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.amh, <2 x float> zeroinitializer)
  %i.amj = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ami, <2 x float> splat (float 2.550000e+02))
  %i.amk = fptoui <2 x float> %i.amj to <2 x i8>  ; 2 uses
  %i.aml = extractelement <2 x i8> %i.amk, i64 1
  store i8 %i.aml, ptr %i.ame, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %8 = getelementptr inbounds nuw i8, ptr %i.alr, i64 1
  %i.amm = extractelement <2 x i8> %i.amk, i64 0
  store i8 %i.amm, ptr %8, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  store i8 0, ptr %i.alr, align 1, !tbaa !19, !alias.scope !151, !noalias !152
  %i.amn = add nuw i64 %.0103268.i, 4             ; 2 uses
  %i.amo = icmp ult i64 %i.amn, %i.v
  br i1 %i.amo, label %.lr.ph269.i, label %_channel_display_false_color.exit, !llvm.loop !60

.lr.ph267.i:                                      ; preds = %.lr.ph267.i.preheader330, %_write_pixel.exit114.i
  %.0102266.i = phi i64 [ %i.anp, %_write_pixel.exit114.i ], [ %.0102266.i.ph, %.lr.ph267.i.preheader330 ] ; 3 uses
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0102266.i ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 4
  %i.amr = load float, ptr %i.amq, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 3 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %3, i64 %.0102266.i ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amp, i64 12
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 2 uses
  %i.amv = fmul reassoc nsz arcp contract afn float %i.amu, %i.x
  %i.amw = fcmp reassoc nsz arcp contract afn ugt float %i.amr, 3.130800e-03
  br i1 %i.amw, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph267.i
  %i.amx = fmul reassoc nnan nsz arcp contract afn float %i.amr, 1.292000e+01
  br label %_write_pixel.exit114.i

bb.z:                                             ; preds = %.lr.ph267.i
  %i.amy = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.amr, float f0x3ED55555)
  %i.amz = fmul reassoc nsz arcp contract afn float %i.amy, 1.055000e+00
  %i.ana = fadd reassoc nsz arcp contract afn float %i.amz, -5.500000e-02
  br label %_write_pixel.exit114.i

_write_pixel.exit114.i:                           ; preds = %bb.z, %bb.y
  %i.anb = phi reassoc nsz arcp contract afn float [ %i.amx, %bb.y ], [ %i.ana, %bb.z ] ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ams, i64 2
  %i.and = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.anb
  %i.ane = fmul reassoc nsz arcp contract afn float %i.amv, %i.and
  %i.anf = fadd reassoc nsz arcp contract afn float %i.ane, %i.anb
  %i.ang = insertelement <2 x float> %6, float %i.anf, i64 0
  %i.anh = insertelement <2 x float> <float 2.550000e+02, float poison>, float %i.amu, i64 1
  %i.ani = fmul reassoc nsz arcp contract afn <2 x float> %i.ang, %i.anh
  %i.anj = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.ani)
  %i.ank = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.anj, <2 x float> zeroinitializer)
  %i.anl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ank, <2 x float> splat (float 2.550000e+02))
  %i.anm = fptoui <2 x float> %i.anl to <2 x i8>  ; 2 uses
  %i.ann = extractelement <2 x i8> %i.anm, i64 1
  store i8 %i.ann, ptr %i.anc, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %9 = getelementptr inbounds nuw i8, ptr %i.ams, i64 1
  %i.ano = extractelement <2 x i8> %i.anm, i64 0
  store i8 %i.ano, ptr %9, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  store i8 0, ptr %i.ams, align 1, !tbaa !19, !alias.scope !149, !noalias !150
  %i.anp = add nuw i64 %.0102266.i, 4             ; 2 uses
  %i.anq = icmp ult i64 %i.anp, %i.v
  br i1 %i.anq, label %.lr.ph267.i, label %_channel_display_false_color.exit, !llvm.loop !61

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.preheader, %_write_pixel.exit115.i
  %.0101264.i = phi i64 [ %i.aor, %_write_pixel.exit115.i ], [ %.0101264.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0101264.i ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 4
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %3, i64 %.0101264.i ; 3 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anr, i64 12
  %i.anw = load float, ptr %i.anv, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 2 uses
  %i.anx = fmul reassoc nsz arcp contract afn float %i.anw, %i.x
  %i.any = fcmp reassoc nsz arcp contract afn ugt float %i.ant, 3.130800e-03
  br i1 %i.any, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph265.i
  %i.anz = fmul reassoc nnan nsz arcp contract afn float %i.ant, 1.292000e+01
  br label %_write_pixel.exit115.i

bb.ab:                                            ; preds = %.lr.ph265.i
  %i.aoa = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ant, float f0x3ED55555)
  %i.aob = fmul reassoc nsz arcp contract afn float %i.aoa, 1.055000e+00
  %i.aoc = fadd reassoc nsz arcp contract afn float %i.aob, -5.500000e-02
  br label %_write_pixel.exit115.i

_write_pixel.exit115.i:                           ; preds = %bb.ab, %bb.aa
  %i.aod = phi reassoc nsz arcp contract afn float [ %i.anz, %bb.aa ], [ %i.aoc, %bb.ab ] ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anu, i64 2
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anu, i64 1
  %i.aog = fmul reassoc nsz arcp contract afn float %i.anx, %i.aod
  %i.aoh = fsub reassoc nsz arcp contract afn float %i.aod, %i.aog
  %i.aoi = insertelement <2 x float> %i.kt, float %i.aoh, i64 0
  %i.aoj = insertelement <2 x float> <float 2.550000e+02, float poison>, float %i.anw, i64 1
  %i.aok = fmul reassoc nsz arcp contract afn <2 x float> %i.aoi, %i.aoj
  %i.aol = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.aok)
  %i.aom = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aol, <2 x float> zeroinitializer)
  %i.aon = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aom, <2 x float> splat (float 2.550000e+02))
  %i.aoo = fptoui <2 x float> %i.aon to <2 x i8>  ; 2 uses
  %i.aop = extractelement <2 x i8> %i.aoo, i64 1  ; 2 uses
  store i8 %i.aop, ptr %i.aoe, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  store i8 %i.aop, ptr %i.aof, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.aoq = extractelement <2 x i8> %i.aoo, i64 0
  store i8 %i.aoq, ptr %i.anu, align 1, !tbaa !19, !alias.scope !147, !noalias !148
  %i.aor = add nuw i64 %.0101264.i, 4             ; 2 uses
  %i.aos = icmp ult i64 %i.aor, %i.v
  br i1 %i.aos, label %.lr.ph265.i, label %_channel_display_false_color.exit, !llvm.loop !62

bb.ac:                                            ; preds = %bb.f, %bb.f, %bb.f
  %.not276.i = icmp eq i64 %i.v, 0
  br i1 %.not276.i, label %_channel_display_false_color.exit.thread, label %.lr.ph263.i.preheader

.lr.ph263.i.preheader:                            ; preds = %bb.ac
  %i.aot = add i64 %i.v, -4                       ; 2 uses
  %min.iters.check157 = icmp ult i64 %i.aot, 32
  br i1 %min.iters.check157, label %.lr.ph263.i.preheader333, label %vector.ph158

vector.ph158:                                     ; preds = %.lr.ph263.i.preheader
  %i.aou = lshr exact i64 %i.aot, 2
  %i.aov = add nuw nsw i64 %i.aou, 1              ; 2 uses
  %i.aow = and i64 %i.aov, 7                      ; 2 uses
  %i.aox = icmp eq i64 %i.aow, 0
  %i.aoy = select i1 %i.aox, i64 8, i64 %i.aow
  %n.vec159 = sub nsw i64 %i.aov, %i.aoy          ; 2 uses
  %i.aoz = shl i64 %n.vec159, 2
  %broadcast.splatinsert160 = insertelement <8 x float> poison, float %i.x, i64 0
  %broadcast.splat161 = shufflevector <8 x float> %broadcast.splatinsert160, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph158
  %index163 = phi i64 [ 0, %vector.ph158 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %i.apa = shl nuw i64 %index163, 2               ; 9 uses
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.apa
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 4
  %wide.vec164 = load <32 x float>, ptr %i.apc, align 4, !tbaa !140, !alias.scope !138, !noalias !139 ; 2 uses
  %strided.vec165 = shufflevector <32 x float> %wide.vec164, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec166 = shufflevector <32 x float> %wide.vec164, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.apd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec165, splat (float 5.000000e-01)
  %i.ape = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.apd ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %3, i64 %i.apa ; 3 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %3, i64 %i.apa ; 3 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 4
  %i.api = getelementptr inbounds nuw i8, ptr %3, i64 %i.apa ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  %i.apk = getelementptr inbounds nuw i8, ptr %3, i64 %i.apa ; 3 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 12
  %i.apm = getelementptr inbounds nuw i8, ptr %3, i64 %i.apa ; 3 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 16
  %i.apo = getelementptr inbounds nuw i8, ptr %3, i64 %i.apa ; 3 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 20
  %i.apq = getelementptr inbounds nuw i8, ptr %3, i64 %i.apa ; 3 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 24
  %i.aps = getelementptr inbounds nuw i8, ptr %3, i64 %i.apa ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aps, i64 28
  %i.apu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec166, %broadcast.splat161 ; 3 uses
  %i.apv = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.ape, splat (float 3.130800e-03)
  %i.apw = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ape, splat (float 1.292000e+01)
  %i.apx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.ape, <8 x float> splat (float f0x3ED55555))
  %i.apy = fmul reassoc nsz arcp contract afn <8 x float> %i.apx, splat (float 1.055000e+00)
  %i.apz = fadd reassoc nsz arcp contract afn <8 x float> %i.apy, splat (float -5.500000e-02)
  %predphi167 = select reassoc nsz arcp contract afn <8 x i1> %i.apv, <8 x float> %i.apz, <8 x float> %i.apw ; 2 uses
  %i.aqa = fmul reassoc nsz arcp contract afn <8 x float> %i.apu, splat (float f0x4286F7CD)
  %i.aqb = fadd reassoc nsz arcp contract afn <8 x float> %i.aqa, splat (float f0x433B841A)
  %i.aqc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.aqb)
  %i.aqd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aqc, <8 x float> zeroinitializer)
  %i.aqe = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aqd, <8 x float> splat (float 2.550000e+02))
  %i.aqf = fptoui <8 x float> %i.aqe to <8 x i8>  ; 8 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apf, i64 2
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apg, i64 6
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.api, i64 10
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.apk, i64 14
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apm, i64 18
  %i.aql = getelementptr inbounds nuw i8, ptr %i.apo, i64 22
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.apq, i64 26
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aps, i64 30
  %i.aqo = extractelement <8 x i8> %i.aqf, i64 0
  store i8 %i.aqo, ptr %i.aqg, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aqp = extractelement <8 x i8> %i.aqf, i64 1
  store i8 %i.aqp, ptr %i.aqh, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aqq = extractelement <8 x i8> %i.aqf, i64 2
  store i8 %i.aqq, ptr %i.aqi, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aqr = extractelement <8 x i8> %i.aqf, i64 3
  store i8 %i.aqr, ptr %i.aqj, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aqs = extractelement <8 x i8> %i.aqf, i64 4
  store i8 %i.aqs, ptr %i.aqk, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aqt = extractelement <8 x i8> %i.aqf, i64 5
  store i8 %i.aqt, ptr %i.aql, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aqu = extractelement <8 x i8> %i.aqf, i64 6
  store i8 %i.aqu, ptr %i.aqm, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aqv = extractelement <8 x i8> %i.aqf, i64 7
  store i8 %i.aqv, ptr %i.aqn, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aqw = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %predphi167
  %i.aqx = fmul reassoc nsz arcp contract afn <8 x float> %i.aqw, %i.apu
  %i.aqy = fadd reassoc nsz arcp contract afn <8 x float> %i.aqx, %predphi167
  %i.aqz = fmul reassoc nsz arcp contract afn <8 x float> %i.aqy, splat (float 2.550000e+02)
  %i.ara = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.aqz)
  %i.arb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ara, <8 x float> zeroinitializer)
  %i.arc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.arb, <8 x float> splat (float 2.550000e+02))
  %i.ard = fptoui <8 x float> %i.arc to <8 x i8>  ; 8 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.apf, i64 1
  %i.arf = getelementptr inbounds nuw i8, ptr %i.apg, i64 5
  %i.arg = getelementptr inbounds nuw i8, ptr %i.api, i64 9
  %i.arh = getelementptr inbounds nuw i8, ptr %i.apk, i64 13
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apm, i64 17
  %i.arj = getelementptr inbounds nuw i8, ptr %i.apo, i64 21
  %i.ark = getelementptr inbounds nuw i8, ptr %i.apq, i64 25
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aps, i64 29
  %i.arm = extractelement <8 x i8> %i.ard, i64 0
  store i8 %i.arm, ptr %i.are, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.arn = extractelement <8 x i8> %i.ard, i64 1
  store i8 %i.arn, ptr %i.arf, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aro = extractelement <8 x i8> %i.ard, i64 2
  store i8 %i.aro, ptr %i.arg, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.arp = extractelement <8 x i8> %i.ard, i64 3
  store i8 %i.arp, ptr %i.arh, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.arq = extractelement <8 x i8> %i.ard, i64 4
  store i8 %i.arq, ptr %i.ari, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.arr = extractelement <8 x i8> %i.ard, i64 5
  store i8 %i.arr, ptr %i.arj, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.ars = extractelement <8 x i8> %i.ard, i64 6
  store i8 %i.ars, ptr %i.ark, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.art = extractelement <8 x i8> %i.ard, i64 7
  store i8 %i.art, ptr %i.arl, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.aru = fmul reassoc nsz arcp contract afn <8 x float> %i.apu, splat (float f0x433B841A)
  %i.arv = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x433B841A), %i.aru
  %i.arw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.arv)
  %i.arx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.arw, <8 x float> zeroinitializer)
  %i.ary = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.arx, <8 x float> splat (float 2.550000e+02))
  %i.arz = fptoui <8 x float> %i.ary to <8 x i8>  ; 8 uses
  %i.asa = extractelement <8 x i8> %i.arz, i64 0
  store i8 %i.asa, ptr %i.apf, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.asb = extractelement <8 x i8> %i.arz, i64 1
  store i8 %i.asb, ptr %i.aph, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.asc = extractelement <8 x i8> %i.arz, i64 2
  store i8 %i.asc, ptr %i.apj, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.asd = extractelement <8 x i8> %i.arz, i64 3
  store i8 %i.asd, ptr %i.apl, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.ase = extractelement <8 x i8> %i.arz, i64 4
  store i8 %i.ase, ptr %i.apn, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.asf = extractelement <8 x i8> %i.arz, i64 5
  store i8 %i.asf, ptr %i.app, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.asg = extractelement <8 x i8> %i.arz, i64 6
  store i8 %i.asg, ptr %i.apr, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %i.ash = extractelement <8 x i8> %i.arz, i64 7
  store i8 %i.ash, ptr %i.apt, align 1, !tbaa !19, !alias.scope !157, !noalias !158
  %index.next168 = add nuw i64 %index163, 8       ; 2 uses
  %i.asi = icmp eq i64 %index.next168, %n.vec159
  br i1 %i.asi, label %.lr.ph263.i.preheader333, label %vector.body162, !llvm.loop !67

.lr.ph263.i.preheader333:                         ; preds = %vector.body162, %.lr.ph263.i.preheader
  %.0100262.i.ph = phi i64 [ 0, %.lr.ph263.i.preheader ], [ %i.aoz, %vector.body162 ]
  br label %.lr.ph263.i

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader333, %_write_pixel.exit116.i
  %.0100262.i = phi i64 [ %i.atu, %_write_pixel.exit116.i ], [ %.0100262.i.ph, %.lr.ph263.i.preheader333 ] ; 3 uses
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0100262.i ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 4
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !140, !alias.scope !138, !noalias !139
  %i.asm = fmul reassoc nsz arcp contract afn float %i.asl, 5.000000e-01
  %i.asn = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.asm ; 3 uses
end_hunk_1
