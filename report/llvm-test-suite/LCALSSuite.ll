inline.NumInlined: 1878
inline.NumDeleted: 548
begin_hunk_0_@_Z16allocateLoopDatav:bb.a
  store ptr %i.ky, ptr %i.la, align 8, !tbaa !834
  br i1 %i.dm, label %.loopexit186.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.3, %.lr.ph.3
  %indvars.iv219.3 = phi i64 [ %indvars.iv.next220.3.3, %.lr.ph.3 ], [ 0, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.3 ] ; 6 uses
  %.idx261 = mul nuw nsw i64 %indvars.iv219.3, 200
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx261
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv219.3
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !820
  %indvars.iv.next220.3 = or disjoint i64 %indvars.iv219.3, 1 ; 2 uses
  %.idx261.1 = mul nuw nsw i64 %indvars.iv.next220.3, 200
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx261.1
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.next220.3
  store ptr %i.ld, ptr %i.le, align 8, !tbaa !820
  %indvars.iv.next220.3.1 = or disjoint i64 %indvars.iv219.3, 2 ; 2 uses
  %.idx261.2 = mul nuw nsw i64 %indvars.iv.next220.3.1, 200
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx261.2
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.next220.3.1
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !820
  %indvars.iv.next220.3.2 = or disjoint i64 %indvars.iv219.3, 3 ; 2 uses
  %.idx261.3 = mul nuw nsw i64 %indvars.iv.next220.3.2, 200
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx261.3
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv.next220.3.2
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !820
  %indvars.iv.next220.3.3 = add nuw nsw i64 %indvars.iv219.3, 4 ; 2 uses
  %exitcond222.3.not.3 = icmp eq i64 %indvars.iv.next220.3.3, %wide.trip.count.i.i
  br i1 %exitcond222.3.not.3, label %.loopexit186.3, label %.lr.ph.3, !llvm.loop !837

.loopexit186.3:                                   ; preds = %.lr.ph.3, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156.3
  %i.lj = mul i32 %i.m, 7                         ; 4 uses
  %i.lk = sext i32 %i.lj to i64
  %i.ll = shl nsw i64 %i.lk, 3
  %i.lm = icmp sgt i32 %i.lj, 0
  %wide.trip.count.i.i159 = zext i32 %i.lj to i64
  %i.ln = shl i32 %i.m, 1
  %i.lo = zext i32 %i.ln to i64
  %i.lp = mul i32 %i.m, 3
  %i.lq = zext i32 %i.lp to i64
  %i.lr = shl i32 %i.m, 2
  %i.ls = zext i32 %i.lr to i64
  %i.lt = mul i32 %i.m, 5
  %i.lu = zext i32 %i.lt to i64
  %i.lv = mul i32 %i.m, 6
  %i.lw = zext i32 %i.lv to i64
  br label %bb.c

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156: ; preds = %vector.body390, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData12ComplexArrayEi.exit.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.lx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ht) #23 ; 5 uses
  %i.ly = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 232
  store ptr %i.lx, ptr %i.lz, align 8, !tbaa !834
  br i1 %i.dm, label %.loopexit186, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156, %.lr.ph
  %indvars.iv219 = phi i64 [ %indvars.iv.next220.3601, %.lr.ph ], [ 0, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit156 ] ; 6 uses
  %.idx = mul nuw nsw i64 %indvars.iv219, 200
  %i.ma = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.idx
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv219
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !820
  %indvars.iv.next220 = or disjoint i64 %indvars.iv219, 1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next220, 200
  %i.mc = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.idx.1
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next220
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !820
  %indvars.iv.next220.1595 = or disjoint i64 %indvars.iv219, 2 ; 2 uses
  %.idx.2 = mul nuw nsw i64 %indvars.iv.next220.1595, 200
  %i.me = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.idx.2
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next220.1595
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !820
  %indvars.iv.next220.2598 = or disjoint i64 %indvars.iv219, 3 ; 2 uses
  %.idx.3 = mul nuw nsw i64 %indvars.iv.next220.2598, 200
  %i.mg = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.idx.3
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next220.2598
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !820
  %indvars.iv.next220.3601 = add nuw nsw i64 %indvars.iv219, 4 ; 2 uses
  %exitcond222.not.3 = icmp eq i64 %indvars.iv.next220.3601, %wide.trip.count.i.i
  br i1 %exitcond222.not.3, label %.loopexit186, label %.lr.ph, !llvm.loop !837

bb.c:                                             ; preds = %.loopexit186.3, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164
  %i.mi = phi ptr [ %i.kz, %.loopexit186.3 ], [ %i.nb, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164 ]
  %indvars.iv231 = phi i64 [ 0, %.loopexit186.3 ], [ %indvars.iv.next232, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164 ] ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1232
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 3 uses
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %i.mj, i64 %indvars.iv231 ; 4 uses
  %i.ml = trunc nuw nsw i64 %indvars.iv.next232 to i32
  store i32 %i.ml, ptr %i.mk, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr null, ptr %i.c, align 8, !tbaa !820
  %i.mm = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 32, i64 noundef %i.ll) #22 ; 0 uses
  %i.mn = load ptr, ptr %i.c, align 8, !tbaa !820 ; 9 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !183
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i32 %i.lj, ptr %i.mp, align 8, !tbaa !184
  br i1 %i.lm, label %vector.ph445, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164

vector.ph445:                                     ; preds = %bb.c
  %i.mq = load i32, ptr %i.mk, align 8, !tbaa !182
  %i.mr = and i32 %i.mq, 1
  %.not.i.i157 = icmp eq i32 %i.mr, 0
  %i.ms = select i1 %.not.i.i157, double 2.000000e-01, double 1.000000e-01
  %broadcast.splatinsert448 = insertelement <2 x double> poison, double %i.ms, i64 0
  %broadcast.splat449 = shufflevector <2 x double> %broadcast.splatinsert448, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph445
  %index451 = phi i64 [ 0, %vector.ph445 ], [ %index.next453, %vector.body450 ] ; 2 uses
  %vec.ind452 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph445 ], [ %vec.ind.next454, %vector.body450 ] ; 2 uses
  %i.mt = uitofp nneg <2 x i32> %vec.ind452 to <2 x double> ; 2 uses
  %i.mu = fadd nnan <2 x double> %i.mt, splat (double 1.100000e+00)
  %i.mv = fmul nnan <2 x double> %broadcast.splat449, %i.mu
  %i.mw = fadd <2 x double> %i.mt, splat (double 1.123450e+00)
  %i.mx = fdiv <2 x double> %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %index451
  store <2 x double> %i.mx, ptr %i.my, align 8, !tbaa !73
  %index.next453 = add nuw i64 %index451, 2       ; 2 uses
  %vec.ind.next454 = add <2 x i32> %vec.ind452, splat (i32 2)
  %i.mz = icmp eq i64 %index.next453, %wide.trip.count.i.i159
  br i1 %i.mz, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164, label %vector.body450, !llvm.loop !840

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164: ; preds = %vector.body450, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.na = call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #23 ; 8 uses
  %i.nb = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 264
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %indvars.iv231
  store ptr %i.na, ptr %i.nd, align 8, !tbaa !834
  store ptr %i.mn, ptr %i.na, align 8, !tbaa !820
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %wide.trip.count.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %i.ne, ptr %i.nf, align 8, !tbaa !820
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.lo
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !820
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.lq
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !820
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.ls
  %i.nl = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  store ptr %i.nk, ptr %i.nl, align 8, !tbaa !820
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.lu
  %i.nn = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !820
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.lw
  %i.np = getelementptr inbounds nuw i8, ptr %i.na, i64 48
  store ptr %i.no, ptr %i.np, align 8, !tbaa !820
  %exitcond234.not = icmp eq i64 %indvars.iv.next232, 11
  br i1 %exitcond234.not, label %.preheader183, label %bb.c, !llvm.loop !841

.preheader183:                                    ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit164
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nb, i64 1496 ; 2 uses
  store i32 1, ptr %i.nq, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr null, ptr %i.b, align 8, !tbaa !820
  %i.nr = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef 32768) #22 ; 0 uses
  %i.ns = load ptr, ptr %i.b, align 8, !tbaa !820 ; 22 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nb, i64 1504
  store ptr %i.ns, ptr %i.nt, align 8, !tbaa !183
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nb, i64 1512
  store i32 4096, ptr %i.nu, align 8, !tbaa !184
  %i.nv = load i32, ptr %i.nq, align 8, !tbaa !182
  %i.nw = and i32 %i.nv, 1
  %.not.i.i165 = icmp eq i32 %i.nw, 0
  %i.nx = select i1 %.not.i.i165, double 2.000000e-01, double 1.000000e-01
  %broadcast.splatinsert460 = insertelement <2 x double> poison, double %i.nx, i64 0
  %broadcast.splat461 = shufflevector <2 x double> %broadcast.splatinsert460, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %.preheader183
  %index463 = phi i64 [ 0, %.preheader183 ], [ %index.next465.1, %vector.body462 ] ; 3 uses
  %vec.ind464 = phi <2 x i32> [ <i32 0, i32 1>, %.preheader183 ], [ %vec.ind.next466.1, %vector.body462 ] ; 3 uses
  %i.ny = uitofp nneg <2 x i32> %vec.ind464 to <2 x double> ; 2 uses
  %i.nz = fadd nnan <2 x double> %i.ny, splat (double 1.100000e+00)
  %i.oa = fmul nnan <2 x double> %broadcast.splat461, %i.nz
  %i.ob = fadd <2 x double> %i.ny, splat (double 1.123450e+00)
  %i.oc = fdiv <2 x double> %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %index463
  store <2 x double> %i.oc, ptr %i.od, align 8, !tbaa !73
  %vec.ind.next466 = add <2 x i32> %vec.ind464, splat (i32 2)
  %i.oe = uitofp nneg <2 x i32> %vec.ind.next466 to <2 x double> ; 2 uses
  %i.of = fadd nnan <2 x double> %i.oe, splat (double 1.100000e+00)
  %i.og = fmul nnan <2 x double> %broadcast.splat461, %i.of
  %i.oh = fadd <2 x double> %i.oe, splat (double 1.123450e+00)
  %i.oi = fdiv <2 x double> %i.og, %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %index463
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  store <2 x double> %i.oi, ptr %i.ok, align 8, !tbaa !73
  %index.next465.1 = add nuw nsw i64 %index463, 4 ; 2 uses
  %vec.ind.next466.1 = add <2 x i32> %vec.ind464, splat (i32 4)
  %i.ol = icmp eq i64 %index.next465.1, 4096
  br i1 %i.ol, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit171, label %vector.body462, !llvm.loop !842

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit171: ; preds = %vector.body462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.om = call noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #23 ; 20 uses
  %i.on = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 352
  store ptr %i.om, ptr %i.oo, align 8, !tbaa !834
  store ptr %i.ns, ptr %i.om, align 8, !tbaa !820
  %i.op = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 512, i64 1024, i64 1536, i64 2048>
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store <4 x ptr> %i.op, ptr %i.oq, align 8, !tbaa !820
  %i.or = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 2560, i64 3072, i64 3584, i64 4096>
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  store <4 x ptr> %i.or, ptr %i.os, align 8, !tbaa !820
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 4608, i64 5120, i64 5632, i64 6144>
  %i.ou = getelementptr inbounds nuw i8, ptr %i.om, i64 72
  store <4 x ptr> %i.ot, ptr %i.ou, align 8, !tbaa !820
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 6656, i64 7168, i64 7680, i64 8192>
  %i.ow = getelementptr inbounds nuw i8, ptr %i.om, i64 104
  store <4 x ptr> %i.ov, ptr %i.ow, align 8, !tbaa !820
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 8704, i64 9216, i64 9728, i64 10240>
  %i.oy = getelementptr inbounds nuw i8, ptr %i.om, i64 136
  store <4 x ptr> %i.ox, ptr %i.oy, align 8, !tbaa !820
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 10752, i64 11264, i64 11776, i64 12288>
  %i.pa = getelementptr inbounds nuw i8, ptr %i.om, i64 168
  store <4 x ptr> %i.oz, ptr %i.pa, align 8, !tbaa !820
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 12800, i64 13312, i64 13824, i64 14336>
  %i.pc = getelementptr inbounds nuw i8, ptr %i.om, i64 200
  store <4 x ptr> %i.pb, ptr %i.pc, align 8, !tbaa !820
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 14848, i64 15360, i64 15872, i64 16384>
  %i.pe = getelementptr inbounds nuw i8, ptr %i.om, i64 232
  store <4 x ptr> %i.pd, ptr %i.pe, align 8, !tbaa !820
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 16896, i64 17408, i64 17920, i64 18432>
  %i.pg = getelementptr inbounds nuw i8, ptr %i.om, i64 264
  store <4 x ptr> %i.pf, ptr %i.pg, align 8, !tbaa !820
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 18944, i64 19456, i64 19968, i64 20480>
  %i.pi = getelementptr inbounds nuw i8, ptr %i.om, i64 296
  store <4 x ptr> %i.ph, ptr %i.pi, align 8, !tbaa !820
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 20992, i64 21504, i64 22016, i64 22528>
  %i.pk = getelementptr inbounds nuw i8, ptr %i.om, i64 328
  store <4 x ptr> %i.pj, ptr %i.pk, align 8, !tbaa !820
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 23040, i64 23552, i64 24064, i64 24576>
  %i.pm = getelementptr inbounds nuw i8, ptr %i.om, i64 360
  store <4 x ptr> %i.pl, ptr %i.pm, align 8, !tbaa !820
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 25088, i64 25600, i64 26112, i64 26624>
  %i.po = getelementptr inbounds nuw i8, ptr %i.om, i64 392
  store <4 x ptr> %i.pn, ptr %i.po, align 8, !tbaa !820
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 27136, i64 27648, i64 28160, i64 28672>
  %i.pq = getelementptr inbounds nuw i8, ptr %i.om, i64 424
  store <4 x ptr> %i.pp, ptr %i.pq, align 8, !tbaa !820
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ns, <4 x i64> <i64 29184, i64 29696, i64 30208, i64 30720>
  %i.ps = getelementptr inbounds nuw i8, ptr %i.om, i64 456
  store <4 x ptr> %i.pr, ptr %i.ps, align 8, !tbaa !820
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ns, i64 31232
  %i.pu = getelementptr inbounds nuw i8, ptr %i.om, i64 488
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !820
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ns, i64 31744
  %i.pw = getelementptr inbounds nuw i8, ptr %i.om, i64 496
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !820
  %i.px = getelementptr inbounds nuw i8, ptr %i.ns, i64 32256
  %i.py = getelementptr inbounds nuw i8, ptr %i.om, i64 504
  store ptr %i.px, ptr %i.py, align 8, !tbaa !820
  %i.pz = shl i32 %i.m, 3                         ; 6 uses
  %i.qa = sext i32 %i.pz to i64
  %i.qb = shl nsw i64 %i.qa, 3                    ; 3 uses
  %i.qc = icmp sgt i32 %i.pz, 0                   ; 3 uses
  %wide.trip.count.i.i174 = zext i32 %i.pz to i64 ; 3 uses
  %i.qd = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 1520 ; 2 uses
  store i32 1, ptr %i.qe, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !820
  %i.qf = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.qb) #22 ; 0 uses
  %i.qg = load ptr, ptr %i.a, align 8, !tbaa !820 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 1528
  store ptr %i.qg, ptr %i.qh, align 8, !tbaa !183
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 1536
  store i32 %i.pz, ptr %i.qi, align 8, !tbaa !184
  br i1 %i.qc, label %vector.ph470, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179

vector.ph470:                                     ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit171
  %i.qj = load i32, ptr %i.qe, align 8, !tbaa !182
  %i.qk = and i32 %i.qj, 1
  %.not.i.i172 = icmp eq i32 %i.qk, 0
  %i.ql = select i1 %.not.i.i172, double 2.000000e-01, double 1.000000e-01
  %broadcast.splatinsert473 = insertelement <2 x double> poison, double %i.ql, i64 0
  %broadcast.splat474 = shufflevector <2 x double> %broadcast.splatinsert473, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body475

vector.body475:                                   ; preds = %vector.body475, %vector.ph470
  %index476 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body475 ] ; 2 uses
  %vec.ind477 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph470 ], [ %vec.ind.next479, %vector.body475 ] ; 2 uses
  %i.qm = uitofp nneg <2 x i32> %vec.ind477 to <2 x double> ; 2 uses
  %i.qn = fadd nnan <2 x double> %i.qm, splat (double 1.100000e+00)
  %i.qo = fmul nnan <2 x double> %broadcast.splat474, %i.qn
  %i.qp = fadd <2 x double> %i.qm, splat (double 1.123450e+00)
  %i.qq = fdiv <2 x double> %i.qo, %i.qp
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %index476
  store <2 x double> %i.qq, ptr %i.qr, align 8, !tbaa !73
  %index.next478 = add nuw i64 %index476, 2       ; 2 uses
  %vec.ind.next479 = add <2 x i32> %vec.ind477, splat (i32 2)
  %i.qs = icmp eq i64 %index.next478, %wide.trip.count.i.i174
  br i1 %i.qs, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179, label %vector.body475, !llvm.loop !843

.loopexit:                                        ; preds = %vector.body501, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179
  %i.qt = getelementptr inbounds nuw i8, ptr %i.tq, i64 1544 ; 2 uses
  store i32 2, ptr %i.qt, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !820
  %i.qu = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.qb) #22 ; 0 uses
  %i.qv = load ptr, ptr %i.a, align 8, !tbaa !820 ; 5 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.tq, i64 1552
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !183
  %i.qx = getelementptr inbounds nuw i8, ptr %i.tq, i64 1560
  store i32 %i.pz, ptr %i.qx, align 8, !tbaa !184
  br i1 %i.qc, label %vector.ph511, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1

vector.ph511:                                     ; preds = %.loopexit
  %i.qy = load i32, ptr %i.qt, align 8, !tbaa !182
  %i.qz = and i32 %i.qy, 1
  %.not.i.i172.1 = icmp eq i32 %i.qz, 0
  %i.ra = select i1 %.not.i.i172.1, double 2.000000e-01, double 1.000000e-01
  %broadcast.splatinsert514 = insertelement <2 x double> poison, double %i.ra, i64 0
  %broadcast.splat515 = shufflevector <2 x double> %broadcast.splatinsert514, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph511
  %index517 = phi i64 [ 0, %vector.ph511 ], [ %index.next519, %vector.body516 ] ; 2 uses
  %vec.ind518 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph511 ], [ %vec.ind.next520, %vector.body516 ] ; 2 uses
  %i.rb = uitofp nneg <2 x i32> %vec.ind518 to <2 x double> ; 2 uses
  %i.rc = fadd nnan <2 x double> %i.rb, splat (double 1.100000e+00)
  %i.rd = fmul nnan <2 x double> %broadcast.splat515, %i.rc
  %i.re = fadd <2 x double> %i.rb, splat (double 1.123450e+00)
  %i.rf = fdiv <2 x double> %i.rd, %i.re
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %index517
  store <2 x double> %i.rf, ptr %i.rg, align 8, !tbaa !73
  %index.next519 = add nuw i64 %index517, 2       ; 2 uses
  %vec.ind.next520 = add <2 x i32> %vec.ind518, splat (i32 2)
  %i.rh = icmp eq i64 %index.next519, %wide.trip.count.i.i174
  br i1 %i.rh, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1, label %vector.body516, !llvm.loop !844

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1: ; preds = %vector.body516, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ri = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23 ; 3 uses
  %i.rj = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 368
  store ptr %i.ri, ptr %i.rk, align 8, !tbaa !845
  %i.rl = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ht) #23 ; 2 uses
  store ptr %i.rl, ptr %i.ri, align 8, !tbaa !834
  %i.rm = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ht) #23 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !834
  br i1 %i.dm, label %.loopexit.1, label %vector.ph526

vector.ph526:                                     ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1
  %broadcast.splatinsert529 = insertelement <2 x ptr> poison, ptr %i.qv, i64 0
  %broadcast.splat530 = shufflevector <2 x ptr> %broadcast.splatinsert529, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph526
  %index532 = phi i64 [ 0, %vector.ph526 ], [ %index.next533, %vector.body531 ] ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %index532 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  store <2 x ptr> %broadcast.splat530, ptr %i.ro, align 8, !tbaa !820
  store <2 x ptr> %broadcast.splat530, ptr %i.rp, align 8, !tbaa !820
  %index.next533 = add nuw i64 %index532, 4       ; 2 uses
  %i.rq = icmp eq i64 %index.next533, %wide.trip.count.i.i
  br i1 %i.rq, label %vector.body542, label %vector.body531, !llvm.loop !848

vector.body542:                                   ; preds = %vector.body531, %vector.body542
  %index543 = phi i64 [ %index.next546, %vector.body542 ], [ 0, %vector.body531 ] ; 2 uses
  %vec.ind544 = phi <2 x i64> [ %vec.ind.next547, %vector.body542 ], [ <i64 0, i64 1>, %vector.body531 ] ; 3 uses
  %i.rr = shl <2 x i64> %vec.ind544, splat (i64 2)
  %step.add545 = shl <2 x i64> %vec.ind544, splat (i64 2)
  %i.rs = add <2 x i64> %step.add545, splat (i64 8)
  %i.rt = and <2 x i64> %i.rr, splat (i64 4294967292)
  %i.ru = and <2 x i64> %i.rs, splat (i64 4294967292)
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.qv, <2 x i64> %i.rt
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, <2 x i64> %i.ru
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %index543 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  store <2 x ptr> %i.rv, ptr %i.rx, align 8, !tbaa !820
  store <2 x ptr> %i.rw, ptr %i.ry, align 8, !tbaa !820
  %index.next546 = add nuw i64 %index543, 4       ; 2 uses
  %vec.ind.next547 = add nuw <2 x i64> %vec.ind544, splat (i64 4)
  %i.rz = icmp eq i64 %index.next546, %wide.trip.count.i.i
  br i1 %i.rz, label %.loopexit.1, label %vector.body542, !llvm.loop !849

.loopexit.1:                                      ; preds = %vector.body542, %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.1
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rj, i64 1568 ; 2 uses
  store i32 3, ptr %i.sa, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !820
  %i.sb = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.qb) #22 ; 0 uses
  %i.sc = load ptr, ptr %i.a, align 8, !tbaa !820 ; 5 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rj, i64 1576
  store ptr %i.sc, ptr %i.sd, align 8, !tbaa !183
  %i.se = getelementptr inbounds nuw i8, ptr %i.rj, i64 1584
  store i32 %i.pz, ptr %i.se, align 8, !tbaa !184
  br i1 %i.qc, label %vector.ph553, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.2

vector.ph553:                                     ; preds = %.loopexit.1
  %i.sf = load i32, ptr %i.sa, align 8, !tbaa !182
  %i.sg = and i32 %i.sf, 1
  %.not.i.i172.2 = icmp eq i32 %i.sg, 0
  %i.sh = select i1 %.not.i.i172.2, double 2.000000e-01, double 1.000000e-01
  %broadcast.splatinsert556 = insertelement <2 x double> poison, double %i.sh, i64 0
  %broadcast.splat557 = shufflevector <2 x double> %broadcast.splatinsert556, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph553
  %index559 = phi i64 [ 0, %vector.ph553 ], [ %index.next561, %vector.body558 ] ; 2 uses
  %vec.ind560 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph553 ], [ %vec.ind.next562, %vector.body558 ] ; 2 uses
  %i.si = uitofp nneg <2 x i32> %vec.ind560 to <2 x double> ; 2 uses
  %i.sj = fadd nnan <2 x double> %i.si, splat (double 1.100000e+00)
  %i.sk = fmul nnan <2 x double> %broadcast.splat557, %i.sj
  %i.sl = fadd <2 x double> %i.si, splat (double 1.123450e+00)
  %i.sm = fdiv <2 x double> %i.sk, %i.sl
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %index559
  store <2 x double> %i.sm, ptr %i.sn, align 8, !tbaa !73
  %index.next561 = add nuw i64 %index559, 2       ; 2 uses
  %vec.ind.next562 = add <2 x i32> %vec.ind560, splat (i32 2)
  %i.so = icmp eq i64 %index.next561, %wide.trip.count.i.i174
  br i1 %i.so, label %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.2, label %vector.body558, !llvm.loop !850

_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.2: ; preds = %vector.body558, %.loopexit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.sp = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23 ; 3 uses
  %i.sq = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 9 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 376
  store ptr %i.sp, ptr %i.sr, align 8, !tbaa !845
  %i.ss = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ht) #23 ; 2 uses
  store ptr %i.ss, ptr %i.sp, align 8, !tbaa !834
  %i.st = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ht) #23 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store ptr %i.st, ptr %i.su, align 8, !tbaa !834
  br i1 %i.dm, label %.loopexit.2, label %vector.ph568

vector.ph568:                                     ; preds = %_ZN12_GLOBAL__N_116allocAndInitDataERN8LoopData9RealArrayEi.exit179.2
  %broadcast.splatinsert571 = insertelement <2 x ptr> poison, ptr %i.sc, i64 0
  %broadcast.splat572 = shufflevector <2 x ptr> %broadcast.splatinsert571, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body573

vector.body573:                                   ; preds = %vector.body573, %vector.ph568
  %index574 = phi i64 [ 0, %vector.ph568 ], [ %index.next575, %vector.body573 ] ; 2 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %index574 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  store <2 x ptr> %broadcast.splat572, ptr %i.sv, align 8, !tbaa !820
  store <2 x ptr> %broadcast.splat572, ptr %i.sw, align 8, !tbaa !820
  %index.next575 = add nuw i64 %index574, 4       ; 2 uses
  %i.sx = icmp eq i64 %index.next575, %wide.trip.count.i.i
end_hunk_0
