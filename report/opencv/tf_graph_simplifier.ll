Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tf_graph_simplifier?download=true
inline.NumInlined: 3793
inline.NumDeleted: 1123
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060520sortByExecutionOrderERN17opencv_tensorflow8GraphDefE:bb.a
  %i.jw = phi ptr [ @.str.130, %bb.bh ], [ @.str.129, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread290 ], [ @.str.129, %._crit_edge522 ]
  %i.jx = phi i64 [ 0, %bb.bh ], [ %indvars.iv723, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread290 ], [ %indvars.iv723, %._crit_edge522 ]
  %i.jy = phi i64 [ 0, %bb.bh ], [ %i.cf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread290 ], [ %i.cf, %._crit_edge522 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull %i.jw, i64 noundef %i.jx, i64 noundef %i.jy) #24
          to label %.cont unwind label %.loopexit.split-lp310.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bh:                                            ; preds = %.lr.ph521, %bb.bi
  %indvars.iv720 = phi i64 [ 0, %.lr.ph521 ], [ %indvars.iv.next721, %bb.bi ] ; 2 uses
  %.034519 = phi i32 [ 0, %.lr.ph521 ], [ %i.kh, %bb.bi ]
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv720
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !38 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !79
  %.not.i140.not = icmp eq i64 %i.kc, 0
  br i1 %.not.i140.not, label %.invoke, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kd = load ptr, ptr %i.ka, align 8, !tbaa !78
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !39
  %i.kf = icmp eq i8 %i.ke, 94
  %i.kg = zext i1 %i.kf to i32
  %i.kh = add nuw nsw i32 %.034519, %i.kg         ; 2 uses
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next721, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge522.loopexit, label %bb.bh, !llvm.loop !336

bb.bj:                                            ; preds = %._crit_edge522
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0, i64 %indvars.iv723
  store i32 %.034.lcssa, ptr %i.ki, align 4, !tbaa !40
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit133

.loopexit.split-lp310.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i125, %bb.bd, %.invoke
  %lpad.loopexit.split-lp1223 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit210

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread290: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.bg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137
  %.not.i.i142 = icmp ugt i64 %i.cf, %indvars.iv723
  br i1 %.not.i.i142, label %bb.bk, label %.invoke

bb.bk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread290
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0, i64 %indvars.iv723
  store i32 %.1, ptr %i.kj, align 4, !tbaa !40
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit133

_ZNSt6vectorIiSaIiEE9push_backERKi.exit133:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i130, %bb.bb, %bb.bj, %bb.bk
  %.sroa.0247.1 = phi ptr [ %.sroa.0247.0524, %bb.bk ], [ %.sroa.0247.0524, %bb.bj ], [ %i.ir, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i130 ], [ %.sroa.0247.0524, %bb.bb ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0525, %bb.bk ], [ %.sroa.11.0525, %bb.bj ], [ %i.iv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i130 ], [ %i.ig, %bb.bb ] ; 2 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.0526, %bb.bk ], [ %.sroa.21.0526, %bb.bj ], [ %i.iw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i130 ], [ %.sroa.21.0526, %bb.bb ] ; 2 uses
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %i.kk = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.kl = sext i32 %i.kk to i64                   ; 2 uses
  %i.km = icmp slt i64 %indvars.iv.next724, %i.kl
  br i1 %i.km, label %bb.s, label %._crit_edge529, !llvm.loop !337

._crit_edge529:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit133, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.._crit_edge529_crit_edge
  %.pre-phi754 = phi i64 [ %.pre753, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.._crit_edge529_crit_edge ], [ %i.kl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit133 ] ; 2 uses
  %.sroa.0247.0.lcssa = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.._crit_edge529_crit_edge ], [ %.sroa.0247.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit133 ] ; 5 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.._crit_edge529_crit_edge ], [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit133 ] ; 2 uses
  %.sroa.21.0.lcssa = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.._crit_edge529_crit_edge ], [ %.sroa.21.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit133 ] ; 4 uses
  %.lcssa427 = phi i32 [ %i.bu, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.._crit_edge529_crit_edge ], [ %i.kk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit133 ] ; 2 uses
  %i.kn = icmp slt i32 %.lcssa427, 0
  br i1 %i.kn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge529
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #24
          to label %.noexc145 unwind label %bb.bt

.noexc145:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %._crit_edge529
  %.not = icmp eq i32 %.lcssa427, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.bm
  %i.ko = shl nuw nsw i64 %.pre-phi754, 2
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #23
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i unwind label %bb.bt ; 2 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %.pre-phi754
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.bm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %.sroa.0.5 = phi ptr [ %i.kp, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.bm ] ; 4 uses
  %.sroa.23.5 = phi ptr [ %i.kq, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.bm ] ; 2 uses
  %i.kr = icmp eq ptr %.sroa.0247.0.lcssa, %.sroa.11.0.lcssa
  br i1 %i.kr, label %._crit_edge560, label %.lr.ph559

.lr.ph559:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ks = ptrtoint ptr %.sroa.0263.0 to i64
  %i.kt = sub i64 %.0.i.i.i.i.i.i.i, %i.ks
  %i.ku = ashr exact i64 %i.kt, 2                 ; 2 uses
  br label %bb.bn

.loopexit:                                        ; preds = %.lr.ph539
  %i.kv = icmp eq ptr %.sroa.0247.3535, %.sroa.11.3536
  br i1 %i.kv, label %._crit_edge560, label %bb.bn, !llvm.loop !338

bb.bn:                                            ; preds = %.lr.ph559, %.loopexit
  %.sroa.23.0558 = phi ptr [ %.sroa.23.5, %.lr.ph559 ], [ %.sroa.23.6, %.loopexit ] ; 5 uses
  %.sroa.15.0557 = phi ptr [ %.sroa.0.5, %.lr.ph559 ], [ %.sroa.15.2, %.loopexit ] ; 3 uses
  %.sroa.0.0556 = phi ptr [ %.sroa.0.5, %.lr.ph559 ], [ %.sroa.0.6, %.loopexit ] ; 7 uses
  %.sroa.21.2555 = phi ptr [ %.sroa.21.0.lcssa, %.lr.ph559 ], [ %.sroa.21.3537, %.loopexit ] ; 4 uses
  %.sroa.11.2554 = phi ptr [ %.sroa.11.0.lcssa, %.lr.ph559 ], [ %.sroa.11.3536, %.loopexit ]
  %.sroa.0247.2553 = phi ptr [ %.sroa.0247.0.lcssa, %.lr.ph559 ], [ %.sroa.0247.3535, %.loopexit ] ; 4 uses
  %i.kw = getelementptr inbounds i8, ptr %.sroa.11.2554, i64 -4 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !40 ; 3 uses
  %.not.i147 = icmp eq ptr %.sroa.15.0557, %.sroa.23.0558
  br i1 %.not.i147, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i32 %i.kx, ptr %.sroa.15.0557, align 4, !tbaa !40
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156

bb.bp:                                            ; preds = %bb.bn
  %i.ky = ptrtoint ptr %.sroa.23.0558 to i64
  %i.kz = ptrtoint ptr %.sroa.0.0556 to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 6 uses
  %i.lb = icmp eq i64 %i.la, 9223372036854775804
  br i1 %i.lb, label %bb.bq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i148

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.128) #24
          to label %.noexc154 unwind label %.loopexit.split-lp295

.noexc154:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i148: ; preds = %bb.bp
  %i.lc = ashr exact i64 %i.la, 2                 ; 3 uses
  %.sroa.speculated.i.i.i149 = call i64 @llvm.umax.i64(i64 %i.lc, i64 1)
  %i.ld = add nsw i64 %.sroa.speculated.i.i.i149, %i.lc ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.lc
  %i.lf = call i64 @llvm.umin.i64(i64 %i.ld, i64 2305843009213693951)
  %i.lg = select i1 %i.le, i64 2305843009213693951, i64 %i.lf ; 3 uses
  %.not.i.i.i150 = icmp ne i64 %i.lg, 0
  call void @llvm.assume(i1 %.not.i.i.i150)
  %i.lh = shl nuw nsw i64 %i.lg, 2
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #23
          to label %.noexc155 unwind label %.loopexit294 ; 4 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i148
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 %i.la ; 2 uses
  store i32 %i.kx, ptr %i.lj, align 4, !tbaa !40
  %i.lk = icmp sgt i64 %i.la, 0
  br i1 %i.lk, label %bb.br, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i151

bb.br:                                            ; preds = %.noexc155
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.li, ptr align 4 %.sroa.0.0556, i64 %i.la, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i151

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i151: ; preds = %bb.br, %.noexc155
  %.not.i17.i.i152 = icmp eq ptr %.sroa.0.0556, null
  br i1 %.not.i17.i.i152, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i153, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i151
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0556, i64 noundef %i.la) #26
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i153

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i153: ; preds = %bb.bs, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i151
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lg
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156

_ZNSt6vectorIiSaIiEE9push_backERKi.exit156:       ; preds = %bb.bo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i153
  %.sroa.0.6 = phi ptr [ %i.li, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i153 ], [ %.sroa.0.0556, %bb.bo ] ; 4 uses
  %.pn291 = phi ptr [ %i.lj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i153 ], [ %.sroa.15.0557, %bb.bo ]
  %.sroa.23.6 = phi ptr [ %i.ll, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i153 ], [ %.sroa.23.0558, %bb.bo ] ; 4 uses
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn291, i64 4 ; 2 uses
  %i.lm = sext i32 %i.kx to i64                   ; 4 uses
  %i.ln = load ptr, ptr %i.bs, align 8, !tbaa !202 ; 4 uses
  %i.lo = load ptr, ptr %3, align 8, !tbaa !200   ; 4 uses
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = sdiv exact i64 %i.lr, 24                ; 2 uses
  %.not.i.i157534 = icmp ugt i64 %i.ls, %i.lm
  br i1 %.not.i.i157534, label %.lr.ph539, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156._crit_edge

_ZNSt6vectorIiSaIiEE9push_backERKi.exit156._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156, %bb.cd
  %.sroa.0247.3.lcssa = phi ptr [ %.sroa.0247.8, %bb.cd ], [ %.sroa.0247.2553, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ]
  %.sroa.21.3.lcssa = phi ptr [ %.sroa.21.8, %bb.cd ], [ %.sroa.21.2555, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ]
  %.lcssa = phi i64 [ %i.nj, %bb.cd ], [ %i.ls, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, i64 noundef %i.lm, i64 noundef %.lcssa) #24
          to label %.noexc158 unwind label %.loopexit.split-lp295

.noexc158:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156._crit_edge
  unreachable

.lr.ph539:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156, %bb.cd
  %.pre737.pre748 = phi ptr [ %.pre737.pre749, %bb.cd ], [ %i.lo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ] ; 4 uses
  %.pre736.pre744 = phi ptr [ %.pre736.pre745, %bb.cd ], [ %i.ln, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ] ; 4 uses
  %.pre737741 = phi ptr [ %.pre737742, %bb.cd ], [ %i.lo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ] ; 3 uses
  %.pre736738 = phi ptr [ %.pre736739, %bb.cd ], [ %i.ln, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ] ; 3 uses
  %i.lt = phi ptr [ %i.ne, %bb.cd ], [ %i.lo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ] ; 2 uses
  %i.lu = phi ptr [ %i.nf, %bb.cd ], [ %i.ln, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ]
  %indvars.iv726 = phi i64 [ %10, %bb.cd ], [ 0, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ] ; 2 uses
  %.0538 = phi i32 [ %9, %bb.cd ], [ 0, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ]
  %.sroa.21.3537 = phi ptr [ %.sroa.21.8, %bb.cd ], [ %.sroa.21.2555, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ] ; 8 uses
  %.sroa.11.3536 = phi ptr [ %.sroa.11.5, %bb.cd ], [ %i.kw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ] ; 7 uses
  %.sroa.0247.3535 = phi ptr [ %.sroa.0247.8, %bb.cd ], [ %.sroa.0247.2553, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156 ] ; 11 uses
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %i.lt, i64 %i.lm ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !150
  %i.ly = load ptr, ptr %i.lv, align 8, !tbaa !148 ; 2 uses
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = ashr exact i64 %i.mb, 2
  %i.md = icmp ugt i64 %i.mc, %indvars.iv726
  br i1 %i.md, label %bb.bu, label %.loopexit

bb.bt:                                            ; preds = %.noexc47.i, %.noexc.i199, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.bl
  %.sroa.0247.4 = phi ptr [ %.sroa.0247.0.lcssa, %bb.bl ], [ %.sroa.0247.2.lcssa, %.noexc.i199 ], [ %.sroa.0247.2.lcssa, %.noexc47.i ], [ %.sroa.0247.0.lcssa, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %.sroa.21.4 = phi ptr [ %.sroa.21.0.lcssa, %bb.bl ], [ %.sroa.21.2.lcssa, %.noexc.i199 ], [ %.sroa.21.2.lcssa, %.noexc47.i ], [ %.sroa.21.0.lcssa, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %.sroa.0.1 = phi ptr [ null, %bb.bl ], [ %.sroa.0.0.lcssa, %.noexc.i199 ], [ %.sroa.0.0.lcssa, %.noexc47.i ], [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %.sroa.23.1 = phi ptr [ null, %bb.bl ], [ %.sroa.23.0.lcssa, %.noexc.i199 ], [ %.sroa.23.0.lcssa, %.noexc47.i ], [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit294:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i148
  %lpad.loopexit296 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp295:                            ; preds = %bb.bq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156._crit_edge
  %.sroa.0247.5.ph = phi ptr [ %.sroa.0247.3.lcssa, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156._crit_edge ], [ %.sroa.0247.2553, %bb.bq ]
  %.sroa.21.5.ph = phi ptr [ %.sroa.21.3.lcssa, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156._crit_edge ], [ %.sroa.21.2555, %bb.bq ]
  %.sroa.0.2.ph = phi ptr [ %.sroa.0.6, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156._crit_edge ], [ %.sroa.0.0556, %bb.bq ]
  %.sroa.23.2.ph = phi ptr [ %.sroa.23.6, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156._crit_edge ], [ %.sroa.23.0558, %bb.bq ]
  %lpad.loopexit.split-lp297 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bu:                                            ; preds = %.lr.ph539
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %indvars.iv726
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !40 ; 3 uses
  %i.mh = sext i32 %i.mg to i64                   ; 3 uses
  %.not.i.i166 = icmp ugt i64 %i.ku, %i.mh
  br i1 %.not.i.i166, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.129, i64 noundef %i.mh, i64 noundef %i.ku) #24
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc167:                                        ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0263.0, i64 %i.mh ; 3 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !40 ; 2 uses
  %i.mk = icmp sgt i32 %i.mj, 0
  br i1 %i.mk, label %_ZNSt6vectorIiSaIiEE2atEm.exit171, label %bb.cd

_ZNSt6vectorIiSaIiEE2atEm.exit171:                ; preds = %bb.bw
  %i.ml = icmp eq i32 %i.mj, 1
  br i1 %i.ml, label %bb.bx, label %_ZNSt6vectorIiSaIiEE2atEm.exit190

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit171
  %.not.i172 = icmp eq ptr %.sroa.11.3536, %.sroa.21.3537
  br i1 %.not.i172, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 %i.mg, ptr %.sroa.11.3536, align 4, !tbaa !40
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.11.3536, i64 4
  br label %_ZNSt6vectorIiSaIiEE2atEm.exit190

bb.bz:                                            ; preds = %bb.bx
  %i.mn = ptrtoint ptr %.sroa.21.3537 to i64
  %i.mo = ptrtoint ptr %.sroa.0247.3535 to i64
  %i.mp = sub i64 %i.mn, %i.mo                    ; 6 uses
  %i.mq = icmp eq i64 %i.mp, 9223372036854775804
  br i1 %i.mq, label %bb.ca, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i173

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.128) #24
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc179:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i173: ; preds = %bb.bz
  %i.mr = ashr exact i64 %i.mp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i174 = call i64 @llvm.umax.i64(i64 %i.mr, i64 1)
  %i.ms = add nsw i64 %.sroa.speculated.i.i.i174, %i.mr ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.mr
  %i.mu = call i64 @llvm.umin.i64(i64 %i.ms, i64 2305843009213693951)
  %i.mv = select i1 %i.mt, i64 2305843009213693951, i64 %i.mu ; 3 uses
  %.not.i.i.i175 = icmp ne i64 %i.mv, 0
  call void @llvm.assume(i1 %.not.i.i.i175)
  %i.mw = shl nuw nsw i64 %i.mv, 2
  %i.mx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mw) #23
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i173
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 %i.mp ; 2 uses
  store i32 %i.mg, ptr %i.my, align 4, !tbaa !40
  %i.mz = icmp sgt i64 %i.mp, 0
  br i1 %i.mz, label %bb.cb, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i176

bb.cb:                                            ; preds = %.noexc180
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mx, ptr align 4 %.sroa.0247.3535, i64 %i.mp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i176

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i176: ; preds = %bb.cb, %.noexc180
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %.not.i17.i.i177 = icmp eq ptr %.sroa.0247.3535, null
  br i1 %.not.i17.i.i177, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i176
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0247.3535, i64 noundef %i.mp) #26
  %.pre736.pre.pre = load ptr, ptr %i.bs, align 8, !tbaa !202
  %.pre737.pre.pre = load ptr, ptr %3, align 8, !tbaa !200
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178: ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i176
  %.pre737.pre = phi ptr [ %.pre737.pre.pre, %bb.cc ], [ %.pre737.pre748, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i176 ] ; 2 uses
  %.pre736.pre = phi ptr [ %.pre736.pre.pre, %bb.cc ], [ %.pre736.pre744, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i176 ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.mv
  br label %_ZNSt6vectorIiSaIiEE2atEm.exit190

_ZNSt6vectorIiSaIiEE2atEm.exit190:                ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit171, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178, %bb.by
  %.pre737.pre750 = phi ptr [ %.pre737.pre748, %bb.by ], [ %.pre737.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178 ], [ %.pre737.pre748, %_ZNSt6vectorIiSaIiEE2atEm.exit171 ]
  %.pre736.pre746 = phi ptr [ %.pre736.pre744, %bb.by ], [ %.pre736.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178 ], [ %.pre736.pre744, %_ZNSt6vectorIiSaIiEE2atEm.exit171 ]
  %.pre737 = phi ptr [ %.pre737741, %bb.by ], [ %.pre737.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178 ], [ %.pre737741, %_ZNSt6vectorIiSaIiEE2atEm.exit171 ] ; 2 uses
  %.pre736 = phi ptr [ %.pre736738, %bb.by ], [ %.pre736.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178 ], [ %.pre736738, %_ZNSt6vectorIiSaIiEE2atEm.exit171 ] ; 2 uses
  %.sroa.0247.7 = phi ptr [ %.sroa.0247.3535, %bb.by ], [ %i.mx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178 ], [ %.sroa.0247.3535, %_ZNSt6vectorIiSaIiEE2atEm.exit171 ]
  %.sroa.11.4 = phi ptr [ %i.mm, %bb.by ], [ %i.na, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178 ], [ %.sroa.11.3536, %_ZNSt6vectorIiSaIiEE2atEm.exit171 ]
  %.sroa.21.7 = phi ptr [ %.sroa.21.3537, %bb.by ], [ %i.nb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i178 ], [ %.sroa.21.3537, %_ZNSt6vectorIiSaIiEE2atEm.exit171 ]
  %i.nc = load i32, ptr %i.mi, align 4, !tbaa !40
  %i.nd = add nsw i32 %i.nc, -1
  store i32 %i.nd, ptr %i.mi, align 4, !tbaa !40
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit190, %bb.bw
  %.pre737.pre749 = phi ptr [ %.pre737.pre750, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %.pre737.pre748, %bb.bw ]
  %.pre736.pre745 = phi ptr [ %.pre736.pre746, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %.pre736.pre744, %bb.bw ]
  %.pre737742 = phi ptr [ %.pre737, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %.pre737741, %bb.bw ]
  %.pre736739 = phi ptr [ %.pre736, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %.pre736738, %bb.bw ]
  %i.ne = phi ptr [ %.pre737, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %i.lt, %bb.bw ] ; 2 uses
  %i.nf = phi ptr [ %.pre736, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %i.lu, %bb.bw ] ; 2 uses
  %.sroa.0247.8 = phi ptr [ %.sroa.0247.7, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %.sroa.0247.3535, %bb.bw ] ; 2 uses
  %.sroa.11.5 = phi ptr [ %.sroa.11.4, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %.sroa.11.3536, %bb.bw ]
  %.sroa.21.8 = phi ptr [ %.sroa.21.7, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %.sroa.21.3537, %bb.bw ] ; 2 uses
  %9 = add nuw nsw i32 %.0538, 1                  ; 2 uses
  %10 = zext nneg i32 %9 to i64
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.ne to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = sdiv exact i64 %i.ni, 24                ; 2 uses
  %.not.i.i157 = icmp ugt i64 %i.nj, %i.lm
  br i1 %.not.i.i157, label %.lr.ph539, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit156._crit_edge, !llvm.loop !339

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i173, %bb.bv, %bb.ca
  %lpad.loopexit.split-lp1132 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge560:                                   ; preds = %.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.sroa.0247.2.lcssa = phi ptr [ %.sroa.0247.0.lcssa, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0247.3535, %.loopexit ] ; 7 uses
  %.sroa.21.2.lcssa = phi ptr [ %.sroa.21.0.lcssa, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.21.3537, %.loopexit ] ; 5 uses
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.5, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0.6, %.loopexit ] ; 9 uses
  %.sroa.15.0.lcssa = phi ptr [ %.sroa.0.5, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.15.2, %.loopexit ]
  %.sroa.23.0.lcssa = phi ptr [ %.sroa.23.5, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.23.6, %.loopexit ] ; 5 uses
  %i.nk = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.nl = ptrtoint ptr %.sroa.0.0.lcssa to i64    ; 2 uses
  %i.nm = sub i64 %i.nk, %i.nl                    ; 6 uses
  %i.nn = ashr exact i64 %i.nm, 2                 ; 2 uses
  %i.no = load i32, ptr %i.j, align 8, !tbaa !110 ; 5 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = icmp eq i64 %i.nn, %i.np
  br i1 %i.nq, label %bb.cj, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge560
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060520sortByExecutionOrderERN17opencv_tensorflow8GraphDefE, ptr noundef nonnull @.str.8, i32 noundef 1071) #24
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %bb.ce
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.ci:                                            ; preds = %bb.cf
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.ci
  %i.nw = load i64, ptr %i.nu, align 8, !tbaa !39
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.ch
  %.pn = phi { ptr, i32 } [ %i.nr, %bb.ch ], [ %i.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %i.ns, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

bb.cj:                                            ; preds = %._crit_edge560
  %i.ny = icmp slt i32 %i.no, 0
  br i1 %i.ny, label %.noexc.i199, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i199:                                      ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #24
          to label %.noexc200 unwind label %bb.bt

.noexc200:                                        ; preds = %.noexc.i199
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.cj
  %.not.i.i.i.i.i196 = icmp eq i32 %i.no, 0
  br i1 %.not.i.i.i.i.i196, label %_ZN2cv3dnn14dnn5_v20260605L7permuteEPN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow7NodeDefEEERKSt6vectorIiSaIiEE.exit, label %.noexc47.i

.noexc47.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.nz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nm) #23
          to label %.noexc201 unwind label %bb.bt ; 8 uses

.noexc201:                                        ; preds = %.noexc47.i
  store i32 0, ptr %i.nz, align 4, !tbaa !40
  %i.oa = add nsw i64 %i.nn, -1                   ; 3 uses
  %i.ob = icmp eq i64 %i.oa, 0                    ; 2 uses
  br i1 %i.ob, label %bb.ck, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc201
  %i.oc = getelementptr i8, ptr %i.nz, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.oa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.oc, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !40
  br label %bb.ck

bb.ck:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc201
  %i.od = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nm) #23
          to label %.noexc55.i unwind label %bb.cp ; 7 uses

.noexc55.i:                                       ; preds = %bb.ck
  store i32 0, ptr %i.od, align 4, !tbaa !40
  br i1 %i.ob, label %.lr.ph.preheader.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i50.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i50.i: ; preds = %.noexc55.i
  %i.oe = getelementptr i8, ptr %i.od, i64 4
  %.idx.i.i.i.i.i.i.i51.i = shl nuw nsw i64 %i.oa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.oe, i8 0, i64 %.idx.i.i.i.i.i.i.i51.i, i1 false), !tbaa !40
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i50.i, %.noexc55.i
  %wide.trip.count.i = zext nneg i32 %i.no to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.no, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %index ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store <4 x i32> %vec.ind, ptr %i.of, align 4, !tbaa !40
  store <4 x i32> %step.add, ptr %i.og, align 4, !tbaa !40
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %index ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <4 x i32> %vec.ind, ptr %i.oh, align 4, !tbaa !40
  store <4 x i32> %step.add, ptr %i.oi, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.oj = icmp eq i64 %index.next, %n.vec
  br i1 %i.oj, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph103.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph103.i:                                      ; preds = %.lr.ph.i, %middle.block
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.cm

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.i
  %i.om = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.om, ptr %i.ol, align 4, !tbaa !40
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.i
  store i32 %i.om, ptr %i.on, align 4, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph103.i, label %.lr.ph.i, !llvm.loop !341

bb.cl:                                            ; preds = %bb.co
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.nm) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.nm) #26
  br label %_ZN2cv3dnn14dnn5_v20260605L7permuteEPN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow7NodeDefEEERKSt6vectorIiSaIiEE.exit

bb.cm:                                            ; preds = %bb.co, %.lr.ph103.i
  %i.oo = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph103.i ], [ %i.pi, %bb.co ] ; 2 uses
  %indvars.iv107.i = phi i64 [ 0, %.lr.ph103.i ], [ %indvars.iv.next108.i, %bb.co ] ; 6 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv107.i
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !40 ; 2 uses
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.or ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !40 ; 3 uses
  %i.ou = zext i32 %i.ot to i64
  %.not.i197 = icmp eq i64 %indvars.iv107.i, %i.ou
  br i1 %.not.i197, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ov = load ptr, ptr %i.ok, align 8, !tbaa !111
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 2 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv107.i ; 2 uses
  %i.oy = sext i32 %i.ot to i64                   ; 2 uses
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.ow, i64 %i.oy ; 2 uses
  %i.pa = load ptr, ptr %i.ox, align 8, !tbaa !38
  %i.pb = load ptr, ptr %i.oz, align 8, !tbaa !38
  store ptr %i.pb, ptr %i.ox, align 8, !tbaa !38
  store ptr %i.pa, ptr %i.oz, align 8, !tbaa !38
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv107.i ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !40 ; 2 uses
  %i.pe = trunc nuw nsw i64 %indvars.iv107.i to i32
  store i32 %i.pe, ptr %i.os, align 4, !tbaa !40
  %i.pf = sext i32 %i.pd to i64
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.pf
  store i32 %i.ot, ptr %i.pg, align 4, !tbaa !40
  store i32 %i.oq, ptr %i.pc, align 4, !tbaa !40
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.oy
  store i32 %i.pd, ptr %i.ph, align 4, !tbaa !40
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.pi = phi ptr [ %.sroa.0.0.lcssa, %bb.cn ], [ %i.oo, %bb.cm ]
end_hunk_0
