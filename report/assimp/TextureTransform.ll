inline.NumInlined: 493
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
  %.sroa.08.0.i = load ptr, ptr %.sroa.08.014.i, align 8 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.08.0.i, %i.rd
  br i1 %.not11.i, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit, label %.lr.ph.ithread-pre-split, !llvm.loop !16

_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit: ; preds = %.noexc329, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.dd

.loopexit571:                                     ; preds = %bb.cl
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp:                               ; preds = %bb.cm, %bb.co, %bb.cp, %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cm:                                            ; preds = %bb.ch
  %i.ro = load i32, ptr %i.d, align 4
  %i.rp = add i32 %i.ro, 1
  store i32 %i.rp, ptr %i.d, align 4
  %i.rq = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.cn unwind label %.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.rq, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 16
  %i.rs = load float, ptr %i.rr, align 8
  %i.rt = fpext float %i.rs to double
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 20
  %i.rv = load float, ptr %i.ru, align 4
  %i.rw = fpext float %i.rv to double
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 24
  %i.ry = load float, ptr %i.rx, align 8
  %i.rz = fpext float %i.ry to double
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 28
  %i.sb = load float, ptr %i.sa, align 4
  %i.sc = fpext float %i.sb to double
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 32
  %i.se = load float, ptr %i.sd, align 8
  %i.sf = fmul float %i.se, f0x42652EE1
  %i.sg = fpext float %i.sf to double
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 40
  %i.si = load i32, ptr %i.sh, align 8            ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.si, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i = icmp eq i32 %i.si, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.25, ptr %switch.select.i
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 44
  %i.sk = load i32, ptr %i.sj, align 4            ; 2 uses
  %switch.selectcmp.i330 = icmp eq i32 %i.sk, 2
  %switch.select.i331 = select i1 %switch.selectcmp.i330, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i332 = icmp eq i32 %i.sk, 0
  %switch.select4.i333 = select i1 %switch.selectcmp3.i332, ptr @.str.25, ptr %switch.select.i331
  %i.sl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.19, i32 noundef %i.rb, i32 noundef %.0215667, double noundef %i.rt, double noundef %i.rw, double noundef %i.rz, double noundef %i.sc, double noundef %i.sg, ptr noundef nonnull %switch.select4.i, ptr noundef nonnull %switch.select4.i333) #17 ; 0 uses
  %i.sm = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cp unwind label %.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN6Assimp6Logger4infoIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.sm, ptr noundef nonnull align 1 dereferenceable(1024) %i.c)
          to label %bb.cq unwind label %.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.rc ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8            ; 3 uses
  %.not240 = icmp eq ptr %i.so, null
  br i1 %.not240, label %bb.cs, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.cq
  %.sroa.0469.2818 = load ptr, ptr %.sroa.0481.3669, align 8 ; 2 uses
  %.0214819 = add nuw nsw i32 %.0215667, 1        ; 2 uses
  %i.sp = icmp ult i32 %.0214819, %.0218
  br i1 %i.sp, label %.lr.ph822, label %.loopexit570

.preheader:                                       ; preds = %.lr.ph822
  %.sroa.0469.2 = load ptr, ptr %.sroa.0469.2820, align 8 ; 2 uses
  %.0214 = add nuw nsw i32 %.0214821, 1           ; 2 uses
  %i.sq = icmp ult i32 %.0214, %.0218
  br i1 %i.sq, label %.lr.ph822, label %.loopexit570, !llvm.loop !37

.lr.ph822:                                        ; preds = %.preheader.preheader, %.preheader
  %.0214821 = phi i32 [ %.0214, %.preheader ], [ %.0214819, %.preheader.preheader ]
  %.sroa.0469.2820 = phi ptr [ %.sroa.0469.2, %.preheader ], [ %.sroa.0469.2818, %.preheader.preheader ] ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.0469.2820, i64 36
  %i.ss = load i32, ptr %i.sr, align 4
  %i.st = icmp eq i32 %i.ss, %.0215667
  br i1 %i.st, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %.preheader, !llvm.loop !37

.loopexit570:                                     ; preds = %.preheader, %.preheader.preheader
  %.sroa.0469.2.lcssa = phi ptr [ %.sroa.0469.2818, %.preheader.preheader ], [ %.sroa.0469.2, %.preheader ]
  %.pre726 = load ptr, ptr %i.jp, align 8
  %i.su = icmp eq ptr %.sroa.0469.2.lcssa, %.pre726
  br i1 %i.su, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %bb.cu

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit: ; preds = %.lr.ph822, %.loopexit570
  call void @_ZdaPv(ptr noundef nonnull %i.so) #18
  %i.sv = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.sw = zext i32 %i.sv to i64
  %i.sx = mul nuw nsw i64 %i.sw, 12               ; 2 uses
  %i.sy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sx) #19
          to label %bb.cr unwind label %.loopexit.split-lp ; 2 uses

bb.cr:                                            ; preds = %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit
  %i.sz = icmp eq i32 %i.sv, 0
  br i1 %i.sz, label %.sink.split793, label %.sink.split793.sink.split

bb.cs:                                            ; preds = %bb.cq
  %i.ta = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.tb = zext i32 %i.ta to i64
  %i.tc = mul nuw nsw i64 %i.tb, 12               ; 2 uses
  %i.td = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tc) #19
          to label %bb.ct unwind label %.loopexit.split-lp ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.te = icmp eq i32 %i.ta, 0
  br i1 %i.te, label %.sink.split793, label %.sink.split793.sink.split

.sink.split793.sink.split:                        ; preds = %bb.ct, %bb.cr
  %.sink801 = phi i64 [ %i.sx, %bb.cr ], [ %i.tc, %bb.ct ]
  %.sink795 = phi ptr [ %i.sy, %bb.cr ], [ %i.td, %bb.ct ] ; 2 uses
  %i.tf = add nsw i64 %.sink801, -12              ; 2 uses
  %i.tg = urem i64 %i.tf, 12
  %i.th = sub nuw nsw i64 %i.tf, %i.tg
  %i.ti = add nsw i64 %i.th, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sink795, i8 0, i64 %i.ti, i1 false)
  br label %.sink.split793

.sink.split793:                                   ; preds = %.sink.split793.sink.split, %bb.ct, %bb.cr
  %.sink = phi ptr [ %i.sy, %bb.cr ], [ %i.td, %bb.ct ], [ %.sink795, %.sink.split793.sink.split ] ; 2 uses
  store ptr %.sink, ptr %i.sn, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %.sink.split793, %.loopexit570
  %i.tj = phi ptr [ %i.so, %.loopexit570 ], [ %.sink, %.sink.split793 ] ; 9 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 16 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 36
  %i.tm = load i32, ptr %i.tl, align 4
  %i.tn = zext i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.tn
  %i.tp = load ptr, ptr %i.to, align 8            ; 2 uses
  %.not241 = icmp eq ptr %i.tj, %i.tp
  br i1 %.not241, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tq = load i32, ptr %i.ra, align 4
  %i.tr = zext i32 %i.tq to i64
  %i.ts = mul nuw nsw i64 %i.tr, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.tj, ptr align 4 %i.tp, i64 %i.ts, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.tt = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.tu = zext i32 %i.tt to i64
  %.idx = mul nuw nsw i64 %i.tu, 12               ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 20
  %i.tx = load <4 x float>, ptr %i.tk, align 8
  %.fr847 = freeze <4 x float> %i.tx              ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 32
  %.pre727 = load float, ptr %.phi.trans.insert, align 8 ; 4 uses
  %i.ty = fcmp olt float %.pre727, f0x3C0EFA35
  %i.tz = fcmp une <4 x float> %.fr847, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.ua = bitcast <4 x i1> %i.tz to i4
  %i.ub = icmp eq i4 %i.ua, 0
  %op.rdx = select i1 %i.ub, i1 %i.ty, i1 false
  br i1 %op.rdx, label %.loopexit, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread: ; preds = %bb.cw
  %i.uc = load i32, ptr %i.f, align 4
  %i.ud = add i32 %i.uc, 1
  store i32 %i.ud, ptr %i.f, align 4
  %i.ue = fcmp ogt float %.pre727, f0x3C0EFA35
  %i.uf = extractelement <4 x float> %.fr847, i64 0
  %i.ug = extractelement <4 x float> %.fr847, i64 1
  br i1 %i.ue, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %i.uh = call noundef float @cosf(float noundef %.pre727) #17
  %i.ui = call noundef float @sinf(float noundef %.pre727) #17 ; 2 uses
  %i.uj = fneg float %i.ui
  %.pre728 = load float, ptr %i.tk, align 8
  %.pre729 = load float, ptr %i.tw, align 4
  br label %bb.cz

bb.cy:                                            ; preds = %bb.dc
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cz:                                            ; preds = %bb.cx, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %i.ul = phi float [ %.pre729, %bb.cx ], [ %i.ug, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %i.um = phi float [ %.pre728, %bb.cx ], [ %i.uf, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %.sroa.0447.0 = phi float [ %i.uh, %bb.cx ], [ 1.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %.sroa.8449.0 = phi float [ %i.uj, %bb.cx ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %.sroa.18.0 = phi float [ %i.ui, %bb.cx ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %i.un = fadd float %i.um, 0.000000e+00          ; 2 uses
  %i.uo = fadd float %i.ul, 0.000000e+00          ; 2 uses
  %i.up = extractelement <4 x float> %.fr847, i64 2
  %3 = call float @llvm.fmuladd.f32(float %i.up, float 0.000000e+00, float 0.000000e+00)
  %4 = shufflevector <4 x float> %.fr847, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %5 = fmul <2 x float> %4, <float 0.000000e+00, float 1.000000e+00>
  %6 = shufflevector <4 x float> %.fr847, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.uq = insertelement <2 x float> %6, float %3, i64 1
  %i.ur = fadd <2 x float> %i.uq, zeroinitializer ; 4 uses
  %i.us = fadd <2 x float> %5, zeroinitializer    ; 4 uses
  %i.ut = extractelement <2 x float> %i.us, i64 0
  %i.uu = call float @llvm.fabs.f32(float %i.ut)  ; 2 uses
  %i.uv = insertelement <2 x float> poison, float %.sroa.18.0, i64 0
  %i.uw = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = fmul <2 x float> %i.us, %i.uw           ; 2 uses
  %i.uy = insertelement <2 x float> poison, float %.sroa.0447.0, i64 0
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.va = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uz, <2 x float> %i.ur, <2 x float> %i.ux)
  %i.vb = fadd <2 x float> %i.va, zeroinitializer ; 3 uses
  %i.vc = fmul <2 x float> %i.us, %i.uz           ; 2 uses
  %i.vd = insertelement <2 x float> poison, float %.sroa.8449.0, i64 0
  %i.ve = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ve, <2 x float> %i.ur, <2 x float> %i.vc)
  %i.vg = fadd <2 x float> %i.vf, zeroinitializer ; 3 uses
  %i.vh = extractelement <2 x float> %i.us, i64 1
  %i.vi = fmul float %i.vh, 0.000000e+00
  %i.vj = insertelement <2 x float> poison, float %i.uu, i64 0
  %i.vk = insertelement <2 x float> %i.vj, float %i.vi, i64 1
  %i.vl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ur, <2 x float> zeroinitializer, <2 x float> %i.vk)
  %i.vm = fadd <2 x float> %i.vl, splat (float 5.000000e-01) ; 3 uses
  %i.vn = extractelement <2 x float> %i.ur, i64 1 ; 3 uses
  %i.vo = extractelement <2 x float> %i.ux, i64 0
  %i.vp = call float @llvm.fmuladd.f32(float %.sroa.0447.0, float %i.vn, float %i.vo)
  %i.vq = fadd float %i.vp, 0.000000e+00          ; 3 uses
  %i.vr = extractelement <2 x float> %i.vc, i64 0
  %i.vs = call float @llvm.fmuladd.f32(float %.sroa.8449.0, float %i.vn, float %i.vr)
  %i.vt = fadd float %i.vs, 0.000000e+00          ; 3 uses
  %i.vu = call float @llvm.fmuladd.f32(float %i.vn, float 0.000000e+00, float %i.uu)
  %i.vv = fadd float %i.vu, 1.000000e+00          ; 3 uses
  %i.vw = fmul <2 x float> %i.vg, zeroinitializer
  %i.vx = fadd <2 x float> %i.vw, %i.vb
  %i.vy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vm, <2 x float> zeroinitializer, <2 x float> %i.vx) ; 3 uses
  %i.vz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vb, <2 x float> zeroinitializer, <2 x float> %i.vg)
  %i.wa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vm, <2 x float> zeroinitializer, <2 x float> %i.vz) ; 3 uses
  %i.wb = fmul <2 x float> %i.vg, splat (float -5.000000e-01)
  %i.wc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vb, <2 x float> splat (float -5.000000e-01), <2 x float> %i.wb)
  %i.wd = fadd <2 x float> %i.vm, %i.wc           ; 3 uses
  %i.we = fmul float %i.vt, 0.000000e+00
  %i.wf = fadd float %i.we, %i.vq
  %i.wg = call float @llvm.fmuladd.f32(float %i.vv, float 0.000000e+00, float %i.wf) ; 3 uses
  %i.wh = call float @llvm.fmuladd.f32(float %i.vq, float 0.000000e+00, float %i.vt)
  %i.wi = call float @llvm.fmuladd.f32(float %i.vv, float 0.000000e+00, float %i.wh) ; 3 uses
  %i.wj = fmul float %i.vt, -5.000000e-01
  %i.wk = call float @llvm.fmuladd.f32(float %i.vq, float -5.000000e-01, float %i.wj)
  %i.wl = fadd float %i.vv, %i.wk                 ; 3 uses
  %i.wm = fmul <2 x float> %i.wa, zeroinitializer
  %i.wn = fadd <2 x float> %i.vy, %i.wm
  %i.wo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vy, <2 x float> zeroinitializer, <2 x float> %i.wa)
  %i.wp = insertelement <2 x float> poison, float %i.uo, i64 0
  %i.wq = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wr = fmul <2 x float> %i.wq, %i.wa
  %i.ws = insertelement <2 x float> poison, float %i.un, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wt, <2 x float> %i.vy, <2 x float> %i.wr)
  %i.wv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wd, <2 x float> zeroinitializer, <2 x float> %i.wn) ; 3 uses
  %i.ww = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wd, <2 x float> zeroinitializer, <2 x float> %i.wo) ; 3 uses
  %i.wx = fadd <2 x float> %i.wd, %i.wu           ; 3 uses
  %i.wy = fmul float %i.wi, 0.000000e+00
  %i.wz = fadd float %i.wg, %i.wy
  %i.xa = call float @llvm.fmuladd.f32(float %i.wl, float 0.000000e+00, float %i.wz) ; 2 uses
  %i.xb = call float @llvm.fmuladd.f32(float %i.wg, float 0.000000e+00, float %i.wi)
  %i.xc = call float @llvm.fmuladd.f32(float %i.wl, float 0.000000e+00, float %i.xb) ; 2 uses
  %i.xd = fmul float %i.uo, %i.wi
  %i.xe = call float @llvm.fmuladd.f32(float %i.un, float %i.wg, float %i.xd)
  %i.xf = fadd float %i.wl, %i.xe                 ; 2 uses
  %.not243662 = icmp eq i32 %i.tt, 0
  br i1 %.not243662, label %.loopexit, label %.lr.ph665.preheader

.lr.ph665.preheader:                              ; preds = %bb.cz
  %i.xg = add nsw i64 %.idx, -12                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.xg, 48
  br i1 %min.iters.check, label %.lr.ph665.preheader848, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph665.preheader
  %i.xh = udiv i64 %i.xg, 12
  %i.xi = add nuw nsw i64 %i.xh, 1                ; 2 uses
  %n.mod.vf = and i64 %i.xi, 3                    ; 2 uses
  %i.xj = icmp eq i64 %n.mod.vf, 0
  %i.xk = select i1 %i.xj, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.xi, %i.xk               ; 2 uses
  %i.xl = mul i64 %n.vec, 12
  %i.xm = getelementptr i8, ptr %i.tj, i64 %i.xl
  %broadcast.splat = shufflevector <2 x float> %i.ww, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat824 = shufflevector <2 x float> %i.wv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat826 = shufflevector <2 x float> %i.wx, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat828 = shufflevector <2 x float> %i.ww, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat830 = shufflevector <2 x float> %i.wv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat832 = shufflevector <2 x float> %i.wx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert833 = insertelement <4 x float> poison, float %i.xc, i64 0
  %broadcast.splat834 = shufflevector <4 x float> %broadcast.splatinsert833, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert835 = insertelement <4 x float> poison, float %i.xa, i64 0
  %broadcast.splat836 = shufflevector <4 x float> %broadcast.splatinsert835, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert837 = insertelement <4 x float> poison, float %i.xf, i64 0
  %broadcast.splat838 = shufflevector <4 x float> %broadcast.splatinsert837, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.xn = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.tj, i64 %i.xn ; 3 uses
  %i.xo = getelementptr i8, ptr %i.tj, i64 %i.xn  ; 2 uses
  %next.gep839 = getelementptr i8, ptr %i.xo, i64 12
  %i.xp = getelementptr i8, ptr %i.tj, i64 %i.xn  ; 2 uses
  %next.gep840 = getelementptr i8, ptr %i.xp, i64 24
  %i.xq = getelementptr i8, ptr %i.tj, i64 %i.xn  ; 2 uses
  %next.gep841 = getelementptr i8, ptr %i.xq, i64 36
  %i.xr = load float, ptr %next.gep, align 4
  %i.xs = load float, ptr %next.gep839, align 4
  %i.xt = load float, ptr %next.gep840, align 4
  %i.xu = load float, ptr %next.gep841, align 4
  %i.xv = insertelement <4 x float> poison, float %i.xr, i64 0
  %i.xw = insertelement <4 x float> %i.xv, float %i.xs, i64 1
  %i.xx = insertelement <4 x float> %i.xw, float %i.xt, i64 2
  %i.xy = insertelement <4 x float> %i.xx, float %i.xu, i64 3 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ya = getelementptr i8, ptr %i.xo, i64 16
  %i.yb = getelementptr i8, ptr %i.xp, i64 28
  %i.yc = getelementptr i8, ptr %i.xq, i64 40
  %i.yd = load float, ptr %i.xz, align 4
  %i.ye = load float, ptr %i.ya, align 4
  %i.yf = load float, ptr %i.yb, align 4
  %i.yg = load float, ptr %i.yc, align 4
  %i.yh = insertelement <4 x float> poison, float %i.yd, i64 0
  %i.yi = insertelement <4 x float> %i.yh, float %i.ye, i64 1
  %i.yj = insertelement <4 x float> %i.yi, float %i.yf, i64 2
  %i.yk = insertelement <4 x float> %i.yj, float %i.yg, i64 3 ; 3 uses
  %i.yl = fmul <4 x float> %broadcast.splat, %i.yk
  %i.ym = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat824, <4 x float> %i.xy, <4 x float> %i.yl)
  %i.yn = fadd <4 x float> %broadcast.splat826, %i.ym
  %i.yo = fmul <4 x float> %broadcast.splat828, %i.yk
  %i.yp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat830, <4 x float> %i.xy, <4 x float> %i.yo)
  %i.yq = fadd <4 x float> %broadcast.splat832, %i.yp
  %i.yr = fmul <4 x float> %broadcast.splat834, %i.yk
  %i.ys = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat836, <4 x float> %i.xy, <4 x float> %i.yr)
  %i.yt = fadd <4 x float> %broadcast.splat838, %i.ys ; 2 uses
  %i.yu = fdiv <4 x float> %i.yn, %i.yt
  %i.yv = fdiv <4 x float> %i.yq, %i.yt
  %i.yw = shufflevector <4 x float> %i.yu, <4 x float> %i.yv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.yw, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.yx = icmp eq i64 %index.next, %n.vec
  br i1 %i.yx, label %.lr.ph665.preheader848, label %vector.body, !llvm.loop !38

.lr.ph665.preheader848:                           ; preds = %vector.body, %.lr.ph665.preheader
  %.0212663.ph = phi ptr [ %i.tj, %.lr.ph665.preheader ], [ %i.xm, %vector.body ]
  br label %.lr.ph665

.lr.ph665:                                        ; preds = %.lr.ph665.preheader848, %.lr.ph665
  %.0212663 = phi ptr [ %i.zp, %.lr.ph665 ], [ %.0212663.ph, %.lr.ph665.preheader848 ] ; 5 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.0212663, i64 8
  %i.yz = load float, ptr %.0212663, align 4      ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.0212663, i64 4
  %i.zb = load float, ptr %i.za, align 4          ; 2 uses
  %i.zc = fmul float %i.xc, %i.zb
  %i.zd = call float @llvm.fmuladd.f32(float %i.xa, float %i.yz, float %i.zc)
  %i.ze = fadd float %i.xf, %i.zd
  %i.zf = insertelement <2 x float> poison, float %i.zb, i64 0
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zh = fmul <2 x float> %i.ww, %i.zg
  %i.zi = insertelement <2 x float> poison, float %i.yz, i64 0
  %i.zj = shufflevector <2 x float> %i.zi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wv, <2 x float> %i.zj, <2 x float> %i.zh)
  %i.zl = fadd <2 x float> %i.wx, %i.zk
  %i.zm = insertelement <2 x float> poison, float %i.ze, i64 0
  %i.zn = shufflevector <2 x float> %i.zm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zo = fdiv <2 x float> %i.zl, %i.zn
  store <2 x float> %i.zo, ptr %.0212663, align 4
  store float 0.000000e+00, ptr %i.yy, align 4
  %i.zp = getelementptr inbounds nuw i8, ptr %.0212663, i64 12 ; 2 uses
  %.not243 = icmp eq ptr %i.zp, %i.tv
  br i1 %.not243, label %.loopexit, label %.lr.ph665, !llvm.loop !41

.loopexit:                                        ; preds = %.lr.ph665, %bb.cw, %bb.cz
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.0215667, ptr %i.a, align 4
  %.sroa.08.012.i339 = load ptr, ptr %i.zq, align 8 ; 2 uses
  %.not1113.i340 = icmp eq ptr %.sroa.08.012.i339, %i.zq
  br i1 %.not1113.i340, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348, label %.lr.ph.i341

.lr.ph.i341thread-pre-split:                      ; preds = %.noexc347
  %.pr559 = load i32, ptr %i.a, align 4
  br label %.lr.ph.i341

.lr.ph.i341:                                      ; preds = %.loopexit, %.lr.ph.i341thread-pre-split
  %i.zr = phi i32 [ %.pr559, %.lr.ph.i341thread-pre-split ], [ %.0215667, %.loopexit ] ; 2 uses
  %.sroa.08.014.i342 = phi ptr [ %.sroa.08.0.i344, %.lr.ph.i341thread-pre-split ], [ %.sroa.08.012.i339, %.loopexit ] ; 5 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i342, i64 16
  %i.zt = load ptr, ptr %i.zs, align 8            ; 2 uses
  %.not.i343 = icmp eq ptr %i.zt, null
  br i1 %.not.i343, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i341
  store i32 %i.zr, ptr %i.zt, align 4
  br label %.noexc347

bb.db:                                            ; preds = %.lr.ph.i341
  %.not7.i346 = icmp eq i32 %i.zr, 0
  br i1 %.not7.i346, label %bb.dc, label %.noexc347
end_hunk_0
