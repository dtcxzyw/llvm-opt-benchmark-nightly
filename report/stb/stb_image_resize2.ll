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
  %i.cr = load ptr, ptr %1, align 8, !tbaa !45
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !67
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.da = load <2 x i32>, ptr %i.cy, align 4, !tbaa !32
  store <2 x i32> %i.da, ptr %i.cz, align 4, !tbaa !32
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !70
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !70
  br label %bb.y

bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !71
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !72
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !73
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !74
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.0148 = phi i32 [ %i.k, %bb.i ], [ %i.dl, %bb.l ] ; 2 uses
  %.0145 = phi ptr [ %i.l, %bb.i ], [ %i.df, %bb.l ] ; 3 uses
  %.0142 = phi ptr [ %i.n, %bb.i ], [ %i.dh, %bb.l ] ; 3 uses
  %.0140 = phi i32 [ %i.p, %bb.i ], [ %i.dj, %bb.l ] ; 3 uses
  %i.dm = sub nsw i32 0, %i.co                    ; 2 uses
  %i.dn = load float, ptr %i.b, align 8, !tbaa !61 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = load float, ptr %i.do, align 8, !tbaa !54 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !62 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !55 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !56
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
  %i.fq = tail call float %i.e(float noundef %i.fp, float noundef %i.dn, ptr noundef %2) #24, !inline_history !275
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
  store i32 %.06380.i, ptr %i.fv, align 4, !tbaa !47
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %.06380.i, ptr %i.fy, align 4, !tbaa !48
  store float %spec.store.select.i, ptr %i.fu, align 4, !tbaa !58
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.fz = load float, ptr %i.fu, align 4, !tbaa !58
  %i.ga = fcmp oeq float %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.v, label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %bb.u
  %.pre.i = load i32, ptr %i.fv, align 4, !tbaa !47
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %.06380.i, ptr %i.fv, align 4, !tbaa !47
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge86.i
  %i.gb = phi i32 [ %.pre.i, %._crit_edge86.i ], [ %.06380.i, %bb.v ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %.06380.i, ptr %i.gc, align 4, !tbaa !48
  %i.gd = sub nsw i32 %.06380.i, %i.gb
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.ge
  store float %spec.store.select.i, ptr %i.gf, align 4, !tbaa !58
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.2.i159 = phi i32 [ %i.fm, %bb.t ], [ %.179.i, %bb.w ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i160, label %.loopexit.i, label %bb.s, !llvm.loop !8

.loopexit.i:                                      ; preds = %bb.x, %bb.r, %bb.n
  %.3.ph.i = phi i32 [ %.06181.i, %bb.n ], [ %.06181.i, %bb.r ], [ %.2.i159, %bb.x ]
  %i.gg = add i32 %.06380.i, 1                    ; 2 uses
  %exitcond85.not.i = icmp eq i32 %i.gg, %i.cp
  br i1 %exitcond85.not.i, label %stbir__calculate_coefficients_for_gather_downsample.exit, label %bb.n, !llvm.loop !9

stbir__calculate_coefficients_for_gather_downsample.exit: ; preds = %bb.p, %.loopexit.i, %bb.m
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !44
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @stbir__cleanup_gathered_coefficients(i32 noundef %i.gi, ptr noundef nonnull %i.gj, ptr noundef nonnull %i.a, i32 noundef %.0148, ptr noundef %.0145, ptr noundef %.0142, i32 noundef %.0140)
  %i.gk = load i32, ptr %i.q, align 8, !tbaa !69
  %.not152 = icmp eq i32 %i.gk, 0
  br i1 %.not152, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %stbir__calculate_coefficients_for_gather_downsample.exit, %bb.k
  %.1149 = phi i32 [ %.0148, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cx, %bb.k ] ; 2 uses
  %.1146 = phi ptr [ %.0145, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cr, %bb.k ]
  %.1143 = phi ptr [ %.0142, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.ct, %bb.k ]
  %.1141 = phi i32 [ %.0140, %stbir__calculate_coefficients_for_gather_downsample.exit ], [ %i.cv, %bb.k ]
  %i.gl = xor i32 %i.co, -1                       ; 2 uses
  %i.gm = icmp sgt i32 %.1149, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !45    ; 4 uses
  br i1 %i.gm, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.y
  %i.gn = load i32, ptr %i.o, align 4, !tbaa !68  ; 4 uses
  %i.go = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.gp = sext i32 %i.gn to i64
  %i.gq = sext i32 %.1141 to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph184, %._crit_edge178
  %.0137182 = phi i32 [ %i.gl, %.lr.ph184 ], [ %.1.lcssa, %._crit_edge178 ] ; 2 uses
  %.0139181 = phi i32 [ 0, %.lr.ph184 ], [ %i.kg, %._crit_edge178 ] ; 13 uses
  %.2144180 = phi ptr [ %.1143, %.lr.ph184 ], [ %i.kf, %._crit_edge178 ] ; 2 uses
  %.2147179 = phi ptr [ %.1146, %.lr.ph184 ], [ %i.ke, %._crit_edge178 ] ; 3 uses
  %i.gr = load i32, ptr %.2147179, align 4, !tbaa !47 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.2147179, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !48 ; 2 uses
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
  %i.he = add i64 %i.hd, -16
  %i.hf = getelementptr inbounds nuw i8, ptr %.0134175, i64 4
  %i.hg = load float, ptr %.0134175, align 4, !tbaa !58 ; 5 uses
  %i.hh = tail call float @llvm.fabs.f32(float %i.hg)
  %or.cond = fcmp ult float %i.hh, f0x03800000
  br i1 %or.cond, label %stbir__insert_coeff.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hi = icmp sgt i32 %.0136173, %.1172
  br i1 %i.hi, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hj = load i32, ptr %.0138171, align 4, !tbaa !47 ; 8 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0138171, i64 4 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !48 ; 6 uses
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
  %i.hr = shl nsw i64 %i.ho, 3
  %i.hs = sub i64 %i.he, %i.hr                    ; 2 uses
  %i.ht = lshr exact i64 %i.hs, 3
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
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep, align 4, !tbaa !32
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep210, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !265

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
  store i32 0, ptr %.0133169, align 4, !tbaa !47
  %i.ib = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.ib, align 4, !tbaa !48
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.ic = icmp ult ptr %.0133, %.0138171
  br i1 %i.ic, label %.lr.ph, label %._crit_edge, !llvm.loop !266

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !47
  %i.id = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.id, align 4, !tbaa !48
  store float %i.hg, ptr %.0135174, align 4, !tbaa !58
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
  %wide.load = load <4 x float>, ptr %i.ip, align 4, !tbaa !58
  %wide.load218 = load <4 x float>, ptr %i.iq, align 4, !tbaa !58
  %i.ir = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.in ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -12
  %i.it = getelementptr i8, ptr %i.ir, i64 -28
  store <4 x float> %wide.load, ptr %i.is, align 4, !tbaa !58
  store <4 x float> %wide.load218, ptr %i.it, align 4, !tbaa !58
  %index.next219 = add nuw i64 %index217, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next219, %n.vec215
  br i1 %i.iu, label %middle.block220, label %vector.body216, !llvm.loop !267

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
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !58
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.ix, ptr %gep.i.prol, align 4, !tbaa !58
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !268

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
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.jc, i1 false), !tbaa !58
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.je = load float, ptr %i.jd, align 4, !tbaa !58
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.je, ptr %gep.i, align 4, !tbaa !58
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !58
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.jg, ptr %gep.i.1, align 4, !tbaa !58
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !58
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.ji, ptr %gep.i.2, align 4, !tbaa !58
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !58
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jk, ptr %gep.i.3, align 4, !tbaa !58
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !269

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hg, ptr %.0135174, align 4, !tbaa !58
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !47
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.jl = sub nsw i32 %.0139181, %i.hj
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.jm ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !58
  %i.jp = fadd float %i.hg, %i.jo
  store float %i.jp, ptr %i.jn, align 4, !tbaa !58
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
  %i.ju = shl nuw nsw i64 %i.jt, 2
  %scevgep73.i = getelementptr i8, ptr %.0135174, i64 %i.ju
  %i.jv = sub i32 %i.hb, %i.hl
  %i.jw = zext i32 %i.jv to i64
  %i.jx = shl nuw nsw i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.jy, i1 false), !tbaa !58
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.aj
  %i.jz = sext i32 %i.jq to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.jz
  store float %i.hg, ptr %i.ka, align 4, !tbaa !58
  store i32 %.0139181, ptr %i.hk, align 4, !tbaa !48
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %._crit_edge68.i, %bb.ai, %bb.ah, %._crit_edge.i163, %bb.ag, %._crit_edge, %bb.aa
  %.2 = phi i32 [ %.0136173, %._crit_edge ], [ %.1172, %bb.aa ], [ %.1172, %bb.ag ], [ %.1172, %._crit_edge.i163 ], [ %.1172, %bb.ah ], [ %.1172, %bb.ai ], [ %.1172, %._crit_edge68.i ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0138171, i64 8
  %i.kc = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.gp
  %i.kd = add i32 %.0136173, 1
  %exitcond.not = icmp eq i32 %.0136173, %i.gt
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge178, label %bb.aa, !llvm.loop !270

._crit_edge178:                                   ; preds = %stbir__insert_coeff.exit, %bb.z
  %.1.lcssa = phi i32 [ %.0137182, %bb.z ], [ %.2, %stbir__insert_coeff.exit ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.2147179, i64 8
  %i.kf = getelementptr inbounds [4 x i8], ptr %.2144180, i64 %i.gq
  %i.kg = add nuw nsw i32 %.0139181, 1            ; 2 uses
  %exitcond192.not = icmp eq i32 %i.kg, %.1149
  br i1 %exitcond192.not, label %._crit_edge185, label %bb.z, !llvm.loop !271

._crit_edge185:                                   ; preds = %._crit_edge178, %bb.y
  %.0137.lcssa = phi i32 [ %i.gl, %bb.y ], [ %.1.lcssa, %._crit_edge178 ]
  %i.kh = add nsw i32 %.0137.lcssa, %i.co
  %i.ki = sext i32 %i.kh to i64                   ; 2 uses
  %i.kj = getelementptr [8 x i8], ptr %.pre, i64 %i.ki ; 3 uses
  %i.kk = load i32, ptr %i.j, align 8, !tbaa !66
  %i.kl = sext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.kl ; 2 uses
  %.0187 = getelementptr i8, ptr %i.kj, i64 8     ; 5 uses
  %i.kn = icmp ult ptr %.0187, %i.km
  br i1 %i.kn, label %.lr.ph191.preheader, label %.loopexit

.lr.ph191.preheader:                              ; preds = %._crit_edge185
  %i.ko = shl nsw i64 %i.kl, 3
  %3 = shl nsw i64 %i.ki, 3
  %i.kp = add nsw i64 %i.ko, -16
  %i.kq = sub nsw i64 %i.kp, %3                   ; 2 uses
  %i.kr = lshr exact i64 %i.kq, 3
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
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep229.a, align 4, !tbaa !32
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep230, align 4, !tbaa !32
  %index.next231 = add nuw i64 %index228, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next231, %n.vec226
  br i1 %i.ky, label %middle.block232, label %vector.body227, !llvm.loop !272

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
  store i32 0, ptr %.0189, align 4, !tbaa !47
  %i.kz = getelementptr i8, ptr %.pn188, i64 12
  store i32 -1, ptr %i.kz, align 4, !tbaa !48
  %.0 = getelementptr i8, ptr %.0189, i64 8       ; 2 uses
  %i.la = icmp ult ptr %.0, %i.km
  br i1 %i.la, label %.lr.ph191, label %.loopexit, !llvm.loop !273

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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.073) #24, !srcloc !278
  %i.g = load <16 x i8>, ptr %.072, align 1, !tbaa !24 ; 2 uses
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
  store <4 x float> %i.x, ptr %.073, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %.073, i64 16
  store <4 x float> %i.y, ptr %i.ab, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.073, i64 32
  store <4 x float> %i.z, ptr %i.ac, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.073, i64 48
  store <4 x float> %i.aa, ptr %i.ad, align 1, !tbaa !24
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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.27590) #24, !srcloc !279
  %i.aj = load i8, ptr %.289, align 1, !tbaa !24
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x3B808081
  store float %i.al, ptr %.pn88, align 4, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %.289, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = uitofp i8 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x3B808081
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn88, i64 4
  store float %i.ap, ptr %i.aq, align 4, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %.289, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24
  %i.at = uitofp i8 %i.as to float
  %i.au = fmul nnan float %i.at, f0x3B808081
  %i.av = getelementptr inbounds nuw i8, ptr %.pn88, i64 8
  store float %i.au, ptr %i.av, align 4, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %.289, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !24
  %i.ay = uitofp i8 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x3B808081
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn88, i64 12
  store float %i.az, ptr %i.ba, align 4, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %.289, i64 4 ; 2 uses
  %.275 = getelementptr inbounds nuw i8, ptr %.27590, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.275, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !276

.lr.ph94:                                         ; preds = %.preheader, %.lr.ph94
  %.393 = phi ptr [ %i.bg, %.lr.ph94 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.37692 = phi ptr [ %i.bf, %.lr.ph94 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.37692) #24, !srcloc !280
  %i.bc = load i8, ptr %.393, align 1, !tbaa !24
  %i.bd = uitofp i8 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x3B808081
  store float %i.be, ptr %.37692, align 4, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %.37692, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.393, i64 1
  %i.bh = icmp ult ptr %i.bf, %i.b
  br i1 %i.bh, label %.lr.ph94, label %.loopexit, !llvm.loop !277

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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0) #24, !srcloc !283
  %i.h = load <4 x float>, ptr %.0, align 1, !tbaa !24
  %i.i = fmul <4 x float> %i.h, splat (float 2.550000e+02)
  %i.j = fadd <4 x float> %i.i, splat (float 5.000000e-01)
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !24
  %i.m = fmul <4 x float> %i.l, splat (float 2.550000e+02)
  %i.n = fadd <4 x float> %i.m, splat (float 5.000000e-01)
  %i.o = tail call <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.j, <4 x float> splat (float 2.550000e+02))
end_hunk_0
begin_hunk_1_@stbir_quick_resize_helper:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !24
  %i.d = zext i8 %i.c to i32
  %i.e = mul nsw i32 %5, %i.d
  %i.f = zext i32 %8 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @stbir__pixel_layout_convert_public_to_internal, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @stbir__pixel_channels, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24
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
  store ptr %0, ptr %i.ab, align 8, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %1, ptr %i.ac, align 8, !tbaa !158
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %2, ptr %i.ad, align 4, !tbaa !159
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 104
  store i32 %3, ptr %i.ae, align 8, !tbaa !145
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %.2, ptr %i.af, align 8, !tbaa !147
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i32 %5, ptr %i.ag, align 8, !tbaa !160
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 76
  store i32 %6, ptr %i.ah, align 4, !tbaa !161
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 108
  store i32 %spec.select, ptr %i.ai, align 4, !tbaa !146
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 116
  store i32 0, ptr %i.aj, align 4, !tbaa !162
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr null, ptr %i.ak, align 8, !tbaa !148
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 96
  store ptr null, ptr %i.al, align 8, !tbaa !150
  store ptr %12, ptr %12, align 8, !tbaa !149
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 124
  store i32 0, ptr %i.am, align 4, !tbaa !152
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i8 0, i64 40, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.ap, align 8, !tbaa !151
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i32 0, ptr %i.ar, align 8, !tbaa !153
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 84
  store i32 0, ptr %i.as, align 4, !tbaa !154
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i32 %5, ptr %i.at, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 92
  store i32 %6, ptr %i.au, align 4, !tbaa !164
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 %9, ptr %i.av, align 8, !tbaa !142
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 %9, ptr %i.aw, align 4, !tbaa !143
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 128
  store i32 %8, ptr %i.ax, align 8, !tbaa !155
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 132
  store i32 %8, ptr %i.ay, align 4, !tbaa !156
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i32 1, ptr %i.az, align 8, !tbaa !157
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 152
  store i32 %10, ptr %i.ba, align 8, !tbaa !166
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 156
  store i32 %10, ptr %i.bb, align 4, !tbaa !167
  store i32 %11, ptr %i.an, align 8, !tbaa !168
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 148
  store i32 %11, ptr %i.bc, align 4, !tbaa !169
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

!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !25, !26, !27}
!1 = distinct !{!1, !26, !27}
!2 = distinct !{!2, !26, !27}
!3 = distinct !{!3, !25, !26, !27}
!4 = distinct !{!4, !25}
!5 = distinct !{null}
!6 = distinct !{!6, !25}
!7 = distinct !{!7, !25}
!8 = distinct !{!8, !25}
!9 = distinct !{!9, !25}
!10 = distinct !{!10, !25, !121}
!11 = distinct !{!11, !25}
!12 = distinct !{!12, !25}
!13 = distinct !{!13, !25}
!14 = distinct !{!14, !25}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{i64 2148896476}
!24 = !{!19, !19, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"llvm.loop.vectorize.width", i32 1}
!28 = !{i64 2148896905}
!29 = !{i64 2148898007}
!30 = !{i64 2148899109}
!31 = !{i64 2148899267}
!32 = !{!20, !20, i64 0}
!33 = !{!"any pointer", !19, i64 0}
!34 = !{!"p1 float", !33, i64 0}
!35 = !{!"float", !19, i64 0}
!36 = !{!"stbir__scale_info", !20, i64 0, !20, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !20, i64 20, !20, i64 24, !20, i64 28}
!37 = !{!"", !20, i64 0, !20, i64 4, !20, i64 8}
!38 = !{!"", !33, i64 0, !34, i64 8, !33, i64 16, !34, i64 24, !36, i64 32, !35, i64 64, !20, i64 68, !33, i64 72, !33, i64 80, !20, i64 88, !20, i64 92, !20, i64 96, !20, i64 100, !20, i64 104, !20, i64 108, !20, i64 112, !37, i64 116, !20, i64 128, !20, i64 132, !20, i64 136, !20, i64 140, !20, i64 144}
!39 = !{!38, !35, i64 40}
!40 = !{!38, !33, i64 80}
!41 = !{!38, !20, i64 36}
!42 = !{!38, !20, i64 32}
!43 = !{!38, !20, i64 100}
!44 = !{!38, !20, i64 88}
!45 = !{!38, !33, i64 0}
!46 = !{!"", !20, i64 0, !20, i64 4}
!47 = !{!46, !20, i64 0}
!48 = !{!46, !20, i64 4}
!49 = !{!37, !20, i64 0}
!50 = !{!37, !20, i64 4}
!51 = !{!37, !20, i64 8}
!52 = !{!33, !33, i64 0}
!53 = !{!36, !35, i64 12}
!54 = !{!36, !35, i64 16}
!55 = !{!36, !20, i64 24}
!56 = !{!36, !20, i64 20}
!57 = !{!36, !20, i64 0}
!58 = !{!35, !35, i64 0}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!36, !35, i64 8}
!62 = !{!36, !20, i64 4}
!63 = !{!"long", !19, i64 0}
!64 = !{!38, !33, i64 72}
!65 = !{!38, !35, i64 44}
!66 = !{!38, !20, i64 104}
!67 = !{!38, !34, i64 8}
!68 = !{!38, !20, i64 92}
!69 = !{!38, !20, i64 128}
!70 = !{!38, !20, i64 124}
!71 = !{!38, !33, i64 16}
!72 = !{!38, !34, i64 24}
!73 = !{!38, !20, i64 136}
!74 = !{!38, !20, i64 132}
!75 = !{!"short", !19, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"", !46, i64 0, !19, i64 8, !19, i64 16}
!78 = !{!"stbir__info", !38, i64 0, !38, i64 152, !33, i64 304, !33, i64 312, !20, i64 320, !20, i64 324, !20, i64 328, !20, i64 332, !20, i64 336, !20, i64 340, !33, i64 344, !33, i64 352, !33, i64 360, !77, i64 368, !33, i64 408, !33, i64 416, !33, i64 424, !33, i64 432, !33, i64 440, !33, i64 448, !33, i64 456, !20, i64 464, !20, i64 468, !20, i64 472, !20, i64 476, !20, i64 480, !20, i64 484, !20, i64 488, !20, i64 492, !20, i64 496, !20, i64 500, !63, i64 504}
!79 = !{!78, !20, i64 496}
!80 = !{!78, !20, i64 500}
!81 = !{!78, !20, i64 336}
!82 = !{!78, !20, i64 184}
!83 = !{!78, !33, i64 304}
!84 = !{!78, !20, i64 320}
!85 = !{!78, !20, i64 368}
!86 = !{!78, !33, i64 344}
!87 = !{!78, !33, i64 352}
!88 = !{!78, !33, i64 424}
!89 = !{!78, !33, i64 432}
!90 = !{!78, !20, i64 32}
!91 = !{!34, !34, i64 0}
!92 = !{!78, !20, i64 36}
!93 = !{!78, !33, i64 448}
!94 = !{!78, !33, i64 360}
!95 = !{!78, !33, i64 456}
!96 = !{!"", !34, i64 0, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !34, i64 40, !34, i64 48, !19, i64 56}
!97 = !{!96, !34, i64 40}
!98 = !{!78, !20, i64 328}
!99 = !{!96, !20, i64 16}
!100 = !{!96, !20, i64 8}
!101 = !{!78, !20, i64 332}
!102 = !{!78, !20, i64 68}
!103 = !{!78, !35, i64 40}
!104 = !{!78, !33, i64 440}
!105 = !{!78, !33, i64 0}
!106 = !{!78, !34, i64 8}
!107 = !{!78, !20, i64 92}
!108 = !{!96, !34, i64 48}
!109 = !{!96, !34, i64 0}
!110 = !{!78, !20, i64 492}
!111 = !{!78, !20, i64 372}
!112 = !{!78, !33, i64 312}
!113 = !{!78, !20, i64 324}
!114 = !{ptr @stbir__encode_scanline}
!115 = !{!96, !20, i64 12}
!116 = !{!78, !33, i64 152}
!117 = !{!78, !34, i64 160}
!118 = !{!96, !20, i64 20}
!119 = !{!96, !20, i64 24}
!120 = !{!78, !20, i64 244}
!121 = !{!"llvm.loop.peeled.count", i32 1}
!122 = !{!96, !20, i64 28}
!123 = !{!96, !20, i64 32}
!124 = !{!78, !20, i64 252}
!125 = !{!38, !20, i64 68}
!126 = !{!38, !20, i64 96}
!127 = !{!38, !20, i64 108}
!128 = !{!38, !20, i64 112}
!129 = !{!38, !20, i64 140}
!130 = !{!38, !20, i64 144}
!131 = !{!38, !35, i64 48}
!132 = !{!78, !33, i64 408}
!133 = !{!"double", !19, i64 0}
!134 = !{!78, !33, i64 416}
!135 = !{!78, !20, i64 484}
!136 = !{!78, !20, i64 488}
!137 = !{!78, !20, i64 472}
!138 = !{!78, !20, i64 476}
!139 = !{!78, !20, i64 280}
!140 = !{!"p1 _ZTS11stbir__info", !33, i64 0}
!141 = !{!"STBIR_RESIZE", !33, i64 0, !33, i64 8, !20, i64 16, !20, i64 20, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !33, i64 56, !33, i64 64, !20, i64 72, !20, i64 76, !20, i64 80, !20, i64 84, !20, i64 88, !20, i64 92, !33, i64 96, !20, i64 104, !20, i64 108, !20, i64 112, !20, i64 116, !20, i64 120, !20, i64 124, !20, i64 128, !20, i64 132, !20, i64 136, !20, i64 140, !20, i64 144, !20, i64 148, !20, i64 152, !20, i64 156, !33, i64 160, !33, i64 168, !33, i64 176, !33, i64 184, !140, i64 192}
!142 = !{!141, !20, i64 136}
!143 = !{!141, !20, i64 140}
!144 = !{!141, !33, i64 8}
!145 = !{!141, !20, i64 104}
!146 = !{!141, !20, i64 108}
!147 = !{!141, !33, i64 64}
!148 = !{!141, !33, i64 56}
!149 = !{!141, !33, i64 0}
!150 = !{!141, !33, i64 96}
!151 = !{!133, !133, i64 0}
!152 = !{!141, !20, i64 124}
!153 = !{!141, !20, i64 80}
!154 = !{!141, !20, i64 84}
!155 = !{!141, !20, i64 128}
!156 = !{!141, !20, i64 132}
!157 = !{!141, !20, i64 120}
!158 = !{!141, !20, i64 16}
!159 = !{!141, !20, i64 20}
!160 = !{!141, !20, i64 72}
!161 = !{!141, !20, i64 76}
!162 = !{!141, !20, i64 116}
!163 = !{!141, !20, i64 88}
!164 = !{!141, !20, i64 92}
!165 = !{!141, !140, i64 192}
!166 = !{!141, !20, i64 152}
end_hunk_1
