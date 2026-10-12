Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrect?download=true
inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %i.brc = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.brb
  %i.brd = zext nneg i32 %i.bqz to i64
  %i.bre = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.brd
  %i.brf = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.brb
  %i.brg = lshr i32 %i.q, 28
  %i.brh = and i32 %i.brg, 3
  %i.bri = add i32 %i.hj, -2
  %i.brj = sext i32 %i.bri to i64                 ; 2 uses
  %i.brk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.brj
  %i.brl = zext nneg i32 %i.brh to i64
  %i.brm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.brl
  %i.brn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.brj
  %i.bro = lshr i32 %i.q, 30
  %i.brp = add i32 %i.hj, -3
  %i.brq = sext i32 %i.brp to i64                 ; 2 uses
  %i.brr = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.brq
  %i.brs = zext nneg i32 %i.bro to i64
  %i.brt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.brs
  %i.bru = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.brq
  %i.brv = lshr i32 %i.q, 28
  %i.brw = and i32 %i.brv, 3
  %i.brx = add i32 %i.hj, -4
  %i.bry = sext i32 %i.brx to i64                 ; 2 uses
  %i.brz = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bry
  %i.bsa = zext nneg i32 %i.brw to i64
  %i.bsb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bsa
  %i.bsc = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.bry
  %i.bsd = lshr i32 %i.q, 30
  %i.bse = add i32 %i.hj, -5
  %i.bsf = sext i32 %i.bse to i64                 ; 2 uses
  %i.bsg = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bsf
  %i.bsh = zext nneg i32 %i.bsd to i64
  %i.bsi = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bsh
  %i.bsj = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.bsf
  %i.bsk = lshr i32 %i.q, 28
  %i.bsl = and i32 %i.bsk, 3
  %i.bsm = add i32 %i.hj, -6
  %i.bsn = sext i32 %i.bsm to i64                 ; 2 uses
  %i.bso = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bsn
  %i.bsp = zext nneg i32 %i.bsl to i64
  %i.bsq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bsp
  %i.bsr = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.bsn
  %i.bss = lshr i32 %i.q, 30
  %i.bst = add i32 %i.hj, -7
  %i.bsu = sext i32 %i.bst to i64                 ; 2 uses
  %i.bsv = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bsu
  %i.bsw = zext nneg i32 %i.bss to i64
  %i.bsx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bsw
  %i.bsy = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.bsu
  br label %bb.o

._crit_edge2244.loopexit:                         ; preds = %.thread1866
  %i.bsz = and i1 %i.y, %i.ika
  br i1 %i.bsz, label %.preheader1893, label %bb.eq

._crit_edge2244:                                  ; preds = %dt_calloc_align_float.exit1815
  br i1 %i.y, label %.preheader1893, label %bb.eq

.preheader1893:                                   ; preds = %._crit_edge2244.loopexit, %._crit_edge2244
  %i.bta = icmp sgt i32 %i.ah, 0                  ; 2 uses
  br i1 %i.bta, label %.lr.ph2250.preheader, label %._crit_edge2251

.lr.ph2250.preheader:                             ; preds = %.preheader1893
  %wide.trip.count2764 = zext nneg i32 %i.ah to i64
  %i.btb = shl nsw i64 %i.ao, 2
  %i.btc = shl nsw i64 %i.af, 2
  br label %.lr.ph2250

bb.o:                                             ; preds = %.lr.ph2243, %.thread1866
  %.sroa.7.0 = phi nsz float [ 0.000000e+00, %.lr.ph2243 ], [ %.sroa.9.0, %.thread1866 ] ; 2 uses
  %.sroa.102810.0 = phi nsz float [ 0.000000e+00, %.lr.ph2243 ], [ %.sroa.12.0, %.thread1866 ] ; 2 uses
  %.016992241 = phi i32 [ 4, %.lr.ph2243 ], [ %.217011872, %.thread1866 ] ; 9 uses
  %.017022239 = phi i32 [ 16, %.lr.ph2243 ], [ %.217041871, %.thread1866 ] ; 5 uses
  %.017082238 = phi i32 [ 0, %.lr.ph2243 ], [ %i.ikb, %.thread1866 ]
  %i.btd = phi <8 x float> [ zeroinitializer, %.lr.ph2243 ], [ %i.bua, %.thread1866 ] ; 2 uses
  %i.bte = phi <2 x float> [ zeroinitializer, %.lr.ph2243 ], [ %i.bub, %.thread1866 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.btf = tail call ptr @dt_alloc_aligned(i64 noundef 393216) #20 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.btf, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store ptr %i.btf, ptr %i.k, align 16, !tbaa !171
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 65536 ; 178 uses
  store ptr %i.btg, ptr %i.em, align 8, !tbaa !171
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btf, i64 131072
  store ptr %i.bth, ptr %i.en, align 16, !tbaa !171
  %i.bti = getelementptr inbounds nuw i8, ptr %i.btf, i64 196608 ; 12 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %i.btf, i64 229376 ; 12 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btf, i64 262144 ; 5 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btf, i64 294912 ; 5 uses
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btf, i64 327680 ; 5 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btf, i64 360448 ; 5 uses
  br i1 %brmerge2271, label %.preheader1975, label %.preheader1968.preheader

.preheader1968.preheader:                         ; preds = %bb.o
  %i.bto = ptrtoaddr ptr %i.btf to i64
  %i.btp = sub i64 %i.pr, %i.bto
  %scevgep3840 = getelementptr i8, ptr %i.btf, i64 64000
  %scevgep3842 = getelementptr i8, ptr %i.btf, i64 67076
  br label %.preheader1968

.preheader1975.loopexit:                          ; preds = %._crit_edge2081
  %i.btq = fadd reassoc nsz arcp contract afn <2 x float> %i.bte, %i.esy
  %i.btr = fadd reassoc nsz arcp contract afn float %.sroa.7.0, %.sroa.9.3
  %i.bts = fadd reassoc nsz arcp contract afn float %.sroa.102810.0, %.sroa.12.3
  %i.btt = insertelement <8 x float> poison, float %.sroa.122802.3, i64 4
  %i.btu = insertelement <8 x float> %i.btt, float %.sroa.122794.3, i64 5
  %i.btv = shufflevector <2 x float> %i.eta, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.btw = shufflevector <8 x float> %i.btu, <8 x float> %i.btv, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 8, i32 9>
  %i.btx = shufflevector <4 x float> %i.esz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bty = shufflevector <8 x float> %i.btx, <8 x float> %i.btw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.btz = fadd reassoc nsz arcp contract afn <8 x float> %i.btd, %i.bty
  br label %.preheader1975

.preheader1975:                                   ; preds = %.preheader1975.loopexit, %bb.o
  %.sroa.9.0 = phi float [ %.sroa.7.0, %bb.o ], [ %i.btr, %.preheader1975.loopexit ] ; 4 uses
  %.sroa.12.0 = phi float [ %.sroa.102810.0, %bb.o ], [ %i.bts, %.preheader1975.loopexit ] ; 4 uses
  %i.bua = phi <8 x float> [ %i.btd, %bb.o ], [ %i.btz, %.preheader1975.loopexit ] ; 9 uses
  %i.bub = phi <2 x float> [ %i.bte, %bb.o ], [ %i.btq, %.preheader1975.loopexit ] ; 3 uses
  %i.buc = extractelement <8 x float> %i.bua, i64 6 ; 3 uses
  %i.bud = fcmp reassoc nsz arcp contract afn une float %i.buc, 0.000000e+00
  br i1 %i.bud, label %bb.ak, label %bb.al

.preheader1968:                                   ; preds = %.preheader1968.preheader, %._crit_edge2081
  %indvar3800 = phi i64 [ 0, %.preheader1968.preheader ], [ %indvar.next3801, %._crit_edge2081 ] ; 2 uses
  %.sroa.122802.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.122802.3, %._crit_edge2081 ]
  %.sroa.122794.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.122794.3, %._crit_edge2081 ]
  %.sroa.9.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.9.3, %._crit_edge2081 ]
  %.sroa.12.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.12.3, %._crit_edge2081 ]
  %indvars.iv2498 = phi i64 [ -8, %.preheader1968.preheader ], [ %indvars.iv.next2499, %._crit_edge2081 ] ; 9 uses
  %i.bue = phi <4 x float> [ zeroinitializer, %.preheader1968.preheader ], [ %i.esz, %._crit_edge2081 ]
  %i.buf = phi <2 x float> [ zeroinitializer, %.preheader1968.preheader ], [ %i.eta, %._crit_edge2081 ]
  %i.bug = phi <2 x float> [ zeroinitializer, %.preheader1968.preheader ], [ %i.esy, %._crit_edge2081 ]
  %i.buh = mul i64 %i.ps, %indvar3800
  %i.bui = add i64 %i.btp, %i.buh
  %i.buj = add nsw i64 %indvars.iv2498, 8
  %i.buk = udiv i64 %i.buj, 112
  %i.bul = add nuw nsw i64 %i.buk, 1
  %i.bum = add nsw i64 %indvars.iv2498, 128       ; 2 uses
  %i.bun = trunc nuw nsw i64 %i.bum to i32
  %i.buo = tail call i32 @llvm.smin.i32(i32 %i.bun, i32 %i.eq)
  %i.bup = trunc nsw i64 %indvars.iv2498 to i32   ; 2 uses
  %i.buq = sub nsw i32 %i.buo, %i.bup             ; 9 uses
  %i.bur = icmp sgt i64 %indvars.iv2498, -1       ; 3 uses
  %i.bus = select i1 %i.bur, i32 0, i32 8         ; 2 uses
  %i.but = icmp sgt i64 %i.bum, %i.bk
  %i.buu = trunc i64 %indvars.iv2498 to i32
  %i.buv = sub i32 %i.ah, %i.buu
  %i.buw = select i1 %i.but, i32 %i.buv, i32 %i.buq ; 7 uses
  %i.bux = icmp slt i32 %i.bus, %i.buw            ; 3 uses
  %i.buy = icmp slt i32 %i.buw, %i.buq            ; 3 uses
  %i.buz = sub nsw i32 %i.buq, %i.buw             ; 3 uses
  %i.bva = tail call i32 @llvm.smin.i32(i32 %i.buz, i32 8)
  %i.bvb = icmp sgt i32 %i.buz, 0                 ; 2 uses
  %.not2828 = xor i1 %i.bux, true
  %.not1793 = xor i1 %i.buy, true
  %i.bvc = icmp slt i32 %i.buz, 1
  %i.bvd = add nsw i32 %i.buq, -3
  %i.bve = icmp sgt i32 %i.buq, 6
  %i.bvf = add nsw i32 %i.buq, -4
  %i.bvg = icmp sgt i32 %i.buq, 8
  %i.bvh = add nsw i32 %i.buq, -8
  %i.bvi = icmp sgt i32 %i.buq, 16
  %i.bvj = mul nsw i64 %i.bul, %i.fu
  %i.bvk = zext nneg i32 %i.bus to i64            ; 3 uses
  %i.bvl = sext i32 %i.buw to i64                 ; 3 uses
  %i.bvm = sext i32 %i.bva to i64                 ; 3 uses
  %i.bvn = sext i32 %i.bvd to i64
  %wide.trip.count2343 = zext nneg i32 %i.buw to i64
  %brmerge2277.not2309 = select i1 %i.buy, i1 %i.bvb, i1 false
  %wide.trip.count2370 = zext nneg i32 %i.buw to i64
  %wide.trip.count2378 = zext nneg i32 %i.buw to i64
  %invariant.op4562 = add i64 1, %i.bvj
  br label %bb.p

._crit_edge2081:                                  ; preds = %bb.aj
  %indvars.iv.next2499 = add nsw i64 %indvars.iv2498, 112 ; 2 uses
  %i.bvo = icmp slt i64 %indvars.iv.next2499, %i.bk
  %indvar.next3801 = add i64 %indvar3800, 1
  br i1 %i.bvo, label %.preheader1968, label %.preheader1975.loopexit

bb.p:                                             ; preds = %.preheader1968, %bb.aj
  %indvar3744 = phi i32 [ 0, %.preheader1968 ], [ %indvar.next3745, %bb.aj ] ; 5 uses
  %.sroa.122802.2 = phi nsz float [ %.sroa.122802.1, %.preheader1968 ], [ %.sroa.122802.3, %bb.aj ] ; 2 uses
  %.sroa.122794.2 = phi nsz float [ %.sroa.122794.1, %.preheader1968 ], [ %.sroa.122794.3, %bb.aj ] ; 2 uses
  %.sroa.9.2 = phi nsz float [ %.sroa.9.1, %.preheader1968 ], [ %.sroa.9.3, %bb.aj ] ; 2 uses
  %.sroa.12.2 = phi nsz float [ %.sroa.12.1, %.preheader1968 ], [ %.sroa.12.3, %bb.aj ] ; 2 uses
  %indvars.iv2494 = phi i64 [ -8, %.preheader1968 ], [ %indvars.iv.next2495, %bb.aj ] ; 10 uses
  %indvars.iv2458 = phi i32 [ -5, %.preheader1968 ], [ %indvars.iv.next2459, %bb.aj ] ; 4 uses
  %indvars.iv2403 = phi i32 [ 8, %.preheader1968 ], [ %indvars.iv.next2404, %bb.aj ] ; 2 uses
  %indvars.iv2401 = phi i32 [ 120, %.preheader1968 ], [ %indvars.iv.next2402, %bb.aj ] ; 3 uses
  %i.bvp = phi <4 x float> [ %i.bue, %.preheader1968 ], [ %i.esz, %bb.aj ] ; 2 uses
  %i.bvq = phi <2 x float> [ %i.buf, %.preheader1968 ], [ %i.eta, %bb.aj ] ; 2 uses
  %i.bvr = phi <2 x float> [ %i.bug, %.preheader1968 ], [ %i.esy, %bb.aj ] ; 2 uses
  %6 = mul nsw i32 %indvar3744, -112
  %7 = or disjoint i32 %6, 1
  %i.bvs = mul nsw i32 %indvar3744, -112
  %i.bvt = or disjoint i32 %i.bvs, 1
  %smax3804 = call i32 @llvm.smax.i32(i32 %indvars.iv2458, i32 0)
  %i.bvu = zext nneg i32 %smax3804 to i64         ; 2 uses
  %i.bvv = add nuw nsw i64 %i.bvu, 1
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.er)
  %i.bvw = add i32 %smin, -3
  %smin3805 = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.bvw)
  %i.bvx = zext i32 %smin3805 to i64
  %umax3806 = call i64 @llvm.umax.i64(i64 %i.bvv, i64 %i.bvx)
  %i.bvy = sub nsw i64 %umax3806, %i.bvu          ; 7 uses
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv2458, i32 0)
  %i.bvz = zext nneg i32 %smax to i64
  %i.bwa = shl nuw nsw i64 %i.bvz, 2
  %i.bwb = add i64 %i.bui, %i.bwa
  %8 = mul nsw i32 %indvar3744, -112
  %9 = add i32 %8, -9
  %.neg4045 = mul i32 %indvar3744, 112
  %smax2460 = call i32 @llvm.smax.i32(i32 %indvars.iv2458, i32 0)
  %i.bwc = zext nneg i32 %smax2460 to i64         ; 5 uses
  %smin2431 = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.er)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(393216) %i.btf, i8 0, i64 393216, i1 false)
  %i.bwd = add nsw i64 %indvars.iv2494, 8
  %i.bwe = udiv i64 %i.bwd, 112
  %i.bwf = add nsw i64 %indvars.iv2494, 128       ; 2 uses
  %i.bwg = trunc i64 %i.bwf to i32
  %i.bwh = tail call i32 @llvm.smin.i32(i32 %i.bwg, i32 %i.er) ; 6 uses
  %i.bwi = trunc i64 %indvars.iv2494 to i32       ; 2 uses
  %i.bwj = sub i32 %i.bwh, %i.bwi                 ; 7 uses
  %i.bwk = icmp slt i64 %indvars.iv2494, 0        ; 4 uses
  %i.bwl = select i1 %i.bwk, i32 8, i32 0         ; 4 uses
  %i.bwm = icmp sgt i64 %i.bwf, %i.af
  %i.bwn = trunc i64 %indvars.iv2494 to i32
  %i.bwo = sub i32 %i.ae, %i.bwn
  %i.bwp = select i1 %i.bwm, i32 %i.bwo, i32 %i.bwj ; 11 uses
  %i.bwq = icmp slt i32 %i.bwl, %i.bwp            ; 3 uses
  %or.cond2272 = select i1 %i.bux, i1 %i.bwq, i1 false
  br i1 %or.cond2272, label %.lr.ph1995.preheader, label %._crit_edge2000.split

.lr.ph1995.preheader:                             ; preds = %bb.p
  %i.bwr = zext nneg i32 %i.bwl to i64            ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bwp to i64  ; 3 uses
  %invariant.gep2964 = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv2494
  %xtraiter4276 = and i64 %wide.trip.count, 7     ; 2 uses
  %lcmp.mod4277.not = icmp eq i64 %xtraiter4276, 0
  %i.bws = sub nsw i64 %i.bwr, %wide.trip.count
  %i.bwt = icmp ugt i64 %i.bws, -8
  br label %.lr.ph1995

._crit_edge2000.split:                            ; preds = %._crit_edge1996, %bb.p
  %.not2829 = xor i1 %i.bwq, true
  %or.cond2274.not = select i1 %i.bur, i1 true, i1 %.not2829
  br i1 %or.cond2274.not, label %.loopexit1959.split, label %.preheader1918.preheader

.preheader1918.preheader:                         ; preds = %._crit_edge2000.split
  %i.bwu = zext nneg i32 %i.bwl to i64            ; 17 uses
  %wide.trip.count2349 = zext nneg i32 %i.bwp to i64 ; 17 uses
  %i.bwv = xor i64 %i.bwu, -1
  %i.bww = add nsw i64 %i.bwv, %wide.trip.count2349 ; 8 uses
  %xtraiter4280 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4281.not = icmp eq i64 %xtraiter4280, 0
  br i1 %lcmp.mod4281.not, label %.prol.loopexit4279, label %.prol.preheader4278

.prol.preheader4278:                              ; preds = %.preheader1918.preheader, %.prol.preheader4278
  %indvars.iv2345.prol = phi i64 [ %indvars.iv.next2346.prol, %.prol.preheader4278 ], [ %i.bwu, %.preheader1918.preheader ] ; 4 uses
  %prol.iter4282 = phi i64 [ %prol.iter4282.next, %.prol.preheader4278 ], [ 0, %.preheader1918.preheader ]
  %indvars.iv2345.tr.prol = trunc nuw i64 %indvars.iv2345.prol to i32
  %i.bwx = shl nuw i32 %indvars.iv2345.tr.prol, 1
  %i.bwy = and i32 %i.bwx, 2
  %i.bwz = lshr i32 %i.q, %i.bwy
  %i.bxa = and i32 %i.bwz, 3
  %i.bxb = zext nneg i32 %i.bxa to i64
  %i.bxc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bxb
  %i.bxd = load ptr, ptr %i.bxc, align 8, !tbaa !171 ; 2 uses
  %i.bxe = shl i64 %indvars.iv2345.prol, 32
  %sext.prol = add i64 %i.bxe, 8796093022208
  %i.bxf = ashr exact i64 %sext.prol, 30
  %i.bxg = getelementptr inbounds i8, ptr %i.bxd, i64 %i.bxf
  %i.bxh = load float, ptr %i.bxg, align 4, !tbaa !33
  %i.bxi = getelementptr inbounds nuw [4 x i8], ptr %i.bxd, i64 %indvars.iv2345.prol
  store float %i.bxh, ptr %i.bxi, align 4, !tbaa !33
  %indvars.iv.next2346.prol = add nuw nsw i64 %indvars.iv2345.prol, 1 ; 2 uses
  %prol.iter4282.next = add i64 %prol.iter4282, 1 ; 2 uses
  %prol.iter4282.cmp.not = icmp eq i64 %prol.iter4282.next, %xtraiter4280
  br i1 %prol.iter4282.cmp.not, label %.prol.loopexit4279, label %.prol.preheader4278, !llvm.loop !59

.prol.loopexit4279:                               ; preds = %.prol.preheader4278, %.preheader1918.preheader
  %indvars.iv2345.unr = phi i64 [ %i.bwu, %.preheader1918.preheader ], [ %indvars.iv.next2346.prol, %.prol.preheader4278 ]
  %i.bxj = icmp ult i64 %i.bww, 3
  br i1 %i.bxj, label %._crit_edge2003.preheader, label %.preheader1918.preheader.new

.lr.ph1995:                                       ; preds = %.lr.ph1995.preheader, %._crit_edge1996
  %indvars.iv2340 = phi i64 [ %i.bvk, %.lr.ph1995.preheader ], [ %indvars.iv.next2341, %._crit_edge1996 ] ; 4 uses
  %i.bxk = add nsw i64 %indvars.iv2340, %indvars.iv2498
  %indvars.iv2340.tr = trunc i64 %indvars.iv2340 to i32
  %i.bxl = shl i32 %indvars.iv2340.tr, 2
  %.tr.i1816 = and i32 %i.bxl, 28                 ; 2 uses
  %i.bxm = lshr i32 %i.q, %.tr.i1816              ; 2 uses
  %i.bxn = and i32 %i.bxm, 3                      ; 2 uses
  %i.bxo = or disjoint i32 %.tr.i1816, 2
  %i.bxp = lshr i32 %i.q, %i.bxo
  %i.bxq = xor i32 %i.bxp, %i.bxm
  %i.bxr = and i32 %i.bxq, 3                      ; 5 uses
  %i.bxs = mul nsw i64 %i.bxk, %i.af
  %.idx = shl nuw nsw i64 %indvars.iv2340, 9      ; 9 uses
  %gep2965 = getelementptr [4 x i8], ptr %invariant.gep2964, i64 %i.bxs ; 9 uses
  br i1 %lcmp.mod4277.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph1995, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.bwr, %.lr.ph1995 ] ; 3 uses
  %.017261992.prol = phi i32 [ %i.bxz, %.prol.preheader ], [ %i.bxn, %.lr.ph1995 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph1995 ]
  %gep.prol = getelementptr [4 x i8], ptr %gep2965, i64 %indvars.iv.prol
  %i.bxt = load float, ptr %gep.prol, align 4, !tbaa !33
  %i.bxu = zext nneg i32 %.017261992.prol to i64
  %i.bxv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bxu
  %i.bxw = load ptr, ptr %i.bxv, align 8, !tbaa !171
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxw, i64 %.idx
  %i.bxy = getelementptr inbounds nuw [4 x i8], ptr %i.bxx, i64 %indvars.iv.prol
  store float %i.bxt, ptr %i.bxy, align 4, !tbaa !33
  %i.bxz = xor i32 %.017261992.prol, %i.bxr       ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4276
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !60

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph1995
  %indvars.iv.unr = phi i64 [ %i.bwr, %.lr.ph1995 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %.017261992.unr = phi i32 [ %i.bxn, %.lr.ph1995 ], [ %i.bxz, %.prol.preheader ] ; 8 uses
  br i1 %i.bwt, label %._crit_edge1996, label %.lr.ph1995.new

.lr.ph1995.new:                                   ; preds = %.prol.loopexit
  %i.bya = zext nneg i32 %.017261992.unr to i64
  %i.byb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bya
  %i.byc = load ptr, ptr %i.byb, align 8, !tbaa !171
  %i.byd = getelementptr inbounds nuw i8, ptr %i.byc, i64 %.idx
  %i.bye = xor i32 %.017261992.unr, %i.bxr
  %i.byf = zext nneg i32 %i.bye to i64
  %i.byg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byf
  %i.byh = load ptr, ptr %i.byg, align 8, !tbaa !171
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byh, i64 %.idx
  %i.byj = zext nneg i32 %.017261992.unr to i64
  %i.byk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byj
  %i.byl = load ptr, ptr %i.byk, align 8, !tbaa !171
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 %.idx
  %i.byn = xor i32 %.017261992.unr, %i.bxr
  %i.byo = zext nneg i32 %i.byn to i64
  %i.byp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byo
  %i.byq = load ptr, ptr %i.byp, align 8, !tbaa !171
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byq, i64 %.idx
  %i.bys = zext nneg i32 %.017261992.unr to i64
  %i.byt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bys
  %i.byu = load ptr, ptr %i.byt, align 8, !tbaa !171
  %i.byv = getelementptr inbounds nuw i8, ptr %i.byu, i64 %.idx
  %i.byw = xor i32 %.017261992.unr, %i.bxr
  %i.byx = zext nneg i32 %i.byw to i64
  %i.byy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byx
  %i.byz = load ptr, ptr %i.byy, align 8, !tbaa !171
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byz, i64 %.idx
  %i.bzb = zext nneg i32 %.017261992.unr to i64
  %i.bzc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzb
  %i.bzd = load ptr, ptr %i.bzc, align 8, !tbaa !171
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bzd, i64 %.idx
  %i.bzf = xor i32 %.017261992.unr, %i.bxr
  %i.bzg = zext nneg i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzg
  %i.bzi = load ptr, ptr %i.bzh, align 8, !tbaa !171
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzi, i64 %.idx
  br label %bb.q

._crit_edge1996:                                  ; preds = %bb.q, %.prol.loopexit
  %indvars.iv.next2341 = add nuw nsw i64 %indvars.iv2340, 1 ; 2 uses
  %exitcond2344.not = icmp eq i64 %indvars.iv.next2341, %wide.trip.count2343
  br i1 %exitcond2344.not, label %._crit_edge2000.split, label %.lr.ph1995

bb.q:                                             ; preds = %bb.q, %.lr.ph1995.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph1995.new ], [ %indvars.iv.next.7, %bb.q ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %gep2965, i64 %indvars.iv
  %i.bzk = load float, ptr %gep, align 4, !tbaa !33
  %i.bzl = getelementptr inbounds nuw [4 x i8], ptr %i.byd, i64 %indvars.iv
  store float %i.bzk, ptr %i.bzl, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %gep2965, i64 %indvars.iv.next
  %i.bzm = load float, ptr %gep.1, align 4, !tbaa !33
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %i.byi, i64 %indvars.iv.next
  store float %i.bzm, ptr %i.bzn, align 4, !tbaa !33
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %gep2965, i64 %indvars.iv.next.1
  %i.bzo = load float, ptr %gep.2, align 4, !tbaa !33
  %i.bzp = getelementptr inbounds nuw [4 x i8], ptr %i.bym, i64 %indvars.iv.next.1
  store float %i.bzo, ptr %i.bzp, align 4, !tbaa !33
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %gep2965, i64 %indvars.iv.next.2
  %i.bzq = load float, ptr %gep.3, align 4, !tbaa !33
  %i.bzr = getelementptr inbounds nuw [4 x i8], ptr %i.byr, i64 %indvars.iv.next.2
  store float %i.bzq, ptr %i.bzr, align 4, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %gep2965, i64 %indvars.iv.next.3
  %i.bzs = load float, ptr %gep.4, align 4, !tbaa !33
  %i.bzt = getelementptr inbounds nuw [4 x i8], ptr %i.byv, i64 %indvars.iv.next.3
  store float %i.bzs, ptr %i.bzt, align 4, !tbaa !33
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %gep2965, i64 %indvars.iv.next.4
  %i.bzu = load float, ptr %gep.5, align 4, !tbaa !33
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %i.bza, i64 %indvars.iv.next.4
  store float %i.bzu, ptr %i.bzv, align 4, !tbaa !33
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %gep2965, i64 %indvars.iv.next.5
  %i.bzw = load float, ptr %gep.6, align 4, !tbaa !33
  %i.bzx = getelementptr inbounds nuw [4 x i8], ptr %i.bze, i64 %indvars.iv.next.5
  store float %i.bzw, ptr %i.bzx, align 4, !tbaa !33
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [4 x i8], ptr %gep2965, i64 %indvars.iv.next.6
  %i.bzy = load float, ptr %gep.7, align 4, !tbaa !33
  %i.bzz = getelementptr inbounds nuw [4 x i8], ptr %i.bzj, i64 %indvars.iv.next.6
  store float %i.bzy, ptr %i.bzz, align 4, !tbaa !33
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
end_hunk_0
begin_hunk_1_@process:bb.a

._crit_edge2023.6.5:                              ; preds = %._crit_edge2023.6.4
  %i.drf = load float, ptr %i.ajy, align 4, !tbaa !33
  %i.drg = load ptr, ptr %i.aka, align 8, !tbaa !171
  %i.drh = getelementptr [4 x i8], ptr %i.drg, i64 %i.diz
  %i.dri = getelementptr i8, ptr %i.drh, i64 3604
  store float %i.drf, ptr %i.dri, align 4, !tbaa !33
  %exitcond2406.not.5 = icmp eq i32 %i.djb, 6
  br i1 %exitcond2406.not.5, label %.loopexit1947.split, label %._crit_edge2023.6.6

._crit_edge2023.6.6:                              ; preds = %._crit_edge2023.6.5
  %i.drj = load float, ptr %i.akf, align 4, !tbaa !33
  %i.drk = load ptr, ptr %i.akh, align 8, !tbaa !171
  %i.drl = getelementptr [4 x i8], ptr %i.drk, i64 %i.diz
  %i.drm = getelementptr i8, ptr %i.drl, i64 3608
  store float %i.drj, ptr %i.drm, align 4, !tbaa !33
  %exitcond2406.not.6 = icmp eq i32 %i.djb, 7
  br i1 %exitcond2406.not.6, label %.loopexit1947.split, label %._crit_edge2023.6.7

._crit_edge2023.6.7:                              ; preds = %._crit_edge2023.6.6
  %i.drn = load float, ptr %i.akl, align 4, !tbaa !33
  %i.dro = load ptr, ptr %i.akn, align 8, !tbaa !171
  %i.drp = getelementptr [4 x i8], ptr %i.dro, i64 %i.diz
  %i.drq = getelementptr i8, ptr %i.drp, i64 3612
  store float %i.drn, ptr %i.drq, align 4, !tbaa !33
  br label %.loopexit1947.split

bb.v:                                             ; preds = %.preheader1912.preheader
  %i.drr = load float, ptr %i.uh, align 4, !tbaa !33
  %i.drs = load ptr, ptr %i.uj, align 8, !tbaa !171
  %i.drt = getelementptr i8, ptr %i.drs, i64 4
  %i.dru = getelementptr [4 x i8], ptr %i.drt, i64 %i.diz
  store float %i.drr, ptr %i.dru, align 4, !tbaa !33
  %exitcond2434.not.1 = icmp eq i32 %i.djb, 2
  br i1 %exitcond2434.not.1, label %._crit_edge2023.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.drv = load float, ptr %i.un, align 4, !tbaa !33
  %i.drw = load ptr, ptr %i.up, align 8, !tbaa !171
  %i.drx = getelementptr i8, ptr %i.drw, i64 8
  %i.dry = getelementptr [4 x i8], ptr %i.drx, i64 %i.diz
  store float %i.drv, ptr %i.dry, align 4, !tbaa !33
  %exitcond2434.not.2 = icmp eq i32 %i.djb, 3
  br i1 %exitcond2434.not.2, label %._crit_edge2023.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.drz = load float, ptr %i.uu, align 4, !tbaa !33
  %i.dsa = load ptr, ptr %i.uw, align 8, !tbaa !171
  %i.dsb = getelementptr i8, ptr %i.dsa, i64 12
  %i.dsc = getelementptr [4 x i8], ptr %i.dsb, i64 %i.diz
  store float %i.drz, ptr %i.dsc, align 4, !tbaa !33
  %exitcond2434.not.3 = icmp eq i32 %i.djb, 4
  br i1 %exitcond2434.not.3, label %._crit_edge2023.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dsd = load float, ptr %i.va, align 4, !tbaa !33
  %i.dse = load ptr, ptr %i.vc, align 8, !tbaa !171
  %i.dsf = getelementptr i8, ptr %i.dse, i64 16
  %i.dsg = getelementptr [4 x i8], ptr %i.dsf, i64 %i.diz
  store float %i.dsd, ptr %i.dsg, align 4, !tbaa !33
  %exitcond2434.not.4 = icmp eq i32 %i.djb, 5
  br i1 %exitcond2434.not.4, label %._crit_edge2023.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dsh = load float, ptr %i.vh, align 4, !tbaa !33
  %i.dsi = load ptr, ptr %i.vj, align 8, !tbaa !171
  %i.dsj = getelementptr i8, ptr %i.dsi, i64 20
  %i.dsk = getelementptr [4 x i8], ptr %i.dsj, i64 %i.diz
  store float %i.dsh, ptr %i.dsk, align 4, !tbaa !33
  %exitcond2434.not.5 = icmp eq i32 %i.djb, 6
  br i1 %exitcond2434.not.5, label %._crit_edge2023.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dsl = load float, ptr %i.vn, align 4, !tbaa !33
  %i.dsm = load ptr, ptr %i.vp, align 8, !tbaa !171
  %i.dsn = getelementptr i8, ptr %i.dsm, i64 24
  %i.dso = getelementptr [4 x i8], ptr %i.dsn, i64 %i.diz
  store float %i.dsl, ptr %i.dso, align 4, !tbaa !33
  %exitcond2434.not.6 = icmp eq i32 %i.djb, 7
  br i1 %exitcond2434.not.6, label %._crit_edge2023.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dsp = load float, ptr %i.vu, align 4, !tbaa !33
  %i.dsq = load ptr, ptr %i.vw, align 8, !tbaa !171
  %i.dsr = getelementptr i8, ptr %i.dsq, i64 28
  %i.dss = getelementptr [4 x i8], ptr %i.dsr, i64 %i.diz
  store float %i.dsp, ptr %i.dss, align 4, !tbaa !33
  br label %._crit_edge2023.preheader

._crit_edge2023.preheader:                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.preheader1912.preheader
  %i.dst = load float, ptr %i.wa, align 4, !tbaa !33
  %i.dsu = load ptr, ptr %i.wc, align 8, !tbaa !171
  %i.dsv = getelementptr [4 x i8], ptr %i.dsu, i64 %i.diz
  %i.dsw = getelementptr i8, ptr %i.dsv, i64 512
  store float %i.dst, ptr %i.dsw, align 4, !tbaa !33
  %exitcond2430.not = icmp slt i32 %i.djb, 2
  br i1 %exitcond2430.not, label %._crit_edge2023.1, label %._crit_edge2023.14346

.loopexit1947.split:                              ; preds = %._crit_edge2023.6, %._crit_edge2023.6.1, %._crit_edge2023.6.2, %._crit_edge2023.6.3, %._crit_edge2023.6.4, %._crit_edge2023.6.5, %._crit_edge2023.6.6, %._crit_edge2023.6.7, %.loopexit1949
  %or.cond9 = and i1 %i.buy, %i.bwk
  %brmerge2287.not = select i1 %or.cond9, i1 %i.bvb, i1 false
  br i1 %brmerge2287.not, label %.preheader1911, label %.loopexit1945

.preheader1911:                                   ; preds = %.loopexit1947.split, %.preheader1911
  %indvars.iv2439 = phi i64 [ %indvars.iv.next2440, %.preheader1911 ], [ 0, %.loopexit1947.split ] ; 5 uses
  %i.dsx = trunc nuw nsw i64 %indvars.iv2439 to i32
  %i.dsy = sub i32 %i.es, %i.dsx
  %i.dsz = mul nsw i32 %i.dsy, %i.ae              ; 8 uses
  %reass.sub1791 = add i32 %i.dsz, 16
  %i.dta = add nsw i64 %indvars.iv2439, %i.bvl
  %i.dtb = shl nsw i64 %i.dta, 7                  ; 8 uses
  %indvars.iv2439.tr = trunc nuw nsw i64 %indvars.iv2439 to i32
  %i.dtc = shl nuw nsw i32 %indvars.iv2439.tr, 2
  %i.dtd = lshr i32 %i.q, %i.dtc
  %i.dte = and i32 %i.dtd, 3
  %i.dtf = sext i32 %reass.sub1791 to i64
  %i.dtg = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dtf
  %i.dth = load float, ptr %i.dtg, align 4, !tbaa !33
  %i.dti = zext nneg i32 %i.dte to i64
  %i.dtj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dti
  %i.dtk = load ptr, ptr %i.dtj, align 8, !tbaa !171 ; 4 uses
  %i.dtl = getelementptr inbounds [4 x i8], ptr %i.dtk, i64 %i.dtb
  store float %i.dth, ptr %i.dtl, align 4, !tbaa !33
  %indvars.iv2439.tr2927 = trunc i64 %indvars.iv2439 to i32
  %i.dtm = shl i32 %indvars.iv2439.tr2927, 2
  %i.dtn = or disjoint i32 %i.dtm, 2
  %i.dto = lshr i32 %i.q, %i.dtn
  %i.dtp = and i32 %i.dto, 3
  %i.dtq = add i32 %i.dsz, 15
  %i.dtr = sext i32 %i.dtq to i64
  %i.dts = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dtr
  %i.dtt = load float, ptr %i.dts, align 4, !tbaa !33
  %i.dtu = zext nneg i32 %i.dtp to i64
  %i.dtv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dtu
  %i.dtw = load ptr, ptr %i.dtv, align 8, !tbaa !171 ; 4 uses
  %i.dtx = getelementptr [4 x i8], ptr %i.dtw, i64 %i.dtb
  %i.dty = getelementptr i8, ptr %i.dtx, i64 4
  store float %i.dtt, ptr %i.dty, align 4, !tbaa !33
  %i.dtz = add i32 %i.dsz, 14
  %i.dua = sext i32 %i.dtz to i64
  %i.dub = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dua
  %i.duc = load float, ptr %i.dub, align 4, !tbaa !33
  %i.dud = getelementptr [4 x i8], ptr %i.dtk, i64 %i.dtb
  %i.due = getelementptr i8, ptr %i.dud, i64 8
  store float %i.duc, ptr %i.due, align 4, !tbaa !33
  %i.duf = add i32 %i.dsz, 13
  %i.dug = sext i32 %i.duf to i64
  %i.duh = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dug
  %i.dui = load float, ptr %i.duh, align 4, !tbaa !33
  %i.duj = getelementptr [4 x i8], ptr %i.dtw, i64 %i.dtb
  %i.duk = getelementptr i8, ptr %i.duj, i64 12
  store float %i.dui, ptr %i.duk, align 4, !tbaa !33
  %i.dul = add i32 %i.dsz, 12
  %i.dum = sext i32 %i.dul to i64
  %i.dun = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dum
  %i.duo = load float, ptr %i.dun, align 4, !tbaa !33
  %i.dup = getelementptr [4 x i8], ptr %i.dtk, i64 %i.dtb
  %i.duq = getelementptr i8, ptr %i.dup, i64 16
  store float %i.duo, ptr %i.duq, align 4, !tbaa !33
  %i.dur = add i32 %i.dsz, 11
  %i.dus = sext i32 %i.dur to i64
  %i.dut = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dus
  %i.duu = load float, ptr %i.dut, align 4, !tbaa !33
  %i.duv = getelementptr [4 x i8], ptr %i.dtw, i64 %i.dtb
  %i.duw = getelementptr i8, ptr %i.duv, i64 20
  store float %i.duu, ptr %i.duw, align 4, !tbaa !33
  %i.dux = add i32 %i.dsz, 10
  %i.duy = sext i32 %i.dux to i64
  %i.duz = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.duy
  %i.dva = load float, ptr %i.duz, align 4, !tbaa !33
  %i.dvb = getelementptr [4 x i8], ptr %i.dtk, i64 %i.dtb
  %i.dvc = getelementptr i8, ptr %i.dvb, i64 24
  store float %i.dva, ptr %i.dvc, align 4, !tbaa !33
  %i.dvd = add i32 %i.dsz, 9
  %i.dve = sext i32 %i.dvd to i64
  %i.dvf = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dve
  %i.dvg = load float, ptr %i.dvf, align 4, !tbaa !33
  %i.dvh = getelementptr [4 x i8], ptr %i.dtw, i64 %i.dtb
  %i.dvi = getelementptr i8, ptr %i.dvh, i64 28
  store float %i.dvg, ptr %i.dvi, align 4, !tbaa !33
  %indvars.iv.next2440 = add nuw nsw i64 %indvars.iv2439, 1 ; 2 uses
  %i.dvj = icmp slt i64 %indvars.iv.next2440, %i.bvm
  br i1 %i.dvj, label %.preheader1911, label %.loopexit1945

.loopexit1945:                                    ; preds = %.preheader1911, %.loopexit1947.split
  br i1 %i.bve, label %.lr.ph2038, label %.preheader1942.thread

.lr.ph2038:                                       ; preds = %.loopexit1945
  %i.dvk = add nsw i32 %i.bwj, -3                 ; 2 uses
  %i.dvl = trunc i64 %indvars.iv2494 to i32
  %i.dvm = or disjoint i32 %i.dvl, 3
  %i.dvn = tail call i32 @llvm.smax.i32(i32 %i.dvm, i32 0)
  %i.dvo = trunc i64 %indvars.iv2494 to i32
  %i.dvp = add nsw i32 %i.bwh, -3
  %. = tail call i32 @llvm.smin.i32(i32 %i.dvp, i32 %i.ae) ; 2 uses
  %i.dvq = icmp sge i32 %i.dvn, %.
  %i.dvr = sub i32 384, %i.dvo
  %i.dvs = select i1 %i.bwk, i32 %i.dvr, i32 387
  %i.dvt = zext nneg i32 %. to i64
  %i.dvu = add i32 %i.bwh, %i.bvt
  %i.dvv = add i32 %i.bwh, %7
  %min.iters.check3808 = icmp ult i64 %i.bvy, 8
  %min.iters.check3810 = icmp ult i64 %i.bvy, 32
  %i.dvw = and i64 %i.bvy, 24
  %n.vec3812 = and i64 %i.bvy, -32                ; 5 uses
  %i.dvx = add nsw i64 %n.vec3812, %i.bwc
  %cmp.n3821 = icmp eq i64 %i.bvy, %n.vec3812
  %min.epilog.iters.check3828 = icmp eq i64 %i.dvw, 0
  %n.vec3830 = and i64 %i.bvy, -8                 ; 4 uses
  %i.dvy = add nsw i64 %n.vec3830, %i.bwc
  %cmp.n3836 = icmp eq i64 %i.bvy, %n.vec3830
  br label %bb.ac

.preheader1943:                                   ; preds = %.loopexit1910
  br i1 %i.bvg, label %.lr.ph2045, label %.preheader1942.thread

.lr.ph2045:                                       ; preds = %.preheader1943
  %i.dvz = add nsw i32 %i.bwj, -4                 ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph2038, %.loopexit1910
  %indvar3802 = phi i64 [ 0, %.lr.ph2038 ], [ %indvar.next3803, %.loopexit1910 ] ; 2 uses
  %indvars.iv2466 = phi i64 [ 3, %.lr.ph2038 ], [ %indvars.iv.next2467, %.loopexit1910 ] ; 3 uses
  %indvars.iv2454 = phi i32 [ %i.dvs, %.lr.ph2038 ], [ %indvars.iv.next2455, %.loopexit1910 ] ; 3 uses
  %indvars.iv2442 = phi i32 [ 387, %.lr.ph2038 ], [ %indvars.iv.next2443, %.loopexit1910 ] ; 2 uses
  %i.dwa = mul i64 %i.pt, %indvar3802
  %i.dwb = add i64 %i.bwb, %i.dwa
  %i.dwc = sext i32 %indvars.iv2454 to i64
  %i.dwd = shl nsw i64 %i.dwc, 2
  %i.dwe = sext i32 %indvars.iv2454 to i64        ; 5 uses
  %i.dwf = add nsw i64 %indvars.iv2466, %indvars.iv2498 ; 3 uses
  %indvars.iv2466.tr = trunc nuw i64 %indvars.iv2466 to i32
  %i.dwg = shl nuw i32 %indvars.iv2466.tr, 1
  %i.dwh = and i32 %i.dwg, 14                     ; 2 uses
  %.tr.i1826 = shl nuw nsw i32 %i.dwh, 1
  %i.dwi = or disjoint i32 %.tr.i1826, 2
  %i.dwj = lshr i32 %i.q, %i.dwi
  %i.dwk = and i32 %i.dwj, 1                      ; 4 uses
  %i.dwl = add nuw nsw i32 %i.dwk, 3              ; 5 uses
  %i.dwm = icmp slt i32 %i.dwl, %i.dvk
  br i1 %i.dwm, label %.lr.ph2030, label %._crit_edge2031

.lr.ph2030:                                       ; preds = %bb.ac
  %i.dwn = and i32 %i.dwl, 1
  %i.dwo = or disjoint i32 %i.dwn, %i.dwh
  %i.dwp = shl nuw nsw i32 %i.dwo, 1
  %i.dwq = lshr i32 %i.q, %i.dwp
  %i.dwr = and i32 %i.dwq, 3
  %i.dws = zext nneg i32 %i.dwr to i64
  %i.dwt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dws
  %i.dwu = load ptr, ptr %i.dwt, align 8, !tbaa !171 ; 6 uses
  %i.dwv = add i32 %indvars.iv2442, %i.dwk
  %i.dww = zext i32 %i.dwv to i64                 ; 6 uses
  %i.dwx = sub i32 %i.dvv, %i.dwk                 ; 2 uses
  %i.dwy = lshr i32 %i.dwx, 1
  %narrow = add nuw i32 %i.dwy, 1
  %i.dwz = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check3852 = icmp ult i32 %i.dwx, 16
  br i1 %min.iters.check3852, label %scalar.ph3851.preheader, label %vector.memcheck3839

scalar.ph3851.preheader:                          ; preds = %vector.body3858, %vector.memcheck3839, %.lr.ph2030
  %indvars.iv2444.ph = phi i64 [ %i.dww, %vector.memcheck3839 ], [ %i.dww, %.lr.ph2030 ], [ %i.dxk, %vector.body3858 ]
  %.017062027.ph = phi i32 [ %i.dwl, %vector.memcheck3839 ], [ %i.dwl, %.lr.ph2030 ], [ %i.dxn, %vector.body3858 ]
  br label %scalar.ph3851

vector.memcheck3839:                              ; preds = %.lr.ph2030
  %i.dxa = shl nuw nsw i64 %i.dww, 2              ; 3 uses
  %scevgep3841 = getelementptr i8, ptr %scevgep3840, i64 %i.dxa
  %i.dxb = sub i32 %i.dvu, %i.dwk
  %i.dxc = lshr i32 %i.dxb, 1
  %i.dxd = zext nneg i32 %i.dxc to i64
  %i.dxe = shl nuw nsw i64 %i.dxd, 3
  %i.dxf = add nuw nsw i64 %i.dxe, %i.dxa         ; 2 uses
  %scevgep3843 = getelementptr i8, ptr %scevgep3842, i64 %i.dxf
  %scevgep3844 = getelementptr i8, ptr %i.dwu, i64 -1024
  %scevgep3845 = getelementptr i8, ptr %scevgep3844, i64 %i.dxa
  %scevgep3846 = getelementptr i8, ptr %i.dwu, i64 1028
  %scevgep3847 = getelementptr i8, ptr %scevgep3846, i64 %i.dxf
  %bound03848 = icmp ult ptr %scevgep3841, %scevgep3847
  %bound13849 = icmp ult ptr %scevgep3845, %scevgep3843
  %found.conflict3850 = and i1 %bound03848, %bound13849
  br i1 %found.conflict3850, label %scalar.ph3851.preheader, label %vector.ph3853

vector.ph3853:                                    ; preds = %vector.memcheck3839
  %i.dxg = and i64 %i.dwz, 7                      ; 2 uses
  %i.dxh = icmp eq i64 %i.dxg, 0
  %i.dxi = select i1 %i.dxh, i64 8, i64 %i.dxg
  %n.vec3854 = sub nsw i64 %i.dwz, %i.dxi         ; 3 uses
  %i.dxj = shl nsw i64 %n.vec3854, 1
  %i.dxk = add nsw i64 %i.dxj, %i.dww
  %i.dxl = trunc i64 %n.vec3854 to i32
  %i.dxm = shl i32 %i.dxl, 1
  %i.dxn = add i32 %i.dwl, %i.dxm
  %broadcast.splatinsert3855 = insertelement <8 x i64> poison, i64 %i.dww, i64 0
  %broadcast.splat3856 = shufflevector <8 x i64> %broadcast.splatinsert3855, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3857 = add nuw nsw <8 x i64> %broadcast.splat3856, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3858

vector.body3858:                                  ; preds = %vector.body3858, %vector.ph3853
  %index3859 = phi i64 [ 0, %vector.ph3853 ], [ %index.next3888, %vector.body3858 ] ; 2 uses
  %vec.ind3860 = phi <8 x i64> [ %induction3857, %vector.ph3853 ], [ %vec.ind.next3889, %vector.body3858 ] ; 2 uses
  %i.dxo = shl nuw i64 %index3859, 1
  %i.dxp = add nuw i64 %i.dxo, %i.dww             ; 2 uses
  %wide.gep3861 = getelementptr inbounds nuw [4 x i8], ptr %i.btg, <8 x i64> %vec.ind3860 ; 2 uses
  %i.dxq = extractelement <8 x ptr> %wide.gep3861, i64 0 ; 8 uses
  %i.dxr = getelementptr inbounds nuw i8, ptr %i.dxq, i64 512
  %wide.vec3862 = load <16 x float>, ptr %i.dxr, align 4, !tbaa !33, !alias.scope !173, !noalias !174
  %strided.vec3863 = shufflevector <16 x float> %wide.vec3862, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dxs = getelementptr i8, ptr %i.dxq, i64 -512
  %wide.vec3864 = load <16 x float>, ptr %i.dxs, align 4, !tbaa !33, !alias.scope !173, !noalias !174
  %strided.vec3865 = shufflevector <16 x float> %wide.vec3864, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dxt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3863, %strided.vec3865
  %i.dxu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dxt)
  %i.dxv = fadd reassoc nsz arcp contract afn <8 x float> %i.dxu, splat (float f0x3727C5AC)
  %i.dxw = getelementptr inbounds nuw [4 x i8], ptr %i.dwu, i64 %i.dxp ; 4 uses
  %wide.vec3866 = load <16 x float>, ptr %i.dxw, align 4, !tbaa !33, !alias.scope !174
  %strided.vec3867 = shufflevector <16 x float> %wide.vec3866, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dxx = getelementptr i8, ptr %i.dxw, i64 -1024
  %wide.vec3868 = load <16 x float>, ptr %i.dxx, align 4, !tbaa !33, !alias.scope !174
  %strided.vec3869 = shufflevector <16 x float> %wide.vec3868, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dxy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3867, %strided.vec3869
  %i.dxz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dxy)
  %i.dya = fadd reassoc nsz arcp contract afn <8 x float> %i.dxv, %i.dxz
  %i.dyb = getelementptr i8, ptr %i.dxq, i64 -1536
  %wide.vec3870 = load <16 x float>, ptr %i.dyb, align 4, !tbaa !33, !alias.scope !173, !noalias !174
  %strided.vec3871 = shufflevector <16 x float> %wide.vec3870, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3865, %strided.vec3871
  %i.dyd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyc)
  %i.dye = fadd reassoc nsz arcp contract afn <8 x float> %i.dya, %i.dyd ; 2 uses
  %i.dyf = fmul reassoc nsz arcp contract afn <8 x float> %i.dye, %i.dye
  %i.dyg = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dyf ; 2 uses
  %i.dyh = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3865, %strided.vec3863
  %i.dyi = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyh)
  %i.dyj = fadd reassoc nsz arcp contract afn <8 x float> %i.dyi, splat (float f0x3727C5AC)
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dxw, i64 1024
  %wide.vec3872 = load <16 x float>, ptr %i.dyk, align 4, !tbaa !33, !alias.scope !174
  %strided.vec3873 = shufflevector <16 x float> %wide.vec3872, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3867, %strided.vec3873
  %i.dym = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyl)
  %i.dyn = fadd reassoc nsz arcp contract afn <8 x float> %i.dyj, %i.dym
  %i.dyo = getelementptr inbounds nuw i8, ptr %i.dxq, i64 1536
  %wide.vec3874 = load <16 x float>, ptr %i.dyo, align 4, !tbaa !33, !alias.scope !173, !noalias !174
  %strided.vec3875 = shufflevector <16 x float> %wide.vec3874, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyp = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3863, %strided.vec3875
  %i.dyq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyp)
  %i.dyr = fadd reassoc nsz arcp contract afn <8 x float> %i.dyn, %i.dyq ; 2 uses
  %i.dys = fmul reassoc nsz arcp contract afn <8 x float> %i.dyr, %i.dyr
  %i.dyt = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dys ; 2 uses
  %i.dyu = getelementptr inbounds nuw i8, ptr %i.dxq, i64 4
  %wide.vec3876 = load <16 x float>, ptr %i.dyu, align 4, !tbaa !33, !alias.scope !173, !noalias !174
  %strided.vec3877 = shufflevector <16 x float> %wide.vec3876, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyv = getelementptr i8, ptr %i.dxq, i64 -4
  %wide.vec3878 = load <16 x float>, ptr %i.dyv, align 4, !tbaa !33, !alias.scope !173, !noalias !174
  %strided.vec3879 = shufflevector <16 x float> %wide.vec3878, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyw = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3877, %strided.vec3879
  %i.dyx = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyw)
  %i.dyy = fadd reassoc nsz arcp contract afn <8 x float> %i.dyx, splat (float f0x3727C5AC)
  %i.dyz = getelementptr i8, ptr %i.dxw, i64 -8
  %wide.vec3880 = load <16 x float>, ptr %i.dyz, align 4, !tbaa !33, !alias.scope !174
  %strided.vec3881 = shufflevector <16 x float> %wide.vec3880, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dza = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3867, %strided.vec3881
  %i.dzb = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dza)
  %i.dzc = fadd reassoc nsz arcp contract afn <8 x float> %i.dyy, %i.dzb
  %i.dzd = getelementptr i8, ptr %i.dxq, i64 -12
  %wide.vec3882 = load <16 x float>, ptr %i.dzd, align 4, !tbaa !33, !alias.scope !173, !noalias !174
  %strided.vec3883 = shufflevector <16 x float> %wide.vec3882, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dze = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3879, %strided.vec3883
  %i.dzf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dze)
  %i.dzg = fadd reassoc nsz arcp contract afn <8 x float> %i.dzc, %i.dzf ; 2 uses
  %i.dzh = fmul reassoc nsz arcp contract afn <8 x float> %i.dzg, %i.dzg
  %i.dzi = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dzh ; 2 uses
  %i.dzj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3879, %strided.vec3877
  %i.dzk = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzj)
  %i.dzl = fadd reassoc nsz arcp contract afn <8 x float> %i.dzk, splat (float f0x3727C5AC)
  %i.dzm = getelementptr inbounds nuw [4 x i8], ptr %i.dwu, i64 %i.dxp
  %i.dzn = getelementptr inbounds nuw i8, ptr %i.dzm, i64 8
  %wide.vec3884 = load <16 x float>, ptr %i.dzn, align 4, !tbaa !33, !alias.scope !174
  %strided.vec3885 = shufflevector <16 x float> %wide.vec3884, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3867, %strided.vec3885
  %i.dzp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzo)
  %i.dzq = fadd reassoc nsz arcp contract afn <8 x float> %i.dzl, %i.dzp
  %i.dzr = getelementptr inbounds nuw i8, ptr %i.dxq, i64 12
  %wide.vec3886 = load <16 x float>, ptr %i.dzr, align 4, !tbaa !33, !alias.scope !173, !noalias !174
  %strided.vec3887 = shufflevector <16 x float> %wide.vec3886, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3877, %strided.vec3887
  %i.dzt = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzs)
  %i.dzu = fadd reassoc nsz arcp contract afn <8 x float> %i.dzq, %i.dzt ; 2 uses
  %i.dzv = fmul reassoc nsz arcp contract afn <8 x float> %i.dzu, %i.dzu
  %i.dzw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dzv ; 2 uses
  %i.dzx = fmul reassoc nsz arcp contract afn <8 x float> %i.dyg, %strided.vec3865
  %i.dzy = fmul reassoc nsz arcp contract afn <8 x float> %i.dyt, %strided.vec3863
  %i.dzz = fadd reassoc nsz arcp contract afn <8 x float> %i.dzy, %i.dzx
  %i.eaa = fmul reassoc nsz arcp contract afn <8 x float> %i.dzi, %strided.vec3879
  %i.eab = fadd reassoc nsz arcp contract afn <8 x float> %i.dzz, %i.eaa
  %i.eac = fmul reassoc nsz arcp contract afn <8 x float> %i.dzw, %strided.vec3877
  %i.ead = fadd reassoc nsz arcp contract afn <8 x float> %i.eab, %i.eac
  %i.eae = fadd reassoc nsz arcp contract afn <8 x float> %i.dyt, %i.dyg
  %i.eaf = fadd reassoc nsz arcp contract afn <8 x float> %i.eae, %i.dzi
  %i.eag = fadd reassoc nsz arcp contract afn <8 x float> %i.eaf, %i.dzw
  %i.eah = fdiv reassoc nsz arcp contract afn <8 x float> %i.ead, %i.eag
end_hunk_1
begin_hunk_2_@process:bb.a

vec.epilog.middle.block3835:                      ; preds = %vec.epilog.vector.body3831
  br i1 %cmp.n3836, label %.loopexit1910, label %vec.epilog.scalar.ph3826.preheader

vec.epilog.scalar.ph3826.preheader:               ; preds = %iter.check3825, %vec.epilog.iter.check3827, %vec.epilog.middle.block3835
  %indvars.iv2461.ph = phi i64 [ %i.bwc, %iter.check3825 ], [ %i.dvx, %vec.epilog.iter.check3827 ], [ %i.dvy, %vec.epilog.middle.block3835 ]
  %indvars.iv2456.ph = phi i64 [ %i.dwe, %iter.check3825 ], [ %i.ebv, %vec.epilog.iter.check3827 ], [ %i.ecd, %vec.epilog.middle.block3835 ]
  br label %vec.epilog.scalar.ph3826

vec.epilog.scalar.ph3826:                         ; preds = %vec.epilog.scalar.ph3826.preheader, %vec.epilog.scalar.ph3826
  %indvars.iv2461 = phi i64 [ %indvars.iv.next2462, %vec.epilog.scalar.ph3826 ], [ %indvars.iv2461.ph, %vec.epilog.scalar.ph3826.preheader ] ; 2 uses
  %indvars.iv2456 = phi i64 [ %indvars.iv.next2457, %vec.epilog.scalar.ph3826 ], [ %indvars.iv2456.ph, %vec.epilog.scalar.ph3826.preheader ] ; 2 uses
  %i.ecf = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %indvars.iv2456
  %i.ecg = load float, ptr %i.ecf, align 4, !tbaa !33
  %gep2966 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2461
  store float %i.ecg, ptr %gep2966, align 4, !tbaa !33
  %indvars.iv.next2462 = add nuw nsw i64 %indvars.iv2461, 1 ; 2 uses
  %indvars.iv.next2457 = add nsw i64 %indvars.iv2456, 1
  %i.ech = icmp samesign ult i64 %indvars.iv.next2462, %i.dvt
  br i1 %i.ech, label %vec.epilog.scalar.ph3826, label %.loopexit1910, !llvm.loop !78

.loopexit1910:                                    ; preds = %vec.epilog.scalar.ph3826, %middle.block3820, %vec.epilog.middle.block3835, %._crit_edge2031
  %indvars.iv.next2467 = add nuw nsw i64 %indvars.iv2466, 1 ; 2 uses
  %i.eci = icmp slt i64 %indvars.iv.next2467, %i.bvn
  %indvars.iv.next2443 = add i32 %indvars.iv2442, 128
  %indvars.iv.next2455 = add i32 %indvars.iv2454, 128
  %indvar.next3803 = add i64 %indvar3802, 1
  br i1 %i.eci, label %bb.ac, label %.preheader1943

.preheader1942.thread:                            ; preds = %.preheader1943, %.loopexit1945
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !tbaa !33
  br label %.preheader1908.1

.preheader1942:                                   ; preds = %._crit_edge2043
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !tbaa !33
  br i1 %i.bvi, label %.lr.ph2066, label %.preheader1908.1

bb.ad:                                            ; preds = %.lr.ph2045, %._crit_edge2043
  %indvars.iv2469 = phi i32 [ 516, %.lr.ph2045 ], [ %indvars.iv.next2470, %._crit_edge2043 ] ; 2 uses
  %.016942044 = phi i32 [ 4, %.lr.ph2045 ], [ %i.ecz, %._crit_edge2043 ] ; 2 uses
  %i.ecj = shl nuw i32 %.016942044, 1
  %i.eck = and i32 %i.ecj, 14                     ; 2 uses
  %i.ecl = shl nuw nsw i32 %i.eck, 1
  %i.ecm = lshr i32 %i.q, %i.ecl
  %i.ecn = and i32 %i.ecm, 1                      ; 3 uses
  %i.eco = or disjoint i32 %i.ecn, 4              ; 2 uses
  %i.ecp = icmp slt i32 %i.eco, %i.dvz
  br i1 %i.ecp, label %.lr.ph2042, label %._crit_edge2043

.lr.ph2042:                                       ; preds = %bb.ad
  %i.ecq = or disjoint i32 %i.ecn, %i.eck
  %i.ecr = shl nuw nsw i32 %i.ecq, 1
  %i.ecs = lshr i32 %i.q, %i.ecr
  %i.ect = and i32 %i.ecs, 3
  %i.ecu = zext nneg i32 %i.ect to i64
  %i.ecv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ecu
  %i.ecw = load ptr, ptr %i.ecv, align 8, !tbaa !171 ; 9 uses
  %i.ecx = or disjoint i32 %indvars.iv2469, %i.ecn
  %i.ecy = sext i32 %i.ecx to i64
  br label %bb.ae

._crit_edge2043:                                  ; preds = %bb.ae, %bb.ad
  %i.ecz = add nuw nsw i32 %.016942044, 1         ; 2 uses
  %i.eda = icmp slt i32 %i.ecz, %i.bvf
  %indvars.iv.next2470 = add i32 %indvars.iv2469, 128
  br i1 %i.eda, label %bb.ad, label %.preheader1942

bb.ae:                                            ; preds = %.lr.ph2042, %bb.ae
  %indvars.iv2471 = phi i64 [ %i.ecy, %.lr.ph2042 ], [ %indvars.iv.next2472, %bb.ae ] ; 11 uses
  %.016932039 = phi i32 [ %i.eco, %.lr.ph2042 ], [ %i.eho, %bb.ae ]
  %i.edb = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %indvars.iv2471 ; 3 uses
  %i.edc = load float, ptr %i.edb, align 4, !tbaa !33
  %i.edd = getelementptr inbounds nuw [4 x i8], ptr %i.ecw, i64 %indvars.iv2471 ; 6 uses
  %i.ede = load float, ptr %i.edd, align 4, !tbaa !33
  %i.edf = fsub reassoc nsz arcp contract afn float %i.edc, %i.ede ; 2 uses
  %i.edg = add nuw nsw i64 %indvars.iv2471, 512   ; 2 uses
  %i.edh = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.edg
  %i.edi = load float, ptr %i.edh, align 4, !tbaa !33
  %i.edj = getelementptr inbounds nuw [4 x i8], ptr %i.ecw, i64 %i.edg
  %i.edk = load float, ptr %i.edj, align 4, !tbaa !33
  %i.edl = fsub reassoc nsz arcp contract afn float %i.edi, %i.edk ; 2 uses
  %i.edm = fsub reassoc nsz arcp contract afn float %i.edf, %i.edl
  %i.edn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.edm)
  %i.edo = add nsw i64 %indvars.iv2471, -512      ; 2 uses
  %i.edp = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.edo
  %i.edq = load float, ptr %i.edp, align 4, !tbaa !33
  %i.edr = getelementptr inbounds [4 x i8], ptr %i.ecw, i64 %i.edo
  %i.eds = load float, ptr %i.edr, align 4, !tbaa !33
  %i.edt = fsub reassoc nsz arcp contract afn float %i.edq, %i.eds ; 2 uses
  %i.edu = fsub reassoc nsz arcp contract afn float %i.edt, %i.edf
  %i.edv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.edu)
  %i.edw = fadd reassoc nsz arcp contract afn float %i.edv, %i.edn
  %i.edx = fsub reassoc nsz arcp contract afn float %i.edt, %i.edl
  %i.edy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.edx)
  %i.edz = fsub reassoc nsz arcp contract afn float %i.edw, %i.edy
  %i.eea = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.edz)
  %i.eeb = lshr i64 %indvars.iv2471, 1
  %i.eec = and i64 %i.eeb, 2147483647             ; 6 uses
  %i.eed = getelementptr inbounds nuw [4 x i8], ptr %i.btj, i64 %i.eec
  store float %i.eea, ptr %i.eed, align 4, !tbaa !33
  %i.eee = load float, ptr %i.edb, align 4, !tbaa !33
  %i.eef = load float, ptr %i.edd, align 4, !tbaa !33
  %i.eeg = fsub reassoc nsz arcp contract afn float %i.eee, %i.eef ; 2 uses
  %i.eeh = add nuw nsw i64 %indvars.iv2471, 4     ; 2 uses
  %i.eei = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.eeh
  %i.eej = load float, ptr %i.eei, align 4, !tbaa !33
  %i.eek = getelementptr inbounds nuw [4 x i8], ptr %i.ecw, i64 %i.eeh
  %i.eel = load float, ptr %i.eek, align 4, !tbaa !33
  %i.eem = fsub reassoc nsz arcp contract afn float %i.eej, %i.eel ; 2 uses
  %i.een = fsub reassoc nsz arcp contract afn float %i.eeg, %i.eem
  %i.eeo = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.een)
  %i.eep = add nsw i64 %indvars.iv2471, -4        ; 2 uses
  %i.eeq = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.eep
  %i.eer = load float, ptr %i.eeq, align 4, !tbaa !33
  %i.ees = getelementptr inbounds [4 x i8], ptr %i.ecw, i64 %i.eep
  %i.eet = load float, ptr %i.ees, align 4, !tbaa !33
  %i.eeu = fsub reassoc nsz arcp contract afn float %i.eer, %i.eet ; 2 uses
  %i.eev = fsub reassoc nsz arcp contract afn float %i.eeu, %i.eeg
  %i.eew = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eev)
  %i.eex = fadd reassoc nsz arcp contract afn float %i.eew, %i.eeo
  %i.eey = fsub reassoc nsz arcp contract afn float %i.eeu, %i.eem
  %i.eez = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eey)
  %i.efa = fsub reassoc nsz arcp contract afn float %i.eex, %i.eez
  %i.efb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.efa)
  %i.efc = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.eec
  store float %i.efb, ptr %i.efc, align 4, !tbaa !33
  %i.efd = load float, ptr %i.edb, align 4, !tbaa !33
  %i.efe = fmul reassoc nsz arcp contract afn float %i.efd, 2.000000e+00 ; 2 uses
  %i.eff = add nuw nsw i64 %indvars.iv2471, 256   ; 2 uses
  %i.efg = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.eff
  %i.efh = load float, ptr %i.efg, align 4, !tbaa !33
  %i.efi = fadd reassoc nsz arcp contract afn float %i.efe, %i.efh
  %i.efj = add nsw i64 %indvars.iv2471, -256      ; 2 uses
  %i.efk = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.efj
  %i.efl = load float, ptr %i.efk, align 4, !tbaa !33
  %i.efm = fadd reassoc nsz arcp contract afn float %i.efi, %i.efl
  %i.efn = fmul reassoc nsz arcp contract afn float %i.efm, 2.500000e-01 ; 2 uses
  %indvars.iv.next2472 = add nuw nsw i64 %indvars.iv2471, 2 ; 3 uses
  %i.efo = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %indvars.iv.next2472
  %i.efp = load float, ptr %i.efo, align 4, !tbaa !33
  %i.efq = fadd reassoc nsz arcp contract afn float %i.efp, %i.efe
  %i.efr = add nsw i64 %indvars.iv2471, -2        ; 2 uses
  %i.efs = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.efr
  %i.eft = load float, ptr %i.efs, align 4, !tbaa !33
  %i.efu = fadd reassoc nsz arcp contract afn float %i.efq, %i.eft
  %i.efv = fmul reassoc nsz arcp contract afn float %i.efu, 2.500000e-01 ; 2 uses
  %i.efw = load float, ptr %i.edd, align 4, !tbaa !33
  %i.efx = fmul reassoc nsz arcp contract afn float %i.efw, 2.000000e+00
  %i.efy = getelementptr inbounds nuw [4 x i8], ptr %i.ecw, i64 %i.eff ; 2 uses
  %i.efz = load float, ptr %i.efy, align 4, !tbaa !33
  %i.ega = fadd reassoc nsz arcp contract afn float %i.efx, %i.efz
  %i.egb = getelementptr inbounds [4 x i8], ptr %i.ecw, i64 %i.efj ; 2 uses
  %i.egc = load float, ptr %i.egb, align 4, !tbaa !33
  %i.egd = fadd reassoc nsz arcp contract afn float %i.ega, %i.egc
  %i.ege = fmul reassoc nsz arcp contract afn float %i.egd, 2.500000e-01
  %i.egf = fsub reassoc nsz arcp contract afn float %i.efn, %i.ege
  %i.egg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.egf)
  %i.egh = fadd reassoc nsz arcp contract afn float %i.egg, f0x3727C5AC
  %i.egi = getelementptr inbounds nuw [4 x i8], ptr %i.btl, i64 %i.eec
  store float %i.egh, ptr %i.egi, align 4, !tbaa !33
  %i.egj = load float, ptr %i.edd, align 4, !tbaa !33
  %i.egk = fmul reassoc nsz arcp contract afn float %i.egj, 2.000000e+00
  %i.egl = getelementptr inbounds nuw [4 x i8], ptr %i.ecw, i64 %indvars.iv.next2472 ; 2 uses
  %i.egm = load float, ptr %i.egl, align 4, !tbaa !33
  %i.egn = fadd reassoc nsz arcp contract afn float %i.egk, %i.egm
  %i.ego = getelementptr inbounds [4 x i8], ptr %i.ecw, i64 %i.efr ; 2 uses
  %i.egp = load float, ptr %i.ego, align 4, !tbaa !33
  %i.egq = fadd reassoc nsz arcp contract afn float %i.egn, %i.egp
  %i.egr = fmul reassoc nsz arcp contract afn float %i.egq, 2.500000e-01
  %i.egs = fsub reassoc nsz arcp contract afn float %i.efv, %i.egr
  %i.egt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.egs)
  %i.egu = fadd reassoc nsz arcp contract afn float %i.egt, f0x3727C5AC
  %i.egv = getelementptr inbounds nuw [4 x i8], ptr %i.btk, i64 %i.eec
  store float %i.egu, ptr %i.egv, align 4, !tbaa !33
  %i.egw = load float, ptr %i.edd, align 4, !tbaa !33
  %i.egx = fmul reassoc nsz arcp contract afn float %i.egw, 2.000000e+00
  %i.egy = load float, ptr %i.efy, align 4, !tbaa !33
  %i.egz = fadd reassoc nsz arcp contract afn float %i.egx, %i.egy
  %i.eha = load float, ptr %i.egb, align 4, !tbaa !33
  %i.ehb = fadd reassoc nsz arcp contract afn float %i.egz, %i.eha
  %i.ehc = fmul reassoc nsz arcp contract afn float %i.ehb, 2.500000e-01
  %i.ehd = fadd reassoc nsz arcp contract afn float %i.ehc, %i.efn
  %i.ehe = getelementptr inbounds nuw [4 x i8], ptr %i.btn, i64 %i.eec
  store float %i.ehd, ptr %i.ehe, align 4, !tbaa !33
  %i.ehf = load float, ptr %i.edd, align 4, !tbaa !33
  %i.ehg = fmul reassoc nsz arcp contract afn float %i.ehf, 2.000000e+00
  %i.ehh = load float, ptr %i.egl, align 4, !tbaa !33
  %i.ehi = fadd reassoc nsz arcp contract afn float %i.ehg, %i.ehh
  %i.ehj = load float, ptr %i.ego, align 4, !tbaa !33
  %i.ehk = fadd reassoc nsz arcp contract afn float %i.ehi, %i.ehj
  %i.ehl = fmul reassoc nsz arcp contract afn float %i.ehk, 2.500000e-01
  %i.ehm = fadd reassoc nsz arcp contract afn float %i.ehl, %i.efv
  %i.ehn = getelementptr inbounds nuw [4 x i8], ptr %i.btm, i64 %i.eec
  store float %i.ehm, ptr %i.ehn, align 4, !tbaa !33
  %i.eho = add nuw nsw i32 %.016932039, 2         ; 2 uses
  %i.ehp = icmp slt i32 %i.eho, %i.dvz
  br i1 %i.ehp, label %bb.ae, label %._crit_edge2043

.lr.ph2066:                                       ; preds = %.preheader1942
  %i.ehq = add nsw i32 %i.bwj, -8                 ; 2 uses
  %i.ehr = add i32 %i.bwh, %9
  %i.ehs = or disjoint i32 %.neg4045, 8
  %i.eht = sub i32 %i.ehs, %i.bwh
  br label %bb.af

.preheader1940:                                   ; preds = %bb.ag
  %.pre = load float, ptr %i.ev, align 16, !tbaa !33 ; 2 uses
  %i.ehu = fcmp reassoc nsz arcp contract afn ogt float %.pre, 1.000000e-10
  br i1 %i.ehu, label %bb.ah, label %.preheader1908.1

bb.af:                                            ; preds = %.lr.ph2066, %bb.ag
  %indvars.iv2483 = phi i32 [ 1032, %.lr.ph2066 ], [ %indvars.iv.next2484, %bb.ag ] ; 3 uses
  %.016882065 = phi i32 [ 8, %.lr.ph2066 ], [ %i.eng, %bb.ag ] ; 2 uses
  %i.ehv = shl nuw i32 %.016882065, 1
  %i.ehw = and i32 %i.ehv, 14                     ; 2 uses
  %i.ehx = shl nuw nsw i32 %i.ehw, 1
  %i.ehy = lshr i32 %i.q, %i.ehx
  %i.ehz = and i32 %i.ehy, 1                      ; 6 uses
  %i.eia = or disjoint i32 %i.ehz, 8              ; 4 uses
  %i.eib = icmp slt i32 %i.eia, %i.ehq
  br i1 %i.eib, label %.lr.ph2052, label %bb.ag

.lr.ph2052:                                       ; preds = %bb.af
  %i.eic = or disjoint i32 %i.ehz, %i.ehw
  %i.eid = shl nuw nsw i32 %i.eic, 1
  %i.eie = lshr i32 %i.q, %i.eid
  %i.eif = and i32 %i.eie, 3                      ; 2 uses
  %i.eig = zext nneg i32 %i.eif to i64
  %i.eih = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.eig
  %i.eii = load ptr, ptr %i.eih, align 8, !tbaa !171 ; 2 uses
  %i.eij = lshr i32 %i.eif, 1
  %i.eik = zext nneg i32 %i.eij to i64            ; 6 uses
  %i.eil = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.eik ; 2 uses
  %i.eim = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.eik ; 2 uses
  %i.ein = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.eik ; 2 uses
  %i.eio = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.eik ; 2 uses
  %i.eip = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.eik ; 2 uses
  %i.eiq = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.eik ; 2 uses
  %.promoted = load float, ptr %i.eil, align 4, !tbaa !33 ; 3 uses
  %.promoted2055 = load float, ptr %i.eim, align 4, !tbaa !33 ; 3 uses
  %.promoted2057 = load float, ptr %i.ein, align 4, !tbaa !33 ; 3 uses
  %.promoted2059 = load float, ptr %i.eio, align 4, !tbaa !33 ; 3 uses
  %.promoted2061 = load float, ptr %i.eip, align 4, !tbaa !33 ; 3 uses
  %.promoted2063 = load float, ptr %i.eiq, align 4, !tbaa !33 ; 3 uses
  %i.eir = or disjoint i32 %indvars.iv2483, %i.ehz
  %i.eis = sext i32 %i.eir to i64                 ; 4 uses
  %i.eit = sub i32 %i.ehr, %i.ehz                 ; 2 uses
  %i.eiu = lshr i32 %i.eit, 1
  %narrow4044 = add nuw i32 %i.eiu, 1
  %i.eiv = zext i32 %narrow4044 to i64            ; 2 uses
  %min.iters.check3747 = icmp ult i32 %i.eit, 16
  br i1 %min.iters.check3747, label %scalar.ph3746.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph2052
  %i.eiw = or disjoint i32 %indvars.iv2483, %i.ehz
  %i.eix = add i32 %i.eht, %i.ehz
  %i.eiy = or i32 %i.eix, 1
  %i.eiz = icmp ult i32 %i.eiy, %i.eiw
  br i1 %i.eiz, label %scalar.ph3746.preheader, label %vector.ph3748

vector.ph3748:                                    ; preds = %vector.scevcheck
  %i.eja = and i64 %i.eiv, 7                      ; 2 uses
  %i.ejb = icmp eq i64 %i.eja, 0
  %i.ejc = select i1 %i.ejb, i64 8, i64 %i.eja
  %n.vec3749 = sub nsw i64 %i.eiv, %i.ejc         ; 3 uses
  %i.ejd = shl nsw i64 %n.vec3749, 1
  %i.eje = add nsw i64 %i.ejd, %i.eis
  %i.ejf = trunc i64 %n.vec3749 to i32
  %i.ejg = shl i32 %i.ejf, 1
  %i.ejh = add i32 %i.eia, %i.ejg
  %i.eji = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2063, i64 0
  %i.ejj = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2061, i64 0
  %i.ejk = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2059, i64 0
  %i.ejl = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2057, i64 0
  %i.ejm = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted2055, i64 0
  %i.ejn = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.promoted, i64 0
  br label %vector.body3750

vector.body3750:                                  ; preds = %vector.body3750, %vector.ph3748
  %index3751 = phi i64 [ 0, %vector.ph3748 ], [ %index.next3789, %vector.body3750 ] ; 2 uses
  %vec.phi3752 = phi <8 x float> [ %i.eji, %vector.ph3748 ], [ %i.emy, %vector.body3750 ]
  %vec.phi3753 = phi <8 x float> [ %i.ejj, %vector.ph3748 ], [ %i.emw, %vector.body3750 ]
  %vec.phi3754 = phi <8 x float> [ %i.ejk, %vector.ph3748 ], [ %i.emt, %vector.body3750 ]
  %vec.phi3755 = phi <8 x float> [ %i.ejl, %vector.ph3748 ], [ %i.elq, %vector.body3750 ]
  %vec.phi3756 = phi <8 x float> [ %i.ejm, %vector.ph3748 ], [ %i.elo, %vector.body3750 ]
  %vec.phi3757 = phi <8 x float> [ %i.ejn, %vector.ph3748 ], [ %i.ell, %vector.body3750 ]
  %i.ejo = shl nuw i64 %index3751, 1
  %i.ejp = add nuw i64 %i.ejo, %i.eis             ; 3 uses
  %i.ejq = getelementptr [4 x i8], ptr %i.btg, i64 %i.ejp ; 6 uses
  %i.ejr = getelementptr inbounds nuw i8, ptr %i.ejq, i64 508
  %wide.vec3758 = load <16 x float>, ptr %i.ejr, align 4, !tbaa !33 ; 2 uses
  %strided.vec3759 = shufflevector <16 x float> %wide.vec3758, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3760 = shufflevector <16 x float> %wide.vec3758, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ejs = getelementptr i8, ptr %i.ejq, i64 -516
  %wide.vec3761 = load <16 x float>, ptr %i.ejs, align 4, !tbaa !33 ; 2 uses
  %strided.vec3762 = shufflevector <16 x float> %wide.vec3761, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3763 = shufflevector <16 x float> %wide.vec3761, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ejt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3760, %strided.vec3763
  %i.eju = fmul reassoc nsz arcp contract afn <8 x float> %i.ejt, splat (float 3.125000e-01)
  %i.ejv = getelementptr inbounds nuw i8, ptr %i.ejq, i64 516
  %wide.vec3764 = load <16 x float>, ptr %i.ejv, align 4, !tbaa !33
  %strided.vec3765 = shufflevector <16 x float> %wide.vec3764, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ejw = getelementptr i8, ptr %i.ejq, i64 -508
  %wide.vec3766 = load <16 x float>, ptr %i.ejw, align 4, !tbaa !33
  %strided.vec3767 = shufflevector <16 x float> %wide.vec3766, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ejx = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3765, %strided.vec3759
  %i.ejy = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3767, %strided.vec3762
  %i.ejz = fsub reassoc nsz arcp contract afn <8 x float> %i.ejx, %i.ejy
  %i.eka = fmul reassoc nsz arcp contract afn <8 x float> %i.ejz, splat (float 9.375000e-02)
  %i.ekb = fadd reassoc nsz arcp contract afn <8 x float> %i.eka, %i.eju ; 2 uses
  %i.ekc = getelementptr inbounds nuw [4 x i8], ptr %i.eii, i64 %i.ejp
  %wide.vec3768 = load <16 x float>, ptr %i.ekc, align 4, !tbaa !33
  %strided.vec3769 = shufflevector <16 x float> %wide.vec3768, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ekd = getelementptr i8, ptr %i.ejq, i64 -4
  %wide.vec3770 = load <16 x float>, ptr %i.ekd, align 4, !tbaa !33 ; 2 uses
  %strided.vec3771 = shufflevector <16 x float> %wide.vec3770, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3772 = shufflevector <16 x float> %wide.vec3770, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.eke = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3769, %strided.vec3772 ; 4 uses
  %i.ekf = trunc nsw i64 %i.ejp to i32
  %i.ekg = lshr i32 %i.ekf, 1                     ; 5 uses
  %i.ekh = zext nneg i32 %i.ekg to i64            ; 2 uses
  %i.eki = getelementptr inbounds nuw [4 x i8], ptr %i.btj, i64 %i.ekh
  %wide.load3773 = load <8 x float>, ptr %i.eki, align 4, !tbaa !33
  %i.ekj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3773, splat (float 2.500000e-01)
  %i.ekk = or disjoint i32 %i.ekg, 1
  %i.ekl = zext nneg i32 %i.ekk to i64            ; 3 uses
  %i.ekm = getelementptr inbounds nuw [4 x i8], ptr %i.btj, i64 %i.ekl
  %wide.load3774 = load <8 x float>, ptr %i.ekm, align 4, !tbaa !33
  %i.ekn = add nsw i32 %i.ekg, -1
  %i.eko = sext i32 %i.ekn to i64                 ; 3 uses
  %i.ekp = getelementptr inbounds [4 x i8], ptr %i.btj, i64 %i.eko
  %wide.load3775 = load <8 x float>, ptr %i.ekp, align 4, !tbaa !33
  %i.ekq = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3775, %wide.load3774
  %i.ekr = fmul reassoc nsz arcp contract afn <8 x float> %i.ekq, splat (float 1.250000e-01)
  %i.eks = fadd reassoc nsz arcp contract afn <8 x float> %i.ekr, %i.ekj
  %i.ekt = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eks)
  %i.eku = add nsw i32 %i.ekg, -128
  %i.ekv = sext i32 %i.eku to i64                 ; 3 uses
  %i.ekw = getelementptr inbounds [4 x i8], ptr %i.btn, i64 %i.ekv
  %wide.load3776 = load <8 x float>, ptr %i.ekw, align 4, !tbaa !33
  %i.ekx = add nuw nsw i32 %i.ekg, 128
  %i.eky = zext nneg i32 %i.ekx to i64            ; 3 uses
  %i.ekz = getelementptr inbounds nuw [4 x i8], ptr %i.btn, i64 %i.eky
  %wide.load3777 = load <8 x float>, ptr %i.ekz, align 4, !tbaa !33
  %i.ela = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3777, %wide.load3776 ; 2 uses
  %i.elb = fmul reassoc nsz arcp contract afn <8 x float> %i.ekt, %i.ela
  %i.elc = fmul reassoc nsz arcp contract afn <8 x float> %i.ela, splat (float 1.000000e-01)
  %i.eld = getelementptr inbounds [4 x i8], ptr %i.btl, i64 %i.ekv
  %wide.load3778 = load <8 x float>, ptr %i.eld, align 4, !tbaa !33
  %i.ele = getelementptr inbounds nuw [4 x i8], ptr %i.btl, i64 %i.eky
  %wide.load3779 = load <8 x float>, ptr %i.ele, align 4, !tbaa !33
  %i.elf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3778, splat (float f0x3727C5AC)
  %i.elg = fadd reassoc nsz arcp contract afn <8 x float> %i.elf, %i.elc
  %i.elh = fadd reassoc nsz arcp contract afn <8 x float> %i.elg, %wide.load3779
  %i.eli = fdiv reassoc nsz arcp contract afn <8 x float> %i.elb, %i.elh ; 2 uses
  %i.elj = fmul reassoc nsz arcp contract afn <8 x float> %i.eke, %i.eke ; 2 uses
  %i.elk = fmul reassoc nsz arcp contract afn <8 x float> %i.eli, %i.elj
  %i.ell = fadd reassoc nsz arcp contract afn <8 x float> %i.elk, %vec.phi3757 ; 2 uses
  %i.elm = fmul reassoc nsz arcp contract afn <8 x float> %i.eli, %i.ekb ; 2 uses
  %i.eln = fmul reassoc nsz arcp contract afn <8 x float> %i.elm, %i.eke
  %i.elo = fadd reassoc nsz arcp contract afn <8 x float> %i.eln, %vec.phi3756 ; 2 uses
  %i.elp = fmul reassoc nsz arcp contract afn <8 x float> %i.elm, %i.ekb
  %i.elq = fadd reassoc nsz arcp contract afn <8 x float> %i.elp, %vec.phi3755 ; 2 uses
  %i.elr = getelementptr inbounds nuw i8, ptr %i.ejq, i64 4
  %wide.vec3780 = load <16 x float>, ptr %i.elr, align 4, !tbaa !33
  %strided.vec3781 = shufflevector <16 x float> %wide.vec3780, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.els = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3781, %strided.vec3771
  %i.elt = fmul reassoc nsz arcp contract afn <8 x float> %i.els, splat (float 3.125000e-01)
  %i.elu = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3767, %strided.vec3765
  %i.elv = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3759, %strided.vec3762
  %i.elw = fsub reassoc nsz arcp contract afn <8 x float> %i.elu, %i.elv
  %i.elx = fmul reassoc nsz arcp contract afn <8 x float> %i.elw, splat (float 9.375000e-02)
  %i.ely = fadd reassoc nsz arcp contract afn <8 x float> %i.elt, %i.elx ; 2 uses
  %i.elz = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.ekh
  %wide.load3782 = load <8 x float>, ptr %i.elz, align 4, !tbaa !33
  %i.ema = fmul reassoc nsz arcp contract afn <8 x float> %wide.load3782, splat (float 2.500000e-01)
  %i.emb = getelementptr inbounds nuw [4 x i8], ptr %i.bti, i64 %i.eky
  %wide.load3783 = load <8 x float>, ptr %i.emb, align 4, !tbaa !33
  %i.emc = getelementptr inbounds [4 x i8], ptr %i.bti, i64 %i.ekv
  %wide.load3784 = load <8 x float>, ptr %i.emc, align 4, !tbaa !33
  %i.emd = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3784, %wide.load3783
  %i.eme = fmul reassoc nsz arcp contract afn <8 x float> %i.emd, splat (float 1.250000e-01)
  %i.emf = fadd reassoc nsz arcp contract afn <8 x float> %i.eme, %i.ema
  %i.emg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.emf)
  %i.emh = getelementptr inbounds [4 x i8], ptr %i.btm, i64 %i.eko
  %wide.load3785 = load <8 x float>, ptr %i.emh, align 4, !tbaa !33
  %i.emi = getelementptr inbounds nuw [4 x i8], ptr %i.btm, i64 %i.ekl
  %wide.load3786 = load <8 x float>, ptr %i.emi, align 4, !tbaa !33
  %i.emj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3786, %wide.load3785 ; 2 uses
  %i.emk = fmul reassoc nsz arcp contract afn <8 x float> %i.emg, %i.emj
  %i.eml = fmul reassoc nsz arcp contract afn <8 x float> %i.emj, splat (float 1.000000e-01)
  %i.emm = getelementptr inbounds [4 x i8], ptr %i.btk, i64 %i.eko
  %wide.load3787 = load <8 x float>, ptr %i.emm, align 4, !tbaa !33
  %i.emn = getelementptr inbounds nuw [4 x i8], ptr %i.btk, i64 %i.ekl
  %wide.load3788 = load <8 x float>, ptr %i.emn, align 4, !tbaa !33
  %i.emo = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3787, splat (float f0x3727C5AC)
  %i.emp = fadd reassoc nsz arcp contract afn <8 x float> %i.emo, %i.eml
  %i.emq = fadd reassoc nsz arcp contract afn <8 x float> %i.emp, %wide.load3788
  %i.emr = fdiv reassoc nsz arcp contract afn <8 x float> %i.emk, %i.emq ; 2 uses
  %i.ems = fmul reassoc nsz arcp contract afn <8 x float> %i.emr, %i.elj
end_hunk_2
