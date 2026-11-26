Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/map_vertices_to_circle?download=true
inline.NumInlined: 403
inline.NumDeleted: 272
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3igl22map_vertices_to_circleERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELi1ELi0ELin1ELi1EEERS2_:bb.a
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.q, i64 %storemerge.idx.i.i.i.i.i
  %i.t = and i64 %.pr, 63
  %.idx.i = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %.idx.i, i1 false)
  %i.u = ptrtoint ptr %storemerge.i.i.i.i.i to i64
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

.body.thread261:                                  ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread273

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.a, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.sroa.0200.1235 = phi ptr [ %i.e, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.e, %bb.d ], [ null, %bb.a ] ; 10 uses
  %.sroa.17209.1234 = phi ptr [ %i.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.i, %bb.d ], [ null, %bb.a ] ; 2 uses
  %.sroa.19197.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.o, %bb.d ], [ null, %bb.a ] ; 4 uses
  %.sroa.16195.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.t, %bb.d ], [ 0, %bb.a ]
  %.sroa.13194.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.u, %bb.d ], [ 0, %bb.a ]
  %.sroa.0187.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.m, %bb.d ], [ null, %bb.a ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !29   ; 3 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.z = load ptr, ptr %1, align 8, !tbaa !30
  br label %bb.e

.preheader:                                       ; preds = %bb.e, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.aa = ptrtoint ptr %.sroa.0187.0 to i64       ; 3 uses
  %i.ab = sub i64 %.sroa.13194.0, %i.aa
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = add nsw i64 %i.ac, %.sroa.16195.0       ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph312.preheader, label %._crit_edge

.lr.ph312.preheader:                              ; preds = %.preheader
  %i.ag = and i64 %i.ad, 2147483647
  br label %.lr.ph312

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = sdiv i32 %i.ai, 64
  %.sext = sext i32 %i.ak to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.0187.0, i64 %.sext
  %i.am = and i64 %i.aj, -9223372036854775745
  %i.an = icmp ugt i64 %i.am, -9223372036854775808
  %storemerge.idx.i.i.i.i.i73 = select i1 %i.an, i64 -8, i64 0
  %storemerge.i.i.i.i.i74 = getelementptr inbounds i8, ptr %i.al, i64 %storemerge.idx.i.i.i.i.i73 ; 2 uses
  %i.ao = and i64 %i.aj, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = load i64, ptr %storemerge.i.i.i.i.i74, align 8, !tbaa !31
  %i.ar = or i64 %i.ap, %i.aq
  store i64 %i.ar, ptr %storemerge.i.i.i.i.i74, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.1235, i64 %i.aj
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.at, ptr %i.as, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %.preheader, label %bb.e, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre = load i64, ptr %i.w, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.au = phi i64 [ %i.x, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.13219.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.13219.1, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0213.0.lcssa = phi ptr [ null, %.preheader ], [ %.sroa.0213.1, %._crit_edge.loopexit ] ; 5 uses
  %i.av = icmp ugt i64 %i.au, 1152921504606846975
  br i1 %i.av, label %bb.f, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.f:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #14
          to label %.noexc75 unwind label %bb.m

.noexc75:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.au, 3                ; 3 uses
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #15
          to label %.noexc76 unwind label %bb.m   ; 23 uses

.noexc76:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr i8, ptr %i.ax, i64 8      ; 3 uses
  %i.az = add nsw i64 %i.au, -1                   ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc76
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.az, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv327 = phi i64 [ 0, %.lr.ph312.preheader ], [ %indvars.iv.next328, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.sroa.0213.0310 = phi ptr [ null, %.lr.ph312.preheader ], [ %.sroa.0213.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %.sroa.9217.0309 = phi ptr [ null, %.lr.ph312.preheader ], [ %.sroa.9217.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %.sroa.13219.0308 = phi ptr [ null, %.lr.ph312.preheader ], [ %.sroa.13219.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv327 to i32 ; 2 uses
  %i.bd = lshr i64 %indvars.iv327, 6
  %.sext286 = and i64 %i.bd, 67108863
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0187.0, i64 %.sext286
  %i.bf = and i64 %indvars.iv327, 63
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !31
  %i.bi = and i64 %i.bh, %i.bg
  %.not290 = icmp eq i64 %i.bi, 0
  br i1 %.not290, label %bb.g, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %.lr.ph312
  %i.bj = ptrtoint ptr %.sroa.9217.0309 to i64
  %i.bk = ptrtoint ptr %.sroa.0213.0310 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 6 uses
  %i.bm = ashr exact i64 %i.bl, 2                 ; 4 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.1235, i64 %indvars.iv327
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !26
  %.not.i = icmp eq ptr %.sroa.9217.0309, %.sroa.13219.0308
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.bc, ptr %.sroa.9217.0309, align 4, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.9217.0309, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.i:                                             ; preds = %bb.g
  %i.bq = icmp eq i64 %i.bl, 9223372036854775804
  br i1 %i.bq, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc82 unwind label %.thread.loopexit.split-lp.loopexit.split-lp

.noexc82:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bm ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bm
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 2305843009213693951)
  %i.bu = select i1 %i.bs, i64 2305843009213693951, i64 %i.bt ; 3 uses
  %.not.i.i.i81 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i81)
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #15
          to label %.noexc83 unwind label %.thread.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bl ; 2 uses
  store i32 %i.bc, ptr %i.bx, align 4, !tbaa !26
  %i.by = icmp sgt i64 %i.bl, 0
  br i1 %i.by, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc83
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 4 %.sroa.0213.0310, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0213.0310, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.0310, i64 noundef %i.bl) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bu
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.thread.loopexit.split-lp.loopexit.split-lp:      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.j
  %lpad.loopexit.split-lp370 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.h, %.lr.ph312
  %.sroa.13219.1 = phi ptr [ %.sroa.13219.0308, %.lr.ph312 ], [ %i.ca, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13219.0308, %bb.h ] ; 2 uses
  %.sroa.9217.1 = phi ptr [ %.sroa.9217.0309, %.lr.ph312 ], [ %i.bz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bp, %bb.h ]
  %.sroa.0213.1 = phi ptr [ %.sroa.0213.0310, %.lr.ph312 ], [ %i.bw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0213.0310, %bb.h ] ; 2 uses
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %i.cb = icmp samesign ult i64 %indvars.iv.next328, %i.ag
  br i1 %i.cb, label %.lr.ph312, label %._crit_edge.loopexit, !llvm.loop !17

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc76
  %.0.i.i.i.i.i = phi ptr [ %i.bb, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ay, %.noexc76 ] ; 2 uses
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !34
  %i.cc = load i64, ptr %i.w, align 8, !tbaa !29  ; 7 uses
  %i.cd = icmp sgt i64 %i.cc, 1
  %.pre345 = load ptr, ptr %1, align 8, !tbaa !30 ; 4 uses
  %.pre346 = load ptr, ptr %0, align 8, !tbaa !14, !noalias !35 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !15, !noalias !35 ; 8 uses
  br i1 %i.cd, label %.lr.ph316, label %._crit_edge317

.lr.ph316:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = icmp sgt i64 %i.cf, 1
  br i1 %i.cg, label %.lr.ph316.split.us.preheader, label %.lr.ph316.split

.lr.ph316.split.us.preheader:                     ; preds = %.lr.ph316
  %load_initial = load double, ptr %i.ax, align 8
  %i.ci = fadd double %load_initial, 0.000000e+00 ; 9 uses
  %i.cj = add nsw i64 %i.cc, -1                   ; 2 uses
  %i.ck = add nsw i64 %i.cc, -2
  %xtraiter385 = and i64 %i.cj, 7                 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 7
  br i1 %i.cl, label %.lr.ph316.split.us.epil.preheader, label %.lr.ph316.split.us.preheader.new

.lr.ph316.split.us.preheader.new:                 ; preds = %.lr.ph316.split.us.preheader
  %unroll_iter388 = and i64 %i.cj, -8
  br label %.lr.ph316.split.us

.lr.ph316.split.us:                               ; preds = %.lr.ph316.split.us, %.lr.ph316.split.us.preheader.new
  %indvars.iv334 = phi i64 [ 1, %.lr.ph316.split.us.preheader.new ], [ %indvars.iv.next335.7, %.lr.ph316.split.us ] ; 9 uses
  %niter389 = phi i64 [ 0, %.lr.ph316.split.us.preheader.new ], [ %niter389.next.7, %.lr.ph316.split.us ]
  %i.cm = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv334
  store double %i.ci, ptr %i.cm, align 8, !tbaa !34
  %i.cn = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv334
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  store double %i.ci, ptr %i.co, align 8, !tbaa !34
  %i.cp = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv334
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  store double %i.ci, ptr %i.cq, align 8, !tbaa !34
  %i.cr = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv334
  %i.cs = getelementptr i8, ptr %i.cr, i64 24
  store double %i.ci, ptr %i.cs, align 8, !tbaa !34
  %i.ct = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv334
  %i.cu = getelementptr i8, ptr %i.ct, i64 32
  store double %i.ci, ptr %i.cu, align 8, !tbaa !34
  %i.cv = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv334
  %i.cw = getelementptr i8, ptr %i.cv, i64 40
  store double %i.ci, ptr %i.cw, align 8, !tbaa !34
  %i.cx = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv334
  %i.cy = getelementptr i8, ptr %i.cx, i64 48
  store double %i.ci, ptr %i.cy, align 8, !tbaa !34
  %i.cz = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv334
  %i.da = getelementptr i8, ptr %i.cz, i64 56
  store double %i.ci, ptr %i.da, align 8, !tbaa !34
  %indvars.iv.next335.7 = add nuw nsw i64 %indvars.iv334, 8 ; 2 uses
  %niter389.next.7 = add i64 %niter389, 8         ; 2 uses
  %niter389.ncmp.7 = icmp eq i64 %niter389.next.7, %unroll_iter388
  br i1 %niter389.ncmp.7, label %._crit_edge317.thread.unr-lcssa, label %.lr.ph316.split.us, !llvm.loop !18

._crit_edge317.thread.unr-lcssa:                  ; preds = %.lr.ph316.split.us
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %._crit_edge317.thread, label %.lr.ph316.split.us.epil.preheader

.lr.ph316.split.us.epil.preheader:                ; preds = %._crit_edge317.thread.unr-lcssa, %.lr.ph316.split.us.preheader
  %indvars.iv334.epil.init = phi i64 [ 1, %.lr.ph316.split.us.preheader ], [ %indvars.iv.next335.7, %._crit_edge317.thread.unr-lcssa ]
  %lcmp.mod387 = icmp ne i64 %xtraiter385, 0
  tail call void @llvm.assume(i1 %lcmp.mod387)
  br label %.lr.ph316.split.us.epil

.lr.ph316.split.us.epil:                          ; preds = %.lr.ph316.split.us.epil, %.lr.ph316.split.us.epil.preheader
  %indvars.iv334.epil = phi i64 [ %indvars.iv334.epil.init, %.lr.ph316.split.us.epil.preheader ], [ %indvars.iv.next335.epil, %.lr.ph316.split.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph316.split.us.epil.preheader ], [ %epil.iter.next, %.lr.ph316.split.us.epil ]
  %i.db = getelementptr [8 x i8], ptr %i.ax, i64 %indvars.iv334.epil
  store double %i.ci, ptr %i.db, align 8, !tbaa !34
  %indvars.iv.next335.epil = add nuw nsw i64 %indvars.iv334.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter385
  br i1 %epil.iter.cmp.not, label %._crit_edge317.thread, label %.lr.ph316.split.us.epil, !llvm.loop !19

._crit_edge317.thread:                            ; preds = %.lr.ph316.split.us.epil, %._crit_edge317.thread.unr-lcssa
  %i.dc = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.dd = ptrtoint ptr %i.ax to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = getelementptr i8, ptr %i.ax, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 -8
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !34
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

.lr.ph316.split:                                  ; preds = %.lr.ph316
  %i.di = load i64, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.dj = add i64 %i.cf, -1                       ; 3 uses
  %xtraiter = and i64 %i.dj, 1
  %i.dk = icmp eq i64 %i.cf, 2
  %unroll_iter = and i64 %i.dj, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod378.a = trunc i64 %i.dj to i1
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %bb.f
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %.lr.ph316.split, %.loopexit
  %i.dm = phi double [ 0.000000e+00, %.lr.ph316.split ], [ %i.ew, %.loopexit ]
  %indvars.iv330 = phi i64 [ 1, %.lr.ph316.split ], [ %indvars.iv.next331, %.loopexit ] ; 4 uses
  %3 = getelementptr [4 x i8], ptr %.pre345, i64 %indvars.iv330
  %4 = getelementptr i8, ptr %3, i64 -4
  %5 = load i32, ptr %4, align 4, !tbaa !26
  %i.dn = sext i32 %5 to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %.pre346, i64 %i.dn ; 4 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.pre345, i64 %indvars.iv330
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !26
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %.pre346, i64 %i.dr ; 4 uses
  %6 = load double, ptr %i.do, align 8, !tbaa !34
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !34
  %i.du = fsub double %6, %i.dt                   ; 2 uses
  %i.dv = fmul double %i.du, %i.du                ; 3 uses
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.n
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.02223.i.i.i.i.i = phi double [ %i.em, %.lr.ph.i.i.i.i.i ], [ %i.dv, %.lr.ph.i.i.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.dw = mul nsw i64 %.01724.i.i.i.i.i, %i.di    ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.do, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !34
  %i.dz = getelementptr [8 x i8], ptr %i.ds, i64 %i.dw
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !34
  %i.eb = fsub double %i.dy, %i.ea                ; 2 uses
  %i.ec = fmul double %i.eb, %i.eb
  %i.ed = fadd double %.02223.i.i.i.i.i, %i.ec
  %i.ee = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.ef = mul nsw i64 %i.ee, %i.di                ; 2 uses
  %i.eg = getelementptr [8 x i8], ptr %i.do, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !34
  %i.ei = getelementptr [8 x i8], ptr %i.ds, i64 %i.ef
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !34
  %i.ek = fsub double %i.eh, %i.ej                ; 2 uses
  %i.el = fmul double %i.ek, %i.ek
  %i.em = fadd double %i.ed, %i.el                ; 3 uses
  %i.en = add nuw nsw i64 %.01724.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.en, %.loopexit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.dv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.em, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod378.a)
  %i.eo = mul nsw i64 %.01724.i.i.i.i.i.epil.init, %i.di ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %i.do, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !34
  %i.er = getelementptr [8 x i8], ptr %i.ds, i64 %i.eo
  %i.es = load double, ptr %i.er, align 8, !tbaa !34
  %i.et = fsub double %i.eq, %i.es                ; 2 uses
  %i.eu = fmul double %i.et, %i.et
  %i.ev = fadd double %.02223.i.i.i.i.i.epil.init, %i.eu
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.n
  %.0.i.i.i = phi double [ %i.dv, %bb.n ], [ %i.em, %.loopexit.loopexit.unr-lcssa ], [ %i.ev, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %.0.i.i.i)
  %i.ew = fadd double %i.dm, %.scalar.i           ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv330
  store double %i.ew, ptr %i.ex, align 8, !tbaa !34
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next331, %i.cc
  br i1 %exitcond333.not, label %._crit_edge317, label %bb.n, !llvm.loop !18

._crit_edge317:                                   ; preds = %.loopexit, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.ey = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ez = ptrtoint ptr %i.ax to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = getelementptr i8, ptr %i.ax, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 -8
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !34 ; 4 uses
  %i.fe = load i32, ptr %.pre345, align 4, !tbaa !26
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %.pre346, i64 %i.ff ; 4 uses
  %i.fh = getelementptr [4 x i8], ptr %.pre345, i64 %i.cc
  %i.fi = getelementptr i8, ptr %i.fh, i64 -4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !26
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %.pre346, i64 %i.fk ; 4 uses
  %i.fm = icmp eq i64 %i.cf, 0
  br i1 %i.fm, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge317
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.fo = load double, ptr %i.fg, align 8, !tbaa !34
  %i.fp = load double, ptr %i.fl, align 8, !tbaa !34
  %i.fq = fsub double %i.fo, %i.fp                ; 2 uses
  %i.fr = fmul double %i.fq, %i.fq                ; 3 uses
  %i.fs = icmp sgt i64 %i.cf, 1
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i95.preheader, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

.lr.ph.i.i.i.i.i95.preheader:                     ; preds = %bb.o
  %i.ft = add nsw i64 %i.cf, -1                   ; 3 uses
  %xtraiter379 = and i64 %i.ft, 1
  %i.fu = icmp eq i64 %i.cf, 2
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i95.epil.preheader, label %.lr.ph.i.i.i.i.i95.preheader.new

.lr.ph.i.i.i.i.i95.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i95.preheader
  %unroll_iter383 = and i64 %i.ft, -2
  br label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %.lr.ph.i.i.i.i.i95, %.lr.ph.i.i.i.i.i95.preheader.new
  %.01724.i.i.i.i.i96 = phi i64 [ 1, %.lr.ph.i.i.i.i.i95.preheader.new ], [ %i.gm, %.lr.ph.i.i.i.i.i95 ] ; 3 uses
  %.02223.i.i.i.i.i97 = phi double [ %i.fr, %.lr.ph.i.i.i.i.i95.preheader.new ], [ %i.gl, %.lr.ph.i.i.i.i.i95 ]
  %niter384 = phi i64 [ 0, %.lr.ph.i.i.i.i.i95.preheader.new ], [ %niter384.next.1, %.lr.ph.i.i.i.i.i95 ]
  %i.fv = mul nsw i64 %.01724.i.i.i.i.i96, %i.fn  ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.fg, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !34
  %i.fy = getelementptr [8 x i8], ptr %i.fl, i64 %i.fv
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !34
  %i.ga = fsub double %i.fx, %i.fz                ; 2 uses
  %i.gb = fmul double %i.ga, %i.ga
  %i.gc = fadd double %.02223.i.i.i.i.i97, %i.gb
  %i.gd = add nuw nsw i64 %.01724.i.i.i.i.i96, 1
  %i.ge = mul nsw i64 %i.gd, %i.fn                ; 2 uses
  %i.gf = getelementptr [8 x i8], ptr %i.fg, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !34
  %i.gh = getelementptr [8 x i8], ptr %i.fl, i64 %i.ge
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !34
  %i.gj = fsub double %i.gg, %i.gi                ; 2 uses
  %i.gk = fmul double %i.gj, %i.gj
  %i.gl = fadd double %i.gc, %i.gk                ; 3 uses
  %i.gm = add nuw nsw i64 %.01724.i.i.i.i.i96, 2  ; 2 uses
  %niter384.next.1 = add nuw i64 %niter384, 2     ; 2 uses
  %niter384.ncmp.1 = icmp eq i64 %niter384.next.1, %unroll_iter383
  br i1 %niter384.ncmp.1, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i95, !llvm.loop !20

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i95
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %.lr.ph.i.i.i.i.i95.epil.preheader

.lr.ph.i.i.i.i.i95.epil.preheader:                ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i95.preheader
  %.01724.i.i.i.i.i96.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.gm, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i97.epil.init = phi double [ %i.fr, %.lr.ph.i.i.i.i.i95.preheader ], [ %i.gl, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod382 = trunc i64 %i.ft to i1
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %i.gn = mul nsw i64 %.01724.i.i.i.i.i96.epil.init, %i.fn ; 2 uses
  %i.go = getelementptr [8 x i8], ptr %i.fg, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !34
  %i.gq = getelementptr [8 x i8], ptr %i.fl, i64 %i.gn
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !34
  %i.gs = fsub double %i.gp, %i.gr                ; 2 uses
  %i.gt = fmul double %i.gs, %i.gs
  %i.gu = fadd double %.02223.i.i.i.i.i97.epil.init, %i.gt
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i95.epil.preheader, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit.unr-lcssa, %._crit_edge317.thread, %bb.o, %._crit_edge317
  %i.gv = phi double [ %i.fd, %._crit_edge317 ], [ %i.fd, %bb.o ], [ %i.dh, %._crit_edge317.thread ], [ %i.fd, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit.unr-lcssa ], [ %i.fd, %.lr.ph.i.i.i.i.i95.epil.preheader ]
  %.0.i.i.i93 = phi double [ 0.000000e+00, %._crit_edge317 ], [ %i.fr, %bb.o ], [ 0.000000e+00, %._crit_edge317.thread ], [ %i.gl, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.loopexit.unr-lcssa ], [ %i.gu, %.lr.ph.i.i.i.i.i95.epil.preheader ]
  %.scalar.i94 = tail call noundef double @llvm.sqrt.f64(double %.0.i.i.i93)
  %i.gw = fadd double %i.gv, %.scalar.i94         ; 3 uses
  %i.gx = shl nsw i64 %i.cc, 1
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.gx, i64 noundef %i.cc, i64 noundef 2)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit108

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.gy = load i64, ptr %i.w, align 8, !tbaa !29  ; 5 uses
  %i.gz = icmp sgt i64 %i.gy, 0
  br i1 %i.gz, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph, label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.ha = load ptr, ptr %1, align 8, !tbaa !30    ; 3 uses
  %i.hb = load ptr, ptr %2, align 8, !tbaa !14, !noalias !37 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !15, !noalias !37
  %.not289 = icmp eq i64 %i.hd, 1                 ; 2 uses
  %spec.select287 = zext i1 %.not289 to i64       ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !13
  %i.hg = select i1 %.not289, i64 0, i64 %i.hf    ; 3 uses
  %xtraiter390 = and i64 %i.gy, 1
  %i.hh = icmp eq i64 %i.gy, 1
  br i1 %i.hh, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.epil.preheader, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph.new

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph.new: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph
  %unroll_iter394 = and i64 %i.gy, 9223372036854775806
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit

_ZNSt6vectorIdSaIdEED2Ev.exit.loopexit.unr-lcssa: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit
  %lcmp.mod392.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod392.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.epil.preheader

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.epil.preheader: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.loopexit.unr-lcssa, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph
  %indvars.iv338.epil.init = phi i64 [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph ], [ %indvars.iv.next339.1, %_ZNSt6vectorIdSaIdEED2Ev.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod393 = trunc i64 %i.gy to i1
  tail call void @llvm.assume(i1 %lcmp.mod393)
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv338.epil.init
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !34
  %i.hk = fmul double %i.hj, 2.000000e+00
  %i.hl = fmul double %i.hk, f0x400921FB54442D18
  %i.hm = fdiv double %i.hl, %i.gw                ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv338.epil.init
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !26
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.1235, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !26
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hs ; 2 uses
  %i.hu = tail call double @cos(double noundef %i.hm) #17
  store double %i.hu, ptr %i.ht, align 8, !tbaa !34, !noalias !38
  %i.hv = tail call double @sin(double noundef %i.hm) #17
  %i.hw = getelementptr [8 x i8], ptr %i.ht, i64 %i.hg
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %spec.select287
  store double %i.hv, ptr %i.hx, align 8, !tbaa !34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.epil.preheader, %_ZNSt6vectorIdSaIdEED2Ev.exit.loopexit.unr-lcssa, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.aw) #16
  %.not.i.i103 = icmp eq ptr %.sroa.0187.0, null
  br i1 %.not.i.i103, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.hy = ptrtoint ptr %.sroa.19197.0 to i64
  %i.hz = sub i64 %i.hy, %i.aa                    ; 2 uses
  %i.ia = ashr exact i64 %i.hz, 3
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds [8 x i8], ptr %.sroa.19197.0, i64 %i.ib
  tail call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.hz) #16
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.p
  %.not.i.i.i104 = icmp eq ptr %.sroa.0200.1235, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.id = ptrtoint ptr %.sroa.17209.1234 to i64
  %i.ie = ptrtoint ptr %.sroa.0200.1235 to i64
  %i.if = sub i64 %i.id, %i.ie
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.1235, i64 noundef %i.if) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.q
  %.not.i.i.i105 = icmp eq ptr %.sroa.0213.0.lcssa, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIiSaIiEED2Ev.exit106, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ig = ptrtoint ptr %.sroa.13219.0.lcssa to i64
  %i.ih = ptrtoint ptr %.sroa.0213.0.lcssa to i64
  %i.ii = sub i64 %i.ig, %i.ih
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.0.lcssa, i64 noundef %i.ii) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit106

_ZNSt6vectorIiSaIiEED2Ev.exit106:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.r
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit108:                 ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.aw) #16
  br label %bb.s

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph.new
  %indvars.iv338 = phi i64 [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph.new ], [ %indvars.iv.next339.1, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit ] ; 4 uses
  %niter395 = phi i64 [ 0, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit.lr.ph.new ], [ %niter395.next.1, %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKd.exit ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv338
  %i.il = load double, ptr %i.ik, align 8, !tbaa !34
  %i.im = fmul double %i.il, 2.000000e+00
  %i.in = fmul double %i.im, f0x400921FB54442D18
end_hunk_0
