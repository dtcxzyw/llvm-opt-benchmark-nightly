Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/wallcycle?download=true
inline.NumInlined: 640
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z15wallcycle_printP8_IO_FILERKN3gmx8MDLoggerEiiiidP13gmx_wallcycleRKSt5arrayIdLm106EEPK25gmx_wallclock_gpu_nbnxn_tPK23gmx_wallclock_gpu_pme_t:bb.a
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aj, %bb.ak, %bb.al
  %.1301 = phi ptr [ %i.gd, %bb.al ], [ %i.fq, %bb.aj ], [ %i.fq, %bb.ak ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv ; 2 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !72
  call fastcc void @_ZL12print_cyclesP8_IO_FILEdPKciiidd(ptr noundef %0, double noundef %i.bk, ptr noundef %.1301, i32 noundef %i.l, i32 noundef %4, i32 noundef %i.ft, double noundef %i.gf, double noundef %.fr)
  %i.gg = load double, ptr %i.ge, align 8, !tbaa !72
  %i.gh = fadd double %.0506, %i.gg
  br label %bb.am

bb.am:                                            ; preds = %bb.ag, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi double [ %.0506, %bb.ag ], [ %.0506, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gh, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not479 = icmp eq i64 %indvars.iv.next, 60
  br i1 %.not479, label %bb.q, label %bb.ag, !llvm.loop !214

.preheader492:                                    ; preds = %.preheader493, %.split
  %indvars.iv541 = phi i64 [ %indvars.iv.next542, %.split ], [ 0, %.preheader493 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv541
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !224
  %.idx = mul nuw nsw i64 %indvars.iv541, 1440
  br label %bb.an

.split:                                           ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %.not480 = icmp eq i64 %indvars.iv.next542, 60
  br i1 %.not480, label %.loopexit494, label %.preheader492

bb.an:                                            ; preds = %.preheader492, %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit
  %indvars.iv538 = phi i64 [ 0, %.preheader492 ], [ %indvars.iv.next539, %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv538
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !224
  %i.gm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 20, ptr noundef nonnull @.str.12, ptr noundef %i.gj, ptr noundef %i.gl) #27 ; 0 uses
  %i.gn = load ptr, ptr %i.cl, align 8, !tbaa !52
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %indvars.iv538
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !64 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !65 ; 2 uses
  %i.gt = uitofp i64 %i.gs to double              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  %i.gu = fmul nnan double %i.gt, 1.000000e+02
  %i.gv = fdiv double %i.gu, %.fr
  %i.gw = select i1 %i.cq, double %i.gv, double 0.000000e+00
  %.not482 = icmp eq i64 %i.gs, 0
  br i1 %.not482, label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gx = icmp sgt i32 %i.gq, 0
  br i1 %i.gx, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.gy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 4096, ptr noundef nonnull @.str.105, i32 noundef %i.gq) #27 ; 0 uses
  %i.gz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 4096, ptr noundef nonnull @.str.107, i32 noundef %i.l) #27 ; 0 uses
  br i1 %i.cs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 4271950, ptr %i.h, align 16
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.ha = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 4096, ptr noundef nonnull @.str.107, i32 noundef %4) #27 ; 0 uses
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  store i8 0, ptr %i.g, align 16, !tbaa !60
  store i8 0, ptr %i.h, align 16, !tbaa !60
  store i8 0, ptr %i.i, align 16, !tbaa !60
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.hb = fmul double %i.bk, %i.gt
  %i.hc = fmul nnan double %i.gt, 1.000000e-09
  %i.hd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, double noundef %i.hb, double noundef %i.hc, double noundef %i.gw) #27 ; 0 uses
  br label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit

_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit:        ; preds = %bb.an, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %.not481 = icmp eq i64 %indvars.iv.next539, 60
  br i1 %.not481, label %.split, label %bb.an

.loopexit494:                                     ; preds = %.split, %.split.us.us.split, %.split.us.us.split.us.us.split, %.split.us.us.split.us.us.split.us.us, %bb.q
  %i.he = sitofp i32 %i.l to double
  %i.hf = fmul double %.fr, %i.he
  %i.hg = sitofp i32 %4 to double
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = fdiv double %i.hh, %i.bh
  %i.hj = fsub double %i.hi, %.1                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.hk = fcmp ogt double %.fr, 0.000000e+00      ; 2 uses
  %i.hl = fcmp ogt double %i.hj, 0.000000e+00
  br i1 %i.hl, label %bb.au, label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit341

bb.au:                                            ; preds = %.loopexit494
  %i.hm = fmul nnan double %i.hj, 1.000000e+02
  %i.hn = fdiv double %i.hm, %.fr
  %i.ho = select i1 %i.hk, double %i.hn, double 0.000000e+00
  store i8 0, ptr %i.d, align 16, !tbaa !60
  store i8 0, ptr %i.e, align 16, !tbaa !60
  store i8 0, ptr %i.f, align 16, !tbaa !60
  %i.hp = fmul double %i.bk, %i.hj
  %i.hq = fmul nnan double %i.hj, 1.000000e-09
  %i.hr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, double noundef %i.hp, double noundef %i.hq, double noundef %i.ho) #27 ; 0 uses
  br label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit341

_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit341:     ; preds = %.loopexit494, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.hs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  br i1 %i.hk, label %bb.av, label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit342

bb.av:                                            ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit341
  %i.ht = fmul nnan double %.fr, 1.000000e+02
  %i.hu = fdiv double %i.ht, %.fr
  store i8 0, ptr %i.a, align 16, !tbaa !60
  store i8 0, ptr %i.b, align 16, !tbaa !60
  store i8 0, ptr %i.c, align 16, !tbaa !60
  %i.hv = fmul double %.fr, %i.bg
  %i.hw = fmul nnan double %.fr, 1.000000e-09
  %i.hx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, double noundef %i.hv, double noundef %i.hw, double noundef %i.hu) #27 ; 0 uses
  br label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit342

_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit342:     ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit341, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.hy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #27 ; 0 uses
  br i1 %i.bl, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit342
  %i.hz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6) #27 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit342
  %i.ia = getelementptr inbounds nuw i8, ptr %7, i64 432 ; 3 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !64
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %bb.ay, %bb.ax
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 456
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !64
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.preheader, label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit

bb.az:                                            ; preds = %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit
  %i.ig = icmp eq ptr %.sroa.0438.1, %.sroa.10.1
  br i1 %i.ig, label %bb.bl, label %bb.bi

bb.ba:                                            ; preds = %.preheader, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit
  %indvars.iv562 = phi i64 [ %indvars.iv.next563, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit ], [ 3, %.preheader ] ; 5 uses
  %.sroa.15.0512 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit ], [ null, %.preheader ] ; 5 uses
  %.sroa.10.0511 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit ], [ null, %.preheader ] ; 5 uses
  %.sroa.0438.0510 = phi ptr [ %.sroa.0438.1, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit ], [ null, %.preheader ] ; 9 uses
  %i.ih = trunc i64 %indvars.iv562 to i32
  %i.ii = add i32 %i.ih, -20
  %i.ij = icmp ult i32 %i.ii, 17
  br i1 %i.ij, label %bb.bb, label %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv562
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !64
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %bb.bc, label %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i = icmp eq ptr %.sroa.10.0511, %.sroa.15.0512
  br i1 %.not.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.in = trunc nuw nsw i64 %indvars.iv562 to i32
  store i32 %i.in, ptr %.sroa.10.0511, align 4, !tbaa !225
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.10.0511, i64 4
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit

bb.be:                                            ; preds = %bb.bc
  %i.ip = ptrtoint ptr %.sroa.15.0512 to i64
  %i.iq = ptrtoint ptr %.sroa.0438.0510 to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 7 uses
  %i.is = icmp eq i64 %i.ir, 9223372036854775804
  br i1 %i.is, label %bb.bf, label %_ZNKSt6vectorI16WallCycleCounterSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc343 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc343:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorI16WallCycleCounterSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.be
  %i.it = ashr exact i64 %i.ir, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.it, i64 1)
  %i.iu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.it ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.it
  %i.iw = call i64 @llvm.umin.i64(i64 %i.iu, i64 2305843009213693951)
  %i.ix = select i1 %i.iv, i64 2305843009213693951, i64 %i.iw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ix, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.iy = shl nuw nsw i64 %i.ix, 2
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #26
          to label %.noexc344 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc344:                                        ; preds = %_ZNKSt6vectorI16WallCycleCounterSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.ir ; 2 uses
  %i.jb = trunc nuw nsw i64 %indvars.iv562 to i32
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !225
  %i.jc = icmp sgt i64 %i.ir, 0
  br i1 %i.jc, label %bb.bg, label %_ZNSt6vectorI16WallCycleCounterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.bg:                                            ; preds = %.noexc344
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iz, ptr align 4 %.sroa.0438.0510, i64 %i.ir, i1 false)
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI16WallCycleCounterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.bg, %.noexc344
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0438.0510, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI16WallCycleCounterSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorI16WallCycleCounterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0438.0510, i64 noundef %i.ir) #28
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI16WallCycleCounterSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.bh, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ix
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorI16WallCycleCounterSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.bf
  %lpad.loopexit.split-lp684 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp.a:           ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %21 = phi i64 [ %i.ir, %.loopexit.split-lp.loopexit ], [ 9223372036854775804, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp684, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i345 = icmp eq ptr %.sroa.0438.0510, null
  br i1 %.not.i.i.i345, label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit346, label %bb.bn

_ZNSt6vectorI16WallCycleCounterSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.bd, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.ba, %bb.bb
  %.sroa.0438.1 = phi ptr [ %.sroa.0438.0510, %bb.ba ], [ %.sroa.0438.0510, %bb.bb ], [ %i.iz, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.0438.0510, %bb.bd ] ; 6 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.0511, %bb.ba ], [ %.sroa.10.0511, %bb.bb ], [ %i.jd, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.io, %bb.bd ] ; 3 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0512, %bb.ba ], [ %.sroa.15.0512, %bb.bb ], [ %i.je, %_ZNSt6vectorI16WallCycleCounterSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.15.0512, %bb.bd ] ; 2 uses
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %.not483 = icmp eq i64 %indvars.iv.next563, 60
  br i1 %.not483, label %bb.az, label %bb.ba, !llvm.loop !215

bb.bi:                                            ; preds = %bb.az
  %fwrite314 = call i64 @fwrite(ptr nonnull @.str.16, i64 34, i64 1, ptr %0) ; 0 uses
  %i.jf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #27 ; 0 uses
  %i.jg = select i1 %i.bl, i32 %3, i32 %i.l
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bk
  %i.jh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #27 ; 0 uses
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi, %bb.bk
  %.sroa.0429.0514 = phi ptr [ %.sroa.0438.1, %bb.bi ], [ %i.jq, %bb.bk ] ; 2 uses
  %i.ji = load i32, ptr %.sroa.0429.0514, align 4, !tbaa !225
  %i.jj = sext i32 %i.ji to i64                   ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !224
  %i.jm = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.jj
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.jj
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !72
  call fastcc void @_ZL12print_cyclesP8_IO_FILEdPKciiidd(ptr noundef %0, double noundef %i.bo, ptr noundef %i.jl, i32 noundef %i.jg, i32 noundef %5, i32 noundef %i.jn, double noundef %i.jp, double noundef %.fr)
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0429.0514, i64 4 ; 2 uses
  %.not484 = icmp eq ptr %i.jq, %.sroa.10.1
  br i1 %.not484, label %bb.bj, label %bb.bk

bb.bl:                                            ; preds = %bb.bj, %bb.az
  %.not.i.i.i = icmp eq ptr %.sroa.0438.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jr = ptrtoint ptr %.sroa.15.1 to i64
  %i.js = ptrtoint ptr %.sroa.0438.1 to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0438.1, i64 noundef %i.jt) #28
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit

bb.bn:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0438.0510, i64 noundef %21) #28
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit346

_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit: ; preds = %bb.bm, %bb.bl, %bb.ay
  br i1 %i.bl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit
  %i.ju = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6) #27 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit
  %.not = icmp eq ptr %10, null                   ; 2 uses
  br i1 %.not, label %.loopexit490, label %.preheader489.preheader

.preheader489.preheader:                          ; preds = %bb.bp
  %i.jv = load double, ptr %10, align 8, !tbaa !227
  %i.jw = fadd double %i.jv, 0.000000e+00
  %i.jx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !227
  %i.jz = fadd double %i.jw, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !227
  %i.kc = fadd double %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !227
  %i.kf = fadd double %i.kc, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !227
  %i.ki = fadd double %i.kf, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !227
  %i.kl = fadd double %i.ki, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.kn = load double, ptr %i.km, align 8, !tbaa !227
  %i.ko = fadd double %i.kl, %i.kn
  br label %.loopexit490

.loopexit490:                                     ; preds = %.preheader489.preheader, %bb.bp
  %.1289 = phi double [ 0.000000e+00, %bb.bp ], [ %i.ko, %.preheader489.preheader ]
  %.not315 = icmp eq ptr %9, null
  br i1 %.not315, label %bb.dc, label %.preheader488

.preheader488:                                    ; preds = %.loopexit490
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !229
  %i.kr = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !230
  %i.kt = fadd double %i.kq, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !231
  %i.kw = fadd double %i.kt, %i.kv
  %i.kx = fadd double %.1289, %i.kw
  %i.ky = load double, ptr %9, align 8, !tbaa !227
  %i.kz = fadd double %i.kx, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !227
  %i.lc = fadd double %i.kz, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !227
  %i.lf = fadd double %i.lc, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !227
  %i.li = fadd double %i.lf, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !232
  %i.ll = fadd double %i.li, %i.lk                ; 20 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.ln = getelementptr inbounds nuw i8, ptr %7, i64 272
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !65
  %i.lp = uitofp i64 %i.lo to double              ; 2 uses
  %i.lq = load i32, ptr %i.ia, align 8, !tbaa !64
  %i.lr = icmp sgt i32 %i.lq, 0
  br i1 %i.lr, label %bb.bq, label %.preheader487

bb.bq:                                            ; preds = %.preheader488
  %i.ls = getelementptr inbounds nuw i8, ptr %7, i64 440
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !65
  %i.lu = uitofp i64 %i.lt to double
  %i.lv = fadd nnan double %i.lp, %i.lu
  br label %.preheader487

.preheader487:                                    ; preds = %bb.bq, %.preheader488
  %.0287 = phi double [ %i.lv, %bb.bq ], [ %i.lp, %.preheader488 ]
  %i.lw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6) #27 ; 0 uses
  %i.lx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef 37) #27 ; 0 uses
  %i.ly = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #27 ; 0 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !233
  %i.mb = load double, ptr %i.kp, align 8, !tbaa !229
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %i.ma, double noundef %i.mb, double noundef %i.ll)
  %i.mc = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 4 uses
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !234
  %i.me = load double, ptr %i.kr, align 8, !tbaa !230
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %i.md, double noundef %i.me, double noundef %i.ll)
  %i.mf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !235 ; 2 uses
  %.not323 = icmp eq i32 %i.mg, 0
  br i1 %.not323, label %bb.bs, label %bb.br

.preheader.preheader:                             ; preds = %bb.bx
  %i.mh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !235 ; 2 uses
  %.not322 = icmp eq i32 %i.mi, 0
  br i1 %.not322, label %.preheader.1, label %bb.by

bb.br:                                            ; preds = %.preheader487
  %i.mj = load double, ptr %9, align 8, !tbaa !227
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %i.mg, double noundef %i.mj, double noundef %i.ll)
  br label %bb.bs

bb.bs:                                            ; preds = %.preheader487, %bb.br
  %i.mk = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !235 ; 2 uses
  %.not323.1 = icmp eq i32 %i.ml, 0
  br i1 %.not323.1, label %.preheader487.1, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mm = load double, ptr %i.la, align 8, !tbaa !227
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.ml, double noundef %i.mm, double noundef %i.ll)
  br label %.preheader487.1

.preheader487.1:                                  ; preds = %bb.bt, %bb.bs
  %i.mn = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !235 ; 2 uses
  %.not323.1580 = icmp eq i32 %i.mo, 0
  br i1 %.not323.1580, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.preheader487.1
  %i.mp = load double, ptr %i.ld, align 8, !tbaa !227
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %i.mo, double noundef %i.mp, double noundef %i.ll)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.preheader487.1
  %i.mq = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !235 ; 2 uses
  %.not323.1.1 = icmp eq i32 %i.mr, 0
  br i1 %.not323.1.1, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ms = load double, ptr %i.lg, align 8, !tbaa !227
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.mr, double noundef %i.ms, double noundef %i.ll)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.mt = fmul double %6, 1.000000e+03
  %i.mu = fdiv double %i.mt, %.fr
  %i.mv = fmul double %i.mu, %.0287               ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

bb.by:                                            ; preds = %.preheader.preheader
  %i.mw = load double, ptr %10, align 8, !tbaa !227
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.112, i32 noundef %i.mi, double noundef %i.mw, double noundef %i.ll)
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.by, %.preheader.preheader
  %i.mx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !235 ; 2 uses
  %.not322.1 = icmp eq i32 %i.my, 0
  br i1 %.not322.1, label %.preheader.2, label %bb.bz

bb.bz:                                            ; preds = %.preheader.1
  %i.mz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.na = load double, ptr %i.mz, align 8, !tbaa !227
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef %i.my, double noundef %i.na, double noundef %i.ll)
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.bz, %.preheader.1
  %i.nb = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !235 ; 2 uses
  %.not322.2 = icmp eq i32 %i.nc, 0
  br i1 %.not322.2, label %.preheader.3, label %bb.ca

bb.ca:                                            ; preds = %.preheader.2
  %i.nd = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !227
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.113, i32 noundef %i.nc, double noundef %i.ne, double noundef %i.ll)
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.ca, %.preheader.2
  %i.nf = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !235 ; 2 uses
  %.not322.3 = icmp eq i32 %i.ng, 0
  br i1 %.not322.3, label %.preheader.4, label %bb.cb

bb.cb:                                            ; preds = %.preheader.3
  %i.nh = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !227
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.114, i32 noundef %i.ng, double noundef %i.ni, double noundef %i.ll)
  br label %.preheader.4

.preheader.4:                                     ; preds = %bb.cb, %.preheader.3
  %i.nj = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !235 ; 2 uses
  %.not322.4 = icmp eq i32 %i.nk, 0
  br i1 %.not322.4, label %.preheader.5, label %bb.cc

bb.cc:                                            ; preds = %.preheader.4
  %i.nl = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !227
  call fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef %i.nk, double noundef %i.nm, double noundef %i.ll)
  br label %.preheader.5
end_hunk_0
begin_hunk_1_@_Z15wallcycle_printP8_IO_FILERKN3gmx8MDLoggerEiiiidP13gmx_wallcycleRKSt5arrayIdLm106EEPK25gmx_wallclock_gpu_nbnxn_tPK23gmx_wallclock_gpu_pme_t:bb.a

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.sp = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, i8 0, i64 24, i1 false)
  %i.sq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.sq, ptr %18, align 8, !tbaa !68
  %i.sr = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.sr, align 8, !tbaa !69
  %i.ss = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 1, ptr %i.ss, align 8, !tbaa !221
  %i.st = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.su = load double, ptr %i.st, align 8, !tbaa !72
  %i.sv = fmul double %i.su, 1.000000e+02
  %i.sw = fdiv double %i.sv, %.fr
  %i.sx = call double @llvm.rint.f64(double %i.sw)
  %i.sy = fptosi double %i.sx to i32
  %i.sz = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull @.str.36, i32 noundef %i.sy)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ta = load ptr, ptr %i.sn, align 8, !tbaa !223
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tc = load ptr, ptr %i.tb, align 8
  invoke void %i.tc(ptr noundef nonnull align 8 dereferenceable(8) %i.sn, ptr noundef nonnull align 8 dereferenceable(40) %i.sz)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit384 unwind label %bb.dm, !inline_history !213

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit384: ; preds = %bb.dl
  %i.td = load ptr, ptr %18, align 8, !tbaa !59   ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.sq
  br i1 %i.te, label %_ZN3gmx14LogEntryWriterD2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i385: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit384
  %i.tf = load i64, ptr %i.sq, align 8, !tbaa !60
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit387

_ZN3gmx14LogEntryWriterD2Ev.exit387:              ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i385
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.dr

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.th = landingpad { ptr, i32 }
          cleanup
  %i.ti = load ptr, ptr %18, align 8, !tbaa !59   ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.sq
  br i1 %i.tj, label %_ZN3gmx14LogEntryWriterD2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i388: ; preds = %bb.dm
  %i.tk = load i64, ptr %i.sq, align 8, !tbaa !60
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit390

_ZN3gmx14LogEntryWriterD2Ev.exit390:              ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit346

bb.dn:                                            ; preds = %bb.di
  br i1 %i.so, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.tm = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tm, i8 0, i64 24, i1 false)
  %i.tn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  store ptr %i.tn, ptr %19, align 8, !tbaa !68
  %i.to = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.to, align 8, !tbaa !69
  %i.tp = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 1, ptr %i.tp, align 8, !tbaa !221
  %i.tq = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !72
  %i.ts = insertelement <2 x double> poison, double %i.se, i64 0
  %i.tt = insertelement <2 x double> %i.ts, double %i.tr, i64 1
  %i.tu = fmul <2 x double> %i.tt, splat (double 1.000000e+02)
  %i.tv = insertelement <2 x double> poison, double %.fr, i64 0
  %i.tw = shufflevector <2 x double> %i.tv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tx = fdiv <2 x double> %i.tu, %i.tw
  %i.ty = call <2 x double> @llvm.rint.v2f64(<2 x double> %i.tx) ; 2 uses
  %i.tz = extractelement <2 x double> %i.ty, i64 0
  %i.ua = fptosi double %i.tz to i32
  %i.ub = extractelement <2 x double> %i.ty, i64 1
  %i.uc = fptosi double %i.ub to i32
  %i.ud = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull @.str.37, i32 noundef %i.ua, i32 noundef %i.uc)
          to label %bb.dp unwind label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ue = load ptr, ptr %i.sn, align 8, !tbaa !223
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8
  invoke void %i.ug(ptr noundef nonnull align 8 dereferenceable(8) %i.sn, ptr noundef nonnull align 8 dereferenceable(40) %i.ud)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit392 unwind label %bb.dq, !inline_history !213

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit392: ; preds = %bb.dp
  %i.uh = load ptr, ptr %19, align 8, !tbaa !59   ; 2 uses
  %i.ui = icmp eq ptr %i.uh, %i.tn
  br i1 %i.ui, label %_ZN3gmx14LogEntryWriterD2Ev.exit395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i393: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit392
  %i.uj = load i64, ptr %i.tn, align 8, !tbaa !60
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.uk) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit395

_ZN3gmx14LogEntryWriterD2Ev.exit395:              ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit392, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i393
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ul = landingpad { ptr, i32 }
          cleanup
  %i.um = load ptr, ptr %19, align 8, !tbaa !59   ; 2 uses
  %i.un = icmp eq ptr %i.um, %i.tn
  br i1 %i.un, label %_ZN3gmx14LogEntryWriterD2Ev.exit398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i396: ; preds = %bb.dq
  %i.uo = load i64, ptr %i.tn, align 8, !tbaa !60
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.um, i64 noundef %i.up) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit398

_ZN3gmx14LogEntryWriterD2Ev.exit398:              ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i396
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit346

bb.dr:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit395, %bb.dn, %_ZN3gmx14LogEntryWriterD2Ev.exit387, %bb.dj, %bb.dh, %bb.df
  %i.uq = getelementptr inbounds nuw i8, ptr %8, i64 416
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !72 ; 2 uses
  %i.us = fmul double %.fr, 5.000000e-02
  %i.ut = fcmp ogt double %i.ur, %i.us
  br i1 %i.ut, label %bb.ds, label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  %i.uu = load ptr, ptr %1, align 8, !tbaa !218   ; 3 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.uw = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uw, i8 0, i64 24, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.ux, ptr %20, align 8, !tbaa !68
  %i.uy = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.uy, align 8, !tbaa !69
  %i.uz = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 1, ptr %i.uz, align 8, !tbaa !221
  %i.va = fmul double %i.ur, 1.000000e+02
  %i.vb = fdiv double %i.va, %.fr
  %i.vc = call double @llvm.rint.f64(double %i.vb)
  %i.vd = fptosi double %i.vc to i32
  %i.ve = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull @.str.38, i32 noundef %i.vd)
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.vf = load ptr, ptr %i.uu, align 8, !tbaa !223
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8
  invoke void %i.vh(ptr noundef nonnull align 8 dereferenceable(8) %i.uu, ptr noundef nonnull align 8 dereferenceable(40) %i.ve)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit400 unwind label %bb.dv, !inline_history !213

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit400: ; preds = %bb.du
  %i.vi = load ptr, ptr %20, align 8, !tbaa !59   ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.ux
  br i1 %i.vj, label %_ZN3gmx14LogEntryWriterD2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i401: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit400
  %i.vk = load i64, ptr %i.ux, align 8, !tbaa !60
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vl) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit403

_ZN3gmx14LogEntryWriterD2Ev.exit403:              ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.dw

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.vm = landingpad { ptr, i32 }
          cleanup
  %i.vn = load ptr, ptr %20, align 8, !tbaa !59   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.ux
  br i1 %i.vo, label %_ZN3gmx14LogEntryWriterD2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i404: ; preds = %bb.dv
  %i.vp = load i64, ptr %i.ux, align 8, !tbaa !60
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit406

_ZN3gmx14LogEntryWriterD2Ev.exit406:              ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i404
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit346

bb.dw:                                            ; preds = %bb.dr, %bb.ds, %_ZN3gmx14LogEntryWriterD2Ev.exit403, %_ZN3gmx14LogEntryWriterD2Ev.exit337, %bb.h, %_ZN3gmx14LogEntryWriterD2Ev.exit, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  ret void

_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit346: ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit354, %_ZN3gmx14LogEntryWriterD2Ev.exit362, %_ZN3gmx14LogEntryWriterD2Ev.exit370, %_ZN3gmx14LogEntryWriterD2Ev.exit406, %_ZN3gmx14LogEntryWriterD2Ev.exit398, %_ZN3gmx14LogEntryWriterD2Ev.exit390, %_ZN3gmx14LogEntryWriterD2Ev.exit382, %.loopexit.split-lp.loopexit.split-lp.a, %bb.bn, %_ZN3gmx14LogEntryWriterD2Ev.exit340, %_ZN3gmx14LogEntryWriterD2Ev.exit331
  %.pn327 = phi { ptr, i32 } [ %i.af, %_ZN3gmx14LogEntryWriterD2Ev.exit331 ], [ %i.bb, %_ZN3gmx14LogEntryWriterD2Ev.exit340 ], [ %i.qg, %_ZN3gmx14LogEntryWriterD2Ev.exit362 ], [ %i.vm, %_ZN3gmx14LogEntryWriterD2Ev.exit406 ], [ %i.th, %_ZN3gmx14LogEntryWriterD2Ev.exit390 ], [ %i.ul, %_ZN3gmx14LogEntryWriterD2Ev.exit398 ], [ %i.rv, %_ZN3gmx14LogEntryWriterD2Ev.exit382 ], [ %i.qz, %_ZN3gmx14LogEntryWriterD2Ev.exit370 ], [ %i.pp, %_ZN3gmx14LogEntryWriterD2Ev.exit354 ], [ %lpad.phi, %.loopexit.split-lp.loopexit.split-lp.a ], [ %lpad.phi, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  resume { ptr, i32 } %.pn327
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter10appendTextEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !69
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a) ; 0 uses
  ret ptr %0
}

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL12print_cyclesP8_IO_FILEdPKciiidd(ptr nofree noundef captures(none) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7) unnamed_addr #18 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  %i.c = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.d = fcmp ogt double %7, 0.000000e+00
  %i.e = fmul double %6, 1.000000e+02
  %i.f = fdiv double %i.e, %7
  %i.g = select i1 %i.d, double %i.f, double 0.000000e+00
  %i.h = fcmp ogt double %6, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %5, 0
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 4096, ptr noundef nonnull @.str.105, i32 noundef %5) #27 ; 0 uses
  %i.k = icmp slt i32 %3, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 4271950, ptr %i.a, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.107, i32 noundef %3) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = icmp slt i32 %4, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 4271950, ptr %i.b, align 16
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.107, i32 noundef %4) #27 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 16, !tbaa !60
  store i8 0, ptr %i.b, align 16, !tbaa !60
  store i8 0, ptr %i.c, align 16, !tbaa !60
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.o = fmul double %1, %6
  %i.p = fmul nnan double %6, 1.000000e-09
  %i.q = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, double noundef %i.o, double noundef %i.p, double noundef %i.g) #27 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4) unnamed_addr #18 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 5 uses
  %i.b = alloca [11 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 11, ptr noundef nonnull @.str.105, i32 noundef %2) #27 ; 0 uses
  %i.e = uitofp nneg i32 %2 to double
  %i.f = fdiv double %3, %i.e
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 11, ptr noundef nonnull @.str.109, double noundef %i.f) #27 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.110, i64 11, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.110, i64 11, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = fcmp une double %3, %4
  %i.i = fcmp ogt double %4, 0.000000e+00
  %or.cond = and i1 %i.h, %i.i
  %i.j = fdiv double %3, 1.000000e+03             ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = fmul double %3, 1.000000e+02
  %i.l = fdiv double %i.k, %4
  %i.m = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.111, ptr noundef %1, ptr noundef nonnull %i.a, double noundef %i.j, ptr noundef nonnull %i.b, double noundef %i.l) #27 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.111, ptr noundef %1, ptr noundef nonnull @.str.41, double noundef %i.j, ptr noundef nonnull %i.b, double noundef 1.000000e+02) #27 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_Z25wcycle_get_reset_countersP13gmx_wallcycle(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z25wcycle_set_reset_countersP13gmx_wallcyclel(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store i64 %1, ptr %i.b, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx17rdtscpDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.137") align 8 %0) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i.i.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.116, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.d, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx29instrumentationApiDescriptionB5cxx11Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.137") align 8 captures(none) initializes((32, 33)) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !77
  ret void
}
end_hunk_1
