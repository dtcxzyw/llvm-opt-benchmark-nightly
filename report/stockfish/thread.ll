inline.NumInlined: 2122
inline.NumDeleted: 1239
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE:bb.a

declare void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish10NumaConfig35distribute_threads_among_numa_nodesEm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !190  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !191    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 48                  ; 3 uses
  %i.i = icmp eq i64 %i.g, 48
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !26
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.j, label %bb.e, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #31
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #29 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false), !tbaa !26
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.h
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge29, label %.preheader.lr.ph

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread:     ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.not46 = icmp eq i64 %2, 0
  br i1 %.not46, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.sroa.020.050 = phi ptr [ null, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread ], [ %i.l, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ] ; 11 uses
  %.sroa.9.048 = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread ], [ %i.n, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit
  %i.q = phi ptr [ null, %.preheader.lr.ph ], [ %i.bd, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 5 uses
  %i.r = phi ptr [ null, %.preheader.lr.ph ], [ %i.be, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %i.s = phi ptr [ null, %.preheader.lr.ph ], [ %i.bf, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 3 uses
  %.01428 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bj, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !190  ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !191    ; 11 uses
  %.not30 = icmp eq ptr %i.t, %i.u
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 48                  ; 3 uses
  %xtraiter = and i64 %i.y, 7                     ; 3 uses
  %i.z = icmp ult i64 %i.y, 8
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.y, -8
  br label %.lr.ph

._crit_edge29:                                    ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.sroa.020.052 = phi ptr [ %i.l, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %.sroa.020.050, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 2 uses
  %.sroa.9.047 = phi i64 [ %i.n, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ], [ %.sroa.9.048, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.aa = ptrtoint ptr %.sroa.020.052 to i64
  %i.ab = sub i64 %.sroa.9.047, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.052, i64 noundef %i.ab) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.027.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.et, %._crit_edge.loopexit.unr-lcssa ]
  %.01326.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %.1.7, %._crit_edge.loopexit.unr-lcssa ]
  %.02325.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.124.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.027.epil = phi i64 [ %i.am, %.lr.ph.epil ], [ %.027.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %.01326.epil = phi float [ %.1.epil, %.lr.ph.epil ], [ %.01326.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.02325.epil = phi i64 [ %.124.epil, %.lr.ph.epil ], [ %.02325.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027.epil
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.ae = add i64 %i.ad, 1
  %i.af = uitofp i64 %i.ae to float
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027.epil
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.aj = uitofp i64 %i.ai to float
  %i.ak = fdiv float %i.af, %i.aj                 ; 2 uses
  %i.al = fcmp olt float %i.ak, %.01326.epil      ; 2 uses
  %.124.epil = select i1 %i.al, i64 %.027.epil, i64 %.02325.epil ; 2 uses
  %.1.epil = select i1 %i.al, float %i.ak, float %.01326.epil
  %i.am = add nuw i64 %.027.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !192

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.023.lcssa = phi i64 [ 0, %.preheader ], [ %.124.7, %._crit_edge.loopexit.unr-lcssa ], [ %.124.epil, %.lr.ph.epil ] ; 3 uses
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i64 %.023.lcssa, ptr %i.s, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.o, align 8, !tbaa !132
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ao = ptrtoint ptr %i.r to i64
  %i.ap = ptrtoint ptr %i.q to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i16)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #29 ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store i64 %.023.lcssa, ptr %i.az, align 8, !tbaa !26
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.q, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aq) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ay, ptr %0, align 8, !tbaa !129
  store ptr %i.bb, ptr %i.o, align 8, !tbaa !132
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw ; 2 uses
  store ptr %i.bc, ptr %i.p, align 8, !tbaa !157
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.bd = phi ptr [ %i.q, %bb.f ], [ %i.ay, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.be = phi ptr [ %i.r, %bb.f ], [ %i.bc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.bf = phi ptr [ %i.an, %bb.f ], [ %i.bb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.023.lcssa ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !26
  %i.bj = add nuw i64 %.01428, 1                  ; 2 uses
  %exitcond31.not = icmp eq i64 %i.bj, %2
  br i1 %exitcond31.not, label %._crit_edge29, label %.preheader, !llvm.loop !194

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.027 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.et, %.lr.ph ] ; 25 uses
  %.01326 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %.1.7, %.lr.ph ] ; 2 uses
  %.02325 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.124.7, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !26
  %i.bm = add i64 %i.bl, 1
  %i.bn = uitofp i64 %i.bm to float
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !37
  %i.br = uitofp i64 %i.bq to float
  %i.bs = fdiv float %i.bn, %i.br                 ; 2 uses
  %i.bt = fcmp olt float %i.bs, %.01326           ; 2 uses
  %.124 = select i1 %i.bt, i64 %.027, i64 %.02325
  %.1 = select i1 %i.bt, float %i.bs, float %.01326 ; 2 uses
  %i.bu = or disjoint i64 %.027, 1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027
  %3 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bw = load i64, ptr %3, align 8, !tbaa !26
  %i.bx = add i64 %i.bw, 1
  %i.by = uitofp i64 %i.bx to float
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !37
  %i.cc = uitofp i64 %i.cb to float
  %i.cd = fdiv float %i.by, %i.cc                 ; 2 uses
  %i.ce = fcmp olt float %i.cd, %.1               ; 2 uses
  %.124.1 = select i1 %i.ce, i64 %i.bu, i64 %.124
  %.1.1 = select i1 %i.ce, float %i.cd, float %.1 ; 2 uses
  %i.cf = or disjoint i64 %.027, 2
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027
  %4 = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ch = load i64, ptr %4, align 8, !tbaa !26
  %i.ci = add i64 %i.ch, 1
  %i.cj = uitofp i64 %i.ci to float
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 136
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !37
  %i.cn = uitofp i64 %i.cm to float
  %i.co = fdiv float %i.cj, %i.cn                 ; 2 uses
  %i.cp = fcmp olt float %i.co, %.1.1             ; 2 uses
  %.124.2 = select i1 %i.cp, i64 %i.cf, i64 %.124.1
  %.1.2 = select i1 %i.cp, float %i.co, float %.1.1 ; 2 uses
  %i.cq = or disjoint i64 %.027, 3
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027
  %5 = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cs = load i64, ptr %5, align 8, !tbaa !26
  %i.ct = add i64 %i.cs, 1
  %i.cu = uitofp i64 %i.ct to float
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 184
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !37
  %i.cy = uitofp i64 %i.cx to float
  %i.cz = fdiv float %i.cu, %i.cy                 ; 2 uses
  %i.da = fcmp olt float %i.cz, %.1.2             ; 2 uses
  %.124.3 = select i1 %i.da, i64 %i.cq, i64 %.124.2
  %.1.3 = select i1 %i.da, float %i.cz, float %.1.2 ; 2 uses
  %i.db = or disjoint i64 %.027, 4
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027
  %6 = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.dd = load i64, ptr %6, align 8, !tbaa !26
  %i.de = add i64 %i.dd, 1
  %i.df = uitofp i64 %i.de to float
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 232
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !37
  %i.dj = uitofp i64 %i.di to float
  %i.dk = fdiv float %i.df, %i.dj                 ; 2 uses
  %i.dl = fcmp olt float %i.dk, %.1.3             ; 2 uses
  %.124.4 = select i1 %i.dl, i64 %i.db, i64 %.124.3
  %.1.4 = select i1 %i.dl, float %i.dk, float %.1.3 ; 2 uses
  %i.dm = or disjoint i64 %.027, 5
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027
  %7 = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.do = load i64, ptr %7, align 8, !tbaa !26
  %i.dp = add i64 %i.do, 1
  %i.dq = uitofp i64 %i.dp to float
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 280
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !37
  %i.du = uitofp i64 %i.dt to float
  %i.dv = fdiv float %i.dq, %i.du                 ; 2 uses
  %i.dw = fcmp olt float %i.dv, %.1.4             ; 2 uses
  %.124.5 = select i1 %i.dw, i64 %i.dm, i64 %.124.4
  %.1.5 = select i1 %i.dw, float %i.dv, float %.1.4 ; 2 uses
  %i.dx = or disjoint i64 %.027, 6
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027
  %8 = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.dz = load i64, ptr %8, align 8, !tbaa !26
  %i.ea = add i64 %i.dz, 1
  %i.eb = uitofp i64 %i.ea to float
  %i.ec = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 328
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !37
  %i.ef = uitofp i64 %i.ee to float
  %i.eg = fdiv float %i.eb, %i.ef                 ; 2 uses
  %i.eh = fcmp olt float %i.eg, %.1.5             ; 2 uses
  %.124.6 = select i1 %i.eh, i64 %i.dx, i64 %.124.5
  %.1.6 = select i1 %i.eh, float %i.eg, float %.1.5 ; 2 uses
  %i.ei = or disjoint i64 %.027, 7
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.050, i64 %.027
  %9 = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.ek = load i64, ptr %9, align 8, !tbaa !26
  %i.el = add i64 %i.ek, 1
  %i.em = uitofp i64 %i.el to float
  %i.en = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.027
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 376
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !37
  %i.eq = uitofp i64 %i.ep to float
  %i.er = fdiv float %i.em, %i.eq                 ; 2 uses
  %i.es = fcmp olt float %i.er, %.1.6             ; 2 uses
  %.124.7 = select i1 %i.es, i64 %i.ei, i64 %.124.6 ; 3 uses
  %.1.7 = select i1 %i.es, float %i.er, float %.1.6 ; 2 uses
  %i.et = add nuw i64 %.027, 8                    ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !195

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.thread, %._crit_edge29, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i64, ptr %1, align 8, !tbaa !26    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp ult i64 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !196

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = icmp ult i64 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i64 %.pre, ptr %i.l, align 8, !tbaa !197
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !199
  %i.n = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i64, ptr %i.l, align 8, !tbaa !26
  %i.t = load i64, ptr %i.r, align 8, !tbaa !26
  %i.u = icmp ult i64 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !37
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.e, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i64, ptr %1, align 8, !tbaa !26    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp ult i64 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !196

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = icmp ult i64 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i64 %.pre, ptr %i.l, align 8, !tbaa !197
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !199
  %i.n = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i64, ptr %i.l, align 8, !tbaa !26
  %i.t = load i64, ptr %i.r, align 8, !tbaa !26
  %i.u = icmp ult i64 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !37
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.e, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.z
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextEENK3$_2clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #3 align 2 !type !200 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %2 = alloca %"class.Stockfish::OptionalThreadToNumaNodeBinder", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !202, !nonnull !71, !align !72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29, !noalias !203 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9Stockfish6Search17NullSearchManagerE, i64 16), ptr %i.e, align 8, !tbaa !42, !noalias !203
  br label %.critedge10

_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !206, !nonnull !71, !align !72
  %i.h = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29, !noalias !207 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9Stockfish6Search13SearchManagerE, i64 16), ptr %i.h, align 8, !tbaa !42, !noalias !207
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 -1, ptr %i.i, align 8, !tbaa !210, !noalias !207
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !212, !noalias !207
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr %i.g, ptr %i.k, align 8, !tbaa !180, !noalias !207
  br label %.critedge10

.critedge10:                                      ; preds = %_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit
  %.sroa.022.024 = phi ptr [ %i.e, %_ZNSt10unique_ptrIN9Stockfish6Search17NullSearchManagerESt14default_deleteIS2_EED2Ev.exit ], [ %i.h, %_ZNSt10unique_ptrIN9Stockfish6Search13SearchManagerESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !213, !nonnull !71
  %i.n = load i8, ptr %i.m, align 1, !tbaa !155, !range !99, !noundef !71
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !214, !nonnull !71, !align !72
  br label %bb.c

bb.c:                                             ; preds = %.critedge10, %bb.b
  %.sink26 = phi ptr [ %i.q, %bb.b ], [ null, %.critedge10 ]
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %.in, align 8, !tbaa !215, !nonnull !71, !align !72 ; 2 uses
  %.sink = load i64, ptr %i.r, align 8, !tbaa !26
  store ptr %.sink26, ptr %2, align 8, !tbaa !216
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink, ptr %i.s, align 8, !tbaa !218
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !219, !nonnull !71, !align !72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !220, !nonnull !71, !align !72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !221, !nonnull !71, !align !72
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !215, !nonnull !71, !align !72
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ag = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29, !noalias !222 ; 3 uses
  %i.ah = ptrtoint ptr %.sroa.022.024 to i64
  store i64 %i.ah, ptr %1, align 8, !tbaa !122, !noalias !222
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !26, !noalias !222
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !26, !noalias !222
  call void @_ZN9Stockfish6ThreadC2ERNS_6Search11SharedStateESt10unique_ptrINS1_14ISearchManagerESt14default_deleteIS5_EEmmmNS_30OptionalThreadToNumaNodeBinderE(ptr noundef nonnull align 8 dereferenceable(192) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 %1, i64 noundef %i.ai, i64 noundef %i.aa, i64 noundef %i.aj, ptr noundef nonnull byval(%"class.Stockfish::OptionalThreadToNumaNodeBinder") align 8 %2), !noalias !222
  %i.ak = load ptr, ptr %1, align 8, !tbaa !122, !noalias !222 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %_ZNKSt14default_deleteIN9Stockfish6Search14ISearchManagerEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN9Stockfish6Search14ISearchManagerEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42, !noalias !222
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !222
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #26, !noalias !222, !inline_history !225
  br label %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN9Stockfish6Search14ISearchManagerEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !226
  %.not.i13 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.as = ptrtoint ptr %i.ag to i64
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !124
  br label %_ZNSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZSt11make_uniqueIN9Stockfish6ThreadEJRNS0_6Search11SharedStateESt10unique_ptrINS2_14ISearchManagerESt14default_deleteIS6_EERKmmRmRNS0_30OptionalThreadToNumaNodeBinderEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !126 ; 12 uses
  %i.av = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i16 = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i16)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #29 ; 12 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  %i.bh = ptrtoint ptr %i.ag to i64
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !89
  %.not10.i.i.i.i = icmp eq ptr %i.au, %i.ap
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bi = add i64 %i.av, -8
  %i.bj = sub i64 %i.bi, %i.aw                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bj, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bm = add i64 %i.av, -8
  %i.bn = sub i64 %i.bm, %i.aw
  %i.bo = and i64 %i.bn, -8                       ; 2 uses
  %3 = getelementptr i8, ptr %i.bf, i64 %i.bo
  %scevgep = getelementptr i8, ptr %3, i64 8
  %scevgep.a = getelementptr i8, ptr %i.au, i64 %i.bo
  %scevgep30 = getelementptr i8, ptr %scevgep.a, i64 8
  %bound0 = icmp ult ptr %i.bf, %scevgep30
  %bound1 = icmp ult ptr %i.au, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %i.bj, 248
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.bl, 24
  %n.vec = and i64 %i.bl, 4611686018427387872     ; 4 uses
  %i.bq = shl i64 %n.vec, 3                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.bf, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.au, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bt ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.au, i64 %i.bt ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.bu = getelementptr i8, ptr %next.gep32, i64 64
  %i.bv = getelementptr i8, ptr %next.gep32, i64 128
  %i.bw = getelementptr i8, ptr %next.gep32, i64 192
  %wide.load = load <8 x i64>, ptr %next.gep32, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  %wide.load33 = load <8 x i64>, ptr %i.bu, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  %wide.load34 = load <8 x i64>, ptr %i.bv, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  %wide.load35 = load <8 x i64>, ptr %i.bw, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  %i.bx = getelementptr i8, ptr %next.gep, i64 64
  %i.by = getelementptr i8, ptr %next.gep, i64 128
  %i.bz = getelementptr i8, ptr %next.gep, i64 192
  store <8 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !89, !alias.scope !235, !noalias !232
  store <8 x i64> %wide.load33, ptr %i.bx, align 8, !tbaa !89, !alias.scope !235, !noalias !232
  store <8 x i64> %wide.load34, ptr %i.by, align 8, !tbaa !89, !alias.scope !235, !noalias !232
  store <8 x i64> %wide.load35, ptr %i.bz, align 8, !tbaa !89, !alias.scope !235, !noalias !232
  %i.ca = getelementptr i8, ptr %next.gep32, i64 64
  %i.cb = getelementptr i8, ptr %next.gep32, i64 128
  %i.cc = getelementptr i8, ptr %next.gep32, i64 192
  store <8 x ptr> splat (ptr null), ptr %next.gep32, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  store <8 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  store <8 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  store <8 x ptr> splat (ptr null), ptr %i.cc, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !149

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.bl, 4611686018427387896   ; 3 uses
  %i.ce = shl i64 %n.vec37, 3                     ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bf, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.au, i64 %i.ce
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.ch = shl i64 %index38, 3                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.bf, i64 %i.ch
  %next.gep40 = getelementptr i8, ptr %i.au, i64 %i.ch ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %wide.load41 = load <8 x i64>, ptr %next.gep40, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  store <8 x i64> %wide.load41, ptr %next.gep39, align 8, !tbaa !89, !alias.scope !235, !noalias !232
  store <8 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !89, !alias.scope !232, !noalias !227
  %index.next42 = add nuw i64 %index38, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !238

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.bl, %n.vec37
  br i1 %cmp.n43, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bf, %iter.check ], [ %i.bf, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.au, %iter.check ], [ %i.au, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.cj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !89, !alias.scope !230, !noalias !227
  store i64 %i.cj, ptr %.012.i.i.i.i, align 8, !tbaa !89, !alias.scope !227, !noalias !230
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !89, !alias.scope !230, !noalias !227
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, %i.ap
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !239

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bf, %_ZNKSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.cf, %vec.epilog.middle.block ], [ %i.br, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #30
  br label %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.g
  store ptr %i.bf, ptr %i.t, align 8, !tbaa !126
  store ptr %i.cm, ptr %i.ao, align 8, !tbaa !124
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.cn, ptr %i.aq, align 8, !tbaa !226
  br label %_ZNSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish6Search14ISearchManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish10ThreadPool5clearEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 6 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN9Stockfish6Thread12clear_workerEv.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %.not1416 = icmp eq ptr %i.i, %i.j
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %.preheader, %_ZN9Stockfish6Thread12clear_workerEv.exit
  %.sroa.011.015 = phi ptr [ %i.d, %.preheader ], [ %i.p, %_ZN9Stockfish6Thread12clear_workerEv.exit ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.011.015, align 8, !tbaa !89 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = ptrtoint ptr %i.l to i64
  store i64 0, ptr %i.h, align 8
  store i64 %i.m, ptr %2, align 8, !tbaa !89
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread12clear_workerEvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.g, align 8, !tbaa !92
  store ptr @"_ZNSt17_Function_handlerIFvvEZN9Stockfish6Thread12clear_workerEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.f, align 8, !tbaa !93
  call void @_ZN9Stockfish6Thread14run_custom_jobESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(192) %i.l, ptr noundef nonnull align 8 %2)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !93   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN9Stockfish6Thread12clear_workerEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !240 ; 0 uses
  br label %_ZN9Stockfish6Thread12clear_workerEv.exit

_ZN9Stockfish6Thread12clear_workerEv.exit:        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.c
  br i1 %.not, label %bb.b, label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !120
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.q = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.b ]
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11422176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 92
  store i32 32001, ptr %i.w, align 4, !tbaa !241
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store double 8.500000e-01, ptr %i.x, align 8, !tbaa !248
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store i32 0, ptr %i.y, align 8, !tbaa !249
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store i32 32001, ptr %i.z, align 8, !tbaa !250
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store double -1.000000e+00, ptr %i.aa, align 8, !tbaa !251
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @_ZN9Stockfish14TimeManagement5clearEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ab) #26
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit
  %.sroa.07.017 = phi ptr [ %i.i, %.lr.ph ], [ %i.am, %_ZN9Stockfish6Thread24wait_for_search_finishedEv.exit ] ; 2 uses
end_hunk_0
