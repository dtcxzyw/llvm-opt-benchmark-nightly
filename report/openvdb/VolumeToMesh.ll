Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToMesh?download=true
inline.NumInlined: 48469
inline.NumDeleted: 15370
loop-unroll.NumCompletelyUnrolled: 216
loop-unroll.NumRuntimeUnrolled: 267
loop-unroll.NumUnrolled: 735
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal28FlagAndCountQuadsToSubdivideEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal28FlagAndCountQuadsToSubdivideEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bn, align 64, !tbaa !383
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !1010
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !tbaa.struct !3101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 120 ; 2 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !3103
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.bu = load i64, ptr %i.q, align 64, !tbaa !853
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  store i64 %i.bv, ptr %i.q, align 64, !tbaa !853
  store i64 %i.bv, ptr %i.bt, align 64, !tbaa !853
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  store i32 2, ptr %i.bw, align 8, !tbaa !851
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 140
  %i.by = load i8, ptr %i.r, align 4, !tbaa !852
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.ca = load i64, ptr %4, align 8, !tbaa !854
  store i64 %i.ca, ptr %i.bz, align 16, !tbaa !854
  %i.cb = sub i8 %i.by, %i.bm
  store i8 %i.cb, ptr %i.bx, align 4, !tbaa !852
  %i.cc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !7827 ; 6 uses
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !866
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !858
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.ce, align 8, !tbaa !859
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %4, align 8, !tbaa !854
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !854
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i8 0, ptr %i.ch, align 8, !tbaa !868
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !3103
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !3103
  %i.ci = load ptr, ptr %3, align 8, !tbaa !869
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(152) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.ci), !inline_history !7827
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cj = load i8, ptr %i.l, align 2, !tbaa !1021
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.l, align 2, !tbaa !1021
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !1023
  %i.cm = add i8 %i.cl, 1
  %i.cn = and i8 %i.cm, 7
  store i8 %i.cn, ptr %i.k, align 1, !tbaa !1023
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.co = load i8, ptr %5, align 8, !tbaa !1022
  %i.cp = zext i8 %i.co to i64                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !403
  %i.cs = icmp ult i8 %i.cr, %i.bh
  br i1 %i.cs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.cp ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !459
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !457
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !458
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ult i64 %i.cv, %i.cz
  br i1 %i.da, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cp, %bb.i ], [ %i.cp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools23volume_to_mesh_internal28FlagAndCountQuadsToSubdivideclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dc = load i8, ptr %i.l, align 2, !tbaa !1021
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.l, align 2, !tbaa !1021
  %i.de = load i8, ptr %5, align 8, !tbaa !1022
  %i.df = add i8 %i.de, 7
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %5, align 8, !tbaa !1022
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dh = phi i8 [ %i.ck, %.noexc ], [ %i.dd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %thread-pre-split22
  %i.dj = load ptr, ptr %3, align 8, !tbaa !869   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1
  %i.dm = icmp eq i8 %i.dl, -1
  br i1 %i.dm, label %bb.k, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !403
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.do, %bb.k ], [ %i.dj, %bb.j ]
  %i.dp = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.dp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !7828

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools23volume_to_mesh_internal28FlagAndCountQuadsToSubdivideclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge56:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph55, %._crit_edge
  %.03653 = phi i64 [ %i.b, %.lr.ph55 ], [ %i.p, %._crit_edge ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !763
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !462
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.03653 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !463  ; 2 uses
  %.not57 = icmp eq i64 %i.k, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.j, %bb.b
  %.034.lcssa = phi i32 [ 0, %bb.b ], [ %.4, %bb.j ]
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !766
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.03653
  store i32 %.034.lcssa, ptr %i.o, align 4, !tbaa !381
  %i.p = add nuw i64 %.03653, 1                   ; 2 uses
  %exitcond58.not = icmp eq i64 %i.p, %i.c
  br i1 %exitcond58.not, label %._crit_edge56, label %bb.b, !llvm.loop !7829

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %.052 = phi i64 [ 0, %.lr.ph ], [ %i.dg, %bb.j ] ; 3 uses
  %.03451 = phi i32 [ 0, %.lr.ph ], [ %.4, %bb.j ] ; 4 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !624
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.052 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !403   ; 2 uses
  %i.t = and i8 %i.s, 3
  %or.cond = icmp eq i8 %i.t, 2
  br i1 %or.cond, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !471
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.052 ; 6 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !764  ; 4 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !381
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !403
  %.not38 = icmp eq i8 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !381
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  br i1 %.not38, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !403
  %.not39 = icmp eq i8 %i.af, 0
  br i1 %.not39, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !381
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !403
  %.not40 = icmp eq i8 %i.ak, 0
  br i1 %.not40, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !381
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !403
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.e, %bb.g
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !765 ; 4 uses
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %i.y ; 3 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %i.ad ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !381
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !381
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %i.az ; 3 uses
  %i.bb = load float, ptr %i.ar, align 4, !tbaa !761
  %i.bc = fpext float %i.bb to double             ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !761
  %i.bf = fpext float %i.be to double             ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !761
  %i.bi = fpext float %i.bh to double             ; 3 uses
  %i.bj = load float, ptr %i.as, align 4, !tbaa !761
  %i.bk = fpext float %i.bj to double             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %2 = load float, ptr %i.bl, align 4, !tbaa !761
  %3 = fpext float %2 to double                   ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %5 = load float, ptr %4, align 4, !tbaa !761
  %6 = fpext float %5 to double                   ; 3 uses
  %7 = load float, ptr %i.aw, align 4, !tbaa !761
  %8 = fpext float %7 to double                   ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !761
  %11 = fpext float %10 to double                 ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %13 = load float, ptr %12, align 4, !tbaa !761
  %14 = fpext float %13 to double                 ; 3 uses
  %15 = load float, ptr %i.ba, align 4, !tbaa !761
  %16 = fpext float %15 to double                 ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %18 = load float, ptr %17, align 4, !tbaa !761
  %19 = fpext float %18 to double                 ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %21 = load float, ptr %20, align 4, !tbaa !761
  %22 = fpext float %21 to double                 ; 3 uses
  %23 = fsub double %8, %i.bc                     ; 2 uses
  %24 = fsub double %11, %i.bf                    ; 2 uses
  %25 = fsub double %14, %i.bi                    ; 2 uses
  %26 = fsub double %i.bk, %16                    ; 2 uses
  %27 = fsub double %3, %19                       ; 2 uses
  %i.bm = fsub double %6, %22                     ; 2 uses
  %i.bn = fneg double %27
  %i.bo = fmul double %25, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %24, double %i.bm, double %i.bo) ; 4 uses
  %i.bq = fneg double %i.bm
  %i.br = fmul double %23, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %25, double %26, double %i.br) ; 4 uses
  %28 = fneg double %26
  %i.bt = fmul double %24, %28
  %i.bu = tail call double @llvm.fmuladd.f64(double %23, double %27, double %i.bt) ; 4 uses
  %i.bv = fmul double %i.bs, %i.bs
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.bv)
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.bw)
  %sqrt.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.bx) ; 2 uses
  %i.by = tail call noundef double @llvm.fabs.f64(double %sqrt.i.i.i)
  %i.bz = fcmp ogt double %i.by, f0x3E7AD7F29ABCAF48 ; 3 uses
  %i.ca = fdiv double 1.000000e+00, %sqrt.i.i.i   ; 3 uses
  %i.cb = fmul double %i.bp, %i.ca
  %i.cc = fmul double %i.bs, %i.ca
  %i.cd = fmul double %i.bu, %i.ca
  %.sroa.050.0.i = select i1 %i.bz, double %i.cb, double %i.bp ; 5 uses
  %.sroa.1056.0.i = select i1 %i.bz, double %i.cc, double %i.bs ; 5 uses
  %.sroa.18.0.i = select i1 %i.bz, double %i.cd, double %i.bu ; 5 uses
  %29 = fadd double %i.bc, %i.bk
  %30 = fadd double %i.bf, %3
  %31 = fadd double %i.bi, %6
  %32 = fadd double %29, %8
  %33 = fadd double %30, %11
  %34 = fadd double %31, %14
  %35 = fadd double %32, %16
  %36 = fadd double %33, %19
  %37 = fadd double %34, %22
  %38 = fmul double %36, %.sroa.1056.0.i
  %39 = tail call double @llvm.fmuladd.f64(double %35, double %.sroa.050.0.i, double %38)
  %i.ce = tail call noundef double @llvm.fmuladd.f64(double %37, double %.sroa.18.0.i, double %39)
  %i.cf = fmul double %i.ce, 2.500000e-01         ; 4 uses
  %i.cg = fmul double %.sroa.1056.0.i, %i.bf
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bc, double %.sroa.050.0.i, double %i.cg)
  %i.ci = tail call noundef double @llvm.fmuladd.f64(double %i.bi, double %.sroa.18.0.i, double %i.ch)
  %i.cj = fsub double %i.ci, %i.cf
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj)
  %i.cl = fcmp ogt double %i.ck, f0x3EB0C6F7A0000000
  br i1 %i.cl, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit.thread, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.cm = fmul double %.sroa.1056.0.i, %3
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.bk, double %.sroa.050.0.i, double %i.cm)
  %i.co = tail call noundef double @llvm.fmuladd.f64(double %6, double %.sroa.18.0.i, double %i.cn)
  %i.cp = fsub double %i.co, %i.cf
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ogt double %i.cq, f0x3EB0C6F7A0000000
  br i1 %i.cr, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = fmul double %.sroa.1056.0.i, %11
  %i.ct = tail call double @llvm.fmuladd.f64(double %8, double %.sroa.050.0.i, double %i.cs)
  %i.cu = tail call noundef double @llvm.fmuladd.f64(double %14, double %.sroa.18.0.i, double %i.ct)
  %i.cv = fsub double %i.cu, %i.cf
  %i.cw = tail call noundef double @llvm.fabs.f64(double %i.cv)
  %i.cx = fcmp ogt double %i.cw, f0x3EB0C6F7A0000000
  br i1 %i.cx, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit.thread, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit

_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit: ; preds = %bb.i
  %i.cy = fmul double %.sroa.1056.0.i, %19
  %i.cz = tail call double @llvm.fmuladd.f64(double %16, double %.sroa.050.0.i, double %i.cy)
  %i.da = tail call noundef double @llvm.fmuladd.f64(double %22, double %.sroa.18.0.i, double %i.cz)
  %i.db = fsub double %i.da, %i.cf
  %i.dc = tail call noundef double @llvm.fabs.f64(double %i.db)
  %i.dd = fcmp ule double %i.dc, f0x3EB0C6F7A0000000
  br i1 %i.dd, label %bb.j, label %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit.thread

_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit.thread: ; preds = %bb.h, %.critedge, %bb.i, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit
  %i.de = or i8 %i.s, 4
  store i8 %i.de, ptr %i.r, align 1, !tbaa !403
  %i.df = add i32 %.03451, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit.thread, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit, %bb.c
  %.4 = phi i32 [ %.03451, %bb.c ], [ %.03451, %bb.g ], [ %i.df, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit.thread ], [ %.03451, %_ZN7openvdb5v13_05tools23volume_to_mesh_internal12isPlanarQuadERKNS0_4math4Vec3IdEES7_S7_S7_d.exit ] ; 2 uses
  %i.dg = add nuw i64 %.052, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !7830
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEE3runERKS4_RKS9_RSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !603
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !604
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !403
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !458
  %i.g = load i64, ptr %0, align 8, !tbaa !457
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEE3runERKS4_RKS9_RSB_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !839
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !383
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1010
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !3104
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !3106
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i32 0, ptr %i.p, align 8, !tbaa !851
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 156
  store i8 5, ptr %i.q, align 4, !tbaa !852
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 16, !tbaa !853
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.u = load i64, ptr %3, align 8, !tbaa !854
  store i64 %i.u, ptr %i.t, align 32, !tbaa !854
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !858
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !859
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !861
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !638
  store ptr %4, ptr %i.l, align 8, !tbaa !3106
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEE3runERKS4_RKS9_RSB_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEE3runERKS4_RKS9_RSB_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.z = load atomic i8, ptr %i.y monotonic, align 1
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEE3runERKS4_RKS9_RSB_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #29
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEE3runERKS4_RKS9_RSB_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ad
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(168) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !864  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !853
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 16, !tbaa !853
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !865
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3106
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !3106
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !852
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !852
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3106 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = load i64, ptr %i.y, align 32, !tbaa !854
  %i.aa = load ptr, ptr %0, align 64, !tbaa !383
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(168) dereferenceable(168) %0) #22, !inline_history !332
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i32 1 seq_cst, align 4
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.ag = load ptr, ptr %.019.i.i, align 8, !tbaa !858 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !854
end_hunk_0
