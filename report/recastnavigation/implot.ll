Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot11UpdateInputER10ImPlotPlot:bb.a
  %i.bqn = fcmp olt double %i.bqk, %i.bqm
  %i.bqo = fadd double %i.bqj, %i.bqm
  %.111.i640 = select i1 %i.bqn, double %i.bqo, double %.010.i639
  %i.bqp = getelementptr i8, ptr %i.bkp, i64 1240
  %i.bqq = load double, ptr %i.bqp, align 8, !tbaa !305 ; 2 uses
  %i.bqr = fcmp ogt double %i.bqk, %i.bqq
  %i.bqs = fadd double %i.bqj, %i.bqq
  %.2.i641 = select i1 %i.bqr, double %i.bqs, double %.111.i640 ; 7 uses
  %i.bqt = fcmp ugt double %.2.i641, %i.bqj
  br i1 %i.bqt, label %bb.gz, label %_ZN10ImPlotAxis6SetMaxEdb.exit646

bb.gz:                                            ; preds = %bb.gy
  %i.bqu = getelementptr i8, ptr %i.bkp, i64 1176 ; 2 uses
  store double %.2.i641, ptr %i.bqu, align 8, !tbaa !302
  %i.bqv = fptosi double %.2.i641 to i64
  %i.bqw = tail call double @llvm.floor.f64(double %.2.i641)
  %i.bqx = fmul double %i.bqw, -1.000000e+06
  %i.bqy = tail call double @llvm.fmuladd.f64(double %.2.i641, double 1.000000e+06, double %i.bqx)
  %i.bqz = fptosi double %i.bqy to i32            ; 2 uses
  %i.bra = sdiv i32 %i.bqz, 1000000
  %i.brb = sext i32 %i.bra to i64
  %i.brc = add nsw i64 %i.brb, %i.bqv
  %i.brd = srem i32 %i.bqz, 1000000
  %i.bre = getelementptr i8, ptr %i.bkp, i64 1384
  store i64 %i.brc, ptr %i.bre, align 8, !tbaa !285
  %.sroa.4.0..sroa_idx.i642 = getelementptr i8, ptr %i.bkp, i64 1392
  store i32 %i.brd, ptr %.sroa.4.0..sroa_idx.i642, align 8, !tbaa !29
  %i.brf = getelementptr i8, ptr %i.bkp, i64 1428
  %i.brg = load float, ptr %i.brf, align 4, !tbaa !306
  %i.brh = load float, ptr %i.blf, align 8, !tbaa !307
  %i.bri = fsub float %i.brg, %i.brh
  %i.brj = fpext float %i.bri to double
  %i.brk = fsub double %.2.i641, %i.bqj
  %i.brl = fdiv double %i.brj, %i.brk
  store double %i.brl, ptr %i.blj, align 8, !tbaa !308
  %i.brm = getelementptr i8, ptr %i.bkp, i64 1400 ; 2 uses
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !309 ; 2 uses
  %.not.i.i643 = icmp eq ptr %i.brn, null
  br i1 %.not.i.i643, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bro = getelementptr i8, ptr %i.bkp, i64 1416 ; 2 uses
  %i.brp = load ptr, ptr %i.bro, align 8, !tbaa !310
  %i.brq = tail call noundef double %i.brn(double noundef %i.bqj, ptr noundef %i.brp) #32, !inline_history !9
  %i.brr = getelementptr i8, ptr %i.bkp, i64 1432
  store double %i.brq, ptr %i.brr, align 8, !tbaa !311
  %i.brs = load ptr, ptr %i.brm, align 8, !tbaa !309
  %i.brt = load double, ptr %i.bqu, align 8, !tbaa !302
  %i.bru = load ptr, ptr %i.bro, align 8, !tbaa !310
  %i.brv = tail call noundef double %i.brs(double noundef %i.brt, ptr noundef %i.bru) #32, !inline_history !9
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644

bb.hb:                                            ; preds = %bb.gz
  %i.brw = getelementptr i8, ptr %i.bkp, i64 1432
  store double %i.bqj, ptr %i.brw, align 8, !tbaa !311
  br label %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644

_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644: ; preds = %bb.hb, %bb.ha
  %.sink.i.i645 = phi double [ %.2.i641, %bb.hb ], [ %i.brv, %bb.ha ]
  %i.brx = getelementptr i8, ptr %i.bkp, i64 1440
  store double %.sink.i.i645, ptr %i.brx, align 8, !tbaa !312
  br label %_ZN10ImPlotAxis6SetMaxEdb.exit646

_ZN10ImPlotAxis6SetMaxEdb.exit646:                ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit622, %bb.gr, %.preheader, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i613, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644, %bb.gy, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i636, %bb.gx, %_ZN10ImPlotAxis6SetMinEdb.exit634, %_ZNK10ImPlotAxis13IsInputLockedEv.exit616
  %.15 = phi i1 [ true, %_ZN10ImPlotAxis20UpdateTransformCacheEv.exit.i644 ], [ %.14744, %_ZNK10ImPlotAxis13IsInputLockedEv.exit616 ], [ true, %_ZN10ImPlotAxis6SetMinEdb.exit634 ], [ true, %bb.gx ], [ true, %_ZNK10ImPlotAxis11IsLockedMaxEv.exit.i636 ], [ true, %bb.gy ], [ %.14744, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i613 ], [ %.14744, %.preheader ], [ %.14744, %bb.gr ], [ true, %_ZNK10ImPlotAxis12PixelsToPlotEf.exit622 ] ; 2 uses
  %indvars.iv.next761 = add nuw nsw i64 %indvars.iv760, 1 ; 2 uses
  %exitcond762.not = icmp eq i64 %indvars.iv.next761, 3
  br i1 %exitcond762.not, label %bb.gq, label %.preheader, !llvm.loop !565

bb.hc:                                            ; preds = %bb.gq
  %i.bry = load i32, ptr %i.ht, align 8, !tbaa !567 ; 2 uses
  %i.brz = load i32, ptr %i.bck, align 8, !tbaa !577 ; 2 uses
  %i.bsa = and i32 %i.brz, %i.bry
  %i.bsb = icmp eq i32 %i.bsa, %i.brz
  br i1 %i.bsb, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  %i.bsc = load i32, ptr %i.bco, align 4, !tbaa !578 ; 2 uses
  %i.bsd = and i32 %i.bsc, %i.bry
  %i.bse = icmp eq i32 %i.bsd, %i.bsc
  br i1 %i.bse, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd, %bb.gq
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.e, i64 1512
  store i8 0, ptr %i.bsf, align 8, !tbaa !214
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd, %bb.hc
  store i8 0, ptr %i.lh, align 2, !tbaa !361
  %i.bsg = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 0, ptr %i.bsg, align 1, !tbaa !378
  br label %bb.hx

bb.hg:                                            ; preds = %bb.ge
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.e, i64 1480
  %i.bsi = load i32, ptr %i.bsh, align 8, !tbaa !581
  %i.bsj = sext i32 %i.bsi to i64
  %i.bsk = getelementptr inbounds i8, ptr %i.lt, i64 %i.bsj
  %i.bsl = load i8, ptr %i.bsk, align 1, !tbaa !262, !range !263, !noundef !264
  %i.bsm = trunc nuw i8 %i.bsl to i1
  br i1 %i.bsm, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i8 0, ptr %i.lh, align 2, !tbaa !361
  %i.bsn = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 0, ptr %i.bsn, align 1, !tbaa !378
  %i.bso = getelementptr inbounds nuw i8, ptr %i.e, i64 1512
  store i8 0, ptr %i.bso, align 8, !tbaa !214
  br label %bb.hx

bb.hi:                                            ; preds = %bb.hg
  %foldExtExtBinop = fmul <2 x float> %i.bcu, %i.bcu
  %i.bsp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bsq = extractelement <2 x float> %i.bcu, i64 0 ; 2 uses
  %i.bsr = tail call noundef float @llvm.fmuladd.f32(float %i.bsq, float %i.bsq, float %i.bsp)
  %i.bss = fcmp ogt float %i.bsr, 4.000000e+00
  br i1 %i.bss, label %bb.hj, label %bb.hw

bb.hj:                                            ; preds = %bb.hi
  %i.bst = tail call noundef zeroext i1 @_ZNK10ImPlotPlot13IsInputLockedEv(ptr noundef nonnull align 8 dereferenceable(2557) %0)
  br i1 %i.bst, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  tail call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 10) #32
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.e, i64 1512
  store i8 0, ptr %i.bsu, align 8, !tbaa !214
  %i.bsv = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 0, ptr %i.bsv, align 1, !tbaa !378
  br label %bb.hx

bb.hl:                                            ; preds = %bb.hj
  %i.bsw = load i32, ptr %i.ht, align 8, !tbaa !567 ; 2 uses
  %i.bsx = load i32, ptr %i.bck, align 8, !tbaa !577 ; 2 uses
  %i.bsy = and i32 %i.bsx, %i.bsw
  %i.bsz = icmp eq i32 %i.bsy, %i.bsx
  br i1 %i.bsz, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.bta = tail call fastcc noundef zeroext i1 @_ZN6ImPlotL18AllAxesInputLockedEP10ImPlotAxisi(ptr noundef %i.bk)
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.btb = phi i1 [ true, %bb.hl ], [ %i.bta, %bb.hm ]
  %i.btc = load i32, ptr %i.bco, align 4, !tbaa !578 ; 2 uses
  %i.btd = and i32 %i.btc, %i.bsw
  %i.bte = icmp eq i32 %i.btd, %i.btc
  br i1 %i.bte, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.btf = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.btg = tail call fastcc noundef zeroext i1 @_ZN6ImPlotL18AllAxesInputLockedEP10ImPlotAxisi(ptr noundef %i.btf)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.bth = phi i1 [ true, %bb.hn ], [ %i.btg, %bb.ho ]
  br i1 %i.btb, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bti = load float, ptr %i.g, align 8, !tbaa !358
  %i.btj = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.btk = load float, ptr %i.btj, align 8, !tbaa !359
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hp
  %i.btl = load float, ptr %i.bcf, align 8, !tbaa !579 ; 4 uses
  %i.btm = load float, ptr %i.bcg, align 8, !tbaa !376 ; 4 uses
  %i.btn = fcmp olt float %i.btl, %i.btm
  %i.bto = select i1 %i.btn, float %i.btl, float %i.btm
  %i.btp = fcmp oge float %i.btl, %i.btm
  %i.btq = select i1 %i.btp, float %i.btl, float %i.btm
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.btr = phi float [ %i.bti, %bb.hq ], [ %i.bto, %bb.hr ]
  %i.bts = phi float [ %i.btk, %bb.hq ], [ %i.btq, %bb.hr ]
  %i.btt = getelementptr inbounds nuw i8, ptr %0, i64 2520
  br i1 %i.bth, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.btu = getelementptr inbounds nuw i8, ptr %0, i64 2492
  %i.btv = load float, ptr %i.btu, align 4, !tbaa !373 ; 2 uses
  %i.btw = getelementptr inbounds nuw i8, ptr %0, i64 2500
  %i.btx = load float, ptr %i.btw, align 4, !tbaa !374
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  %i.bty = load float, ptr %i.bch, align 4, !tbaa !580 ; 4 uses
  %i.btz = load float, ptr %i.bci, align 4, !tbaa !377 ; 4 uses
  %i.bua = fcmp olt float %i.bty, %i.btz
  %i.bub = select i1 %i.bua, float %i.bty, float %i.btz
  %i.buc = fcmp oge float %i.bty, %i.btz
  %i.bud = select i1 %i.buc, float %i.bty, float %i.btz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2492
  %.pre788 = load float, ptr %.phi.trans.insert, align 4, !tbaa !173
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.bue = phi float [ %i.btv, %bb.ht ], [ %.pre788, %bb.hu ]
  %.sink = phi float [ %i.btv, %bb.ht ], [ %i.bub, %bb.hu ]
  %i.buf = phi float [ %i.btx, %bb.ht ], [ %i.bud, %bb.hu ]
  %1 = load float, ptr %i.g, align 8, !tbaa !172
  %i.bug = insertelement <4 x float> poison, float %i.btr, i64 0
  %2 = insertelement <4 x float> %i.bug, float %.sink, i64 1
  %i.buh = insertelement <4 x float> %2, float %i.bts, i64 2
  %i.bui = insertelement <4 x float> %i.buh, float %i.buf, i64 3
  %i.buj = insertelement <4 x float> poison, float %1, i64 0
  %i.buk = insertelement <4 x float> %i.buj, float %i.bue, i64 1
  %i.bul = shufflevector <4 x float> %i.buk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bum = fsub <4 x float> %i.bui, %i.bul
  store <4 x float> %i.bum, ptr %i.btt, align 8, !tbaa !41
  %i.bun = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 1, ptr %i.bun, align 1, !tbaa !378
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hi
  %i.buo = getelementptr inbounds nuw i8, ptr %0, i64 2555
  store i8 0, ptr %i.buo, align 1, !tbaa !378
  br label %bb.hx

bb.hx:                                            ; preds = %.loopexit, %bb.hh, %bb.hk, %bb.hv, %bb.hw, %bb.hf, %bb.bh, %bb.bi
  %.0 = phi i1 [ false, %bb.bh ], [ false, %bb.bi ], [ %.11, %.loopexit ], [ %.15, %bb.hf ], [ %.11, %bb.hh ], [ %.11, %bb.hk ], [ %.11, %bb.hv ], [ %.11, %bb.hw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i1 %.0
}

declare noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #5

declare <2 x float> @_ZN5ImGui17GetMouseDragDeltaEif(i32 noundef, float noundef) local_unnamed_addr #5

declare void @_ZN5ImGui14SetMouseCursorEi(i32 noundef) local_unnamed_addr #5

declare void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10ImPlotPlot13IsInputLockedEv(ptr noundef nonnull align 8 dereferenceable(2557) %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.b = load i8, ptr %i.a, align 4, !tbaa !299, !range !263, !noundef !264
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 391
  %i.e = load i8, ptr %i.d, align 1, !tbaa !295, !range !263, !noundef !264
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 1
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  br i1 %i.j, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i:         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !300  ; 2 uses
  %i.m = and i32 %i.l, 49152
  %or.cond.i = icmp eq i32 %i.m, 49152
  %i.n = and i32 %i.l, 2048
  %i.o = icmp ne i32 %i.n, 0
  %or.cond = or i1 %or.cond.i, %i.o
  br i1 %or.cond, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread, label %.thread

_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread:    ; preds = %bb.b, %bb.a, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.q = load i8, ptr %i.p, align 4, !tbaa !299, !range !263, !noundef !264
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.1

bb.c:                                             ; preds = %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 767
  %i.t = load i8, ptr %i.s, align 1, !tbaa !295, !range !263, !noundef !264
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, 1
  %i.y = select i1 %i.u, i1 %i.x, i1 false
  br i1 %i.y, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.1, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.1

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.1:       ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !300 ; 2 uses
  %i.ab = and i32 %i.aa, 49152
  %or.cond.i.1 = icmp eq i32 %i.ab, 49152
  %i.ac = and i32 %i.aa, 2048
  %i.ad = icmp ne i32 %i.ac, 0
  %or.cond.1 = or i1 %or.cond.i.1, %i.ad
  br i1 %or.cond.1, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.1, label %.thread

_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.1:  ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.1, %bb.c, %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !299, !range !263, !noundef !264
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.d, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.2

bb.d:                                             ; preds = %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1143
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !295, !range !263, !noundef !264
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = icmp eq i32 %i.al, 1
  %i.an = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %i.an, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.2, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.2

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.2:       ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !300 ; 2 uses
  %i.aq = and i32 %i.ap, 49152
  %or.cond.i.2 = icmp eq i32 %i.aq, 49152
  %i.ar = and i32 %i.ap, 2048
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond.2 = or i1 %or.cond.i.2, %i.as
  br i1 %or.cond.2, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.2, label %.thread

_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.2:  ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.2, %bb.d, %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1516
  %i.au = load i8, ptr %i.at, align 4, !tbaa !299, !range !263, !noundef !264
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.e, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread

bb.e:                                             ; preds = %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1519
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !295, !range !263, !noundef !264
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = select i1 %i.ay, i1 %i.bb, i1 false
  br i1 %i.bc, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13:       ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !300 ; 2 uses
  %i.bf = and i32 %i.be, 49152
  %or.cond.i14 = icmp eq i32 %i.bf, 49152
  %i.bg = and i32 %i.be, 2048
  %i.bh = icmp ne i32 %i.bg, 0
  %or.cond20 = or i1 %or.cond.i14, %i.bh
  br i1 %or.cond20, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread, label %.thread

_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread:  ; preds = %bb.e, %_ZNK10ImPlotAxis13IsInputLockedEv.exit.thread.2, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1892
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.f, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.1

bb.f:                                             ; preds = %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1895
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !295, !range !263, !noundef !264
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = icmp eq i32 %i.bp, 1
  %i.br = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %i.br, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.1, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.1

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.1:     ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1532
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !300 ; 2 uses
  %i.bu = and i32 %i.bt, 49152
  %or.cond.i14.1 = icmp eq i32 %i.bu, 49152
  %i.bv = and i32 %i.bt, 2048
  %i.bw = icmp ne i32 %i.bv, 0
  %or.cond20.1 = or i1 %or.cond.i14.1, %i.bw
  br i1 %or.cond20.1, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.1, label %.thread

_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.1: ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.1, %bb.f, %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2268
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.g, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.2

bb.g:                                             ; preds = %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2271
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !295, !range !263, !noundef !264
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = icmp eq i32 %i.ce, 1
  %i.cg = select i1 %i.cc, i1 %i.cf, i1 false
  br i1 %i.cg, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.2, label %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.2

_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.2:     ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !300 ; 2 uses
  %i.cj = and i32 %i.ci, 49152
  %or.cond.i14.2 = icmp eq i32 %i.cj, 49152
  %i.ck = and i32 %i.ci, 2048
  %i.cl = icmp ne i32 %i.ck, 0
  %or.cond20.2 = or i1 %or.cond.i14.2, %i.cl
  br i1 %or.cond20.2, label %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.2, label %.thread

_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.2: ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.2, %bb.g, %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.1
  br label %.thread

.thread:                                          ; preds = %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.1, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.2, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.1, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.2, %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.2
  %.2 = phi i1 [ false, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.2 ], [ true, %_ZNK10ImPlotAxis13IsInputLockedEv.exit16.thread.2 ], [ false, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13 ], [ false, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i13.1 ], [ false, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.2 ], [ false, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i.1 ], [ false, %_ZNK10ImPlotAxis11IsLockedMinEv.exit.i.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN6ImPlotL18AllAxesInputLockedEP10ImPlotAxisi(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
end_hunk_0
