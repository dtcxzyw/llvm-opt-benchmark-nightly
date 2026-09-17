Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/contours_approx?download=true
inline.NumInlined: 263
inline.NumDeleted: 128
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv20approximateChainTC89ERKNS_18ContourDataStorageIaLm1024ELm0EEERKNS_6Point_IiEEiRNS0_IS5_Lm1024ELm0EEE:bb.a
  %i.jo = add nuw i64 %.03663.i, 1                ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.jo, %i.cs
  br i1 %exitcond.not.i104, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit, label %.lr.ph.i103, !llvm.loop !40

.critedge.i:                                      ; preds = %.lr.ph.i103, %.preheader62.i
  %.036.lcssa.i = phi i64 [ 1, %.preheader62.i ], [ %.03663.i, %.lr.ph.i103 ] ; 2 uses
  %.not88.i = icmp eq i64 %.036.lcssa.i, %i.cs
  br i1 %.not88.i, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i
  %i.jp = add i64 %.036.lcssa.i, -1               ; 4 uses
  %i.jq = add nsw i64 %i.cs, -2                   ; 3 uses
  %.not4566.i = icmp eq i64 %i.jq, 0
  br i1 %.not4566.i, label %.critedge2.thread.i, label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %bb.ay, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i
  %indvar = phi i64 [ %indvar.next, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i ], [ 0, %bb.ay ] ; 3 uses
  %.067.i = phi i64 [ %i.kr, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i ], [ %i.jq, %bb.ay ] ; 4 uses
  %i.jr = add i64 %indvar, 1
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.067.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !85
  %.not46.i = icmp eq i32 %i.ju, 0
  br i1 %.not46.i, label %.critedge2.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph68.i
  %.01.i.i = add i64 %.067.i, 1                   ; 4 uses
  %i.jv = icmp ult i64 %.01.i.i, %i.cs
  br i1 %i.jv, label %.lr.ph.i.i.preheader, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.az
  %xtraiter = and i64 %i.jr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.02.i.i.prol = phi i64 [ %.0.i.i.prol, %.lr.ph.i.i.prol ], [ %.01.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.02.i.i.prol
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  store i8 1, ptr %i.jx, align 4, !tbaa !77
  %.0.i.i.prol = add nuw i64 %.02.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !41

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.02.i.i.unr = phi i64 [ %.01.i.i, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %i.jy = icmp ult i64 %indvar, 7
  br i1 %i.jy, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02.i.i = phi i64 [ %.0.i.i.7, %.lr.ph.i.i ], [ %.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.02.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 20
  store i8 1, ptr %i.ka, align 4, !tbaa !77
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.02.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 44
  store i8 1, ptr %i.kc, align 4, !tbaa !77
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.02.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 68
  store i8 1, ptr %i.ke, align 4, !tbaa !77
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.02.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 92
  store i8 1, ptr %i.kg, align 4, !tbaa !77
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.02.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 116
  store i8 1, ptr %i.ki, align 4, !tbaa !77
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.02.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 140
  store i8 1, ptr %i.kk, align 4, !tbaa !77
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.02.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 164
  store i8 1, ptr %i.km, align 4, !tbaa !77
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.02.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 188
  store i8 1, ptr %i.ko, align 4, !tbaa !77
  %.0.i.i.7 = add nuw i64 %.02.i.i, 8             ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %.0.i.i.7, %i.cs
  br i1 %exitcond.not.i.i.7, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i, label %.lr.ph.i.i, !llvm.loop !42

_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.az
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.01.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store i32 0, ptr %i.kq, align 8, !tbaa !85
  %i.kr = add i64 %.067.i, -1                     ; 2 uses
  %.not45.i = icmp eq i64 %i.kr, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not45.i, label %.critedge2.i, label %.lr.ph68.i, !llvm.loop !43

.critedge2.i:                                     ; preds = %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i, %.lr.ph68.i
  %.0.lcssa.ph.i = phi i64 [ %.067.i, %.lr.ph68.i ], [ 0, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i ]
  %i.ks = icmp ne i64 %.0.lcssa.ph.i, %i.jq
  %i.kt = icmp ne i64 %i.jp, 0
  %brmerge.i = or i1 %i.kt, %i.ks
  br i1 %brmerge.i, label %.critedge, label %.preheader.preheader.i

.critedge2.thread.i:                              ; preds = %bb.ay
  %i.ku = icmp eq i64 %i.jp, 0
  br i1 %i.ku, label %.preheader.preheader.i, label %.critedge

.preheader.preheader.i:                           ; preds = %.critedge2.thread.i, %.critedge2.i
  %i.kv = tail call i64 @llvm.usub.sat.i64(i64 %i.cs, i64 1)
  %exitcond72.not.i299 = icmp ult i64 %i.cs, 2
  br i1 %exitcond72.not.i299, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %exitcond72.not.i = icmp eq i64 %.0.i60.i, %i.kv
  br i1 %exitcond72.not.i, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i, label %.lr.ph, !llvm.loop !44

.lr.ph:                                           ; preds = %.preheader.preheader.i, %.preheader.i
  %.0.in.i.i300 = phi i64 [ %.0.i60.i, %.preheader.i ], [ 0, %.preheader.preheader.i ]
  %.0.i60.i = add nuw i64 %.0.in.i.i300, 1        ; 4 uses
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.6, i64 %.0.i60.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 20
  %i.ky = load i8, ptr %i.kx, align 4, !tbaa !77, !range !80, !noundef !81
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %.preheader.i, label %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i_crit_edge, !llvm.loop !44

._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i_crit_edge: ; preds = %.lr.ph
  br label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i, !llvm.loop !44

_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i: ; preds = %.preheader.i, %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i_crit_edge, %.preheader.preheader.i
  %.0.lcssa.i.i = phi i64 [ %.0.i60.i, %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i_crit_edge ], [ %i.cs, %.preheader.preheader.i ], [ %i.cs, %.preheader.i ]
  %.not.i.i = icmp eq ptr %.sroa.26.5, %.sroa.43.6
  br i1 %.not.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.26.5, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.6, i64 24, i1 false), !tbaa.struct !72
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.26.5, i64 24
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i

bb.bb:                                            ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i
  %i.lb = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.lb, label %bb.bc, label %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
          to label %.noexc111 unwind label %bb.bd

.noexc111:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bb
  %i.lc = shl nsw i64 %i.cs, 1
  %i.ld = icmp slt i64 %i.cr, 0
  %i.le = tail call i64 @llvm.umin.i64(i64 %i.lc, i64 384307168202282325)
  %i.lf = select i1 %i.ld, i64 384307168202282325, i64 %i.le ; 2 uses
  %i.lg = mul nuw nsw i64 %i.lf, 24
  %i.lh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lg) #13
          to label %.noexc112 unwind label %bb.bd ; 5 uses

.noexc112:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.li, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.6, i64 24, i1 false), !tbaa.struct !72
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc112
  %.03.i.i.i.i.i.i = phi ptr [ %i.lk, %.lr.ph.i.i.i.i.i.i ], [ %i.lh, %.noexc112 ] ; 3 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.6, %.noexc112 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !72, !alias.scope !88
  %i.lj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lj, %.sroa.26.5
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !32

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 48
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.6, i64 noundef %i.cr) #15
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %i.lh, i64 %i.lf
  %.pre237 = ptrtoint ptr %i.lh to i64
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ba
  %.pre231.pre-phi = phi i64 [ %.pre237, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.cq, %bb.ba ]
  %.sroa.0.9 = phi ptr [ %i.lh, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0.6, %bb.ba ]
  %.sroa.26.8 = phi ptr [ %i.ll, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.la, %bb.ba ] ; 3 uses
  %.sroa.43.9 = phi ptr [ %i.lm, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.43.6, %bb.ba ]
  %i.ln = getelementptr inbounds i8, ptr %.sroa.26.8, i64 -4
  store i8 0, ptr %i.ln, align 4, !tbaa !77
  %.pre = ptrtoint ptr %.sroa.26.8 to i64
  %.pre233.a = sub i64 %.pre, %.pre231.pre-phi
  %.pre235 = sdiv exact i64 %.pre233.a, 24
  br label %.critedge

bb.bd:                                            ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.bc, %bb.au
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %.critedge2.i, %.critedge2.thread.i, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i, %bb.ar, %bb.as
  %.pre-phi236 = phi i64 [ %i.cs, %.critedge2.i ], [ 2, %.critedge2.thread.i ], [ %.pre235, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ %i.cs, %bb.ar ], [ %i.cs, %bb.as ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.6, %.critedge2.i ], [ %.sroa.0.6, %.critedge2.thread.i ], [ %.sroa.0.9, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ %.sroa.0.6, %bb.ar ], [ %.sroa.0.6, %bb.as ] ; 15 uses
  %.sroa.26.0 = phi ptr [ %.sroa.26.5, %.critedge2.i ], [ %.sroa.26.5, %.critedge2.thread.i ], [ %.sroa.26.8, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ %.sroa.26.5, %bb.ar ], [ %.sroa.26.5, %bb.as ] ; 2 uses
  %.sroa.43.0 = phi ptr [ %.sroa.43.6, %.critedge2.i ], [ %.sroa.43.6, %.critedge2.thread.i ], [ %.sroa.43.9, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ %.sroa.43.6, %bb.ar ], [ %.sroa.43.6, %bb.as ] ; 2 uses
  %.0 = phi i64 [ %i.jp, %.critedge2.i ], [ %i.jp, %.critedge2.thread.i ], [ %.0.lcssa.i.i, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ 0, %bb.ar ], [ 0, %bb.as ] ; 6 uses
  %i.lp = icmp ult i64 %.0, %.pre-phi236
  br i1 %i.lp, label %.lr.ph.i114.preheader, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit

.lr.ph.i114.preheader:                            ; preds = %.critedge
  %10 = add nsw i64 %.pre-phi236, -1              ; 2 uses
  %i.lq = add i64 %.0, 7
  %i.lr = add i64 %.0, -2
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118, %.lr.ph.i114.preheader
  %indvar327 = phi i64 [ %indvar.next328, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ 0, %.lr.ph.i114.preheader ] ; 3 uses
  %.04.i = phi i64 [ %.1.i119, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ %.0, %.lr.ph.i114.preheader ] ; 2 uses
  %.0413.i = phi i64 [ %i.nv, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ %.0, %.lr.ph.i114.preheader ] ; 20 uses
  %.0422.i = phi i64 [ %.2.i, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ %.0, %.lr.ph.i114.preheader ] ; 4 uses
  %.0441.i = phi i32 [ %.246.i, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ 1, %.lr.ph.i114.preheader ] ; 4 uses
  %i.ls = add i64 %i.lq, %indvar327
  %i.lt = add i64 %i.lr, %indvar327
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0413.i ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 20 ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 4, !tbaa !77, !range !80, !noundef !81
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118, label %.preheader.i115.preheader

.preheader.i115.preheader:                        ; preds = %.lr.ph.i114
  %exitcond.not.i117298 = icmp eq i64 %.0413.i, %10
  br i1 %exitcond.not.i117298, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i, label %.lr.ph304.a

.preheader.i115:                                  ; preds = %.lr.ph304.a
  %exitcond.not.i117 = icmp eq i64 %.0.i.i118, %10
  br i1 %exitcond.not.i117, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i, label %.lr.ph304.a, !llvm.loop !44

.lr.ph304.a:                                      ; preds = %.preheader.i115.preheader, %.preheader.i115
  %.0.i.i117303 = phi i64 [ %.0.i.i118, %.preheader.i115 ], [ %.0413.i, %.preheader.i115.preheader ]
  %.0.i.i118 = add i64 %.0.i.i117303, 1           ; 5 uses
  %i.ly = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0.i.i118
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 20
  %i.ma = load i8, ptr %i.lz, align 4, !tbaa !77, !range !80, !noundef !81
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %.preheader.i115, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i125, !llvm.loop !44

_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i125: ; preds = %.lr.ph304.a
  %11 = icmp ne i64 %.0.i.i118, %.pre-phi236
  %i.mc = sub i64 %.0.i.i118, %.0413.i
  %.not.i126 = icmp eq i64 %i.mc, 1
  %or.cond.i121 = and i1 %11, %.not.i126
  br i1 %or.cond.i121, label %bb.bm, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i

_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i: ; preds = %.preheader.i115, %.preheader.i115.preheader, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i125
  %i.md = icmp sgt i32 %.0441.i, 1
  br i1 %i.md, label %bb.be, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i
  %i.me = icmp eq i32 %.0441.i, 2
  br i1 %i.me, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.mf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.04.i ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !85 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !85 ; 2 uses
  %i.mk = icmp sgt i32 %i.mh, %i.mj
  br i1 %i.mk, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ml = icmp eq i32 %i.mh, %i.mj
  br i1 %i.ml, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !84
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !84
  %.not51.i = icmp ugt i64 %i.mn, %i.mp
  br i1 %.not51.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  store i8 1, ptr %i.lv, align 4, !tbaa !77
  br label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mf, i64 20
  store i8 1, ptr %i.mq, align 4, !tbaa !77
  br label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

bb.bk:                                            ; preds = %bb.be
  %i.mr = add i64 %.0422.i, 1
  %umax.i66.i = tail call i64 @llvm.umax.i64(i64 %.pre-phi236, i64 %i.mr) ; 2 uses
  %.0.i68.i305 = add i64 %.0422.i, 1              ; 2 uses
  %i.ms = icmp ult i64 %.0.i68.i305, %.pre-phi236
  br i1 %i.ms, label %.lr.ph308, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i

bb.bl:                                            ; preds = %.lr.ph308
  %.0.i68.i = add i64 %.0.i68.i306, 1             ; 2 uses
  %i.mt = icmp ult i64 %.0.i68.i, %.pre-phi236
  br i1 %i.mt, label %.lr.ph308, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i, !llvm.loop !44

.lr.ph308:                                        ; preds = %bb.bk, %bb.bl
  %.0.i68.i306 = phi i64 [ %.0.i68.i, %bb.bl ], [ %.0.i68.i305, %bb.bk ] ; 3 uses
  %i.mu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0.i68.i306
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 20
  %i.mw = load i8, ptr %i.mv, align 4, !tbaa !77, !range !80, !noundef !81
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.bl, label %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i_crit_edge, !llvm.loop !44

._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i_crit_edge: ; preds = %.lr.ph308
  br label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i, !llvm.loop !44

_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i: ; preds = %bb.bl, %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i_crit_edge, %bb.bk
  %.0.lcssa.i69.i = phi i64 [ %.0.i68.i306, %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i_crit_edge ], [ %umax.i66.i, %bb.bk ], [ %umax.i66.i, %bb.bl ] ; 3 uses
  %.01.i.i121 = add i64 %.0.lcssa.i69.i, 1        ; 3 uses
  %i.my = icmp ult i64 %.01.i.i121, %.0413.i
  br i1 %i.my, label %.lr.ph.i.i122.preheader, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

.lr.ph.i.i122.preheader:                          ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i
  %i.mz = sub i64 %i.ls, %.0.lcssa.i69.i
  %i.na = sub i64 %i.lt, %.0.lcssa.i69.i
  %xtraiter329 = and i64 %i.mz, 7                 ; 2 uses
  %lcmp.mod330.not = icmp eq i64 %xtraiter329, 0
  br i1 %lcmp.mod330.not, label %.lr.ph.i.i122.prol.loopexit, label %.lr.ph.i.i122.prol

.lr.ph.i.i122.prol:                               ; preds = %.lr.ph.i.i122.preheader, %.lr.ph.i.i122.prol
  %.02.i.i123.prol = phi i64 [ %.0.i71.i.prol, %.lr.ph.i.i122.prol ], [ %.01.i.i121, %.lr.ph.i.i122.preheader ] ; 2 uses
  %prol.iter331 = phi i64 [ %prol.iter331.next, %.lr.ph.i.i122.prol ], [ 0, %.lr.ph.i.i122.preheader ]
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123.prol
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 20
  store i8 1, ptr %i.nc, align 4, !tbaa !77
  %.0.i71.i.prol = add nuw i64 %.02.i.i123.prol, 1 ; 2 uses
  %prol.iter331.next = add i64 %prol.iter331, 1   ; 2 uses
  %prol.iter331.cmp.not = icmp eq i64 %prol.iter331.next, %xtraiter329
  br i1 %prol.iter331.cmp.not, label %.lr.ph.i.i122.prol.loopexit, label %.lr.ph.i.i122.prol, !llvm.loop !48

.lr.ph.i.i122.prol.loopexit:                      ; preds = %.lr.ph.i.i122.prol, %.lr.ph.i.i122.preheader
  %.02.i.i123.unr = phi i64 [ %.01.i.i121, %.lr.ph.i.i122.preheader ], [ %.0.i71.i.prol, %.lr.ph.i.i122.prol ]
  %i.nd = icmp ult i64 %i.na, 7
  br i1 %i.nd, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.prol.loopexit, %.lr.ph.i.i122
  %.02.i.i123 = phi i64 [ %.0.i71.i.7, %.lr.ph.i.i122 ], [ %.02.i.i123.unr, %.lr.ph.i.i122.prol.loopexit ] ; 9 uses
  %i.ne = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 20
  store i8 1, ptr %i.nf, align 4, !tbaa !77
  %i.ng = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 44
  store i8 1, ptr %i.nh, align 4, !tbaa !77
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 68
  store i8 1, ptr %i.nj, align 4, !tbaa !77
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 92
  store i8 1, ptr %i.nl, align 4, !tbaa !77
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 116
  store i8 1, ptr %i.nn, align 4, !tbaa !77
  %i.no = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 140
  store i8 1, ptr %i.np, align 4, !tbaa !77
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 164
  store i8 1, ptr %i.nr, align 4, !tbaa !77
  %i.ns = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 188
  store i8 1, ptr %i.nt, align 4, !tbaa !77
  %.0.i71.i.7 = add nuw i64 %.02.i.i123, 8        ; 2 uses
  %exitcond.not.i.i124.7 = icmp eq i64 %.0.i71.i.7, %.0413.i
  br i1 %exitcond.not.i.i124.7, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118, label %.lr.ph.i.i122, !llvm.loop !42

bb.bm:                                            ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i125
  %i.nu = add nsw i32 %.0441.i, 1
  br label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118: ; preds = %.lr.ph.i.i122.prol.loopexit, %.lr.ph.i.i122, %bb.bm, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i, %bb.bj, %bb.bi, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i, %.lr.ph.i114
  %.246.i = phi i32 [ %.0441.i, %.lr.ph.i114 ], [ %i.nu, %bb.bm ], [ 1, %bb.bi ], [ 1, %bb.bj ], [ 1, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i ], [ 1, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i ], [ 1, %.lr.ph.i.i122 ], [ 1, %.lr.ph.i.i122.prol.loopexit ]
  %.2.i = phi i64 [ %.0422.i, %.lr.ph.i114 ], [ %.0422.i, %bb.bm ], [ %.0413.i, %bb.bi ], [ %.0413.i, %bb.bj ], [ %.0413.i, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i ], [ %.0413.i, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i ], [ %.0413.i, %.lr.ph.i.i122 ], [ %.0413.i, %.lr.ph.i.i122.prol.loopexit ]
  %.1.i119 = phi i64 [ %.04.i, %.lr.ph.i114 ], [ %.0413.i, %bb.bm ], [ %.0413.i, %bb.bi ], [ %.0413.i, %bb.bj ], [ %.0413.i, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i ], [ %.0413.i, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i ], [ %.0413.i, %.lr.ph.i.i122 ], [ %.0413.i, %.lr.ph.i.i122.prol.loopexit ]
  %i.nv = add nuw i64 %.0413.i, 1                 ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %i.nv, %.pre-phi236
  %indvar.next328 = add i64 %indvar327, 1
  br i1 %exitcond.not.i120, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit, label %.lr.ph.i114, !llvm.loop !49

_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit: ; preds = %bb.ax, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118, %.critedge.i, %.critedge, %._crit_edge, %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit
  %.sroa.0.2 = phi ptr [ %.sroa.0.6, %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit ], [ %.sroa.0.6, %._crit_edge ], [ %.sroa.0.6, %.critedge.i ], [ %.sroa.0.0, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ %.sroa.0.0, %.critedge ], [ %.sroa.0.6, %bb.ax ] ; 6 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.5, %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit ], [ %.sroa.26.5, %._crit_edge ], [ %.sroa.26.5, %.critedge.i ], [ %.sroa.26.0, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ %.sroa.26.0, %.critedge ], [ %.sroa.26.5, %bb.ax ] ; 2 uses
  %.sroa.43.2 = phi ptr [ %.sroa.43.6, %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit ], [ %.sroa.43.6, %._crit_edge ], [ %.sroa.43.6, %.critedge.i ], [ %.sroa.43.0, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ %.sroa.43.0, %.critedge ], [ %.sroa.43.6, %bb.ax ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !58 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.nx, ptr %i.ny, align 8, !tbaa !57
  %.not2.i = icmp eq ptr %.sroa.0.2, %.sroa.26.2
  br i1 %.not2.i, label %_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit, %bb.bp
  %i.nz = phi i64 [ %i.ok, %bb.bp ], [ %i.nx, %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit ] ; 2 uses
  %.sroa.01.03.i = phi ptr [ %i.ol, %bb.bp ], [ %.sroa.0.2, %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i, i64 20
  %i.ob = load i8, ptr %i.oa, align 4, !tbaa !77, !range !80, !noundef !81
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i128
  %i.od = load i64, ptr %i.ny, align 8, !tbaa !57
  %i.oe = icmp eq i64 %i.od, %i.nz
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !56 ; 2 uses
  br i1 %i.oe, label %bb.bo, label %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.of = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 40
  %i.og = load i64, ptr %i.of, align 8, !tbaa !18
  store i64 %i.og, ptr %i.ny, align 8, !tbaa !57
  br label %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i

_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i: ; preds = %bb.bo, %bb.bn
  invoke void @_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %.pre.i.i, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.01.03.i)
          to label %.noexc131 unwind label %bb.br

.noexc131:                                        ; preds = %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i
  %i.oh = load ptr, ptr %3, align 8, !tbaa !56
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !18 ; 2 uses
  store i64 %i.oj, ptr %i.nw, align 8, !tbaa !58
  br label %bb.bp

bb.bp:                                            ; preds = %.noexc131, %.lr.ph.i128
  %i.ok = phi i64 [ %i.oj, %.noexc131 ], [ %i.nz, %.lr.ph.i128 ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i, i64 24 ; 2 uses
  %.not.i129 = icmp eq ptr %i.ol, %.sroa.26.2
  br i1 %.not.i129, label %_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit, label %.lr.ph.i128

_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit: ; preds = %bb.bp, %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit
  %.not.i.i.i132 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit
  %i.om = ptrtoint ptr %.sroa.43.2 to i64
  %i.on = ptrtoint ptr %.sroa.0.2 to i64
  %i.oo = sub i64 %i.om, %i.on
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.oo) #15
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EED2Ev.exit: ; preds = %bb.bq, %_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit, %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit
  ret void

bb.br:                                            ; preds = %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_0
