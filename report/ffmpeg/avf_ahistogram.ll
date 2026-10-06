Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_ahistogram?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@activate:bb.a
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !87
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qh, i64 72
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !39 ; 2 uses
  %i.rb = mul nsw i32 %i.ra, %i.qg
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %i.qy, i64 %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !87
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qh, i64 68
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !39 ; 2 uses
  %i.ri = mul nsw i32 %i.rh, %i.qg
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds i8, ptr %i.rf, i64 %i.rj
  %i.rl = sext i32 %i.qk to i64
  %i.rm = sext i32 %i.rh to i64
  %i.rn = sext i32 %i.ra to i64
  %i.ro = sext i32 %i.qt to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph473.i
  %.0371470.i = phi ptr [ %i.qw, %.lr.ph473.i ], [ %i.rx, %bb.ai ] ; 2 uses
  %.0372469.i = phi ptr [ %i.rd, %.lr.ph473.i ], [ %i.rw, %bb.ai ] ; 2 uses
  %.0373468.i = phi ptr [ %i.rk, %.lr.ph473.i ], [ %i.rv, %bb.ai ] ; 2 uses
  %.0374467.i = phi ptr [ %i.qn, %.lr.ph473.i ], [ %i.ru, %bb.ai ] ; 2 uses
  %.2386466.i = phi i32 [ %i.qg, %.lr.ph473.i ], [ %i.ry, %bb.ai ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.0374467.i, i64 %indvars.iv533.i ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !99
  %.not412.i = icmp eq i8 %i.qp, %i.rq
  br i1 %.not412.i, label %bb.ai, label %._crit_edge474.i

bb.ai:                                            ; preds = %bb.ah
  store i8 %.0380.i, ptr %i.rp, align 1, !tbaa !99
  %i.rr = getelementptr inbounds nuw i8, ptr %.0373468.i, i64 %indvars.iv533.i
  store i8 %i.mm, ptr %i.rr, align 1, !tbaa !99
  %i.rs = getelementptr inbounds nuw i8, ptr %.0372469.i, i64 %indvars.iv533.i
  store i8 %i.mn, ptr %i.rs, align 1, !tbaa !99
  %i.rt = getelementptr inbounds nuw i8, ptr %.0371470.i, i64 %indvars.iv533.i
  store i8 -1, ptr %i.rt, align 1, !tbaa !99
  %i.ru = getelementptr inbounds i8, ptr %.0374467.i, i64 %i.rl
  %i.rv = getelementptr inbounds i8, ptr %.0373468.i, i64 %i.rm
  %i.rw = getelementptr inbounds i8, ptr %.0372469.i, i64 %i.rn
  %i.rx = getelementptr inbounds i8, ptr %.0371470.i, i64 %i.ro
  %i.ry = add nsw i32 %.2386466.i, 1              ; 2 uses
  %i.rz = icmp slt i32 %i.ry, %i.ac
  br i1 %i.rz, label %bb.ah, label %._crit_edge474.i, !llvm.loop !66

._crit_edge474.i:                                 ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.sa = load <2 x float>, ptr %i.qe, align 4, !tbaa !88
  %i.sb = fpext <2 x float> %i.sa to <2 x double>
  %i.sc = insertelement <2 x double> poison, double %.0377.i, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.se = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sd, <2 x double> %i.md, <2 x double> %i.sb)
  %i.sf = fptrunc <2 x double> %i.se to <2 x float>
  store <2 x float> %i.sf, ptr %i.qe, align 4, !tbaa !88
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 2 uses
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !88
  %i.si = fpext nsz float %i.sh to double
  %i.sj = call nsz double @llvm.fmuladd.f64(double %.0377.i, double %i.ml, double %i.si)
  %i.sk = fptrunc nsz double %i.sj to float
  store float %i.sk, ptr %i.sg, align 4, !tbaa !88
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge474.i, %bb.af, %._crit_edge481.i, %bb.ac
  %indvars.iv.next534.i = add nuw nsw i64 %indvars.iv533.i, 1 ; 2 uses
  %exitcond537.not.i = icmp eq i64 %indvars.iv.next534.i, %wide.trip.count536.i
  br i1 %exitcond537.not.i, label %._crit_edge485.loopexit.i, label %bb.v, !llvm.loop !67

._crit_edge485.loopexit.i:                        ; preds = %bb.aj
  %.pre.i = load i32, ptr %i.jk, align 4, !tbaa !47
  br label %._crit_edge485.i

._crit_edge485.i:                                 ; preds = %._crit_edge485.loopexit.i, %bb.u
  %i.sl = phi i32 [ %.pre.i, %._crit_edge485.loopexit.i ], [ %i.kw, %bb.u ] ; 2 uses
  %indvars.iv.next539.i = add nuw nsw i64 %indvars.iv538.i, 1 ; 2 uses
  %i.sm = sext i32 %i.sl to i64
  %i.sn = icmp slt i64 %indvars.iv.next539.i, %i.sm
  br i1 %i.sn, label %bb.s, label %._crit_edge488.i, !llvm.loop !68

._crit_edge488.i:                                 ; preds = %._crit_edge485.i, %.preheader428.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 6 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !38
  %i.sq = icmp sgt i32 %i.sp, %i.ac
  br i1 %i.sq, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %._crit_edge488.i
  %i.sr = load i32, ptr %i.ci, align 4, !tbaa !40
  %i.ss = icmp eq i32 %i.sr, 1
  %or.cond497.i = select i1 %i.ss, i1 %i.cl, i1 false
  br i1 %or.cond497.i, label %.lr.ph490.i, label %.loopexit.i

.lr.ph490.i:                                      ; preds = %bb.ak
  %i.st = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.su = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 4 uses
  %wide.trip.count544.i = zext nneg i32 %i.ae to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph490.i
  %indvars.iv541.i = phi i64 [ 0, %.lr.ph490.i ], [ %indvars.iv.next542.i, %bb.al ] ; 3 uses
  %i.sv = load ptr, ptr %i.st, align 8, !tbaa !41
  %.idx579.i = mul nuw nsw i64 %indvars.iv541.i, 12
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.idx579.i ; 3 uses
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !88
  %i.sy = fptoui float %i.sx to i8
  %i.sz = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !87
  %i.tb = load i32, ptr %i.su, align 4, !tbaa !48
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 64
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !39
  %i.te = mul nsw i32 %i.td, %i.tb
  %i.tf = trunc nuw nsw i64 %indvars.iv541.i to i32 ; 4 uses
  %i.tg = add nsw i32 %i.te, %i.tf
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds i8, ptr %i.ta, i64 %i.th
  store i8 %i.sy, ptr %i.ti, align 1, !tbaa !99
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !88
  %i.tl = fptoui float %i.tk to i8
  %i.tm = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !87
  %i.tp = load i32, ptr %i.su, align 4, !tbaa !48
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 68
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !39
  %i.ts = mul nsw i32 %i.tr, %i.tp
  %i.tt = add nsw i32 %i.ts, %i.tf
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds i8, ptr %i.to, i64 %i.tu
  store i8 %i.tl, ptr %i.tv, align 1, !tbaa !99
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !88
  %i.ty = fptoui float %i.tx to i8
  %i.tz = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !87
  %i.uc = load i32, ptr %i.su, align 4, !tbaa !48
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 72
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !39
  %i.uf = mul nsw i32 %i.ue, %i.uc
  %i.ug = add nsw i32 %i.uf, %i.tf
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds i8, ptr %i.ub, i64 %i.uh
  store i8 %i.ty, ptr %i.ui, align 1, !tbaa !99
  %i.uj = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !87
  %i.um = load i32, ptr %i.su, align 4, !tbaa !48
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 76
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !39
  %i.up = mul nsw i32 %i.uo, %i.um
  %i.uq = add nsw i32 %i.up, %i.tf
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %i.ul, i64 %i.ur
  store i8 -1, ptr %i.us, align 1, !tbaa !99
  %indvars.iv.next542.i = add nuw nsw i64 %indvars.iv541.i, 1 ; 2 uses
  %exitcond545.not.i = icmp eq i64 %indvars.iv.next542.i, %wide.trip.count544.i
  br i1 %exitcond545.not.i, label %.loopexit.i, label %bb.al, !llvm.loop !69

.loopexit.i:                                      ; preds = %bb.al, %bb.ak
  %i.ut = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !100
  %i.uv = icmp eq i32 %i.uu, 1
  br i1 %i.uv, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %.loopexit.i
  %i.uw = add nsw i32 %i.ac, 1                    ; 8 uses
  %i.ux = sext i32 %i.ae to i64                   ; 12 uses
  %i.uy = load i32, ptr %i.so, align 4, !tbaa !38 ; 6 uses
  %i.uz = icmp sgt i32 %i.uy, %i.uw
  br i1 %i.uz, label %.lr.ph494.i.preheader, label %.split.us.thread.i

.lr.ph494.i.preheader:                            ; preds = %.preheader.i
  %i.va = add i32 %i.uy, -2
  %i.vb = sub i32 %i.ac, %i.uy
  %i.vc = and i32 %i.vb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.vc, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph494.i.prol, label %.lr.ph494.i.prol.loopexit

.lr.ph494.i.prol:                                 ; preds = %.lr.ph494.i.preheader
  %.3387.i.prol = add nsw i32 %i.uy, -1           ; 2 uses
  %i.vd = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !87 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 64
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !39 ; 2 uses
  %i.vh = mul nsw i32 %i.vg, %.3387.i.prol
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds i8, ptr %i.ve, i64 %i.vi
  %i.vk = add nsw i32 %i.uy, -2
  %i.vl = mul nsw i32 %i.vg, %i.vk
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds i8, ptr %i.ve, i64 %i.vm
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vj, ptr align 1 %i.vn, i64 %i.ux, i1 false)
  br label %.lr.ph494.i.prol.loopexit

.lr.ph494.i.prol.loopexit:                        ; preds = %.lr.ph494.i.prol, %.lr.ph494.i.preheader
  %.3387.in492.i.unr = phi i32 [ %i.uy, %.lr.ph494.i.preheader ], [ %.3387.i.prol, %.lr.ph494.i.prol ]
  %i.vo = icmp eq i32 %i.va, %i.ac
  br i1 %i.vo, label %._crit_edge495.i, label %.lr.ph494.i

.split.us.thread.i:                               ; preds = %.preheader.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 3 uses
  %1 = load i32, ptr %i.vp, align 4, !tbaa !48
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr %i.vp, align 4, !tbaa !48
  br label %bb.an

.thread.i:                                        ; preds = %.loopexit.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 3 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !48
  %i.vs = add nsw i32 %i.vr, 1                    ; 2 uses
  store i32 %i.vs, ptr %i.vq, align 4, !tbaa !48
  br label %bb.am

.lr.ph494.i:                                      ; preds = %.lr.ph494.i.prol.loopexit, %.lr.ph494.i
  %.3387.in492.i = phi i32 [ %.3387.i.1, %.lr.ph494.i ], [ %.3387.in492.i.unr, %.lr.ph494.i.prol.loopexit ] ; 4 uses
  %.3387.i = add nsw i32 %.3387.in492.i, -1
  %i.vt = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !87 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 64
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !39 ; 2 uses
  %i.vx = mul nsw i32 %i.vw, %.3387.i
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds i8, ptr %i.vu, i64 %i.vy
  %i.wa = add nsw i32 %.3387.in492.i, -2
  %i.wb = mul nsw i32 %i.vw, %i.wa
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.vu, i64 %i.wc
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vz, ptr align 1 %i.wd, i64 %i.ux, i1 false)
  %.3387.i.1 = add nsw i32 %.3387.in492.i, -2     ; 3 uses
  %i.we = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !87 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 64
  %i.wh = load i32, ptr %i.wg, align 8, !tbaa !39 ; 2 uses
  %i.wi = mul nsw i32 %i.wh, %.3387.i.1
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds i8, ptr %i.wf, i64 %i.wj
  %i.wl = add nsw i32 %.3387.in492.i, -3
  %i.wm = mul nsw i32 %i.wh, %i.wl
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds i8, ptr %i.wf, i64 %i.wn
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.wk, ptr align 1 %i.wo, i64 %i.ux, i1 false)
  %.not411.not.i.1 = icmp sgt i32 %.3387.i.1, %i.uw
  br i1 %.not411.not.i.1, label %.lr.ph494.i, label %._crit_edge495.i, !llvm.loop !70

._crit_edge495.i:                                 ; preds = %.lr.ph494.i, %.lr.ph494.i.prol.loopexit
  %.pre550.i = load i32, ptr %i.so, align 4, !tbaa !38 ; 7 uses
  %.not411.not491.1.i = icmp sgt i32 %.pre550.i, %i.uw
  br i1 %.not411.not491.1.i, label %.lr.ph494.1.i.preheader, label %._crit_edge495.1.i

.lr.ph494.1.i.preheader:                          ; preds = %._crit_edge495.i
  %i.wp = add i32 %.pre550.i, -2
  %i.wq = sub i32 %i.ac, %.pre550.i
  %i.wr = and i32 %i.wq, 1
  %lcmp.mod77.not.not = icmp eq i32 %i.wr, 0
  br i1 %lcmp.mod77.not.not, label %.lr.ph494.1.i.prol, label %.lr.ph494.1.i.prol.loopexit

.lr.ph494.1.i.prol:                               ; preds = %.lr.ph494.1.i.preheader
  %.3387.1.i.prol = add nsw i32 %.pre550.i, -1    ; 2 uses
  %i.ws = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !87 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ws, i64 68
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !39 ; 2 uses
  %i.wx = mul nsw i32 %i.ww, %.3387.1.i.prol
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds i8, ptr %i.wu, i64 %i.wy
  %i.xa = add nsw i32 %.pre550.i, -2
  %i.xb = mul nsw i32 %i.ww, %i.xa
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds i8, ptr %i.wu, i64 %i.xc
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.wz, ptr align 1 %i.xd, i64 %i.ux, i1 false)
  br label %.lr.ph494.1.i.prol.loopexit

.lr.ph494.1.i.prol.loopexit:                      ; preds = %.lr.ph494.1.i.prol, %.lr.ph494.1.i.preheader
  %.3387.in492.1.i.unr = phi i32 [ %.pre550.i, %.lr.ph494.1.i.preheader ], [ %.3387.1.i.prol, %.lr.ph494.1.i.prol ]
  %i.xe = icmp eq i32 %i.wp, %i.ac
  br i1 %i.xe, label %._crit_edge495.loopexit.1.i, label %.lr.ph494.1.i

.lr.ph494.1.i:                                    ; preds = %.lr.ph494.1.i.prol.loopexit, %.lr.ph494.1.i
  %.3387.in492.1.i = phi i32 [ %.3387.1.i.1, %.lr.ph494.1.i ], [ %.3387.in492.1.i.unr, %.lr.ph494.1.i.prol.loopexit ] ; 4 uses
  %.3387.1.i = add nsw i32 %.3387.in492.1.i, -1
  %i.xf = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !87 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 68
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !39 ; 2 uses
  %i.xk = mul nsw i32 %i.xj, %.3387.1.i
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds i8, ptr %i.xh, i64 %i.xl
  %i.xn = add nsw i32 %.3387.in492.1.i, -2
  %i.xo = mul nsw i32 %i.xj, %i.xn
  %i.xp = sext i32 %i.xo to i64
  %i.xq = getelementptr inbounds i8, ptr %i.xh, i64 %i.xp
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.xm, ptr align 1 %i.xq, i64 %i.ux, i1 false)
  %.3387.1.i.1 = add nsw i32 %.3387.in492.1.i, -2 ; 3 uses
  %i.xr = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !87 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 68
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !39 ; 2 uses
  %i.xw = mul nsw i32 %i.xv, %.3387.1.i.1
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds i8, ptr %i.xt, i64 %i.xx
  %i.xz = add nsw i32 %.3387.in492.1.i, -3
  %i.ya = mul nsw i32 %i.xv, %i.xz
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds i8, ptr %i.xt, i64 %i.yb
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.xy, ptr align 1 %i.yc, i64 %i.ux, i1 false)
  %.not411.not.1.i.1 = icmp sgt i32 %.3387.1.i.1, %i.uw
  br i1 %.not411.not.1.i.1, label %.lr.ph494.1.i, label %._crit_edge495.loopexit.1.i, !llvm.loop !70

._crit_edge495.loopexit.1.i:                      ; preds = %.lr.ph494.1.i, %.lr.ph494.1.i.prol.loopexit
  %.pre551.i = load i32, ptr %i.so, align 4, !tbaa !38
  br label %._crit_edge495.1.i

._crit_edge495.1.i:                               ; preds = %._crit_edge495.loopexit.1.i, %._crit_edge495.i
  %i.yd = phi i32 [ %.pre551.i, %._crit_edge495.loopexit.1.i ], [ %.pre550.i, %._crit_edge495.i ] ; 7 uses
  %.not411.not491.2.i = icmp sgt i32 %i.yd, %i.uw
  br i1 %.not411.not491.2.i, label %.lr.ph494.2.i.preheader, label %._crit_edge495.2.i

.lr.ph494.2.i.preheader:                          ; preds = %._crit_edge495.1.i
  %i.ye = add i32 %i.yd, -2
  %i.yf = sub i32 %i.ac, %i.yd
  %i.yg = and i32 %i.yf, 1
  %lcmp.mod79.not.not = icmp eq i32 %i.yg, 0
  br i1 %lcmp.mod79.not.not, label %.lr.ph494.2.i.prol, label %.lr.ph494.2.i.prol.loopexit

.lr.ph494.2.i.prol:                               ; preds = %.lr.ph494.2.i.preheader
  %.3387.2.i.prol = add nsw i32 %i.yd, -1         ; 2 uses
  %i.yh = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !87 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 72
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !39 ; 2 uses
  %i.ym = mul nsw i32 %i.yl, %.3387.2.i.prol
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr inbounds i8, ptr %i.yj, i64 %i.yn
  %i.yp = add nsw i32 %i.yd, -2
  %i.yq = mul nsw i32 %i.yl, %i.yp
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr inbounds i8, ptr %i.yj, i64 %i.yr
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.yo, ptr align 1 %i.ys, i64 %i.ux, i1 false)
  br label %.lr.ph494.2.i.prol.loopexit

.lr.ph494.2.i.prol.loopexit:                      ; preds = %.lr.ph494.2.i.prol, %.lr.ph494.2.i.preheader
  %.3387.in492.2.i.unr = phi i32 [ %i.yd, %.lr.ph494.2.i.preheader ], [ %.3387.2.i.prol, %.lr.ph494.2.i.prol ]
  %i.yt = icmp eq i32 %i.ye, %i.ac
  br i1 %i.yt, label %._crit_edge495.loopexit.2.i, label %.lr.ph494.2.i

.lr.ph494.2.i:                                    ; preds = %.lr.ph494.2.i.prol.loopexit, %.lr.ph494.2.i
  %.3387.in492.2.i = phi i32 [ %.3387.2.i.1, %.lr.ph494.2.i ], [ %.3387.in492.2.i.unr, %.lr.ph494.2.i.prol.loopexit ] ; 4 uses
  %.3387.2.i = add nsw i32 %.3387.in492.2.i, -1
  %i.yu = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !87 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 72
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !39 ; 2 uses
  %i.yz = mul nsw i32 %i.yy, %.3387.2.i
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds i8, ptr %i.yw, i64 %i.za
  %i.zc = add nsw i32 %.3387.in492.2.i, -2
  %i.zd = mul nsw i32 %i.yy, %i.zc
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds i8, ptr %i.yw, i64 %i.ze
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.zb, ptr align 1 %i.zf, i64 %i.ux, i1 false)
  %.3387.2.i.1 = add nsw i32 %.3387.in492.2.i, -2 ; 3 uses
  %i.zg = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !87 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 72
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !39 ; 2 uses
  %i.zl = mul nsw i32 %i.zk, %.3387.2.i.1
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds i8, ptr %i.zi, i64 %i.zm
  %i.zo = add nsw i32 %.3387.in492.2.i, -3
  %i.zp = mul nsw i32 %i.zk, %i.zo
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds i8, ptr %i.zi, i64 %i.zq
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.zn, ptr align 1 %i.zr, i64 %i.ux, i1 false)
  %.not411.not.2.i.1 = icmp sgt i32 %.3387.2.i.1, %i.uw
  br i1 %.not411.not.2.i.1, label %.lr.ph494.2.i, label %._crit_edge495.loopexit.2.i, !llvm.loop !70

._crit_edge495.loopexit.2.i:                      ; preds = %.lr.ph494.2.i, %.lr.ph494.2.i.prol.loopexit
  %.pre552.i = load i32, ptr %i.so, align 4, !tbaa !38
  br label %._crit_edge495.2.i

._crit_edge495.2.i:                               ; preds = %._crit_edge495.loopexit.2.i, %._crit_edge495.1.i
  %i.zs = phi i32 [ %.pre552.i, %._crit_edge495.loopexit.2.i ], [ %i.yd, %._crit_edge495.1.i ] ; 6 uses
  %.not411.not491.3.i = icmp sgt i32 %i.zs, %i.uw
  br i1 %.not411.not491.3.i, label %.lr.ph494.3.i.preheader, label %.split.us.i

.lr.ph494.3.i.preheader:                          ; preds = %._crit_edge495.2.i
  %i.zt = add i32 %i.zs, -2
  %i.zu = sub i32 %i.ac, %i.zs
  %i.zv = and i32 %i.zu, 1
  %lcmp.mod81.not.not = icmp eq i32 %i.zv, 0
  br i1 %lcmp.mod81.not.not, label %.lr.ph494.3.i.prol, label %.lr.ph494.3.i.prol.loopexit

.lr.ph494.3.i.prol:                               ; preds = %.lr.ph494.3.i.preheader
  %.3387.3.i.prol = add nsw i32 %i.zs, -1         ; 2 uses
  %i.zw = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 24
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !87 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 76
end_hunk_0
