Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__calculate_filters:bb.a
  %.not151 = icmp eq ptr %1, null
  br i1 %.not151, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = load ptr, ptr %1, align 8, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !148
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !149
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !147
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.da = load <2 x i32>, ptr %i.cy, align 4, !tbaa !21
  store <2 x i32> %i.da, ptr %i.cz, align 4, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !152
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !152
  br label %bb.y

bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !153
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !154
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !155
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !156
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.0148 = phi i32 [ %i.k, %bb.i ], [ %i.dl, %bb.l ] ; 2 uses
  %.0145 = phi ptr [ %i.l, %bb.i ], [ %i.df, %bb.l ] ; 3 uses
  %.0142 = phi ptr [ %i.n, %bb.i ], [ %i.dh, %bb.l ] ; 3 uses
  %.0140 = phi i32 [ %i.p, %bb.i ], [ %i.dj, %bb.l ] ; 3 uses
  %i.dm = sub nsw i32 0, %i.co                    ; 2 uses
  %i.dn = load float, ptr %i.b, align 8, !tbaa !62 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load float, ptr %i.do, align 8, !tbaa !50 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !63 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !51 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !52
  %i.dw = icmp ne i32 %i.dv, 0
  %i.dx = icmp slt i32 %i.dt, %i.dr
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  %i.dz = icmp sgt i32 %i.cp, %i.dm
  br i1 %i.dz, label %.lr.ph82.i, label %stbir__calculate_coefficients_for_gather_downsample.exit

.lr.ph82.i:                                       ; preds = %bb.m
  %i.ea = add nsw i32 %i.dr, -1
  %i.eb = add nsw i32 %i.dt, -1
  %i.ec = sext i32 %.0140 to i64
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.i, %.lr.ph82.i
  %.06181.i = phi i32 [ -1, %.lr.ph82.i ], [ %.3.ph.i, %.loopexit.i ] ; 3 uses
  %.06380.i = phi i32 [ %i.dm, %.lr.ph82.i ], [ %i.gg, %.loopexit.i ] ; 8 uses
  %i.ed = sitofp i32 %.06380.i to float
  %i.ee = fadd float %i.ed, 5.000000e-01          ; 3 uses
  %i.ef = fmul float %i.dn, %i.ee
  %i.eg = fsub float %i.ee, %i.cm
  %i.eh = fadd float %i.cm, %i.ee
  %i.ei = fmul float %i.dn, %i.eg
  %i.ej = fsub float %i.ei, %i.dp
  %i.ek = fmul float %i.dn, %i.eh
  %i.el = fsub float %i.ek, %i.dp
  %i.em = fadd float %i.ej, 5.000000e-01
  %i.en = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.em, i64 0 ; 2 uses
  %i.eo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.en)
  %i.ep = sitofp <4 x i32> %i.eo to <4 x float>   ; 2 uses
  %i.eq = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.en, <4 x float> %i.ep, i8 1)
  %i.er = bitcast <4 x float> %i.eq to <4 x i32>
  %i.es = and <4 x i32> %i.er, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.et = bitcast <4 x i32> %i.es to <4 x float>
  %foldExtExtBinop240 = fadd <4 x float> %i.ep, %i.et
  %i.eu = extractelement <4 x float> %foldExtExtBinop240, i64 0
  %i.ev = fadd float %i.el, -5.000000e-01
  %i.ew = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ev, i64 0 ; 2 uses
  %i.ex = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ew)
  %i.ey = sitofp <4 x i32> %i.ex to <4 x float>   ; 2 uses
  %i.ez = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ew, <4 x float> %i.ey, i8 1)
  %i.fa = bitcast <4 x float> %i.ez to <4 x i32>
  %i.fb = and <4 x i32> %i.fa, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fc = bitcast <4 x i32> %i.fb to <4 x float>
  %foldExtExtBinop242 = fadd <4 x float> %i.ey, %i.fc
  %i.fd = extractelement <4 x float> %foldExtExtBinop242, i64 0
  %i.fe = fptosi float %i.fd to i32
  %spec.select.i.i156 = tail call i32 @llvm.smin.i32(i32 %i.fe, i32 %i.ea) ; 3 uses
  %i.ff = fptosi float %i.eu to i32
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.ff, i32 0) ; 5 uses
  %i.fg = icmp sgt i32 %spec.store.select.i.i, %spec.select.i.i156
  br i1 %i.fg, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.dy, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fh = icmp eq i32 %spec.store.select.i.i, %i.dt
  br i1 %i.fh, label %stbir__calculate_coefficients_for_gather_downsample.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %spec.select.i161 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i156, i32 %i.eb)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.073.i = phi i32 [ %spec.select.i161, %bb.q ], [ %spec.select.i.i156, %bb.o ] ; 2 uses
  %.not6877.i = icmp slt i32 %.073.i, %spec.store.select.i.i
  br i1 %.not6877.i, label %.loopexit.i, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.r
  %i.fi = fsub float %i.dp, %i.ef
  %i.fj = zext nneg i32 %spec.store.select.i.i to i64
  %reass.sub = sub nsw i32 %.073.i, %spec.store.select.i.i
  %i.fk = add nuw nsw i32 %reass.sub, 1
  %wide.trip.count.i = zext nneg i32 %i.fk to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %.lr.ph.i157
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i157 ], [ %indvars.iv.next.i, %bb.x ] ; 2 uses
  %.179.i = phi i32 [ %.06181.i, %.lr.ph.i157 ], [ %.2.i159, %bb.x ] ; 2 uses
  %i.fl = add nuw nsw i64 %indvars.iv.i, %i.fj    ; 4 uses
  %i.fm = trunc nuw nsw i64 %i.fl to i32          ; 2 uses
  %i.fn = uitofp nneg i32 %i.fm to float
  %i.fo = fadd float %i.fn, 5.000000e-01
  %i.fp = fadd float %i.fi, %i.fo
  %i.fq = tail call float %i.e(float noundef %i.fp, float noundef %i.dn, ptr noundef %2) #24, !inline_history !157
  %i.fr = fmul float %i.dn, %i.fq                 ; 2 uses
  %i.fs = tail call float @llvm.fabs.f32(float %i.fr)
  %or.cond.i158 = fcmp olt float %i.fs, f0x03800000
  %spec.store.select.i = select i1 %or.cond.i158, float 0.000000e+00, float %i.fr ; 2 uses
  %i.ft = mul nsw i64 %i.fl, %i.ec
  %i.fu = getelementptr inbounds [4 x i8], ptr %.0142, i64 %i.ft ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.0145, i64 %i.fl ; 5 uses
  %i.fw = sext i32 %.179.i to i64
  %i.fx = icmp sgt i64 %i.fl, %i.fw
  br i1 %i.fx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %.06380.i, ptr %i.fv, align 4, !tbaa !36
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %.06380.i, ptr %i.fy, align 4, !tbaa !39
  store float %spec.store.select.i, ptr %i.fu, align 4, !tbaa !54
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.fz = load float, ptr %i.fu, align 4, !tbaa !54
  %i.ga = fcmp oeq float %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.v, label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %bb.u
  %.pre.i = load i32, ptr %i.fv, align 4, !tbaa !36
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %.06380.i, ptr %i.fv, align 4, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge86.i
  %i.gb = phi i32 [ %.pre.i, %._crit_edge86.i ], [ %.06380.i, %bb.v ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %.06380.i, ptr %i.gc, align 4, !tbaa !39
  %i.gd = sub nsw i32 %.06380.i, %i.gb
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.ge
  store float %spec.store.select.i, ptr %i.gf, align 4, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.2.i159 = phi i32 [ %i.fm, %bb.t ], [ %.179.i, %bb.w ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i160, label %.loopexit.i, label %bb.s, !llvm.loop !64

.loopexit.i:                                      ; preds = %bb.x, %bb.r, %bb.n
  %.3.ph.i = phi i32 [ %.06181.i, %bb.n ], [ %.06181.i, %bb.r ], [ %.2.i159, %bb.x ]
  %i.gg = add i32 %.06380.i, 1                    ; 2 uses
  %exitcond85.not.i = icmp eq i32 %i.gg, %i.cp
  br i1 %exitcond85.not.i, label %stbir__calculate_coefficients_for_gather_downsample.exit, label %bb.n, !llvm.loop !65

stbir__calculate_coefficients_for_gather_downsample.exit: ; preds = %bb.p, %.loopexit.i, %bb.m
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !34
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @stbir__cleanup_gathered_coefficients(i32 noundef %i.gi, ptr noundef nonnull %i.gj, ptr noundef nonnull %i.a, i32 noundef %.0148, ptr noundef %.0145, ptr noundef %.0142, i32 noundef %.0140)
  %i.gk = load i32, ptr %i.q, align 8, !tbaa !150
  %.not152 = icmp eq i32 %i.gk, 0
  br i1 %.not152, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %stbir__calculate_coefficients_for_gather_downsample.exit, %bb.k
  %.1149 = phi i32 [ %.0148, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cx, %bb.k ] ; 2 uses
  %.1146 = phi ptr [ %.0145, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cr, %bb.k ]
  %.1143 = phi ptr [ %.0142, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.ct, %bb.k ]
  %.1141 = phi i32 [ %.0140, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cv, %bb.k ]
  %i.gl = xor i32 %i.co, -1                       ; 2 uses
  %i.gm = icmp sgt i32 %.1149, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !35    ; 6 uses
  %.pre209 = ptrtoaddr ptr %.pre to i64           ; 4 uses
  br i1 %i.gm, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.y
  %i.gn = load i32, ptr %i.o, align 4, !tbaa !149 ; 4 uses
  %i.go = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.gp = sext i32 %i.gn to i64
  %i.gq = sext i32 %.1141 to i64
  %3 = ptrtoaddr ptr %.pre to i64                 ; 2 uses
  %invariant.op = add i64 %3, 16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph184, %._crit_edge178
  %.0137182 = phi i32 [ %i.gl, %.lr.ph184 ], [ %.1.lcssa, %._crit_edge178 ] ; 2 uses
  %.0139181 = phi i32 [ 0, %.lr.ph184 ], [ %i.kg, %._crit_edge178 ] ; 13 uses
  %.2144180 = phi ptr [ %.1143, %.lr.ph184 ], [ %i.kf, %._crit_edge178 ] ; 2 uses
  %.2147179 = phi ptr [ %.1146, %.lr.ph184 ], [ %i.ke, %._crit_edge178 ] ; 3 uses
  %i.gr = load i32, ptr %.2147179, align 4, !tbaa !36 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.2147179, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !39 ; 2 uses
  %.not153170 = icmp sgt i32 %i.gr, %i.gt
  br i1 %.not153170, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.z
  %i.gu = add i32 %i.gr, %i.co                    ; 2 uses
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.gv
  %i.gx = mul nsw i32 %i.gn, %i.gu
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gy
  %i.ha = xor i32 %.0139181, -1
  %i.hb = add nsw i32 %.0139181, -2
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph177, %stbir__insert_coeff.exit
  %indvar = phi i64 [ 0, %.lr.ph177 ], [ %indvar.next, %stbir__insert_coeff.exit ] ; 2 uses
  %.0134175 = phi ptr [ %.2144180, %.lr.ph177 ], [ %i.hf, %stbir__insert_coeff.exit ] ; 2 uses
  %.0135174 = phi ptr [ %i.gz, %.lr.ph177 ], [ %i.kc, %stbir__insert_coeff.exit ] ; 14 uses
  %.0136173 = phi i32 [ %i.gr, %.lr.ph177 ], [ %i.kd, %stbir__insert_coeff.exit ] ; 4 uses
  %.1172 = phi i32 [ %.0137182, %.lr.ph177 ], [ %.2, %stbir__insert_coeff.exit ] ; 8 uses
  %.0138171 = phi ptr [ %i.gw, %.lr.ph177 ], [ %i.kb, %stbir__insert_coeff.exit ] ; 8 uses
  %i.hc = add i64 %indvar, %i.gv
  %i.hd = shl i64 %i.hc, 3
  %i.he = add i64 %i.hd, %.pre209
  %i.hf = getelementptr inbounds nuw i8, ptr %.0134175, i64 4
  %i.hg = load float, ptr %.0134175, align 4, !tbaa !54 ; 5 uses
  %i.hh = tail call float @llvm.fabs.f32(float %i.hg)
  %or.cond = fcmp ult float %i.hh, f0x03800000
  br i1 %or.cond, label %stbir__insert_coeff.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hi = icmp sgt i32 %.0136173, %.1172
  br i1 %i.hi, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hj = load i32, ptr %.0138171, align 4, !tbaa !36 ; 8 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0138171, i64 4 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !39 ; 6 uses
  %i.hm = icmp sgt i32 %i.hj, %i.hl
  br i1 %i.hm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hn = add nsw i32 %.1172, %i.co
  %i.ho = sext i32 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %.pre, i64 %i.ho ; 3 uses
  %.0133167 = getelementptr i8, ptr %i.hp, i64 8  ; 5 uses
  %i.hq = icmp ult ptr %.0133167, %.0138171
  br i1 %i.hq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.hr = shl nsw i64 %i.ho, 3                    ; 2 uses
  %.reass = add i64 %i.hr, %invariant.op
  %4 = tail call i64 @llvm.umax.i64(i64 %i.he, i64 %.reass)
  %5 = add i64 %4, -9
  %6 = add i64 %i.hr, %3
  %i.hs = sub i64 %5, %6                          ; 2 uses
  %i.ht = lshr i64 %i.hs, 3
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hs, 24
  br i1 %min.iters.check, label %.lr.ph.preheader245, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.hu, 4611686018427387900     ; 3 uses
  %i.hv = shl i64 %n.vec, 3                       ; 2 uses
  %i.hw = getelementptr i8, ptr %.0133167, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hp, i64 %i.hv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0133167, i64 %i.hy
  %i.hz = getelementptr i8, ptr %.0133167, i64 %i.hy
  %next.gep210 = getelementptr i8, ptr %i.hz, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep, align 4, !tbaa !21
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep210, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader245

.lr.ph.preheader245:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133169.ph = phi ptr [ %.0133167, %.lr.ph.preheader ], [ %i.hw, %middle.block ]
  %.pn154168.ph = phi ptr [ %i.hp, %.lr.ph.preheader ], [ %i.hx, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader245, %.lr.ph
  %.0133169 = phi ptr [ %.0133, %.lr.ph ], [ %.0133169.ph, %.lr.ph.preheader245 ] ; 3 uses
  %.pn154168 = phi ptr [ %.0133169, %.lr.ph ], [ %.pn154168.ph, %.lr.ph.preheader245 ]
  store i32 0, ptr %.0133169, align 4, !tbaa !36
  %i.ib = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.ib, align 4, !tbaa !39
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.ic = icmp ult ptr %.0133, %.0138171
  br i1 %i.ic, label %.lr.ph, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !36
  %i.id = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.id, align 4, !tbaa !39
  store float %i.hg, ptr %.0135174, align 4, !tbaa !54
  br label %stbir__insert_coeff.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i162 = icmp sgt i32 %.0139181, %i.hl
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ie = icmp slt i32 %.0139181, %i.hj
  br i1 %i.ie, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.if = sub nuw nsw i32 %i.hl, %.0139181
  %.not60.not.i = icmp slt i32 %i.if, %i.gn
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.ig = sub nuw nsw i32 %i.hj, %.0139181        ; 2 uses
  %i.ih = sub i32 %i.hl, %i.hj                    ; 2 uses
  %i.ii = zext i32 %i.ih to i64                   ; 4 uses
  %i.ij = sext i32 %i.ig to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0135174, i64 %i.ij ; 6 uses
  %i.ik = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check213 = icmp ult i32 %i.ih, 7
  %i.il = shl nsw i64 %i.ij, 2
  %diff.check = icmp ugt i64 %i.il, -32
  %or.cond236 = select i1 %min.iters.check213, i1 true, i1 %diff.check
  br i1 %or.cond236, label %.lr.ph.i164.preheader, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph.preheader.i
  %n.vec215 = and i64 %i.ik, 8589934584           ; 3 uses
  %i.im = sub nsw i64 %i.ii, %n.vec215
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next219, %vector.body216 ] ; 2 uses
  %i.in = sub i64 %i.ii, %index217                ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -12
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 -28
  %wide.load = load <4 x float>, ptr %i.ip, align 4, !tbaa !54
  %wide.load218 = load <4 x float>, ptr %i.iq, align 4, !tbaa !54
  %i.ir = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.in ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -12
  %i.it = getelementptr i8, ptr %i.ir, i64 -28
  store <4 x float> %wide.load, ptr %i.is, align 4, !tbaa !54
  store <4 x float> %wide.load218, ptr %i.it, align 4, !tbaa !54
  %index.next219 = add nuw i64 %index217, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next219, %n.vec215
  br i1 %i.iu, label %middle.block220, label %vector.body216, !llvm.loop !160

middle.block220:                                  ; preds = %vector.body216
  %cmp.n221 = icmp eq i64 %i.ik, %n.vec215
  br i1 %cmp.n221, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block220
  %indvars.iv.i165.ph = phi i64 [ %i.ii, %.lr.ph.preheader.i ], [ %i.im, %middle.block220 ] ; 4 uses
  %i.iv = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.iv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165.prol
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !54
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.ix, ptr %gep.i.prol, align 4, !tbaa !54
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !161

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.iy = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.iy, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block220
  %i.iz = icmp sgt i32 %i.ig, 1
  br i1 %i.iz, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0135174, i64 4
  %i.ja = add i32 %i.hj, %i.ha
  %i.jb = zext i32 %i.ja to i64
  %i.jc = shl nuw nsw i64 %i.jb, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.jc, i1 false), !tbaa !54
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.je = load float, ptr %i.jd, align 4, !tbaa !54
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.je, ptr %gep.i, align 4, !tbaa !54
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !54
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.jg, ptr %gep.i.1, align 4, !tbaa !54
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !54
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.ji, ptr %gep.i.2, align 4, !tbaa !54
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !54
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jk, ptr %gep.i.3, align 4, !tbaa !54
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !162

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hg, ptr %.0135174, align 4, !tbaa !54
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !36
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.jl = sub nsw i32 %.0139181, %i.hj
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.jm ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !54
  %i.jp = fadd float %i.hg, %i.jo
  store float %i.jp, ptr %i.jn, align 4, !tbaa !54
  br label %stbir__insert_coeff.exit

bb.ai:                                            ; preds = %bb.ae
  %i.jq = sub nsw i32 %.0139181, %i.hj            ; 3 uses
  %.not59.not.i = icmp slt i32 %i.jq, %i.gn
  br i1 %.not59.not.i, label %bb.aj, label %stbir__insert_coeff.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jr = sub nsw i32 %i.hl, %i.hj
  %.064.i = add nsw i32 %i.jr, 1                  ; 2 uses
  %i.js = icmp slt i32 %.064.i, %i.jq
  br i1 %i.js, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aj
  %i.jt = sext i32 %.064.i to i64
  %i.ju = shl nsw i64 %i.jt, 2
  %scevgep73.i = getelementptr i8, ptr %.0135174, i64 %i.ju
  %i.jv = sub i32 %i.hb, %i.hl
  %i.jw = zext i32 %i.jv to i64
  %i.jx = shl nuw nsw i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.jy, i1 false), !tbaa !54
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.aj
  %i.jz = sext i32 %i.jq to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.jz
  store float %i.hg, ptr %i.ka, align 4, !tbaa !54
  store i32 %.0139181, ptr %i.hk, align 4, !tbaa !39
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %._crit_edge68.i, %bb.ai, %bb.ah, %._crit_edge.i163, %bb.ag, %._crit_edge, %bb.aa
  %.2 = phi i32 [ %.0136173, %._crit_edge ], [ %.1172, %bb.aa ], [ %.1172, %bb.ag ], [ %.1172, %._crit_edge.i163 ], [ %.1172, %bb.ah ], [ %.1172, %bb.ai ], [ %.1172, %._crit_edge68.i ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0138171, i64 8
  %i.kc = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.gp
  %i.kd = add i32 %.0136173, 1
  %exitcond.not = icmp eq i32 %.0136173, %i.gt
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge178, label %bb.aa, !llvm.loop !163

._crit_edge178:                                   ; preds = %stbir__insert_coeff.exit, %bb.z
  %.1.lcssa = phi i32 [ %.0137182, %bb.z ], [ %.2, %stbir__insert_coeff.exit ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.2147179, i64 8
  %i.kf = getelementptr inbounds [4 x i8], ptr %.2144180, i64 %i.gq
  %i.kg = add nuw nsw i32 %.0139181, 1            ; 2 uses
  %exitcond192.not = icmp eq i32 %i.kg, %.1149
  br i1 %exitcond192.not, label %._crit_edge185, label %bb.z, !llvm.loop !164

._crit_edge185:                                   ; preds = %._crit_edge178, %bb.y
  %.0137.lcssa = phi i32 [ %i.gl, %bb.y ], [ %.1.lcssa, %._crit_edge178 ]
  %i.kh = add nsw i32 %.0137.lcssa, %i.co
  %i.ki = sext i32 %i.kh to i64                   ; 2 uses
  %i.kj = getelementptr [8 x i8], ptr %.pre, i64 %i.ki ; 3 uses
  %i.kk = load i32, ptr %i.j, align 8, !tbaa !147
  %i.kl = sext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.kl ; 2 uses
  %.0187 = getelementptr i8, ptr %i.kj, i64 8     ; 5 uses
  %i.kn = icmp ult ptr %.0187, %i.km
  br i1 %i.kn, label %.lr.ph191.preheader, label %.loopexit

.lr.ph191.preheader:                              ; preds = %._crit_edge185
  %7 = shl nsw i64 %i.ki, 3                       ; 2 uses
  %8 = add i64 %7, %.pre209
  %9 = add i64 %8, 16
  %i.ko = shl nsw i64 %i.kl, 3
  %10 = add i64 %i.ko, %.pre209
  %11 = tail call i64 @llvm.umax.i64(i64 %9, i64 %10)
  %12 = add i64 %11, -9
  %i.kp = add i64 %7, %.pre209
  %i.kq = sub i64 %12, %i.kp                      ; 2 uses
  %i.kr = lshr i64 %i.kq, 3
  %i.ks = add nuw nsw i64 %i.kr, 1                ; 2 uses
  %min.iters.check224 = icmp ult i64 %i.kq, 24
  br i1 %min.iters.check224, label %.lr.ph191.preheader244, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph191.preheader
  %n.vec226 = and i64 %i.ks, 4611686018427387900  ; 3 uses
  %i.kt = shl i64 %n.vec226, 3                    ; 2 uses
  %i.ku = getelementptr i8, ptr %.0187, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.kj, i64 %i.kt
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next231, %vector.body227 ] ; 2 uses
  %i.kw = shl i64 %index228, 3                    ; 2 uses
  %next.gep229.a = getelementptr i8, ptr %.0187, i64 %i.kw
  %i.kx = getelementptr i8, ptr %.0187, i64 %i.kw
  %next.gep230 = getelementptr i8, ptr %i.kx, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep229.a, align 4, !tbaa !21
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep230, align 4, !tbaa !21
  %index.next231 = add nuw i64 %index228, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.ky, label %middle.block232, label %vector.body227, !llvm.loop !165

middle.block232:                                  ; preds = %vector.body227
  %cmp.n233 = icmp eq i64 %i.ks, %n.vec226
  br i1 %cmp.n233, label %.loopexit, label %.lr.ph191.preheader244

.lr.ph191.preheader244:                           ; preds = %.lr.ph191.preheader, %middle.block232
  %.0189.ph = phi ptr [ %.0187, %.lr.ph191.preheader ], [ %i.ku, %middle.block232 ]
  %.pn188.ph = phi ptr [ %i.kj, %.lr.ph191.preheader ], [ %i.kv, %middle.block232 ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader244, %.lr.ph191
  %.0189 = phi ptr [ %.0, %.lr.ph191 ], [ %.0189.ph, %.lr.ph191.preheader244 ] ; 3 uses
  %.pn188 = phi ptr [ %.0189, %.lr.ph191 ], [ %.pn188.ph, %.lr.ph191.preheader244 ]
  store i32 0, ptr %.0189, align 4, !tbaa !36
  %i.kz = getelementptr i8, ptr %.pn188, i64 12
  store i32 -1, ptr %i.kz, align 4, !tbaa !39
  %.0 = getelementptr i8, ptr %.0189, i64 8       ; 2 uses
  %i.la = icmp ult ptr %.0, %i.km
  br i1 %i.la, label %.lr.ph191, label %.loopexit, !llvm.loop !166

.loopexit:                                        ; preds = %.lr.ph191, %middle.block232, %._crit_edge185, %stbir__calculate_coefficients_for_gather_downsample.exit, %stbir__calculate_coefficients_for_gather_upsample.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint8_linear_scaled(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 15
  br i1 %i.e, label %bb.b, label %.preheader85

.preheader85:                                     ; preds = %bb.a
  %.not87 = icmp slt i32 %1, 4
  br i1 %.not87, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader85
  %.27586 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.073 = phi ptr [ %0, %bb.b ], [ %.174, %bb.c ] ; 6 uses
  %.072 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.073) #24, !srcloc !167
  %i.g = load <16 x i8>, ptr %.072, align 1, !tbaa !9 ; 2 uses
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = shufflevector <16 x i8> %i.g, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.j = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.l = shufflevector <8 x i16> %i.j, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.m = bitcast <16 x i8> %i.i to <8 x i16>      ; 2 uses
  %i.n = shufflevector <8 x i16> %i.m, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.o = shufflevector <8 x i16> %i.m, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.p = bitcast <8 x i16> %i.k to <4 x i32>
  %i.q = uitofp nneg <4 x i32> %i.p to <4 x float>
  %i.r = bitcast <8 x i16> %i.l to <4 x i32>
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x float>
  %i.t = bitcast <8 x i16> %i.n to <4 x i32>
  %i.u = uitofp nneg <4 x i32> %i.t to <4 x float>
  %i.v = bitcast <8 x i16> %i.o to <4 x i32>
  %i.w = uitofp nneg <4 x i32> %i.v to <4 x float>
  %i.x = fmul nnan <4 x float> %i.q, splat (float f0x3B808081)
  %i.y = fmul nnan <4 x float> %i.s, splat (float f0x3B808081)
  %i.z = fmul nnan <4 x float> %i.u, splat (float f0x3B808081)
  %i.aa = fmul nnan <4 x float> %i.w, splat (float f0x3B808081)
  store <4 x float> %i.x, ptr %.073, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %.073, i64 16
  store <4 x float> %i.y, ptr %i.ab, align 1, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %.073, i64 32
  store <4 x float> %i.z, ptr %i.ac, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %.073, i64 48
  store <4 x float> %i.aa, ptr %i.ad, align 1, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.073, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.072, i64 16
  %.not81 = icmp ugt ptr %i.ae, %i.f
  %i.ag = icmp ne ptr %i.ae, %i.b                 ; 2 uses
  %i.ah = and i1 %.not81, %i.ag                   ; 2 uses
  %.174 = select i1 %i.ah, ptr %i.f, ptr %i.ae
  %.1 = select i1 %i.ah, ptr %i.d, ptr %i.af
  br i1 %i.ag, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph, %.preheader85
  %.pn.lcssa = phi ptr [ %0, %.preheader85 ], [ %.27590, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader85 ], [ %i.bb, %.lr.ph ]
  %i.ai = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.ai, label %.lr.ph94, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.27590 = phi ptr [ %.275, %.lr.ph ], [ %.27586, %.lr.ph.preheader ] ; 4 uses
  %.289 = phi ptr [ %i.bb, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn88 = phi ptr [ %.27590, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.27590) #24, !srcloc !168
  %i.aj = load i8, ptr %.289, align 1, !tbaa !9
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x3B808081
  store float %i.al, ptr %.pn88, align 4, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.289, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = uitofp i8 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x3B808081
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn88, i64 4
  store float %i.ap, ptr %i.aq, align 4, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %.289, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = uitofp i8 %i.as to float
  %i.au = fmul nnan float %i.at, f0x3B808081
  %i.av = getelementptr inbounds nuw i8, ptr %.pn88, i64 8
  store float %i.au, ptr %i.av, align 4, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.289, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = uitofp i8 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x3B808081
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn88, i64 12
  store float %i.az, ptr %i.ba, align 4, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %.289, i64 4 ; 2 uses
  %.275 = getelementptr inbounds nuw i8, ptr %.27590, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.275, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !169

.lr.ph94:                                         ; preds = %.preheader, %.lr.ph94
  %.393 = phi ptr [ %i.bg, %.lr.ph94 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.37692 = phi ptr [ %i.bf, %.lr.ph94 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.37692) #24, !srcloc !170
  %i.bc = load i8, ptr %.393, align 1, !tbaa !9
  %i.bd = uitofp i8 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x3B808081
  store float %i.be, ptr %.37692, align 4, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %.37692, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.393, i64 1
  %i.bh = icmp ult ptr %i.bf, %i.b
  br i1 %i.bh, label %.lr.ph94, label %.loopexit, !llvm.loop !171

.loopexit:                                        ; preds = %.lr.ph94, %bb.c, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_uint8_linear_scaled(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = icmp sgt i32 %1, 7
  br i1 %i.d, label %bb.b, label %.preheader72

.preheader72:                                     ; preds = %bb.a
  %.not74 = icmp slt i32 %1, 4
  br i1 %.not74, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader72
  %.26173 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.059 = phi ptr [ %0, %bb.b ], [ %.160, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]     ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !172
  %i.h = load <4 x float>, ptr %.0, align 1, !tbaa !9
  %i.i = fmul <4 x float> %i.h, splat (float 2.550000e+02)
  %i.j = fadd <4 x float> %i.i, splat (float 5.000000e-01)
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !9
  %i.m = fmul <4 x float> %i.l, splat (float 2.550000e+02)
  %i.n = fadd <4 x float> %i.m, splat (float 5.000000e-01)
  %i.o = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.j, <4 x float> splat (float 2.550000e+02))
end_hunk_0
begin_hunk_1_@stbir_quick_resize_helper:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i32
  %i.e = mul nsw i32 %5, %i.d
  %i.f = zext i32 %8 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @stbir__pixel_layout_convert_public_to_internal, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @stbir__pixel_channels, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i32
  %i.m = mul nsw i32 %i.e, %i.l                   ; 3 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %7, 0
  %spec.select = select i1 %i.o, i32 %i.m, i32 %7 ; 3 uses
  %i.p = icmp slt i32 %spec.select, 0
  %.047 = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true) ; 2 uses
  %i.q = icmp slt i32 %.047, %i.m
  br i1 %i.q, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq ptr %4, null
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i32 %.047 to i64               ; 2 uses
  %i.t = icmp eq i32 %6, 0
  br i1 %i.t, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sext i32 %6 to i64
  %i.v = mul nsw i64 %i.s, %i.u
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #25 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %6, -1
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.s, %i.z
  %.045.idx = select i1 %i.p, i64 %i.aa, i64 0
  %.045 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.045.idx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.2 = phi ptr [ %.045, %bb.f ], [ %4, %bb.c ]   ; 2 uses
  %.1 = phi ptr [ %i.w, %bb.f ], [ null, %bb.c ]  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %0, ptr %i.ab, align 8, !tbaa !1015
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %1, ptr %i.ac, align 8, !tbaa !1031
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %2, ptr %i.ad, align 4, !tbaa !1032
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 104
  store i32 %3, ptr %i.ae, align 8, !tbaa !1016
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %.2, ptr %i.af, align 8, !tbaa !1019
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i32 %5, ptr %i.ag, align 8, !tbaa !1033
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 76
  store i32 %6, ptr %i.ah, align 4, !tbaa !1034
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 108
  store i32 %spec.select, ptr %i.ai, align 4, !tbaa !1017
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 116
  store i32 0, ptr %i.aj, align 4, !tbaa !1035
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr null, ptr %i.ak, align 8, !tbaa !1020
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 96
  store ptr null, ptr %i.al, align 8, !tbaa !1022
  store ptr %12, ptr %12, align 8, !tbaa !1021
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 124
  store i32 0, ptr %i.am, align 4, !tbaa !1025
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i8 0, i64 40, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.ap, align 8, !tbaa !1024
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i32 0, ptr %i.ar, align 8, !tbaa !1026
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 84
  store i32 0, ptr %i.as, align 4, !tbaa !1027
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i32 %5, ptr %i.at, align 8, !tbaa !1036
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 92
  store i32 %6, ptr %i.au, align 4, !tbaa !1037
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 %9, ptr %i.av, align 8, !tbaa !1011
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 %9, ptr %i.aw, align 4, !tbaa !1014
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 128
  store i32 %8, ptr %i.ax, align 8, !tbaa !1028
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 132
  store i32 %8, ptr %i.ay, align 4, !tbaa !1029
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i32 1, ptr %i.az, align 8, !tbaa !1030
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 152
  store i32 %10, ptr %i.ba, align 8, !tbaa !1039
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 156
  store i32 %10, ptr %i.bb, align 4, !tbaa !1040
  store i32 %11, ptr %i.an, align 8, !tbaa !1041
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 148
  store i32 %11, ptr %i.bc, align 4, !tbaa !1042
  %i.bd = call i32 @stbir_resize_extended(ptr noundef nonnull %12)
  %.not = icmp eq i32 %i.bd, 0
  %.not57 = icmp eq ptr %.1, null                 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %.not57, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %.1) #24
  br label %.critedge

bb.j:                                             ; preds = %bb.g
  %i.be = select i1 %.not57, ptr %.2, ptr %.1
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.h, %bb.i, %bb.b, %bb.a, %bb.j
  %.149 = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ %i.be, %bb.j ], [ null, %bb.b ], [ null, %bb.i ], [ null, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret ptr %.149
}

; Function Attrs: nounwind uwtable
define ptr @stbir_resize_uint8_linear(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @stbir_quick_resize_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @stbir_resize_uint8_srgb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @stbir_quick_resize_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @stbir_resize_float_linear(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @stbir_quick_resize_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 4, i32 noundef 0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @stbir_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @stbir_quick_resize_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.cmp.ss(<4 x float>, <4 x float>, i8 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 2148896476}
!9 = !{!6, !6, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!"llvm.loop.vectorize.width", i32 1}
!14 = !{i64 2148896905}
!15 = distinct !{!15, !12, !13}
!16 = !{i64 2148898007}
!17 = distinct !{!17, !12, !13}
!18 = !{i64 2148899109}
!19 = distinct !{!19, !11, !12, !13}
!20 = !{i64 2148899267}
!21 = !{!5, !5, i64 0}
!22 = distinct !{!22, !11}
!23 = !{!24, !28, i64 40}
!24 = !{!"", !25, i64 0, !26, i64 8, !25, i64 16, !26, i64 24, !27, i64 32, !28, i64 64, !5, i64 68, !25, i64 72, !25, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !29, i64 116, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144}
!25 = !{!"any pointer", !6, i64 0}
!26 = !{!"p1 float", !25, i64 0}
!27 = !{!"stbir__scale_info", !5, i64 0, !5, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!28 = !{!"float", !6, i64 0}
!29 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!30 = !{!24, !25, i64 80}
!31 = !{!24, !5, i64 36}
!32 = !{!24, !5, i64 32}
!33 = !{!24, !5, i64 100}
!34 = !{!24, !5, i64 88}
!35 = !{!24, !25, i64 0}
!36 = !{!37, !5, i64 0}
!37 = !{!"", !5, i64 0, !5, i64 4}
!38 = distinct !{!38, !11}
!39 = !{!37, !5, i64 4}
!40 = distinct !{!40, !11}
!41 = !{!29, !5, i64 0}
!42 = !{!29, !5, i64 4}
!43 = !{!29, !5, i64 8}
!44 = !{!25, !25, i64 0}
!45 = distinct !{null}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !21}
!49 = !{!27, !28, i64 12}
!50 = !{!27, !28, i64 16}
!51 = !{!27, !5, i64 24}
!52 = !{!27, !5, i64 20}
!53 = !{!27, !5, i64 0}
!54 = !{!28, !28, i64 0}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !11, !58}
!62 = !{!27, !28, i64 8}
!63 = !{!27, !5, i64 4}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = !{!27, !5, i64 28}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !11, !58, !59}
!70 = distinct !{!70, !11, !59, !58}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11, !58, !59}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !11, !58}
!75 = distinct !{!75, !11, !58, !59}
!76 = distinct !{!76, !11, !59, !58}
!77 = distinct !{!77, !11, !58, !59}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !11, !58}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11, !58, !59}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !11, !58}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11, !58, !59}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !11, !58}
!88 = distinct !{!88, !11, !58, !59}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !11, !58}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = !{i64 2148902361}
!94 = distinct !{!94, !11, !12, !13}
!95 = !{i64 2148902690}
!96 = !{!97, !97, i64 0}
!97 = !{!"long", !6, i64 0}
!98 = distinct !{!98, !11, !12, !13}
!99 = !{i64 2148903019}
!100 = !{i64 2148903147}
!101 = distinct !{!101, !11, !12, !13}
!102 = !{i64 2148903505}
!103 = distinct !{!103, !11, !12, !13}
!104 = !{i64 2148903955}
!105 = !{i64 2148904177}
!106 = distinct !{!106, !11, !12, !13}
!107 = !{i64 2148904535}
!108 = !{i64 2148904757}
!109 = distinct !{!109, !11, !12, !13}
!110 = !{i64 2148905115}
!111 = !{i64 2148905337}
!112 = !{i64 2148905467}
!113 = distinct !{!113, !11, !12, !13}
!114 = !{i64 2148905825}
!115 = !{i64 2148906074}
!116 = distinct !{!116, !11, !12, !13}
!117 = !{i64 2148906530}
!118 = !{i64 2148906779}
!119 = !{i64 2148907007}
!120 = distinct !{!120, !11, !12, !13}
!121 = !{i64 2148907365}
!122 = !{i64 2148907614}
!123 = !{i64 2148907842}
!124 = distinct !{!124, !11, !12, !13}
!125 = !{i64 2148908200}
!126 = !{i64 2148908449}
!127 = !{i64 2148908677}
!128 = !{i64 2148908810}
!129 = distinct !{!129, !11, !12, !13}
!130 = !{i64 2148909169}
!131 = !{i64 2148909418}
!132 = !{i64 2148909673}
!133 = distinct !{!133, !11, !12, !13}
!134 = !{i64 2148910006}
!135 = !{i64 2148910150}
!136 = distinct !{!136, !11}
!137 = !{i64 2148910563}
!138 = distinct !{!138, !11, !12, !13}
!139 = distinct !{!139, !11, !12, !13}
!140 = distinct !{!140, !11, !58, !59}
!141 = distinct !{!141, !12}
!142 = distinct !{!142, !11, !58}
!143 = distinct !{!143, !11}
!144 = distinct !{!144, !11}
!145 = !{!24, !25, i64 72}
!146 = !{!24, !28, i64 44}
!147 = !{!24, !5, i64 104}
!148 = !{!24, !26, i64 8}
!149 = !{!24, !5, i64 92}
!150 = !{!24, !5, i64 128}
!151 = !{ptr @stbir__calculate_coefficients_for_gather_upsample}
!152 = !{!24, !5, i64 124}
!153 = !{!24, !25, i64 16}
!154 = !{!24, !26, i64 24}
!155 = !{!24, !5, i64 136}
!156 = !{!24, !5, i64 132}
!157 = !{ptr @stbir__calculate_coefficients_for_gather_downsample}
!158 = distinct !{!158, !11, !58, !59}
!159 = distinct !{!159, !11, !59, !58}
!160 = distinct !{!160, !11, !58, !59}
!161 = distinct !{!161, !12}
!162 = distinct !{!162, !11, !58}
!163 = distinct !{!163, !11}
!164 = distinct !{!164, !11}
!165 = distinct !{!165, !11, !58, !59}
!166 = distinct !{!166, !11, !59, !58}
end_hunk_1
