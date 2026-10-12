Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__calculate_filters:bb.a
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
  %foldExtExtBinop239 = fadd <4 x float> %i.ep, %i.et
  %i.eu = extractelement <4 x float> %foldExtExtBinop239, i64 0
  %i.ev = fadd float %i.el, -5.000000e-01
  %i.ew = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ev, i64 0 ; 2 uses
  %i.ex = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ew)
  %i.ey = sitofp <4 x i32> %i.ex to <4 x float>   ; 2 uses
  %i.ez = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ew, <4 x float> %i.ey, i8 1)
  %i.fa = bitcast <4 x float> %i.ez to <4 x i32>
  %i.fb = and <4 x i32> %i.fa, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.fc = bitcast <4 x i32> %i.fb to <4 x float>
  %foldExtExtBinop241 = fadd <4 x float> %i.ey, %i.fc
  %i.fd = extractelement <4 x float> %foldExtExtBinop241, i64 0
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
  %i.fq = tail call float %i.e(float noundef %i.fp, float noundef %i.dn, ptr noundef %2) #24, !inline_history !276
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
  %.0139181 = phi i32 [ 0, %.lr.ph184 ], [ %i.kd, %._crit_edge178 ] ; 13 uses
  %.2144180 = phi ptr [ %.1143, %.lr.ph184 ], [ %i.kc, %._crit_edge178 ] ; 2 uses
  %.2147179 = phi ptr [ %.1146, %.lr.ph184 ], [ %i.kb, %._crit_edge178 ] ; 3 uses
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
  %.0134175 = phi ptr [ %.2144180, %.lr.ph177 ], [ %i.hc, %stbir__insert_coeff.exit ] ; 2 uses
  %.0135174 = phi ptr [ %i.gz, %.lr.ph177 ], [ %i.jz, %stbir__insert_coeff.exit ] ; 14 uses
  %.0136173 = phi i32 [ %i.gr, %.lr.ph177 ], [ %i.ka, %stbir__insert_coeff.exit ] ; 4 uses
  %.1172 = phi i32 [ %.0137182, %.lr.ph177 ], [ %.2, %stbir__insert_coeff.exit ] ; 8 uses
  %.0138171 = phi ptr [ %i.gw, %.lr.ph177 ], [ %i.jy, %stbir__insert_coeff.exit ] ; 8 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0134175, i64 4
  %i.hd = load float, ptr %.0134175, align 4, !tbaa !58 ; 5 uses
  %i.he = tail call float @llvm.fabs.f32(float %i.hd)
  %or.cond = fcmp ult float %i.he, f0x03800000
  br i1 %or.cond, label %stbir__insert_coeff.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hf = icmp sgt i32 %.0136173, %.1172
  br i1 %i.hf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hg = load i32, ptr %.0138171, align 4, !tbaa !47 ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0138171, i64 4 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !48 ; 6 uses
  %i.hj = icmp sgt i32 %i.hg, %i.hi
  br i1 %i.hj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hk = add nsw i32 %.1172, %i.co
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr [8 x i8], ptr %.pre, i64 %i.hl ; 3 uses
  %.0133167 = getelementptr i8, ptr %i.hm, i64 8  ; 5 uses
  %i.hn = icmp ult ptr %.0133167, %.0138171
  br i1 %i.hn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %3 = add i64 %indvar, %i.gv
  %4 = shl i64 %3, 3
  %5 = add i64 %4, -16
  %i.ho = shl nsw i64 %i.hl, 3
  %i.hp = sub i64 %5, %i.ho                       ; 2 uses
  %i.hq = lshr exact i64 %i.hp, 3
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hp, 24
  br i1 %min.iters.check, label %.lr.ph.preheader244, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.hr, 4611686018427387900     ; 3 uses
  %i.hs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ht = getelementptr i8, ptr %.0133167, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.hm, i64 %i.hs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0133167, i64 %i.hv
  %i.hw = getelementptr i8, ptr %.0133167, i64 %i.hv
  %next.gep209 = getelementptr i8, ptr %i.hw, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep, align 4, !tbaa !32
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep209, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader244

.lr.ph.preheader244:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133169.ph = phi ptr [ %.0133167, %.lr.ph.preheader ], [ %i.ht, %middle.block ]
  %.pn154168.ph = phi ptr [ %i.hm, %.lr.ph.preheader ], [ %i.hu, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader244, %.lr.ph
  %.0133169 = phi ptr [ %.0133, %.lr.ph ], [ %.0133169.ph, %.lr.ph.preheader244 ] ; 3 uses
  %.pn154168 = phi ptr [ %.0133169, %.lr.ph ], [ %.pn154168.ph, %.lr.ph.preheader244 ]
  store i32 0, ptr %.0133169, align 4, !tbaa !47
  %i.hy = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.hy, align 4, !tbaa !48
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.hz = icmp ult ptr %.0133, %.0138171
  br i1 %i.hz, label %.lr.ph, label %._crit_edge, !llvm.loop !267

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !47
  %i.ia = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.ia, align 4, !tbaa !48
  store float %i.hd, ptr %.0135174, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i162 = icmp sgt i32 %.0139181, %i.hi
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ib = icmp slt i32 %.0139181, %i.hg
  br i1 %i.ib, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ic = sub nuw nsw i32 %i.hi, %.0139181
  %.not60.not.i = icmp slt i32 %i.ic, %i.gn
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.id = sub nuw nsw i32 %i.hg, %.0139181        ; 2 uses
  %i.ie = sub i32 %i.hi, %i.hg                    ; 2 uses
  %i.if = zext i32 %i.ie to i64                   ; 4 uses
  %i.ig = sext i32 %i.id to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0135174, i64 %i.ig ; 6 uses
  %i.ih = add nuw nsw i64 %i.if, 1                ; 2 uses
  %min.iters.check212 = icmp ult i32 %i.ie, 7
  %i.ii = shl nsw i64 %i.ig, 2
  %diff.check = icmp ugt i64 %i.ii, -32
  %or.cond235 = select i1 %min.iters.check212, i1 true, i1 %diff.check
  br i1 %or.cond235, label %.lr.ph.i164.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.preheader.i
  %n.vec214 = and i64 %i.ih, 8589934584           ; 3 uses
  %i.ij = sub nsw i64 %i.if, %n.vec214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next218, %vector.body215 ] ; 2 uses
  %i.ik = sub i64 %i.if, %index216                ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 -12
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 -28
  %wide.load = load <4 x float>, ptr %i.im, align 4, !tbaa !58
  %wide.load217 = load <4 x float>, ptr %i.in, align 4, !tbaa !58
  %i.io = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ik ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 -12
  %i.iq = getelementptr i8, ptr %i.io, i64 -28
  store <4 x float> %wide.load, ptr %i.ip, align 4, !tbaa !58
  store <4 x float> %wide.load217, ptr %i.iq, align 4, !tbaa !58
  %index.next218 = add nuw i64 %index216, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next218, %n.vec214
  br i1 %i.ir, label %middle.block219, label %vector.body215, !llvm.loop !268

middle.block219:                                  ; preds = %vector.body215
  %cmp.n220 = icmp eq i64 %i.ih, %n.vec214
  br i1 %cmp.n220, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block219
  %indvars.iv.i165.ph = phi i64 [ %i.if, %.lr.ph.preheader.i ], [ %i.ij, %middle.block219 ] ; 4 uses
  %i.is = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.is, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165.prol
  %i.iu = load float, ptr %i.it, align 4, !tbaa !58
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.iu, ptr %gep.i.prol, align 4, !tbaa !58
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !269

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.iv = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.iv, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block219
  %i.iw = icmp sgt i32 %i.id, 1
  br i1 %i.iw, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0135174, i64 4
  %i.ix = add i32 %i.hg, %i.ha
  %i.iy = zext i32 %i.ix to i64
  %i.iz = shl nuw nsw i64 %i.iy, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.iz, i1 false), !tbaa !58
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !58
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.jb, ptr %gep.i, align 4, !tbaa !58
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !58
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.jd, ptr %gep.i.1, align 4, !tbaa !58
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.jf = load float, ptr %i.je, align 4, !tbaa !58
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.jf, ptr %gep.i.2, align 4, !tbaa !58
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !58
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jh, ptr %gep.i.3, align 4, !tbaa !58
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !270

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hd, ptr %.0135174, align 4, !tbaa !58
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !47
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.ji = sub nsw i32 %.0139181, %i.hg
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.jj ; 2 uses
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !58
  %i.jm = fadd float %i.hd, %i.jl
  store float %i.jm, ptr %i.jk, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit

bb.ai:                                            ; preds = %bb.ae
  %i.jn = sub nsw i32 %.0139181, %i.hg            ; 3 uses
  %.not59.not.i = icmp slt i32 %i.jn, %i.gn
  br i1 %.not59.not.i, label %bb.aj, label %stbir__insert_coeff.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jo = sub nsw i32 %i.hi, %i.hg
  %.064.i = add nuw nsw i32 %i.jo, 1              ; 2 uses
  %i.jp = icmp slt i32 %.064.i, %i.jn
  br i1 %i.jp, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aj
  %i.jq = sext i32 %.064.i to i64
  %i.jr = shl nuw nsw i64 %i.jq, 2
  %scevgep73.i = getelementptr i8, ptr %.0135174, i64 %i.jr
  %i.js = sub i32 %i.hb, %i.hi
  %i.jt = zext i32 %i.js to i64
  %i.ju = shl nuw nsw i64 %i.jt, 2
  %i.jv = add nuw nsw i64 %i.ju, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.jv, i1 false), !tbaa !58
  br label %._crit_edge68.i
end_hunk_0
