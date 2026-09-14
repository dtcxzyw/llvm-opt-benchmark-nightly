Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_spol?download=true
inline.NumInlined: 145
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z8gmx_spoliPPc:bb.a
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !177
  %i.hn = fdiv float %i.hm, %.0.lcssa.i           ; 3 uses
  %i.ho = getelementptr inbounds [12 x i8], ptr %i.ez, i64 %i.hk ; 5 uses
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef %i.ho, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a)
          to label %.noexc195 unwind label %.loopexit.split-lp.loopexit

.noexc195:                                        ; preds = %.backedge.i
  %i.hp = load float, ptr %i.g, align 8, !tbaa !157 ; 2 uses
  %i.hq = load float, ptr %i.a, align 4, !tbaa !157
  %i.hr = fadd float %i.hp, %i.hq                 ; 2 uses
  %i.hs = load float, ptr %i.ej, align 4, !tbaa !157
  %i.ht = load float, ptr %i.em, align 4, !tbaa !157
  %i.hu = fadd float %i.hs, %i.ht                 ; 2 uses
  %i.hv = load float, ptr %i.ek, align 8, !tbaa !157
  %i.hw = load float, ptr %i.en, align 4, !tbaa !157
  %i.hx = fadd float %i.hv, %i.hw                 ; 2 uses
  %i.hy = load float, ptr %i.ho, align 4, !tbaa !157
  %i.hz = fsub float %i.hr, %i.hy                 ; 2 uses
  %i.ia = call noundef float @llvm.fabs.f32(float %i.hz)
  %i.ib = fcmp ogt float %i.ia, f0x38D1B717
  br i1 %i.ib, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.noexc195
  %i.ic = call float @llvm.fmuladd.f32(float %i.hn, float %i.hz, float %i.hp)
  store float %i.ic, ptr %i.g, align 8, !tbaa !157
  store float %i.hr, ptr %i.ho, align 4, !tbaa !157
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.noexc195
  %.2.us.i = phi i1 [ true, %bb.am ], [ %.06270.us.i, %.noexc195 ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !157
  %i.if = fsub float %i.hu, %i.ie                 ; 2 uses
  %i.ig = call noundef float @llvm.fabs.f32(float %i.if)
  %i.ih = fcmp ogt float %i.ig, f0x38D1B717
  br i1 %i.ih, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ii = load float, ptr %i.ej, align 4, !tbaa !157
  %i.ij = call float @llvm.fmuladd.f32(float %i.hn, float %i.if, float %i.ii)
  store float %i.ij, ptr %i.ej, align 4, !tbaa !157
  store float %i.hu, ptr %i.id, align 4, !tbaa !157
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.2.us.1.i = phi i1 [ true, %bb.ao ], [ %.2.us.i, %bb.an ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !157
  %i.im = fsub float %i.hx, %i.il                 ; 2 uses
  %i.in = call noundef float @llvm.fabs.f32(float %i.im)
  %i.io = fcmp ogt float %i.in, f0x38D1B717
  br i1 %i.io, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next84.i, %wide.trip.count.i191
  br i1 %exitcond86.not.i, label %._crit_edge74.us.i, label %.backedge.i.backedge

.thread.i:                                        ; preds = %bb.ap
  %i.ip = load float, ptr %i.ek, align 8, !tbaa !157
  %i.iq = call float @llvm.fmuladd.f32(float %i.hn, float %i.im, float %i.ip)
  store float %i.iq, ptr %i.ek, align 8, !tbaa !157
  store float %i.hx, ptr %i.ik, align 4, !tbaa !157
  %indvars.iv.next8488.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond86.not89.i = icmp eq i64 %indvars.iv.next8488.i, %wide.trip.count.i191
  br i1 %exitcond86.not89.i, label %._crit_edge74.us.thread.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.thread.i, %bb.aq
  %indvars.iv83.i.be = phi i64 [ %indvars.iv.next84.i, %bb.aq ], [ %indvars.iv.next8488.i, %.thread.i ]
  %.06270.us.i.be = phi i1 [ %.2.us.1.i, %bb.aq ], [ true, %.thread.i ]
  br label %.backedge.i, !llvm.loop !26

._crit_edge74.us.thread.i:                        ; preds = %.thread.i, %._crit_edge74.us.i
  %i.ir = load float, ptr %i.g, align 8, !tbaa !157
  %i.is = fpext float %i.ir to double
  %i.it = load <2 x float>, ptr %i.ej, align 4, !tbaa !157
  %i.iu = fpext <2 x float> %i.it to <2 x double> ; 2 uses
  %i.iv = extractelement <2 x double> %i.iu, i64 0
  %i.iw = extractelement <2 x double> %i.iu, i64 1
  %i.ix = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, double noundef %i.is, double noundef %i.iv, double noundef %i.iw, i32 noundef %.058.us.i) ; 0 uses
  %i.iy = add nuw nsw i32 %.058.us.i, 1
  br label %.lr.ph73.us.i, !llvm.loop !27

._crit_edge74.us.i:                               ; preds = %bb.aq
  br i1 %.2.us.1.i, label %._crit_edge74.us.thread.i, label %_ZL12calc_com_pbciPK10t_topologyPA3_fP5t_pbcPKiPf7PbcType.exit

_ZL12calc_com_pbciPK10t_topologyPA3_fP5t_pbcPKiPf7PbcType.exit: ; preds = %._crit_edge74.us.i, %._crit_edge.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ar

bb.ar:                                            ; preds = %_ZL12calc_com_pbciPK10t_topologyPA3_fP5t_pbcPKiPf7PbcType.exit, %bb.ak
  %i.iz = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %.lr.ph317, label %._crit_edge318

.lr.ph317:                                        ; preds = %bb.ar, %bb.bd
  %indvars.iv406 = phi i64 [ %indvars.iv.next407, %bb.bd ], [ 0, %bb.ar ] ; 2 uses
  %.promoted325338 = phi float [ %.promoted325336, %bb.bd ], [ %.promoted325339, %bb.ar ]
  %.promoted333 = phi float [ %.promoted331, %bb.bd ], [ %.promoted334, %bb.ar ]
  %i.jb = phi float [ %i.sw, %bb.bd ], [ %.promoted325339, %bb.ar ]
  %i.jc = phi float [ %i.sx, %bb.bd ], [ %.promoted334, %bb.ar ]
  %.1153310 = phi float [ %.2154.lcssa, %bb.bd ], [ %.0152, %bb.ar ]
  %.1159309 = phi i32 [ %.2160, %bb.bd ], [ %.0158, %bb.ar ] ; 2 uses
  %.lcssa275306308 = phi float [ %.lcssa275307, %bb.bd ], [ %.promoted305328, %bb.ar ]
  %i.jd = phi <2 x double> [ %i.sy, %bb.bd ], [ %i.es, %bb.ar ] ; 2 uses
  %i.je = phi <2 x double> [ %i.sz, %bb.bd ], [ %i.et, %bb.ar ] ; 2 uses
  %i.jf = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv406
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !37
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !37 ; 7 uses
  %i.jl = getelementptr i8, ptr %i.jj, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !37 ; 4 uses
  br i1 %i.eo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph317
  %i.jn = load ptr, ptr %i.f, align 8, !tbaa !173 ; 2 uses
  %i.jo = load i32, ptr @_ZZ8gmx_spoliPPcE6srefat, align 4, !tbaa !37
  %i.jp = add nsw i32 %i.jo, %i.jk
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [12 x i8], ptr %i.jn, i64 %i.jq
  %i.js = load i8, ptr @_ZZ8gmx_spoliPPcE4bCom, align 1, !tbaa !49, !range !50, !noundef !51
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.preheader
  %i.ju = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !37
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [12 x i8], ptr %i.jn, i64 %i.jw
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.preheader
  %i.jy = phi ptr [ %i.jx, %bb.as ], [ %i.g, %.lr.ph.preheader ]
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef %i.jr, ptr noundef %i.jy, ptr noundef nonnull %i.h)
          to label %bb.au unwind label %.loopexit250.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  %i.jz = load float, ptr %i.eq, align 4, !tbaa !157 ; 5 uses
  %i.ka = load float, ptr %i.ep, align 4, !tbaa !157 ; 5 uses
  %i.kb = load float, ptr %i.h, align 4, !tbaa !157 ; 4 uses
  %i.kc = fmul float %i.ka, %i.ka
  %i.kd = call float @llvm.fmuladd.f32(float %i.kb, float %i.kb, float %i.kc)
  %i.ke = call noundef float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.kd) ; 2 uses
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au, %bb.az
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.az ], [ 1, %bb.au ] ; 2 uses
  %i.kf = phi float [ %i.lc, %bb.az ], [ %i.jz, %bb.au ]
  %i.kg = phi float [ %i.ld, %bb.az ], [ %i.ka, %bb.au ]
  %.2154277 = phi float [ %.3155, %bb.az ], [ %i.ke, %bb.au ] ; 2 uses
  %i.kh = phi float [ %i.le, %bb.az ], [ %i.kb, %bb.au ]
  %i.ki = load ptr, ptr %i.f, align 8, !tbaa !173 ; 2 uses
  %i.kj = load i32, ptr @_ZZ8gmx_spoliPPcE6srefat, align 4, !tbaa !37
  %i.kk = add nsw i32 %i.kj, %i.jk
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [12 x i8], ptr %i.ki, i64 %i.kl
  %i.kn = load i8, ptr @_ZZ8gmx_spoliPPcE4bCom, align 1, !tbaa !49, !range !50, !noundef !51
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph
  %i.kp = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !37
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [12 x i8], ptr %i.ki, i64 %i.ks
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.av
  %i.ku = phi ptr [ %i.kt, %bb.av ], [ %i.g, %.lr.ph ]
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %4, ptr noundef %i.km, ptr noundef %i.ku, ptr noundef nonnull %i.h)
          to label %bb.ax unwind label %.loopexit250.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.kv = load float, ptr %i.eq, align 4, !tbaa !157 ; 3 uses
  %i.kw = load float, ptr %i.ep, align 4, !tbaa !157 ; 3 uses
  %i.kx = load float, ptr %i.h, align 4, !tbaa !157 ; 3 uses
  %i.ky = fmul float %i.kw, %i.kw
  %i.kz = call float @llvm.fmuladd.f32(float %i.kx, float %i.kx, float %i.ky)
  %i.la = call noundef float @llvm.fmuladd.f32(float %i.kv, float %i.kv, float %i.kz) ; 2 uses
  %i.lb = fcmp olt float %i.la, %.2154277
  br i1 %i.lb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.lc = phi float [ %i.kv, %bb.ay ], [ %i.kf, %bb.ax ] ; 3 uses
  %i.ld = phi float [ %i.kw, %bb.ay ], [ %i.kg, %bb.ax ] ; 3 uses
  %i.le = phi float [ %i.kx, %bb.ay ], [ %i.kh, %bb.ax ] ; 2 uses
  %.3155 = phi float [ %i.la, %bb.ay ], [ %.2154277, %bb.ax ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.az, %bb.au, %.lr.ph317
  %.promoted325337 = phi float [ %.promoted325338, %.lr.ph317 ], [ %i.jz, %bb.au ], [ %i.lc, %bb.az ]
  %.promoted332 = phi float [ %.promoted333, %.lr.ph317 ], [ %i.ka, %bb.au ], [ %i.ld, %bb.az ]
  %i.lf = phi float [ %i.jb, %.lr.ph317 ], [ %i.jz, %bb.au ], [ %i.lc, %bb.az ] ; 4 uses
  %i.lg = phi float [ %i.jc, %.lr.ph317 ], [ %i.ka, %bb.au ], [ %i.ld, %bb.az ] ; 4 uses
  %.lcssa275 = phi float [ %.lcssa275306308, %.lr.ph317 ], [ %i.kb, %bb.au ], [ %i.le, %bb.az ] ; 4 uses
  %.2154.lcssa = phi float [ %.1153310, %.lr.ph317 ], [ %i.ke, %bb.au ], [ %.3155, %bb.az ] ; 6 uses
  %i.lh = fcmp olt float %.2154.lcssa, %i.dn
  br i1 %i.lh, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge
  %i.li = call noundef float @sqrtf(float noundef %.2154.lcssa) #14
  %i.lj = fmul float %i.dp, %i.li
  %i.lk = fptosi float %i.lj to i32
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr [4 x i8], ptr %i.du, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.lm, i64 4      ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !37
  %i.lp = add nsw i32 %i.lo, 1
  store i32 %i.lp, ptr %i.ln, align 4, !tbaa !37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge
  %i.lq = fcmp oge float %.2154.lcssa, %i.dy
  %i.lr = fcmp olt float %.2154.lcssa, %i.ea
  %or.cond177 = and i1 %i.lq, %i.lr
  br i1 %or.cond177, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ls = fmul float %i.lg, %i.lg
  %i.lt = call float @llvm.fmuladd.f32(float %.lcssa275, float %.lcssa275, float %i.ls)
  %i.lu = call noundef float @llvm.fmuladd.f32(float %i.lf, float %i.lf, float %i.lt)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.lu)
  %i.lv = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.lw = fmul float %.lcssa275, %i.lv            ; 2 uses
  %13 = fmul float %i.lg, %i.lv                   ; 3 uses
  %i.lx = fmul float %i.lf, %i.lv                 ; 3 uses
  %i.ly = icmp slt i32 %i.jk, %i.jm
  br i1 %i.ly, label %.lr.ph291.preheader, label %._crit_edge292..preheader249_crit_edge

.lr.ph291.preheader:                              ; preds = %bb.bc
  %i.lz = sext i32 %i.jk to i64                   ; 4 uses
  %wide.trip.count380 = sext i32 %i.jm to i64     ; 3 uses
  %i.ma = sub nsw i64 %wide.trip.count380, %i.lz  ; 2 uses
  %i.mb = xor i64 %i.lz, -1
  %i.mc = add nsw i64 %i.mb, %wide.trip.count380  ; 2 uses
  %xtraiter589 = and i64 %i.ma, 7                 ; 2 uses
  %lcmp.mod590.not = icmp eq i64 %xtraiter589, 0
  br i1 %lcmp.mod590.not, label %.lr.ph291.prol.loopexit, label %.lr.ph291.prol

.lr.ph291.prol:                                   ; preds = %.lr.ph291.preheader, %.lr.ph291.prol
  %indvars.iv377.prol = phi i64 [ %indvars.iv.next378.prol, %.lr.ph291.prol ], [ %i.lz, %.lr.ph291.preheader ] ; 2 uses
  %.0151288.prol = phi float [ %i.mg, %.lr.ph291.prol ], [ 0.000000e+00, %.lr.ph291.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph291.prol ], [ 0, %.lr.ph291.preheader ]
  %i.md = getelementptr inbounds [36 x i8], ptr %i.ee, i64 %indvars.iv377.prol
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mf = load float, ptr %i.me, align 4, !tbaa !179
  %i.mg = fadd float %.0151288.prol, %i.mf        ; 3 uses
  %indvars.iv.next378.prol = add nsw i64 %indvars.iv377.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter589
  br i1 %prol.iter.cmp.not, label %.lr.ph291.prol.loopexit, label %.lr.ph291.prol, !llvm.loop !29

.lr.ph291.prol.loopexit:                          ; preds = %.lr.ph291.prol, %.lr.ph291.preheader
  %.lcssa566.unr = phi float [ poison, %.lr.ph291.preheader ], [ %i.mg, %.lr.ph291.prol ]
  %indvars.iv377.unr = phi i64 [ %i.lz, %.lr.ph291.preheader ], [ %indvars.iv.next378.prol, %.lr.ph291.prol ]
  %.0151288.unr = phi float [ 0.000000e+00, %.lr.ph291.preheader ], [ %i.mg, %.lr.ph291.prol ]
  %i.mh = icmp ult i64 %i.mc, 7
  br i1 %i.mh, label %.lr.ph297, label %.lr.ph291

.lr.ph291:                                        ; preds = %.lr.ph291.prol.loopexit, %.lr.ph291
  %indvars.iv377 = phi i64 [ %indvars.iv.next378.7, %.lr.ph291 ], [ %indvars.iv377.unr, %.lr.ph291.prol.loopexit ] ; 9 uses
  %.0151288 = phi float [ %i.nn, %.lr.ph291 ], [ %.0151288.unr, %.lr.ph291.prol.loopexit ]
  %i.mi = getelementptr inbounds [36 x i8], ptr %i.ee, i64 %indvars.iv377
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !179
  %i.ml = fadd float %.0151288, %i.mk
  %i.mm = getelementptr [36 x i8], ptr %i.ee, i64 %indvars.iv377
  %i.mn = getelementptr i8, ptr %i.mm, i64 40
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !179
  %i.mp = fadd float %i.ml, %i.mo
  %i.mq = getelementptr [36 x i8], ptr %i.ee, i64 %indvars.iv377
  %i.mr = getelementptr i8, ptr %i.mq, i64 76
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !179
  %i.mt = fadd float %i.mp, %i.ms
  %i.mu = getelementptr [36 x i8], ptr %i.ee, i64 %indvars.iv377
  %i.mv = getelementptr i8, ptr %i.mu, i64 112
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !179
  %i.mx = fadd float %i.mt, %i.mw
  %i.my = getelementptr [36 x i8], ptr %i.ee, i64 %indvars.iv377
  %i.mz = getelementptr i8, ptr %i.my, i64 148
  %i.na = load float, ptr %i.mz, align 4, !tbaa !179
  %i.nb = fadd float %i.mx, %i.na
  %i.nc = getelementptr [36 x i8], ptr %i.ee, i64 %indvars.iv377
  %i.nd = getelementptr i8, ptr %i.nc, i64 184
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !179
  %i.nf = fadd float %i.nb, %i.ne
  %i.ng = getelementptr [36 x i8], ptr %i.ee, i64 %indvars.iv377
  %i.nh = getelementptr i8, ptr %i.ng, i64 220
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !179
  %i.nj = fadd float %i.nf, %i.ni
  %i.nk = getelementptr [36 x i8], ptr %i.ee, i64 %indvars.iv377
  %i.nl = getelementptr i8, ptr %i.nk, i64 256
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !179
  %i.nn = fadd float %i.nj, %i.nm                 ; 2 uses
  %indvars.iv.next378.7 = add nsw i64 %indvars.iv377, 8 ; 2 uses
  %exitcond381.not.7 = icmp eq i64 %indvars.iv.next378.7, %wide.trip.count380
  br i1 %exitcond381.not.7, label %.lr.ph297, label %.lr.ph291, !llvm.loop !30

._crit_edge292..preheader249_crit_edge:           ; preds = %bb.bc
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !173
  %.pre433 = sext i32 %i.jk to i64
  br label %.preheader.1

.lr.ph297:                                        ; preds = %.lr.ph291, %.lr.ph291.prol.loopexit
  %.lcssa566 = phi float [ %.lcssa566.unr, %.lr.ph291.prol.loopexit ], [ %i.nn, %.lr.ph291 ]
  %i.no = sub nsw i32 %i.jm, %i.jk
  %i.np = sitofp i32 %i.no to float
  %i.nq = fdiv float %.lcssa566, %i.np            ; 5 uses
  %.pre518 = load ptr, ptr %i.f, align 8, !tbaa !173 ; 6 uses
  %i.nr = sext i32 %i.jk to i64                   ; 3 uses
  %wide.trip.count389 = sext i32 %i.jm to i64
  %xtraiter591 = and i64 %i.ma, 3                 ; 2 uses
  %lcmp.mod592.not = icmp eq i64 %xtraiter591, 0
  br i1 %lcmp.mod592.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph297, %.prol.preheader
  %.sroa.15.1.prol = phi float [ %i.oe, %.prol.preheader ], [ 0.000000e+00, %.lr.ph297 ]
  %indvars.iv386.prol = phi i64 [ %indvars.iv.next387.prol, %.prol.preheader ], [ %i.nr, %.lr.ph297 ] ; 3 uses
  %i.ns = phi <2 x float> [ %i.ob, %.prol.preheader ], [ zeroinitializer, %.lr.ph297 ]
  %prol.iter593 = phi i64 [ %prol.iter593.next, %.prol.preheader ], [ 0, %.lr.ph297 ]
  %i.nt = getelementptr inbounds [36 x i8], ptr %i.ee, i64 %indvars.iv386.prol
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !179
  %i.nw = fsub float %i.nv, %i.nq                 ; 2 uses
  %i.nx = getelementptr inbounds [12 x i8], ptr %.pre518, i64 %indvars.iv386.prol ; 2 uses
  %i.ny = load <2 x float>, ptr %i.nx, align 4, !tbaa !157
  %i.nz = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oa, <2 x float> %i.ny, <2 x float> %i.ns) ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.od = load float, ptr %i.oc, align 4, !tbaa !157
  %i.oe = call float @llvm.fmuladd.f32(float %i.nw, float %i.od, float %.sroa.15.1.prol) ; 3 uses
  %indvars.iv.next387.prol = add nsw i64 %indvars.iv386.prol, 1 ; 2 uses
  %prol.iter593.next = add i64 %prol.iter593, 1   ; 2 uses
  %prol.iter593.cmp.not = icmp eq i64 %prol.iter593.next, %xtraiter591
  br i1 %prol.iter593.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph297
  %.lcssa568.unr = phi <2 x float> [ poison, %.lr.ph297 ], [ %i.ob, %.prol.preheader ]
  %.lcssa567.unr = phi float [ poison, %.lr.ph297 ], [ %i.oe, %.prol.preheader ]
  %.sroa.15.1.unr = phi float [ 0.000000e+00, %.lr.ph297 ], [ %i.oe, %.prol.preheader ]
  %indvars.iv386.unr = phi i64 [ %i.nr, %.lr.ph297 ], [ %indvars.iv.next387.prol, %.prol.preheader ]
  %.unr594 = phi <2 x float> [ zeroinitializer, %.lr.ph297 ], [ %i.ob, %.prol.preheader ]
  %i.of = icmp ult i64 %i.mc, 3
  br i1 %i.of, label %.preheader249.loopexit, label %.lr.ph297.new

.preheader249.loopexit:                           ; preds = %.lr.ph297.new, %.prol.loopexit
  %.lcssa568 = phi <2 x float> [ %.lcssa568.unr, %.prol.loopexit ], [ %i.qb, %.lr.ph297.new ]
  %.lcssa567 = phi float [ %.lcssa567.unr, %.prol.loopexit ], [ %i.qe, %.lr.ph297.new ]
  %i.og = fmul <2 x float> %.lcssa568, splat (float f0x424020D1)
  %i.oh = fmul float %.lcssa567, f0x424020D1
  br label %.preheader.1

.lr.ph297.new:                                    ; preds = %.prol.loopexit, %.lr.ph297.new
  %.sroa.15.1 = phi float [ %i.qe, %.lr.ph297.new ], [ %.sroa.15.1.unr, %.prol.loopexit ]
  %indvars.iv386 = phi i64 [ %indvars.iv.next387.3, %.lr.ph297.new ], [ %indvars.iv386.unr, %.prol.loopexit ] ; 6 uses
  %i.oi = phi <2 x float> [ %i.qb, %.lr.ph297.new ], [ %.unr594, %.prol.loopexit ]
  %i.oj = getelementptr inbounds [36 x i8], ptr %i.ee, i64 %indvars.iv386
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !179
  %i.om = fsub float %i.ol, %i.nq                 ; 2 uses
  %i.on = getelementptr inbounds [12 x i8], ptr %.pre518, i64 %indvars.iv386 ; 2 uses
  %i.oo = load <2 x float>, ptr %i.on, align 4, !tbaa !157
  %i.op = insertelement <2 x float> poison, float %i.om, i64 0
  %i.oq = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> zeroinitializer
  %i.or = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oq, <2 x float> %i.oo, <2 x float> %i.oi)
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.ot = load float, ptr %i.os, align 4, !tbaa !157
  %i.ou = call float @llvm.fmuladd.f32(float %i.om, float %i.ot, float %.sroa.15.1)
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, 1 ; 2 uses
  %i.ov = getelementptr inbounds [36 x i8], ptr %i.ee, i64 %indvars.iv.next387
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !179
  %i.oy = fsub float %i.ox, %i.nq                 ; 2 uses
  %i.oz = getelementptr inbounds [12 x i8], ptr %.pre518, i64 %indvars.iv.next387 ; 2 uses
  %i.pa = load <2 x float>, ptr %i.oz, align 4, !tbaa !157
  %i.pb = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.pc = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pc, <2 x float> %i.pa, <2 x float> %i.or)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !157
  %i.pg = call float @llvm.fmuladd.f32(float %i.oy, float %i.pf, float %i.ou)
  %indvars.iv.next387.1 = add nsw i64 %indvars.iv386, 2 ; 2 uses
  %i.ph = getelementptr inbounds [36 x i8], ptr %i.ee, i64 %indvars.iv.next387.1
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !179
  %i.pk = fsub float %i.pj, %i.nq                 ; 2 uses
  %i.pl = getelementptr inbounds [12 x i8], ptr %.pre518, i64 %indvars.iv.next387.1 ; 2 uses
  %i.pm = load <2 x float>, ptr %i.pl, align 4, !tbaa !157
  %i.pn = insertelement <2 x float> poison, float %i.pk, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.pm, <2 x float> %i.pd)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !157
  %i.ps = call float @llvm.fmuladd.f32(float %i.pk, float %i.pr, float %i.pg)
  %indvars.iv.next387.2 = add nsw i64 %indvars.iv386, 3 ; 2 uses
  %i.pt = getelementptr inbounds [36 x i8], ptr %i.ee, i64 %indvars.iv.next387.2
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !179
  %i.pw = fsub float %i.pv, %i.nq                 ; 2 uses
  %i.px = getelementptr inbounds [12 x i8], ptr %.pre518, i64 %indvars.iv.next387.2 ; 2 uses
  %i.py = load <2 x float>, ptr %i.px, align 4, !tbaa !157
  %i.pz = insertelement <2 x float> poison, float %i.pw, i64 0
  %i.qa = shufflevector <2 x float> %i.pz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qa, <2 x float> %i.py, <2 x float> %i.pp) ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !157
  %i.qe = call float @llvm.fmuladd.f32(float %i.pw, float %i.qd, float %i.ps) ; 2 uses
  %indvars.iv.next387.3 = add nsw i64 %indvars.iv386, 4 ; 2 uses
  %exitcond390.not.3 = icmp eq i64 %indvars.iv.next387.3, %wide.trip.count389
  br i1 %exitcond390.not.3, label %.preheader249.loopexit, label %.lr.ph297.new, !llvm.loop !32

.preheader.1:                                     ; preds = %._crit_edge292..preheader249_crit_edge, %.preheader249.loopexit
  %.pre520 = phi ptr [ %.pre, %._crit_edge292..preheader249_crit_edge ], [ %.pre518, %.preheader249.loopexit ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre433, %._crit_edge292..preheader249_crit_edge ], [ %i.nr, %.preheader249.loopexit ] ; 2 uses
  %.sroa.15.0 = phi float [ 0.000000e+00, %._crit_edge292..preheader249_crit_edge ], [ %i.oh, %.preheader249.loopexit ] ; 4 uses
  %i.qf = phi <2 x float> [ zeroinitializer, %._crit_edge292..preheader249_crit_edge ], [ %i.og, %.preheader249.loopexit ] ; 4 uses
  %i.qg = getelementptr [12 x i8], ptr %.pre520, i64 %.pre-phi ; 2 uses
  %i.qh = getelementptr i8, ptr %i.qg, i64 20
  %i.qi = getelementptr inbounds [12 x i8], ptr %.pre520, i64 %.pre-phi ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !157
  %i.ql = fneg float %i.qk
  %i.qm = fpext float %i.ql to double
  %i.qn = load <4 x float>, ptr %i.qh, align 4, !tbaa !157
  %i.qo = fpext <4 x float> %i.qn to <4 x double> ; 3 uses
  %i.qp = extractelement <4 x double> %i.qo, i64 0
  %i.qq = call double @llvm.fmuladd.f64(double %i.qp, double 5.000000e-01, double %i.qm)
  %i.qr = fptrunc double %i.qq to float
  %i.qs = fpext float %i.qr to double
  %i.qt = extractelement <4 x double> %i.qo, i64 3
  %i.qu = call double @llvm.fmuladd.f64(double %i.qt, double 5.000000e-01, double %i.qs)
  %i.qv = fptrunc double %i.qu to float           ; 3 uses
  %i.qw = getelementptr i8, ptr %i.qg, i64 12
  %i.qx = load <2 x float>, ptr %i.qi, align 4, !tbaa !157
  %i.qy = fneg <2 x float> %i.qx
  %i.qz = load <2 x float>, ptr %i.qw, align 4, !tbaa !157
  %i.ra = fpext <2 x float> %i.qz to <2 x double>
  %i.rb = fpext <2 x float> %i.qy to <2 x double>
  %i.rc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ra, <2 x double> splat (double 5.000000e-01), <2 x double> %i.rb)
  %i.rd = fptrunc <2 x double> %i.rc to <2 x float>
  %i.re = fpext <2 x float> %i.rd to <2 x double>
  %i.rf = shufflevector <4 x double> %i.qo, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.rg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> splat (double 5.000000e-01), <2 x double> %i.re) ; 2 uses
  %i.rh = extractelement <2 x double> %i.rg, i64 1
  %i.ri = fptrunc double %i.rh to float           ; 3 uses
  %i.rj = extractelement <2 x double> %i.rg, i64 0
  %i.rk = fptrunc double %i.rj to float           ; 3 uses
  %i.rl = fmul float %i.ri, %i.ri
  %i.rm = call float @llvm.fmuladd.f32(float %i.rk, float %i.rk, float %i.rl)
  %i.rn = call noundef float @llvm.fmuladd.f32(float %i.qv, float %i.qv, float %i.rm)
  %sqrt.i196 = call float @llvm.sqrt.f32(float %i.rn)
  %i.ro = fdiv float 1.000000e+00, %sqrt.i196     ; 3 uses
  %i.rp = fmul float %i.ro, %i.rk
  %i.rq = fmul float %i.ro, %i.ri
  %i.rr = fmul float %i.ro, %i.qv
  %i.rs = load float, ptr @_ZZ8gmx_spoliPPcE6refdip, align 4, !tbaa !157
  %i.rt = fneg float %i.rs                        ; 3 uses
  %i.ru = extractelement <2 x float> %i.qf, i64 0 ; 3 uses
  %i.rv = call float @llvm.fmuladd.f32(float %i.rt, float %i.rp, float %i.ru)
  %14 = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.rw = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rx = insertelement <2 x float> %i.qf, float %i.rv, i64 1
  %i.ry = fmul <2 x float> %i.rw, %i.rx
  %i.rz = fpext <2 x float> %i.ry to <2 x double>
  %i.sa = fadd <2 x double> %i.je, %i.rz
  %i.sb = extractelement <2 x float> %i.qf, i64 1 ; 3 uses
  %i.sc = call float @llvm.fmuladd.f32(float %i.rt, float %i.rq, float %i.sb)
  %15 = insertelement <2 x float> poison, float %13, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sd = shufflevector <2 x float> %i.qf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.se = insertelement <2 x float> %i.sd, float %i.sc, i64 1
  %i.sf = fmul <2 x float> %16, %i.se
  %i.sg = fpext <2 x float> %i.sf to <2 x double>
  %i.sh = fadd <2 x double> %i.sa, %i.sg
  %i.si = call float @llvm.fmuladd.f32(float %i.rt, float %i.rr, float %.sroa.15.0)
  %17 = insertelement <2 x float> poison, float %i.lx, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sj = insertelement <2 x float> poison, float %.sroa.15.0, i64 0
  %i.sk = insertelement <2 x float> %i.sj, float %i.si, i64 1
  %i.sl = fmul <2 x float> %18, %i.sk
  %i.sm = fpext <2 x float> %i.sl to <2 x double>
  %i.sn = fadd <2 x double> %i.sh, %i.sm
  %i.so = fmul float %i.sb, %i.sb
  %i.sp = call float @llvm.fmuladd.f32(float %i.ru, float %i.ru, float %i.so)
  %i.sq = call noundef float @llvm.fmuladd.f32(float %.sroa.15.0, float %.sroa.15.0, float %i.sp) ; 2 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.sq)
  %i.sr = insertelement <2 x float> poison, float %i.sq, i64 0
  %i.ss = insertelement <2 x float> %i.sr, float %sqrt, i64 1
  %i.st = fpext <2 x float> %i.ss to <2 x double>
  %i.su = fadd <2 x double> %i.jd, %i.st
  %i.sv = add nsw i32 %.1159309, 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %.preheader.1
  %.promoted325336 = phi float [ %i.lx, %.preheader.1 ], [ %.promoted325337, %bb.bb ] ; 2 uses
  %.promoted331 = phi float [ %13, %.preheader.1 ], [ %.promoted332, %bb.bb ] ; 2 uses
  %i.sw = phi float [ %i.lx, %.preheader.1 ], [ %i.lf, %bb.bb ]
  %i.sx = phi float [ %13, %.preheader.1 ], [ %i.lg, %bb.bb ]
  %.lcssa275307 = phi float [ %i.lw, %.preheader.1 ], [ %.lcssa275, %bb.bb ] ; 2 uses
  %.2160 = phi i32 [ %i.sv, %.preheader.1 ], [ %.1159309, %bb.bb ] ; 2 uses
  %i.sy = phi <2 x double> [ %i.su, %.preheader.1 ], [ %i.jd, %bb.bb ] ; 2 uses
  %i.sz = phi <2 x double> [ %i.sn, %.preheader.1 ], [ %i.je, %bb.bb ] ; 2 uses
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %i.ta = load i32, ptr %i.ay, align 4, !tbaa !37
  %i.tb = sext i32 %i.ta to i64
  %i.tc = icmp slt i64 %indvars.iv.next407, %i.tb
  br i1 %i.tc, label %.lr.ph317, label %._crit_edge318, !llvm.loop !33

._crit_edge318:                                   ; preds = %bb.bd, %bb.ar
  %.promoted325335 = phi float [ %.promoted325339, %bb.ar ], [ %.promoted325336, %bb.bd ]
  %.promoted330 = phi float [ %.promoted334, %bb.ar ], [ %.promoted331, %bb.bd ]
  %.promoted305327 = phi float [ %.promoted305328, %bb.ar ], [ %.lcssa275307, %bb.bd ]
  %.1159.lcssa = phi i32 [ %.0158, %bb.ar ], [ %.2160, %bb.bd ] ; 4 uses
  %.1153.lcssa = phi float [ %.0152, %bb.ar ], [ %.2154.lcssa, %bb.bd ]
  %i.td = phi <2 x double> [ %i.es, %bb.ar ], [ %i.sy, %bb.bd ] ; 2 uses
  %i.te = phi <2 x double> [ %i.et, %bb.ar ], [ %i.sz, %bb.bd ] ; 2 uses
  %i.tf = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.tg = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.th = load ptr, ptr %i.f, align 8, !tbaa !173
  %i.ti = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.tf, ptr noundef %i.tg, ptr noundef nonnull %i.e, ptr noundef %i.th, ptr noundef nonnull %i.i)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.be:                                            ; preds = %._crit_edge318
  %i.tj = add nuw nsw i32 %.0161, 1               ; 3 uses
  br i1 %i.ti, label %bb.ai, label %bb.bf, !llvm.loop !34

bb.bf:                                            ; preds = %bb.be
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.ei)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.tk = load ptr, ptr %i.f, align 8, !tbaa !173
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.31, i32 noundef 368, ptr noundef %i.tk)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit:        ; preds = %bb.bg
  %i.tl = load ptr, ptr %i.c, align 8, !tbaa !182
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.tl)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit
  %i.tm = load ptr, ptr @stderr, align 8, !tbaa !184
  %i.tn = load float, ptr @_ZZ8gmx_spoliPPcE4rmax, align 4, !tbaa !157
  %i.to = fpext float %i.tn to double
  %i.tp = sitofp i32 %.1159.lcssa to float
  %i.tq = uitofp nneg i32 %i.tj to float
  %i.tr = fdiv float %i.tp, %i.tq
  %i.ts = fpext float %i.tr to double
  %i.tt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tm, ptr noundef nonnull @.str.38, double noundef %i.to, double noundef %i.ts) #17 ; 0 uses
  %i.tu = icmp sgt i32 %.1159.lcssa, 0
  br i1 %i.tu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.tv = uitofp nneg i32 %.1159.lcssa to double
  %i.tw = insertelement <2 x double> poison, double %i.tv, i64 0
  %i.tx = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ty = fdiv <2 x double> %i.td, %i.tx          ; 2 uses
  %i.tz = fdiv <2 x double> %i.te, %i.tx          ; 2 uses
  %i.ua = load ptr, ptr @stderr, align 8, !tbaa !184
  %i.ub = extractelement <2 x double> %i.ty, i64 1 ; 3 uses
  %i.uc = fmul double %i.ub, %i.ub
  %i.ud = extractelement <2 x double> %i.ty, i64 0
  %i.ue = fsub double %i.ud, %i.uc
  %i.uf = call double @sqrt(double noundef %i.ue) #14
  %i.ug = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ua, ptr noundef nonnull @.str.39, double noundef %i.ub, double noundef %i.uf) #17 ; 0 uses
  %i.uh = load ptr, ptr @stderr, align 8, !tbaa !184
  %i.ui = extractelement <2 x double> %i.tz, i64 0
  %i.uj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uh, ptr noundef nonnull @.str.40, double noundef %i.ui) #17 ; 0 uses
  %i.uk = load ptr, ptr @stderr, align 8, !tbaa !184
  %i.ul = extractelement <2 x double> %i.tz, i64 1
  %i.um = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uk, ptr noundef nonnull @.str.41, double noundef %i.ul) #17 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  %i.un = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.42, i32 noundef 4, ptr noundef nonnull %6)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.un, ptr %i.n, align 8, !tbaa !12
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext 2)
          to label %._crit_edge.i.i unwind label %bb.bo

._crit_edge.i.i:                                  ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.uo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.uo, ptr %11, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.uo, ptr noundef nonnull align 1 dereferenceable(6) @.str.44, i64 6, i1 false)
  %i.up = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 6, ptr %i.up, align 8, !tbaa !20
  %i.uq = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i8 0, ptr %i.uq, align 2, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ur = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ur, ptr %12, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ur, ptr noundef nonnull align 1 dereferenceable(9) @.str.45, i64 9, i1 false)
  %i.us = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 9, ptr %i.us, align 8, !tbaa !20
  %i.ut = getelementptr inbounds nuw i8, ptr %12, i64 25
  store i8 0, ptr %i.ut, align 1, !tbaa !18
  %i.uu = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.uv = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.uu)
          to label %bb.bl unwind label %bb.bp     ; 2 uses

bb.bl:                                            ; preds = %._crit_edge.i.i
  %i.uw = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.ur
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  %i.uy = load i64, ptr %i.ur, align 8, !tbaa !18
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.va = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.uo
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.vc = load i64, ptr %i.uo, align 8, !tbaa !18
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.ve = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i206, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i207, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ve, ptr noundef nonnull %i.vf) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i207

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i207: ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %i.vg = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.vi = icmp eq ptr %i.vg, %i.vh
  br i1 %i.vi, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i207
  %i.vj = load i64, ptr %i.vh, align 8, !tbaa !18
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vk) #15
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit210

_ZNSt10filesystem7__cxx114pathD2Ev.exit210:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %.not340 = icmp slt i32 %i.dr, -2
  br i1 %.not340, label %._crit_edge344, label %.lr.ph343

.lr.ph343:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit210
  %i.vl = uitofp nneg i32 %i.tj to double
  %i.vm = add i32 %i.dr, 3
  %wide.trip.count412 = zext i32 %i.vm to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph343, %bb.bn
  %indvars.iv409 = phi i64 [ 0, %.lr.ph343 ], [ %indvars.iv.next410, %bb.bn ] ; 3 uses
  %.0126342 = phi double [ 0.000000e+00, %.lr.ph343 ], [ %i.vq, %bb.bn ]
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv409
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !37
  %i.vp = sitofp i32 %i.vo to double
  %i.vq = fadd double %.0126342, %i.vp            ; 2 uses
  %i.vr = trunc nuw nsw i64 %indvars.iv409 to i32
  %i.vs = uitofp nneg i32 %i.vr to float
  %i.vt = load float, ptr @_ZZ8gmx_spoliPPcE2bw, align 4, !tbaa !157
  %i.vu = fmul float %i.vt, %i.vs
  %i.vv = fpext float %i.vu to double
  %i.vw = fdiv double %i.vq, %i.vl
  %i.vx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uv, ptr noundef nonnull @.str.46, double noundef %i.vv, double noundef %i.vw) #14 ; 0 uses
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next410, %wide.trip.count412
  br i1 %exitcond413.not, label %._crit_edge344, label %bb.bn, !llvm.loop !35

bb.bo:                                            ; preds = %bb.bk, %bb.bj
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge.i.i
  %i.vz = landingpad { ptr, i32 }
          cleanup
  %i.wa = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.ur
  br i1 %i.wb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.bp
  %i.wc = load i64, ptr %i.ur, align 8, !tbaa !18
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.wd) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

end_hunk_0
