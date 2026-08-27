Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrect?download=true
inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %.017082238 = phi i32 [ 0, %.lr.ph2243 ], [ %i.ilc, %.thread1866 ]
  %i.btq = phi <8 x float> [ zeroinitializer, %.lr.ph2243 ], [ %i.bun, %.thread1866 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.btr = tail call ptr @dt_alloc_aligned(i64 noundef 393216) #20 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.btr, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store ptr %i.btr, ptr %i.k, align 16, !tbaa !59
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btr, i64 65536 ; 178 uses
  store ptr %i.bts, ptr %i.ep, align 8, !tbaa !59
  %i.btt = getelementptr inbounds nuw i8, ptr %i.btr, i64 131072
  store ptr %i.btt, ptr %i.eq, align 16, !tbaa !59
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btr, i64 196608 ; 12 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btr, i64 229376 ; 12 uses
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btr, i64 262144 ; 5 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btr, i64 294912 ; 5 uses
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btr, i64 327680 ; 5 uses
  %i.btz = getelementptr inbounds nuw i8, ptr %i.btr, i64 360448 ; 5 uses
  br i1 %brmerge2271, label %.preheader1975, label %.preheader1968.preheader

.preheader1968.preheader:                         ; preds = %bb.o
  %i.bua = ptrtoaddr ptr %i.btr to i64
  %i.bub = sub i64 %i.qa, %i.bua
  %scevgep3849 = getelementptr i8, ptr %i.btr, i64 64000
  %scevgep3851 = getelementptr i8, ptr %i.btr, i64 67076
  br label %.preheader1968

.preheader1975.loopexit:                          ; preds = %._crit_edge2081
  %i.buc = fadd reassoc nsz arcp contract afn float %.sroa.02820.0, %.sroa.02796.3
  %i.bud = fadd reassoc nsz arcp contract afn float %.sroa.42807.0, %.sroa.62784.3
  %i.bue = fadd reassoc nsz arcp contract afn float %.sroa.7.0, %.sroa.9.3
  %i.buf = fadd reassoc nsz arcp contract afn float %.sroa.102810.0, %.sroa.12.3
  %i.bug = insertelement <8 x float> poison, float %.sroa.92792.3, i64 4
  %i.buh = insertelement <8 x float> %i.bug, float %.sroa.122802.3, i64 5
  %i.bui = insertelement <8 x float> %i.buh, float %.sroa.122794.3, i64 6
  %i.buj = insertelement <8 x float> %i.bui, float %.sroa.02782.3, i64 7
  %i.buk = shufflevector <4 x float> %i.ett, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bul = shufflevector <8 x float> %i.buk, <8 x float> %i.buj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bum = fadd reassoc nsz arcp contract afn <8 x float> %i.btq, %i.bul
  br label %.preheader1975

.preheader1975:                                   ; preds = %.preheader1975.loopexit, %bb.o
  %.sroa.02796.0 = phi float [ %.sroa.02820.0, %bb.o ], [ %i.buc, %.preheader1975.loopexit ] ; 2 uses
  %.sroa.62784.0 = phi float [ %.sroa.42807.0, %bb.o ], [ %i.bud, %.preheader1975.loopexit ] ; 4 uses
  %.sroa.9.0 = phi float [ %.sroa.7.0, %bb.o ], [ %i.bue, %.preheader1975.loopexit ] ; 4 uses
  %.sroa.12.0 = phi float [ %.sroa.102810.0, %bb.o ], [ %i.buf, %.preheader1975.loopexit ] ; 4 uses
  %i.bun = phi <8 x float> [ %i.btq, %bb.o ], [ %i.bum, %.preheader1975.loopexit ] ; 9 uses
  %i.buo = extractelement <8 x float> %i.bun, i64 7 ; 3 uses
  %i.bup = fcmp reassoc nsz arcp contract afn une float %i.buo, 0.000000e+00
  br i1 %i.bup, label %bb.ak, label %bb.al

.preheader1968:                                   ; preds = %.preheader1968.preheader, %._crit_edge2081
  %indvar3809 = phi i64 [ 0, %.preheader1968.preheader ], [ %indvar.next3810, %._crit_edge2081 ] ; 2 uses
  %.sroa.02796.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.02796.3, %._crit_edge2081 ]
  %.sroa.122802.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.122802.3, %._crit_edge2081 ]
  %.sroa.92792.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.92792.3, %._crit_edge2081 ]
  %.sroa.122794.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.122794.3, %._crit_edge2081 ]
  %.sroa.02782.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.02782.3, %._crit_edge2081 ]
  %.sroa.62784.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.62784.3, %._crit_edge2081 ]
  %.sroa.9.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.9.3, %._crit_edge2081 ]
  %.sroa.12.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.12.3, %._crit_edge2081 ]
  %indvars.iv2498 = phi i64 [ -8, %.preheader1968.preheader ], [ %indvars.iv.next2499, %._crit_edge2081 ] ; 9 uses
  %i.buq = phi <4 x float> [ zeroinitializer, %.preheader1968.preheader ], [ %i.ett, %._crit_edge2081 ]
  %i.bur = mul i64 %i.qb, %indvar3809
  %i.bus = add i64 %i.bub, %i.bur
  %i.but = add nsw i64 %indvars.iv2498, 8
  %i.buu = udiv i64 %i.but, 112
  %i.buv = add nuw nsw i64 %i.buu, 1
  %i.buw = add nsw i64 %indvars.iv2498, 128       ; 2 uses
  %i.bux = trunc nuw nsw i64 %i.buw to i32
  %i.buy = tail call i32 @llvm.smin.i32(i32 %i.bux, i32 %i.et)
  %i.buz = trunc nsw i64 %indvars.iv2498 to i32   ; 2 uses
  %i.bva = sub nsw i32 %i.buy, %i.buz             ; 9 uses
  %i.bvb = icmp sgt i64 %indvars.iv2498, -1       ; 3 uses
  %i.bvc = select i1 %i.bvb, i32 0, i32 8         ; 3 uses
  %i.bvd = icmp sgt i64 %i.buw, %i.bk
  %i.bve = trunc i64 %indvars.iv2498 to i32
  %i.bvf = sub i32 %i.ah, %i.bve
  %i.bvg = select i1 %i.bvd, i32 %i.bvf, i32 %i.bva ; 8 uses
  %i.bvh = icmp slt i32 %i.bvc, %i.bvg            ; 2 uses
  %i.bvi = icmp slt i32 %i.bvg, %i.bva            ; 3 uses
  %i.bvj = sub nsw i32 %i.bva, %i.bvg             ; 3 uses
  %i.bvk = tail call i32 @llvm.smin.i32(i32 %i.bvj, i32 8)
  %i.bvl = icmp sgt i32 %i.bvj, 0                 ; 2 uses
  %i.bvm = icmp sge i32 %i.bvc, %i.bvg
  %.not1793 = xor i1 %i.bvi, true
  %i.bvn = icmp slt i32 %i.bvj, 1
  %i.bvo = add nsw i32 %i.bva, -3
  %i.bvp = icmp sgt i32 %i.bva, 6
  %i.bvq = add nsw i32 %i.bva, -4
  %i.bvr = icmp sgt i32 %i.bva, 8
  %i.bvs = add nsw i32 %i.bva, -8
  %i.bvt = icmp sgt i32 %i.bva, 16
  %i.bvu = mul nsw i64 %i.buv, %i.fx
  %i.bvv = zext nneg i32 %i.bvc to i64            ; 3 uses
  %i.bvw = sext i32 %i.bvg to i64                 ; 3 uses
  %i.bvx = sext i32 %i.bvk to i64                 ; 3 uses
  %i.bvy = sext i32 %i.bvo to i64
  %wide.trip.count2343 = zext nneg i32 %i.bvg to i64
  %brmerge2277.not2309 = select i1 %i.bvi, i1 %i.bvl, i1 false
  %wide.trip.count2370 = zext nneg i32 %i.bvg to i64
  %wide.trip.count2378 = zext nneg i32 %i.bvg to i64
  %invariant.op4484 = add i64 1, %i.bvu
  br label %bb.p

._crit_edge2081:                                  ; preds = %bb.aj
  %indvars.iv.next2499 = add nsw i64 %indvars.iv2498, 112 ; 2 uses
  %i.bvz = icmp slt i64 %indvars.iv.next2499, %i.bk
  %indvar.next3810 = add i64 %indvar3809, 1
  br i1 %i.bvz, label %.preheader1968, label %.preheader1975.loopexit

bb.p:                                             ; preds = %.preheader1968, %bb.aj
  %indvar3753 = phi i32 [ 0, %.preheader1968 ], [ %indvar.next3754, %bb.aj ] ; 5 uses
  %.sroa.02796.2 = phi nsz float [ %.sroa.02796.1, %.preheader1968 ], [ %.sroa.02796.3, %bb.aj ] ; 2 uses
  %.sroa.122802.2 = phi nsz float [ %.sroa.122802.1, %.preheader1968 ], [ %.sroa.122802.3, %bb.aj ] ; 2 uses
  %.sroa.92792.2 = phi nsz float [ %.sroa.92792.1, %.preheader1968 ], [ %.sroa.92792.3, %bb.aj ] ; 2 uses
  %.sroa.122794.2 = phi nsz float [ %.sroa.122794.1, %.preheader1968 ], [ %.sroa.122794.3, %bb.aj ] ; 2 uses
  %.sroa.02782.2 = phi nsz float [ %.sroa.02782.1, %.preheader1968 ], [ %.sroa.02782.3, %bb.aj ] ; 2 uses
  %.sroa.62784.2 = phi nsz float [ %.sroa.62784.1, %.preheader1968 ], [ %.sroa.62784.3, %bb.aj ] ; 2 uses
  %.sroa.9.2 = phi nsz float [ %.sroa.9.1, %.preheader1968 ], [ %.sroa.9.3, %bb.aj ] ; 2 uses
  %.sroa.12.2 = phi nsz float [ %.sroa.12.1, %.preheader1968 ], [ %.sroa.12.3, %bb.aj ] ; 2 uses
  %indvars.iv2494 = phi i64 [ -8, %.preheader1968 ], [ %indvars.iv.next2495, %bb.aj ] ; 10 uses
  %indvars.iv2458 = phi i32 [ -5, %.preheader1968 ], [ %indvars.iv.next2459, %bb.aj ] ; 4 uses
  %indvars.iv2403 = phi i32 [ 8, %.preheader1968 ], [ %indvars.iv.next2404, %bb.aj ] ; 2 uses
  %indvars.iv2401 = phi i32 [ 120, %.preheader1968 ], [ %indvars.iv.next2402, %bb.aj ] ; 3 uses
  %i.bwa = phi <4 x float> [ %i.buq, %.preheader1968 ], [ %i.ett, %bb.aj ] ; 2 uses
  %i.bwb = mul nsw i32 %indvar3753, -112
  %i.bwc = or disjoint i32 %i.bwb, 1
  %i.bwd = mul nsw i32 %indvar3753, -112
  %i.bwe = or disjoint i32 %i.bwd, 1
  %smax3813 = call i32 @llvm.smax.i32(i32 %indvars.iv2458, i32 0)
  %i.bwf = zext nneg i32 %smax3813 to i64         ; 2 uses
  %i.bwg = add nuw nsw i64 %i.bwf, 1
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.eu)
  %i.bwh = add i32 %smin, -3
  %smin3814 = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.bwh)
  %i.bwi = zext i32 %smin3814 to i64
  %umax3815 = call i64 @llvm.umax.i64(i64 %i.bwg, i64 %i.bwi)
  %i.bwj = sub nsw i64 %umax3815, %i.bwf          ; 7 uses
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv2458, i32 0)
  %i.bwk = zext nneg i32 %smax to i64
  %i.bwl = shl nuw nsw i64 %i.bwk, 2
  %i.bwm = add i64 %i.bus, %i.bwl
  %i.bwn = mul nsw i32 %indvar3753, -112
  %i.bwo = add i32 %i.bwn, -9
  %.neg4035 = mul i32 %indvar3753, 112
  %smax2460 = call i32 @llvm.smax.i32(i32 %indvars.iv2458, i32 0)
  %i.bwp = zext nneg i32 %smax2460 to i64         ; 5 uses
  %smin2431 = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.eu)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(393216) %i.btr, i8 0, i64 393216, i1 false)
  %i.bwq = add nsw i64 %indvars.iv2494, 8
  %i.bwr = udiv i64 %i.bwq, 112
  %i.bws = add nsw i64 %indvars.iv2494, 128       ; 2 uses
  %i.bwt = trunc i64 %i.bws to i32
  %i.bwu = tail call i32 @llvm.smin.i32(i32 %i.bwt, i32 %i.eu) ; 6 uses
  %i.bwv = trunc i64 %indvars.iv2494 to i32       ; 2 uses
  %i.bww = sub i32 %i.bwu, %i.bwv                 ; 7 uses
  %i.bwx = icmp slt i64 %indvars.iv2494, 0        ; 4 uses
  %i.bwy = select i1 %i.bwx, i32 8, i32 0         ; 5 uses
  %i.bwz = icmp sgt i64 %i.bws, %i.af
  %i.bxa = trunc i64 %indvars.iv2494 to i32
  %i.bxb = sub i32 %i.ae, %i.bxa
  %i.bxc = select i1 %i.bwz, i32 %i.bxb, i32 %i.bww ; 12 uses
  %i.bxd = icmp slt i32 %i.bwy, %i.bxc            ; 2 uses
  %or.cond2272 = select i1 %i.bvh, i1 %i.bxd, i1 false
  br i1 %or.cond2272, label %.lr.ph1995.preheader, label %._crit_edge2000.split

.lr.ph1995.preheader:                             ; preds = %bb.p
  %i.bxe = zext nneg i32 %i.bwy to i64            ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bxc to i64  ; 3 uses
  %invariant.gep2969 = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv2494
  %xtraiter4200 = and i64 %wide.trip.count, 7     ; 2 uses
  %lcmp.mod4201.not = icmp eq i64 %xtraiter4200, 0
  %i.bxf = sub nsw i64 %i.bxe, %wide.trip.count
  %i.bxg = icmp ugt i64 %i.bxf, -8
  br label %.lr.ph1995

._crit_edge2000.split:                            ; preds = %._crit_edge1996, %bb.p
  %i.bxh = icmp sge i32 %i.bwy, %i.bxc
  %or.cond2274.not = select i1 %i.bvb, i1 true, i1 %i.bxh
  br i1 %or.cond2274.not, label %.loopexit1959.split, label %.preheader1918.preheader

.preheader1918.preheader:                         ; preds = %._crit_edge2000.split
  %i.bxi = zext nneg i32 %i.bwy to i64            ; 17 uses
  %wide.trip.count2349 = zext nneg i32 %i.bxc to i64 ; 17 uses
  %i.bxj = xor i64 %i.bxi, -1
  %i.bxk = add nsw i64 %i.bxj, %wide.trip.count2349 ; 8 uses
  %xtraiter4204 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4205.not = icmp eq i64 %xtraiter4204, 0
  br i1 %lcmp.mod4205.not, label %.prol.loopexit4203, label %.prol.preheader4202

.prol.preheader4202:                              ; preds = %.preheader1918.preheader, %.prol.preheader4202
  %indvars.iv2345.prol = phi i64 [ %indvars.iv.next2346.prol, %.prol.preheader4202 ], [ %i.bxi, %.preheader1918.preheader ] ; 4 uses
  %prol.iter4206 = phi i64 [ %prol.iter4206.next, %.prol.preheader4202 ], [ 0, %.preheader1918.preheader ]
  %indvars.iv2345.tr.prol = trunc nuw i64 %indvars.iv2345.prol to i32
  %i.bxl = shl nuw i32 %indvars.iv2345.tr.prol, 1
  %i.bxm = and i32 %i.bxl, 2
  %i.bxn = lshr i32 %i.q, %i.bxm
  %i.bxo = and i32 %i.bxn, 3
  %i.bxp = zext nneg i32 %i.bxo to i64
  %i.bxq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bxp
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !59 ; 2 uses
  %i.bxs = shl i64 %indvars.iv2345.prol, 32
  %sext.prol = add i64 %i.bxs, 8796093022208
  %i.bxt = ashr exact i64 %sext.prol, 30
  %i.bxu = getelementptr inbounds i8, ptr %i.bxr, i64 %i.bxt
  %i.bxv = load float, ptr %i.bxu, align 4, !tbaa !58
  %i.bxw = getelementptr inbounds nuw [4 x i8], ptr %i.bxr, i64 %indvars.iv2345.prol
  store float %i.bxv, ptr %i.bxw, align 4, !tbaa !58
  %indvars.iv.next2346.prol = add nuw nsw i64 %indvars.iv2345.prol, 1 ; 2 uses
  %prol.iter4206.next = add i64 %prol.iter4206, 1 ; 2 uses
  %prol.iter4206.cmp.not = icmp eq i64 %prol.iter4206.next, %xtraiter4204
  br i1 %prol.iter4206.cmp.not, label %.prol.loopexit4203, label %.prol.preheader4202, !llvm.loop !60

.prol.loopexit4203:                               ; preds = %.prol.preheader4202, %.preheader1918.preheader
  %indvars.iv2345.unr = phi i64 [ %i.bxi, %.preheader1918.preheader ], [ %indvars.iv.next2346.prol, %.prol.preheader4202 ]
  %i.bxx = icmp ult i64 %i.bxk, 3
  br i1 %i.bxx, label %._crit_edge2003.preheader, label %.preheader1918.preheader.new

.lr.ph1995:                                       ; preds = %.lr.ph1995.preheader, %._crit_edge1996
  %indvars.iv2340 = phi i64 [ %i.bvv, %.lr.ph1995.preheader ], [ %indvars.iv.next2341, %._crit_edge1996 ] ; 4 uses
  %i.bxy = add nsw i64 %indvars.iv2340, %indvars.iv2498
  %indvars.iv2340.tr = trunc i64 %indvars.iv2340 to i32
  %i.bxz = shl i32 %indvars.iv2340.tr, 2
  %.tr.i1816 = and i32 %i.bxz, 28                 ; 2 uses
  %i.bya = lshr i32 %i.q, %.tr.i1816              ; 2 uses
  %i.byb = and i32 %i.bya, 3                      ; 2 uses
  %i.byc = or disjoint i32 %.tr.i1816, 2
  %i.byd = lshr i32 %i.q, %i.byc
  %i.bye = xor i32 %i.byd, %i.bya
  %i.byf = and i32 %i.bye, 3                      ; 5 uses
  %i.byg = mul nsw i64 %i.bxy, %i.af
  %.idx = shl nuw nsw i64 %indvars.iv2340, 9      ; 9 uses
  %gep2970 = getelementptr [4 x i8], ptr %invariant.gep2969, i64 %i.byg ; 9 uses
  br i1 %lcmp.mod4201.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph1995, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.bxe, %.lr.ph1995 ] ; 3 uses
  %.017261992.prol = phi i32 [ %i.byn, %.prol.preheader ], [ %i.byb, %.lr.ph1995 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph1995 ]
  %gep.prol = getelementptr [4 x i8], ptr %gep2970, i64 %indvars.iv.prol
  %i.byh = load float, ptr %gep.prol, align 4, !tbaa !58
  %i.byi = zext nneg i32 %.017261992.prol to i64
  %i.byj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byi
  %i.byk = load ptr, ptr %i.byj, align 8, !tbaa !59
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byk, i64 %.idx
  %i.bym = getelementptr inbounds nuw [4 x i8], ptr %i.byl, i64 %indvars.iv.prol
  store float %i.byh, ptr %i.bym, align 4, !tbaa !58
  %i.byn = xor i32 %.017261992.prol, %i.byf       ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4200
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !62

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph1995
  %indvars.iv.unr = phi i64 [ %i.bxe, %.lr.ph1995 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %.017261992.unr = phi i32 [ %i.byb, %.lr.ph1995 ], [ %i.byn, %.prol.preheader ] ; 8 uses
  br i1 %i.bxg, label %._crit_edge1996, label %.lr.ph1995.new

.lr.ph1995.new:                                   ; preds = %.prol.loopexit
  %i.byo = zext nneg i32 %.017261992.unr to i64
  %i.byp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byo
  %i.byq = load ptr, ptr %i.byp, align 8, !tbaa !59
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byq, i64 %.idx
  %i.bys = xor i32 %.017261992.unr, %i.byf
  %i.byt = zext nneg i32 %i.bys to i64
  %i.byu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byt
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !59
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byv, i64 %.idx
  %i.byx = zext nneg i32 %.017261992.unr to i64
  %i.byy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byx
  %i.byz = load ptr, ptr %i.byy, align 8, !tbaa !59
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byz, i64 %.idx
  %i.bzb = xor i32 %.017261992.unr, %i.byf
  %i.bzc = zext nneg i32 %i.bzb to i64
  %i.bzd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzc
  %i.bze = load ptr, ptr %i.bzd, align 8, !tbaa !59
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bze, i64 %.idx
  %i.bzg = zext nneg i32 %.017261992.unr to i64
  %i.bzh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzg
  %i.bzi = load ptr, ptr %i.bzh, align 8, !tbaa !59
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzi, i64 %.idx
  %i.bzk = xor i32 %.017261992.unr, %i.byf
  %i.bzl = zext nneg i32 %i.bzk to i64
  %i.bzm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzl
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !59
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzn, i64 %.idx
  %i.bzp = zext nneg i32 %.017261992.unr to i64
  %i.bzq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzp
  %i.bzr = load ptr, ptr %i.bzq, align 8, !tbaa !59
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzr, i64 %.idx
  %i.bzt = xor i32 %.017261992.unr, %i.byf
  %i.bzu = zext nneg i32 %i.bzt to i64
  %i.bzv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzu
  %i.bzw = load ptr, ptr %i.bzv, align 8, !tbaa !59
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzw, i64 %.idx
  br label %bb.q

._crit_edge1996:                                  ; preds = %bb.q, %.prol.loopexit
  %indvars.iv.next2341 = add nuw nsw i64 %indvars.iv2340, 1 ; 2 uses
  %exitcond2344.not = icmp eq i64 %indvars.iv.next2341, %wide.trip.count2343
  br i1 %exitcond2344.not, label %._crit_edge2000.split, label %.lr.ph1995

bb.q:                                             ; preds = %bb.q, %.lr.ph1995.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph1995.new ], [ %indvars.iv.next.7, %bb.q ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %gep2970, i64 %indvars.iv
  %i.bzy = load float, ptr %gep, align 4, !tbaa !58
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %i.byr, i64 %indvars.iv
  store float %i.bzy, ptr %i.bzz, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %gep2970, i64 %indvars.iv.next
  %i.caa = load float, ptr %gep.1, align 4, !tbaa !58
  %i.cab = getelementptr inbounds nuw [4 x i8], ptr %i.byw, i64 %indvars.iv.next
  store float %i.caa, ptr %i.cab, align 4, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %gep2970, i64 %indvars.iv.next.1
  %i.cac = load float, ptr %gep.2, align 4, !tbaa !58
  %i.cad = getelementptr inbounds nuw [4 x i8], ptr %i.bza, i64 %indvars.iv.next.1
  store float %i.cac, ptr %i.cad, align 4, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %gep2970, i64 %indvars.iv.next.2
  %i.cae = load float, ptr %gep.3, align 4, !tbaa !58
  %i.caf = getelementptr inbounds nuw [4 x i8], ptr %i.bzf, i64 %indvars.iv.next.2
  store float %i.cae, ptr %i.caf, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %gep2970, i64 %indvars.iv.next.3
  %i.cag = load float, ptr %gep.4, align 4, !tbaa !58
  %i.cah = getelementptr inbounds nuw [4 x i8], ptr %i.bzj, i64 %indvars.iv.next.3
  store float %i.cag, ptr %i.cah, align 4, !tbaa !58
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %gep2970, i64 %indvars.iv.next.4
  %i.cai = load float, ptr %gep.5, align 4, !tbaa !58
  %i.caj = getelementptr inbounds nuw [4 x i8], ptr %i.bzo, i64 %indvars.iv.next.4
  store float %i.cai, ptr %i.caj, align 4, !tbaa !58
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %gep2970, i64 %indvars.iv.next.5
  %i.cak = load float, ptr %gep.6, align 4, !tbaa !58
  %i.cal = getelementptr inbounds nuw [4 x i8], ptr %i.bzs, i64 %indvars.iv.next.5
  store float %i.cak, ptr %i.cal, align 4, !tbaa !58
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [4 x i8], ptr %gep2970, i64 %indvars.iv.next.6
  %i.cam = load float, ptr %gep.7, align 4, !tbaa !58
  %i.can = getelementptr inbounds nuw [4 x i8], ptr %i.bzx, i64 %indvars.iv.next.6
  store float %i.cam, ptr %i.can, align 4, !tbaa !58
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond2339.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond2339.not.7, label %._crit_edge1996, label %bb.q

._crit_edge2003:                                  ; preds = %._crit_edge2003.prol.loopexit, %._crit_edge2003
  %indvars.iv2345.1 = phi i64 [ %indvars.iv.next2346.1.3, %._crit_edge2003 ], [ %indvars.iv2345.1.unr, %._crit_edge2003.prol.loopexit ] ; 7 uses
  %indvars.iv2345.1.tr = trunc nuw i64 %indvars.iv2345.1 to i32
  %i.cao = shl nuw i32 %indvars.iv2345.1.tr, 1
  %i.cap = and i32 %i.cao, 2
  %i.caq = or disjoint i32 %i.cap, 4
  %i.car = lshr i32 %i.q, %i.caq
  %i.cas = and i32 %i.car, 3
  %i.cat = zext nneg i32 %i.cas to i64
  %i.cau = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cat
  %i.cav = load ptr, ptr %i.cau, align 8, !tbaa !59 ; 2 uses
  %i.caw = shl i64 %indvars.iv2345.1, 32
  %sext2915 = add i64 %i.caw, 8246337208320
  %i.cax = ashr exact i64 %sext2915, 30
  %i.cay = getelementptr inbounds i8, ptr %i.cav, i64 %i.cax
  %i.caz = load float, ptr %i.cay, align 4, !tbaa !58
  %i.cba = getelementptr inbounds nuw [4 x i8], ptr %i.cav, i64 %indvars.iv2345.1
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cba, i64 512
  store float %i.caz, ptr %i.cbb, align 4, !tbaa !58
  %indvars.iv.next2346.1 = add nuw nsw i64 %indvars.iv2345.1, 1 ; 3 uses
  %indvars.iv2345.1.tr.1 = trunc nuw i64 %indvars.iv.next2346.1 to i32
  %i.cbc = shl nuw i32 %indvars.iv2345.1.tr.1, 1
  %i.cbd = and i32 %i.cbc, 2
  %i.cbe = or disjoint i32 %i.cbd, 4
  %i.cbf = lshr i32 %i.q, %i.cbe
  %i.cbg = and i32 %i.cbf, 3
  %i.cbh = zext nneg i32 %i.cbg to i64
  %i.cbi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cbh
  %i.cbj = load ptr, ptr %i.cbi, align 8, !tbaa !59 ; 2 uses
  %i.cbk = shl i64 %indvars.iv.next2346.1, 32
  %sext2915.1 = add i64 %i.cbk, 8246337208320
  %i.cbl = ashr exact i64 %sext2915.1, 30
  %i.cbm = getelementptr inbounds i8, ptr %i.cbj, i64 %i.cbl
  %i.cbn = load float, ptr %i.cbm, align 4, !tbaa !58
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %i.cbj, i64 %indvars.iv.next2346.1
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbo, i64 512
  store float %i.cbn, ptr %i.cbp, align 4, !tbaa !58
  %indvars.iv.next2346.1.1 = add nuw nsw i64 %indvars.iv2345.1, 2 ; 3 uses
  %indvars.iv2345.1.tr.2 = trunc nuw i64 %indvars.iv.next2346.1.1 to i32
  %i.cbq = shl nuw i32 %indvars.iv2345.1.tr.2, 1
  %i.cbr = and i32 %i.cbq, 2
  %i.cbs = or disjoint i32 %i.cbr, 4
  %i.cbt = lshr i32 %i.q, %i.cbs
  %i.cbu = and i32 %i.cbt, 3
  %i.cbv = zext nneg i32 %i.cbu to i64
  %i.cbw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cbv
  %i.cbx = load ptr, ptr %i.cbw, align 8, !tbaa !59 ; 2 uses
  %i.cby = shl i64 %indvars.iv.next2346.1.1, 32
  %sext2915.2 = add i64 %i.cby, 8246337208320
  %i.cbz = ashr exact i64 %sext2915.2, 30
  %i.cca = getelementptr inbounds i8, ptr %i.cbx, i64 %i.cbz
  %i.ccb = load float, ptr %i.cca, align 4, !tbaa !58
  %i.ccc = getelementptr inbounds nuw [4 x i8], ptr %i.cbx, i64 %indvars.iv.next2346.1.1
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 512
  store float %i.ccb, ptr %i.ccd, align 4, !tbaa !58
  %indvars.iv.next2346.1.2 = add nuw nsw i64 %indvars.iv2345.1, 3 ; 3 uses
  %indvars.iv2345.1.tr.3 = trunc nuw i64 %indvars.iv.next2346.1.2 to i32
  %i.cce = shl nuw i32 %indvars.iv2345.1.tr.3, 1
  %i.ccf = and i32 %i.cce, 2
  %i.ccg = or disjoint i32 %i.ccf, 4
  %i.cch = lshr i32 %i.q, %i.ccg
  %i.cci = and i32 %i.cch, 3
  %i.ccj = zext nneg i32 %i.cci to i64
  %i.cck = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ccj
  %i.ccl = load ptr, ptr %i.cck, align 8, !tbaa !59 ; 2 uses
  %i.ccm = shl i64 %indvars.iv.next2346.1.2, 32
  %sext2915.3 = add i64 %i.ccm, 8246337208320
  %i.ccn = ashr exact i64 %sext2915.3, 30
  %i.cco = getelementptr inbounds i8, ptr %i.ccl, i64 %i.ccn
  %i.ccp = load float, ptr %i.cco, align 4, !tbaa !58
  %i.ccq = getelementptr inbounds nuw [4 x i8], ptr %i.ccl, i64 %indvars.iv.next2346.1.2
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccq, i64 512
  store float %i.ccp, ptr %i.ccr, align 4, !tbaa !58
  %indvars.iv.next2346.1.3 = add nuw nsw i64 %indvars.iv2345.1, 4 ; 2 uses
  %exitcond2350.1.not.3 = icmp eq i64 %indvars.iv.next2346.1.3, %wide.trip.count2349
  br i1 %exitcond2350.1.not.3, label %._crit_edge2003.1.preheader, label %._crit_edge2003

._crit_edge2003.1.preheader:                      ; preds = %._crit_edge2003, %._crit_edge2003.prol.loopexit
  %xtraiter4219 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4220.not = icmp eq i64 %xtraiter4219, 0
  br i1 %lcmp.mod4220.not, label %._crit_edge2003.1.prol.loopexit, label %._crit_edge2003.1.prol

._crit_edge2003.1.prol:                           ; preds = %._crit_edge2003.1.preheader, %._crit_edge2003.1.prol
  %indvars.iv2345.2.prol = phi i64 [ %indvars.iv.next2346.2.prol, %._crit_edge2003.1.prol ], [ %i.bxi, %._crit_edge2003.1.preheader ] ; 4 uses
  %prol.iter4221 = phi i64 [ %prol.iter4221.next, %._crit_edge2003.1.prol ], [ 0, %._crit_edge2003.1.preheader ]
  %indvars.iv2345.2.tr.prol = trunc nuw i64 %indvars.iv2345.2.prol to i32
  %i.ccs = shl nuw i32 %indvars.iv2345.2.tr.prol, 1
  %i.cct = and i32 %i.ccs, 2
  %i.ccu = or disjoint i32 %i.cct, 8
  %i.ccv = lshr i32 %i.q, %i.ccu
  %i.ccw = and i32 %i.ccv, 3
  %i.ccx = zext nneg i32 %i.ccw to i64
  %i.ccy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ccx
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !59 ; 2 uses
  %i.cda = shl i64 %indvars.iv2345.2.prol, 32
  %sext2916.prol = add i64 %i.cda, 7696581394432
  %i.cdb = ashr exact i64 %sext2916.prol, 30
  %i.cdc = getelementptr inbounds i8, ptr %i.ccz, i64 %i.cdb
  %i.cdd = load float, ptr %i.cdc, align 4, !tbaa !58
  %i.cde = getelementptr inbounds nuw [4 x i8], ptr %i.ccz, i64 %indvars.iv2345.2.prol
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cde, i64 1024
  store float %i.cdd, ptr %i.cdf, align 4, !tbaa !58
  %indvars.iv.next2346.2.prol = add nuw nsw i64 %indvars.iv2345.2.prol, 1 ; 2 uses
  %prol.iter4221.next = add i64 %prol.iter4221, 1 ; 2 uses
  %prol.iter4221.cmp.not = icmp eq i64 %prol.iter4221.next, %xtraiter4219
  br i1 %prol.iter4221.cmp.not, label %._crit_edge2003.1.prol.loopexit, label %._crit_edge2003.1.prol, !llvm.loop !63

._crit_edge2003.1.prol.loopexit:                  ; preds = %._crit_edge2003.1.prol, %._crit_edge2003.1.preheader
  %indvars.iv2345.2.unr = phi i64 [ %i.bxi, %._crit_edge2003.1.preheader ], [ %indvars.iv.next2346.2.prol, %._crit_edge2003.1.prol ]
  %i.cdg = icmp ult i64 %i.bxk, 3
  br i1 %i.cdg, label %._crit_edge2003.2.preheader, label %._crit_edge2003.1

._crit_edge2003.1:                                ; preds = %._crit_edge2003.1.prol.loopexit, %._crit_edge2003.1
  %indvars.iv2345.2 = phi i64 [ %indvars.iv.next2346.2.3, %._crit_edge2003.1 ], [ %indvars.iv2345.2.unr, %._crit_edge2003.1.prol.loopexit ] ; 7 uses
  %indvars.iv2345.2.tr = trunc nuw i64 %indvars.iv2345.2 to i32
  %i.cdh = shl nuw i32 %indvars.iv2345.2.tr, 1
  %i.cdi = and i32 %i.cdh, 2
  %i.cdj = or disjoint i32 %i.cdi, 8
  %i.cdk = lshr i32 %i.q, %i.cdj
  %i.cdl = and i32 %i.cdk, 3
  %i.cdm = zext nneg i32 %i.cdl to i64
  %i.cdn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cdm
  %i.cdo = load ptr, ptr %i.cdn, align 8, !tbaa !59 ; 2 uses
  %i.cdp = shl i64 %indvars.iv2345.2, 32
  %sext2916 = add i64 %i.cdp, 7696581394432
  %i.cdq = ashr exact i64 %sext2916, 30
  %i.cdr = getelementptr inbounds i8, ptr %i.cdo, i64 %i.cdq
  %i.cds = load float, ptr %i.cdr, align 4, !tbaa !58
  %i.cdt = getelementptr inbounds nuw [4 x i8], ptr %i.cdo, i64 %indvars.iv2345.2
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 1024
  store float %i.cds, ptr %i.cdu, align 4, !tbaa !58
  %indvars.iv.next2346.2 = add nuw nsw i64 %indvars.iv2345.2, 1 ; 3 uses
  %indvars.iv2345.2.tr.1 = trunc nuw i64 %indvars.iv.next2346.2 to i32
  %i.cdv = shl nuw i32 %indvars.iv2345.2.tr.1, 1
  %i.cdw = and i32 %i.cdv, 2
  %i.cdx = or disjoint i32 %i.cdw, 8
  %i.cdy = lshr i32 %i.q, %i.cdx
  %i.cdz = and i32 %i.cdy, 3
  %i.cea = zext nneg i32 %i.cdz to i64
  %i.ceb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cea
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !59 ; 2 uses
  %i.ced = shl i64 %indvars.iv.next2346.2, 32
  %sext2916.1 = add i64 %i.ced, 7696581394432
  %i.cee = ashr exact i64 %sext2916.1, 30
  %i.cef = getelementptr inbounds i8, ptr %i.cec, i64 %i.cee
  %i.ceg = load float, ptr %i.cef, align 4, !tbaa !58
  %i.ceh = getelementptr inbounds nuw [4 x i8], ptr %i.cec, i64 %indvars.iv.next2346.2
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ceh, i64 1024
  store float %i.ceg, ptr %i.cei, align 4, !tbaa !58
  %indvars.iv.next2346.2.1 = add nuw nsw i64 %indvars.iv2345.2, 2 ; 3 uses
  %indvars.iv2345.2.tr.2 = trunc nuw i64 %indvars.iv.next2346.2.1 to i32
  %i.cej = shl nuw i32 %indvars.iv2345.2.tr.2, 1
  %i.cek = and i32 %i.cej, 2
  %i.cel = or disjoint i32 %i.cek, 8
  %i.cem = lshr i32 %i.q, %i.cel
  %i.cen = and i32 %i.cem, 3
  %i.ceo = zext nneg i32 %i.cen to i64
  %i.cep = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ceo
  %i.ceq = load ptr, ptr %i.cep, align 8, !tbaa !59 ; 2 uses
  %i.cer = shl i64 %indvars.iv.next2346.2.1, 32
  %sext2916.2 = add i64 %i.cer, 7696581394432
  %i.ces = ashr exact i64 %sext2916.2, 30
  %i.cet = getelementptr inbounds i8, ptr %i.ceq, i64 %i.ces
  %i.ceu = load float, ptr %i.cet, align 4, !tbaa !58
  %i.cev = getelementptr inbounds nuw [4 x i8], ptr %i.ceq, i64 %indvars.iv.next2346.2.1
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cev, i64 1024
  store float %i.ceu, ptr %i.cew, align 4, !tbaa !58
  %indvars.iv.next2346.2.2 = add nuw nsw i64 %indvars.iv2345.2, 3 ; 3 uses
  %indvars.iv2345.2.tr.3 = trunc nuw i64 %indvars.iv.next2346.2.2 to i32
  %i.cex = shl nuw i32 %indvars.iv2345.2.tr.3, 1
  %i.cey = and i32 %i.cex, 2
  %i.cez = or disjoint i32 %i.cey, 8
  %i.cfa = lshr i32 %i.q, %i.cez
  %i.cfb = and i32 %i.cfa, 3
  %i.cfc = zext nneg i32 %i.cfb to i64
  %i.cfd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cfc
  %i.cfe = load ptr, ptr %i.cfd, align 8, !tbaa !59 ; 2 uses
  %i.cff = shl i64 %indvars.iv.next2346.2.2, 32
  %sext2916.3 = add i64 %i.cff, 7696581394432
  %i.cfg = ashr exact i64 %sext2916.3, 30
  %i.cfh = getelementptr inbounds i8, ptr %i.cfe, i64 %i.cfg
  %i.cfi = load float, ptr %i.cfh, align 4, !tbaa !58
  %i.cfj = getelementptr inbounds nuw [4 x i8], ptr %i.cfe, i64 %indvars.iv.next2346.2.2
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.cfj, i64 1024
  store float %i.cfi, ptr %i.cfk, align 4, !tbaa !58
  %indvars.iv.next2346.2.3 = add nuw nsw i64 %indvars.iv2345.2, 4 ; 2 uses
  %exitcond2350.2.not.3 = icmp eq i64 %indvars.iv.next2346.2.3, %wide.trip.count2349
  br i1 %exitcond2350.2.not.3, label %._crit_edge2003.2.preheader, label %._crit_edge2003.1

._crit_edge2003.2.preheader:                      ; preds = %._crit_edge2003.1, %._crit_edge2003.1.prol.loopexit
  %xtraiter4222 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4223.not = icmp eq i64 %xtraiter4222, 0
  br i1 %lcmp.mod4223.not, label %._crit_edge2003.2.prol.loopexit, label %._crit_edge2003.2.prol

._crit_edge2003.2.prol:                           ; preds = %._crit_edge2003.2.preheader, %._crit_edge2003.2.prol
  %indvars.iv2345.3.prol = phi i64 [ %indvars.iv.next2346.3.prol, %._crit_edge2003.2.prol ], [ %i.bxi, %._crit_edge2003.2.preheader ] ; 4 uses
  %prol.iter4224 = phi i64 [ %prol.iter4224.next, %._crit_edge2003.2.prol ], [ 0, %._crit_edge2003.2.preheader ]
  %indvars.iv2345.3.tr.prol = trunc nuw i64 %indvars.iv2345.3.prol to i32
  %i.cfl = shl nuw i32 %indvars.iv2345.3.tr.prol, 1
  %i.cfm = and i32 %i.cfl, 2
  %i.cfn = or disjoint i32 %i.cfm, 12
  %i.cfo = lshr i32 %i.q, %i.cfn
  %i.cfp = and i32 %i.cfo, 3
  %i.cfq = zext nneg i32 %i.cfp to i64
  %i.cfr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cfq
  %i.cfs = load ptr, ptr %i.cfr, align 8, !tbaa !59 ; 2 uses
  %i.cft = shl i64 %indvars.iv2345.3.prol, 32
  %sext2917.prol = add i64 %i.cft, 7146825580544
  %i.cfu = ashr exact i64 %sext2917.prol, 30
  %i.cfv = getelementptr inbounds i8, ptr %i.cfs, i64 %i.cfu
  %i.cfw = load float, ptr %i.cfv, align 4, !tbaa !58
  %i.cfx = getelementptr inbounds nuw [4 x i8], ptr %i.cfs, i64 %indvars.iv2345.3.prol
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfx, i64 1536
  store float %i.cfw, ptr %i.cfy, align 4, !tbaa !58
  %indvars.iv.next2346.3.prol = add nuw nsw i64 %indvars.iv2345.3.prol, 1 ; 2 uses
  %prol.iter4224.next = add i64 %prol.iter4224, 1 ; 2 uses
  %prol.iter4224.cmp.not = icmp eq i64 %prol.iter4224.next, %xtraiter4222
  br i1 %prol.iter4224.cmp.not, label %._crit_edge2003.2.prol.loopexit, label %._crit_edge2003.2.prol, !llvm.loop !64

._crit_edge2003.2.prol.loopexit:                  ; preds = %._crit_edge2003.2.prol, %._crit_edge2003.2.preheader
  %indvars.iv2345.3.unr = phi i64 [ %i.bxi, %._crit_edge2003.2.preheader ], [ %indvars.iv.next2346.3.prol, %._crit_edge2003.2.prol ]
  %i.cfz = icmp ult i64 %i.bxk, 3
  br i1 %i.cfz, label %._crit_edge2003.3.preheader, label %._crit_edge2003.2

._crit_edge2003.2:                                ; preds = %._crit_edge2003.2.prol.loopexit, %._crit_edge2003.2
  %indvars.iv2345.3 = phi i64 [ %indvars.iv.next2346.3.3, %._crit_edge2003.2 ], [ %indvars.iv2345.3.unr, %._crit_edge2003.2.prol.loopexit ] ; 7 uses
  %indvars.iv2345.3.tr = trunc nuw i64 %indvars.iv2345.3 to i32
  %i.cga = shl nuw i32 %indvars.iv2345.3.tr, 1
  %i.cgb = and i32 %i.cga, 2
  %i.cgc = or disjoint i32 %i.cgb, 12
  %i.cgd = lshr i32 %i.q, %i.cgc
  %i.cge = and i32 %i.cgd, 3
  %i.cgf = zext nneg i32 %i.cge to i64
  %i.cgg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cgf
  %i.cgh = load ptr, ptr %i.cgg, align 8, !tbaa !59 ; 2 uses
  %i.cgi = shl i64 %indvars.iv2345.3, 32
  %sext2917 = add i64 %i.cgi, 7146825580544
  %i.cgj = ashr exact i64 %sext2917, 30
  %i.cgk = getelementptr inbounds i8, ptr %i.cgh, i64 %i.cgj
  %i.cgl = load float, ptr %i.cgk, align 4, !tbaa !58
  %i.cgm = getelementptr inbounds nuw [4 x i8], ptr %i.cgh, i64 %indvars.iv2345.3
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cgm, i64 1536
  store float %i.cgl, ptr %i.cgn, align 4, !tbaa !58
  %indvars.iv.next2346.3 = add nuw nsw i64 %indvars.iv2345.3, 1 ; 3 uses
  %indvars.iv2345.3.tr.1 = trunc nuw i64 %indvars.iv.next2346.3 to i32
  %i.cgo = shl nuw i32 %indvars.iv2345.3.tr.1, 1
  %i.cgp = and i32 %i.cgo, 2
  %i.cgq = or disjoint i32 %i.cgp, 12
  %i.cgr = lshr i32 %i.q, %i.cgq
  %i.cgs = and i32 %i.cgr, 3
  %i.cgt = zext nneg i32 %i.cgs to i64
  %i.cgu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cgt
  %i.cgv = load ptr, ptr %i.cgu, align 8, !tbaa !59 ; 2 uses
  %i.cgw = shl i64 %indvars.iv.next2346.3, 32
  %sext2917.1 = add i64 %i.cgw, 7146825580544
  %i.cgx = ashr exact i64 %sext2917.1, 30
  %i.cgy = getelementptr inbounds i8, ptr %i.cgv, i64 %i.cgx
  %i.cgz = load float, ptr %i.cgy, align 4, !tbaa !58
  %i.cha = getelementptr inbounds nuw [4 x i8], ptr %i.cgv, i64 %indvars.iv.next2346.3
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cha, i64 1536
  store float %i.cgz, ptr %i.chb, align 4, !tbaa !58
  %indvars.iv.next2346.3.1 = add nuw nsw i64 %indvars.iv2345.3, 2 ; 3 uses
  %indvars.iv2345.3.tr.2 = trunc nuw i64 %indvars.iv.next2346.3.1 to i32
  %i.chc = shl nuw i32 %indvars.iv2345.3.tr.2, 1
  %i.chd = and i32 %i.chc, 2
  %i.che = or disjoint i32 %i.chd, 12
  %i.chf = lshr i32 %i.q, %i.che
  %i.chg = and i32 %i.chf, 3
  %i.chh = zext nneg i32 %i.chg to i64
  %i.chi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.chh
  %i.chj = load ptr, ptr %i.chi, align 8, !tbaa !59 ; 2 uses
  %i.chk = shl i64 %indvars.iv.next2346.3.1, 32
  %sext2917.2 = add i64 %i.chk, 7146825580544
  %i.chl = ashr exact i64 %sext2917.2, 30
  %i.chm = getelementptr inbounds i8, ptr %i.chj, i64 %i.chl
  %i.chn = load float, ptr %i.chm, align 4, !tbaa !58
  %i.cho = getelementptr inbounds nuw [4 x i8], ptr %i.chj, i64 %indvars.iv.next2346.3.1
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 1536
  store float %i.chn, ptr %i.chp, align 4, !tbaa !58
  %indvars.iv.next2346.3.2 = add nuw nsw i64 %indvars.iv2345.3, 3 ; 3 uses
  %indvars.iv2345.3.tr.3 = trunc nuw i64 %indvars.iv.next2346.3.2 to i32
  %i.chq = shl nuw i32 %indvars.iv2345.3.tr.3, 1
  %i.chr = and i32 %i.chq, 2
  %i.chs = or disjoint i32 %i.chr, 12
  %i.cht = lshr i32 %i.q, %i.chs
  %i.chu = and i32 %i.cht, 3
  %i.chv = zext nneg i32 %i.chu to i64
  %i.chw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.chv
  %i.chx = load ptr, ptr %i.chw, align 8, !tbaa !59 ; 2 uses
  %i.chy = shl i64 %indvars.iv.next2346.3.2, 32
  %sext2917.3 = add i64 %i.chy, 7146825580544
  %i.chz = ashr exact i64 %sext2917.3, 30
  %i.cia = getelementptr inbounds i8, ptr %i.chx, i64 %i.chz
  %i.cib = load float, ptr %i.cia, align 4, !tbaa !58
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.chx, i64 %indvars.iv.next2346.3.2
  %i.cid = getelementptr inbounds nuw i8, ptr %i.cic, i64 1536
  store float %i.cib, ptr %i.cid, align 4, !tbaa !58
  %indvars.iv.next2346.3.3 = add nuw nsw i64 %indvars.iv2345.3, 4 ; 2 uses
  %exitcond2350.3.not.3 = icmp eq i64 %indvars.iv.next2346.3.3, %wide.trip.count2349
  br i1 %exitcond2350.3.not.3, label %._crit_edge2003.3.preheader, label %._crit_edge2003.2

._crit_edge2003.3.preheader:                      ; preds = %._crit_edge2003.2, %._crit_edge2003.2.prol.loopexit
  %xtraiter4225 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4226.not = icmp eq i64 %xtraiter4225, 0
  br i1 %lcmp.mod4226.not, label %._crit_edge2003.3.prol.loopexit, label %._crit_edge2003.3.prol

._crit_edge2003.3.prol:                           ; preds = %._crit_edge2003.3.preheader, %._crit_edge2003.3.prol
  %indvars.iv2345.4.prol = phi i64 [ %indvars.iv.next2346.4.prol, %._crit_edge2003.3.prol ], [ %i.bxi, %._crit_edge2003.3.preheader ] ; 4 uses
  %prol.iter4227 = phi i64 [ %prol.iter4227.next, %._crit_edge2003.3.prol ], [ 0, %._crit_edge2003.3.preheader ]
  %indvars.iv2345.4.tr.prol = trunc nuw i64 %indvars.iv2345.4.prol to i32
  %i.cie = shl nuw i32 %indvars.iv2345.4.tr.prol, 1
  %i.cif = and i32 %i.cie, 2
  %i.cig = or disjoint i32 %i.cif, 16
  %i.cih = lshr i32 %i.q, %i.cig
  %i.cii = and i32 %i.cih, 3
  %i.cij = zext nneg i32 %i.cii to i64
  %i.cik = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cij
  %i.cil = load ptr, ptr %i.cik, align 8, !tbaa !59 ; 2 uses
  %i.cim = shl i64 %indvars.iv2345.4.prol, 32
  %sext2918.prol = add i64 %i.cim, 6597069766656
  %i.cin = ashr exact i64 %sext2918.prol, 30
  %i.cio = getelementptr inbounds i8, ptr %i.cil, i64 %i.cin
  %i.cip = load float, ptr %i.cio, align 4, !tbaa !58
  %i.ciq = getelementptr inbounds nuw [4 x i8], ptr %i.cil, i64 %indvars.iv2345.4.prol
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 2048
  store float %i.cip, ptr %i.cir, align 4, !tbaa !58
  %indvars.iv.next2346.4.prol = add nuw nsw i64 %indvars.iv2345.4.prol, 1 ; 2 uses
  %prol.iter4227.next = add i64 %prol.iter4227, 1 ; 2 uses
  %prol.iter4227.cmp.not = icmp eq i64 %prol.iter4227.next, %xtraiter4225
  br i1 %prol.iter4227.cmp.not, label %._crit_edge2003.3.prol.loopexit, label %._crit_edge2003.3.prol, !llvm.loop !65

._crit_edge2003.3.prol.loopexit:                  ; preds = %._crit_edge2003.3.prol, %._crit_edge2003.3.preheader
  %indvars.iv2345.4.unr = phi i64 [ %i.bxi, %._crit_edge2003.3.preheader ], [ %indvars.iv.next2346.4.prol, %._crit_edge2003.3.prol ]
  %i.cis = icmp ult i64 %i.bxk, 3
  br i1 %i.cis, label %._crit_edge2003.4.preheader, label %._crit_edge2003.3

._crit_edge2003.3:                                ; preds = %._crit_edge2003.3.prol.loopexit, %._crit_edge2003.3
  %indvars.iv2345.4 = phi i64 [ %indvars.iv.next2346.4.3, %._crit_edge2003.3 ], [ %indvars.iv2345.4.unr, %._crit_edge2003.3.prol.loopexit ] ; 7 uses
  %indvars.iv2345.4.tr = trunc nuw i64 %indvars.iv2345.4 to i32
  %i.cit = shl nuw i32 %indvars.iv2345.4.tr, 1
  %i.ciu = and i32 %i.cit, 2
  %i.civ = or disjoint i32 %i.ciu, 16
  %i.ciw = lshr i32 %i.q, %i.civ
  %i.cix = and i32 %i.ciw, 3
  %i.ciy = zext nneg i32 %i.cix to i64
  %i.ciz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ciy
  %i.cja = load ptr, ptr %i.ciz, align 8, !tbaa !59 ; 2 uses
  %i.cjb = shl i64 %indvars.iv2345.4, 32
  %sext2918 = add i64 %i.cjb, 6597069766656
  %i.cjc = ashr exact i64 %sext2918, 30
  %i.cjd = getelementptr inbounds i8, ptr %i.cja, i64 %i.cjc
  %i.cje = load float, ptr %i.cjd, align 4, !tbaa !58
  %i.cjf = getelementptr inbounds nuw [4 x i8], ptr %i.cja, i64 %indvars.iv2345.4
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cjf, i64 2048
  store float %i.cje, ptr %i.cjg, align 4, !tbaa !58
  %indvars.iv.next2346.4 = add nuw nsw i64 %indvars.iv2345.4, 1 ; 3 uses
  %indvars.iv2345.4.tr.1 = trunc nuw i64 %indvars.iv.next2346.4 to i32
  %i.cjh = shl nuw i32 %indvars.iv2345.4.tr.1, 1
  %i.cji = and i32 %i.cjh, 2
  %i.cjj = or disjoint i32 %i.cji, 16
  %i.cjk = lshr i32 %i.q, %i.cjj
  %i.cjl = and i32 %i.cjk, 3
  %i.cjm = zext nneg i32 %i.cjl to i64
  %i.cjn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cjm
  %i.cjo = load ptr, ptr %i.cjn, align 8, !tbaa !59 ; 2 uses
  %i.cjp = shl i64 %indvars.iv.next2346.4, 32
  %sext2918.1 = add i64 %i.cjp, 6597069766656
  %i.cjq = ashr exact i64 %sext2918.1, 30
  %i.cjr = getelementptr inbounds i8, ptr %i.cjo, i64 %i.cjq
  %i.cjs = load float, ptr %i.cjr, align 4, !tbaa !58
  %i.cjt = getelementptr inbounds nuw [4 x i8], ptr %i.cjo, i64 %indvars.iv.next2346.4
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjt, i64 2048
  store float %i.cjs, ptr %i.cju, align 4, !tbaa !58
  %indvars.iv.next2346.4.1 = add nuw nsw i64 %indvars.iv2345.4, 2 ; 3 uses
  %indvars.iv2345.4.tr.2 = trunc nuw i64 %indvars.iv.next2346.4.1 to i32
  %i.cjv = shl nuw i32 %indvars.iv2345.4.tr.2, 1
  %i.cjw = and i32 %i.cjv, 2
  %i.cjx = or disjoint i32 %i.cjw, 16
  %i.cjy = lshr i32 %i.q, %i.cjx
  %i.cjz = and i32 %i.cjy, 3
  %i.cka = zext nneg i32 %i.cjz to i64
  %i.ckb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cka
  %i.ckc = load ptr, ptr %i.ckb, align 8, !tbaa !59 ; 2 uses
  %i.ckd = shl i64 %indvars.iv.next2346.4.1, 32
  %sext2918.2 = add i64 %i.ckd, 6597069766656
  %i.cke = ashr exact i64 %sext2918.2, 30
  %i.ckf = getelementptr inbounds i8, ptr %i.ckc, i64 %i.cke
  %i.ckg = load float, ptr %i.ckf, align 4, !tbaa !58
  %i.ckh = getelementptr inbounds nuw [4 x i8], ptr %i.ckc, i64 %indvars.iv.next2346.4.1
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckh, i64 2048
  store float %i.ckg, ptr %i.cki, align 4, !tbaa !58
  %indvars.iv.next2346.4.2 = add nuw nsw i64 %indvars.iv2345.4, 3 ; 3 uses
  %indvars.iv2345.4.tr.3 = trunc nuw i64 %indvars.iv.next2346.4.2 to i32
  %i.ckj = shl nuw i32 %indvars.iv2345.4.tr.3, 1
  %i.ckk = and i32 %i.ckj, 2
  %i.ckl = or disjoint i32 %i.ckk, 16
  %i.ckm = lshr i32 %i.q, %i.ckl
  %i.ckn = and i32 %i.ckm, 3
  %i.cko = zext nneg i32 %i.ckn to i64
  %i.ckp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cko
  %i.ckq = load ptr, ptr %i.ckp, align 8, !tbaa !59 ; 2 uses
  %i.ckr = shl i64 %indvars.iv.next2346.4.2, 32
  %sext2918.3 = add i64 %i.ckr, 6597069766656
  %i.cks = ashr exact i64 %sext2918.3, 30
  %i.ckt = getelementptr inbounds i8, ptr %i.ckq, i64 %i.cks
  %i.cku = load float, ptr %i.ckt, align 4, !tbaa !58
  %i.ckv = getelementptr inbounds nuw [4 x i8], ptr %i.ckq, i64 %indvars.iv.next2346.4.2
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.ckv, i64 2048
  store float %i.cku, ptr %i.ckw, align 4, !tbaa !58
  %indvars.iv.next2346.4.3 = add nuw nsw i64 %indvars.iv2345.4, 4 ; 2 uses
  %exitcond2350.4.not.3 = icmp eq i64 %indvars.iv.next2346.4.3, %wide.trip.count2349
  br i1 %exitcond2350.4.not.3, label %._crit_edge2003.4.preheader, label %._crit_edge2003.3

._crit_edge2003.4.preheader:                      ; preds = %._crit_edge2003.3, %._crit_edge2003.3.prol.loopexit
  %xtraiter4228 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4229.not = icmp eq i64 %xtraiter4228, 0
  br i1 %lcmp.mod4229.not, label %._crit_edge2003.4.prol.loopexit, label %._crit_edge2003.4.prol

._crit_edge2003.4.prol:                           ; preds = %._crit_edge2003.4.preheader, %._crit_edge2003.4.prol
  %indvars.iv2345.5.prol = phi i64 [ %indvars.iv.next2346.5.prol, %._crit_edge2003.4.prol ], [ %i.bxi, %._crit_edge2003.4.preheader ] ; 4 uses
  %prol.iter4230 = phi i64 [ %prol.iter4230.next, %._crit_edge2003.4.prol ], [ 0, %._crit_edge2003.4.preheader ]
  %indvars.iv2345.5.tr.prol = trunc nuw i64 %indvars.iv2345.5.prol to i32
  %i.ckx = shl nuw i32 %indvars.iv2345.5.tr.prol, 1
  %i.cky = and i32 %i.ckx, 2
  %i.ckz = or disjoint i32 %i.cky, 20
  %i.cla = lshr i32 %i.q, %i.ckz
  %i.clb = and i32 %i.cla, 3
  %i.clc = zext nneg i32 %i.clb to i64
  %i.cld = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.clc
  %i.cle = load ptr, ptr %i.cld, align 8, !tbaa !59 ; 2 uses
  %i.clf = shl i64 %indvars.iv2345.5.prol, 32
  %sext2919.prol = add i64 %i.clf, 6047313952768
  %i.clg = ashr exact i64 %sext2919.prol, 30
  %i.clh = getelementptr inbounds i8, ptr %i.cle, i64 %i.clg
  %i.cli = load float, ptr %i.clh, align 4, !tbaa !58
  %i.clj = getelementptr inbounds nuw [4 x i8], ptr %i.cle, i64 %indvars.iv2345.5.prol
  %i.clk = getelementptr inbounds nuw i8, ptr %i.clj, i64 2560
  store float %i.cli, ptr %i.clk, align 4, !tbaa !58
  %indvars.iv.next2346.5.prol = add nuw nsw i64 %indvars.iv2345.5.prol, 1 ; 2 uses
  %prol.iter4230.next = add i64 %prol.iter4230, 1 ; 2 uses
  %prol.iter4230.cmp.not = icmp eq i64 %prol.iter4230.next, %xtraiter4228
  br i1 %prol.iter4230.cmp.not, label %._crit_edge2003.4.prol.loopexit, label %._crit_edge2003.4.prol, !llvm.loop !66

._crit_edge2003.4.prol.loopexit:                  ; preds = %._crit_edge2003.4.prol, %._crit_edge2003.4.preheader
  %indvars.iv2345.5.unr = phi i64 [ %i.bxi, %._crit_edge2003.4.preheader ], [ %indvars.iv.next2346.5.prol, %._crit_edge2003.4.prol ]
  %i.cll = icmp ult i64 %i.bxk, 3
  br i1 %i.cll, label %._crit_edge2003.5.preheader, label %._crit_edge2003.4

._crit_edge2003.4:                                ; preds = %._crit_edge2003.4.prol.loopexit, %._crit_edge2003.4
  %indvars.iv2345.5 = phi i64 [ %indvars.iv.next2346.5.3, %._crit_edge2003.4 ], [ %indvars.iv2345.5.unr, %._crit_edge2003.4.prol.loopexit ] ; 7 uses
  %indvars.iv2345.5.tr = trunc nuw i64 %indvars.iv2345.5 to i32
  %i.clm = shl nuw i32 %indvars.iv2345.5.tr, 1
  %i.cln = and i32 %i.clm, 2
  %i.clo = or disjoint i32 %i.cln, 20
  %i.clp = lshr i32 %i.q, %i.clo
  %i.clq = and i32 %i.clp, 3
  %i.clr = zext nneg i32 %i.clq to i64
  %i.cls = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.clr
  %i.clt = load ptr, ptr %i.cls, align 8, !tbaa !59 ; 2 uses
  %i.clu = shl i64 %indvars.iv2345.5, 32
  %sext2919 = add i64 %i.clu, 6047313952768
  %i.clv = ashr exact i64 %sext2919, 30
  %i.clw = getelementptr inbounds i8, ptr %i.clt, i64 %i.clv
  %i.clx = load float, ptr %i.clw, align 4, !tbaa !58
  %i.cly = getelementptr inbounds nuw [4 x i8], ptr %i.clt, i64 %indvars.iv2345.5
  %i.clz = getelementptr inbounds nuw i8, ptr %i.cly, i64 2560
  store float %i.clx, ptr %i.clz, align 4, !tbaa !58
  %indvars.iv.next2346.5 = add nuw nsw i64 %indvars.iv2345.5, 1 ; 3 uses
  %indvars.iv2345.5.tr.1 = trunc nuw i64 %indvars.iv.next2346.5 to i32
  %i.cma = shl nuw i32 %indvars.iv2345.5.tr.1, 1
  %i.cmb = and i32 %i.cma, 2
  %i.cmc = or disjoint i32 %i.cmb, 20
  %i.cmd = lshr i32 %i.q, %i.cmc
  %i.cme = and i32 %i.cmd, 3
  %i.cmf = zext nneg i32 %i.cme to i64
  %i.cmg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cmf
  %i.cmh = load ptr, ptr %i.cmg, align 8, !tbaa !59 ; 2 uses
  %i.cmi = shl i64 %indvars.iv.next2346.5, 32
  %sext2919.1 = add i64 %i.cmi, 6047313952768
  %i.cmj = ashr exact i64 %sext2919.1, 30
  %i.cmk = getelementptr inbounds i8, ptr %i.cmh, i64 %i.cmj
  %i.cml = load float, ptr %i.cmk, align 4, !tbaa !58
  %i.cmm = getelementptr inbounds nuw [4 x i8], ptr %i.cmh, i64 %indvars.iv.next2346.5
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.cmm, i64 2560
  store float %i.cml, ptr %i.cmn, align 4, !tbaa !58
  %indvars.iv.next2346.5.1 = add nuw nsw i64 %indvars.iv2345.5, 2 ; 3 uses
  %indvars.iv2345.5.tr.2 = trunc nuw i64 %indvars.iv.next2346.5.1 to i32
  %i.cmo = shl nuw i32 %indvars.iv2345.5.tr.2, 1
  %i.cmp = and i32 %i.cmo, 2
  %i.cmq = or disjoint i32 %i.cmp, 20
  %i.cmr = lshr i32 %i.q, %i.cmq
  %i.cms = and i32 %i.cmr, 3
  %i.cmt = zext nneg i32 %i.cms to i64
  %i.cmu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cmt
  %i.cmv = load ptr, ptr %i.cmu, align 8, !tbaa !59 ; 2 uses
  %i.cmw = shl i64 %indvars.iv.next2346.5.1, 32
  %sext2919.2 = add i64 %i.cmw, 6047313952768
  %i.cmx = ashr exact i64 %sext2919.2, 30
  %i.cmy = getelementptr inbounds i8, ptr %i.cmv, i64 %i.cmx
  %i.cmz = load float, ptr %i.cmy, align 4, !tbaa !58
  %i.cna = getelementptr inbounds nuw [4 x i8], ptr %i.cmv, i64 %indvars.iv.next2346.5.1
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cna, i64 2560
  store float %i.cmz, ptr %i.cnb, align 4, !tbaa !58
  %indvars.iv.next2346.5.2 = add nuw nsw i64 %indvars.iv2345.5, 3 ; 3 uses
  %indvars.iv2345.5.tr.3 = trunc nuw i64 %indvars.iv.next2346.5.2 to i32
  %i.cnc = shl nuw i32 %indvars.iv2345.5.tr.3, 1
  %i.cnd = and i32 %i.cnc, 2
  %i.cne = or disjoint i32 %i.cnd, 20
  %i.cnf = lshr i32 %i.q, %i.cne
  %i.cng = and i32 %i.cnf, 3
  %i.cnh = zext nneg i32 %i.cng to i64
  %i.cni = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cnh
  %i.cnj = load ptr, ptr %i.cni, align 8, !tbaa !59 ; 2 uses
  %i.cnk = shl i64 %indvars.iv.next2346.5.2, 32
  %sext2919.3 = add i64 %i.cnk, 6047313952768
  %i.cnl = ashr exact i64 %sext2919.3, 30
  %i.cnm = getelementptr inbounds i8, ptr %i.cnj, i64 %i.cnl
  %i.cnn = load float, ptr %i.cnm, align 4, !tbaa !58
  %i.cno = getelementptr inbounds nuw [4 x i8], ptr %i.cnj, i64 %indvars.iv.next2346.5.2
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cno, i64 2560
  store float %i.cnn, ptr %i.cnp, align 4, !tbaa !58
  %indvars.iv.next2346.5.3 = add nuw nsw i64 %indvars.iv2345.5, 4 ; 2 uses
  %exitcond2350.5.not.3 = icmp eq i64 %indvars.iv.next2346.5.3, %wide.trip.count2349
  br i1 %exitcond2350.5.not.3, label %._crit_edge2003.5.preheader, label %._crit_edge2003.4

._crit_edge2003.5.preheader:                      ; preds = %._crit_edge2003.4, %._crit_edge2003.4.prol.loopexit
  %xtraiter4231 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4232.not = icmp eq i64 %xtraiter4231, 0
  br i1 %lcmp.mod4232.not, label %._crit_edge2003.5.prol.loopexit, label %._crit_edge2003.5.prol

._crit_edge2003.5.prol:                           ; preds = %._crit_edge2003.5.preheader, %._crit_edge2003.5.prol
  %indvars.iv2345.6.prol = phi i64 [ %indvars.iv.next2346.6.prol, %._crit_edge2003.5.prol ], [ %i.bxi, %._crit_edge2003.5.preheader ] ; 4 uses
  %prol.iter4233 = phi i64 [ %prol.iter4233.next, %._crit_edge2003.5.prol ], [ 0, %._crit_edge2003.5.preheader ]
  %indvars.iv2345.6.tr.prol = trunc nuw i64 %indvars.iv2345.6.prol to i32
  %i.cnq = shl nuw i32 %indvars.iv2345.6.tr.prol, 1
  %i.cnr = and i32 %i.cnq, 2
  %i.cns = or disjoint i32 %i.cnr, 24
  %i.cnt = lshr i32 %i.q, %i.cns
  %i.cnu = and i32 %i.cnt, 3
  %i.cnv = zext nneg i32 %i.cnu to i64
  %i.cnw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cnv
  %i.cnx = load ptr, ptr %i.cnw, align 8, !tbaa !59 ; 2 uses
  %i.cny = shl i64 %indvars.iv2345.6.prol, 32
  %sext2920.prol = add i64 %i.cny, 5497558138880
  %i.cnz = ashr exact i64 %sext2920.prol, 30
  %i.coa = getelementptr inbounds i8, ptr %i.cnx, i64 %i.cnz
  %i.cob = load float, ptr %i.coa, align 4, !tbaa !58
  %i.coc = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv2345.6.prol
  %i.cod = getelementptr inbounds nuw i8, ptr %i.coc, i64 3072
  store float %i.cob, ptr %i.cod, align 4, !tbaa !58
  %indvars.iv.next2346.6.prol = add nuw nsw i64 %indvars.iv2345.6.prol, 1 ; 2 uses
  %prol.iter4233.next = add i64 %prol.iter4233, 1 ; 2 uses
  %prol.iter4233.cmp.not = icmp eq i64 %prol.iter4233.next, %xtraiter4231
  br i1 %prol.iter4233.cmp.not, label %._crit_edge2003.5.prol.loopexit, label %._crit_edge2003.5.prol, !llvm.loop !67

._crit_edge2003.5.prol.loopexit:                  ; preds = %._crit_edge2003.5.prol, %._crit_edge2003.5.preheader
  %indvars.iv2345.6.unr = phi i64 [ %i.bxi, %._crit_edge2003.5.preheader ], [ %indvars.iv.next2346.6.prol, %._crit_edge2003.5.prol ]
  %i.coe = icmp ult i64 %i.bxk, 3
  br i1 %i.coe, label %._crit_edge2003.6.preheader, label %._crit_edge2003.5

._crit_edge2003.5:                                ; preds = %._crit_edge2003.5.prol.loopexit, %._crit_edge2003.5
  %indvars.iv2345.6 = phi i64 [ %indvars.iv.next2346.6.3, %._crit_edge2003.5 ], [ %indvars.iv2345.6.unr, %._crit_edge2003.5.prol.loopexit ] ; 7 uses
  %indvars.iv2345.6.tr = trunc nuw i64 %indvars.iv2345.6 to i32
  %i.cof = shl nuw i32 %indvars.iv2345.6.tr, 1
  %i.cog = and i32 %i.cof, 2
  %i.coh = or disjoint i32 %i.cog, 24
  %i.coi = lshr i32 %i.q, %i.coh
  %i.coj = and i32 %i.coi, 3
  %i.cok = zext nneg i32 %i.coj to i64
  %i.col = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cok
  %i.com = load ptr, ptr %i.col, align 8, !tbaa !59 ; 2 uses
  %i.con = shl i64 %indvars.iv2345.6, 32
  %sext2920 = add i64 %i.con, 5497558138880
  %i.coo = ashr exact i64 %sext2920, 30
  %i.cop = getelementptr inbounds i8, ptr %i.com, i64 %i.coo
  %i.coq = load float, ptr %i.cop, align 4, !tbaa !58
  %i.cor = getelementptr inbounds nuw [4 x i8], ptr %i.com, i64 %indvars.iv2345.6
  %i.cos = getelementptr inbounds nuw i8, ptr %i.cor, i64 3072
  store float %i.coq, ptr %i.cos, align 4, !tbaa !58
  %indvars.iv.next2346.6 = add nuw nsw i64 %indvars.iv2345.6, 1 ; 3 uses
  %indvars.iv2345.6.tr.1 = trunc nuw i64 %indvars.iv.next2346.6 to i32
  %i.cot = shl nuw i32 %indvars.iv2345.6.tr.1, 1
  %i.cou = and i32 %i.cot, 2
  %i.cov = or disjoint i32 %i.cou, 24
  %i.cow = lshr i32 %i.q, %i.cov
  %i.cox = and i32 %i.cow, 3
  %i.coy = zext nneg i32 %i.cox to i64
  %i.coz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.coy
  %i.cpa = load ptr, ptr %i.coz, align 8, !tbaa !59 ; 2 uses
  %i.cpb = shl i64 %indvars.iv.next2346.6, 32
  %sext2920.1 = add i64 %i.cpb, 5497558138880
  %i.cpc = ashr exact i64 %sext2920.1, 30
  %i.cpd = getelementptr inbounds i8, ptr %i.cpa, i64 %i.cpc
  %i.cpe = load float, ptr %i.cpd, align 4, !tbaa !58
  %i.cpf = getelementptr inbounds nuw [4 x i8], ptr %i.cpa, i64 %indvars.iv.next2346.6
  %i.cpg = getelementptr inbounds nuw i8, ptr %i.cpf, i64 3072
  store float %i.cpe, ptr %i.cpg, align 4, !tbaa !58
  %indvars.iv.next2346.6.1 = add nuw nsw i64 %indvars.iv2345.6, 2 ; 3 uses
  %indvars.iv2345.6.tr.2 = trunc nuw i64 %indvars.iv.next2346.6.1 to i32
  %i.cph = shl nuw i32 %indvars.iv2345.6.tr.2, 1
  %i.cpi = and i32 %i.cph, 2
  %i.cpj = or disjoint i32 %i.cpi, 24
  %i.cpk = lshr i32 %i.q, %i.cpj
  %i.cpl = and i32 %i.cpk, 3
  %i.cpm = zext nneg i32 %i.cpl to i64
  %i.cpn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cpm
  %i.cpo = load ptr, ptr %i.cpn, align 8, !tbaa !59 ; 2 uses
  %i.cpp = shl i64 %indvars.iv.next2346.6.1, 32
  %sext2920.2 = add i64 %i.cpp, 5497558138880
  %i.cpq = ashr exact i64 %sext2920.2, 30
  %i.cpr = getelementptr inbounds i8, ptr %i.cpo, i64 %i.cpq
  %i.cps = load float, ptr %i.cpr, align 4, !tbaa !58
  %i.cpt = getelementptr inbounds nuw [4 x i8], ptr %i.cpo, i64 %indvars.iv.next2346.6.1
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 3072
  store float %i.cps, ptr %i.cpu, align 4, !tbaa !58
  %indvars.iv.next2346.6.2 = add nuw nsw i64 %indvars.iv2345.6, 3 ; 3 uses
  %indvars.iv2345.6.tr.3 = trunc nuw i64 %indvars.iv.next2346.6.2 to i32
  %i.cpv = shl nuw i32 %indvars.iv2345.6.tr.3, 1
  %i.cpw = and i32 %i.cpv, 2
  %i.cpx = or disjoint i32 %i.cpw, 24
  %i.cpy = lshr i32 %i.q, %i.cpx
  %i.cpz = and i32 %i.cpy, 3
  %i.cqa = zext nneg i32 %i.cpz to i64
  %i.cqb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cqa
  %i.cqc = load ptr, ptr %i.cqb, align 8, !tbaa !59 ; 2 uses
  %i.cqd = shl i64 %indvars.iv.next2346.6.2, 32
  %sext2920.3 = add i64 %i.cqd, 5497558138880
  %i.cqe = ashr exact i64 %sext2920.3, 30
  %i.cqf = getelementptr inbounds i8, ptr %i.cqc, i64 %i.cqe
  %i.cqg = load float, ptr %i.cqf, align 4, !tbaa !58
  %i.cqh = getelementptr inbounds nuw [4 x i8], ptr %i.cqc, i64 %indvars.iv.next2346.6.2
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cqh, i64 3072
  store float %i.cqg, ptr %i.cqi, align 4, !tbaa !58
  %indvars.iv.next2346.6.3 = add nuw nsw i64 %indvars.iv2345.6, 4 ; 2 uses
  %exitcond2350.6.not.3 = icmp eq i64 %indvars.iv.next2346.6.3, %wide.trip.count2349
  br i1 %exitcond2350.6.not.3, label %._crit_edge2003.6.preheader, label %._crit_edge2003.5

._crit_edge2003.6.preheader:                      ; preds = %._crit_edge2003.5, %._crit_edge2003.5.prol.loopexit
  %xtraiter4234 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4235.not = icmp eq i64 %xtraiter4234, 0
  br i1 %lcmp.mod4235.not, label %._crit_edge2003.6.prol.loopexit, label %._crit_edge2003.6.prol

._crit_edge2003.6.prol:                           ; preds = %._crit_edge2003.6.preheader, %._crit_edge2003.6.prol
  %indvars.iv2345.7.prol = phi i64 [ %indvars.iv.next2346.7.prol, %._crit_edge2003.6.prol ], [ %i.bxi, %._crit_edge2003.6.preheader ] ; 4 uses
  %prol.iter4236 = phi i64 [ %prol.iter4236.next, %._crit_edge2003.6.prol ], [ 0, %._crit_edge2003.6.preheader ]
  %indvars.iv2345.7.tr.prol = trunc nuw i64 %indvars.iv2345.7.prol to i32
  %i.cqj = shl nuw i32 %indvars.iv2345.7.tr.prol, 1
  %i.cqk = and i32 %i.cqj, 2
  %i.cql = or disjoint i32 %i.cqk, 28
  %i.cqm = lshr i32 %i.q, %i.cql
  %i.cqn = and i32 %i.cqm, 3
  %i.cqo = zext nneg i32 %i.cqn to i64
  %i.cqp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cqo
  %i.cqq = load ptr, ptr %i.cqp, align 8, !tbaa !59 ; 2 uses
  %i.cqr = shl i64 %indvars.iv2345.7.prol, 32
  %sext2921.prol = add i64 %i.cqr, 4947802324992
  %i.cqs = ashr exact i64 %sext2921.prol, 30
  %i.cqt = getelementptr inbounds i8, ptr %i.cqq, i64 %i.cqs
  %i.cqu = load float, ptr %i.cqt, align 4, !tbaa !58
  %i.cqv = getelementptr inbounds nuw [4 x i8], ptr %i.cqq, i64 %indvars.iv2345.7.prol
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cqv, i64 3584
  store float %i.cqu, ptr %i.cqw, align 4, !tbaa !58
  %indvars.iv.next2346.7.prol = add nuw nsw i64 %indvars.iv2345.7.prol, 1 ; 2 uses
  %prol.iter4236.next = add i64 %prol.iter4236, 1 ; 2 uses
  %prol.iter4236.cmp.not = icmp eq i64 %prol.iter4236.next, %xtraiter4234
  br i1 %prol.iter4236.cmp.not, label %._crit_edge2003.6.prol.loopexit, label %._crit_edge2003.6.prol, !llvm.loop !68

._crit_edge2003.6.prol.loopexit:                  ; preds = %._crit_edge2003.6.prol, %._crit_edge2003.6.preheader
  %indvars.iv2345.7.unr = phi i64 [ %i.bxi, %._crit_edge2003.6.preheader ], [ %indvars.iv.next2346.7.prol, %._crit_edge2003.6.prol ]
  %i.cqx = icmp ult i64 %i.bxk, 3
  br i1 %i.cqx, label %.loopexit1959.split, label %._crit_edge2003.6

._crit_edge2003.6:                                ; preds = %._crit_edge2003.6.prol.loopexit, %._crit_edge2003.6
  %indvars.iv2345.7 = phi i64 [ %indvars.iv.next2346.7.3, %._crit_edge2003.6 ], [ %indvars.iv2345.7.unr, %._crit_edge2003.6.prol.loopexit ] ; 7 uses
  %indvars.iv2345.7.tr = trunc nuw i64 %indvars.iv2345.7 to i32
  %i.cqy = shl nuw i32 %indvars.iv2345.7.tr, 1
  %i.cqz = and i32 %i.cqy, 2
  %i.cra = or disjoint i32 %i.cqz, 28
  %i.crb = lshr i32 %i.q, %i.cra
  %i.crc = and i32 %i.crb, 3
  %i.crd = zext nneg i32 %i.crc to i64
  %i.cre = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.crd
  %i.crf = load ptr, ptr %i.cre, align 8, !tbaa !59 ; 2 uses
  %i.crg = shl i64 %indvars.iv2345.7, 32
  %sext2921 = add i64 %i.crg, 4947802324992
  %i.crh = ashr exact i64 %sext2921, 30
  %i.cri = getelementptr inbounds i8, ptr %i.crf, i64 %i.crh
  %i.crj = load float, ptr %i.cri, align 4, !tbaa !58
  %i.crk = getelementptr inbounds nuw [4 x i8], ptr %i.crf, i64 %indvars.iv2345.7
  %i.crl = getelementptr inbounds nuw i8, ptr %i.crk, i64 3584
  store float %i.crj, ptr %i.crl, align 4, !tbaa !58
  %indvars.iv.next2346.7 = add nuw nsw i64 %indvars.iv2345.7, 1 ; 3 uses
  %indvars.iv2345.7.tr.1 = trunc nuw i64 %indvars.iv.next2346.7 to i32
  %i.crm = shl nuw i32 %indvars.iv2345.7.tr.1, 1
  %i.crn = and i32 %i.crm, 2
  %i.cro = or disjoint i32 %i.crn, 28
  %i.crp = lshr i32 %i.q, %i.cro
  %i.crq = and i32 %i.crp, 3
  %i.crr = zext nneg i32 %i.crq to i64
  %i.crs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.crr
  %i.crt = load ptr, ptr %i.crs, align 8, !tbaa !59 ; 2 uses
  %i.cru = shl i64 %indvars.iv.next2346.7, 32
  %sext2921.1 = add i64 %i.cru, 4947802324992
  %i.crv = ashr exact i64 %sext2921.1, 30
  %i.crw = getelementptr inbounds i8, ptr %i.crt, i64 %i.crv
  %i.crx = load float, ptr %i.crw, align 4, !tbaa !58
  %i.cry = getelementptr inbounds nuw [4 x i8], ptr %i.crt, i64 %indvars.iv.next2346.7
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cry, i64 3584
  store float %i.crx, ptr %i.crz, align 4, !tbaa !58
  %indvars.iv.next2346.7.1 = add nuw nsw i64 %indvars.iv2345.7, 2 ; 3 uses
  %indvars.iv2345.7.tr.2 = trunc nuw i64 %indvars.iv.next2346.7.1 to i32
  %i.csa = shl nuw i32 %indvars.iv2345.7.tr.2, 1
  %i.csb = and i32 %i.csa, 2
  %i.csc = or disjoint i32 %i.csb, 28
  %i.csd = lshr i32 %i.q, %i.csc
  %i.cse = and i32 %i.csd, 3
  %i.csf = zext nneg i32 %i.cse to i64
  %i.csg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.csf
  %i.csh = load ptr, ptr %i.csg, align 8, !tbaa !59 ; 2 uses
  %i.csi = shl i64 %indvars.iv.next2346.7.1, 32
  %sext2921.2 = add i64 %i.csi, 4947802324992
  %i.csj = ashr exact i64 %sext2921.2, 30
  %i.csk = getelementptr inbounds i8, ptr %i.csh, i64 %i.csj
  %i.csl = load float, ptr %i.csk, align 4, !tbaa !58
  %i.csm = getelementptr inbounds nuw [4 x i8], ptr %i.csh, i64 %indvars.iv.next2346.7.1
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csm, i64 3584
  store float %i.csl, ptr %i.csn, align 4, !tbaa !58
  %indvars.iv.next2346.7.2 = add nuw nsw i64 %indvars.iv2345.7, 3 ; 3 uses
  %indvars.iv2345.7.tr.3 = trunc nuw i64 %indvars.iv.next2346.7.2 to i32
  %i.cso = shl nuw i32 %indvars.iv2345.7.tr.3, 1
  %i.csp = and i32 %i.cso, 2
  %i.csq = or disjoint i32 %i.csp, 28
  %i.csr = lshr i32 %i.q, %i.csq
  %i.css = and i32 %i.csr, 3
  %i.cst = zext nneg i32 %i.css to i64
  %i.csu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cst
  %i.csv = load ptr, ptr %i.csu, align 8, !tbaa !59 ; 2 uses
  %i.csw = shl i64 %indvars.iv.next2346.7.2, 32
  %sext2921.3 = add i64 %i.csw, 4947802324992
  %i.csx = ashr exact i64 %sext2921.3, 30
  %i.csy = getelementptr inbounds i8, ptr %i.csv, i64 %i.csx
  %i.csz = load float, ptr %i.csy, align 4, !tbaa !58
  %i.cta = getelementptr inbounds nuw [4 x i8], ptr %i.csv, i64 %indvars.iv.next2346.7.2
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.cta, i64 3584
  store float %i.csz, ptr %i.ctb, align 4, !tbaa !58
  %indvars.iv.next2346.7.3 = add nuw nsw i64 %indvars.iv2345.7, 4 ; 2 uses
  %exitcond2350.7.not.3 = icmp eq i64 %indvars.iv.next2346.7.3, %wide.trip.count2349
  br i1 %exitcond2350.7.not.3, label %.loopexit1959.split, label %._crit_edge2003.6

.preheader1918.preheader.new:                     ; preds = %.prol.loopexit4203, %.preheader1918.preheader.new
  %indvars.iv2345 = phi i64 [ %indvars.iv.next2346.34212, %.preheader1918.preheader.new ], [ %indvars.iv2345.unr, %.prol.loopexit4203 ] ; 7 uses
  %indvars.iv2345.tr = trunc nuw i64 %indvars.iv2345 to i32
  %i.ctc = shl nuw i32 %indvars.iv2345.tr, 1
  %i.ctd = and i32 %i.ctc, 2
  %i.cte = lshr i32 %i.q, %i.ctd
  %i.ctf = and i32 %i.cte, 3
  %i.ctg = zext nneg i32 %i.ctf to i64
  %i.cth = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ctg
  %i.cti = load ptr, ptr %i.cth, align 8, !tbaa !59 ; 2 uses
  %i.ctj = shl i64 %indvars.iv2345, 32
  %sext = add i64 %i.ctj, 8796093022208
  %i.ctk = ashr exact i64 %sext, 30
  %i.ctl = getelementptr inbounds i8, ptr %i.cti, i64 %i.ctk
  %i.ctm = load float, ptr %i.ctl, align 4, !tbaa !58
  %i.ctn = getelementptr inbounds nuw [4 x i8], ptr %i.cti, i64 %indvars.iv2345
  store float %i.ctm, ptr %i.ctn, align 4, !tbaa !58
  %indvars.iv.next2346 = add nuw nsw i64 %indvars.iv2345, 1 ; 3 uses
  %indvars.iv2345.tr.1 = trunc nuw i64 %indvars.iv.next2346 to i32
  %i.cto = shl nuw i32 %indvars.iv2345.tr.1, 1
  %i.ctp = and i32 %i.cto, 2
  %i.ctq = lshr i32 %i.q, %i.ctp
  %i.ctr = and i32 %i.ctq, 3
  %i.cts = zext nneg i32 %i.ctr to i64
  %i.ctt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cts
  %i.ctu = load ptr, ptr %i.ctt, align 8, !tbaa !59 ; 2 uses
  %i.ctv = shl i64 %indvars.iv.next2346, 32
  %sext.1 = add i64 %i.ctv, 8796093022208
  %i.ctw = ashr exact i64 %sext.1, 30
  %i.ctx = getelementptr inbounds i8, ptr %i.ctu, i64 %i.ctw
  %i.cty = load float, ptr %i.ctx, align 4, !tbaa !58
  %i.ctz = getelementptr inbounds nuw [4 x i8], ptr %i.ctu, i64 %indvars.iv.next2346
  store float %i.cty, ptr %i.ctz, align 4, !tbaa !58
  %indvars.iv.next2346.14208 = add nuw nsw i64 %indvars.iv2345, 2 ; 3 uses
  %indvars.iv2345.tr.2 = trunc nuw i64 %indvars.iv.next2346.14208 to i32
  %i.cua = shl nuw i32 %indvars.iv2345.tr.2, 1
  %i.cub = and i32 %i.cua, 2
  %i.cuc = lshr i32 %i.q, %i.cub
  %i.cud = and i32 %i.cuc, 3
  %i.cue = zext nneg i32 %i.cud to i64
  %i.cuf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cue
  %i.cug = load ptr, ptr %i.cuf, align 8, !tbaa !59 ; 2 uses
  %i.cuh = shl i64 %indvars.iv.next2346.14208, 32
  %sext.2 = add i64 %i.cuh, 8796093022208
  %i.cui = ashr exact i64 %sext.2, 30
  %i.cuj = getelementptr inbounds i8, ptr %i.cug, i64 %i.cui
  %i.cuk = load float, ptr %i.cuj, align 4, !tbaa !58
  %i.cul = getelementptr inbounds nuw [4 x i8], ptr %i.cug, i64 %indvars.iv.next2346.14208
  store float %i.cuk, ptr %i.cul, align 4, !tbaa !58
  %indvars.iv.next2346.24210 = add nuw nsw i64 %indvars.iv2345, 3 ; 3 uses
  %indvars.iv2345.tr.3 = trunc nuw i64 %indvars.iv.next2346.24210 to i32
  %i.cum = shl nuw i32 %indvars.iv2345.tr.3, 1
  %i.cun = and i32 %i.cum, 2
  %i.cuo = lshr i32 %i.q, %i.cun
  %i.cup = and i32 %i.cuo, 3
  %i.cuq = zext nneg i32 %i.cup to i64
  %i.cur = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cuq
  %i.cus = load ptr, ptr %i.cur, align 8, !tbaa !59 ; 2 uses
  %i.cut = shl i64 %indvars.iv.next2346.24210, 32
  %sext.3 = add i64 %i.cut, 8796093022208
  %i.cuu = ashr exact i64 %sext.3, 30
  %i.cuv = getelementptr inbounds i8, ptr %i.cus, i64 %i.cuu
  %i.cuw = load float, ptr %i.cuv, align 4, !tbaa !58
  %i.cux = getelementptr inbounds nuw [4 x i8], ptr %i.cus, i64 %indvars.iv.next2346.24210
  store float %i.cuw, ptr %i.cux, align 4, !tbaa !58
  %indvars.iv.next2346.34212 = add nuw nsw i64 %indvars.iv2345, 4 ; 2 uses
  %exitcond2350.not.3 = icmp eq i64 %indvars.iv.next2346.34212, %wide.trip.count2349
  br i1 %exitcond2350.not.3, label %._crit_edge2003.preheader, label %.preheader1918.preheader.new

._crit_edge2003.preheader:                        ; preds = %.preheader1918.preheader.new, %.prol.loopexit4203
  %xtraiter4213 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4214.not = icmp eq i64 %xtraiter4213, 0
  br i1 %lcmp.mod4214.not, label %._crit_edge2003.prol.loopexit, label %._crit_edge2003.prol

._crit_edge2003.prol:                             ; preds = %._crit_edge2003.preheader, %._crit_edge2003.prol
  %indvars.iv2345.1.prol = phi i64 [ %indvars.iv.next2346.1.prol, %._crit_edge2003.prol ], [ %i.bxi, %._crit_edge2003.preheader ] ; 4 uses
  %prol.iter4215 = phi i64 [ %prol.iter4215.next, %._crit_edge2003.prol ], [ 0, %._crit_edge2003.preheader ]
  %indvars.iv2345.1.tr.prol = trunc nuw i64 %indvars.iv2345.1.prol to i32
  %i.cuy = shl nuw i32 %indvars.iv2345.1.tr.prol, 1
  %i.cuz = and i32 %i.cuy, 2
  %i.cva = or disjoint i32 %i.cuz, 4
  %i.cvb = lshr i32 %i.q, %i.cva
  %i.cvc = and i32 %i.cvb, 3
  %i.cvd = zext nneg i32 %i.cvc to i64
  %i.cve = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cvd
  %i.cvf = load ptr, ptr %i.cve, align 8, !tbaa !59 ; 2 uses
  %i.cvg = shl i64 %indvars.iv2345.1.prol, 32
  %sext2915.prol = add i64 %i.cvg, 8246337208320
  %i.cvh = ashr exact i64 %sext2915.prol, 30
  %i.cvi = getelementptr inbounds i8, ptr %i.cvf, i64 %i.cvh
  %i.cvj = load float, ptr %i.cvi, align 4, !tbaa !58
  %i.cvk = getelementptr inbounds nuw [4 x i8], ptr %i.cvf, i64 %indvars.iv2345.1.prol
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cvk, i64 512
  store float %i.cvj, ptr %i.cvl, align 4, !tbaa !58
  %indvars.iv.next2346.1.prol = add nuw nsw i64 %indvars.iv2345.1.prol, 1 ; 2 uses
  %prol.iter4215.next = add i64 %prol.iter4215, 1 ; 2 uses
  %prol.iter4215.cmp.not = icmp eq i64 %prol.iter4215.next, %xtraiter4213
  br i1 %prol.iter4215.cmp.not, label %._crit_edge2003.prol.loopexit, label %._crit_edge2003.prol, !llvm.loop !69

._crit_edge2003.prol.loopexit:                    ; preds = %._crit_edge2003.prol, %._crit_edge2003.preheader
  %indvars.iv2345.1.unr = phi i64 [ %i.bxi, %._crit_edge2003.preheader ], [ %indvars.iv.next2346.1.prol, %._crit_edge2003.prol ]
  %i.cvm = icmp ult i64 %i.bxk, 3
  br i1 %i.cvm, label %._crit_edge2003.1.preheader, label %._crit_edge2003

.loopexit1959.split:                              ; preds = %._crit_edge2003.6.prol.loopexit, %._crit_edge2003.6, %._crit_edge2000.split
  %or.cond2278 = select i1 %brmerge2277.not2309, i1 %i.bxd, i1 false
  br i1 %or.cond2278, label %.preheader1917.preheader, label %.loopexit1957

.preheader1917.preheader:                         ; preds = %.loopexit1959.split
  %i.cvn = zext nneg i32 %i.bwy to i64            ; 3 uses
  %wide.trip.count2358 = zext i32 %i.bxc to i64   ; 3 uses
  %i.cvo = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv2494
  %xtraiter4239 = and i64 %wide.trip.count2358, 3 ; 2 uses
  %lcmp.mod4240.not = icmp eq i64 %xtraiter4239, 0
  %i.cvp = sub nsw i64 %i.cvn, %wide.trip.count2358
  %i.cvq = icmp ugt i64 %i.cvp, -4
  br label %.preheader1917

.preheader1917:                                   ; preds = %.preheader1917.preheader, %._crit_edge2007
  %indvars.iv2360 = phi i64 [ 0, %.preheader1917.preheader ], [ %indvars.iv.next2361, %._crit_edge2007 ] ; 4 uses
  %i.cvr = trunc nuw nsw i64 %indvars.iv2360 to i32
  %i.cvs = sub i32 %i.ev, %i.cvr
  %i.cvt = mul nsw i32 %i.cvs, %i.ae
  %i.cvu = sext i32 %i.cvt to i64
  %i.cvv = add nsw i64 %indvars.iv2360, %i.bvw
  %indvars.iv2360.tr = trunc nuw i64 %indvars.iv2360 to i32
  %i.cvw = shl i32 %indvars.iv2360.tr, 2          ; 5 uses
  %i.cvx = getelementptr [4 x i8], ptr %i.cvo, i64 %i.cvu ; 5 uses
  %.idx2922 = shl i64 %i.cvv, 9                   ; 5 uses
  br i1 %lcmp.mod4240.not, label %.prol.loopexit4238, label %.prol.preheader4237

.prol.preheader4237:                              ; preds = %.preheader1917, %.prol.preheader4237
  %indvars.iv2355.prol = phi i64 [ %indvars.iv.next2356.prol, %.prol.preheader4237 ], [ %i.cvn, %.preheader1917 ] ; 4 uses
  %prol.iter4241 = phi i64 [ %prol.iter4241.next, %.prol.preheader4237 ], [ 0, %.preheader1917 ]
  %i.cvy = trunc nuw nsw i64 %indvars.iv2355.prol to i32
  %i.cvz = shl i32 %i.cvy, 1
  %i.cwa = and i32 %i.cvz, 2
  %i.cwb = or disjoint i32 %i.cvw, %i.cwa
  %i.cwc = lshr i32 %i.q, %i.cwb
  %i.cwd = and i32 %i.cwc, 3
  %i.cwe = getelementptr [4 x i8], ptr %i.cvx, i64 %indvars.iv2355.prol
  %i.cwf = load float, ptr %i.cwe, align 4, !tbaa !58
  %i.cwg = zext nneg i32 %i.cwd to i64
  %i.cwh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cwg
  %i.cwi = load ptr, ptr %i.cwh, align 8, !tbaa !59
  %i.cwj = getelementptr [4 x i8], ptr %i.cwi, i64 %indvars.iv2355.prol
  %i.cwk = getelementptr i8, ptr %i.cwj, i64 %.idx2922
  store float %i.cwf, ptr %i.cwk, align 4, !tbaa !58
  %indvars.iv.next2356.prol = add nuw nsw i64 %indvars.iv2355.prol, 1 ; 2 uses
  %prol.iter4241.next = add i64 %prol.iter4241, 1 ; 2 uses
  %prol.iter4241.cmp.not = icmp eq i64 %prol.iter4241.next, %xtraiter4239
  br i1 %prol.iter4241.cmp.not, label %.prol.loopexit4238, label %.prol.preheader4237, !llvm.loop !70

.prol.loopexit4238:                               ; preds = %.prol.preheader4237, %.preheader1917
  %indvars.iv2355.unr = phi i64 [ %i.cvn, %.preheader1917 ], [ %indvars.iv.next2356.prol, %.prol.preheader4237 ]
  br i1 %i.cvq, label %._crit_edge2007, label %.preheader1917.new

._crit_edge2007:                                  ; preds = %.preheader1917.new, %.prol.loopexit4238
  %indvars.iv.next2361 = add nuw nsw i64 %indvars.iv2360, 1 ; 2 uses
  %i.cwl = icmp slt i64 %indvars.iv.next2361, %i.bvx
  br i1 %i.cwl, label %.preheader1917, label %.loopexit1957

.preheader1917.new:                               ; preds = %.prol.loopexit4238, %.preheader1917.new
  %indvars.iv2355 = phi i64 [ %indvars.iv.next2356.3, %.preheader1917.new ], [ %indvars.iv2355.unr, %.prol.loopexit4238 ] ; 8 uses
  %i.cwm = trunc nuw nsw i64 %indvars.iv2355 to i32
  %i.cwn = shl i32 %i.cwm, 1
  %i.cwo = and i32 %i.cwn, 2
  %i.cwp = or disjoint i32 %i.cvw, %i.cwo
  %i.cwq = lshr i32 %i.q, %i.cwp
  %i.cwr = and i32 %i.cwq, 3
  %i.cws = getelementptr [4 x i8], ptr %i.cvx, i64 %indvars.iv2355
  %i.cwt = load float, ptr %i.cws, align 4, !tbaa !58
  %i.cwu = zext nneg i32 %i.cwr to i64
  %i.cwv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cwu
  %i.cww = load ptr, ptr %i.cwv, align 8, !tbaa !59
  %i.cwx = getelementptr [4 x i8], ptr %i.cww, i64 %indvars.iv2355
  %i.cwy = getelementptr i8, ptr %i.cwx, i64 %.idx2922
  store float %i.cwt, ptr %i.cwy, align 4, !tbaa !58
  %indvars.iv.next2356 = add nuw nsw i64 %indvars.iv2355, 1 ; 3 uses
  %i.cwz = trunc nuw nsw i64 %indvars.iv.next2356 to i32
  %i.cxa = shl i32 %i.cwz, 1
  %i.cxb = and i32 %i.cxa, 2
  %i.cxc = or disjoint i32 %i.cvw, %i.cxb
  %i.cxd = lshr i32 %i.q, %i.cxc
  %i.cxe = and i32 %i.cxd, 3
  %i.cxf = getelementptr [4 x i8], ptr %i.cvx, i64 %indvars.iv.next2356
  %i.cxg = load float, ptr %i.cxf, align 4, !tbaa !58
  %i.cxh = zext nneg i32 %i.cxe to i64
  %i.cxi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cxh
  %i.cxj = load ptr, ptr %i.cxi, align 8, !tbaa !59
  %i.cxk = getelementptr [4 x i8], ptr %i.cxj, i64 %indvars.iv.next2356
  %i.cxl = getelementptr i8, ptr %i.cxk, i64 %.idx2922
  store float %i.cxg, ptr %i.cxl, align 4, !tbaa !58
  %indvars.iv.next2356.1 = add nuw nsw i64 %indvars.iv2355, 2 ; 2 uses
  %i.cxm = trunc i64 %indvars.iv2355 to i32
  %i.cxn = shl i32 %i.cxm, 1
  %i.cxo = and i32 %i.cxn, 2
  %i.cxp = or disjoint i32 %i.cvw, %i.cxo
  %i.cxq = lshr i32 %i.q, %i.cxp
  %i.cxr = and i32 %i.cxq, 3
  %i.cxs = getelementptr [4 x i8], ptr %i.cvx, i64 %indvars.iv.next2356.1
  %i.cxt = load float, ptr %i.cxs, align 4, !tbaa !58
  %i.cxu = zext nneg i32 %i.cxr to i64
  %i.cxv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cxu
  %i.cxw = load ptr, ptr %i.cxv, align 8, !tbaa !59
  %i.cxx = getelementptr [4 x i8], ptr %i.cxw, i64 %indvars.iv.next2356.1
  %i.cxy = getelementptr i8, ptr %i.cxx, i64 %.idx2922
  store float %i.cxt, ptr %i.cxy, align 4, !tbaa !58
  %indvars.iv.next2356.2 = add nuw nsw i64 %indvars.iv2355, 3 ; 3 uses
  %i.cxz = trunc nuw nsw i64 %indvars.iv.next2356.2 to i32
  %i.cya = shl i32 %i.cxz, 1
  %i.cyb = and i32 %i.cya, 2
  %i.cyc = or disjoint i32 %i.cvw, %i.cyb
  %i.cyd = lshr i32 %i.q, %i.cyc
  %i.cye = and i32 %i.cyd, 3
  %i.cyf = getelementptr [4 x i8], ptr %i.cvx, i64 %indvars.iv.next2356.2
  %i.cyg = load float, ptr %i.cyf, align 4, !tbaa !58
  %i.cyh = zext nneg i32 %i.cye to i64
  %i.cyi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cyh
  %i.cyj = load ptr, ptr %i.cyi, align 8, !tbaa !59
  %i.cyk = getelementptr [4 x i8], ptr %i.cyj, i64 %indvars.iv.next2356.2
  %i.cyl = getelementptr i8, ptr %i.cyk, i64 %.idx2922
  store float %i.cyg, ptr %i.cyl, align 4, !tbaa !58
  %indvars.iv.next2356.3 = add nuw nsw i64 %indvars.iv2355, 4 ; 2 uses
  %exitcond2359.not.3 = icmp eq i64 %indvars.iv.next2356.3, %wide.trip.count2358
  br i1 %exitcond2359.not.3, label %._crit_edge2007, label %.preheader1917.new

.loopexit1957:                                    ; preds = %._crit_edge2007, %.loopexit1959.split
  %brmerge2281.not = select i1 %i.bwx, i1 %i.bvh, i1 false
  br i1 %brmerge2281.not, label %.preheader1916, label %.loopexit1955

.preheader1916:                                   ; preds = %.loopexit1957, %.preheader1916
  %indvars.iv2367 = phi i64 [ %indvars.iv.next2368, %.preheader1916 ], [ %i.bvv, %.loopexit1957 ] ; 3 uses
  %indvars.iv2367.tr = trunc nuw i64 %indvars.iv2367 to i32
  %i.cym = shl nuw i32 %indvars.iv2367.tr, 1
  %i.cyn = and i32 %i.cym, 14                     ; 2 uses
  %i.cyo = shl nuw nsw i64 %indvars.iv2367, 7     ; 16 uses
  %i.cyp = shl nuw nsw i32 %i.cyn, 1
  %i.cyq = lshr i32 %i.q, %i.cyp
  %i.cyr = and i32 %i.cyq, 3
  %i.cys = zext nneg i32 %i.cyr to i64
  %i.cyt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cys
  %i.cyu = load ptr, ptr %i.cyt, align 8, !tbaa !59 ; 8 uses
  %i.cyv = getelementptr inbounds nuw [4 x i8], ptr %i.cyu, i64 %i.cyo
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyv, i64 64
  %i.cyx = load float, ptr %i.cyw, align 4, !tbaa !58
  %i.cyy = getelementptr inbounds nuw [4 x i8], ptr %i.cyu, i64 %i.cyo
  store float %i.cyx, ptr %i.cyy, align 4, !tbaa !58
  %i.cyz = shl nuw nsw i32 %i.cyn, 1
  %i.cza = or disjoint i32 %i.cyz, 2
  %i.czb = lshr i32 %i.q, %i.cza
  %i.czc = and i32 %i.czb, 3
  %i.czd = zext nneg i32 %i.czc to i64
  %i.cze = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.czd
  %i.czf = load ptr, ptr %i.cze, align 8, !tbaa !59 ; 8 uses
  %i.czg = getelementptr inbounds nuw [4 x i8], ptr %i.czf, i64 %i.cyo
  %i.czh = getelementptr inbounds nuw i8, ptr %i.czg, i64 60
  %i.czi = load float, ptr %i.czh, align 4, !tbaa !58
  %i.czj = getelementptr inbounds nuw [4 x i8], ptr %i.czf, i64 %i.cyo
  %i.czk = getelementptr inbounds nuw i8, ptr %i.czj, i64 4
  store float %i.czi, ptr %i.czk, align 4, !tbaa !58
  %i.czl = getelementptr inbounds nuw [4 x i8], ptr %i.cyu, i64 %i.cyo
  %i.czm = getelementptr inbounds nuw i8, ptr %i.czl, i64 56
  %i.czn = load float, ptr %i.czm, align 4, !tbaa !58
  %i.czo = getelementptr inbounds nuw [4 x i8], ptr %i.cyu, i64 %i.cyo
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czo, i64 8
  store float %i.czn, ptr %i.czp, align 4, !tbaa !58
  %i.czq = getelementptr inbounds nuw [4 x i8], ptr %i.czf, i64 %i.cyo
  %i.czr = getelementptr inbounds nuw i8, ptr %i.czq, i64 52
  %i.czs = load float, ptr %i.czr, align 4, !tbaa !58
  %i.czt = getelementptr inbounds nuw [4 x i8], ptr %i.czf, i64 %i.cyo
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czt, i64 12
  store float %i.czs, ptr %i.czu, align 4, !tbaa !58
  %i.czv = getelementptr inbounds nuw [4 x i8], ptr %i.cyu, i64 %i.cyo
  %i.czw = getelementptr inbounds nuw i8, ptr %i.czv, i64 48
  %i.czx = load float, ptr %i.czw, align 4, !tbaa !58
  %i.czy = getelementptr inbounds nuw [4 x i8], ptr %i.cyu, i64 %i.cyo
  %i.czz = getelementptr inbounds nuw i8, ptr %i.czy, i64 16
  store float %i.czx, ptr %i.czz, align 4, !tbaa !58
  %i.daa = getelementptr inbounds nuw [4 x i8], ptr %i.czf, i64 %i.cyo
  %i.dab = getelementptr inbounds nuw i8, ptr %i.daa, i64 44
  %i.dac = load float, ptr %i.dab, align 4, !tbaa !58
  %i.dad = getelementptr inbounds nuw [4 x i8], ptr %i.czf, i64 %i.cyo
  %i.dae = getelementptr inbounds nuw i8, ptr %i.dad, i64 20
  store float %i.dac, ptr %i.dae, align 4, !tbaa !58
  %i.daf = getelementptr inbounds nuw [4 x i8], ptr %i.cyu, i64 %i.cyo
  %i.dag = getelementptr inbounds nuw i8, ptr %i.daf, i64 40
  %i.dah = load float, ptr %i.dag, align 4, !tbaa !58
  %i.dai = getelementptr inbounds nuw [4 x i8], ptr %i.cyu, i64 %i.cyo
  %i.daj = getelementptr inbounds nuw i8, ptr %i.dai, i64 24
  store float %i.dah, ptr %i.daj, align 4, !tbaa !58
  %i.dak = getelementptr inbounds nuw [4 x i8], ptr %i.czf, i64 %i.cyo
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dak, i64 36
  %i.dam = load float, ptr %i.dal, align 4, !tbaa !58
  %i.dan = getelementptr inbounds nuw [4 x i8], ptr %i.czf, i64 %i.cyo
  %i.dao = getelementptr inbounds nuw i8, ptr %i.dan, i64 28
  store float %i.dam, ptr %i.dao, align 4, !tbaa !58
  %indvars.iv.next2368 = add nuw nsw i64 %indvars.iv2367, 1 ; 2 uses
  %exitcond2371.not = icmp eq i64 %indvars.iv.next2368, %wide.trip.count2370
  br i1 %exitcond2371.not, label %.loopexit1955, label %.preheader1916

.loopexit1955:                                    ; preds = %.preheader1916, %.loopexit1957
  %i.dap = icmp sge i32 %i.bxc, %i.bww            ; 3 uses
  %brmerge2283 = select i1 %i.dap, i1 true, i1 %i.bvm
  br i1 %brmerge2283, label %.loopexit1953, label %.preheader1915.preheader

.preheader1915.preheader:                         ; preds = %.loopexit1955
  %i.daq = sub i32 %i.bww, %i.bxc
  %i.dar = tail call i32 @llvm.smin.i32(i32 %i.daq, i32 8) ; 2 uses
  %i.das = sext i32 %i.bxc to i64                 ; 5 uses
  %i.dat = call i32 @llvm.umax.i32(i32 %i.dar, i32 1)
  %umax4242 = zext i32 %i.dat to i64              ; 2 uses
  %xtraiter4243 = and i64 %umax4242, 3            ; 3 uses
  %i.dau = icmp ult i32 %i.dar, 4
  %unroll_iter4246 = and i64 %umax4242, 4294967292
  %lcmp.mod4244.not = icmp eq i64 %xtraiter4243, 0
  %lcmp.mod4245 = icmp ne i64 %xtraiter4243, 0
  br label %.preheader1915

.preheader1915:                                   ; preds = %.preheader1915.preheader, %._crit_edge2013
  %indvars.iv2375 = phi i64 [ %i.bvv, %.preheader1915.preheader ], [ %indvars.iv.next2376, %._crit_edge2013 ] ; 4 uses
  %indvars.iv2375.tr = trunc nuw i64 %indvars.iv2375 to i32
  %i.dav = shl nuw i32 %indvars.iv2375.tr, 1
  %i.daw = and i32 %i.dav, 14                     ; 5 uses
  %i.dax = add nsw i64 %indvars.iv2375, %indvars.iv2498
  %i.day = trunc i64 %i.dax to i32
  %i.daz = mul i32 %i.ae, %i.day
  %i.dba = add i32 %i.ew, %i.daz                  ; 5 uses
  %.idx2923 = shl i64 %indvars.iv2375, 9          ; 5 uses
  br i1 %i.dau, label %.epil.preheader, label %.preheader1915.new

.preheader1915.new:                               ; preds = %.preheader1915
  %i.dbb = shl nuw nsw i32 %i.daw, 1
  %i.dbc = lshr i32 %i.q, %i.dbb
  %i.dbd = and i32 %i.dbc, 3
  %i.dbe = zext nneg i32 %i.dbd to i64
  %i.dbf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dbe
  %i.dbg = load ptr, ptr %i.dbf, align 8, !tbaa !59
  %i.dbh = getelementptr i8, ptr %i.dbg, i64 %.idx2923
  %i.dbi = getelementptr [4 x i8], ptr %i.dbh, i64 %i.das
  %i.dbj = shl nuw nsw i32 %i.daw, 1
  %i.dbk = or disjoint i32 %i.dbj, 2
  %i.dbl = lshr i32 %i.q, %i.dbk
  %i.dbm = and i32 %i.dbl, 3
  %i.dbn = zext nneg i32 %i.dbm to i64
  %i.dbo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dbn
  %i.dbp = load ptr, ptr %i.dbo, align 8, !tbaa !59
  %i.dbq = getelementptr i8, ptr %i.dbp, i64 %.idx2923
  %i.dbr = getelementptr [4 x i8], ptr %i.dbq, i64 %i.das
  %i.dbs = shl nuw nsw i32 %i.daw, 1
  %i.dbt = lshr i32 %i.q, %i.dbs
  %i.dbu = and i32 %i.dbt, 3
  %i.dbv = zext nneg i32 %i.dbu to i64
  %i.dbw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dbv
  %i.dbx = load ptr, ptr %i.dbw, align 8, !tbaa !59
  %i.dby = getelementptr i8, ptr %i.dbx, i64 %.idx2923
  %i.dbz = getelementptr [4 x i8], ptr %i.dby, i64 %i.das
  %i.dca = shl nuw nsw i32 %i.daw, 1
  %i.dcb = or disjoint i32 %i.dca, 2
  %i.dcc = lshr i32 %i.q, %i.dcb
  %i.dcd = and i32 %i.dcc, 3
  %i.dce = zext nneg i32 %i.dcd to i64
  %i.dcf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dce
  %i.dcg = load ptr, ptr %i.dcf, align 8, !tbaa !59
  %i.dch = getelementptr i8, ptr %i.dcg, i64 %.idx2923
  %i.dci = getelementptr [4 x i8], ptr %i.dch, i64 %i.das
  br label %bb.s

._crit_edge2013.unr-lcssa:                        ; preds = %bb.s
  br i1 %lcmp.mod4244.not, label %._crit_edge2013, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge2013.unr-lcssa, %.preheader1915
  %indvars.iv2372.epil.init = phi i64 [ 0, %.preheader1915 ], [ %indvars.iv.next2373.3, %._crit_edge2013.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4245)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv2372.epil = phi i64 [ %indvars.iv2372.epil.init, %.epil.preheader ], [ %indvars.iv.next2373.epil, %bb.r ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dcj = trunc nuw nsw i64 %indvars.iv2372.epil to i32 ; 2 uses
  %i.dck = and i32 %i.dcj, 1
  %i.dcl = or disjoint i32 %i.dck, %i.daw
  %i.dcm = shl nuw nsw i32 %i.dcl, 1
  %i.dcn = lshr i32 %i.q, %i.dcm
  %i.dco = and i32 %i.dcn, 3
  %i.dcp = sub i32 %i.dba, %i.dcj
  %i.dcq = sext i32 %i.dcp to i64
  %i.dcr = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dcq
  %i.dcs = load float, ptr %i.dcr, align 4, !tbaa !58
  %i.dct = zext nneg i32 %i.dco to i64
  %i.dcu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dct
  %i.dcv = load ptr, ptr %i.dcu, align 8, !tbaa !59
  %i.dcw = getelementptr i8, ptr %i.dcv, i64 %.idx2923
  %i.dcx = getelementptr [4 x i8], ptr %i.dcw, i64 %i.das
  %i.dcy = getelementptr [4 x i8], ptr %i.dcx, i64 %indvars.iv2372.epil
  store float %i.dcs, ptr %i.dcy, align 4, !tbaa !58
  %indvars.iv.next2373.epil = add nuw nsw i64 %indvars.iv2372.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter4243
  br i1 %epil.iter.cmp.not, label %._crit_edge2013, label %bb.r, !llvm.loop !71

._crit_edge2013:                                  ; preds = %bb.r, %._crit_edge2013.unr-lcssa
  %indvars.iv.next2376 = add nuw nsw i64 %indvars.iv2375, 1 ; 2 uses
  %exitcond2379.not = icmp eq i64 %indvars.iv.next2376, %wide.trip.count2378
  br i1 %exitcond2379.not, label %.loopexit1953, label %.preheader1915

bb.s:                                             ; preds = %bb.s, %.preheader1915.new
  %indvars.iv2372 = phi i64 [ 0, %.preheader1915.new ], [ %indvars.iv.next2373.3, %bb.s ] ; 6 uses
  %niter4247 = phi i64 [ 0, %.preheader1915.new ], [ %niter4247.next.3, %bb.s ]
  %i.dcz = trunc nuw nsw i64 %indvars.iv2372 to i32
  %i.dda = sub i32 %i.dba, %i.dcz
  %i.ddb = sext i32 %i.dda to i64
  %i.ddc = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ddb
  %i.ddd = load float, ptr %i.ddc, align 4, !tbaa !58
  %i.dde = getelementptr [4 x i8], ptr %i.dbi, i64 %indvars.iv2372
  store float %i.ddd, ptr %i.dde, align 4, !tbaa !58
  %indvars.iv.next2373 = or disjoint i64 %indvars.iv2372, 1 ; 2 uses
  %i.ddf = trunc nuw nsw i64 %indvars.iv.next2373 to i32
  %i.ddg = sub i32 %i.dba, %i.ddf
  %i.ddh = sext i32 %i.ddg to i64
  %i.ddi = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ddh
  %i.ddj = load float, ptr %i.ddi, align 4, !tbaa !58
  %i.ddk = getelementptr [4 x i8], ptr %i.dbr, i64 %indvars.iv.next2373
  store float %i.ddj, ptr %i.ddk, align 4, !tbaa !58
  %indvars.iv.next2373.1 = or disjoint i64 %indvars.iv2372, 2 ; 2 uses
  %i.ddl = trunc nuw nsw i64 %indvars.iv.next2373.1 to i32
  %i.ddm = sub i32 %i.dba, %i.ddl
  %i.ddn = sext i32 %i.ddm to i64
  %i.ddo = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ddn
  %i.ddp = load float, ptr %i.ddo, align 4, !tbaa !58
  %i.ddq = getelementptr [4 x i8], ptr %i.dbz, i64 %indvars.iv.next2373.1
  store float %i.ddp, ptr %i.ddq, align 4, !tbaa !58
  %indvars.iv.next2373.2 = or disjoint i64 %indvars.iv2372, 3 ; 2 uses
  %i.ddr = trunc nuw nsw i64 %indvars.iv.next2373.2 to i32
  %i.dds = sub i32 %i.dba, %i.ddr
  %i.ddt = sext i32 %i.dds to i64
  %i.ddu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ddt
  %i.ddv = load float, ptr %i.ddu, align 4, !tbaa !58
  %i.ddw = getelementptr [4 x i8], ptr %i.dci, i64 %indvars.iv.next2373.2
  store float %i.ddv, ptr %i.ddw, align 4, !tbaa !58
  %indvars.iv.next2373.3 = add nuw nsw i64 %indvars.iv2372, 4 ; 2 uses
  %niter4247.next.3 = add i64 %niter4247, 4       ; 2 uses
  %niter4247.ncmp.3.not = icmp eq i64 %niter4247.next.3, %unroll_iter4246
  br i1 %niter4247.ncmp.3.not, label %._crit_edge2013.unr-lcssa, label %bb.s

.loopexit1953:                                    ; preds = %._crit_edge2013, %.loopexit1955
  %i.ddx = and i32 %i.bwv, %i.buz
  %or.cond7.not = icmp sgt i32 %i.ddx, -1
  br i1 %or.cond7.not, label %.loopexit1951, label %.preheader1914

.preheader1914:                                   ; preds = %.loopexit1953, %.preheader1914
  %indvars.iv2384 = phi i64 [ %indvars.iv.next2385, %.preheader1914 ], [ 0, %.loopexit1953 ] ; 4 uses
  %i.ddy = shl nuw nsw i64 %indvars.iv2384, 2     ; 2 uses
  %i.ddz = sub nuw nsw i64 16, %indvars.iv2384
  %i.dea = mul nsw i64 %i.ddz, %i.af              ; 8 uses
  %i.deb = shl nuw nsw i64 %indvars.iv2384, 7     ; 8 uses
  %i.dec = trunc nuw nsw i64 %i.ddy to i32
  %i.ded = lshr i32 %i.q, %i.dec
  %i.dee = and i32 %i.ded, 3
  %i.def = getelementptr [4 x i8], ptr %i.av, i64 %i.dea
  %i.deg = getelementptr i8, ptr %i.def, i64 64
  %i.deh = load float, ptr %i.deg, align 4, !tbaa !58
  %i.dei = zext nneg i32 %i.dee to i64
  %i.dej = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dei
  %i.dek = load ptr, ptr %i.dej, align 8, !tbaa !59 ; 4 uses
  %i.del = getelementptr inbounds nuw [4 x i8], ptr %i.dek, i64 %i.deb
  store float %i.deh, ptr %i.del, align 4, !tbaa !58
  %i.dem = trunc i64 %i.ddy to i32
  %i.den = or disjoint i32 %i.dem, 2
  %i.deo = lshr i32 %i.q, %i.den
  %i.dep = and i32 %i.deo, 3
  %i.deq = shl i64 %i.dea, 32
  %sext2924 = add i64 %i.deq, 64424509440
  %i.der = ashr exact i64 %sext2924, 30
  %i.des = getelementptr inbounds i8, ptr %i.av, i64 %i.der
  %i.det = load float, ptr %i.des, align 4, !tbaa !58
  %i.deu = zext nneg i32 %i.dep to i64
  %i.dev = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.deu
  %i.dew = load ptr, ptr %i.dev, align 8, !tbaa !59 ; 4 uses
  %i.dex = getelementptr inbounds nuw [4 x i8], ptr %i.dew, i64 %i.deb
  %i.dey = getelementptr inbounds nuw i8, ptr %i.dex, i64 4
  store float %i.det, ptr %i.dey, align 4, !tbaa !58
  %i.dez = shl i64 %i.dea, 32
  %sext2925 = add i64 %i.dez, 60129542144
  %i.dfa = ashr exact i64 %sext2925, 30
  %i.dfb = getelementptr inbounds i8, ptr %i.av, i64 %i.dfa
  %i.dfc = load float, ptr %i.dfb, align 4, !tbaa !58
  %i.dfd = getelementptr inbounds nuw [4 x i8], ptr %i.dek, i64 %i.deb
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.dfd, i64 8
  store float %i.dfc, ptr %i.dfe, align 4, !tbaa !58
  %i.dff = shl i64 %i.dea, 32
  %sext2926 = add i64 %i.dff, 55834574848
  %i.dfg = ashr exact i64 %sext2926, 30
  %i.dfh = getelementptr inbounds i8, ptr %i.av, i64 %i.dfg
  %i.dfi = load float, ptr %i.dfh, align 4, !tbaa !58
  %i.dfj = getelementptr inbounds nuw [4 x i8], ptr %i.dew, i64 %i.deb
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.dfj, i64 12
  store float %i.dfi, ptr %i.dfk, align 4, !tbaa !58
  %i.dfl = shl i64 %i.dea, 32
  %sext2927 = add i64 %i.dfl, 51539607552
  %i.dfm = ashr exact i64 %sext2927, 30
  %i.dfn = getelementptr inbounds i8, ptr %i.av, i64 %i.dfm
  %i.dfo = load float, ptr %i.dfn, align 4, !tbaa !58
  %i.dfp = getelementptr inbounds nuw [4 x i8], ptr %i.dek, i64 %i.deb
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dfp, i64 16
  store float %i.dfo, ptr %i.dfq, align 4, !tbaa !58
  %i.dfr = shl i64 %i.dea, 32
  %sext2928 = add i64 %i.dfr, 47244640256
  %i.dfs = ashr exact i64 %sext2928, 30
  %i.dft = getelementptr inbounds i8, ptr %i.av, i64 %i.dfs
  %i.dfu = load float, ptr %i.dft, align 4, !tbaa !58
  %i.dfv = getelementptr inbounds nuw [4 x i8], ptr %i.dew, i64 %i.deb
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.dfv, i64 20
  store float %i.dfu, ptr %i.dfw, align 4, !tbaa !58
  %i.dfx = shl i64 %i.dea, 32
  %sext2929 = add i64 %i.dfx, 42949672960
  %i.dfy = ashr exact i64 %sext2929, 30
  %i.dfz = getelementptr inbounds i8, ptr %i.av, i64 %i.dfy
  %i.dga = load float, ptr %i.dfz, align 4, !tbaa !58
  %i.dgb = getelementptr inbounds nuw [4 x i8], ptr %i.dek, i64 %i.deb
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.dgb, i64 24
  store float %i.dga, ptr %i.dgc, align 4, !tbaa !58
  %i.dgd = shl i64 %i.dea, 32
  %sext2930 = add i64 %i.dgd, 38654705664
  %i.dge = ashr exact i64 %sext2930, 30
  %i.dgf = getelementptr inbounds i8, ptr %i.av, i64 %i.dge
  %i.dgg = load float, ptr %i.dgf, align 4, !tbaa !58
  %i.dgh = getelementptr inbounds nuw [4 x i8], ptr %i.dew, i64 %i.deb
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dgh, i64 28
  store float %i.dgg, ptr %i.dgi, align 4, !tbaa !58
  %indvars.iv.next2385 = add nuw nsw i64 %indvars.iv2384, 1 ; 2 uses
  %exitcond2387.not = icmp eq i64 %indvars.iv.next2385, 8
  br i1 %exitcond2387.not, label %.loopexit1951, label %.preheader1914

.loopexit1951:                                    ; preds = %.preheader1914, %.loopexit1953
  %brmerge = or i1 %i.dap, %.not1793
  %brmerge2285 = select i1 %brmerge, i1 true, i1 %i.bvn
  br i1 %brmerge2285, label %.loopexit1949, label %.preheader1913.preheader

.preheader1913.preheader:                         ; preds = %.loopexit1951
  %i.dgj = sub i32 %i.bww, %i.bxc
  %i.dgk = tail call i32 @llvm.smin.i32(i32 %i.dgj, i32 8) ; 2 uses
  %i.dgl = sext i32 %i.bxc to i64                 ; 5 uses
  %i.dgm = call i32 @llvm.umax.i32(i32 %i.dgk, i32 1)
  %umax4249 = zext i32 %i.dgm to i64              ; 2 uses
  %xtraiter4250 = and i64 %umax4249, 3            ; 3 uses
  %i.dgn = icmp ult i32 %i.dgk, 4
  %unroll_iter4254 = and i64 %umax4249, 4294967292
  %lcmp.mod4252.not = icmp eq i64 %xtraiter4250, 0
  %lcmp.mod4253 = icmp ne i64 %xtraiter4250, 0
  br label %.preheader1913

.preheader1913:                                   ; preds = %.preheader1913.preheader, %._crit_edge2019
  %indvars.iv2391 = phi i64 [ 0, %.preheader1913.preheader ], [ %indvars.iv.next2392, %._crit_edge2019 ] ; 4 uses
  %i.dgo = trunc nuw nsw i64 %indvars.iv2391 to i32
  %i.dgp = sub i32 %i.ev, %i.dgo
  %i.dgq = mul nsw i32 %i.dgp, %i.ae
  %i.dgr = add i32 %i.ew, %i.dgq                  ; 5 uses
  %i.dgs = add nsw i64 %indvars.iv2391, %i.bvw
  %indvars.iv2391.tr = trunc nuw i64 %indvars.iv2391 to i32
  %i.dgt = shl i32 %indvars.iv2391.tr, 2          ; 5 uses
  %.idx2931 = shl i64 %i.dgs, 9                   ; 5 uses
  br i1 %i.dgn, label %.epil.preheader4248, label %.preheader1913.new

.preheader1913.new:                               ; preds = %.preheader1913
  %i.dgu = lshr i32 %i.q, %i.dgt
  %i.dgv = and i32 %i.dgu, 3
  %i.dgw = zext nneg i32 %i.dgv to i64
  %i.dgx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dgw
  %i.dgy = load ptr, ptr %i.dgx, align 8, !tbaa !59
  %i.dgz = getelementptr i8, ptr %i.dgy, i64 %.idx2931
  %i.dha = getelementptr [4 x i8], ptr %i.dgz, i64 %i.dgl
  %i.dhb = or disjoint i32 %i.dgt, 2
  %i.dhc = lshr i32 %i.q, %i.dhb
  %i.dhd = and i32 %i.dhc, 3
  %i.dhe = zext nneg i32 %i.dhd to i64
  %i.dhf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dhe
  %i.dhg = load ptr, ptr %i.dhf, align 8, !tbaa !59
  %i.dhh = getelementptr i8, ptr %i.dhg, i64 %.idx2931
  %i.dhi = getelementptr [4 x i8], ptr %i.dhh, i64 %i.dgl
  %i.dhj = lshr i32 %i.q, %i.dgt
  %i.dhk = and i32 %i.dhj, 3
  %i.dhl = zext nneg i32 %i.dhk to i64
  %i.dhm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dhl
  %i.dhn = load ptr, ptr %i.dhm, align 8, !tbaa !59
  %i.dho = getelementptr i8, ptr %i.dhn, i64 %.idx2931
  %i.dhp = getelementptr [4 x i8], ptr %i.dho, i64 %i.dgl
  %i.dhq = or disjoint i32 %i.dgt, 2
  %i.dhr = lshr i32 %i.q, %i.dhq
  %i.dhs = and i32 %i.dhr, 3
  %i.dht = zext nneg i32 %i.dhs to i64
  %i.dhu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dht
  %i.dhv = load ptr, ptr %i.dhu, align 8, !tbaa !59
  %i.dhw = getelementptr i8, ptr %i.dhv, i64 %.idx2931
  %i.dhx = getelementptr [4 x i8], ptr %i.dhw, i64 %i.dgl
  br label %bb.u

._crit_edge2019.unr-lcssa:                        ; preds = %bb.u
  br i1 %lcmp.mod4252.not, label %._crit_edge2019, label %.epil.preheader4248

.epil.preheader4248:                              ; preds = %._crit_edge2019.unr-lcssa, %.preheader1913
  %indvars.iv2388.epil.init = phi i64 [ 0, %.preheader1913 ], [ %indvars.iv.next2389.3, %._crit_edge2019.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4253)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader4248
  %indvars.iv2388.epil = phi i64 [ %indvars.iv2388.epil.init, %.epil.preheader4248 ], [ %indvars.iv.next2389.epil, %bb.t ] ; 3 uses
  %epil.iter4251 = phi i64 [ 0, %.epil.preheader4248 ], [ %epil.iter4251.next, %bb.t ]
  %i.dhy = trunc nuw nsw i64 %indvars.iv2388.epil to i32 ; 2 uses
  %i.dhz = shl i32 %i.dhy, 1
  %i.dia = and i32 %i.dhz, 2
  %i.dib = or disjoint i32 %i.dgt, %i.dia
  %i.dic = lshr i32 %i.q, %i.dib
  %i.did = and i32 %i.dic, 3
  %i.die = sub i32 %i.dgr, %i.dhy
  %i.dif = sext i32 %i.die to i64
  %i.dig = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dif
  %i.dih = load float, ptr %i.dig, align 4, !tbaa !58
  %i.dii = zext nneg i32 %i.did to i64
  %i.dij = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dii
  %i.dik = load ptr, ptr %i.dij, align 8, !tbaa !59
  %i.dil = getelementptr i8, ptr %i.dik, i64 %.idx2931
  %i.dim = getelementptr [4 x i8], ptr %i.dil, i64 %i.dgl
  %i.din = getelementptr [4 x i8], ptr %i.dim, i64 %indvars.iv2388.epil
  store float %i.dih, ptr %i.din, align 4, !tbaa !58
  %indvars.iv.next2389.epil = add nuw nsw i64 %indvars.iv2388.epil, 1
  %epil.iter4251.next = add i64 %epil.iter4251, 1 ; 2 uses
  %epil.iter4251.cmp.not = icmp eq i64 %epil.iter4251.next, %xtraiter4250
  br i1 %epil.iter4251.cmp.not, label %._crit_edge2019, label %bb.t, !llvm.loop !72

._crit_edge2019:                                  ; preds = %bb.t, %._crit_edge2019.unr-lcssa
  %indvars.iv.next2392 = add nuw nsw i64 %indvars.iv2391, 1 ; 2 uses
  %i.dio = icmp slt i64 %indvars.iv.next2392, %i.bvx
  br i1 %i.dio, label %.preheader1913, label %.loopexit1949

bb.u:                                             ; preds = %bb.u, %.preheader1913.new
  %indvars.iv2388 = phi i64 [ 0, %.preheader1913.new ], [ %indvars.iv.next2389.3, %bb.u ] ; 6 uses
  %niter4255 = phi i64 [ 0, %.preheader1913.new ], [ %niter4255.next.3, %bb.u ]
  %i.dip = trunc nuw nsw i64 %indvars.iv2388 to i32
  %i.diq = sub i32 %i.dgr, %i.dip
  %i.dir = sext i32 %i.diq to i64
  %i.dis = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dir
  %i.dit = load float, ptr %i.dis, align 4, !tbaa !58
  %i.diu = getelementptr [4 x i8], ptr %i.dha, i64 %indvars.iv2388
  store float %i.dit, ptr %i.diu, align 4, !tbaa !58
  %indvars.iv.next2389 = or disjoint i64 %indvars.iv2388, 1 ; 2 uses
  %i.div = trunc nuw nsw i64 %indvars.iv.next2389 to i32
  %i.diw = sub i32 %i.dgr, %i.div
  %i.dix = sext i32 %i.diw to i64
  %i.diy = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dix
  %i.diz = load float, ptr %i.diy, align 4, !tbaa !58
  %i.dja = getelementptr [4 x i8], ptr %i.dhi, i64 %indvars.iv.next2389
  store float %i.diz, ptr %i.dja, align 4, !tbaa !58
  %indvars.iv.next2389.1 = or disjoint i64 %indvars.iv2388, 2 ; 2 uses
  %i.djb = trunc nuw nsw i64 %indvars.iv.next2389.1 to i32
  %i.djc = sub i32 %i.dgr, %i.djb
  %i.djd = sext i32 %i.djc to i64
  %i.dje = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.djd
  %i.djf = load float, ptr %i.dje, align 4, !tbaa !58
  %i.djg = getelementptr [4 x i8], ptr %i.dhp, i64 %indvars.iv.next2389.1
  store float %i.djf, ptr %i.djg, align 4, !tbaa !58
  %indvars.iv.next2389.2 = or disjoint i64 %indvars.iv2388, 3 ; 2 uses
  %i.djh = trunc nuw nsw i64 %indvars.iv.next2389.2 to i32
  %i.dji = sub i32 %i.dgr, %i.djh
  %i.djj = sext i32 %i.dji to i64
  %i.djk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.djj
  %i.djl = load float, ptr %i.djk, align 4, !tbaa !58
  %i.djm = getelementptr [4 x i8], ptr %i.dhx, i64 %indvars.iv.next2389.2
  store float %i.djl, ptr %i.djm, align 4, !tbaa !58
  %indvars.iv.next2389.3 = add nuw nsw i64 %indvars.iv2388, 4 ; 2 uses
  %niter4255.next.3 = add i64 %niter4255, 4       ; 2 uses
  %niter4255.ncmp.3.not = icmp eq i64 %niter4255.next.3, %unroll_iter4254
  br i1 %niter4255.ncmp.3.not, label %._crit_edge2019.unr-lcssa, label %bb.u

.loopexit1949:                                    ; preds = %._crit_edge2019, %.loopexit1951
  %brmerge1797 = or i1 %i.bvb, %i.dap
  br i1 %brmerge1797, label %.loopexit1947.split, label %.preheader1912.preheader

.preheader1912.preheader:                         ; preds = %.loopexit1949
  %i.djn = sext i32 %i.bxc to i64                 ; 64 uses
  %i.djo = add i32 %smin2431, %indvars.iv2403
  %i.djp = sub i32 %i.djo, %i.bxc                 ; 56 uses
  %i.djq = load float, ptr %i.ty, align 4, !tbaa !58
  %i.djr = load ptr, ptr %i.ua, align 8, !tbaa !59
  %i.djs = getelementptr [4 x i8], ptr %i.djr, i64 %i.djn
  store float %i.djq, ptr %i.djs, align 4, !tbaa !58
  %exitcond2434.not = icmp slt i32 %i.djp, 2
  br i1 %exitcond2434.not, label %._crit_edge2023.preheader, label %bb.v

._crit_edge2023.14270:                            ; preds = %._crit_edge2023.preheader
  %i.djt = load float, ptr %i.wf, align 4, !tbaa !58
  %i.dju = load ptr, ptr %i.wh, align 8, !tbaa !59
  %i.djv = getelementptr [4 x i8], ptr %i.dju, i64 %i.djn
  %i.djw = getelementptr i8, ptr %i.djv, i64 516
  store float %i.djt, ptr %i.djw, align 4, !tbaa !58
  %exitcond2430.not.1 = icmp eq i32 %i.djp, 2
  br i1 %exitcond2430.not.1, label %._crit_edge2023.1, label %._crit_edge2023.24271

._crit_edge2023.24271:                            ; preds = %._crit_edge2023.14270
  %i.djx = load float, ptr %i.wm, align 4, !tbaa !58
  %i.djy = load ptr, ptr %i.wo, align 8, !tbaa !59
  %i.djz = getelementptr [4 x i8], ptr %i.djy, i64 %i.djn
  %i.dka = getelementptr i8, ptr %i.djz, i64 520
  store float %i.djx, ptr %i.dka, align 4, !tbaa !58
  %exitcond2430.not.2 = icmp eq i32 %i.djp, 3
  br i1 %exitcond2430.not.2, label %._crit_edge2023.1, label %._crit_edge2023.34272

._crit_edge2023.34272:                            ; preds = %._crit_edge2023.24271
  %i.dkb = load float, ptr %i.wt, align 4, !tbaa !58
  %i.dkc = load ptr, ptr %i.wv, align 8, !tbaa !59
  %i.dkd = getelementptr [4 x i8], ptr %i.dkc, i64 %i.djn
  %i.dke = getelementptr i8, ptr %i.dkd, i64 524
  store float %i.dkb, ptr %i.dke, align 4, !tbaa !58
  %exitcond2430.not.3 = icmp eq i32 %i.djp, 4
  br i1 %exitcond2430.not.3, label %._crit_edge2023.1, label %._crit_edge2023.44273

._crit_edge2023.44273:                            ; preds = %._crit_edge2023.34272
  %i.dkf = load float, ptr %i.xa, align 4, !tbaa !58
  %i.dkg = load ptr, ptr %i.xc, align 8, !tbaa !59
  %i.dkh = getelementptr [4 x i8], ptr %i.dkg, i64 %i.djn
  %i.dki = getelementptr i8, ptr %i.dkh, i64 528
  store float %i.dkf, ptr %i.dki, align 4, !tbaa !58
  %exitcond2430.not.4 = icmp eq i32 %i.djp, 5
  br i1 %exitcond2430.not.4, label %._crit_edge2023.1, label %._crit_edge2023.54274

._crit_edge2023.54274:                            ; preds = %._crit_edge2023.44273
  %i.dkj = load float, ptr %i.xh, align 4, !tbaa !58
  %i.dkk = load ptr, ptr %i.xj, align 8, !tbaa !59
  %i.dkl = getelementptr [4 x i8], ptr %i.dkk, i64 %i.djn
  %i.dkm = getelementptr i8, ptr %i.dkl, i64 532
  store float %i.dkj, ptr %i.dkm, align 4, !tbaa !58
  %exitcond2430.not.5 = icmp eq i32 %i.djp, 6
  br i1 %exitcond2430.not.5, label %._crit_edge2023.1, label %._crit_edge2023.64275

._crit_edge2023.64275:                            ; preds = %._crit_edge2023.54274
  %i.dkn = load float, ptr %i.xo, align 32, !tbaa !58
  %i.dko = load ptr, ptr %i.xq, align 8, !tbaa !59
  %i.dkp = getelementptr [4 x i8], ptr %i.dko, i64 %i.djn
  %i.dkq = getelementptr i8, ptr %i.dkp, i64 536
  store float %i.dkn, ptr %i.dkq, align 4, !tbaa !58
  %exitcond2430.not.6 = icmp eq i32 %i.djp, 7
  br i1 %exitcond2430.not.6, label %._crit_edge2023.1, label %._crit_edge2023.7

._crit_edge2023.7:                                ; preds = %._crit_edge2023.64275
  %i.dkr = load float, ptr %i.xv, align 4, !tbaa !58
  %i.dks = load ptr, ptr %i.xx, align 8, !tbaa !59
  %i.dkt = getelementptr [4 x i8], ptr %i.dks, i64 %i.djn
  %i.dku = getelementptr i8, ptr %i.dkt, i64 540
  store float %i.dkr, ptr %i.dku, align 4, !tbaa !58
  br label %._crit_edge2023.1

._crit_edge2023.1:                                ; preds = %._crit_edge2023.preheader, %._crit_edge2023.14270, %._crit_edge2023.24271, %._crit_edge2023.34272, %._crit_edge2023.44273, %._crit_edge2023.54274, %._crit_edge2023.64275, %._crit_edge2023.7
  %i.dkv = load float, ptr %i.yb, align 4, !tbaa !58
  %i.dkw = load ptr, ptr %i.yd, align 8, !tbaa !59
  %i.dkx = getelementptr [4 x i8], ptr %i.dkw, i64 %i.djn
  %i.dky = getelementptr i8, ptr %i.dkx, i64 1024
  store float %i.dkv, ptr %i.dky, align 4, !tbaa !58
  %exitcond2426.not = icmp slt i32 %i.djp, 2
  br i1 %exitcond2426.not, label %._crit_edge2023.2, label %._crit_edge2023.1.1

end_hunk_0
begin_hunk_1_@process:bb.a

._crit_edge2023.5.3:                              ; preds = %._crit_edge2023.5.2
  %i.dqf = load float, ptr %i.ahi, align 4, !tbaa !58
  %i.dqg = load ptr, ptr %i.ahk, align 8, !tbaa !59
  %i.dqh = getelementptr [4 x i8], ptr %i.dqg, i64 %i.djn
  %i.dqi = getelementptr i8, ptr %i.dqh, i64 3084
  store float %i.dqf, ptr %i.dqi, align 4, !tbaa !58
  %exitcond2410.not.3 = icmp eq i32 %i.djp, 4
  br i1 %exitcond2410.not.3, label %._crit_edge2023.6, label %._crit_edge2023.5.4

._crit_edge2023.5.4:                              ; preds = %._crit_edge2023.5.3
  %i.dqj = load float, ptr %i.ahp, align 4, !tbaa !58
  %i.dqk = load ptr, ptr %i.ahr, align 8, !tbaa !59
  %i.dql = getelementptr [4 x i8], ptr %i.dqk, i64 %i.djn
  %i.dqm = getelementptr i8, ptr %i.dql, i64 3088
  store float %i.dqj, ptr %i.dqm, align 4, !tbaa !58
  %exitcond2410.not.4 = icmp eq i32 %i.djp, 5
  br i1 %exitcond2410.not.4, label %._crit_edge2023.6, label %._crit_edge2023.5.5

._crit_edge2023.5.5:                              ; preds = %._crit_edge2023.5.4
  %i.dqn = load float, ptr %i.ahw, align 4, !tbaa !58
  %i.dqo = load ptr, ptr %i.ahy, align 8, !tbaa !59
  %i.dqp = getelementptr [4 x i8], ptr %i.dqo, i64 %i.djn
  %i.dqq = getelementptr i8, ptr %i.dqp, i64 3092
  store float %i.dqn, ptr %i.dqq, align 4, !tbaa !58
  %exitcond2410.not.5 = icmp eq i32 %i.djp, 6
  br i1 %exitcond2410.not.5, label %._crit_edge2023.6, label %._crit_edge2023.5.6

._crit_edge2023.5.6:                              ; preds = %._crit_edge2023.5.5
  %i.dqr = load float, ptr %i.aid, align 4, !tbaa !58
  %i.dqs = load ptr, ptr %i.aif, align 8, !tbaa !59
  %i.dqt = getelementptr [4 x i8], ptr %i.dqs, i64 %i.djn
  %i.dqu = getelementptr i8, ptr %i.dqt, i64 3096
  store float %i.dqr, ptr %i.dqu, align 4, !tbaa !58
  %exitcond2410.not.6 = icmp eq i32 %i.djp, 7
  br i1 %exitcond2410.not.6, label %._crit_edge2023.6, label %._crit_edge2023.5.7

._crit_edge2023.5.7:                              ; preds = %._crit_edge2023.5.6
  %i.dqv = load float, ptr %i.aik, align 4, !tbaa !58
  %i.dqw = load ptr, ptr %i.aim, align 8, !tbaa !59
  %i.dqx = getelementptr [4 x i8], ptr %i.dqw, i64 %i.djn
  %i.dqy = getelementptr i8, ptr %i.dqx, i64 3100
  store float %i.dqv, ptr %i.dqy, align 4, !tbaa !58
  br label %._crit_edge2023.6

._crit_edge2023.6:                                ; preds = %._crit_edge2023.5, %._crit_edge2023.5.1, %._crit_edge2023.5.2, %._crit_edge2023.5.3, %._crit_edge2023.5.4, %._crit_edge2023.5.5, %._crit_edge2023.5.6, %._crit_edge2023.5.7
  %i.dqz = load float, ptr %i.aiq, align 4, !tbaa !58
  %i.dra = load ptr, ptr %i.ais, align 8, !tbaa !59
  %i.drb = getelementptr [4 x i8], ptr %i.dra, i64 %i.djn
  %i.drc = getelementptr i8, ptr %i.drb, i64 3584
  store float %i.dqz, ptr %i.drc, align 4, !tbaa !58
  %exitcond2406.not = icmp slt i32 %i.djp, 2
  br i1 %exitcond2406.not, label %.loopexit1947.split, label %._crit_edge2023.6.1

._crit_edge2023.6.1:                              ; preds = %._crit_edge2023.6
  %i.drd = load float, ptr %i.aiw, align 4, !tbaa !58
  %i.dre = load ptr, ptr %i.aiy, align 8, !tbaa !59
  %i.drf = getelementptr [4 x i8], ptr %i.dre, i64 %i.djn
  %i.drg = getelementptr i8, ptr %i.drf, i64 3588
  store float %i.drd, ptr %i.drg, align 4, !tbaa !58
  %exitcond2406.not.1 = icmp eq i32 %i.djp, 2
  br i1 %exitcond2406.not.1, label %.loopexit1947.split, label %._crit_edge2023.6.2

._crit_edge2023.6.2:                              ; preds = %._crit_edge2023.6.1
  %i.drh = load float, ptr %i.ajd, align 4, !tbaa !58
  %i.dri = load ptr, ptr %i.ajf, align 8, !tbaa !59
  %i.drj = getelementptr [4 x i8], ptr %i.dri, i64 %i.djn
  %i.drk = getelementptr i8, ptr %i.drj, i64 3592
  store float %i.drh, ptr %i.drk, align 4, !tbaa !58
  %exitcond2406.not.2 = icmp eq i32 %i.djp, 3
  br i1 %exitcond2406.not.2, label %.loopexit1947.split, label %._crit_edge2023.6.3

._crit_edge2023.6.3:                              ; preds = %._crit_edge2023.6.2
  %i.drl = load float, ptr %i.ajj, align 4, !tbaa !58
  %i.drm = load ptr, ptr %i.ajl, align 8, !tbaa !59
  %i.drn = getelementptr [4 x i8], ptr %i.drm, i64 %i.djn
  %i.dro = getelementptr i8, ptr %i.drn, i64 3596
  store float %i.drl, ptr %i.dro, align 4, !tbaa !58
  %exitcond2406.not.3 = icmp eq i32 %i.djp, 4
  br i1 %exitcond2406.not.3, label %.loopexit1947.split, label %._crit_edge2023.6.4

._crit_edge2023.6.4:                              ; preds = %._crit_edge2023.6.3
  %i.drp = load float, ptr %i.ajq, align 4, !tbaa !58
  %i.drq = load ptr, ptr %i.ajs, align 8, !tbaa !59
  %i.drr = getelementptr [4 x i8], ptr %i.drq, i64 %i.djn
  %i.drs = getelementptr i8, ptr %i.drr, i64 3600
  store float %i.drp, ptr %i.drs, align 4, !tbaa !58
  %exitcond2406.not.4 = icmp eq i32 %i.djp, 5
  br i1 %exitcond2406.not.4, label %.loopexit1947.split, label %._crit_edge2023.6.5

._crit_edge2023.6.5:                              ; preds = %._crit_edge2023.6.4
  %i.drt = load float, ptr %i.ajw, align 4, !tbaa !58
  %i.dru = load ptr, ptr %i.ajy, align 8, !tbaa !59
  %i.drv = getelementptr [4 x i8], ptr %i.dru, i64 %i.djn
  %i.drw = getelementptr i8, ptr %i.drv, i64 3604
  store float %i.drt, ptr %i.drw, align 4, !tbaa !58
  %exitcond2406.not.5 = icmp eq i32 %i.djp, 6
  br i1 %exitcond2406.not.5, label %.loopexit1947.split, label %._crit_edge2023.6.6

._crit_edge2023.6.6:                              ; preds = %._crit_edge2023.6.5
  %i.drx = load float, ptr %i.akd, align 4, !tbaa !58
  %i.dry = load ptr, ptr %i.akf, align 8, !tbaa !59
  %i.drz = getelementptr [4 x i8], ptr %i.dry, i64 %i.djn
  %i.dsa = getelementptr i8, ptr %i.drz, i64 3608
  store float %i.drx, ptr %i.dsa, align 4, !tbaa !58
  %exitcond2406.not.6 = icmp eq i32 %i.djp, 7
  br i1 %exitcond2406.not.6, label %.loopexit1947.split, label %._crit_edge2023.6.7

._crit_edge2023.6.7:                              ; preds = %._crit_edge2023.6.6
  %i.dsb = load float, ptr %i.akj, align 4, !tbaa !58
  %i.dsc = load ptr, ptr %i.akl, align 8, !tbaa !59
  %i.dsd = getelementptr [4 x i8], ptr %i.dsc, i64 %i.djn
  %i.dse = getelementptr i8, ptr %i.dsd, i64 3612
  store float %i.dsb, ptr %i.dse, align 4, !tbaa !58
  br label %.loopexit1947.split

bb.v:                                             ; preds = %.preheader1912.preheader
  %i.dsf = load float, ptr %i.uf, align 4, !tbaa !58
  %i.dsg = load ptr, ptr %i.uh, align 8, !tbaa !59
  %i.dsh = getelementptr i8, ptr %i.dsg, i64 4
  %i.dsi = getelementptr [4 x i8], ptr %i.dsh, i64 %i.djn
  store float %i.dsf, ptr %i.dsi, align 4, !tbaa !58
  %exitcond2434.not.1 = icmp eq i32 %i.djp, 2
  br i1 %exitcond2434.not.1, label %._crit_edge2023.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dsj = load float, ptr %i.ul, align 4, !tbaa !58
  %i.dsk = load ptr, ptr %i.un, align 8, !tbaa !59
  %i.dsl = getelementptr i8, ptr %i.dsk, i64 8
  %i.dsm = getelementptr [4 x i8], ptr %i.dsl, i64 %i.djn
  store float %i.dsj, ptr %i.dsm, align 4, !tbaa !58
  %exitcond2434.not.2 = icmp eq i32 %i.djp, 3
  br i1 %exitcond2434.not.2, label %._crit_edge2023.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dsn = load float, ptr %i.us, align 4, !tbaa !58
  %i.dso = load ptr, ptr %i.uu, align 8, !tbaa !59
  %i.dsp = getelementptr i8, ptr %i.dso, i64 12
  %i.dsq = getelementptr [4 x i8], ptr %i.dsp, i64 %i.djn
  store float %i.dsn, ptr %i.dsq, align 4, !tbaa !58
  %exitcond2434.not.3 = icmp eq i32 %i.djp, 4
  br i1 %exitcond2434.not.3, label %._crit_edge2023.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dsr = load float, ptr %i.uy, align 4, !tbaa !58
  %i.dss = load ptr, ptr %i.va, align 8, !tbaa !59
  %i.dst = getelementptr i8, ptr %i.dss, i64 16
  %i.dsu = getelementptr [4 x i8], ptr %i.dst, i64 %i.djn
  store float %i.dsr, ptr %i.dsu, align 4, !tbaa !58
  %exitcond2434.not.4 = icmp eq i32 %i.djp, 5
  br i1 %exitcond2434.not.4, label %._crit_edge2023.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dsv = load float, ptr %i.vf, align 4, !tbaa !58
  %i.dsw = load ptr, ptr %i.vh, align 8, !tbaa !59
  %i.dsx = getelementptr i8, ptr %i.dsw, i64 20
  %i.dsy = getelementptr [4 x i8], ptr %i.dsx, i64 %i.djn
  store float %i.dsv, ptr %i.dsy, align 4, !tbaa !58
  %exitcond2434.not.5 = icmp eq i32 %i.djp, 6
  br i1 %exitcond2434.not.5, label %._crit_edge2023.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dsz = load float, ptr %i.vl, align 4, !tbaa !58
  %i.dta = load ptr, ptr %i.vn, align 8, !tbaa !59
  %i.dtb = getelementptr i8, ptr %i.dta, i64 24
  %i.dtc = getelementptr [4 x i8], ptr %i.dtb, i64 %i.djn
  store float %i.dsz, ptr %i.dtc, align 4, !tbaa !58
  %exitcond2434.not.6 = icmp eq i32 %i.djp, 7
  br i1 %exitcond2434.not.6, label %._crit_edge2023.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dtd = load float, ptr %i.vs, align 4, !tbaa !58
  %i.dte = load ptr, ptr %i.vu, align 8, !tbaa !59
  %i.dtf = getelementptr i8, ptr %i.dte, i64 28
  %i.dtg = getelementptr [4 x i8], ptr %i.dtf, i64 %i.djn
  store float %i.dtd, ptr %i.dtg, align 4, !tbaa !58
  br label %._crit_edge2023.preheader

._crit_edge2023.preheader:                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.preheader1912.preheader
  %i.dth = load float, ptr %i.vy, align 4, !tbaa !58
  %i.dti = load ptr, ptr %i.wa, align 8, !tbaa !59
  %i.dtj = getelementptr [4 x i8], ptr %i.dti, i64 %i.djn
  %i.dtk = getelementptr i8, ptr %i.dtj, i64 512
  store float %i.dth, ptr %i.dtk, align 4, !tbaa !58
  %exitcond2430.not = icmp slt i32 %i.djp, 2
  br i1 %exitcond2430.not, label %._crit_edge2023.1, label %._crit_edge2023.14270

.loopexit1947.split:                              ; preds = %._crit_edge2023.6, %._crit_edge2023.6.1, %._crit_edge2023.6.2, %._crit_edge2023.6.3, %._crit_edge2023.6.4, %._crit_edge2023.6.5, %._crit_edge2023.6.6, %._crit_edge2023.6.7, %.loopexit1949
  %or.cond9 = and i1 %i.bvi, %i.bwx
  %brmerge2287.not = select i1 %or.cond9, i1 %i.bvl, i1 false
  br i1 %brmerge2287.not, label %.preheader1911, label %.loopexit1945

.preheader1911:                                   ; preds = %.loopexit1947.split, %.preheader1911
  %indvars.iv2439 = phi i64 [ %indvars.iv.next2440, %.preheader1911 ], [ 0, %.loopexit1947.split ] ; 5 uses
  %i.dtl = trunc nuw nsw i64 %indvars.iv2439 to i32
  %i.dtm = sub i32 %i.ev, %i.dtl
  %i.dtn = mul nsw i32 %i.dtm, %i.ae              ; 8 uses
  %reass.sub1791 = add i32 %i.dtn, 16
  %i.dto = add nsw i64 %indvars.iv2439, %i.bvw
  %i.dtp = shl nsw i64 %i.dto, 7                  ; 8 uses
  %indvars.iv2439.tr = trunc nuw i64 %indvars.iv2439 to i32
  %i.dtq = shl nuw nsw i32 %indvars.iv2439.tr, 2
  %i.dtr = lshr i32 %i.q, %i.dtq
  %i.dts = and i32 %i.dtr, 3
  %i.dtt = sext i32 %reass.sub1791 to i64
  %i.dtu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dtt
  %i.dtv = load float, ptr %i.dtu, align 4, !tbaa !58
  %i.dtw = zext nneg i32 %i.dts to i64
  %i.dtx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dtw
  %i.dty = load ptr, ptr %i.dtx, align 8, !tbaa !59 ; 4 uses
  %i.dtz = getelementptr inbounds [4 x i8], ptr %i.dty, i64 %i.dtp
  store float %i.dtv, ptr %i.dtz, align 4, !tbaa !58
  %indvars.iv2439.tr2932 = trunc i64 %indvars.iv2439 to i32
  %i.dua = shl i32 %indvars.iv2439.tr2932, 2
  %i.dub = or disjoint i32 %i.dua, 2
  %i.duc = lshr i32 %i.q, %i.dub
  %i.dud = and i32 %i.duc, 3
  %i.due = add i32 %i.dtn, 15
  %i.duf = sext i32 %i.due to i64
  %i.dug = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.duf
  %i.duh = load float, ptr %i.dug, align 4, !tbaa !58
  %i.dui = zext nneg i32 %i.dud to i64
  %i.duj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dui
  %i.duk = load ptr, ptr %i.duj, align 8, !tbaa !59 ; 4 uses
  %i.dul = getelementptr [4 x i8], ptr %i.duk, i64 %i.dtp
  %i.dum = getelementptr i8, ptr %i.dul, i64 4
  store float %i.duh, ptr %i.dum, align 4, !tbaa !58
  %i.dun = add i32 %i.dtn, 14
  %i.duo = sext i32 %i.dun to i64
  %i.dup = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.duo
  %i.duq = load float, ptr %i.dup, align 4, !tbaa !58
  %i.dur = getelementptr [4 x i8], ptr %i.dty, i64 %i.dtp
  %i.dus = getelementptr i8, ptr %i.dur, i64 8
  store float %i.duq, ptr %i.dus, align 4, !tbaa !58
  %i.dut = add i32 %i.dtn, 13
  %i.duu = sext i32 %i.dut to i64
  %i.duv = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.duu
  %i.duw = load float, ptr %i.duv, align 4, !tbaa !58
  %i.dux = getelementptr [4 x i8], ptr %i.duk, i64 %i.dtp
  %i.duy = getelementptr i8, ptr %i.dux, i64 12
  store float %i.duw, ptr %i.duy, align 4, !tbaa !58
  %i.duz = add i32 %i.dtn, 12
  %i.dva = sext i32 %i.duz to i64
  %i.dvb = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dva
  %i.dvc = load float, ptr %i.dvb, align 4, !tbaa !58
  %i.dvd = getelementptr [4 x i8], ptr %i.dty, i64 %i.dtp
  %i.dve = getelementptr i8, ptr %i.dvd, i64 16
  store float %i.dvc, ptr %i.dve, align 4, !tbaa !58
  %i.dvf = add i32 %i.dtn, 11
  %i.dvg = sext i32 %i.dvf to i64
  %i.dvh = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dvg
  %i.dvi = load float, ptr %i.dvh, align 4, !tbaa !58
  %i.dvj = getelementptr [4 x i8], ptr %i.duk, i64 %i.dtp
  %i.dvk = getelementptr i8, ptr %i.dvj, i64 20
  store float %i.dvi, ptr %i.dvk, align 4, !tbaa !58
  %i.dvl = add i32 %i.dtn, 10
  %i.dvm = sext i32 %i.dvl to i64
  %i.dvn = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dvm
  %i.dvo = load float, ptr %i.dvn, align 4, !tbaa !58
  %i.dvp = getelementptr [4 x i8], ptr %i.dty, i64 %i.dtp
  %i.dvq = getelementptr i8, ptr %i.dvp, i64 24
  store float %i.dvo, ptr %i.dvq, align 4, !tbaa !58
  %i.dvr = add i32 %i.dtn, 9
  %i.dvs = sext i32 %i.dvr to i64
  %i.dvt = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dvs
  %i.dvu = load float, ptr %i.dvt, align 4, !tbaa !58
  %i.dvv = getelementptr [4 x i8], ptr %i.duk, i64 %i.dtp
  %i.dvw = getelementptr i8, ptr %i.dvv, i64 28
  store float %i.dvu, ptr %i.dvw, align 4, !tbaa !58
  %indvars.iv.next2440 = add nuw nsw i64 %indvars.iv2439, 1 ; 2 uses
  %i.dvx = icmp slt i64 %indvars.iv.next2440, %i.bvx
  br i1 %i.dvx, label %.preheader1911, label %.loopexit1945

.loopexit1945:                                    ; preds = %.preheader1911, %.loopexit1947.split
  br i1 %i.bvp, label %.lr.ph2038, label %.preheader1942.thread

.lr.ph2038:                                       ; preds = %.loopexit1945
  %i.dvy = add nsw i32 %i.bww, -3                 ; 2 uses
  %i.dvz = trunc i64 %indvars.iv2494 to i32
  %i.dwa = or disjoint i32 %i.dvz, 3
  %i.dwb = tail call i32 @llvm.smax.i32(i32 %i.dwa, i32 0)
  %i.dwc = trunc i64 %indvars.iv2494 to i32
  %i.dwd = add nsw i32 %i.bwu, -3
  %. = tail call i32 @llvm.smin.i32(i32 %i.dwd, i32 %i.ae) ; 2 uses
  %i.dwe = icmp sge i32 %i.dwb, %.
  %i.dwf = sub i32 384, %i.dwc
  %i.dwg = select i1 %i.bwx, i32 %i.dwf, i32 387
  %i.dwh = zext nneg i32 %. to i64
  %i.dwi = add i32 %i.bwu, %i.bwe
  %i.dwj = add i32 %i.bwu, %i.bwc
  %min.iters.check3817 = icmp ult i64 %i.bwj, 8
  %min.iters.check3819 = icmp ult i64 %i.bwj, 32
  %i.dwk = and i64 %i.bwj, 24
  %n.vec3821 = and i64 %i.bwj, -32                ; 5 uses
  %i.dwl = add nsw i64 %n.vec3821, %i.bwp
  %cmp.n3830 = icmp eq i64 %i.bwj, %n.vec3821
  %min.epilog.iters.check3837 = icmp eq i64 %i.dwk, 0
  %n.vec3839 = and i64 %i.bwj, -8                 ; 4 uses
  %i.dwm = add nsw i64 %n.vec3839, %i.bwp
  %cmp.n3845 = icmp eq i64 %i.bwj, %n.vec3839
  br label %bb.ac

.preheader1943:                                   ; preds = %.loopexit1910
  br i1 %i.bvr, label %.lr.ph2045, label %.preheader1942.thread

.lr.ph2045:                                       ; preds = %.preheader1943
  %i.dwn = add nsw i32 %i.bww, -4                 ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph2038, %.loopexit1910
  %indvar3811 = phi i64 [ 0, %.lr.ph2038 ], [ %indvar.next3812, %.loopexit1910 ] ; 2 uses
  %indvars.iv2466 = phi i64 [ 3, %.lr.ph2038 ], [ %indvars.iv.next2467, %.loopexit1910 ] ; 3 uses
  %indvars.iv2454 = phi i32 [ %i.dwg, %.lr.ph2038 ], [ %indvars.iv.next2455, %.loopexit1910 ] ; 3 uses
  %indvars.iv2442 = phi i32 [ 387, %.lr.ph2038 ], [ %indvars.iv.next2443, %.loopexit1910 ] ; 2 uses
  %i.dwo = mul i64 %i.qc, %indvar3811
  %i.dwp = add i64 %i.bwm, %i.dwo
  %i.dwq = sext i32 %indvars.iv2454 to i64
  %i.dwr = shl nsw i64 %i.dwq, 2
  %i.dws = sext i32 %indvars.iv2454 to i64        ; 5 uses
  %i.dwt = add nsw i64 %indvars.iv2466, %indvars.iv2498 ; 3 uses
  %indvars.iv2466.tr = trunc nuw i64 %indvars.iv2466 to i32
  %i.dwu = shl nuw i32 %indvars.iv2466.tr, 1
  %i.dwv = and i32 %i.dwu, 14                     ; 2 uses
  %.tr.i1826 = shl nuw nsw i32 %i.dwv, 1
  %i.dww = or disjoint i32 %.tr.i1826, 2
  %i.dwx = lshr i32 %i.q, %i.dww
  %i.dwy = and i32 %i.dwx, 1                      ; 4 uses
  %i.dwz = add nuw nsw i32 %i.dwy, 3              ; 5 uses
  %i.dxa = icmp slt i32 %i.dwz, %i.dvy
  br i1 %i.dxa, label %.lr.ph2030, label %._crit_edge2031

.lr.ph2030:                                       ; preds = %bb.ac
  %i.dxb = and i32 %i.dwz, 1
  %i.dxc = or disjoint i32 %i.dxb, %i.dwv
  %i.dxd = shl nuw nsw i32 %i.dxc, 1
  %i.dxe = lshr i32 %i.q, %i.dxd
  %i.dxf = and i32 %i.dxe, 3
  %i.dxg = zext nneg i32 %i.dxf to i64
  %i.dxh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dxg
  %i.dxi = load ptr, ptr %i.dxh, align 8, !tbaa !59 ; 6 uses
  %i.dxj = add i32 %indvars.iv2442, %i.dwy
  %i.dxk = zext i32 %i.dxj to i64                 ; 6 uses
  %i.dxl = sub i32 %i.dwj, %i.dwy                 ; 2 uses
  %i.dxm = lshr i32 %i.dxl, 1
  %narrow = add nuw i32 %i.dxm, 1
  %i.dxn = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check3861 = icmp ult i32 %i.dxl, 16
  br i1 %min.iters.check3861, label %scalar.ph3860.preheader, label %vector.memcheck3848

scalar.ph3860.preheader:                          ; preds = %vector.body3867, %vector.memcheck3848, %.lr.ph2030
  %indvars.iv2444.ph = phi i64 [ %i.dxk, %vector.memcheck3848 ], [ %i.dxk, %.lr.ph2030 ], [ %i.dxy, %vector.body3867 ]
  %.017062027.ph = phi i32 [ %i.dwz, %vector.memcheck3848 ], [ %i.dwz, %.lr.ph2030 ], [ %i.dyb, %vector.body3867 ]
  br label %scalar.ph3860

vector.memcheck3848:                              ; preds = %.lr.ph2030
  %i.dxo = shl nuw nsw i64 %i.dxk, 2              ; 3 uses
  %scevgep3850 = getelementptr i8, ptr %scevgep3849, i64 %i.dxo
  %i.dxp = sub i32 %i.dwi, %i.dwy
  %i.dxq = lshr i32 %i.dxp, 1
  %i.dxr = zext nneg i32 %i.dxq to i64
  %i.dxs = shl nuw nsw i64 %i.dxr, 3
  %i.dxt = add nuw nsw i64 %i.dxs, %i.dxo         ; 2 uses
  %scevgep3852 = getelementptr i8, ptr %scevgep3851, i64 %i.dxt
  %scevgep3853 = getelementptr i8, ptr %i.dxi, i64 -1024
  %scevgep3854 = getelementptr i8, ptr %scevgep3853, i64 %i.dxo
  %scevgep3855 = getelementptr i8, ptr %i.dxi, i64 1028
  %scevgep3856 = getelementptr i8, ptr %scevgep3855, i64 %i.dxt
  %bound03857 = icmp ult ptr %scevgep3850, %scevgep3856
  %bound13858 = icmp ult ptr %scevgep3854, %scevgep3852
  %found.conflict3859 = and i1 %bound03857, %bound13858
  br i1 %found.conflict3859, label %scalar.ph3860.preheader, label %vector.ph3862

vector.ph3862:                                    ; preds = %vector.memcheck3848
  %i.dxu = and i64 %i.dxn, 7                      ; 2 uses
  %i.dxv = icmp eq i64 %i.dxu, 0
  %i.dxw = select i1 %i.dxv, i64 8, i64 %i.dxu
  %n.vec3863 = sub nsw i64 %i.dxn, %i.dxw         ; 3 uses
  %i.dxx = shl nsw i64 %n.vec3863, 1
  %i.dxy = add nsw i64 %i.dxx, %i.dxk
  %i.dxz = trunc i64 %n.vec3863 to i32
  %i.dya = shl i32 %i.dxz, 1
  %i.dyb = add i32 %i.dwz, %i.dya
  %broadcast.splatinsert3864 = insertelement <8 x i64> poison, i64 %i.dxk, i64 0
  %broadcast.splat3865 = shufflevector <8 x i64> %broadcast.splatinsert3864, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3866 = add nuw nsw <8 x i64> %broadcast.splat3865, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3867

vector.body3867:                                  ; preds = %vector.body3867, %vector.ph3862
  %index3868 = phi i64 [ 0, %vector.ph3862 ], [ %index.next3897, %vector.body3867 ] ; 2 uses
  %vec.ind3869 = phi <8 x i64> [ %induction3866, %vector.ph3862 ], [ %vec.ind.next3898, %vector.body3867 ] ; 2 uses
  %i.dyc = shl nuw i64 %index3868, 1
  %i.dyd = add nuw i64 %i.dyc, %i.dxk             ; 2 uses
  %wide.gep3870 = getelementptr inbounds nuw [4 x i8], ptr %i.bts, <8 x i64> %vec.ind3869 ; 2 uses
  %i.dye = extractelement <8 x ptr> %wide.gep3870, i64 0 ; 8 uses
  %i.dyf = getelementptr inbounds nuw i8, ptr %i.dye, i64 512
  %wide.vec3871 = load <16 x float>, ptr %i.dyf, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3872 = shufflevector <16 x float> %wide.vec3871, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyg = getelementptr i8, ptr %i.dye, i64 -512
  %wide.vec3873 = load <16 x float>, ptr %i.dyg, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3874 = shufflevector <16 x float> %wide.vec3873, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3872, %strided.vec3874
  %i.dyi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyh)
  %i.dyj = fadd reassoc nsz arcp contract afn <8 x float> %i.dyi, splat (float f0x3727C5AC)
  %i.dyk = getelementptr inbounds nuw [4 x i8], ptr %i.dxi, i64 %i.dyd ; 4 uses
  %wide.vec3875 = load <16 x float>, ptr %i.dyk, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3876 = shufflevector <16 x float> %wide.vec3875, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyl = getelementptr i8, ptr %i.dyk, i64 -1024
  %wide.vec3877 = load <16 x float>, ptr %i.dyl, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3878 = shufflevector <16 x float> %wide.vec3877, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dym = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3876, %strided.vec3878
  %i.dyn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dym)
  %i.dyo = fadd reassoc nsz arcp contract afn <8 x float> %i.dyj, %i.dyn
  %i.dyp = getelementptr i8, ptr %i.dye, i64 -1536
  %wide.vec3879 = load <16 x float>, ptr %i.dyp, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3880 = shufflevector <16 x float> %wide.vec3879, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3874, %strided.vec3880
  %i.dyr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyq)
  %i.dys = fadd reassoc nsz arcp contract afn <8 x float> %i.dyo, %i.dyr ; 2 uses
  %i.dyt = fmul reassoc nsz arcp contract afn <8 x float> %i.dys, %i.dys
  %i.dyu = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dyt ; 2 uses
  %i.dyv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3874, %strided.vec3872
  %i.dyw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyv)
  %i.dyx = fadd reassoc nsz arcp contract afn <8 x float> %i.dyw, splat (float f0x3727C5AC)
  %i.dyy = getelementptr inbounds nuw i8, ptr %i.dyk, i64 1024
  %wide.vec3881 = load <16 x float>, ptr %i.dyy, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3882 = shufflevector <16 x float> %wide.vec3881, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3876, %strided.vec3882
  %i.dza = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyz)
  %i.dzb = fadd reassoc nsz arcp contract afn <8 x float> %i.dyx, %i.dza
  %i.dzc = getelementptr inbounds nuw i8, ptr %i.dye, i64 1536
  %wide.vec3883 = load <16 x float>, ptr %i.dzc, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3884 = shufflevector <16 x float> %wide.vec3883, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3872, %strided.vec3884
  %i.dze = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzd)
  %i.dzf = fadd reassoc nsz arcp contract afn <8 x float> %i.dzb, %i.dze ; 2 uses
  %i.dzg = fmul reassoc nsz arcp contract afn <8 x float> %i.dzf, %i.dzf
  %i.dzh = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dzg ; 2 uses
  %i.dzi = getelementptr inbounds nuw i8, ptr %i.dye, i64 4
  %wide.vec3885 = load <16 x float>, ptr %i.dzi, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3886 = shufflevector <16 x float> %wide.vec3885, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dzj = getelementptr i8, ptr %i.dye, i64 -4
  %wide.vec3887 = load <16 x float>, ptr %i.dzj, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3888 = shufflevector <16 x float> %wide.vec3887, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dzk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3886, %strided.vec3888
  %i.dzl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzk)
  %i.dzm = fadd reassoc nsz arcp contract afn <8 x float> %i.dzl, splat (float f0x3727C5AC)
  %i.dzn = getelementptr i8, ptr %i.dyk, i64 -8
  %wide.vec3889 = load <16 x float>, ptr %i.dzn, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3890 = shufflevector <16 x float> %wide.vec3889, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3876, %strided.vec3890
  %i.dzp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzo)
  %i.dzq = fadd reassoc nsz arcp contract afn <8 x float> %i.dzm, %i.dzp
  %i.dzr = getelementptr i8, ptr %i.dye, i64 -12
  %wide.vec3891 = load <16 x float>, ptr %i.dzr, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3892 = shufflevector <16 x float> %wide.vec3891, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3888, %strided.vec3892
  %i.dzt = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzs)
  %i.dzu = fadd reassoc nsz arcp contract afn <8 x float> %i.dzq, %i.dzt ; 2 uses
  %i.dzv = fmul reassoc nsz arcp contract afn <8 x float> %i.dzu, %i.dzu
  %i.dzw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dzv ; 2 uses
  %i.dzx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3888, %strided.vec3886
  %i.dzy = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzx)
  %i.dzz = fadd reassoc nsz arcp contract afn <8 x float> %i.dzy, splat (float f0x3727C5AC)
  %i.eaa = getelementptr inbounds nuw [4 x i8], ptr %i.dxi, i64 %i.dyd
  %i.eab = getelementptr inbounds nuw i8, ptr %i.eaa, i64 8
  %wide.vec3893 = load <16 x float>, ptr %i.eab, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3894 = shufflevector <16 x float> %wide.vec3893, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.eac = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3876, %strided.vec3894
  %i.ead = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eac)
  %i.eae = fadd reassoc nsz arcp contract afn <8 x float> %i.dzz, %i.ead
  %i.eaf = getelementptr inbounds nuw i8, ptr %i.dye, i64 12
  %wide.vec3895 = load <16 x float>, ptr %i.eaf, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3896 = shufflevector <16 x float> %wide.vec3895, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.eag = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3886, %strided.vec3896
  %i.eah = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eag)
  %i.eai = fadd reassoc nsz arcp contract afn <8 x float> %i.eae, %i.eah ; 2 uses
  %i.eaj = fmul reassoc nsz arcp contract afn <8 x float> %i.eai, %i.eai
  %i.eak = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.eaj ; 2 uses
  %i.eal = fmul reassoc nsz arcp contract afn <8 x float> %i.dyu, %strided.vec3874
  %i.eam = fmul reassoc nsz arcp contract afn <8 x float> %i.dzh, %strided.vec3872
  %i.ean = fadd reassoc nsz arcp contract afn <8 x float> %i.eal, %i.eam
  %i.eao = fmul reassoc nsz arcp contract afn <8 x float> %i.dzw, %strided.vec3888
  %i.eap = fadd reassoc nsz arcp contract afn <8 x float> %i.ean, %i.eao
  %i.eaq = fmul reassoc nsz arcp contract afn <8 x float> %i.eak, %strided.vec3886
  %i.ear = fadd reassoc nsz arcp contract afn <8 x float> %i.eaq, %i.eap
  %i.eas = fadd reassoc nsz arcp contract afn <8 x float> %i.dzh, %i.dyu
  %i.eat = fadd reassoc nsz arcp contract afn <8 x float> %i.eas, %i.dzw
  %i.eau = fadd reassoc nsz arcp contract afn <8 x float> %i.eat, %i.eak
  %i.eav = fdiv reassoc nsz arcp contract afn <8 x float> %i.ear, %i.eau
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eav, <8 x ptr> align 4 %wide.gep3870, <8 x i1> splat (i1 true)), !tbaa !58, !alias.scope !73, !noalias !76
  %index.next3897 = add nuw i64 %index3868, 8     ; 2 uses
  %vec.ind.next3898 = add nuw nsw <8 x i64> %vec.ind3869, splat (i64 16)
  %i.eaw = icmp eq i64 %index.next3897, %n.vec3863
  br i1 %i.eaw, label %scalar.ph3860.preheader, label %vector.body3867, !llvm.loop !78

._crit_edge2031:                                  ; preds = %scalar.ph3860, %bb.ac
  %i.eax = icmp slt i64 %i.dwt, 0
  %i.eay = icmp sge i64 %i.dwt, %i.bk
  %or.cond1798.not3007 = or i1 %i.eax, %i.eay
  %brmerge2999 = select i1 %or.cond1798.not3007, i1 true, i1 %i.dwe
  br i1 %brmerge2999, label %.loopexit1910, label %iter.check3834

scalar.ph3860:                                    ; preds = %scalar.ph3860.preheader, %scalar.ph3860
  %indvars.iv2444 = phi i64 [ %indvars.iv.next2445, %scalar.ph3860 ], [ %indvars.iv2444.ph, %scalar.ph3860.preheader ] ; 3 uses
  %.017062027 = phi i32 [ %i.ecf, %scalar.ph3860 ], [ %.017062027.ph, %scalar.ph3860.preheader ]
  %i.eaz = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %indvars.iv2444 ; 3 uses
  %i.eba = getelementptr inbounds nuw [4 x i8], ptr %i.dxi, i64 %indvars.iv2444 ; 3 uses
  %i.ebb = load float, ptr %i.eba, align 4, !tbaa !58
  %i.ebc = getelementptr i8, ptr %i.eba, <2 x i64> <i64 1024, i64 -1024>
  %i.ebd = getelementptr i8, ptr %i.eba, i64 -8
  %indvars.iv.next2445 = add nuw nsw i64 %indvars.iv2444, 2 ; 2 uses
  %i.ebe = getelementptr inbounds nuw [4 x i8], ptr %i.dxi, i64 %indvars.iv.next2445
  %i.ebf = getelementptr i8, ptr %i.eaz, <4 x i64> <i64 -512, i64 512, i64 -4, i64 4>
  %i.ebg = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ebf, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !58 ; 2 uses
  %i.ebh = getelementptr i8, ptr %i.eaz, <4 x i64> <i64 1536, i64 -1536, i64 12, i64 -12>
  %i.ebi = shufflevector <4 x float> %i.ebg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 3 uses
  %i.ebj = fsub reassoc nsz arcp contract afn <4 x float> %i.ebg, %i.ebi
  %i.ebk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ebj)
  %i.ebl = fadd reassoc nsz arcp contract afn <4 x float> %i.ebk, splat (float f0x3727C5AC)
  %i.ebm = shufflevector <2 x ptr> %i.ebc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ebn = insertelement <4 x ptr> %i.ebm, ptr %i.ebe, i64 2
  %i.ebo = insertelement <4 x ptr> %i.ebn, ptr %i.ebd, i64 3
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.fxt = icmp sgt i32 %i.fxr, 0                 ; 2 uses
  %i.fxu = icmp sge i32 %i.fxk, %i.fxo
  %.not1799 = xor i1 %i.fxq, true
  %i.fxv = icmp slt i32 %i.fxr, 1
  %i.fxw = trunc i64 %i.fxd to i32
  %i.fxx = add i32 %i.fxw, 1
  %i.fxy = sitofp reassoc nsz arcp contract afn i32 %i.fxx to float
  %i.fxz = add nsw i32 %i.fxi, -4
  %i.fya = icmp sgt i32 %i.fxi, 8
  %i.fyb = add nsw i32 %i.fxi, -8                 ; 2 uses
  %i.fyc = icmp sgt i32 %i.fxi, 16
  %i.fyd = zext nneg i32 %i.fxk to i64            ; 3 uses
  %i.fye = sext i32 %i.fxo to i64                 ; 3 uses
  %i.fyf = sext i32 %i.fxs to i64                 ; 3 uses
  %i.fyg = sext i32 %i.fxz to i64
  %i.fyh = sext i32 %i.fyb to i64
  %wide.trip.count2602 = zext nneg i32 %i.fxo to i64
  %brmerge2293.not2318 = select i1 %i.fxq, i1 %i.fxt, i1 false
  %wide.trip.count2630 = zext nneg i32 %i.fxo to i64
  %wide.trip.count2638 = zext nneg i32 %i.fxo to i64
  br label %bb.be

._crit_edge2229:                                  ; preds = %._crit_edge2226
  %indvars.iv.next2743 = add nsw i64 %indvars.iv2742, 112 ; 2 uses
  %i.fyi = icmp slt i64 %indvars.iv.next2743, %i.bk
  br i1 %i.fyi, label %.preheader1960, label %.preheader1969

bb.be:                                            ; preds = %.preheader1960, %._crit_edge2226
  %indvars.iv2738 = phi i64 [ -8, %.preheader1960 ], [ %indvars.iv.next2739, %._crit_edge2226 ] ; 8 uses
  %indvars.iv2664 = phi i32 [ 8, %.preheader1960 ], [ %indvars.iv.next2665, %._crit_edge2226 ] ; 2 uses
  %indvars.iv2661 = phi i32 [ 120, %.preheader1960 ], [ %indvars.iv.next2662, %._crit_edge2226 ] ; 2 uses
  %smin2693 = call i32 @llvm.smin.i32(i32 %indvars.iv2661, i32 %i.eu)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(393216) %i.btr, i8 0, i64 393216, i1 false)
  %i.fyj = add nsw i64 %indvars.iv2738, 8
  %i.fyk = udiv i64 %i.fyj, 112
  %i.fyl = add nsw i64 %indvars.iv2738, 128       ; 2 uses
  %i.fym = trunc i64 %i.fyl to i32
  %i.fyn = tail call i32 @llvm.smin.i32(i32 %i.fym, i32 %i.eu)
  %i.fyo = trunc i64 %indvars.iv2738 to i32       ; 3 uses
  %i.fyp = sub i32 %i.fyn, %i.fyo                 ; 7 uses
  %i.fyq = icmp slt i64 %indvars.iv2738, 0        ; 3 uses
  %i.fyr = select i1 %i.fyq, i32 8, i32 0         ; 5 uses
  %i.fys = icmp sgt i64 %i.fyl, %i.af
  %i.fyt = trunc i64 %indvars.iv2738 to i32
  %i.fyu = sub i32 %i.ae, %i.fyt
  %i.fyv = select i1 %i.fys, i32 %i.fyu, i32 %i.fyp ; 12 uses
  %i.fyw = icmp slt i32 %i.fyr, %i.fyv            ; 2 uses
  %or.cond2288 = select i1 %i.fxp, i1 %i.fyw, i1 false
  br i1 %or.cond2288, label %.lr.ph2127.preheader, label %._crit_edge2132.split

.lr.ph2127.preheader:                             ; preds = %bb.be
  %i.fyx = zext nneg i32 %i.fyr to i64            ; 5 uses
  %wide.trip.count2597 = zext i32 %i.fyv to i64   ; 3 uses
  %xtraiter4324 = and i64 %wide.trip.count2597, 1
  %lcmp.mod4325.not = icmp eq i64 %xtraiter4324, 0
  %indvars.iv.next2595.prol = or disjoint i64 %i.fyx, 1
  %i.fyy = add nsw i64 %wide.trip.count2597, -1
  %i.fyz = icmp eq i64 %i.fyy, %i.fyx
  br label %.lr.ph2127

._crit_edge2132.split:                            ; preds = %._crit_edge2128, %bb.be
  %i.fza = icmp sge i32 %i.fyr, %i.fyv
  %or.cond2290.not = select i1 %i.fxj, i1 true, i1 %i.fza
  br i1 %or.cond2290.not, label %.loopexit1936.split, label %.preheader1906.preheader

.preheader1906.preheader:                         ; preds = %._crit_edge2132.split
  %i.fzb = zext nneg i32 %i.fyr to i64            ; 34 uses
  %wide.trip.count2608 = zext nneg i32 %i.fyv to i64 ; 17 uses
  %i.fzc = xor i64 %i.fzb, -1
  %i.fzd = add nsw i64 %i.fzc, %wide.trip.count2608 ; 8 uses
  %xtraiter4329 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4330.not = icmp eq i64 %xtraiter4329, 0
  br i1 %lcmp.mod4330.not, label %.prol.loopexit4328, label %.prol.loopexit4328.unr-lcssa

.prol.loopexit4328.unr-lcssa:                     ; preds = %.preheader1906.preheader
  %i.fze = load ptr, ptr %i.azh, align 8, !tbaa !59 ; 2 uses
  %sext2936.prol = or disjoint i64 %i.fzb, 2048   ; 2 uses
  %i.fzf = getelementptr inbounds nuw [4 x i8], ptr %i.fze, i64 %sext2936.prol
  %i.fzg = load float, ptr %i.fzf, align 4, !tbaa !58
  %i.fzh = getelementptr inbounds nuw [4 x i8], ptr %i.fze, i64 %i.fzb
  store float %i.fzg, ptr %i.fzh, align 4, !tbaa !58
  %i.fzi = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %sext2936.prol
  %i.fzj = load float, ptr %i.fzi, align 32, !tbaa !58
  %i.fzk = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.fzb
  store float %i.fzj, ptr %i.fzk, align 32, !tbaa !58
  %indvars.iv.next2605.prol = or disjoint i64 %i.fzb, 1
  br label %.prol.loopexit4328

.prol.loopexit4328:                               ; preds = %.prol.loopexit4328.unr-lcssa, %.preheader1906.preheader
  %indvars.iv2604.unr = phi i64 [ %i.fzb, %.preheader1906.preheader ], [ %indvars.iv.next2605.prol, %.prol.loopexit4328.unr-lcssa ]
  %i.fzl = icmp eq i64 %i.fzd, 0
  br i1 %i.fzl, label %._crit_edge2135.preheader, label %.preheader1906.preheader.new

.lr.ph2127:                                       ; preds = %.lr.ph2127.preheader, %._crit_edge2128
  %indvars.iv2599 = phi i64 [ %i.fyd, %.lr.ph2127.preheader ], [ %indvars.iv.next2600, %._crit_edge2128 ] ; 4 uses
  %i.fzm = add nsw i64 %indvars.iv2599, %indvars.iv2742
  %indvars.iv2599.tr = trunc i64 %indvars.iv2599 to i32
  %i.fzn = shl i32 %indvars.iv2599.tr, 2
  %.tr.i1833 = and i32 %i.fzn, 28                 ; 2 uses
  %i.fzo = lshr i32 %i.q, %.tr.i1833              ; 3 uses
  %i.fzp = and i32 %i.fzo, 3                      ; 2 uses
  %i.fzq = or disjoint i32 %.tr.i1833, 2
  %i.fzr = lshr i32 %i.q, %i.fzq                  ; 2 uses
  %i.fzs = xor i32 %i.fzr, %i.fzo
  %i.fzt = and i32 %i.fzs, 3
  %i.fzu = mul nsw i64 %i.fzm, %i.af
  %i.fzv = shl nuw nsw i64 %indvars.iv2599, 7     ; 3 uses
  %invariant.op = add i64 %indvars.iv2738, %i.fzu ; 3 uses
  br i1 %lcmp.mod4325.not, label %.prol.loopexit4323, label %.prol.preheader4322

.prol.preheader4322:                              ; preds = %.lr.ph2127
  %.reass.prol = add i64 %invariant.op, %i.fyx    ; 2 uses
  %i.fzw = or disjoint i64 %i.fzv, %i.fyx         ; 2 uses
  %i.fzx = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.reass.prol
  %i.fzy = load float, ptr %i.fzx, align 4, !tbaa !58
  %i.fzz = zext nneg i32 %i.fzp to i64
  %i.gaa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fzz
  %i.gab = load ptr, ptr %i.gaa, align 8, !tbaa !59
  %i.gac = getelementptr inbounds nuw [4 x i8], ptr %i.gab, i64 %i.fzw
  store float %i.fzy, ptr %i.gac, align 4, !tbaa !58
  %i.gad = and i32 %i.fzo, 1
  %i.gae = icmp eq i32 %i.gad, 0
  br i1 %i.gae, label %bb.bf, label %.prol.loopexit4323.unr-lcssa

bb.bf:                                            ; preds = %.prol.preheader4322
  %i.gaf = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.reass.prol
  %i.gag = load float, ptr %i.gaf, align 4, !tbaa !58
  %i.gah = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.fzw
  store float %i.gag, ptr %i.gah, align 32, !tbaa !58
  br label %.prol.loopexit4323.unr-lcssa

.prol.loopexit4323.unr-lcssa:                     ; preds = %bb.bf, %.prol.preheader4322
  %i.gai = and i32 %i.fzr, 3
  br label %.prol.loopexit4323

.prol.loopexit4323:                               ; preds = %.prol.loopexit4323.unr-lcssa, %.lr.ph2127
  %indvars.iv2594.unr = phi i64 [ %i.fyx, %.lr.ph2127 ], [ %indvars.iv.next2595.prol, %.prol.loopexit4323.unr-lcssa ]
  %.016542124.unr = phi i32 [ %i.fzp, %.lr.ph2127 ], [ %i.gai, %.prol.loopexit4323.unr-lcssa ] ; 3 uses
  br i1 %i.fyz, label %._crit_edge2128, label %.lr.ph2127.new

.lr.ph2127.new:                                   ; preds = %.prol.loopexit4323
  %i.gaj = zext nneg i32 %.016542124.unr to i64
  %i.gak = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gaj
  %i.gal = load ptr, ptr %i.gak, align 8, !tbaa !59
  %i.gam = and i32 %.016542124.unr, 1
  %i.gan = icmp eq i32 %i.gam, 0
  %i.gao = xor i32 %.016542124.unr, %i.fzt        ; 2 uses
  %i.gap = zext nneg i32 %i.gao to i64
  %i.gaq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gap
  %i.gar = load ptr, ptr %i.gaq, align 8, !tbaa !59
  %i.gas = and i32 %i.gao, 1
  %i.gat = icmp eq i32 %i.gas, 0
  br label %bb.bg

._crit_edge2128:                                  ; preds = %bb.bk, %.prol.loopexit4323
  %indvars.iv.next2600 = add nuw nsw i64 %indvars.iv2599, 1 ; 2 uses
  %exitcond2603.not = icmp eq i64 %indvars.iv.next2600, %wide.trip.count2602
  br i1 %exitcond2603.not, label %._crit_edge2132.split, label %.lr.ph2127

bb.bg:                                            ; preds = %bb.bk, %.lr.ph2127.new
  %indvars.iv2594 = phi i64 [ %indvars.iv2594.unr, %.lr.ph2127.new ], [ %indvars.iv.next2595.1, %bb.bk ] ; 4 uses
  %.reass = add i64 %indvars.iv2594, %invariant.op ; 2 uses
  %i.gau = add nuw nsw i64 %i.fzv, %indvars.iv2594 ; 2 uses
  %i.gav = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.reass
  %i.gaw = load float, ptr %i.gav, align 4, !tbaa !58
  %i.gax = getelementptr inbounds nuw [4 x i8], ptr %i.gal, i64 %i.gau
  store float %i.gaw, ptr %i.gax, align 4, !tbaa !58
  br i1 %i.gan, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gay = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.reass
  %i.gaz = load float, ptr %i.gay, align 4, !tbaa !58
  %i.gba = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gau
  store float %i.gaz, ptr %i.gba, align 4, !tbaa !58
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %indvars.iv.next2595 = add nuw nsw i64 %indvars.iv2594, 1 ; 2 uses
  %.reass.1 = add i64 %indvars.iv.next2595, %invariant.op ; 2 uses
  %i.gbb = add nuw nsw i64 %i.fzv, %indvars.iv.next2595 ; 2 uses
  %i.gbc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.reass.1
  %i.gbd = load float, ptr %i.gbc, align 4, !tbaa !58
  %i.gbe = getelementptr inbounds nuw [4 x i8], ptr %i.gar, i64 %i.gbb
  store float %i.gbd, ptr %i.gbe, align 4, !tbaa !58
  br i1 %i.gat, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gbf = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.reass.1
  %i.gbg = load float, ptr %i.gbf, align 4, !tbaa !58
  %i.gbh = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gbb
  store float %i.gbg, ptr %i.gbh, align 4, !tbaa !58
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %indvars.iv.next2595.1 = add nuw nsw i64 %indvars.iv2594, 2 ; 2 uses
  %exitcond2598.not.1 = icmp eq i64 %indvars.iv.next2595.1, %wide.trip.count2597
  br i1 %exitcond2598.not.1, label %._crit_edge2128, label %bb.bg

._crit_edge2135:                                  ; preds = %._crit_edge2135.prol.loopexit, %._crit_edge2135
  %indvars.iv2604.1 = phi i64 [ %indvars.iv.next2605.1.1, %._crit_edge2135 ], [ %indvars.iv2604.1.unr, %._crit_edge2135.prol.loopexit ] ; 6 uses
  %indvars.iv2604.1.tr = trunc nuw i64 %indvars.iv2604.1 to i32
  %i.gbi = shl nuw i32 %indvars.iv2604.1.tr, 1
  %i.gbj = and i32 %i.gbi, 2
  %i.gbk = or disjoint i32 %i.gbj, 4
  %i.gbl = lshr i32 %i.q, %i.gbk
  %i.gbm = and i32 %i.gbl, 3
  %i.gbn = zext nneg i32 %i.gbm to i64
  %i.gbo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gbn
  %i.gbp = load ptr, ptr %i.gbo, align 8, !tbaa !59 ; 2 uses
  %i.gbq = shl i64 %indvars.iv2604.1, 32
  %sext2937 = add i64 %i.gbq, 8246337208320
  %i.gbr = ashr exact i64 %sext2937, 32           ; 2 uses
  %i.gbs = getelementptr inbounds [4 x i8], ptr %i.gbp, i64 %i.gbr
  %i.gbt = load float, ptr %i.gbs, align 4, !tbaa !58
  %i.gbu = add nuw nsw i64 %indvars.iv2604.1, 128 ; 2 uses
  %i.gbv = getelementptr inbounds nuw [4 x i8], ptr %i.gbp, i64 %i.gbu
  store float %i.gbt, ptr %i.gbv, align 4, !tbaa !58
  %i.gbw = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gbr
  %i.gbx = load float, ptr %i.gbw, align 4, !tbaa !58
  %i.gby = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gbu
  store float %i.gbx, ptr %i.gby, align 4, !tbaa !58
  %indvars.iv.next2605.1 = add nuw nsw i64 %indvars.iv2604.1, 1 ; 2 uses
  %indvars.iv2604.1.tr.1 = trunc nuw i64 %indvars.iv.next2605.1 to i32
  %i.gbz = shl nuw i32 %indvars.iv2604.1.tr.1, 1
  %i.gca = and i32 %i.gbz, 2
  %i.gcb = or disjoint i32 %i.gca, 4
  %i.gcc = lshr i32 %i.q, %i.gcb
  %i.gcd = and i32 %i.gcc, 3
  %i.gce = zext nneg i32 %i.gcd to i64
  %i.gcf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gce
  %i.gcg = load ptr, ptr %i.gcf, align 8, !tbaa !59 ; 2 uses
  %i.gch = shl i64 %indvars.iv.next2605.1, 32
  %sext2937.1 = add i64 %i.gch, 8246337208320
  %i.gci = ashr exact i64 %sext2937.1, 32         ; 2 uses
  %i.gcj = getelementptr inbounds [4 x i8], ptr %i.gcg, i64 %i.gci
  %i.gck = load float, ptr %i.gcj, align 4, !tbaa !58
  %i.gcl = add nuw nsw i64 %indvars.iv2604.1, 129 ; 2 uses
  %i.gcm = getelementptr inbounds nuw [4 x i8], ptr %i.gcg, i64 %i.gcl
  store float %i.gck, ptr %i.gcm, align 4, !tbaa !58
  %i.gcn = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gci
  %i.gco = load float, ptr %i.gcn, align 4, !tbaa !58
  %i.gcp = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gcl
  store float %i.gco, ptr %i.gcp, align 4, !tbaa !58
  %indvars.iv.next2605.1.1 = add nuw nsw i64 %indvars.iv2604.1, 2 ; 2 uses
  %exitcond2609.1.not.1 = icmp eq i64 %indvars.iv.next2605.1.1, %wide.trip.count2608
  br i1 %exitcond2609.1.not.1, label %._crit_edge2135.1.preheader, label %._crit_edge2135

._crit_edge2135.1.preheader:                      ; preds = %._crit_edge2135, %._crit_edge2135.prol.loopexit
  %xtraiter4338 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4339.not = icmp eq i64 %xtraiter4338, 0
  br i1 %lcmp.mod4339.not, label %._crit_edge2135.1.prol.loopexit, label %._crit_edge2135.1.prol

._crit_edge2135.1.prol:                           ; preds = %._crit_edge2135.1.preheader
  %i.gcq = load ptr, ptr %i.azp, align 8, !tbaa !59 ; 2 uses
  %sext2938.prol = or disjoint i64 %i.fzb, 1792   ; 2 uses
  %i.gcr = getelementptr inbounds nuw [4 x i8], ptr %i.gcq, i64 %sext2938.prol
  %i.gcs = load float, ptr %i.gcr, align 4, !tbaa !58
  %i.gct = or disjoint i64 %i.fzb, 256            ; 2 uses
  %i.gcu = getelementptr inbounds nuw [4 x i8], ptr %i.gcq, i64 %i.gct
  store float %i.gcs, ptr %i.gcu, align 4, !tbaa !58
  %i.gcv = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %sext2938.prol
  %i.gcw = load float, ptr %i.gcv, align 32, !tbaa !58
  %i.gcx = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gct
  store float %i.gcw, ptr %i.gcx, align 32, !tbaa !58
  %indvars.iv.next2605.2.prol = or disjoint i64 %i.fzb, 1
  br label %._crit_edge2135.1.prol.loopexit

._crit_edge2135.1.prol.loopexit:                  ; preds = %._crit_edge2135.1.prol, %._crit_edge2135.1.preheader
  %indvars.iv2604.2.unr = phi i64 [ %i.fzb, %._crit_edge2135.1.preheader ], [ %indvars.iv.next2605.2.prol, %._crit_edge2135.1.prol ]
  %i.gcy = icmp eq i64 %i.fzd, 0
  br i1 %i.gcy, label %._crit_edge2135.2.preheader, label %._crit_edge2135.1

._crit_edge2135.1:                                ; preds = %._crit_edge2135.1.prol.loopexit, %._crit_edge2135.1
  %indvars.iv2604.2 = phi i64 [ %indvars.iv.next2605.2.1, %._crit_edge2135.1 ], [ %indvars.iv2604.2.unr, %._crit_edge2135.1.prol.loopexit ] ; 6 uses
  %indvars.iv2604.2.tr = trunc nuw i64 %indvars.iv2604.2 to i32
  %i.gcz = shl nuw i32 %indvars.iv2604.2.tr, 1
  %i.gda = and i32 %i.gcz, 2
  %i.gdb = or disjoint i32 %i.gda, 8
  %i.gdc = lshr i32 %i.q, %i.gdb
  %i.gdd = and i32 %i.gdc, 3
  %i.gde = zext nneg i32 %i.gdd to i64
  %i.gdf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gde
  %i.gdg = load ptr, ptr %i.gdf, align 8, !tbaa !59 ; 2 uses
  %i.gdh = shl i64 %indvars.iv2604.2, 32
  %sext2938 = add i64 %i.gdh, 7696581394432
  %i.gdi = ashr exact i64 %sext2938, 32           ; 2 uses
  %i.gdj = getelementptr inbounds [4 x i8], ptr %i.gdg, i64 %i.gdi
  %i.gdk = load float, ptr %i.gdj, align 4, !tbaa !58
  %i.gdl = add nuw nsw i64 %indvars.iv2604.2, 256 ; 2 uses
  %i.gdm = getelementptr inbounds nuw [4 x i8], ptr %i.gdg, i64 %i.gdl
  store float %i.gdk, ptr %i.gdm, align 4, !tbaa !58
  %i.gdn = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gdi
  %i.gdo = load float, ptr %i.gdn, align 4, !tbaa !58
  %i.gdp = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gdl
  store float %i.gdo, ptr %i.gdp, align 4, !tbaa !58
  %indvars.iv.next2605.2 = add nuw nsw i64 %indvars.iv2604.2, 1 ; 2 uses
  %indvars.iv2604.2.tr.1 = trunc nuw i64 %indvars.iv.next2605.2 to i32
  %i.gdq = shl nuw i32 %indvars.iv2604.2.tr.1, 1
  %i.gdr = and i32 %i.gdq, 2
  %i.gds = or disjoint i32 %i.gdr, 8
  %i.gdt = lshr i32 %i.q, %i.gds
  %i.gdu = and i32 %i.gdt, 3
  %i.gdv = zext nneg i32 %i.gdu to i64
  %i.gdw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gdv
  %i.gdx = load ptr, ptr %i.gdw, align 8, !tbaa !59 ; 2 uses
  %i.gdy = shl i64 %indvars.iv.next2605.2, 32
  %sext2938.1 = add i64 %i.gdy, 7696581394432
  %i.gdz = ashr exact i64 %sext2938.1, 32         ; 2 uses
  %i.gea = getelementptr inbounds [4 x i8], ptr %i.gdx, i64 %i.gdz
  %i.geb = load float, ptr %i.gea, align 4, !tbaa !58
  %i.gec = add nuw nsw i64 %indvars.iv2604.2, 257 ; 2 uses
  %i.ged = getelementptr inbounds nuw [4 x i8], ptr %i.gdx, i64 %i.gec
  store float %i.geb, ptr %i.ged, align 4, !tbaa !58
  %i.gee = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gdz
  %i.gef = load float, ptr %i.gee, align 4, !tbaa !58
  %i.geg = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gec
  store float %i.gef, ptr %i.geg, align 4, !tbaa !58
  %indvars.iv.next2605.2.1 = add nuw nsw i64 %indvars.iv2604.2, 2 ; 2 uses
  %exitcond2609.2.not.1 = icmp eq i64 %indvars.iv.next2605.2.1, %wide.trip.count2608
  br i1 %exitcond2609.2.not.1, label %._crit_edge2135.2.preheader, label %._crit_edge2135.1

._crit_edge2135.2.preheader:                      ; preds = %._crit_edge2135.1, %._crit_edge2135.1.prol.loopexit
  %xtraiter4341 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4342.not = icmp eq i64 %xtraiter4341, 0
  br i1 %lcmp.mod4342.not, label %._crit_edge2135.2.prol.loopexit, label %._crit_edge2135.2.prol

._crit_edge2135.2.prol:                           ; preds = %._crit_edge2135.2.preheader
  %i.geh = load ptr, ptr %i.azt, align 8, !tbaa !59 ; 2 uses
  %sext2939.prol = or disjoint i64 %i.fzb, 1664   ; 2 uses
  %i.gei = getelementptr inbounds nuw [4 x i8], ptr %i.geh, i64 %sext2939.prol
  %i.gej = load float, ptr %i.gei, align 4, !tbaa !58
  %i.gek = or disjoint i64 %i.fzb, 384            ; 2 uses
  %i.gel = getelementptr inbounds nuw [4 x i8], ptr %i.geh, i64 %i.gek
  store float %i.gej, ptr %i.gel, align 4, !tbaa !58
  %i.gem = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %sext2939.prol
  %i.gen = load float, ptr %i.gem, align 32, !tbaa !58
  %i.geo = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gek
  store float %i.gen, ptr %i.geo, align 32, !tbaa !58
  %indvars.iv.next2605.3.prol = or disjoint i64 %i.fzb, 1
  br label %._crit_edge2135.2.prol.loopexit

._crit_edge2135.2.prol.loopexit:                  ; preds = %._crit_edge2135.2.prol, %._crit_edge2135.2.preheader
  %indvars.iv2604.3.unr = phi i64 [ %i.fzb, %._crit_edge2135.2.preheader ], [ %indvars.iv.next2605.3.prol, %._crit_edge2135.2.prol ]
  %i.gep = icmp eq i64 %i.fzd, 0
  br i1 %i.gep, label %._crit_edge2135.3.preheader, label %._crit_edge2135.2

._crit_edge2135.2:                                ; preds = %._crit_edge2135.2.prol.loopexit, %._crit_edge2135.2
  %indvars.iv2604.3 = phi i64 [ %indvars.iv.next2605.3.1, %._crit_edge2135.2 ], [ %indvars.iv2604.3.unr, %._crit_edge2135.2.prol.loopexit ] ; 6 uses
  %indvars.iv2604.3.tr = trunc nuw i64 %indvars.iv2604.3 to i32
  %i.geq = shl nuw i32 %indvars.iv2604.3.tr, 1
  %i.ger = and i32 %i.geq, 2
  %i.ges = or disjoint i32 %i.ger, 12
  %i.get = lshr i32 %i.q, %i.ges
  %i.geu = and i32 %i.get, 3
  %i.gev = zext nneg i32 %i.geu to i64
  %i.gew = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gev
  %i.gex = load ptr, ptr %i.gew, align 8, !tbaa !59 ; 2 uses
  %i.gey = shl i64 %indvars.iv2604.3, 32
  %sext2939 = add i64 %i.gey, 7146825580544
  %i.gez = ashr exact i64 %sext2939, 32           ; 2 uses
  %i.gfa = getelementptr inbounds [4 x i8], ptr %i.gex, i64 %i.gez
  %i.gfb = load float, ptr %i.gfa, align 4, !tbaa !58
  %i.gfc = add nuw nsw i64 %indvars.iv2604.3, 384 ; 2 uses
  %i.gfd = getelementptr inbounds nuw [4 x i8], ptr %i.gex, i64 %i.gfc
  store float %i.gfb, ptr %i.gfd, align 4, !tbaa !58
  %i.gfe = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gez
  %i.gff = load float, ptr %i.gfe, align 4, !tbaa !58
  %i.gfg = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gfc
  store float %i.gff, ptr %i.gfg, align 4, !tbaa !58
  %indvars.iv.next2605.3 = add nuw nsw i64 %indvars.iv2604.3, 1 ; 2 uses
  %indvars.iv2604.3.tr.1 = trunc nuw i64 %indvars.iv.next2605.3 to i32
  %i.gfh = shl nuw i32 %indvars.iv2604.3.tr.1, 1
  %i.gfi = and i32 %i.gfh, 2
  %i.gfj = or disjoint i32 %i.gfi, 12
  %i.gfk = lshr i32 %i.q, %i.gfj
  %i.gfl = and i32 %i.gfk, 3
  %i.gfm = zext nneg i32 %i.gfl to i64
  %i.gfn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gfm
  %i.gfo = load ptr, ptr %i.gfn, align 8, !tbaa !59 ; 2 uses
  %i.gfp = shl i64 %indvars.iv.next2605.3, 32
  %sext2939.1 = add i64 %i.gfp, 7146825580544
  %i.gfq = ashr exact i64 %sext2939.1, 32         ; 2 uses
  %i.gfr = getelementptr inbounds [4 x i8], ptr %i.gfo, i64 %i.gfq
  %i.gfs = load float, ptr %i.gfr, align 4, !tbaa !58
  %i.gft = add nuw nsw i64 %indvars.iv2604.3, 385 ; 2 uses
  %i.gfu = getelementptr inbounds nuw [4 x i8], ptr %i.gfo, i64 %i.gft
  store float %i.gfs, ptr %i.gfu, align 4, !tbaa !58
  %i.gfv = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gfq
  %i.gfw = load float, ptr %i.gfv, align 4, !tbaa !58
  %i.gfx = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gft
  store float %i.gfw, ptr %i.gfx, align 4, !tbaa !58
  %indvars.iv.next2605.3.1 = add nuw nsw i64 %indvars.iv2604.3, 2 ; 2 uses
  %exitcond2609.3.not.1 = icmp eq i64 %indvars.iv.next2605.3.1, %wide.trip.count2608
  br i1 %exitcond2609.3.not.1, label %._crit_edge2135.3.preheader, label %._crit_edge2135.2

._crit_edge2135.3.preheader:                      ; preds = %._crit_edge2135.2, %._crit_edge2135.2.prol.loopexit
  %xtraiter4344 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4345.not = icmp eq i64 %xtraiter4344, 0
  br i1 %lcmp.mod4345.not, label %._crit_edge2135.3.prol.loopexit, label %._crit_edge2135.3.prol

._crit_edge2135.3.prol:                           ; preds = %._crit_edge2135.3.preheader
  %i.gfy = load ptr, ptr %i.azx, align 8, !tbaa !59 ; 2 uses
  %sext2940.prol = or disjoint i64 %i.fzb, 1536   ; 2 uses
  %i.gfz = getelementptr inbounds nuw [4 x i8], ptr %i.gfy, i64 %sext2940.prol
  %i.gga = load float, ptr %i.gfz, align 4, !tbaa !58
  %i.ggb = or disjoint i64 %i.fzb, 512            ; 2 uses
  %i.ggc = getelementptr inbounds nuw [4 x i8], ptr %i.gfy, i64 %i.ggb
  store float %i.gga, ptr %i.ggc, align 4, !tbaa !58
  %i.ggd = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %sext2940.prol
  %i.gge = load float, ptr %i.ggd, align 32, !tbaa !58
  %i.ggf = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.ggb
  store float %i.gge, ptr %i.ggf, align 32, !tbaa !58
  %indvars.iv.next2605.4.prol = or disjoint i64 %i.fzb, 1
  br label %._crit_edge2135.3.prol.loopexit

._crit_edge2135.3.prol.loopexit:                  ; preds = %._crit_edge2135.3.prol, %._crit_edge2135.3.preheader
  %indvars.iv2604.4.unr = phi i64 [ %i.fzb, %._crit_edge2135.3.preheader ], [ %indvars.iv.next2605.4.prol, %._crit_edge2135.3.prol ]
  %i.ggg = icmp eq i64 %i.fzd, 0
  br i1 %i.ggg, label %._crit_edge2135.4.preheader, label %._crit_edge2135.3

._crit_edge2135.3:                                ; preds = %._crit_edge2135.3.prol.loopexit, %._crit_edge2135.3
  %indvars.iv2604.4 = phi i64 [ %indvars.iv.next2605.4.1, %._crit_edge2135.3 ], [ %indvars.iv2604.4.unr, %._crit_edge2135.3.prol.loopexit ] ; 6 uses
  %indvars.iv2604.4.tr = trunc nuw i64 %indvars.iv2604.4 to i32
  %i.ggh = shl nuw i32 %indvars.iv2604.4.tr, 1
  %i.ggi = and i32 %i.ggh, 2
  %i.ggj = or disjoint i32 %i.ggi, 16
  %i.ggk = lshr i32 %i.q, %i.ggj
  %i.ggl = and i32 %i.ggk, 3
  %i.ggm = zext nneg i32 %i.ggl to i64
  %i.ggn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ggm
  %i.ggo = load ptr, ptr %i.ggn, align 8, !tbaa !59 ; 2 uses
  %i.ggp = shl i64 %indvars.iv2604.4, 32
  %sext2940 = add i64 %i.ggp, 6597069766656
  %i.ggq = ashr exact i64 %sext2940, 32           ; 2 uses
  %i.ggr = getelementptr inbounds [4 x i8], ptr %i.ggo, i64 %i.ggq
  %i.ggs = load float, ptr %i.ggr, align 4, !tbaa !58
  %i.ggt = add nuw nsw i64 %indvars.iv2604.4, 512 ; 2 uses
  %i.ggu = getelementptr inbounds nuw [4 x i8], ptr %i.ggo, i64 %i.ggt
  store float %i.ggs, ptr %i.ggu, align 4, !tbaa !58
  %i.ggv = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.ggq
  %i.ggw = load float, ptr %i.ggv, align 4, !tbaa !58
  %i.ggx = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.ggt
  store float %i.ggw, ptr %i.ggx, align 4, !tbaa !58
  %indvars.iv.next2605.4 = add nuw nsw i64 %indvars.iv2604.4, 1 ; 2 uses
  %indvars.iv2604.4.tr.1 = trunc nuw i64 %indvars.iv.next2605.4 to i32
  %i.ggy = shl nuw i32 %indvars.iv2604.4.tr.1, 1
  %i.ggz = and i32 %i.ggy, 2
  %i.gha = or disjoint i32 %i.ggz, 16
  %i.ghb = lshr i32 %i.q, %i.gha
  %i.ghc = and i32 %i.ghb, 3
  %i.ghd = zext nneg i32 %i.ghc to i64
  %i.ghe = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ghd
  %i.ghf = load ptr, ptr %i.ghe, align 8, !tbaa !59 ; 2 uses
  %i.ghg = shl i64 %indvars.iv.next2605.4, 32
  %sext2940.1 = add i64 %i.ghg, 6597069766656
  %i.ghh = ashr exact i64 %sext2940.1, 32         ; 2 uses
  %i.ghi = getelementptr inbounds [4 x i8], ptr %i.ghf, i64 %i.ghh
  %i.ghj = load float, ptr %i.ghi, align 4, !tbaa !58
  %i.ghk = add nuw nsw i64 %indvars.iv2604.4, 513 ; 2 uses
  %i.ghl = getelementptr inbounds nuw [4 x i8], ptr %i.ghf, i64 %i.ghk
  store float %i.ghj, ptr %i.ghl, align 4, !tbaa !58
  %i.ghm = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.ghh
  %i.ghn = load float, ptr %i.ghm, align 4, !tbaa !58
  %i.gho = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.ghk
  store float %i.ghn, ptr %i.gho, align 4, !tbaa !58
  %indvars.iv.next2605.4.1 = add nuw nsw i64 %indvars.iv2604.4, 2 ; 2 uses
  %exitcond2609.4.not.1 = icmp eq i64 %indvars.iv.next2605.4.1, %wide.trip.count2608
  br i1 %exitcond2609.4.not.1, label %._crit_edge2135.4.preheader, label %._crit_edge2135.3

._crit_edge2135.4.preheader:                      ; preds = %._crit_edge2135.3, %._crit_edge2135.3.prol.loopexit
  %xtraiter4347 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4348.not = icmp eq i64 %xtraiter4347, 0
  br i1 %lcmp.mod4348.not, label %._crit_edge2135.4.prol.loopexit, label %._crit_edge2135.4.prol

._crit_edge2135.4.prol:                           ; preds = %._crit_edge2135.4.preheader
  %i.ghp = load ptr, ptr %i.bab, align 8, !tbaa !59 ; 2 uses
  %sext2941.prol = or disjoint i64 %i.fzb, 1408   ; 2 uses
  %i.ghq = getelementptr inbounds nuw [4 x i8], ptr %i.ghp, i64 %sext2941.prol
  %i.ghr = load float, ptr %i.ghq, align 4, !tbaa !58
  %i.ghs = or disjoint i64 %i.fzb, 640            ; 2 uses
  %i.ght = getelementptr inbounds nuw [4 x i8], ptr %i.ghp, i64 %i.ghs
  store float %i.ghr, ptr %i.ght, align 4, !tbaa !58
  %i.ghu = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %sext2941.prol
  %i.ghv = load float, ptr %i.ghu, align 32, !tbaa !58
  %i.ghw = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.ghs
  store float %i.ghv, ptr %i.ghw, align 32, !tbaa !58
  %indvars.iv.next2605.5.prol = or disjoint i64 %i.fzb, 1
  br label %._crit_edge2135.4.prol.loopexit

._crit_edge2135.4.prol.loopexit:                  ; preds = %._crit_edge2135.4.prol, %._crit_edge2135.4.preheader
  %indvars.iv2604.5.unr = phi i64 [ %i.fzb, %._crit_edge2135.4.preheader ], [ %indvars.iv.next2605.5.prol, %._crit_edge2135.4.prol ]
  %i.ghx = icmp eq i64 %i.fzd, 0
  br i1 %i.ghx, label %._crit_edge2135.5.preheader, label %._crit_edge2135.4

._crit_edge2135.4:                                ; preds = %._crit_edge2135.4.prol.loopexit, %._crit_edge2135.4
  %indvars.iv2604.5 = phi i64 [ %indvars.iv.next2605.5.1, %._crit_edge2135.4 ], [ %indvars.iv2604.5.unr, %._crit_edge2135.4.prol.loopexit ] ; 6 uses
  %indvars.iv2604.5.tr = trunc nuw i64 %indvars.iv2604.5 to i32
  %i.ghy = shl nuw i32 %indvars.iv2604.5.tr, 1
  %i.ghz = and i32 %i.ghy, 2
  %i.gia = or disjoint i32 %i.ghz, 20
  %i.gib = lshr i32 %i.q, %i.gia
  %i.gic = and i32 %i.gib, 3
  %i.gid = zext nneg i32 %i.gic to i64
  %i.gie = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gid
  %i.gif = load ptr, ptr %i.gie, align 8, !tbaa !59 ; 2 uses
  %i.gig = shl i64 %indvars.iv2604.5, 32
  %sext2941 = add i64 %i.gig, 6047313952768
  %i.gih = ashr exact i64 %sext2941, 32           ; 2 uses
  %i.gii = getelementptr inbounds [4 x i8], ptr %i.gif, i64 %i.gih
  %i.gij = load float, ptr %i.gii, align 4, !tbaa !58
  %i.gik = add nuw nsw i64 %indvars.iv2604.5, 640 ; 2 uses
  %i.gil = getelementptr inbounds nuw [4 x i8], ptr %i.gif, i64 %i.gik
  store float %i.gij, ptr %i.gil, align 4, !tbaa !58
  %i.gim = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gih
  %i.gin = load float, ptr %i.gim, align 4, !tbaa !58
  %i.gio = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gik
  store float %i.gin, ptr %i.gio, align 4, !tbaa !58
  %indvars.iv.next2605.5 = add nuw nsw i64 %indvars.iv2604.5, 1 ; 2 uses
  %indvars.iv2604.5.tr.1 = trunc nuw i64 %indvars.iv.next2605.5 to i32
  %i.gip = shl nuw i32 %indvars.iv2604.5.tr.1, 1
  %i.giq = and i32 %i.gip, 2
  %i.gir = or disjoint i32 %i.giq, 20
  %i.gis = lshr i32 %i.q, %i.gir
  %i.git = and i32 %i.gis, 3
  %i.giu = zext nneg i32 %i.git to i64
  %i.giv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.giu
  %i.giw = load ptr, ptr %i.giv, align 8, !tbaa !59 ; 2 uses
  %i.gix = shl i64 %indvars.iv.next2605.5, 32
  %sext2941.1 = add i64 %i.gix, 6047313952768
  %i.giy = ashr exact i64 %sext2941.1, 32         ; 2 uses
  %i.giz = getelementptr inbounds [4 x i8], ptr %i.giw, i64 %i.giy
  %i.gja = load float, ptr %i.giz, align 4, !tbaa !58
  %i.gjb = add nuw nsw i64 %indvars.iv2604.5, 641 ; 2 uses
  %i.gjc = getelementptr inbounds nuw [4 x i8], ptr %i.giw, i64 %i.gjb
  store float %i.gja, ptr %i.gjc, align 4, !tbaa !58
  %i.gjd = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.giy
  %i.gje = load float, ptr %i.gjd, align 4, !tbaa !58
  %i.gjf = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gjb
  store float %i.gje, ptr %i.gjf, align 4, !tbaa !58
  %indvars.iv.next2605.5.1 = add nuw nsw i64 %indvars.iv2604.5, 2 ; 2 uses
  %exitcond2609.5.not.1 = icmp eq i64 %indvars.iv.next2605.5.1, %wide.trip.count2608
  br i1 %exitcond2609.5.not.1, label %._crit_edge2135.5.preheader, label %._crit_edge2135.4

._crit_edge2135.5.preheader:                      ; preds = %._crit_edge2135.4, %._crit_edge2135.4.prol.loopexit
  %xtraiter4350 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4351.not = icmp eq i64 %xtraiter4350, 0
  br i1 %lcmp.mod4351.not, label %._crit_edge2135.5.prol.loopexit, label %._crit_edge2135.5.prol

._crit_edge2135.5.prol:                           ; preds = %._crit_edge2135.5.preheader
  %i.gjg = load ptr, ptr %i.baf, align 8, !tbaa !59 ; 2 uses
  %sext2942.prol = or disjoint i64 %i.fzb, 1280   ; 2 uses
  %i.gjh = getelementptr inbounds nuw [4 x i8], ptr %i.gjg, i64 %sext2942.prol
  %i.gji = load float, ptr %i.gjh, align 4, !tbaa !58
  %i.gjj = or disjoint i64 %i.fzb, 768            ; 2 uses
  %i.gjk = getelementptr inbounds nuw [4 x i8], ptr %i.gjg, i64 %i.gjj
  store float %i.gji, ptr %i.gjk, align 4, !tbaa !58
  %i.gjl = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %sext2942.prol
  %i.gjm = load float, ptr %i.gjl, align 32, !tbaa !58
  %i.gjn = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gjj
  store float %i.gjm, ptr %i.gjn, align 32, !tbaa !58
  %indvars.iv.next2605.6.prol = or disjoint i64 %i.fzb, 1
  br label %._crit_edge2135.5.prol.loopexit

._crit_edge2135.5.prol.loopexit:                  ; preds = %._crit_edge2135.5.prol, %._crit_edge2135.5.preheader
  %indvars.iv2604.6.unr = phi i64 [ %i.fzb, %._crit_edge2135.5.preheader ], [ %indvars.iv.next2605.6.prol, %._crit_edge2135.5.prol ]
  %i.gjo = icmp eq i64 %i.fzd, 0
  br i1 %i.gjo, label %._crit_edge2135.6.preheader, label %._crit_edge2135.5

._crit_edge2135.5:                                ; preds = %._crit_edge2135.5.prol.loopexit, %._crit_edge2135.5
  %indvars.iv2604.6 = phi i64 [ %indvars.iv.next2605.6.1, %._crit_edge2135.5 ], [ %indvars.iv2604.6.unr, %._crit_edge2135.5.prol.loopexit ] ; 6 uses
  %indvars.iv2604.6.tr = trunc nuw i64 %indvars.iv2604.6 to i32
  %i.gjp = shl nuw i32 %indvars.iv2604.6.tr, 1
  %i.gjq = and i32 %i.gjp, 2
  %i.gjr = or disjoint i32 %i.gjq, 24
  %i.gjs = lshr i32 %i.q, %i.gjr
  %i.gjt = and i32 %i.gjs, 3
  %i.gju = zext nneg i32 %i.gjt to i64
  %i.gjv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gju
  %i.gjw = load ptr, ptr %i.gjv, align 8, !tbaa !59 ; 2 uses
  %i.gjx = shl i64 %indvars.iv2604.6, 32
  %sext2942 = add i64 %i.gjx, 5497558138880
  %i.gjy = ashr exact i64 %sext2942, 32           ; 2 uses
  %i.gjz = getelementptr inbounds [4 x i8], ptr %i.gjw, i64 %i.gjy
  %i.gka = load float, ptr %i.gjz, align 4, !tbaa !58
  %i.gkb = add nuw nsw i64 %indvars.iv2604.6, 768 ; 2 uses
  %i.gkc = getelementptr inbounds nuw [4 x i8], ptr %i.gjw, i64 %i.gkb
  store float %i.gka, ptr %i.gkc, align 4, !tbaa !58
  %i.gkd = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gjy
  %i.gke = load float, ptr %i.gkd, align 4, !tbaa !58
  %i.gkf = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gkb
  store float %i.gke, ptr %i.gkf, align 4, !tbaa !58
  %indvars.iv.next2605.6 = add nuw nsw i64 %indvars.iv2604.6, 1 ; 2 uses
  %indvars.iv2604.6.tr.1 = trunc nuw i64 %indvars.iv.next2605.6 to i32
  %i.gkg = shl nuw i32 %indvars.iv2604.6.tr.1, 1
  %i.gkh = and i32 %i.gkg, 2
  %i.gki = or disjoint i32 %i.gkh, 24
  %i.gkj = lshr i32 %i.q, %i.gki
  %i.gkk = and i32 %i.gkj, 3
  %i.gkl = zext nneg i32 %i.gkk to i64
  %i.gkm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gkl
  %i.gkn = load ptr, ptr %i.gkm, align 8, !tbaa !59 ; 2 uses
  %i.gko = shl i64 %indvars.iv.next2605.6, 32
  %sext2942.1 = add i64 %i.gko, 5497558138880
  %i.gkp = ashr exact i64 %sext2942.1, 32         ; 2 uses
  %i.gkq = getelementptr inbounds [4 x i8], ptr %i.gkn, i64 %i.gkp
  %i.gkr = load float, ptr %i.gkq, align 4, !tbaa !58
  %i.gks = add nuw nsw i64 %indvars.iv2604.6, 769 ; 2 uses
  %i.gkt = getelementptr inbounds nuw [4 x i8], ptr %i.gkn, i64 %i.gks
  store float %i.gkr, ptr %i.gkt, align 4, !tbaa !58
  %i.gku = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gkp
  %i.gkv = load float, ptr %i.gku, align 4, !tbaa !58
  %i.gkw = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gks
  store float %i.gkv, ptr %i.gkw, align 4, !tbaa !58
  %indvars.iv.next2605.6.1 = add nuw nsw i64 %indvars.iv2604.6, 2 ; 2 uses
  %exitcond2609.6.not.1 = icmp eq i64 %indvars.iv.next2605.6.1, %wide.trip.count2608
  br i1 %exitcond2609.6.not.1, label %._crit_edge2135.6.preheader, label %._crit_edge2135.5

._crit_edge2135.6.preheader:                      ; preds = %._crit_edge2135.5, %._crit_edge2135.5.prol.loopexit
  %xtraiter4353 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4354.not = icmp eq i64 %xtraiter4353, 0
  br i1 %lcmp.mod4354.not, label %._crit_edge2135.6.prol.loopexit, label %._crit_edge2135.6.prol

._crit_edge2135.6.prol:                           ; preds = %._crit_edge2135.6.preheader
  %i.gkx = load ptr, ptr %i.baj, align 8, !tbaa !59 ; 2 uses
  %sext2943.prol = or disjoint i64 %i.fzb, 1152   ; 2 uses
  %i.gky = getelementptr inbounds nuw [4 x i8], ptr %i.gkx, i64 %sext2943.prol
  %i.gkz = load float, ptr %i.gky, align 4, !tbaa !58
  %i.gla = or disjoint i64 %i.fzb, 896            ; 2 uses
  %i.glb = getelementptr inbounds nuw [4 x i8], ptr %i.gkx, i64 %i.gla
  store float %i.gkz, ptr %i.glb, align 4, !tbaa !58
  %i.glc = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %sext2943.prol
  %i.gld = load float, ptr %i.glc, align 32, !tbaa !58
  %i.gle = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gla
  store float %i.gld, ptr %i.gle, align 32, !tbaa !58
  %indvars.iv.next2605.7.prol = or disjoint i64 %i.fzb, 1
  br label %._crit_edge2135.6.prol.loopexit

._crit_edge2135.6.prol.loopexit:                  ; preds = %._crit_edge2135.6.prol, %._crit_edge2135.6.preheader
  %indvars.iv2604.7.unr = phi i64 [ %i.fzb, %._crit_edge2135.6.preheader ], [ %indvars.iv.next2605.7.prol, %._crit_edge2135.6.prol ]
  %i.glf = icmp eq i64 %i.fzd, 0
  br i1 %i.glf, label %.loopexit1936.split, label %._crit_edge2135.6

._crit_edge2135.6:                                ; preds = %._crit_edge2135.6.prol.loopexit, %._crit_edge2135.6
  %indvars.iv2604.7 = phi i64 [ %indvars.iv.next2605.7.1, %._crit_edge2135.6 ], [ %indvars.iv2604.7.unr, %._crit_edge2135.6.prol.loopexit ] ; 6 uses
  %indvars.iv2604.7.tr = trunc nuw i64 %indvars.iv2604.7 to i32
  %i.glg = shl nuw i32 %indvars.iv2604.7.tr, 1
  %i.glh = and i32 %i.glg, 2
  %i.gli = or disjoint i32 %i.glh, 28
  %i.glj = lshr i32 %i.q, %i.gli
  %i.glk = and i32 %i.glj, 3
  %i.gll = zext nneg i32 %i.glk to i64
  %i.glm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gll
  %i.gln = load ptr, ptr %i.glm, align 8, !tbaa !59 ; 2 uses
  %i.glo = shl i64 %indvars.iv2604.7, 32
  %sext2943 = add i64 %i.glo, 4947802324992
  %i.glp = ashr exact i64 %sext2943, 32           ; 2 uses
  %i.glq = getelementptr inbounds [4 x i8], ptr %i.gln, i64 %i.glp
  %i.glr = load float, ptr %i.glq, align 4, !tbaa !58
  %i.gls = add nuw nsw i64 %indvars.iv2604.7, 896 ; 2 uses
  %i.glt = getelementptr inbounds nuw [4 x i8], ptr %i.gln, i64 %i.gls
  store float %i.glr, ptr %i.glt, align 4, !tbaa !58
  %i.glu = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.glp
  %i.glv = load float, ptr %i.glu, align 4, !tbaa !58
  %i.glw = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gls
  store float %i.glv, ptr %i.glw, align 4, !tbaa !58
  %indvars.iv.next2605.7 = add nuw nsw i64 %indvars.iv2604.7, 1 ; 2 uses
  %indvars.iv2604.7.tr.1 = trunc nuw i64 %indvars.iv.next2605.7 to i32
  %i.glx = shl nuw i32 %indvars.iv2604.7.tr.1, 1
  %i.gly = and i32 %i.glx, 2
  %i.glz = or disjoint i32 %i.gly, 28
  %i.gma = lshr i32 %i.q, %i.glz
  %i.gmb = and i32 %i.gma, 3
  %i.gmc = zext nneg i32 %i.gmb to i64
  %i.gmd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gmc
  %i.gme = load ptr, ptr %i.gmd, align 8, !tbaa !59 ; 2 uses
  %i.gmf = shl i64 %indvars.iv.next2605.7, 32
  %sext2943.1 = add i64 %i.gmf, 4947802324992
  %i.gmg = ashr exact i64 %sext2943.1, 32         ; 2 uses
  %i.gmh = getelementptr inbounds [4 x i8], ptr %i.gme, i64 %i.gmg
  %i.gmi = load float, ptr %i.gmh, align 4, !tbaa !58
  %i.gmj = add nuw nsw i64 %indvars.iv2604.7, 897 ; 2 uses
  %i.gmk = getelementptr inbounds nuw [4 x i8], ptr %i.gme, i64 %i.gmj
  store float %i.gmi, ptr %i.gmk, align 4, !tbaa !58
  %i.gml = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gmg
  %i.gmm = load float, ptr %i.gml, align 4, !tbaa !58
  %i.gmn = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gmj
  store float %i.gmm, ptr %i.gmn, align 4, !tbaa !58
  %indvars.iv.next2605.7.1 = add nuw nsw i64 %indvars.iv2604.7, 2 ; 2 uses
  %exitcond2609.7.not.1 = icmp eq i64 %indvars.iv.next2605.7.1, %wide.trip.count2608
  br i1 %exitcond2609.7.not.1, label %.loopexit1936.split, label %._crit_edge2135.6

.preheader1906.preheader.new:                     ; preds = %.prol.loopexit4328, %.preheader1906.preheader.new
  %indvars.iv2604 = phi i64 [ %indvars.iv.next2605.14333, %.preheader1906.preheader.new ], [ %indvars.iv2604.unr, %.prol.loopexit4328 ] ; 6 uses
  %indvars.iv2604.tr = trunc nuw i64 %indvars.iv2604 to i32
  %i.gmo = shl nuw i32 %indvars.iv2604.tr, 1
  %i.gmp = and i32 %i.gmo, 2
  %i.gmq = lshr i32 %i.q, %i.gmp
  %i.gmr = and i32 %i.gmq, 3
  %i.gms = zext nneg i32 %i.gmr to i64
  %i.gmt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gms
  %i.gmu = load ptr, ptr %i.gmt, align 8, !tbaa !59 ; 2 uses
  %i.gmv = shl i64 %indvars.iv2604, 32
  %sext2936 = add i64 %i.gmv, 8796093022208
  %i.gmw = ashr exact i64 %sext2936, 32           ; 2 uses
  %i.gmx = getelementptr inbounds [4 x i8], ptr %i.gmu, i64 %i.gmw
  %i.gmy = load float, ptr %i.gmx, align 4, !tbaa !58
  %i.gmz = getelementptr inbounds nuw [4 x i8], ptr %i.gmu, i64 %indvars.iv2604
  store float %i.gmy, ptr %i.gmz, align 4, !tbaa !58
  %i.gna = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gmw
  %i.gnb = load float, ptr %i.gna, align 4, !tbaa !58
  %i.gnc = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %indvars.iv2604
  store float %i.gnb, ptr %i.gnc, align 4, !tbaa !58
  %indvars.iv.next2605 = add nuw nsw i64 %indvars.iv2604, 1 ; 4 uses
  %indvars.iv2604.tr.1 = trunc nuw i64 %indvars.iv.next2605 to i32
  %i.gnd = shl nuw i32 %indvars.iv2604.tr.1, 1
  %i.gne = and i32 %i.gnd, 2
  %i.gnf = lshr i32 %i.q, %i.gne
  %i.gng = and i32 %i.gnf, 3
  %i.gnh = zext nneg i32 %i.gng to i64
  %i.gni = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gnh
  %i.gnj = load ptr, ptr %i.gni, align 8, !tbaa !59 ; 2 uses
  %i.gnk = shl i64 %indvars.iv.next2605, 32
  %sext2936.1 = add i64 %i.gnk, 8796093022208
  %i.gnl = ashr exact i64 %sext2936.1, 32         ; 2 uses
  %i.gnm = getelementptr inbounds [4 x i8], ptr %i.gnj, i64 %i.gnl
  %i.gnn = load float, ptr %i.gnm, align 4, !tbaa !58
  %i.gno = getelementptr inbounds nuw [4 x i8], ptr %i.gnj, i64 %indvars.iv.next2605
  store float %i.gnn, ptr %i.gno, align 4, !tbaa !58
  %i.gnp = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gnl
  %i.gnq = load float, ptr %i.gnp, align 4, !tbaa !58
  %i.gnr = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %indvars.iv.next2605
  store float %i.gnq, ptr %i.gnr, align 4, !tbaa !58
  %indvars.iv.next2605.14333 = add nuw nsw i64 %indvars.iv2604, 2 ; 2 uses
  %exitcond2609.not.1 = icmp eq i64 %indvars.iv.next2605.14333, %wide.trip.count2608
  br i1 %exitcond2609.not.1, label %._crit_edge2135.preheader, label %.preheader1906.preheader.new

._crit_edge2135.preheader:                        ; preds = %.preheader1906.preheader.new, %.prol.loopexit4328
  %xtraiter4334 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4335.not = icmp eq i64 %xtraiter4334, 0
  br i1 %lcmp.mod4335.not, label %._crit_edge2135.prol.loopexit, label %._crit_edge2135.prol

._crit_edge2135.prol:                             ; preds = %._crit_edge2135.preheader
  %i.gns = load ptr, ptr %i.azl, align 8, !tbaa !59 ; 2 uses
  %sext2937.prol = or disjoint i64 %i.fzb, 1920   ; 2 uses
  %i.gnt = getelementptr inbounds nuw [4 x i8], ptr %i.gns, i64 %sext2937.prol
  %i.gnu = load float, ptr %i.gnt, align 4, !tbaa !58
  %i.gnv = or disjoint i64 %i.fzb, 128            ; 2 uses
  %i.gnw = getelementptr inbounds nuw [4 x i8], ptr %i.gns, i64 %i.gnv
  store float %i.gnu, ptr %i.gnw, align 4, !tbaa !58
  %i.gnx = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %sext2937.prol
  %i.gny = load float, ptr %i.gnx, align 32, !tbaa !58
  %i.gnz = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gnv
  store float %i.gny, ptr %i.gnz, align 32, !tbaa !58
  %indvars.iv.next2605.1.prol = or disjoint i64 %i.fzb, 1
  br label %._crit_edge2135.prol.loopexit

._crit_edge2135.prol.loopexit:                    ; preds = %._crit_edge2135.prol, %._crit_edge2135.preheader
  %indvars.iv2604.1.unr = phi i64 [ %i.fzb, %._crit_edge2135.preheader ], [ %indvars.iv.next2605.1.prol, %._crit_edge2135.prol ]
  %i.goa = icmp eq i64 %i.fzd, 0
  br i1 %i.goa, label %._crit_edge2135.1.preheader, label %._crit_edge2135

.loopexit1936.split:                              ; preds = %._crit_edge2135.6.prol.loopexit, %._crit_edge2135.6, %._crit_edge2132.split
  %or.cond2294 = select i1 %brmerge2293.not2318, i1 %i.fyw, i1 false
  br i1 %or.cond2294, label %.preheader1905.preheader, label %.loopexit1934

.preheader1905.preheader:                         ; preds = %.loopexit1936.split
  %i.gob = zext nneg i32 %i.fyr to i64            ; 5 uses
  %wide.trip.count2618 = zext i32 %i.fyv to i64   ; 3 uses
  %xtraiter4358 = and i64 %wide.trip.count2618, 1
  %lcmp.mod4359.not = icmp eq i64 %xtraiter4358, 0
  %indvars.iv.next2616.prol = or disjoint i64 %i.gob, 1
  %i.goc = add nsw i64 %wide.trip.count2618, -1
  %i.god = icmp eq i64 %i.goc, %i.gob
  br label %.preheader1905

.preheader1905:                                   ; preds = %.preheader1905.preheader, %._crit_edge2139
  %indvars.iv2620 = phi i64 [ 0, %.preheader1905.preheader ], [ %indvars.iv.next2621, %._crit_edge2139 ] ; 4 uses
  %i.goe = trunc nuw nsw i64 %indvars.iv2620 to i32
  %i.gof = sub i32 %i.ev, %i.goe
  %i.gog = mul nsw i32 %i.gof, %i.ae
  %i.goh = sext i32 %i.gog to i64
  %i.goi = add nsw i64 %indvars.iv2738, %i.goh    ; 3 uses
  %i.goj = add nsw i64 %indvars.iv2620, %i.fye
  %i.gok = shl nsw i64 %i.goj, 7                  ; 3 uses
  %indvars.iv2620.tr = trunc nuw i64 %indvars.iv2620 to i32
  %i.gol = shl i32 %indvars.iv2620.tr, 2          ; 3 uses
  br i1 %lcmp.mod4359.not, label %.prol.loopexit4357, label %.prol.loopexit4357.unr-lcssa

.prol.loopexit4357.unr-lcssa:                     ; preds = %.preheader1905
  %i.gom = lshr i32 %i.q, %i.gol
  %i.gon = and i32 %i.gom, 3
  %i.goo = add nsw i64 %i.goi, %i.gob             ; 2 uses
  %i.gop = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.goo
  %i.goq = load float, ptr %i.gop, align 4, !tbaa !58
  %i.gor = zext nneg i32 %i.gon to i64
  %i.gos = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gor
  %i.got = load ptr, ptr %i.gos, align 8, !tbaa !59
  %i.gou = or disjoint i64 %i.gok, %i.gob         ; 2 uses
  %i.gov = getelementptr inbounds [4 x i8], ptr %i.got, i64 %i.gou
  store float %i.goq, ptr %i.gov, align 4, !tbaa !58
  %i.gow = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.goo
  %i.gox = load float, ptr %i.gow, align 4, !tbaa !58
  %i.goy = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gou
  store float %i.gox, ptr %i.goy, align 32, !tbaa !58
  br label %.prol.loopexit4357

.prol.loopexit4357:                               ; preds = %.prol.loopexit4357.unr-lcssa, %.preheader1905
  %indvars.iv2615.unr = phi i64 [ %i.gob, %.preheader1905 ], [ %indvars.iv.next2616.prol, %.prol.loopexit4357.unr-lcssa ]
  br i1 %i.god, label %._crit_edge2139, label %.preheader1905.new

._crit_edge2139:                                  ; preds = %.preheader1905.new, %.prol.loopexit4357
  %indvars.iv.next2621 = add nuw nsw i64 %indvars.iv2620, 1 ; 2 uses
  %i.goz = icmp slt i64 %indvars.iv.next2621, %i.fyf
  br i1 %i.goz, label %.preheader1905, label %.loopexit1934

.preheader1905.new:                               ; preds = %.prol.loopexit4357, %.preheader1905.new
  %indvars.iv2615 = phi i64 [ %indvars.iv.next2616.1, %.preheader1905.new ], [ %indvars.iv2615.unr, %.prol.loopexit4357 ] ; 5 uses
  %i.gpa = trunc nuw nsw i64 %indvars.iv2615 to i32
  %i.gpb = shl i32 %i.gpa, 1
  %i.gpc = and i32 %i.gpb, 2
  %i.gpd = or disjoint i32 %i.gol, %i.gpc
  %i.gpe = lshr i32 %i.q, %i.gpd
  %i.gpf = and i32 %i.gpe, 3
  %i.gpg = add nsw i64 %i.goi, %indvars.iv2615    ; 2 uses
  %i.gph = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gpg
  %i.gpi = load float, ptr %i.gph, align 4, !tbaa !58
  %i.gpj = zext nneg i32 %i.gpf to i64
  %i.gpk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gpj
  %i.gpl = load ptr, ptr %i.gpk, align 8, !tbaa !59
  %i.gpm = add nsw i64 %indvars.iv2615, %i.gok    ; 2 uses
  %i.gpn = getelementptr inbounds [4 x i8], ptr %i.gpl, i64 %i.gpm
  store float %i.gpi, ptr %i.gpn, align 4, !tbaa !58
  %i.gpo = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gpg
  %i.gpp = load float, ptr %i.gpo, align 4, !tbaa !58
  %i.gpq = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gpm
  store float %i.gpp, ptr %i.gpq, align 4, !tbaa !58
  %indvars.iv.next2616 = add nuw nsw i64 %indvars.iv2615, 1 ; 3 uses
  %i.gpr = trunc nuw nsw i64 %indvars.iv.next2616 to i32
  %i.gps = shl i32 %i.gpr, 1
  %i.gpt = and i32 %i.gps, 2
  %i.gpu = or disjoint i32 %i.gol, %i.gpt
  %i.gpv = lshr i32 %i.q, %i.gpu
  %i.gpw = and i32 %i.gpv, 3
  %i.gpx = add nsw i64 %i.goi, %indvars.iv.next2616 ; 2 uses
  %i.gpy = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gpx
  %i.gpz = load float, ptr %i.gpy, align 4, !tbaa !58
  %i.gqa = zext nneg i32 %i.gpw to i64
  %i.gqb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gqa
  %i.gqc = load ptr, ptr %i.gqb, align 8, !tbaa !59
  %i.gqd = add nsw i64 %indvars.iv.next2616, %i.gok ; 2 uses
  %i.gqe = getelementptr inbounds [4 x i8], ptr %i.gqc, i64 %i.gqd
  store float %i.gpz, ptr %i.gqe, align 4, !tbaa !58
  %i.gqf = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gpx
  %i.gqg = load float, ptr %i.gqf, align 4, !tbaa !58
  %i.gqh = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gqd
  store float %i.gqg, ptr %i.gqh, align 4, !tbaa !58
  %indvars.iv.next2616.1 = add nuw nsw i64 %indvars.iv2615, 2 ; 2 uses
  %exitcond2619.not.1 = icmp eq i64 %indvars.iv.next2616.1, %wide.trip.count2618
  br i1 %exitcond2619.not.1, label %._crit_edge2139, label %.preheader1905.new

.loopexit1934:                                    ; preds = %._crit_edge2139, %.loopexit1936.split
  %brmerge2297.not = select i1 %i.fyq, i1 %i.fxp, i1 false
  br i1 %brmerge2297.not, label %.preheader1904, label %.loopexit1932

.preheader1904:                                   ; preds = %.loopexit1934, %.preheader1904
  %indvars.iv2627 = phi i64 [ %indvars.iv.next2628, %.preheader1904 ], [ %i.fyd, %.loopexit1934 ] ; 3 uses
  %indvars.iv2627.tr = trunc nuw i64 %indvars.iv2627 to i32
  %i.gqi = shl nuw i32 %indvars.iv2627.tr, 1
  %i.gqj = and i32 %i.gqi, 14                     ; 2 uses
  %i.gqk = shl nuw nsw i64 %indvars.iv2627, 7     ; 17 uses
  %i.gql = or disjoint i64 %i.gqk, 16             ; 2 uses
  %i.gqm = shl nuw nsw i32 %i.gqj, 1
  %i.gqn = lshr i32 %i.q, %i.gqm
  %i.gqo = and i32 %i.gqn, 3
  %i.gqp = zext nneg i32 %i.gqo to i64
  %i.gqq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gqp
  %i.gqr = load ptr, ptr %i.gqq, align 8, !tbaa !59 ; 8 uses
  %i.gqs = getelementptr inbounds nuw [4 x i8], ptr %i.gqr, i64 %i.gql
  %i.gqt = load float, ptr %i.gqs, align 4, !tbaa !58
  %i.gqu = getelementptr inbounds nuw [4 x i8], ptr %i.gqr, i64 %i.gqk
  store float %i.gqt, ptr %i.gqu, align 4, !tbaa !58
  %i.gqv = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gql
  %i.gqw = load float, ptr %i.gqv, align 64, !tbaa !58
  %i.gqx = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gqk
  store float %i.gqw, ptr %i.gqx, align 64, !tbaa !58
  %i.gqy = shl nuw nsw i32 %i.gqj, 1
  %i.gqz = or disjoint i32 %i.gqy, 2
  %i.gra = lshr i32 %i.q, %i.gqz
  %i.grb = and i32 %i.gra, 3
  %i.grc = zext nneg i32 %i.grb to i64
  %i.grd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.grc
  %i.gre = load ptr, ptr %i.grd, align 8, !tbaa !59 ; 8 uses
  %i.grf = or disjoint i64 %i.gqk, 15             ; 2 uses
  %i.grg = getelementptr inbounds nuw [4 x i8], ptr %i.gre, i64 %i.grf
  %i.grh = load float, ptr %i.grg, align 4, !tbaa !58
  %i.gri = or disjoint i64 %i.gqk, 1              ; 2 uses
  %i.grj = getelementptr inbounds nuw [4 x i8], ptr %i.gre, i64 %i.gri
  store float %i.grh, ptr %i.grj, align 4, !tbaa !58
  %i.grk = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.grf
  %i.grl = load float, ptr %i.grk, align 4, !tbaa !58
  %i.grm = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gri
  store float %i.grl, ptr %i.grm, align 4, !tbaa !58
  %i.grn = or disjoint i64 %i.gqk, 14             ; 2 uses
  %i.gro = getelementptr inbounds nuw [4 x i8], ptr %i.gqr, i64 %i.grn
  %i.grp = load float, ptr %i.gro, align 4, !tbaa !58
  %i.grq = or disjoint i64 %i.gqk, 2              ; 2 uses
  %i.grr = getelementptr inbounds nuw [4 x i8], ptr %i.gqr, i64 %i.grq
  store float %i.grp, ptr %i.grr, align 4, !tbaa !58
  %i.grs = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.grn
  %i.grt = load float, ptr %i.grs, align 8, !tbaa !58
  %i.gru = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.grq
  store float %i.grt, ptr %i.gru, align 8, !tbaa !58
  %i.grv = or disjoint i64 %i.gqk, 13             ; 2 uses
  %i.grw = getelementptr inbounds nuw [4 x i8], ptr %i.gre, i64 %i.grv
  %i.grx = load float, ptr %i.grw, align 4, !tbaa !58
  %i.gry = or disjoint i64 %i.gqk, 3              ; 2 uses
  %i.grz = getelementptr inbounds nuw [4 x i8], ptr %i.gre, i64 %i.gry
  store float %i.grx, ptr %i.grz, align 4, !tbaa !58
  %i.gsa = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.grv
  %i.gsb = load float, ptr %i.gsa, align 4, !tbaa !58
  %i.gsc = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gry
  store float %i.gsb, ptr %i.gsc, align 4, !tbaa !58
  %i.gsd = or disjoint i64 %i.gqk, 12             ; 2 uses
  %i.gse = getelementptr inbounds nuw [4 x i8], ptr %i.gqr, i64 %i.gsd
  %i.gsf = load float, ptr %i.gse, align 4, !tbaa !58
  %i.gsg = or disjoint i64 %i.gqk, 4              ; 2 uses
  %i.gsh = getelementptr inbounds nuw [4 x i8], ptr %i.gqr, i64 %i.gsg
  store float %i.gsf, ptr %i.gsh, align 4, !tbaa !58
  %i.gsi = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gsd
  %i.gsj = load float, ptr %i.gsi, align 16, !tbaa !58
  %i.gsk = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gsg
  store float %i.gsj, ptr %i.gsk, align 16, !tbaa !58
  %i.gsl = or disjoint i64 %i.gqk, 11             ; 2 uses
  %i.gsm = getelementptr inbounds nuw [4 x i8], ptr %i.gre, i64 %i.gsl
  %i.gsn = load float, ptr %i.gsm, align 4, !tbaa !58
  %i.gso = or disjoint i64 %i.gqk, 5              ; 2 uses
  %i.gsp = getelementptr inbounds nuw [4 x i8], ptr %i.gre, i64 %i.gso
  store float %i.gsn, ptr %i.gsp, align 4, !tbaa !58
  %i.gsq = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gsl
  %i.gsr = load float, ptr %i.gsq, align 4, !tbaa !58
  %i.gss = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gso
  store float %i.gsr, ptr %i.gss, align 4, !tbaa !58
  %i.gst = or disjoint i64 %i.gqk, 10             ; 2 uses
  %i.gsu = getelementptr inbounds nuw [4 x i8], ptr %i.gqr, i64 %i.gst
  %i.gsv = load float, ptr %i.gsu, align 4, !tbaa !58
  %i.gsw = or disjoint i64 %i.gqk, 6              ; 2 uses
  %i.gsx = getelementptr inbounds nuw [4 x i8], ptr %i.gqr, i64 %i.gsw
  store float %i.gsv, ptr %i.gsx, align 4, !tbaa !58
  %i.gsy = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gst
  %i.gsz = load float, ptr %i.gsy, align 8, !tbaa !58
  %i.gta = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gsw
  store float %i.gsz, ptr %i.gta, align 8, !tbaa !58
  %i.gtb = or disjoint i64 %i.gqk, 9              ; 2 uses
  %i.gtc = getelementptr inbounds nuw [4 x i8], ptr %i.gre, i64 %i.gtb
  %i.gtd = load float, ptr %i.gtc, align 4, !tbaa !58
  %i.gte = or disjoint i64 %i.gqk, 7              ; 2 uses
  %i.gtf = getelementptr inbounds nuw [4 x i8], ptr %i.gre, i64 %i.gte
  store float %i.gtd, ptr %i.gtf, align 4, !tbaa !58
  %i.gtg = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gtb
  %i.gth = load float, ptr %i.gtg, align 4, !tbaa !58
  %i.gti = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gte
  store float %i.gth, ptr %i.gti, align 4, !tbaa !58
  %indvars.iv.next2628 = add nuw nsw i64 %indvars.iv2627, 1 ; 2 uses
  %exitcond2631.not = icmp eq i64 %indvars.iv.next2628, %wide.trip.count2630
  br i1 %exitcond2631.not, label %.loopexit1932, label %.preheader1904

.loopexit1932:                                    ; preds = %.preheader1904, %.loopexit1934
  %i.gtj = icmp sge i32 %i.fyv, %i.fyp            ; 3 uses
  %brmerge2299 = select i1 %i.gtj, i1 true, i1 %i.fxu
  br i1 %brmerge2299, label %.loopexit1930, label %.preheader1903.preheader

.preheader1903.preheader:                         ; preds = %.loopexit1932
  %i.gtk = sub i32 %i.fyp, %i.fyv
  %i.gtl = tail call i32 @llvm.smin.i32(i32 %i.gtk, i32 8) ; 2 uses
  %i.gtm = sext i32 %i.fyv to i64
  %i.gtn = call i32 @llvm.umax.i32(i32 %i.gtl, i32 1) ; 2 uses
  %umax4362 = zext i32 %i.gtn to i64              ; 2 uses
  %xtraiter4363 = and i64 %umax4362, 1
  %i.gto = icmp ult i32 %i.gtl, 2
  %unroll_iter4367 = and i64 %umax4362, 4294967294
  %lcmp.mod4365.not = icmp eq i64 %xtraiter4363, 0
  %lcmp.mod4366 = trunc i32 %i.gtn to i1
  br label %.preheader1903

.preheader1903:                                   ; preds = %.preheader1903.preheader, %._crit_edge2145
  %indvars.iv2635 = phi i64 [ %i.fyd, %.preheader1903.preheader ], [ %indvars.iv.next2636, %._crit_edge2145 ] ; 4 uses
  %indvars.iv2635.tr = trunc nuw i64 %indvars.iv2635 to i32
  %i.gtp = shl nuw i32 %indvars.iv2635.tr, 1
  %i.gtq = and i32 %i.gtp, 14                     ; 3 uses
  %i.gtr = add nsw i64 %indvars.iv2635, %indvars.iv2742
  %i.gts = trunc i64 %i.gtr to i32
  %i.gtt = mul i32 %i.ae, %i.gts
  %i.gtu = add i32 %i.ew, %i.gtt                  ; 3 uses
  %i.gtv = shl nuw nsw i64 %indvars.iv2635, 7
  %i.gtw = add nsw i64 %i.gtv, %i.gtm             ; 3 uses
  br i1 %i.gto, label %.epil.preheader4361, label %.preheader1903.new

.preheader1903.new:                               ; preds = %.preheader1903
  %i.gtx = shl nuw nsw i32 %i.gtq, 1
  %i.gty = lshr i32 %i.q, %i.gtx
  %i.gtz = and i32 %i.gty, 3
  %i.gua = zext nneg i32 %i.gtz to i64
  %i.gub = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gua
  %i.guc = load ptr, ptr %i.gub, align 8, !tbaa !59
  %i.gud = shl nuw nsw i32 %i.gtq, 1
  %i.gue = or disjoint i32 %i.gud, 2
  %i.guf = lshr i32 %i.q, %i.gue
  %i.gug = and i32 %i.guf, 3
  %i.guh = zext nneg i32 %i.gug to i64
  %i.gui = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.guh
  %i.guj = load ptr, ptr %i.gui, align 8, !tbaa !59
  br label %bb.bl

._crit_edge2145.unr-lcssa:                        ; preds = %bb.bl
  br i1 %lcmp.mod4365.not, label %._crit_edge2145, label %.epil.preheader4361

.epil.preheader4361:                              ; preds = %._crit_edge2145.unr-lcssa, %.preheader1903
  %indvars.iv2632.epil.init = phi i64 [ 0, %.preheader1903 ], [ %indvars.iv.next2633.1, %._crit_edge2145.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod4366)
  %i.guk = trunc nuw nsw i64 %indvars.iv2632.epil.init to i32 ; 2 uses
  %i.gul = and i32 %i.guk, 1
  %i.gum = or disjoint i32 %i.gul, %i.gtq
  %i.gun = shl nuw nsw i32 %i.gum, 1
  %i.guo = lshr i32 %i.q, %i.gun
  %i.gup = and i32 %i.guo, 3
  %i.guq = sub i32 %i.gtu, %i.guk
  %i.gur = sext i32 %i.guq to i64                 ; 2 uses
  %i.gus = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gur
  %i.gut = load float, ptr %i.gus, align 4, !tbaa !58
  %i.guu = zext nneg i32 %i.gup to i64
  %i.guv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.guu
  %i.guw = load ptr, ptr %i.guv, align 8, !tbaa !59
  %i.gux = add nsw i64 %i.gtw, %indvars.iv2632.epil.init ; 2 uses
  %i.guy = getelementptr inbounds [4 x i8], ptr %i.guw, i64 %i.gux
  store float %i.gut, ptr %i.guy, align 4, !tbaa !58
  %i.guz = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gur
  %i.gva = load float, ptr %i.guz, align 4, !tbaa !58
  %i.gvb = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gux
  store float %i.gva, ptr %i.gvb, align 4, !tbaa !58
  br label %._crit_edge2145

._crit_edge2145:                                  ; preds = %._crit_edge2145.unr-lcssa, %.epil.preheader4361
  %indvars.iv.next2636 = add nuw nsw i64 %indvars.iv2635, 1 ; 2 uses
  %exitcond2639.not = icmp eq i64 %indvars.iv.next2636, %wide.trip.count2638
  br i1 %exitcond2639.not, label %.loopexit1930, label %.preheader1903

bb.bl:                                            ; preds = %bb.bl, %.preheader1903.new
  %indvars.iv2632 = phi i64 [ 0, %.preheader1903.new ], [ %indvars.iv.next2633.1, %bb.bl ] ; 4 uses
  %niter4368 = phi i64 [ 0, %.preheader1903.new ], [ %niter4368.next.1, %bb.bl ]
  %i.gvc = trunc nuw nsw i64 %indvars.iv2632 to i32
  %i.gvd = sub i32 %i.gtu, %i.gvc
  %i.gve = sext i32 %i.gvd to i64                 ; 2 uses
  %i.gvf = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gve
  %i.gvg = load float, ptr %i.gvf, align 4, !tbaa !58
  %i.gvh = add nsw i64 %i.gtw, %indvars.iv2632    ; 2 uses
  %i.gvi = getelementptr inbounds [4 x i8], ptr %i.guc, i64 %i.gvh
  store float %i.gvg, ptr %i.gvi, align 4, !tbaa !58
  %i.gvj = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gve
  %i.gvk = load float, ptr %i.gvj, align 4, !tbaa !58
  %i.gvl = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gvh
  store float %i.gvk, ptr %i.gvl, align 4, !tbaa !58
  %indvars.iv.next2633 = or disjoint i64 %indvars.iv2632, 1 ; 2 uses
  %i.gvm = trunc nuw nsw i64 %indvars.iv.next2633 to i32
  %i.gvn = sub i32 %i.gtu, %i.gvm
  %i.gvo = sext i32 %i.gvn to i64                 ; 2 uses
  %i.gvp = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gvo
  %i.gvq = load float, ptr %i.gvp, align 4, !tbaa !58
  %i.gvr = add nsw i64 %i.gtw, %indvars.iv.next2633 ; 2 uses
  %i.gvs = getelementptr inbounds [4 x i8], ptr %i.guj, i64 %i.gvr
  store float %i.gvq, ptr %i.gvs, align 4, !tbaa !58
  %i.gvt = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gvo
  %i.gvu = load float, ptr %i.gvt, align 4, !tbaa !58
  %i.gvv = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.gvr
  store float %i.gvu, ptr %i.gvv, align 4, !tbaa !58
  %indvars.iv.next2633.1 = add nuw nsw i64 %indvars.iv2632, 2 ; 2 uses
  %niter4368.next.1 = add i64 %niter4368, 2       ; 2 uses
  %niter4368.ncmp.1.not = icmp eq i64 %niter4368.next.1, %unroll_iter4367
  br i1 %niter4368.ncmp.1.not, label %._crit_edge2145.unr-lcssa, label %bb.bl

.loopexit1930:                                    ; preds = %._crit_edge2145, %.loopexit1932
  %i.gvw = and i32 %i.fyo, %i.fxh
  %or.cond11.not = icmp sgt i32 %i.gvw, -1
  br i1 %or.cond11.not, label %.loopexit1928, label %.preheader1902

.preheader1902:                                   ; preds = %.loopexit1930, %.preheader1902
  %indvars.iv2644 = phi i64 [ %indvars.iv.next2645, %.preheader1902 ], [ 0, %.loopexit1930 ] ; 4 uses
  %i.gvx = shl nuw nsw i64 %indvars.iv2644, 2     ; 2 uses
  %i.gvy = sub nuw nsw i64 16, %indvars.iv2644
  %i.gvz = mul nsw i64 %i.gvy, %i.af              ; 5 uses
  %i.gwa = add nsw i64 %i.gvz, 16                 ; 2 uses
  %i.gwb = shl nuw nsw i64 %indvars.iv2644, 7     ; 9 uses
  %i.gwc = trunc nuw nsw i64 %i.gvx to i32
  %i.gwd = lshr i32 %i.q, %i.gwc
  %i.gwe = and i32 %i.gwd, 3
  %i.gwf = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gwa
  %i.gwg = load float, ptr %i.gwf, align 4, !tbaa !58
  %i.gwh = zext nneg i32 %i.gwe to i64
  %i.gwi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gwh
  %i.gwj = load ptr, ptr %i.gwi, align 8, !tbaa !59 ; 4 uses
  %i.gwk = getelementptr inbounds nuw [4 x i8], ptr %i.gwj, i64 %i.gwb
  store float %i.gwg, ptr %i.gwk, align 4, !tbaa !58
  %i.gwl = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gwa
  %i.gwm = load float, ptr %i.gwl, align 4, !tbaa !58
  %i.gwn = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gwb
  store float %i.gwm, ptr %i.gwn, align 64, !tbaa !58
  %i.gwo = trunc i64 %i.gvx to i32
  %i.gwp = or disjoint i32 %i.gwo, 2
  %i.gwq = lshr i32 %i.q, %i.gwp
  %i.gwr = and i32 %i.gwq, 3
  %i.gws = shl i64 %i.gvz, 32
  %sext2944 = add i64 %i.gws, 64424509440
  %i.gwt = ashr exact i64 %sext2944, 32           ; 2 uses
  %i.gwu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gwt
  %i.gwv = load float, ptr %i.gwu, align 4, !tbaa !58
  %i.gww = zext nneg i32 %i.gwr to i64
  %i.gwx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gww
  %i.gwy = load ptr, ptr %i.gwx, align 8, !tbaa !59 ; 4 uses
  %i.gwz = or disjoint i64 %i.gwb, 1              ; 2 uses
  %i.gxa = getelementptr inbounds nuw [4 x i8], ptr %i.gwy, i64 %i.gwz
  store float %i.gwv, ptr %i.gxa, align 4, !tbaa !58
  %i.gxb = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gwt
  %i.gxc = load float, ptr %i.gxb, align 4, !tbaa !58
  %i.gxd = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gwz
  store float %i.gxc, ptr %i.gxd, align 4, !tbaa !58
  %i.gxe = shl i64 %i.gvz, 32
  %sext2945 = add i64 %i.gxe, 60129542144
  %i.gxf = ashr exact i64 %sext2945, 32           ; 2 uses
  %i.gxg = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gxf
  %i.gxh = load float, ptr %i.gxg, align 4, !tbaa !58
  %i.gxi = or disjoint i64 %i.gwb, 2              ; 2 uses
  %i.gxj = getelementptr inbounds nuw [4 x i8], ptr %i.gwj, i64 %i.gxi
  store float %i.gxh, ptr %i.gxj, align 4, !tbaa !58
  %i.gxk = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gxf
  %i.gxl = load float, ptr %i.gxk, align 4, !tbaa !58
  %i.gxm = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gxi
  store float %i.gxl, ptr %i.gxm, align 8, !tbaa !58
  %i.gxn = shl i64 %i.gvz, 32
  %sext2946 = add i64 %i.gxn, 55834574848
  %i.gxo = ashr exact i64 %sext2946, 32           ; 2 uses
  %i.gxp = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gxo
  %i.gxq = load float, ptr %i.gxp, align 4, !tbaa !58
  %i.gxr = or disjoint i64 %i.gwb, 3              ; 2 uses
  %i.gxs = getelementptr inbounds nuw [4 x i8], ptr %i.gwy, i64 %i.gxr
  store float %i.gxq, ptr %i.gxs, align 4, !tbaa !58
  %i.gxt = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gxo
  %i.gxu = load float, ptr %i.gxt, align 4, !tbaa !58
  %i.gxv = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gxr
  store float %i.gxu, ptr %i.gxv, align 4, !tbaa !58
  %i.gxw = or disjoint i64 %i.gwb, 4              ; 2 uses
  %i.gxx = getelementptr inbounds nuw [4 x i8], ptr %i.gwj, i64 %i.gxw
  %i.gxy = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gxw
  %i.gxz = or disjoint i64 %i.gwb, 5              ; 2 uses
  %i.gya = getelementptr inbounds nuw [4 x i8], ptr %i.gwy, i64 %i.gxz
  %i.gyb = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gxz
  %i.gyc = or disjoint i64 %i.gwb, 6              ; 2 uses
  %i.gyd = getelementptr inbounds nuw [4 x i8], ptr %i.gwj, i64 %i.gyc
  %i.gye = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gyc
  %i.gyf = insertelement <4 x i64> poison, i64 %i.gvz, i64 0
  %i.gyg = shl <4 x i64> %i.gyf, <i64 32, i64 poison, i64 poison, i64 poison>
  %i.gyh = shufflevector <4 x i64> %i.gyg, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gyi = add <4 x i64> %i.gyh, <i64 51539607552, i64 47244640256, i64 42949672960, i64 38654705664>
  %i.gyj = ashr exact <4 x i64> %i.gyi, splat (i64 32) ; 4 uses
  %i.gyk = extractelement <4 x i64> %i.gyj, i64 0 ; 2 uses
  %i.gyl = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gyk
  %i.gym = load float, ptr %i.gyl, align 4, !tbaa !58
  store float %i.gym, ptr %i.gxx, align 4, !tbaa !58
  %i.gyn = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gyk
  %i.gyo = load float, ptr %i.gyn, align 4, !tbaa !58
  store float %i.gyo, ptr %i.gxy, align 16, !tbaa !58
  %i.gyp = extractelement <4 x i64> %i.gyj, i64 1 ; 2 uses
  %i.gyq = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gyp
  %i.gyr = load float, ptr %i.gyq, align 4, !tbaa !58
  store float %i.gyr, ptr %i.gya, align 4, !tbaa !58
  %i.gys = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gyp
  %i.gyt = load float, ptr %i.gys, align 4, !tbaa !58
  store float %i.gyt, ptr %i.gyb, align 4, !tbaa !58
  %i.gyu = extractelement <4 x i64> %i.gyj, i64 2 ; 2 uses
  %i.gyv = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gyu
  %i.gyw = load float, ptr %i.gyv, align 4, !tbaa !58
  store float %i.gyw, ptr %i.gyd, align 4, !tbaa !58
  %i.gyx = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gyu
  %i.gyy = load float, ptr %i.gyx, align 4, !tbaa !58
  store float %i.gyy, ptr %i.gye, align 8, !tbaa !58
  %i.gyz = extractelement <4 x i64> %i.gyj, i64 3 ; 2 uses
  %i.gza = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gyz
  %i.gzb = load float, ptr %i.gza, align 4, !tbaa !58
  %i.gzc = or disjoint i64 %i.gwb, 7              ; 2 uses
  %i.gzd = getelementptr inbounds nuw [4 x i8], ptr %i.gwy, i64 %i.gzc
  store float %i.gzb, ptr %i.gzd, align 4, !tbaa !58
  %i.gze = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.gyz
  %i.gzf = load float, ptr %i.gze, align 4, !tbaa !58
  %i.gzg = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %i.gzc
  store float %i.gzf, ptr %i.gzg, align 4, !tbaa !58
  %indvars.iv.next2645 = add nuw nsw i64 %indvars.iv2644, 1 ; 2 uses
  %exitcond2647.not = icmp eq i64 %indvars.iv.next2645, 8
  br i1 %exitcond2647.not, label %.loopexit1928, label %.preheader1902

.loopexit1928:                                    ; preds = %.preheader1902, %.loopexit1930
  %brmerge1801 = or i1 %i.gtj, %.not1799
  %brmerge2301 = select i1 %brmerge1801, i1 true, i1 %i.fxv
  br i1 %brmerge2301, label %.loopexit1926, label %.preheader1901.preheader

.preheader1901.preheader:                         ; preds = %.loopexit1928
  %i.gzh = sub i32 %i.fyp, %i.fyv
  %i.gzi = tail call i32 @llvm.smin.i32(i32 %i.gzh, i32 8) ; 2 uses
  %i.gzj = sext i32 %i.fyv to i64
  %i.gzk = call i32 @llvm.umax.i32(i32 %i.gzi, i32 1) ; 2 uses
  %umax4370 = zext i32 %i.gzk to i64              ; 2 uses
  %xtraiter4371 = and i64 %umax4370, 1
  %i.gzl = icmp ult i32 %i.gzi, 2
  %unroll_iter4375 = and i64 %umax4370, 4294967294
  %lcmp.mod4373.not = icmp eq i64 %xtraiter4371, 0
  %lcmp.mod4374 = trunc i32 %i.gzk to i1
  br label %.preheader1901

.preheader1901:                                   ; preds = %.preheader1901.preheader, %._crit_edge2151
  %indvars.iv2651 = phi i64 [ 0, %.preheader1901.preheader ], [ %indvars.iv.next2652, %._crit_edge2151 ] ; 4 uses
  %i.gzm = trunc nuw nsw i64 %indvars.iv2651 to i32
  %i.gzn = sub i32 %i.ev, %i.gzm
  %i.gzo = mul nsw i32 %i.gzn, %i.ae
  %i.gzp = add i32 %i.ew, %i.gzo                  ; 3 uses
  %i.gzq = add nsw i64 %indvars.iv2651, %i.fye
  %i.gzr = shl nsw i64 %i.gzq, 7
  %i.gzs = add nsw i64 %i.gzr, %i.gzj             ; 3 uses
  %indvars.iv2651.tr = trunc nuw i64 %indvars.iv2651 to i32
  %i.gzt = shl i32 %indvars.iv2651.tr, 2          ; 3 uses
  br i1 %i.gzl, label %.epil.preheader4369, label %.preheader1901.new

.preheader1901.new:                               ; preds = %.preheader1901
  %i.gzu = lshr i32 %i.q, %i.gzt
  %i.gzv = and i32 %i.gzu, 3
  %i.gzw = zext nneg i32 %i.gzv to i64
  %i.gzx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gzw
  %i.gzy = load ptr, ptr %i.gzx, align 8, !tbaa !59
  %i.gzz = or disjoint i32 %i.gzt, 2
  %i.haa = lshr i32 %i.q, %i.gzz
  %i.hab = and i32 %i.haa, 3
  %i.hac = zext nneg i32 %i.hab to i64
  %i.had = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hac
  %i.hae = load ptr, ptr %i.had, align 8, !tbaa !59
  br label %bb.bm

._crit_edge2151.unr-lcssa:                        ; preds = %bb.bm
  br i1 %lcmp.mod4373.not, label %._crit_edge2151, label %.epil.preheader4369

.epil.preheader4369:                              ; preds = %._crit_edge2151.unr-lcssa, %.preheader1901
  %indvars.iv2648.epil.init = phi i64 [ 0, %.preheader1901 ], [ %indvars.iv.next2649.1, %._crit_edge2151.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod4374)
  %i.haf = trunc nuw nsw i64 %indvars.iv2648.epil.init to i32 ; 2 uses
  %i.hag = shl i32 %i.haf, 1
  %i.hah = and i32 %i.hag, 2
  %i.hai = or disjoint i32 %i.gzt, %i.hah
  %i.haj = lshr i32 %i.q, %i.hai
  %i.hak = and i32 %i.haj, 3
  %i.hal = sub i32 %i.gzp, %i.haf
  %i.ham = sext i32 %i.hal to i64                 ; 2 uses
  %i.han = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ham
  %i.hao = load float, ptr %i.han, align 4, !tbaa !58
  %i.hap = zext nneg i32 %i.hak to i64
  %i.haq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hap
  %i.har = load ptr, ptr %i.haq, align 8, !tbaa !59
  %i.has = add nsw i64 %i.gzs, %indvars.iv2648.epil.init ; 2 uses
  %i.hat = getelementptr inbounds [4 x i8], ptr %i.har, i64 %i.has
  store float %i.hao, ptr %i.hat, align 4, !tbaa !58
  %i.hau = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ham
  %i.hav = load float, ptr %i.hau, align 4, !tbaa !58
  %i.haw = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.has
  store float %i.hav, ptr %i.haw, align 4, !tbaa !58
  br label %._crit_edge2151

._crit_edge2151:                                  ; preds = %._crit_edge2151.unr-lcssa, %.epil.preheader4369
  %indvars.iv.next2652 = add nuw nsw i64 %indvars.iv2651, 1 ; 2 uses
  %i.hax = icmp slt i64 %indvars.iv.next2652, %i.fyf
  br i1 %i.hax, label %.preheader1901, label %.loopexit1926

bb.bm:                                            ; preds = %bb.bm, %.preheader1901.new
  %indvars.iv2648 = phi i64 [ 0, %.preheader1901.new ], [ %indvars.iv.next2649.1, %bb.bm ] ; 4 uses
  %niter4376 = phi i64 [ 0, %.preheader1901.new ], [ %niter4376.next.1, %bb.bm ]
  %i.hay = trunc nuw nsw i64 %indvars.iv2648 to i32
  %i.haz = sub i32 %i.gzp, %i.hay
  %i.hba = sext i32 %i.haz to i64                 ; 2 uses
  %i.hbb = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hba
  %i.hbc = load float, ptr %i.hbb, align 4, !tbaa !58
  %i.hbd = add nsw i64 %i.gzs, %indvars.iv2648    ; 2 uses
  %i.hbe = getelementptr inbounds [4 x i8], ptr %i.gzy, i64 %i.hbd
  store float %i.hbc, ptr %i.hbe, align 4, !tbaa !58
  %i.hbf = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hba
  %i.hbg = load float, ptr %i.hbf, align 4, !tbaa !58
  %i.hbh = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hbd
  store float %i.hbg, ptr %i.hbh, align 4, !tbaa !58
  %indvars.iv.next2649 = or disjoint i64 %indvars.iv2648, 1 ; 2 uses
  %i.hbi = trunc nuw nsw i64 %indvars.iv.next2649 to i32
  %i.hbj = sub i32 %i.gzp, %i.hbi
  %i.hbk = sext i32 %i.hbj to i64                 ; 2 uses
  %i.hbl = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hbk
  %i.hbm = load float, ptr %i.hbl, align 4, !tbaa !58
  %i.hbn = add nsw i64 %i.gzs, %indvars.iv.next2649 ; 2 uses
  %i.hbo = getelementptr inbounds [4 x i8], ptr %i.hae, i64 %i.hbn
  store float %i.hbm, ptr %i.hbo, align 4, !tbaa !58
  %i.hbp = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hbk
  %i.hbq = load float, ptr %i.hbp, align 4, !tbaa !58
  %i.hbr = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hbn
  store float %i.hbq, ptr %i.hbr, align 4, !tbaa !58
  %indvars.iv.next2649.1 = add nuw nsw i64 %indvars.iv2648, 2 ; 2 uses
  %niter4376.next.1 = add i64 %niter4376, 2       ; 2 uses
  %niter4376.ncmp.1.not = icmp eq i64 %niter4376.next.1, %unroll_iter4375
  br i1 %niter4376.ncmp.1.not, label %._crit_edge2151.unr-lcssa, label %bb.bm

.loopexit1926:                                    ; preds = %._crit_edge2151, %.loopexit1928
  %brmerge1804 = or i1 %i.fxj, %i.gtj
  br i1 %brmerge1804, label %.loopexit1924.split, label %.preheader1900.preheader

.preheader1900.preheader:                         ; preds = %.loopexit1926
  %i.hbs = sext i32 %i.fyv to i64                 ; 65 uses
  %i.hbt = add i32 %smin2693, %indvars.iv2664
  %i.hbu = sub i32 %i.hbt, %i.fyv                 ; 56 uses
  %i.hbv = load float, ptr %i.bam, align 4, !tbaa !58
  %i.hbw = load ptr, ptr %i.bao, align 8, !tbaa !59
  %i.hbx = getelementptr inbounds [4 x i8], ptr %i.hbw, i64 %i.hbs
  store float %i.hbv, ptr %i.hbx, align 4, !tbaa !58
  %i.hby = load float, ptr %i.bap, align 4, !tbaa !58
  %i.hbz = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hbs
  store float %i.hby, ptr %i.hbz, align 4, !tbaa !58
  %exitcond2696.not = icmp slt i32 %i.hbu, 2
  br i1 %exitcond2696.not, label %._crit_edge2155, label %bb.dk

._crit_edge2155:                                  ; preds = %.preheader1900.preheader, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq
  %i.hca = add nsw i64 %i.hbs, 128                ; 2 uses
  %i.hcb = load float, ptr %i.bcu, align 4, !tbaa !58
  %i.hcc = load ptr, ptr %i.bcw, align 8, !tbaa !59
  %i.hcd = getelementptr inbounds [4 x i8], ptr %i.hcc, i64 %i.hca
  store float %i.hcb, ptr %i.hcd, align 4, !tbaa !58
  %i.hce = load float, ptr %i.bcx, align 4, !tbaa !58
  %i.hcf = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hca
  store float %i.hce, ptr %i.hcf, align 4, !tbaa !58
  %exitcond2692.not = icmp slt i32 %i.hbu, 2
  br i1 %exitcond2692.not, label %._crit_edge2155.1, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge2155
  %i.hcg = load float, ptr %i.bdc, align 4, !tbaa !58
  %i.hch = load ptr, ptr %i.bde, align 8, !tbaa !59
  %i.hci = add nsw i64 %i.hbs, 129                ; 2 uses
  %i.hcj = getelementptr inbounds [4 x i8], ptr %i.hch, i64 %i.hci
  store float %i.hcg, ptr %i.hcj, align 4, !tbaa !58
  %i.hck = load float, ptr %i.bdf, align 4, !tbaa !58
  %i.hcl = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hci
  store float %i.hck, ptr %i.hcl, align 4, !tbaa !58
  %exitcond2692.not.1 = icmp eq i32 %i.hbu, 2
  br i1 %exitcond2692.not.1, label %._crit_edge2155.1, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hcm = load float, ptr %i.bdk, align 4, !tbaa !58
  %i.hcn = load ptr, ptr %i.bdm, align 8, !tbaa !59
  %i.hco = add nsw i64 %i.hbs, 130                ; 2 uses
  %i.hcp = getelementptr inbounds [4 x i8], ptr %i.hcn, i64 %i.hco
  store float %i.hcm, ptr %i.hcp, align 4, !tbaa !58
  %i.hcq = load float, ptr %i.bdn, align 4, !tbaa !58
  %i.hcr = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hco
  store float %i.hcq, ptr %i.hcr, align 4, !tbaa !58
  %exitcond2692.not.2 = icmp eq i32 %i.hbu, 3
  br i1 %exitcond2692.not.2, label %._crit_edge2155.1, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hcs = load float, ptr %i.bds, align 4, !tbaa !58
  %i.hct = load ptr, ptr %i.bdu, align 8, !tbaa !59
  %i.hcu = add nsw i64 %i.hbs, 131                ; 2 uses
  %i.hcv = getelementptr inbounds [4 x i8], ptr %i.hct, i64 %i.hcu
  store float %i.hcs, ptr %i.hcv, align 4, !tbaa !58
  %i.hcw = load float, ptr %i.bdv, align 4, !tbaa !58
  %i.hcx = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hcu
  store float %i.hcw, ptr %i.hcx, align 4, !tbaa !58
  %exitcond2692.not.3 = icmp eq i32 %i.hbu, 4
  br i1 %exitcond2692.not.3, label %._crit_edge2155.1, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hcy = load float, ptr %i.bea, align 4, !tbaa !58
  %i.hcz = load ptr, ptr %i.bec, align 8, !tbaa !59
  %i.hda = add nsw i64 %i.hbs, 132                ; 2 uses
  %i.hdb = getelementptr inbounds [4 x i8], ptr %i.hcz, i64 %i.hda
  store float %i.hcy, ptr %i.hdb, align 4, !tbaa !58
  %i.hdc = load float, ptr %i.bed, align 4, !tbaa !58
  %i.hdd = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hda
  store float %i.hdc, ptr %i.hdd, align 4, !tbaa !58
  %exitcond2692.not.4 = icmp eq i32 %i.hbu, 5
  br i1 %exitcond2692.not.4, label %._crit_edge2155.1, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hde = load float, ptr %i.bei, align 4, !tbaa !58
  %i.hdf = load ptr, ptr %i.bek, align 8, !tbaa !59
  %i.hdg = add nsw i64 %i.hbs, 133                ; 2 uses
  %i.hdh = getelementptr inbounds [4 x i8], ptr %i.hdf, i64 %i.hdg
  store float %i.hde, ptr %i.hdh, align 4, !tbaa !58
  %i.hdi = load float, ptr %i.bel, align 4, !tbaa !58
  %i.hdj = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hdg
  store float %i.hdi, ptr %i.hdj, align 4, !tbaa !58
  %exitcond2692.not.5 = icmp eq i32 %i.hbu, 6
  br i1 %exitcond2692.not.5, label %._crit_edge2155.1, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hdk = load float, ptr %i.beq, align 32, !tbaa !58
  %i.hdl = load ptr, ptr %i.bes, align 8, !tbaa !59
  %i.hdm = add nsw i64 %i.hbs, 134                ; 2 uses
  %i.hdn = getelementptr inbounds [4 x i8], ptr %i.hdl, i64 %i.hdm
  store float %i.hdk, ptr %i.hdn, align 4, !tbaa !58
  %i.hdo = load float, ptr %i.bet, align 32, !tbaa !58
  %i.hdp = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hdm
  store float %i.hdo, ptr %i.hdp, align 4, !tbaa !58
  %exitcond2692.not.6 = icmp eq i32 %i.hbu, 7
  br i1 %exitcond2692.not.6, label %._crit_edge2155.1, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hdq = load float, ptr %i.bey, align 4, !tbaa !58
  %i.hdr = load ptr, ptr %i.bfa, align 8, !tbaa !59
  %i.hds = add nsw i64 %i.hbs, 135                ; 2 uses
  %i.hdt = getelementptr inbounds [4 x i8], ptr %i.hdr, i64 %i.hds
  store float %i.hdq, ptr %i.hdt, align 4, !tbaa !58
  %i.hdu = load float, ptr %i.bfb, align 4, !tbaa !58
  %i.hdv = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hds
  store float %i.hdu, ptr %i.hdv, align 4, !tbaa !58
  br label %._crit_edge2155.1

._crit_edge2155.1:                                ; preds = %._crit_edge2155, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt
  %i.hdw = add nsw i64 %i.hbs, 256                ; 2 uses
  %i.hdx = load float, ptr %i.bff, align 4, !tbaa !58
  %i.hdy = load ptr, ptr %i.bfh, align 8, !tbaa !59
end_hunk_2
begin_hunk_3_@process:bb.a
  %i.hmx = load ptr, ptr %i.brd, align 8, !tbaa !59
  %i.hmy = add nsw i64 %i.hbs, 775                ; 2 uses
  %i.hmz = getelementptr inbounds [4 x i8], ptr %i.hmx, i64 %i.hmy
  store float %i.hmw, ptr %i.hmz, align 4, !tbaa !58
  %i.hna = load float, ptr %i.bre, align 4, !tbaa !58
  %i.hnb = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hmy
  store float %i.hna, ptr %i.hnb, align 4, !tbaa !58
  br label %._crit_edge2155.6

._crit_edge2155.6:                                ; preds = %._crit_edge2155.5, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc
  %i.hnc = add nsw i64 %i.hbs, 896                ; 2 uses
  %i.hnd = load float, ptr %i.bri, align 4, !tbaa !58
  %i.hne = load ptr, ptr %i.brk, align 8, !tbaa !59
  %i.hnf = getelementptr inbounds [4 x i8], ptr %i.hne, i64 %i.hnc
  store float %i.hnd, ptr %i.hnf, align 4, !tbaa !58
  %i.hng = load float, ptr %i.brl, align 4, !tbaa !58
  %i.hnh = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hnc
  store float %i.hng, ptr %i.hnh, align 4, !tbaa !58
  %exitcond2668.not = icmp slt i32 %i.hbu, 2
  br i1 %exitcond2668.not, label %.loopexit1924.split, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge2155.6
  %i.hni = load float, ptr %i.brp, align 4, !tbaa !58
  %i.hnj = load ptr, ptr %i.brr, align 8, !tbaa !59
  %i.hnk = add nsw i64 %i.hbs, 897                ; 2 uses
  %i.hnl = getelementptr inbounds [4 x i8], ptr %i.hnj, i64 %i.hnk
  store float %i.hni, ptr %i.hnl, align 4, !tbaa !58
  %i.hnm = load float, ptr %i.brs, align 4, !tbaa !58
  %i.hnn = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hnk
  store float %i.hnm, ptr %i.hnn, align 4, !tbaa !58
  %exitcond2668.not.1 = icmp eq i32 %i.hbu, 2
  br i1 %exitcond2668.not.1, label %.loopexit1924.split, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hno = load float, ptr %i.brx, align 4, !tbaa !58
  %i.hnp = load ptr, ptr %i.brz, align 8, !tbaa !59
  %i.hnq = add nsw i64 %i.hbs, 898                ; 2 uses
  %i.hnr = getelementptr inbounds [4 x i8], ptr %i.hnp, i64 %i.hnq
  store float %i.hno, ptr %i.hnr, align 4, !tbaa !58
  %i.hns = load float, ptr %i.bsa, align 4, !tbaa !58
  %i.hnt = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hnq
  store float %i.hns, ptr %i.hnt, align 4, !tbaa !58
  %exitcond2668.not.2 = icmp eq i32 %i.hbu, 3
  br i1 %exitcond2668.not.2, label %.loopexit1924.split, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.hnu = load float, ptr %i.bse, align 4, !tbaa !58
  %i.hnv = load ptr, ptr %i.bsg, align 8, !tbaa !59
  %i.hnw = add nsw i64 %i.hbs, 899                ; 2 uses
  %i.hnx = getelementptr inbounds [4 x i8], ptr %i.hnv, i64 %i.hnw
  store float %i.hnu, ptr %i.hnx, align 4, !tbaa !58
  %i.hny = load float, ptr %i.bsh, align 4, !tbaa !58
  %i.hnz = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hnw
  store float %i.hny, ptr %i.hnz, align 4, !tbaa !58
  %exitcond2668.not.3 = icmp eq i32 %i.hbu, 4
  br i1 %exitcond2668.not.3, label %.loopexit1924.split, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hoa = load float, ptr %i.bsm, align 4, !tbaa !58
  %i.hob = load ptr, ptr %i.bso, align 8, !tbaa !59
  %i.hoc = add nsw i64 %i.hbs, 900                ; 2 uses
  %i.hod = getelementptr inbounds [4 x i8], ptr %i.hob, i64 %i.hoc
  store float %i.hoa, ptr %i.hod, align 4, !tbaa !58
  %i.hoe = load float, ptr %i.bsp, align 4, !tbaa !58
  %i.hof = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hoc
  store float %i.hoe, ptr %i.hof, align 4, !tbaa !58
  %exitcond2668.not.4 = icmp eq i32 %i.hbu, 5
  br i1 %exitcond2668.not.4, label %.loopexit1924.split, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.hog = load float, ptr %i.bst, align 4, !tbaa !58
  %i.hoh = load ptr, ptr %i.bsv, align 8, !tbaa !59
  %i.hoi = add nsw i64 %i.hbs, 901                ; 2 uses
  %i.hoj = getelementptr inbounds [4 x i8], ptr %i.hoh, i64 %i.hoi
  store float %i.hog, ptr %i.hoj, align 4, !tbaa !58
  %i.hok = load float, ptr %i.bsw, align 4, !tbaa !58
  %i.hol = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hoi
  store float %i.hok, ptr %i.hol, align 4, !tbaa !58
  %exitcond2668.not.5 = icmp eq i32 %i.hbu, 6
  br i1 %exitcond2668.not.5, label %.loopexit1924.split, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.hom = load float, ptr %i.btb, align 4, !tbaa !58
  %i.hon = load ptr, ptr %i.btd, align 8, !tbaa !59
  %i.hoo = add nsw i64 %i.hbs, 902                ; 2 uses
  %i.hop = getelementptr inbounds [4 x i8], ptr %i.hon, i64 %i.hoo
  store float %i.hom, ptr %i.hop, align 4, !tbaa !58
  %i.hoq = load float, ptr %i.bte, align 4, !tbaa !58
  %i.hor = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hoo
  store float %i.hoq, ptr %i.hor, align 4, !tbaa !58
  %exitcond2668.not.6 = icmp eq i32 %i.hbu, 7
  br i1 %exitcond2668.not.6, label %.loopexit1924.split, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.hos = load float, ptr %i.bti, align 4, !tbaa !58
  %i.hot = load ptr, ptr %i.btk, align 8, !tbaa !59
  %i.hou = add nsw i64 %i.hbs, 903                ; 2 uses
  %i.hov = getelementptr inbounds [4 x i8], ptr %i.hot, i64 %i.hou
  store float %i.hos, ptr %i.hov, align 4, !tbaa !58
  %i.how = load float, ptr %i.btl, align 4, !tbaa !58
  %i.hox = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hou
  store float %i.how, ptr %i.hox, align 4, !tbaa !58
  br label %.loopexit1924.split

bb.dk:                                            ; preds = %.preheader1900.preheader
  %i.hoy = load float, ptr %i.bau, align 4, !tbaa !58
  %i.hoz = load ptr, ptr %i.baw, align 8, !tbaa !59
  %i.hpa = add nsw i64 %i.hbs, 1                  ; 2 uses
  %i.hpb = getelementptr inbounds [4 x i8], ptr %i.hoz, i64 %i.hpa
  store float %i.hoy, ptr %i.hpb, align 4, !tbaa !58
  %i.hpc = load float, ptr %i.bax, align 4, !tbaa !58
  %i.hpd = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hpa
  store float %i.hpc, ptr %i.hpd, align 4, !tbaa !58
  %exitcond2696.not.1 = icmp eq i32 %i.hbu, 2
  br i1 %exitcond2696.not.1, label %._crit_edge2155, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.hpe = load float, ptr %i.bbb, align 4, !tbaa !58
  %i.hpf = load ptr, ptr %i.bbd, align 8, !tbaa !59
  %i.hpg = add nsw i64 %i.hbs, 2                  ; 2 uses
  %i.hph = getelementptr inbounds [4 x i8], ptr %i.hpf, i64 %i.hpg
  store float %i.hpe, ptr %i.hph, align 4, !tbaa !58
  %i.hpi = load float, ptr %i.bbe, align 4, !tbaa !58
  %i.hpj = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hpg
  store float %i.hpi, ptr %i.hpj, align 4, !tbaa !58
  %exitcond2696.not.2 = icmp eq i32 %i.hbu, 3
  br i1 %exitcond2696.not.2, label %._crit_edge2155, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.hpk = load float, ptr %i.bbj, align 4, !tbaa !58
  %i.hpl = load ptr, ptr %i.bbl, align 8, !tbaa !59
  %i.hpm = add nsw i64 %i.hbs, 3                  ; 2 uses
  %i.hpn = getelementptr inbounds [4 x i8], ptr %i.hpl, i64 %i.hpm
  store float %i.hpk, ptr %i.hpn, align 4, !tbaa !58
  %i.hpo = load float, ptr %i.bbm, align 4, !tbaa !58
  %i.hpp = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hpm
  store float %i.hpo, ptr %i.hpp, align 4, !tbaa !58
  %exitcond2696.not.3 = icmp eq i32 %i.hbu, 4
  br i1 %exitcond2696.not.3, label %._crit_edge2155, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.hpq = load float, ptr %i.bbq, align 4, !tbaa !58
  %i.hpr = load ptr, ptr %i.bbs, align 8, !tbaa !59
  %i.hps = add nsw i64 %i.hbs, 4                  ; 2 uses
  %i.hpt = getelementptr inbounds [4 x i8], ptr %i.hpr, i64 %i.hps
  store float %i.hpq, ptr %i.hpt, align 4, !tbaa !58
  %i.hpu = load float, ptr %i.bbt, align 4, !tbaa !58
  %i.hpv = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hps
  store float %i.hpu, ptr %i.hpv, align 4, !tbaa !58
  %exitcond2696.not.4 = icmp eq i32 %i.hbu, 5
  br i1 %exitcond2696.not.4, label %._crit_edge2155, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.hpw = load float, ptr %i.bby, align 4, !tbaa !58
  %i.hpx = load ptr, ptr %i.bca, align 8, !tbaa !59
  %i.hpy = add nsw i64 %i.hbs, 5                  ; 2 uses
  %i.hpz = getelementptr inbounds [4 x i8], ptr %i.hpx, i64 %i.hpy
  store float %i.hpw, ptr %i.hpz, align 4, !tbaa !58
  %i.hqa = load float, ptr %i.bcb, align 4, !tbaa !58
  %i.hqb = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hpy
  store float %i.hqa, ptr %i.hqb, align 4, !tbaa !58
  %exitcond2696.not.5 = icmp eq i32 %i.hbu, 6
  br i1 %exitcond2696.not.5, label %._crit_edge2155, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.hqc = load float, ptr %i.bcf, align 4, !tbaa !58
  %i.hqd = load ptr, ptr %i.bch, align 8, !tbaa !59
  %i.hqe = add nsw i64 %i.hbs, 6                  ; 2 uses
  %i.hqf = getelementptr inbounds [4 x i8], ptr %i.hqd, i64 %i.hqe
  store float %i.hqc, ptr %i.hqf, align 4, !tbaa !58
  %i.hqg = load float, ptr %i.bci, align 4, !tbaa !58
  %i.hqh = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hqe
  store float %i.hqg, ptr %i.hqh, align 4, !tbaa !58
  %exitcond2696.not.6 = icmp eq i32 %i.hbu, 7
  br i1 %exitcond2696.not.6, label %._crit_edge2155, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.hqi = load float, ptr %i.bcn, align 4, !tbaa !58
  %i.hqj = load ptr, ptr %i.bcp, align 8, !tbaa !59
  %i.hqk = add nsw i64 %i.hbs, 7                  ; 2 uses
  %i.hql = getelementptr inbounds [4 x i8], ptr %i.hqj, i64 %i.hqk
  store float %i.hqi, ptr %i.hql, align 4, !tbaa !58
  %i.hqm = load float, ptr %i.bcq, align 4, !tbaa !58
  %i.hqn = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hqk
  store float %i.hqm, ptr %i.hqn, align 4, !tbaa !58
  br label %._crit_edge2155

.loopexit1924.split:                              ; preds = %._crit_edge2155.6, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %.loopexit1926
  %or.cond13 = and i1 %i.fxq, %i.fyq
  %brmerge2303.not = select i1 %or.cond13, i1 %i.fxt, i1 false
  br i1 %brmerge2303.not, label %.preheader1899, label %.preheader1898.lr.ph

.preheader1899:                                   ; preds = %.loopexit1924.split, %.preheader1899
  %indvars.iv2701 = phi i64 [ %indvars.iv.next2702, %.preheader1899 ], [ 0, %.loopexit1924.split ] ; 5 uses
  %i.hqo = trunc nuw nsw i64 %indvars.iv2701 to i32
  %i.hqp = sub i32 %i.ev, %i.hqo
  %i.hqq = mul nsw i32 %i.hqp, %i.ae              ; 8 uses
  %reass.sub = add i32 %i.hqq, 16
  %i.hqr = add nsw i64 %indvars.iv2701, %i.fye
  %i.hqs = shl nsw i64 %i.hqr, 7                  ; 9 uses
  %indvars.iv2701.tr = trunc nuw i64 %indvars.iv2701 to i32
  %i.hqt = shl nuw nsw i32 %indvars.iv2701.tr, 2
  %i.hqu = lshr i32 %i.q, %i.hqt
  %i.hqv = and i32 %i.hqu, 3
  %i.hqw = sext i32 %reass.sub to i64             ; 2 uses
  %i.hqx = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hqw
  %i.hqy = load float, ptr %i.hqx, align 4, !tbaa !58
  %i.hqz = zext nneg i32 %i.hqv to i64
  %i.hra = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hqz
  %i.hrb = load ptr, ptr %i.hra, align 8, !tbaa !59 ; 4 uses
  %i.hrc = getelementptr inbounds [4 x i8], ptr %i.hrb, i64 %i.hqs
  store float %i.hqy, ptr %i.hrc, align 4, !tbaa !58
  %i.hrd = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hqw
  %i.hre = load float, ptr %i.hrd, align 4, !tbaa !58
  %i.hrf = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hqs
  store float %i.hre, ptr %i.hrf, align 64, !tbaa !58
  %indvars.iv2701.tr2951 = trunc i64 %indvars.iv2701 to i32
  %i.hrg = shl i32 %indvars.iv2701.tr2951, 2
  %i.hrh = or disjoint i32 %i.hrg, 2
  %i.hri = lshr i32 %i.q, %i.hrh
  %i.hrj = and i32 %i.hri, 3
  %i.hrk = add i32 %i.hqq, 15
  %i.hrl = sext i32 %i.hrk to i64                 ; 2 uses
  %i.hrm = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hrl
  %i.hrn = load float, ptr %i.hrm, align 4, !tbaa !58
  %i.hro = zext nneg i32 %i.hrj to i64
  %i.hrp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hro
  %i.hrq = load ptr, ptr %i.hrp, align 8, !tbaa !59 ; 4 uses
  %i.hrr = or disjoint i64 %i.hqs, 1              ; 2 uses
  %i.hrs = getelementptr inbounds [4 x i8], ptr %i.hrq, i64 %i.hrr
  store float %i.hrn, ptr %i.hrs, align 4, !tbaa !58
  %i.hrt = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hrl
  %i.hru = load float, ptr %i.hrt, align 4, !tbaa !58
  %i.hrv = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hrr
  store float %i.hru, ptr %i.hrv, align 4, !tbaa !58
  %i.hrw = add i32 %i.hqq, 14
  %i.hrx = sext i32 %i.hrw to i64                 ; 2 uses
  %i.hry = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hrx
  %i.hrz = load float, ptr %i.hry, align 4, !tbaa !58
  %i.hsa = or disjoint i64 %i.hqs, 2              ; 2 uses
  %i.hsb = getelementptr inbounds [4 x i8], ptr %i.hrb, i64 %i.hsa
  store float %i.hrz, ptr %i.hsb, align 4, !tbaa !58
  %i.hsc = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hrx
  %i.hsd = load float, ptr %i.hsc, align 4, !tbaa !58
  %i.hse = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hsa
  store float %i.hsd, ptr %i.hse, align 8, !tbaa !58
  %i.hsf = add i32 %i.hqq, 13
  %i.hsg = sext i32 %i.hsf to i64                 ; 2 uses
  %i.hsh = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hsg
  %i.hsi = load float, ptr %i.hsh, align 4, !tbaa !58
  %i.hsj = or disjoint i64 %i.hqs, 3              ; 2 uses
  %i.hsk = getelementptr inbounds [4 x i8], ptr %i.hrq, i64 %i.hsj
  store float %i.hsi, ptr %i.hsk, align 4, !tbaa !58
  %i.hsl = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hsg
  %i.hsm = load float, ptr %i.hsl, align 4, !tbaa !58
  %i.hsn = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hsj
  store float %i.hsm, ptr %i.hsn, align 4, !tbaa !58
  %i.hso = add i32 %i.hqq, 12
  %i.hsp = sext i32 %i.hso to i64                 ; 2 uses
  %i.hsq = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hsp
  %i.hsr = load float, ptr %i.hsq, align 4, !tbaa !58
  %i.hss = or disjoint i64 %i.hqs, 4              ; 2 uses
  %i.hst = getelementptr inbounds [4 x i8], ptr %i.hrb, i64 %i.hss
  store float %i.hsr, ptr %i.hst, align 4, !tbaa !58
  %i.hsu = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hsp
  %i.hsv = load float, ptr %i.hsu, align 4, !tbaa !58
  %i.hsw = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.hss
  store float %i.hsv, ptr %i.hsw, align 16, !tbaa !58
  %i.hsx = add i32 %i.hqq, 11
  %i.hsy = sext i32 %i.hsx to i64                 ; 2 uses
  %i.hsz = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hsy
  %i.hta = load float, ptr %i.hsz, align 4, !tbaa !58
  %i.htb = or disjoint i64 %i.hqs, 5              ; 2 uses
  %i.htc = getelementptr inbounds [4 x i8], ptr %i.hrq, i64 %i.htb
  store float %i.hta, ptr %i.htc, align 4, !tbaa !58
  %i.htd = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hsy
  %i.hte = load float, ptr %i.htd, align 4, !tbaa !58
  %i.htf = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.htb
  store float %i.hte, ptr %i.htf, align 4, !tbaa !58
  %i.htg = add i32 %i.hqq, 10
  %i.hth = sext i32 %i.htg to i64                 ; 2 uses
  %i.hti = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hth
  %i.htj = load float, ptr %i.hti, align 4, !tbaa !58
  %i.htk = or disjoint i64 %i.hqs, 6              ; 2 uses
  %i.htl = getelementptr inbounds [4 x i8], ptr %i.hrb, i64 %i.htk
  store float %i.htj, ptr %i.htl, align 4, !tbaa !58
  %i.htm = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hth
  %i.htn = load float, ptr %i.htm, align 4, !tbaa !58
  %i.hto = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.htk
  store float %i.htn, ptr %i.hto, align 8, !tbaa !58
  %i.htp = add i32 %i.hqq, 9
  %i.htq = sext i32 %i.htp to i64                 ; 2 uses
  %i.htr = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.htq
  %i.hts = load float, ptr %i.htr, align 4, !tbaa !58
  %i.htt = or disjoint i64 %i.hqs, 7              ; 2 uses
  %i.htu = getelementptr inbounds [4 x i8], ptr %i.hrq, i64 %i.htt
  store float %i.hts, ptr %i.htu, align 4, !tbaa !58
  %i.htv = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.htq
  %i.htw = load float, ptr %i.htv, align 4, !tbaa !58
  %i.htx = getelementptr inbounds [4 x i8], ptr %i.bts, i64 %i.htt
  store float %i.htw, ptr %i.htx, align 4, !tbaa !58
  %indvars.iv.next2702 = add nuw nsw i64 %indvars.iv2701, 1 ; 2 uses
  %i.hty = icmp slt i64 %indvars.iv.next2702, %i.fyf
  br i1 %i.hty, label %.preheader1899, label %.preheader1898.lr.ph

.preheader1898.lr.ph:                             ; preds = %.preheader1899, %.loopexit1924.split
  %i.htz = trunc i64 %i.fyk to i32
  %i.hua = add i32 %i.htz, 1
  %i.hub = sitofp reassoc nsz arcp contract afn i32 %i.hua to float ; 3 uses
  %invariant.op4487 = fmul reassoc nsz arcp contract afn float %i.hub, %i.hub
  br label %.preheader1898

.preheader1898:                                   ; preds = %.preheader1898.lr.ph, %._crit_edge2170
  %indvars.iv2709 = phi i64 [ 0, %.preheader1898.lr.ph ], [ %indvars.iv.next2710, %._crit_edge2170 ] ; 2 uses
  %.016262191 = phi float [ 1.000000e+00, %.preheader1898.lr.ph ], [ %i.hvr, %._crit_edge2170 ] ; 3 uses
  %i.huc = phi <2 x float> [ zeroinitializer, %.preheader1898.lr.ph ], [ %.lcssa4194, %._crit_edge2170 ] ; 2 uses
  %i.hud = phi <2 x float> [ zeroinitializer, %.preheader1898.lr.ph ], [ %.lcssa4196, %._crit_edge2170 ] ; 2 uses
  %i.hue = mul nuw nsw i64 %indvars.iv2709, %i.fxa ; 3 uses
  br i1 %i.fxb, label %.epil.preheader4391, label %.preheader1898.new

._crit_edge2193:                                  ; preds = %._crit_edge2170
  %i.huf = fcmp reassoc nsz arcp contract afn oge <2 x double> %.lcssa4197, splat (double f0xC00FEB852FFFFFFF)
  %i.hug = fcmp reassoc nsz arcp contract afn ole <2 x float> %.lcssa4196, splat (float 3.990000e+00)
  %i.huh = select <2 x i1> %i.hug, <2 x float> %.lcssa4196, <2 x float> splat (float 3.990000e+00)
  %i.hui = select <2 x i1> %i.huf, <2 x float> %i.huh, <2 x float> splat (float -3.990000e+00) ; 3 uses
  %i.huj = fcmp reassoc nsz arcp contract afn oge <2 x double> %.lcssa4195, splat (double f0xC00FEB852FFFFFFF)
  %i.huk = fcmp reassoc nsz arcp contract afn ole <2 x float> %.lcssa4194, splat (float 3.990000e+00)
  %i.hul = select <2 x i1> %i.huk, <2 x float> %.lcssa4194, <2 x float> splat (float 3.990000e+00)
  %i.hum = select <2 x i1> %i.huj, <2 x float> %i.hul, <2 x float> splat (float -3.990000e+00) ; 3 uses
  %i.hun = extractelement <2 x float> %i.hui, i64 0 ; 4 uses
  %i.huo = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hun)
  %i.hup = fptosi float %i.huo to i32             ; 3 uses
  store i32 %i.hup, ptr %i.e, align 4, !tbaa !16
  %i.huq = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hun)
  %i.hur = fptosi float %i.huq to i32             ; 3 uses
  store i32 %i.hur, ptr %i.g, align 4, !tbaa !16
  %i.hus = fcmp reassoc nsz arcp contract afn olt float %i.hun, 0.000000e+00
  br i1 %i.hus, label %bb.dr, label %bb.ds

._crit_edge2170.unr-lcssa:                        ; preds = %.preheader1898.new
  br i1 %lcmp.mod4396.not, label %._crit_edge2170, label %.epil.preheader4391

.epil.preheader4391:                              ; preds = %._crit_edge2170.unr-lcssa, %.preheader1898
  %indvars.iv2704.epil.init = phi i64 [ 0, %.preheader1898 ], [ %indvars.iv.next2705.1, %._crit_edge2170.unr-lcssa ]
  %.016242167.epil.init = phi float [ %.016262191, %.preheader1898 ], [ %.reass4488, %._crit_edge2170.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.huc, %.preheader1898 ], [ %i.hxq, %._crit_edge2170.unr-lcssa ]
  %.epil.init4395 = phi <2 x float> [ %i.hud, %.preheader1898 ], [ %i.hxg, %._crit_edge2170.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4401)
  %i.hut = fpext reassoc nsz arcp contract afn float %.016242167.epil.init to double
  %i.huu = add nuw nsw i64 %indvars.iv2704.epil.init, %i.hue ; 4 uses
  %i.huv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.huu
  %i.huw = load double, ptr %i.huv, align 8, !tbaa !132
  %i.hux = fpext <2 x float> %.epil.init4395 to <2 x double>
  %i.huy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.huu
  %i.huz = load double, ptr %i.huy, align 8, !tbaa !132
  %i.hva = insertelement <2 x double> poison, double %i.huw, i64 0
  %i.hvb = insertelement <2 x double> %i.hva, double %i.huz, i64 1
  %i.hvc = insertelement <2 x double> poison, double %i.hut, i64 0
  %i.hvd = shufflevector <2 x double> %i.hvc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hve = fmul reassoc nsz arcp contract afn <2 x double> %i.hvb, %i.hvd
  %i.hvf = fadd reassoc nsz arcp contract afn <2 x double> %i.hve, %i.hux ; 2 uses
  %i.hvg = fptrunc <2 x double> %i.hvf to <2 x float>
  %i.hvh = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.huu
  %i.hvi = load double, ptr %i.hvh, align 8, !tbaa !132
  %i.hvj = fpext <2 x float> %.epil.init to <2 x double>
  %i.hvk = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.huu
  %i.hvl = load double, ptr %i.hvk, align 8, !tbaa !132
  %i.hvm = insertelement <2 x double> poison, double %i.hvi, i64 0
  %i.hvn = insertelement <2 x double> %i.hvm, double %i.hvl, i64 1
  %i.hvo = fmul reassoc nsz arcp contract afn <2 x double> %i.hvn, %i.hvd
  %i.hvp = fadd reassoc nsz arcp contract afn <2 x double> %i.hvo, %i.hvj ; 2 uses
  %i.hvq = fptrunc <2 x double> %i.hvp to <2 x float>
  br label %._crit_edge2170

._crit_edge2170:                                  ; preds = %._crit_edge2170.unr-lcssa, %.epil.preheader4391
  %.lcssa4197 = phi <2 x double> [ %i.hxf, %._crit_edge2170.unr-lcssa ], [ %i.hvf, %.epil.preheader4391 ]
  %.lcssa4196 = phi <2 x float> [ %i.hxg, %._crit_edge2170.unr-lcssa ], [ %i.hvg, %.epil.preheader4391 ] ; 3 uses
  %.lcssa4195 = phi <2 x double> [ %i.hxp, %._crit_edge2170.unr-lcssa ], [ %i.hvp, %.epil.preheader4391 ]
  %.lcssa4194 = phi <2 x float> [ %i.hxq, %._crit_edge2170.unr-lcssa ], [ %i.hvq, %.epil.preheader4391 ] ; 3 uses
  %i.hvr = fmul reassoc nsz arcp contract afn float %.016262191, %i.fxy
  %indvars.iv.next2710 = add nuw nsw i64 %indvars.iv2709, 1 ; 2 uses
  %exitcond2713.not = icmp eq i64 %indvars.iv.next2710, %i.fxa
  br i1 %exitcond2713.not, label %._crit_edge2193, label %.preheader1898

.preheader1898.new:                               ; preds = %.preheader1898, %.preheader1898.new
  %indvars.iv2704 = phi i64 [ %indvars.iv.next2705.1, %.preheader1898.new ], [ 0, %.preheader1898 ] ; 3 uses
  %.016242167 = phi float [ %.reass4488, %.preheader1898.new ], [ %.016262191, %.preheader1898 ] ; 3 uses
  %i.hvs = phi <2 x float> [ %i.hxq, %.preheader1898.new ], [ %i.huc, %.preheader1898 ]
  %i.hvt = phi <2 x float> [ %i.hxg, %.preheader1898.new ], [ %i.hud, %.preheader1898 ]
  %niter4403 = phi i64 [ %niter4403.next.1, %.preheader1898.new ], [ 0, %.preheader1898 ]
  %i.hvu = fpext reassoc nsz arcp contract afn float %.016242167 to double
  %i.hvv = add nuw nsw i64 %indvars.iv2704, %i.hue ; 4 uses
  %i.hvw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hvv
  %i.hvx = load double, ptr %i.hvw, align 8, !tbaa !132
  %i.hvy = fpext <2 x float> %i.hvt to <2 x double>
  %i.hvz = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.hvv
  %i.hwa = load double, ptr %i.hvz, align 8, !tbaa !132
  %i.hwb = insertelement <2 x double> poison, double %i.hvx, i64 0
  %i.hwc = insertelement <2 x double> %i.hwb, double %i.hwa, i64 1
  %i.hwd = insertelement <2 x double> poison, double %i.hvu, i64 0
  %i.hwe = shufflevector <2 x double> %i.hwd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hwf = fmul reassoc nsz arcp contract afn <2 x double> %i.hwc, %i.hwe
  %i.hwg = fadd reassoc nsz arcp contract afn <2 x double> %i.hwf, %i.hvy
  %i.hwh = fptrunc <2 x double> %i.hwg to <2 x float>
  %i.hwi = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.hvv
  %i.hwj = load double, ptr %i.hwi, align 8, !tbaa !132
  %i.hwk = fpext <2 x float> %i.hvs to <2 x double>
  %i.hwl = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hvv
  %i.hwm = load double, ptr %i.hwl, align 8, !tbaa !132
  %i.hwn = insertelement <2 x double> poison, double %i.hwj, i64 0
  %i.hwo = insertelement <2 x double> %i.hwn, double %i.hwm, i64 1
  %i.hwp = fmul reassoc nsz arcp contract afn <2 x double> %i.hwo, %i.hwe
  %i.hwq = fadd reassoc nsz arcp contract afn <2 x double> %i.hwp, %i.hwk
  %i.hwr = fptrunc <2 x double> %i.hwq to <2 x float>
  %i.hws = fmul reassoc nsz arcp contract afn float %.016242167, %i.hub
  %indvars.iv.next2705 = or disjoint i64 %indvars.iv2704, 1
  %i.hwt = fpext reassoc nsz arcp contract afn float %i.hws to double
  %i.hwu = add nuw nsw i64 %indvars.iv.next2705, %i.hue ; 4 uses
  %i.hwv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hwu
  %i.hww = load double, ptr %i.hwv, align 8, !tbaa !132
  %i.hwx = fpext <2 x float> %i.hwh to <2 x double>
  %i.hwy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.hwu
  %i.hwz = load double, ptr %i.hwy, align 8, !tbaa !132
  %i.hxa = insertelement <2 x double> poison, double %i.hww, i64 0
  %i.hxb = insertelement <2 x double> %i.hxa, double %i.hwz, i64 1
  %i.hxc = insertelement <2 x double> poison, double %i.hwt, i64 0
  %i.hxd = shufflevector <2 x double> %i.hxc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hxe = fmul reassoc nsz arcp contract afn <2 x double> %i.hxb, %i.hxd
  %i.hxf = fadd reassoc nsz arcp contract afn <2 x double> %i.hxe, %i.hwx ; 2 uses
  %i.hxg = fptrunc <2 x double> %i.hxf to <2 x float> ; 3 uses
  %i.hxh = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.hwu
  %i.hxi = load double, ptr %i.hxh, align 8, !tbaa !132
  %i.hxj = fpext <2 x float> %i.hwr to <2 x double>
  %i.hxk = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hwu
  %i.hxl = load double, ptr %i.hxk, align 8, !tbaa !132
  %i.hxm = insertelement <2 x double> poison, double %i.hxi, i64 0
  %i.hxn = insertelement <2 x double> %i.hxm, double %i.hxl, i64 1
  %i.hxo = fmul reassoc nsz arcp contract afn <2 x double> %i.hxn, %i.hxd
  %i.hxp = fadd reassoc nsz arcp contract afn <2 x double> %i.hxo, %i.hxj ; 2 uses
  %i.hxq = fptrunc <2 x double> %i.hxp to <2 x float> ; 3 uses
  %.reass4488 = fmul reassoc nsz arcp contract afn float %.016242167, %invariant.op4487 ; 2 uses
  %indvars.iv.next2705.1 = add nuw nsw i64 %indvars.iv2704, 2 ; 2 uses
  %niter4403.next.1 = add i64 %niter4403, 2       ; 2 uses
  %niter4403.ncmp.1 = icmp eq i64 %niter4403.next.1, %unroll_iter4402
  br i1 %niter4403.ncmp.1, label %._crit_edge2170.unr-lcssa, label %.preheader1898.new

.lr.ph2208:                                       ; preds = %.preheader1920
  %i.hxr = add nsw i32 %i.fyp, -4                 ; 2 uses
  %i.hxs = zext nneg i32 %i.hxr to i64
  br label %bb.dy

bb.dr:                                            ; preds = %._crit_edge2193
  store i32 %i.hur, ptr %i.e, align 4, !tbaa !16
  store i32 %i.hup, ptr %i.g, align 4, !tbaa !16
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge2193
  %i.hxt = phi i32 [ %i.hur, %bb.dr ], [ %i.hup, %._crit_edge2193 ]
  %i.hxu = sitofp reassoc nsz arcp contract afn i32 %i.hxt to float
  %i.hxv = fsub reassoc nsz arcp contract afn float %i.hun, %i.hxu
  %i.hxw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hxv) ; 2 uses
  store float %i.hxw, ptr %i.j, align 4, !tbaa !58
  %i.hxx = extractelement <2 x float> %i.hui, i64 1 ; 4 uses
  %i.hxy = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hxx)
  %i.hxz = fptosi float %i.hxy to i32             ; 3 uses
  store i32 %i.hxz, ptr %i.d, align 4, !tbaa !16
  %i.hya = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hxx)
  %i.hyb = fptosi float %i.hya to i32             ; 3 uses
  store i32 %i.hyb, ptr %i.f, align 4, !tbaa !16
  %i.hyc = fcmp reassoc nsz arcp contract afn olt float %i.hxx, 0.000000e+00
  br i1 %i.hyc, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 %i.hyb, ptr %i.d, align 4, !tbaa !16
  store i32 %i.hxz, ptr %i.f, align 4, !tbaa !16
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.hyd = phi i32 [ %i.hyb, %bb.dt ], [ %i.hxz, %bb.ds ]
  %i.hye = sitofp reassoc nsz arcp contract afn i32 %i.hyd to float
  %i.hyf = fsub reassoc nsz arcp contract afn float %i.hxx, %i.hye
  %i.hyg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyf) ; 2 uses
  store float %i.hyg, ptr %i.i, align 4, !tbaa !58
  %i.hyh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hui, zeroinitializer
  %i.hyi = select <2 x i1> %i.hyh, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hyj = shufflevector <2 x i32> %i.hyi, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hyj, ptr align 16 %i.c, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !16
  %i.hyk = extractelement <2 x float> %i.hum, i64 0 ; 4 uses
  %i.hyl = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hyk)
  %i.hym = fptosi float %i.hyl to i32             ; 3 uses
  store i32 %i.hym, ptr %i.hn, align 4, !tbaa !16
  %i.hyn = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hyk)
  %i.hyo = fptosi float %i.hyn to i32             ; 3 uses
  store i32 %i.hyo, ptr %i.ho, align 4, !tbaa !16
  %i.hyp = fcmp reassoc nsz arcp contract afn olt float %i.hyk, 0.000000e+00
  br i1 %i.hyp, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %i.hyo, ptr %i.hn, align 4, !tbaa !16
  store i32 %i.hym, ptr %i.ho, align 4, !tbaa !16
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.hyq = phi i32 [ %i.hyo, %bb.dv ], [ %i.hym, %bb.du ]
  %i.hyr = sitofp reassoc nsz arcp contract afn i32 %i.hyq to float
  %i.hys = fsub reassoc nsz arcp contract afn float %i.hyk, %i.hyr
  %i.hyt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hys) ; 2 uses
  store float %i.hyt, ptr %i.fv, align 4, !tbaa !58
  %i.hyu = extractelement <2 x float> %i.hum, i64 1 ; 4 uses
  %i.hyv = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hyu)
  %i.hyw = fptosi float %i.hyv to i32             ; 3 uses
  store i32 %i.hyw, ptr %i.hp, align 4, !tbaa !16
  %i.hyx = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hyu)
  %i.hyy = fptosi float %i.hyx to i32             ; 3 uses
  store i32 %i.hyy, ptr %i.hq, align 4, !tbaa !16
  %i.hyz = fcmp reassoc nsz arcp contract afn olt float %i.hyu, 0.000000e+00
  br i1 %i.hyz, label %bb.dx, label %.preheader1920

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.hyy, ptr %i.hp, align 4, !tbaa !16
  store i32 %i.hyw, ptr %i.hq, align 4, !tbaa !16
  br label %.preheader1920

.preheader1920:                                   ; preds = %bb.dx, %bb.dw
  %i.hza = phi i32 [ %i.hyy, %bb.dx ], [ %i.hyw, %bb.dw ]
  %i.hzb = sitofp reassoc nsz arcp contract afn i32 %i.hza to float
  %i.hzc = fsub reassoc nsz arcp contract afn float %i.hyu, %i.hzb
  %i.hzd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hzc) ; 2 uses
  store float %i.hzd, ptr %i.fu, align 4, !tbaa !58
  %i.hze = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hum, zeroinitializer
  %i.hzf = select <2 x i1> %i.hze, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hzg = shufflevector <2 x i32> %i.hzf, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hzg, ptr align 8 %i.hr, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !16
  br i1 %i.fya, label %.lr.ph2208, label %._crit_edge2209

._crit_edge2209:                                  ; preds = %._crit_edge2206, %.preheader1920
  %i.hzh = fmul reassoc nsz arcp contract afn float %i.hyg, 5.000000e-01
  store float %i.hzh, ptr %i.i, align 4, !tbaa !58
  %i.hzi = fmul reassoc nsz arcp contract afn float %i.hzd, 5.000000e-01
  store float %i.hzi, ptr %i.fu, align 4, !tbaa !58
  %i.hzj = fmul reassoc nsz arcp contract afn float %i.hxw, 5.000000e-01
  store float %i.hzj, ptr %i.j, align 4, !tbaa !58
  %i.hzk = fmul reassoc nsz arcp contract afn float %i.hyt, 5.000000e-01
  store float %i.hzk, ptr %i.fv, align 4, !tbaa !58
  br i1 %i.fyc, label %.lr.ph2217, label %._crit_edge2226

.lr.ph2217:                                       ; preds = %._crit_edge2209
  %i.hzl = add nsw i32 %i.fyp, -8                 ; 2 uses
  br label %bb.ea

bb.dy:                                            ; preds = %.lr.ph2208, %._crit_edge2206
  %indvars.iv2720 = phi i64 [ 4, %.lr.ph2208 ], [ %indvars.iv.next2721, %._crit_edge2206 ] ; 4 uses
  %indvars.iv2720.tr = trunc nuw i64 %indvars.iv2720 to i32
  %i.hzm = shl nuw i32 %indvars.iv2720.tr, 1
  %i.hzn = and i32 %i.hzm, 14                     ; 2 uses
  %i.hzo = shl nuw nsw i32 %i.hzn, 1
  %i.hzp = lshr i32 %i.q, %i.hzo                  ; 2 uses
  %i.hzq = and i32 %i.hzp, 1                      ; 2 uses
  %i.hzr = or disjoint i32 %i.hzq, 4
  %i.hzs = icmp slt i32 %i.hzr, %i.hxr
  br i1 %i.hzs, label %.lr.ph2205, label %._crit_edge2206

.lr.ph2205:                                       ; preds = %bb.dy
  %i.hzt = or disjoint i32 %i.hzq, %i.hzn
  %i.hzu = shl nuw nsw i32 %i.hzt, 1
  %i.hzv = lshr i32 %i.q, %i.hzu
  %i.hzw = and i32 %i.hzv, 3
  %i.hzx = zext nneg i32 %i.hzw to i64            ; 7 uses
  %i.hzy = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.hzx
  %i.hzz = load float, ptr %i.hzy, align 4, !tbaa !58 ; 2 uses
  %i.iaa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hzx
  %i.iab = load i32, ptr %i.iaa, align 4, !tbaa !16
  %i.iac = trunc nuw nsw i64 %indvars.iv2720 to i32 ; 2 uses
  %i.iad = add nsw i32 %i.iab, %i.iac
  %i.iae = shl nsw i32 %i.iad, 7
  %i.iaf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hzx
  %i.iag = load i32, ptr %i.iaf, align 4, !tbaa !16
  %i.iah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hzx
  %i.iai = load i32, ptr %i.iah, align 4, !tbaa !16
  %i.iaj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hzx
  %i.iak = load i32, ptr %i.iaj, align 4, !tbaa !16
  %i.ial = add nsw i32 %i.iak, %i.iac
  %i.iam = shl nsw i32 %i.ial, 7
  %i.ian = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.hzx
  %i.iao = load float, ptr %i.ian, align 4, !tbaa !58
  %i.iap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hzx
  %i.iaq = load ptr, ptr %i.iap, align 8, !tbaa !59
  %i.iar = shl nuw nsw i64 %indvars.iv2720, 7
  %i.ias = and i32 %i.hzp, 1
  %i.iat = or disjoint i32 %i.ias, 4
  %i.iau = zext nneg i32 %i.iat to i64
  %i.iav = sext i32 %i.iae to i64
  %i.iaw = sext i32 %i.iag to i64                 ; 2 uses
  %i.iax = sext i32 %i.iai to i64                 ; 2 uses
  %i.iay = sext i32 %i.iam to i64
  %invariant.gep2984 = getelementptr [4 x i8], ptr %i.bts, i64 %i.iaw
  %invariant.gep2986 = getelementptr [4 x i8], ptr %i.bts, i64 %i.iax
  %invariant.gep2988 = getelementptr [4 x i8], ptr %i.bts, i64 %i.iaw
  %invariant.gep2990 = getelementptr [4 x i8], ptr %i.bts, i64 %i.iax
  br label %bb.dz

._crit_edge2206:                                  ; preds = %bb.dz, %bb.dy
  %indvars.iv.next2721 = add nuw nsw i64 %indvars.iv2720, 1 ; 2 uses
  %i.iaz = icmp slt i64 %indvars.iv.next2721, %i.fyg
  br i1 %i.iaz, label %bb.dy, label %._crit_edge2209

bb.dz:                                            ; preds = %.lr.ph2205, %bb.dz
  %indvars.iv2717 = phi i64 [ %i.iau, %.lr.ph2205 ], [ %indvars.iv.next2718, %bb.dz ] ; 4 uses
  %i.iba = add nsw i64 %indvars.iv2717, %i.iav    ; 2 uses
  %gep2985 = getelementptr [4 x i8], ptr %invariant.gep2984, i64 %i.iba
  %i.ibb = load float, ptr %gep2985, align 4, !tbaa !58
  %gep2987 = getelementptr [4 x i8], ptr %invariant.gep2986, i64 %i.iba
  %i.ibc = load float, ptr %gep2987, align 4, !tbaa !58 ; 2 uses
  %i.ibd = fsub reassoc nsz arcp contract afn float %i.ibb, %i.ibc
  %i.ibe = fmul reassoc nsz arcp contract afn float %i.ibd, %i.hzz
  %i.ibf = fadd reassoc nsz arcp contract afn float %i.ibe, %i.ibc ; 2 uses
  %i.ibg = add nsw i64 %indvars.iv2717, %i.iay    ; 2 uses
  %gep2989 = getelementptr [4 x i8], ptr %invariant.gep2988, i64 %i.ibg
  %i.ibh = load float, ptr %gep2989, align 4, !tbaa !58
  %gep2991 = getelementptr [4 x i8], ptr %invariant.gep2990, i64 %i.ibg
  %i.ibi = load float, ptr %gep2991, align 4, !tbaa !58 ; 2 uses
  %i.ibj = fsub reassoc nsz arcp contract afn float %i.ibh, %i.ibi
  %i.ibk = fmul reassoc nsz arcp contract afn float %i.ibj, %i.hzz
  %i.ibl = fadd reassoc nsz arcp contract afn float %i.ibi, %i.ibk
  %i.ibm = fsub reassoc nsz arcp contract afn float %i.ibl, %i.ibf
  %i.ibn = fmul reassoc nsz arcp contract afn float %i.ibm, %i.iao
  %i.ibo = fadd reassoc nsz arcp contract afn float %i.ibn, %i.ibf ; 2 uses
  %i.ibp = add nuw nsw i64 %indvars.iv2717, %i.iar ; 2 uses
  %i.ibq = getelementptr inbounds nuw [4 x i8], ptr %i.iaq, i64 %i.ibp
  %i.ibr = load float, ptr %i.ibq, align 4, !tbaa !58
  %i.ibs = fsub reassoc nsz arcp contract afn float %i.ibo, %i.ibr
  %i.ibt = lshr i64 %i.ibp, 1
  %i.ibu = and i64 %i.ibt, 2147483647             ; 2 uses
  %i.ibv = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.ibu
  store float %i.ibs, ptr %i.ibv, align 4, !tbaa !58
  %i.ibw = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.ibu
  store float %i.ibo, ptr %i.ibw, align 4, !tbaa !58
  %indvars.iv.next2718 = add nuw nsw i64 %indvars.iv2717, 2 ; 2 uses
  %i.ibx = icmp samesign ult i64 %indvars.iv.next2718, %i.hxs
  br i1 %i.ibx, label %bb.dz, label %._crit_edge2206

.lr.ph2225:                                       ; preds = %._crit_edge2214
  %i.iby = add nsw i32 %i.fyp, -8                 ; 2 uses
  %i.ibz = zext i32 %i.iby to i64                 ; 3 uses
  br label %bb.ei

bb.ea:                                            ; preds = %.lr.ph2217, %._crit_edge2214
  %indvars.iv2723 = phi i32 [ 1032, %.lr.ph2217 ], [ %indvars.iv.next2724, %._crit_edge2214 ] ; 2 uses
  %.016192215 = phi i32 [ 8, %.lr.ph2217 ], [ %i.ida, %._crit_edge2214 ] ; 3 uses
  %i.ica = shl nuw i32 %.016192215, 1
  %i.icb = and i32 %i.ica, 14                     ; 2 uses
  %i.icc = shl nuw nsw i32 %i.icb, 1
  %i.icd = lshr i32 %i.q, %i.icc
  %i.ice = and i32 %i.icd, 1                      ; 3 uses
  %i.icf = or disjoint i32 %i.ice, 8              ; 2 uses
  %i.icg = icmp slt i32 %i.icf, %i.hzl
  br i1 %i.icg, label %.lr.ph2213, label %._crit_edge2214

.lr.ph2213:                                       ; preds = %bb.ea
  %i.ich = or disjoint i32 %i.ice, %i.icb
  %i.ici = shl nuw nsw i32 %i.ich, 1
  %i.icj = lshr i32 %i.q, %i.ici
  %i.ick = and i32 %i.icj, 3
  %i.icl = zext nneg i32 %i.ick to i64            ; 5 uses
  %i.icm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.icl
  %i.icn = load ptr, ptr %i.icm, align 8, !tbaa !59
  %i.ico = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.icl
  %i.icp = load float, ptr %i.ico, align 4, !tbaa !58 ; 2 uses
  %i.icq = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.icl
  %i.icr = load i32, ptr %i.icq, align 4, !tbaa !16 ; 2 uses
  %i.ics = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.icl
  %i.ict = load i32, ptr %i.ics, align 4, !tbaa !16
  %i.icu = sub nsw i32 %.016192215, %i.ict
  %i.icv = shl nsw i32 %i.icu, 7
  %i.icw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.icl
  %i.icx = load float, ptr %i.icw, align 4, !tbaa !58
  %i.icy = or disjoint i32 %indvars.iv2723, %i.ice
  %i.icz = zext i32 %i.icy to i64
  br label %bb.eb

._crit_edge2214:                                  ; preds = %bb.eh, %bb.ea
  %i.ida = add nuw nsw i32 %.016192215, 1         ; 2 uses
  %i.idb = icmp slt i32 %i.ida, %i.fyb
  %indvars.iv.next2724 = add i32 %indvars.iv2723, 128
  br i1 %i.idb, label %bb.ea, label %.lr.ph2225

bb.eb:                                            ; preds = %.lr.ph2213, %bb.eh
  %indvars.iv2725 = phi i64 [ %i.icz, %.lr.ph2213 ], [ %indvars.iv.next2726, %bb.eh ] ; 5 uses
  %.016182210 = phi i32 [ %i.icf, %.lr.ph2213 ], [ %i.igc, %bb.eh ] ; 2 uses
  %i.idc = getelementptr inbounds nuw [4 x i8], ptr %i.bts, i64 %indvars.iv2725 ; 2 uses
  %i.idd = load float, ptr %i.idc, align 4, !tbaa !58 ; 4 uses
  %i.ide = getelementptr inbounds nuw [4 x i8], ptr %i.icn, i64 %indvars.iv2725 ; 3 uses
  %i.idf = load float, ptr %i.ide, align 4, !tbaa !58 ; 3 uses
  %i.idg = fsub reassoc nsz arcp contract afn float %i.idd, %i.idf ; 4 uses
  %i.idh = trunc nuw i64 %indvars.iv2725 to i32
  %i.idi = sub nsw i32 %i.idh, %i.icr
  %i.idj = ashr i32 %i.idi, 1
  %i.idk = sext i32 %i.idj to i64                 ; 2 uses
  %i.idl = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.idk
  %i.idm = load float, ptr %i.idl, align 4, !tbaa !58 ; 2 uses
  %i.idn = lshr i64 %indvars.iv2725, 1            ; 2 uses
  %i.ido = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.idn
  %i.idp = load float, ptr %i.ido, align 4, !tbaa !58 ; 3 uses
  %i.idq = fsub reassoc nsz arcp contract afn float %i.idm, %i.idp
  %i.idr = fmul reassoc nsz arcp contract afn float %i.idq, %i.icp
  %i.ids = fadd reassoc nsz arcp contract afn float %i.idr, %i.idp ; 2 uses
  %i.idt = add nsw i32 %i.icv, %.016182210        ; 2 uses
  %i.idu = sub nsw i32 %i.idt, %i.icr
  %i.idv = ashr i32 %i.idu, 1
  %i.idw = sext i32 %i.idv to i64                 ; 2 uses
  %i.idx = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.idw
  %i.idy = load float, ptr %i.idx, align 4, !tbaa !58 ; 2 uses
  %i.idz = ashr i32 %i.idt, 1
  %i.iea = sext i32 %i.idz to i64                 ; 2 uses
  %i.ieb = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.iea
  %i.iec = load float, ptr %i.ieb, align 4, !tbaa !58 ; 3 uses
  %i.ied = fsub reassoc nsz arcp contract afn float %i.idy, %i.iec
  %i.iee = fmul reassoc nsz arcp contract afn float %i.ied, %i.icp
  %i.ief = fadd reassoc nsz arcp contract afn float %i.iec, %i.iee
  %i.ieg = fsub reassoc nsz arcp contract afn float %i.ief, %i.ids
  %i.ieh = fmul reassoc nsz arcp contract afn float %i.ieg, %i.icx
  %i.iei = fadd reassoc nsz arcp contract afn float %i.ieh, %i.ids ; 4 uses
  %i.iej = fsub reassoc nsz arcp contract afn float %i.idd, %i.iei ; 3 uses
  %i.iek = fsub reassoc nsz arcp contract afn float %i.iej, %i.idf
  %i.iel = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iek)
  %i.iem = fadd reassoc nsz arcp contract afn float %i.iej, %i.idf
  %i.ien = fmul reassoc nsz arcp contract afn float %i.iem, 2.500000e-01
  %i.ieo = fcmp reassoc nsz arcp contract afn olt float %i.iel, %i.ien
  br i1 %i.ieo, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.iep = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.idg)
  %i.ieq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iei)
  %i.ier = fcmp reassoc nsz arcp contract afn ogt float %i.iep, %i.ieq
  br i1 %i.ier, label %.sink.split, label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.ies = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.idn
  %i.iet = load float, ptr %i.ies, align 4, !tbaa !58
  %i.ieu = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.idk
  %i.iev = load float, ptr %i.ieu, align 4, !tbaa !58
  %i.iew = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.iea
  %i.iex = load float, ptr %i.iew, align 4, !tbaa !58
  %i.iey = getelementptr inbounds [4 x i8], ptr %i.btv, i64 %i.idw
  %i.iez = load float, ptr %i.iey, align 4, !tbaa !58
  %i.ifa = insertelement <4 x float> poison, float %i.idd, i64 0
  %i.ifb = shufflevector <4 x float> %i.ifa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ifc = insertelement <4 x float> poison, float %i.iet, i64 0
  %i.ifd = insertelement <4 x float> %i.ifc, float %i.iev, i64 1
  %i.ife = insertelement <4 x float> %i.ifd, float %i.iex, i64 2
  %i.iff = insertelement <4 x float> %i.ife, float %i.iez, i64 3
  %i.ifg = fsub reassoc nsz arcp contract afn <4 x float> %i.ifb, %i.iff
  %i.ifh = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ifg)
  %i.ifi = fadd reassoc nsz arcp contract afn <4 x float> %i.ifh, splat (float f0x3727C5AC)
end_hunk_3
