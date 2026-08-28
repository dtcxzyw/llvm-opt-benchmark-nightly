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
  %foldExtExtBinop241 = fadd <4 x float> %i.ep, %i.et
  %i.eu = extractelement <4 x float> %foldExtExtBinop241, i64 0
  %i.ev = fadd float %i.el, -5.000000e-01
  %i.ew = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ev, i64 0 ; 2 uses
  %i.ex = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ew)
  %i.ey = sitofp <4 x i32> %i.ex to <4 x float>   ; 2 uses
  %i.ez = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ew, <4 x float> %i.ey, i8 1)
  %i.fa = bitcast <4 x float> %i.ez to <4 x i32>
  %i.fb = and <4 x i32> %i.fa, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fc = bitcast <4 x i32> %i.fb to <4 x float>
  %foldExtExtBinop243 = fadd <4 x float> %i.ey, %i.fc
  %i.fd = extractelement <4 x float> %foldExtExtBinop243, i64 0
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
  %i.gr = add i64 %3, 16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph184, %._crit_edge178
  %.0137182 = phi i32 [ %i.gl, %.lr.ph184 ], [ %.1.lcssa, %._crit_edge178 ] ; 2 uses
  %.0139181 = phi i32 [ 0, %.lr.ph184 ], [ %i.kk, %._crit_edge178 ] ; 13 uses
  %.2144180 = phi ptr [ %.1143, %.lr.ph184 ], [ %i.kj, %._crit_edge178 ] ; 2 uses
  %.2147179 = phi ptr [ %.1146, %.lr.ph184 ], [ %i.ki, %._crit_edge178 ] ; 3 uses
  %i.gs = load i32, ptr %.2147179, align 4, !tbaa !36 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.2147179, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !39 ; 2 uses
  %.not153170 = icmp sgt i32 %i.gs, %i.gu
  br i1 %.not153170, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.z
  %i.gv = add i32 %i.gs, %i.co                    ; 2 uses
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.gw
  %i.gy = mul nsw i32 %i.gn, %i.gv
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gz
  %i.hb = xor i32 %.0139181, -1
  %i.hc = add nsw i32 %.0139181, -2
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph177, %stbir__insert_coeff.exit
  %indvar = phi i64 [ 0, %.lr.ph177 ], [ %indvar.next, %stbir__insert_coeff.exit ] ; 2 uses
  %.0134175 = phi ptr [ %.2144180, %.lr.ph177 ], [ %i.hg, %stbir__insert_coeff.exit ] ; 2 uses
  %.0135174 = phi ptr [ %i.ha, %.lr.ph177 ], [ %i.kg, %stbir__insert_coeff.exit ] ; 14 uses
  %.0136173 = phi i32 [ %i.gs, %.lr.ph177 ], [ %i.kh, %stbir__insert_coeff.exit ] ; 4 uses
  %.1172 = phi i32 [ %.0137182, %.lr.ph177 ], [ %.2, %stbir__insert_coeff.exit ] ; 8 uses
  %.0138171 = phi ptr [ %i.gx, %.lr.ph177 ], [ %i.kf, %stbir__insert_coeff.exit ] ; 8 uses
  %i.hd = add i64 %indvar, %i.gw
  %i.he = shl i64 %i.hd, 3
  %i.hf = add i64 %i.he, %.pre209
  %i.hg = getelementptr inbounds nuw i8, ptr %.0134175, i64 4
  %i.hh = load float, ptr %.0134175, align 4, !tbaa !54 ; 5 uses
  %i.hi = tail call float @llvm.fabs.f32(float %i.hh)
  %or.cond = fcmp ult float %i.hi, f0x03800000
  br i1 %or.cond, label %stbir__insert_coeff.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = icmp sgt i32 %.0136173, %.1172
  br i1 %i.hj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = load i32, ptr %.0138171, align 4, !tbaa !36 ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0138171, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !39 ; 6 uses
  %i.hn = icmp sgt i32 %i.hk, %i.hm
  br i1 %i.hn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ho = add nsw i32 %.1172, %i.co
  %i.hp = sext i32 %i.ho to i64                   ; 2 uses
  %i.hq = getelementptr [8 x i8], ptr %.pre, i64 %i.hp ; 3 uses
  %.0133167 = getelementptr i8, ptr %i.hq, i64 8  ; 5 uses
  %i.hr = icmp ult ptr %.0133167, %.0138171
  br i1 %i.hr, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.hs = shl nsw i64 %i.hp, 3                    ; 2 uses
  %i.ht = add i64 %i.hs, %i.gr
  %umax = tail call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.ht)
  %i.hu = add i64 %umax, -9
  %i.hv = add i64 %i.hs, %3
  %i.hw = sub i64 %i.hu, %i.hv                    ; 2 uses
  %i.hx = lshr i64 %i.hw, 3
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hw, 24
  br i1 %min.iters.check, label %.lr.ph.preheader246, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.hy, 4611686018427387900     ; 3 uses
  %i.hz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ia = getelementptr i8, ptr %.0133167, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.hq, i64 %i.hz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ic = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0133167, i64 %i.ic
  %i.id = getelementptr i8, ptr %.0133167, i64 %i.ic
  %next.gep210 = getelementptr i8, ptr %i.id, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep, align 4, !tbaa !21
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep210, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ie = icmp eq i64 %index.next, %n.vec
  br i1 %i.ie, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader246

.lr.ph.preheader246:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133169.ph = phi ptr [ %.0133167, %.lr.ph.preheader ], [ %i.ia, %middle.block ]
  %.pn154168.ph = phi ptr [ %i.hq, %.lr.ph.preheader ], [ %i.ib, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader246, %.lr.ph
  %.0133169 = phi ptr [ %.0133, %.lr.ph ], [ %.0133169.ph, %.lr.ph.preheader246 ] ; 3 uses
  %.pn154168 = phi ptr [ %.0133169, %.lr.ph ], [ %.pn154168.ph, %.lr.ph.preheader246 ]
  store i32 0, ptr %.0133169, align 4, !tbaa !36
  %i.if = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.if, align 4, !tbaa !39
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.ig = icmp ult ptr %.0133, %.0138171
  br i1 %i.ig, label %.lr.ph, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !36
  %i.ih = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.ih, align 4, !tbaa !39
  store float %i.hh, ptr %.0135174, align 4, !tbaa !54
  br label %stbir__insert_coeff.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i162 = icmp sgt i32 %.0139181, %i.hm
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ii = icmp slt i32 %.0139181, %i.hk
  br i1 %i.ii, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ij = sub nuw nsw i32 %i.hm, %.0139181
  %.not60.not.i = icmp slt i32 %i.ij, %i.gn
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.ik = sub nuw nsw i32 %i.hk, %.0139181        ; 2 uses
  %i.il = sub i32 %i.hm, %i.hk                    ; 2 uses
  %i.im = zext i32 %i.il to i64                   ; 4 uses
  %i.in = sext i32 %i.ik to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0135174, i64 %i.in ; 6 uses
  %i.io = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check213 = icmp ult i32 %i.il, 7
  %i.ip = shl nsw i64 %i.in, 2
  %diff.check = icmp ugt i64 %i.ip, -32
  %or.cond237 = select i1 %min.iters.check213, i1 true, i1 %diff.check
  br i1 %or.cond237, label %.lr.ph.i164.preheader, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph.preheader.i
  %n.vec215 = and i64 %i.io, 8589934584           ; 3 uses
  %i.iq = sub nsw i64 %i.im, %n.vec215
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next219, %vector.body216 ] ; 2 uses
  %i.ir = sub i64 %i.im, %index217                ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -12
  %i.iu = getelementptr inbounds i8, ptr %i.is, i64 -28
  %wide.load = load <4 x float>, ptr %i.it, align 4, !tbaa !54
  %wide.load218 = load <4 x float>, ptr %i.iu, align 4, !tbaa !54
  %i.iv = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ir ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -12
  %i.ix = getelementptr i8, ptr %i.iv, i64 -28
  store <4 x float> %wide.load, ptr %i.iw, align 4, !tbaa !54
  store <4 x float> %wide.load218, ptr %i.ix, align 4, !tbaa !54
  %index.next219 = add nuw i64 %index217, 8       ; 2 uses
  %i.iy = icmp eq i64 %index.next219, %n.vec215
  br i1 %i.iy, label %middle.block220, label %vector.body216, !llvm.loop !160

middle.block220:                                  ; preds = %vector.body216
  %cmp.n221 = icmp eq i64 %i.io, %n.vec215
  br i1 %cmp.n221, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block220
  %indvars.iv.i165.ph = phi i64 [ %i.im, %.lr.ph.preheader.i ], [ %i.iq, %middle.block220 ] ; 4 uses
  %i.iz = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.iz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165.prol
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !54
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.jb, ptr %gep.i.prol, align 4, !tbaa !54
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !161

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.jc = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.jc, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block220
  %i.jd = icmp sgt i32 %i.ik, 1
  br i1 %i.jd, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0135174, i64 4
  %i.je = add i32 %i.hk, %i.hb
  %i.jf = zext i32 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.jg, i1 false), !tbaa !54
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !54
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.ji, ptr %gep.i, align 4, !tbaa !54
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !54
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.jk, ptr %gep.i.1, align 4, !tbaa !54
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !54
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.jm, ptr %gep.i.2, align 4, !tbaa !54
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !54
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jo, ptr %gep.i.3, align 4, !tbaa !54
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !162

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hh, ptr %.0135174, align 4, !tbaa !54
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !36
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.jp = sub nsw i32 %.0139181, %i.hk
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.jq ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !54
  %i.jt = fadd float %i.hh, %i.js
  store float %i.jt, ptr %i.jr, align 4, !tbaa !54
  br label %stbir__insert_coeff.exit

bb.ai:                                            ; preds = %bb.ae
  %i.ju = sub nsw i32 %.0139181, %i.hk            ; 3 uses
  %.not59.not.i = icmp slt i32 %i.ju, %i.gn
  br i1 %.not59.not.i, label %bb.aj, label %stbir__insert_coeff.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jv = sub nsw i32 %i.hm, %i.hk
  %.064.i = add nsw i32 %i.jv, 1                  ; 2 uses
  %i.jw = icmp slt i32 %.064.i, %i.ju
  br i1 %i.jw, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aj
  %i.jx = sext i32 %.064.i to i64
  %i.jy = shl nsw i64 %i.jx, 2
  %scevgep73.i = getelementptr i8, ptr %.0135174, i64 %i.jy
  %i.jz = sub i32 %i.hc, %i.hm
  %i.ka = zext i32 %i.jz to i64
  %i.kb = shl nuw nsw i64 %i.ka, 2
  %i.kc = add nuw nsw i64 %i.kb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.kc, i1 false), !tbaa !54
  br label %._crit_edge68.i

end_hunk_0
