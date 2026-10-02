Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LCALSSuite?download=true
inline.NumInlined: 1878
inline.NumDeleted: 548
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_Z16allocateLoopDatav:bb.a
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx259.2
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next219.2.1
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !131
  %indvars.iv.next219.2.2 = or disjoint i64 %indvars.iv218.2, 3 ; 2 uses
  %.idx259.3 = mul nuw nsw i64 %indvars.iv.next219.2.2, 200
  %i.im = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx259.3
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next219.2.2
  store ptr %i.im, ptr %i.in, align 8, !tbaa !131
  %indvars.iv.next219.2.3 = add nuw nsw i64 %indvars.iv218.2, 4 ; 2 uses
  %exitcond221.2.not.3 = icmp eq i64 %indvars.iv.next219.2.3, %wide.trip.count.i.i
  br i1 %exitcond221.2.not.3, label %.loopexit186.2, label %.lr.ph.2, !llvm.loop !838

.loopexit186.2:                                   ; preds = %.lr.ph.2, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.2
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 1208
  store i32 4, ptr %i.io, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr null, ptr %i.d, align 8, !tbaa !131
  %i.ip = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 32, i64 noundef %i.gf) #22 ; 0 uses
  %i.iq = load ptr, ptr %i.d, align 8, !tbaa !131 ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ie, i64 1216
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !119
  %i.is = getelementptr inbounds nuw i8, ptr %i.ie, i64 1224
  store i32 %i.gd, ptr %i.is, align 8, !tbaa !120
  br i1 %i.gg, label %vector.body388, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.3

vector.body388:                                   ; preds = %.loopexit186.2, %vector.body388
  %index389 = phi i64 [ %index.next391, %vector.body388 ], [ 0, %.loopexit186.2 ] ; 2 uses
  %vec.ind390 = phi <2 x i32> [ %vec.ind.next392, %vector.body388 ], [ <i32 0, i32 1>, %.loopexit186.2 ] ; 2 uses
  %i.it = uitofp nneg <2 x i32> %vec.ind390 to <2 x double> ; 2 uses
  %i.iu = fadd nnan <2 x double> %i.it, splat (double 1.100000e+00)
  %i.iv = fmul nnan <2 x double> %i.iu, splat (double 2.000000e-01)
  %i.iw = fadd <2 x double> %i.it, splat (double 1.123450e+00)
  %i.ix = fdiv <2 x double> %i.iv, %i.iw
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %index389
  store <2 x double> %i.ix, ptr %i.iy, align 8, !tbaa !57
  %index.next391 = add nuw i64 %index389, 2       ; 2 uses
  %vec.ind.next392 = add <2 x i32> %vec.ind390, splat (i32 2)
  %i.iz = icmp eq i64 %index.next391, %wide.trip.count.i.i151
  br i1 %i.iz, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.3, label %vector.body388, !llvm.loop !840

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.3: ; preds = %vector.body388, %.loopexit186.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.ja = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gh) #23 ; 5 uses
  %i.jb = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 256
  store ptr %i.ja, ptr %i.jc, align 8, !tbaa !135
  br i1 %i.cv, label %.loopexit186.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.3, %.lr.ph.3
  %indvars.iv218.3 = phi i64 [ %indvars.iv.next219.3.3, %.lr.ph.3 ], [ 0, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.3 ] ; 6 uses
  %.idx260 = mul nuw nsw i64 %indvars.iv218.3, 200
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx260
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv218.3
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !131
  %indvars.iv.next219.3 = or disjoint i64 %indvars.iv218.3, 1 ; 2 uses
  %.idx260.1 = mul nuw nsw i64 %indvars.iv.next219.3, 200
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx260.1
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next219.3
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !131
  %indvars.iv.next219.3.1 = or disjoint i64 %indvars.iv218.3, 2 ; 2 uses
  %.idx260.2 = mul nuw nsw i64 %indvars.iv.next219.3.1, 200
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx260.2
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next219.3.1
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !131
  %indvars.iv.next219.3.2 = or disjoint i64 %indvars.iv218.3, 3 ; 2 uses
  %.idx260.3 = mul nuw nsw i64 %indvars.iv.next219.3.2, 200
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx260.3
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next219.3.2
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !131
  %indvars.iv.next219.3.3 = add nuw nsw i64 %indvars.iv218.3, 4 ; 2 uses
  %exitcond221.3.not.3 = icmp eq i64 %indvars.iv.next219.3.3, %wide.trip.count.i.i
  br i1 %exitcond221.3.not.3, label %.loopexit186.3, label %.lr.ph.3, !llvm.loop !838

.loopexit186.3:                                   ; preds = %.lr.ph.3, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.3
  %i.jl = mul i32 %i.m, 7                         ; 4 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = shl nsw i64 %i.jm, 3
  %i.jo = icmp sgt i32 %i.jl, 0
  %wide.trip.count.i.i159 = zext i32 %i.jl to i64
  %i.jp = shl i32 %i.m, 1
  %i.jq = zext i32 %i.jp to i64
  %i.jr = mul i32 %i.m, 3
  %i.js = zext i32 %i.jr to i64
  %i.jt = shl i32 %i.m, 2
  %i.ju = zext i32 %i.jt to i64
  %i.jv = mul i32 %i.m, 5
  %i.jw = zext i32 %i.jv to i64
  %i.jx = mul i32 %i.m, 6
  %i.jy = zext i32 %i.jx to i64
  br label %bb.c

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156: ; preds = %vector.body358, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData12ComplexArrayEi.exit.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.jz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gh) #23 ; 5 uses
  %i.ka = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 232
  store ptr %i.jz, ptr %i.kb, align 8, !tbaa !135
  br i1 %i.cv, label %.loopexit186, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156, %.lr.ph
  %indvars.iv218 = phi i64 [ %indvars.iv.next219.3523, %.lr.ph ], [ 0, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156 ] ; 6 uses
  %.idx = mul nuw nsw i64 %indvars.iv218, 200
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv218
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !131
  %indvars.iv.next219 = or disjoint i64 %indvars.iv218, 1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next219, 200
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx.1
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv.next219
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !131
  %indvars.iv.next219.1517 = or disjoint i64 %indvars.iv218, 2 ; 2 uses
  %.idx.2 = mul nuw nsw i64 %indvars.iv.next219.1517, 200
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx.2
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv.next219.1517
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !131
  %indvars.iv.next219.2520 = or disjoint i64 %indvars.iv218, 3 ; 2 uses
  %.idx.3 = mul nuw nsw i64 %indvars.iv.next219.2520, 200
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx.3
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv.next219.2520
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !131
  %indvars.iv.next219.3523 = add nuw nsw i64 %indvars.iv218, 4 ; 2 uses
  %exitcond221.not.3 = icmp eq i64 %indvars.iv.next219.3523, %wide.trip.count.i.i
  br i1 %exitcond221.not.3, label %.loopexit186, label %.lr.ph, !llvm.loop !838

bb.c:                                             ; preds = %.loopexit186.3, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164
  %i.kk = phi ptr [ %i.jb, %.loopexit186.3 ], [ %i.lc, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164 ]
  %indvars.iv230 = phi i64 [ 0, %.loopexit186.3 ], [ %indvars.iv.next231, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164 ] ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1232
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 3 uses
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.kl, i64 %indvars.iv230 ; 3 uses
  %i.kn = trunc nuw nsw i64 %indvars.iv.next231 to i32
  store i32 %i.kn, ptr %i.km, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr null, ptr %i.c, align 8, !tbaa !131
  %i.ko = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 32, i64 noundef %i.jn) #22 ; 0 uses
  %i.kp = load ptr, ptr %i.c, align 8, !tbaa !131 ; 9 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !119
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store i32 %i.jl, ptr %i.kr, align 8, !tbaa !120
  br i1 %i.jo, label %vector.ph396, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164

vector.ph396:                                     ; preds = %bb.c
  %i.ks = and i64 %indvars.iv230, 1
  %.not.i.i157.not = icmp eq i64 %i.ks, 0
  %i.kt = select i1 %.not.i.i157.not, double 1.000000e-01, double 2.000000e-01
  %broadcast.splatinsert398 = insertelement <2 x double> poison, double %i.kt, i64 0
  %broadcast.splat399 = shufflevector <2 x double> %broadcast.splatinsert398, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph396
  %index401 = phi i64 [ 0, %vector.ph396 ], [ %index.next403, %vector.body400 ] ; 2 uses
  %vec.ind402 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph396 ], [ %vec.ind.next404, %vector.body400 ] ; 2 uses
  %i.ku = uitofp nneg <2 x i32> %vec.ind402 to <2 x double> ; 2 uses
  %i.kv = fadd nnan <2 x double> %i.ku, splat (double 1.100000e+00)
  %i.kw = fmul nnan <2 x double> %broadcast.splat399, %i.kv
  %i.kx = fadd <2 x double> %i.ku, splat (double 1.123450e+00)
  %i.ky = fdiv <2 x double> %i.kw, %i.kx
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %index401
  store <2 x double> %i.ky, ptr %i.kz, align 8, !tbaa !57
  %index.next403 = add nuw i64 %index401, 2       ; 2 uses
  %vec.ind.next404 = add <2 x i32> %vec.ind402, splat (i32 2)
  %i.la = icmp eq i64 %index.next403, %wide.trip.count.i.i159
  br i1 %i.la, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164, label %vector.body400, !llvm.loop !841

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164: ; preds = %vector.body400, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.lb = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #23 ; 8 uses
  %i.lc = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16 ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 264
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv230
  store ptr %i.lb, ptr %i.le, align 8, !tbaa !135
  store ptr %i.kp, ptr %i.lb, align 8, !tbaa !131
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %wide.trip.count.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !131
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.jq
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !131
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.js
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !131
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ju
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !131
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.jw
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !131
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.jy
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !131
  %exitcond233.not = icmp eq i64 %indvars.iv.next231, 11
  br i1 %exitcond233.not, label %.preheader183, label %bb.c, !llvm.loop !842

.preheader183:                                    ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 1496
  store i32 1, ptr %i.lr, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr null, ptr %i.b, align 8, !tbaa !131
  %i.ls = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef 32768) #22 ; 0 uses
  %i.lt = load ptr, ptr %i.b, align 8, !tbaa !131 ; 22 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lc, i64 1504
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !119
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lc, i64 1512
  store i32 4096, ptr %i.lv, align 8, !tbaa !120
  br label %vector.body409

vector.body409:                                   ; preds = %vector.body409, %.preheader183
  %index410 = phi i64 [ 0, %.preheader183 ], [ %index.next412.1, %vector.body409 ] ; 3 uses
  %vec.ind411 = phi <2 x i32> [ <i32 0, i32 1>, %.preheader183 ], [ %vec.ind.next413.1, %vector.body409 ] ; 3 uses
  %i.lw = uitofp nneg <2 x i32> %vec.ind411 to <2 x double> ; 2 uses
  %i.lx = fadd nnan <2 x double> %i.lw, splat (double 1.100000e+00)
  %i.ly = fmul nnan <2 x double> %i.lx, splat (double 1.000000e-01)
  %i.lz = fadd <2 x double> %i.lw, splat (double 1.123450e+00)
  %i.ma = fdiv <2 x double> %i.ly, %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %index410
  store <2 x double> %i.ma, ptr %i.mb, align 8, !tbaa !57
  %vec.ind.next413 = add <2 x i32> %vec.ind411, splat (i32 2)
  %i.mc = uitofp nneg <2 x i32> %vec.ind.next413 to <2 x double> ; 2 uses
  %i.md = fadd nnan <2 x double> %i.mc, splat (double 1.100000e+00)
  %i.me = fmul nnan <2 x double> %i.md, splat (double 1.000000e-01)
  %i.mf = fadd <2 x double> %i.mc, splat (double 1.123450e+00)
  %i.mg = fdiv <2 x double> %i.me, %i.mf
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %index410
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <2 x double> %i.mg, ptr %i.mi, align 8, !tbaa !57
  %index.next412.1 = add nuw nsw i64 %index410, 4 ; 2 uses
  %vec.ind.next413.1 = add <2 x i32> %vec.ind411, splat (i32 4)
  %i.mj = icmp eq i64 %index.next412.1, 4096
  br i1 %i.mj, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit171, label %vector.body409, !llvm.loop !843

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit171: ; preds = %vector.body409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.mk = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #23 ; 20 uses
  %i.ml = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 352
  store ptr %i.mk, ptr %i.mm, align 8, !tbaa !135
  store ptr %i.lt, ptr %i.mk, align 8, !tbaa !131
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 512, i64 1024, i64 1536, i64 2048>
  %0 = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store <4 x ptr> %i.mn, ptr %0, align 8, !tbaa !131
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 2560, i64 3072, i64 3584, i64 4096>
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  store <4 x ptr> %i.mo, ptr %i.mp, align 8, !tbaa !131
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 4608, i64 5120, i64 5632, i64 6144>
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mk, i64 72
  store <4 x ptr> %i.mq, ptr %i.mr, align 8, !tbaa !131
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 6656, i64 7168, i64 7680, i64 8192>
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mk, i64 104
  store <4 x ptr> %i.ms, ptr %i.mt, align 8, !tbaa !131
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 8704, i64 9216, i64 9728, i64 10240>
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mk, i64 136
  store <4 x ptr> %i.mu, ptr %i.mv, align 8, !tbaa !131
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 10752, i64 11264, i64 11776, i64 12288>
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mk, i64 168
  store <4 x ptr> %i.mw, ptr %i.mx, align 8, !tbaa !131
  %i.my = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 12800, i64 13312, i64 13824, i64 14336>
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mk, i64 200
  store <4 x ptr> %i.my, ptr %i.mz, align 8, !tbaa !131
  %i.na = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 14848, i64 15360, i64 15872, i64 16384>
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mk, i64 232
  store <4 x ptr> %i.na, ptr %i.nb, align 8, !tbaa !131
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 16896, i64 17408, i64 17920, i64 18432>
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mk, i64 264
  store <4 x ptr> %i.nc, ptr %i.nd, align 8, !tbaa !131
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 18944, i64 19456, i64 19968, i64 20480>
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mk, i64 296
  store <4 x ptr> %i.ne, ptr %i.nf, align 8, !tbaa !131
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 20992, i64 21504, i64 22016, i64 22528>
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mk, i64 328
  store <4 x ptr> %i.ng, ptr %i.nh, align 8, !tbaa !131
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 23040, i64 23552, i64 24064, i64 24576>
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mk, i64 360
  store <4 x ptr> %i.ni, ptr %i.nj, align 8, !tbaa !131
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 25088, i64 25600, i64 26112, i64 26624>
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mk, i64 392
  store <4 x ptr> %i.nk, ptr %i.nl, align 8, !tbaa !131
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 27136, i64 27648, i64 28160, i64 28672>
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mk, i64 424
  store <4 x ptr> %i.nm, ptr %i.nn, align 8, !tbaa !131
  %i.no = getelementptr inbounds nuw i8, ptr %i.lt, <4 x i64> <i64 29184, i64 29696, i64 30208, i64 30720>
  %1 = getelementptr inbounds nuw i8, ptr %i.mk, i64 456
  store <4 x ptr> %i.no, ptr %1, align 8, !tbaa !131
  %2 = getelementptr inbounds nuw i8, ptr %i.lt, i64 31232
  %3 = getelementptr inbounds nuw i8, ptr %i.mk, i64 488
  store ptr %2, ptr %3, align 8, !tbaa !131
  %4 = getelementptr inbounds nuw i8, ptr %i.lt, i64 31744
  %i.np = getelementptr inbounds nuw i8, ptr %i.mk, i64 496
  store ptr %4, ptr %i.np, align 8, !tbaa !131
  %5 = getelementptr inbounds nuw i8, ptr %i.lt, i64 32256
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mk, i64 504
  store ptr %5, ptr %i.nq, align 8, !tbaa !131
  %i.nr = shl i32 %i.m, 3                         ; 6 uses
  %i.ns = sext i32 %i.nr to i64
  %i.nt = shl nsw i64 %i.ns, 3                    ; 3 uses
  %i.nu = icmp sgt i32 %i.nr, 0                   ; 3 uses
  %wide.trip.count.i.i174 = zext i32 %i.nr to i64 ; 3 uses
  %i.nv = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 1520
  store i32 1, ptr %i.nw, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !131
  %i.nx = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.nt) #22 ; 0 uses
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !131 ; 5 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 1528
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !119
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 1536
  store i32 %i.nr, ptr %i.oa, align 8, !tbaa !120
  br i1 %i.nu, label %vector.body418, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179

vector.body418:                                   ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit171, %vector.body418
  %index419 = phi i64 [ %index.next421, %vector.body418 ], [ 0, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit171 ] ; 2 uses
  %vec.ind420 = phi <2 x i32> [ %vec.ind.next422, %vector.body418 ], [ <i32 0, i32 1>, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit171 ] ; 2 uses
  %i.ob = uitofp nneg <2 x i32> %vec.ind420 to <2 x double> ; 2 uses
  %i.oc = fadd nnan <2 x double> %i.ob, splat (double 1.100000e+00)
  %i.od = fmul nnan <2 x double> %i.oc, splat (double 1.000000e-01)
  %i.oe = fadd <2 x double> %i.ob, splat (double 1.123450e+00)
  %i.of = fdiv <2 x double> %i.od, %i.oe
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %index419
  store <2 x double> %i.of, ptr %i.og, align 8, !tbaa !57
  %index.next421 = add nuw i64 %index419, 2       ; 2 uses
  %vec.ind.next422 = add <2 x i32> %vec.ind420, splat (i32 2)
  %i.oh = icmp eq i64 %index.next421, %wide.trip.count.i.i174
  br i1 %i.oh, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179, label %vector.body418, !llvm.loop !844

.loopexit.split:                                  ; preds = %vector.body438, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179
  %i.oi = getelementptr inbounds nuw i8, ptr %i.rq, i64 1544
  store i32 2, ptr %i.oi, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !131
  %i.oj = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.nt) #22 ; 0 uses
  %i.ok = load ptr, ptr %i.a, align 8, !tbaa !131 ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.rq, i64 1552
  store ptr %i.ok, ptr %i.ol, align 8, !tbaa !119
  %i.om = getelementptr inbounds nuw i8, ptr %i.rq, i64 1560
  store i32 %i.nr, ptr %i.om, align 8, !tbaa !120
  br i1 %i.nu, label %vector.body449, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1

vector.body449:                                   ; preds = %.loopexit.split, %vector.body449
  %index450 = phi i64 [ %index.next452, %vector.body449 ], [ 0, %.loopexit.split ] ; 2 uses
  %vec.ind451 = phi <2 x i32> [ %vec.ind.next453, %vector.body449 ], [ <i32 0, i32 1>, %.loopexit.split ] ; 2 uses
  %i.on = uitofp nneg <2 x i32> %vec.ind451 to <2 x double> ; 2 uses
  %i.oo = fadd nnan <2 x double> %i.on, splat (double 1.100000e+00)
  %i.op = fmul nnan <2 x double> %i.oo, splat (double 2.000000e-01)
  %i.oq = fadd <2 x double> %i.on, splat (double 1.123450e+00)
  %i.or = fdiv <2 x double> %i.op, %i.oq
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %index450
  store <2 x double> %i.or, ptr %i.os, align 8, !tbaa !57
  %index.next452 = add nuw i64 %index450, 2       ; 2 uses
  %vec.ind.next453 = add <2 x i32> %vec.ind451, splat (i32 2)
  %i.ot = icmp eq i64 %index.next452, %wide.trip.count.i.i174
  br i1 %i.ot, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1, label %vector.body449, !llvm.loop !845

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1: ; preds = %vector.body449, %.loopexit.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ou = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23
  %i.ov = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 368
  store ptr %i.ou, ptr %i.ow, align 8, !tbaa !138
  %i.ox = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gh) #23
  %i.oy = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 368
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !138
  store ptr %i.ox, ptr %i.pa, align 8, !tbaa !135
  %i.pb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gh) #23 ; 2 uses
  %i.pc = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16 ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 368
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !138 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store ptr %i.pb, ptr %i.pf, align 8, !tbaa !135
  br i1 %i.cv, label %.loopexit.split.1, label %.preheader180.split.1

.preheader180.split.1:                            ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1
  %i.pg = load ptr, ptr %i.pe, align 8, !tbaa !135
  %broadcast.splatinsert459 = insertelement <2 x ptr> poison, ptr %i.ok, i64 0
  %broadcast.splat460 = shufflevector <2 x ptr> %broadcast.splatinsert459, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %.preheader180.split.1
  %index462 = phi i64 [ 0, %.preheader180.split.1 ], [ %index.next463, %vector.body461 ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %index462 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store <2 x ptr> %broadcast.splat460, ptr %i.ph, align 8, !tbaa !131
  store <2 x ptr> %broadcast.splat460, ptr %i.pi, align 8, !tbaa !131
  %index.next463 = add nuw i64 %index462, 4       ; 2 uses
  %i.pj = icmp eq i64 %index.next463, %wide.trip.count.i.i
  br i1 %i.pj, label %vector.body470, label %vector.body461, !llvm.loop !846

vector.body470:                                   ; preds = %vector.body461, %vector.body470
  %index471 = phi i64 [ %index.next476, %vector.body470 ], [ 0, %vector.body461 ] ; 2 uses
  %vec.ind472 = phi <2 x i64> [ %vec.ind.next477, %vector.body470 ], [ <i64 0, i64 1>, %vector.body461 ] ; 3 uses
  %i.pk = shl <2 x i64> %vec.ind472, splat (i64 2)
  %step.add473 = shl <2 x i64> %vec.ind472, splat (i64 2)
  %i.pl = add <2 x i64> %step.add473, splat (i64 8)
  %i.pm = and <2 x i64> %i.pk, splat (i64 4294967292)
  %i.pn = and <2 x i64> %i.pl, splat (i64 4294967292)
  %wide.gep474 = getelementptr inbounds nuw [8 x i8], ptr %i.ok, <2 x i64> %i.pm
  %wide.gep475 = getelementptr inbounds nuw [8 x i8], ptr %i.ok, <2 x i64> %i.pn
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %index471 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  store <2 x ptr> %wide.gep474, ptr %i.po, align 8, !tbaa !131
  store <2 x ptr> %wide.gep475, ptr %i.pp, align 8, !tbaa !131
  %index.next476 = add nuw i64 %index471, 4       ; 2 uses
  %vec.ind.next477 = add nuw <2 x i64> %vec.ind472, splat (i64 4)
  %i.pq = icmp eq i64 %index.next476, %wide.trip.count.i.i
  br i1 %i.pq, label %.loopexit.split.1, label %vector.body470, !llvm.loop !847

.loopexit.split.1:                                ; preds = %vector.body470, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pc, i64 1568
  store i32 3, ptr %i.pr, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !131
  %i.ps = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.nt) #22 ; 0 uses
  %i.pt = load ptr, ptr %i.a, align 8, !tbaa !131 ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pc, i64 1576
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !119
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pc, i64 1584
  store i32 %i.nr, ptr %i.pv, align 8, !tbaa !120
  br i1 %i.nu, label %vector.body484, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.2

vector.body484:                                   ; preds = %.loopexit.split.1, %vector.body484
  %index485 = phi i64 [ %index.next487, %vector.body484 ], [ 0, %.loopexit.split.1 ] ; 2 uses
  %vec.ind486 = phi <2 x i32> [ %vec.ind.next488, %vector.body484 ], [ <i32 0, i32 1>, %.loopexit.split.1 ] ; 2 uses
  %i.pw = uitofp nneg <2 x i32> %vec.ind486 to <2 x double> ; 2 uses
  %i.px = fadd nnan <2 x double> %i.pw, splat (double 1.100000e+00)
  %i.py = fmul nnan <2 x double> %i.px, splat (double 1.000000e-01)
  %i.pz = fadd <2 x double> %i.pw, splat (double 1.123450e+00)
  %i.qa = fdiv <2 x double> %i.py, %i.pz
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %index485
  store <2 x double> %i.qa, ptr %i.qb, align 8, !tbaa !57
  %index.next487 = add nuw i64 %index485, 2       ; 2 uses
  %vec.ind.next488 = add <2 x i32> %vec.ind486, splat (i32 2)
  %i.qc = icmp eq i64 %index.next487, %wide.trip.count.i.i174
  br i1 %i.qc, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.2, label %vector.body484, !llvm.loop !848

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.2: ; preds = %vector.body484, %.loopexit.split.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.qd = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23
  %i.qe = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 376
  store ptr %i.qd, ptr %i.qf, align 8, !tbaa !138
  %i.qg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gh) #23
  %i.qh = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 376
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !138
  store ptr %i.qg, ptr %i.qj, align 8, !tbaa !135
  %i.qk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gh) #23 ; 2 uses
  %i.ql = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !16 ; 9 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 376
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !138 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store ptr %i.qk, ptr %i.qo, align 8, !tbaa !135
  br i1 %i.cv, label %.loopexit.split.2, label %.preheader180.split.2

.preheader180.split.2:                            ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.2
  %i.qp = load ptr, ptr %i.qn, align 8, !tbaa !135
  %broadcast.splatinsert494 = insertelement <2 x ptr> poison, ptr %i.pt, i64 0
  %broadcast.splat495 = shufflevector <2 x ptr> %broadcast.splatinsert494, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %.preheader180.split.2
  %index497 = phi i64 [ 0, %.preheader180.split.2 ], [ %index.next498, %vector.body496 ] ; 2 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %index497 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  store <2 x ptr> %broadcast.splat495, ptr %i.qq, align 8, !tbaa !131
  store <2 x ptr> %broadcast.splat495, ptr %i.qr, align 8, !tbaa !131
  %index.next498 = add nuw i64 %index497, 4       ; 2 uses
  %i.qs = icmp eq i64 %index.next498, %wide.trip.count.i.i
  br i1 %i.qs, label %vector.body505, label %vector.body496, !llvm.loop !849

vector.body505:                                   ; preds = %vector.body496, %vector.body505
  %index506 = phi i64 [ %index.next511, %vector.body505 ], [ 0, %vector.body496 ] ; 2 uses
  %vec.ind507 = phi <2 x i64> [ %vec.ind.next512, %vector.body505 ], [ <i64 0, i64 1>, %vector.body496 ] ; 3 uses
  %i.qt = shl <2 x i64> %vec.ind507, splat (i64 2)
  %step.add508 = shl <2 x i64> %vec.ind507, splat (i64 2)
  %i.qu = add <2 x i64> %step.add508, splat (i64 8)
  %i.qv = and <2 x i64> %i.qt, splat (i64 4294967292)
  %i.qw = and <2 x i64> %i.qu, splat (i64 4294967292)
  %wide.gep509 = getelementptr inbounds nuw [8 x i8], ptr %i.pt, <2 x i64> %i.qv
  %wide.gep510 = getelementptr inbounds nuw [8 x i8], ptr %i.pt, <2 x i64> %i.qw
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %index506 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store <2 x ptr> %wide.gep509, ptr %i.qx, align 8, !tbaa !131
  store <2 x ptr> %wide.gep510, ptr %i.qy, align 8, !tbaa !131
  %index.next511 = add nuw i64 %index506, 4       ; 2 uses
  %vec.ind.next512 = add nuw <2 x i64> %vec.ind507, splat (i64 4)
  %i.qz = icmp eq i64 %index.next511, %wide.trip.count.i.i
  br i1 %i.qz, label %.loopexit.split.2, label %vector.body505, !llvm.loop !850

.loopexit.split.2:                                ; preds = %vector.body505, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.2
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ql, i64 1592
  store i32 21, ptr %i.ra, align 8, !tbaa !854
end_hunk_0
