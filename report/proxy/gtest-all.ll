Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/gtest-all?download=true
inline.NumInlined: 9409
inline.NumDeleted: 2418
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7testing8internal13ExecDeathTest10AssumeRoleEv:bb.a
          to label %_ZN7testing8internal13ExecDeathTest32GetArgvsForDeathTestChildProcessB5cxx11Ev.exit unwind label %bb.jg

_ZN7testing8internal13ExecDeathTest32GetArgvsForDeathTestChildProcessB5cxx11Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  %i.un = getelementptr inbounds nuw i8, ptr %89, i64 8 ; 9 uses
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !249 ; 8 uses
  %i.up = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 3 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !250
  %.not.i345 = icmp eq ptr %i.uo, %i.uq
  br i1 %.not.i345, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %_ZN7testing8internal13ExecDeathTest32GetArgvsForDeathTestChildProcessB5cxx11Ev.exit
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 16 ; 3 uses
  store ptr %i.ur, ptr %i.uo, align 8, !tbaa !74
  %i.us = load ptr, ptr %70, align 8, !tbaa !77   ; 2 uses
  %i.ut = load i64, ptr %i.gt, align 8, !tbaa !78 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #55
  store i64 %i.ut, ptr %i.i, align 8, !tbaa !79
  %i.uu = icmp ugt i64 %i.ut, 15
  br i1 %i.uu, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.cq
  %i.uv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.uo, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc346 unwind label %bb.jh ; 2 uses

.noexc346:                                        ; preds = %.noexc.i.i
  store ptr %i.uv, ptr %i.uo, align 8, !tbaa !77
  %i.uw = load i64, ptr %i.i, align 8, !tbaa !79
  store i64 %i.uw, ptr %i.ur, align 8, !tbaa !80
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc346, %bb.cq
  %i.ux = phi ptr [ %i.uv, %.noexc346 ], [ %i.ur, %bb.cq ] ; 2 uses
  switch i64 %i.ut, label %bb.cs [
    i64 1, label %bb.cr
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.cr:                                            ; preds = %._crit_edge.i.i.i
  %i.uy = load i8, ptr %i.us, align 1, !tbaa !80
  store i8 %i.uy, ptr %i.ux, align 1, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.cs:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ux, ptr align 1 %i.us, i64 %i.ut, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.cs, %bb.cr, %._crit_edge.i.i.i
  %i.uz = load i64, ptr %i.i, align 8, !tbaa !79  ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store i64 %i.uz, ptr %i.va, align 8, !tbaa !78
  %i.vb = load ptr, ptr %i.uo, align 8, !tbaa !77
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.uz
  store i8 0, ptr %i.vc, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #55
  %i.vd = load ptr, ptr %i.un, align 8, !tbaa !249
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32 ; 2 uses
  store ptr %i.ve, ptr %i.un, align 8, !tbaa !249
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.ct:                                            ; preds = %_ZN7testing8internal13ExecDeathTest32GetArgvsForDeathTestChildProcessB5cxx11Ev.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr %i.uo, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit_crit_edge unwind label %bb.jh

._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit_crit_edge: ; preds = %bb.ct
  %.pre = load ptr, ptr %i.un, align 8, !tbaa !249
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.vf = phi ptr [ %.pre, %._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit_crit_edge ], [ %i.ve, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 8 uses
  %i.vg = load ptr, ptr %i.up, align 8, !tbaa !250
  %.not.i348 = icmp eq ptr %i.vf, %i.vg
  br i1 %.not.i348, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 3 uses
  store ptr %i.vh, ptr %i.vf, align 8, !tbaa !74
  %i.vi = load ptr, ptr %76, align 8, !tbaa !77   ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !78 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #55
  store i64 %i.vk, ptr %i.h, align 8, !tbaa !79
  %i.vl = icmp ugt i64 %i.vk, 15
  br i1 %i.vl, label %.noexc.i.i351, label %._crit_edge.i.i.i349

.noexc.i.i351:                                    ; preds = %bb.cu
  %i.vm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.vf, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc352 unwind label %bb.jh ; 2 uses

.noexc352:                                        ; preds = %.noexc.i.i351
  store ptr %i.vm, ptr %i.vf, align 8, !tbaa !77
  %i.vn = load i64, ptr %i.h, align 8, !tbaa !79
  store i64 %i.vn, ptr %i.vh, align 8, !tbaa !80
  br label %._crit_edge.i.i.i349

._crit_edge.i.i.i349:                             ; preds = %.noexc352, %bb.cu
  %i.vo = phi ptr [ %i.vm, %.noexc352 ], [ %i.vh, %bb.cu ] ; 2 uses
  switch i64 %i.vk, label %bb.cw [
    i64 1, label %bb.cv
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i350
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i.i349
  %i.vp = load i8, ptr %i.vi, align 1, !tbaa !80
  store i8 %i.vp, ptr %i.vo, align 1, !tbaa !80
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i350

bb.cw:                                            ; preds = %._crit_edge.i.i.i349
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vo, ptr align 1 %i.vi, i64 %i.vk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i350: ; preds = %bb.cw, %bb.cv, %._crit_edge.i.i.i349
  %i.vq = load i64, ptr %i.h, align 8, !tbaa !79  ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store i64 %i.vq, ptr %i.vr, align 8, !tbaa !78
  %i.vs = load ptr, ptr %i.vf, align 8, !tbaa !77
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vq
  store i8 0, ptr %i.vt, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #55
  %i.vu = load ptr, ptr %i.un, align 8, !tbaa !249
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 32
  store ptr %i.vv, ptr %i.un, align 8, !tbaa !249
  br label %bb.cy

bb.cx:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr %i.vf, ptr noundef nonnull align 8 dereferenceable(32) %76)
          to label %bb.cy unwind label %bb.jh

bb.cy:                                            ; preds = %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i350
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #55
  %i.vw = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 6 uses
  store ptr %i.vw, ptr %90, align 8, !tbaa !74
  %i.vx = getelementptr inbounds nuw i8, ptr %90, i64 8
  store i64 0, ptr %i.vx, align 8, !tbaa !78
  store i8 0, ptr %i.vw, align 8, !tbaa !80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing8internal9DeathTest24last_death_test_message_B5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %90)
          to label %_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ji

_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.cy
  %i.vy = load ptr, ptr %90, align 8, !tbaa !77   ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.vw
  br i1 %i.vz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.wa = load i64, ptr %i.vw, align 8, !tbaa !80
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %_ZN7testing8internal9DeathTest27set_last_death_test_messageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #55
  invoke fastcc void @_ZN7testing8internalL13CaptureStreamEiPKcPPNS0_14CapturedStreamE(i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull @_ZN7testing8internalL17g_captured_stderrE)
          to label %bb.cz unwind label %bb.jh

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362
  %i.wc = call i32 @fflush(ptr noundef null)      ; 0 uses
  %i.wd = load ptr, ptr %i.un, align 8, !tbaa !249, !noalias !699 ; 2 uses
  %i.we = load ptr, ptr %89, align 8, !tbaa !251, !noalias !699 ; 2 uses
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = ashr exact i64 %i.wh, 5
  %i.wj = add nsw i64 %i.wi, 1                    ; 4 uses
  %i.wk = icmp ugt i64 %i.wj, 1152921504606846975
  br i1 %i.wk, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.422) #57
          to label %.noexc.i366 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !699

.noexc.i366:                                      ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.cz
  %.not47.i = icmp eq i64 %i.wj, 0
  br i1 %.not47.i, label %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %bb.db
  %i.wl = shl nuw nsw i64 %i.wj, 3
  %i.wm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wl) #54
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !699 ; 2 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.wj
  %.pre.i364 = load ptr, ptr %89, align 8, !tbaa !71, !noalias !699
  %.pre32.i = load ptr, ptr %i.un, align 8, !tbaa !71, !noalias !699
  br label %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i

_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i:         ; preds = %.noexc9.i, %bb.db
  %.sroa.0.0 = phi ptr [ null, %bb.db ], [ %i.wm, %.noexc9.i ] ; 6 uses
  %.sroa.15.0 = phi ptr [ null, %bb.db ], [ %i.wn, %.noexc9.i ] ; 4 uses
  %i.wo = phi ptr [ %i.wd, %bb.db ], [ %.pre32.i, %.noexc9.i ] ; 2 uses
  %i.wp = phi ptr [ %i.we, %bb.db ], [ %.pre.i364, %.noexc9.i ] ; 2 uses
  %.not28.i = icmp eq ptr %i.wp, %i.wo
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ], [ %.sroa.0.2, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ]
  %.sroa.15.3 = phi ptr [ %.sroa.15.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ], [ %.sroa.15.2, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ]
  %i.wq = phi ptr [ %.sroa.0.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ], [ %i.xz, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ] ; 6 uses
  %i.wr = phi ptr [ %.sroa.15.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ], [ %i.ya, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ] ; 4 uses
  %i.ws = phi ptr [ %.sroa.0.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ], [ %i.yb, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ws, %i.wr
  br i1 %.not.i.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %._crit_edge.i
  store ptr null, ptr %i.ws, align 8, !tbaa !252, !noalias !699
  br label %_ZN7testing8internalL18CreateArgvFromArgsERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE.exit

bb.dd:                                            ; preds = %._crit_edge.i
  %i.wt = ptrtoint ptr %i.ws to i64
  %i.wu = ptrtoint ptr %i.wq to i64               ; 2 uses
  %i.wv = sub i64 %i.wt, %i.wu                    ; 5 uses
  %i.ww = icmp eq i64 %i.wv, 9223372036854775800
  br i1 %i.ww, label %bb.de, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.423) #57
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !699

.noexc10.i:                                       ; preds = %bb.de
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.dd
  %i.wx = ashr exact i64 %i.wv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wx, i64 1)
  %i.wy = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.wx ; 2 uses
  %i.wz = icmp ult i64 %i.wy, %i.wx
  %i.xa = call i64 @llvm.umin.i64(i64 %i.wy, i64 1152921504606846975)
  %i.xb = select i1 %i.wz, i64 1152921504606846975, i64 %i.xa ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.xb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.xc = shl nuw nsw i64 %i.xb, 3
  %i.xd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xc) #54
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !699 ; 4 uses

.noexc11.i:                                       ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.xe = getelementptr inbounds i8, ptr %i.xd, i64 %i.wv
  store ptr null, ptr %i.xe, align 8, !tbaa !252, !noalias !699
  %i.xf = icmp sgt i64 %i.wv, 0
  br i1 %i.xf, label %bb.df, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i

bb.df:                                            ; preds = %.noexc11.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xd, ptr align 8 %i.wq, i64 %i.wv, i1 false), !noalias !699
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i: ; preds = %bb.df, %.noexc11.i
  %.not.i17.i.i.i.i = icmp eq ptr %i.wq, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i
  %100 = ptrtoint ptr %i.wr to i64
  %101 = sub i64 %100, %i.wu
  call void @_ZdlPvm(ptr noundef nonnull %i.wq, i64 noundef %101) #56, !noalias !699
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i: ; preds = %bb.dg, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i.i
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.xb
  br label %_ZN7testing8internalL18CreateArgvFromArgsERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE.exit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ], [ %.sroa.0.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ], [ %.sroa.15.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ]
  %i.xh = phi ptr [ %i.xz, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ], [ %.sroa.0.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ] ; 7 uses
  %i.xi = phi ptr [ %i.ya, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ], [ %.sroa.15.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ] ; 5 uses
  %i.xj = phi ptr [ %i.yb, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ], [ %.sroa.0.0, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ] ; 4 uses
  %.sroa.025.029.i = phi ptr [ %i.yc, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i ], [ %i.wp, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit.i ] ; 2 uses
  %i.xk = load ptr, ptr %.sroa.025.029.i, align 8, !tbaa !77, !noalias !699 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.xj, %i.xi
  br i1 %.not.i.i12.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i
  store ptr %i.xk, ptr %i.xj, align 8, !tbaa !252, !noalias !699
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i

bb.di:                                            ; preds = %.lr.ph.i
  %i.xl = ptrtoint ptr %i.xj to i64
  %i.xm = ptrtoint ptr %i.xh to i64               ; 2 uses
  %i.xn = sub i64 %i.xl, %i.xm                    ; 5 uses
  %i.xo = icmp eq i64 %i.xn, 9223372036854775800
  br i1 %i.xo, label %bb.dj, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i13.i

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.423) #57
          to label %.noexc19.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !699

.noexc19.i:                                       ; preds = %bb.dj
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i13.i: ; preds = %bb.di
  %i.xp = ashr exact i64 %i.xn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i14.i = call i64 @llvm.umax.i64(i64 %i.xp, i64 1)
  %i.xq = add nsw i64 %.sroa.speculated.i.i.i.i14.i, %i.xp ; 2 uses
  %i.xr = icmp ult i64 %i.xq, %i.xp
  %i.xs = call i64 @llvm.umin.i64(i64 %i.xq, i64 1152921504606846975)
  %i.xt = select i1 %i.xr, i64 1152921504606846975, i64 %i.xs ; 3 uses
  %.not.i.i.i.i15.i = icmp ne i64 %i.xt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i15.i)
  %i.xu = shl nuw nsw i64 %i.xt, 3
  %i.xv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xu) #54
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !699 ; 5 uses

.noexc20.i:                                       ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i13.i
  %i.xw = getelementptr inbounds i8, ptr %i.xv, i64 %i.xn ; 2 uses
  store ptr %i.xk, ptr %i.xw, align 8, !tbaa !252, !noalias !699
  %i.xx = icmp sgt i64 %i.xn, 0
  br i1 %i.xx, label %bb.dk, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16.i

bb.dk:                                            ; preds = %.noexc20.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xv, ptr align 8 %i.xh, i64 %i.xn, i1 false), !noalias !699
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16.i: ; preds = %bb.dk, %.noexc20.i
  %.not.i17.i.i.i17.i = icmp eq ptr %i.xh, null
  br i1 %.not.i17.i.i.i17.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16.i
  %102 = ptrtoint ptr %i.xi to i64
  %103 = sub i64 %102, %i.xm
  call void @_ZdlPvm(ptr noundef nonnull %i.xh, i64 noundef %103) #56, !noalias !699
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18.i: ; preds = %bb.dl, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16.i
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %i.xt ; 2 uses
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i

_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21.i:  ; preds = %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18.i, %bb.dh
  %.sroa.0.2 = phi ptr [ %i.xv, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18.i ], [ %.sroa.0.1, %bb.dh ] ; 2 uses
  %.sroa.15.2 = phi ptr [ %i.xy, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18.i ], [ %.sroa.15.1, %bb.dh ] ; 2 uses
  %i.xz = phi ptr [ %i.xv, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18.i ], [ %i.xh, %bb.dh ] ; 2 uses
  %i.ya = phi ptr [ %i.xy, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18.i ], [ %i.xi, %bb.dh ] ; 2 uses
  %.pn476 = phi ptr [ %i.xw, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18.i ], [ %i.xj, %bb.dh ]
  %i.yb = getelementptr inbounds nuw i8, ptr %.pn476, i64 8 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.025.029.i, i64 32 ; 2 uses
  %.not.i365 = icmp eq ptr %i.yc, %i.wo
  br i1 %.not.i365, label %._crit_edge.i, label %.lr.ph.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i13.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.dj, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.de, %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i, %bb.da
  %i.yd = phi ptr [ %i.xi, %bb.dj ], [ null, %bb.da ], [ null, %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i ], [ %i.wr, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.wr, %bb.de ]
  %i.ye = phi ptr [ %i.xh, %bb.dj ], [ null, %bb.da ], [ null, %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i ], [ %i.wq, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.wq, %bb.de ]
  %lpad.loopexit.split-lp31.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i
  %i.yf = phi ptr [ %i.xi, %.loopexit.split-lp.loopexit.i ], [ %i.yd, %.loopexit.split-lp.loopexit.split-lp.i ]
  %i.yg = phi ptr [ %i.xh, %.loopexit.split-lp.loopexit.i ], [ %i.ye, %.loopexit.split-lp.loopexit.split-lp.i ] ; 3 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp31.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.yg, null
  br i1 %.not.i.i.i.i, label %.body367, label %bb.dm

bb.dm:                                            ; preds = %.loopexit.split-lp.i
  %i.yh = ptrtoint ptr %i.yf to i64
  %i.yi = ptrtoint ptr %i.yg to i64
  %i.yj = sub i64 %i.yh, %i.yi
  call void @_ZdlPvm(ptr noundef nonnull %i.yg, i64 noundef %i.yj) #56, !noalias !699
  br label %.body367

_ZN7testing8internalL18CreateArgvFromArgsERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE.exit: ; preds = %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i, %bb.dc
  %.sroa.0.4 = phi ptr [ %i.xd, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.0.3, %bb.dc ] ; 7 uses
  %.sroa.15.4 = phi ptr [ %i.xg, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i.i ], [ %.sroa.15.3, %bb.dc ] ; 2 uses
  %i.yk = load i32, ptr %i.j, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  store ptr %.sroa.0.4, ptr %1, align 8, !tbaa !255
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.yk, ptr %i.yl, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 152, i1 false)
  %i.ym = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.yn = call i32 @sigemptyset(ptr noundef nonnull %i.ym) #55, !inline_history !677 ; 0 uses
  store ptr inttoptr (i64 1 to ptr), ptr %3, align 8, !tbaa !80
  br label %bb.dn

bb.dn:                                            ; preds = %bb.do, %_ZN7testing8internalL18CreateArgvFromArgsERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE.exit
  %i.yo = call i32 @sigaction(i32 noundef 27, ptr noundef nonnull %3, ptr noundef nonnull %2) #55, !inline_history !677
  %i.yp = icmp eq i32 %i.yo, -1
  br i1 %i.yp, label %bb.do, label %.critedge126.i

bb.do:                                            ; preds = %bb.dn
  %i.yq = tail call ptr @__errno_location() #58, !inline_history !677
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !96
  %i.ys = icmp eq i32 %i.yr, 4
  br i1 %i.ys, label %bb.dn, label %.critedge.i370, !llvm.loop !678

.critedge.i370:                                   ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #55
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.dp unwind label %bb.dy, !inline_history !677

bb.dp:                                            ; preds = %.critedge.i370
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.8)
          to label %bb.dq unwind label %bb.dz, !inline_history !677

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.14)
          to label %bb.dr unwind label %bb.ea, !inline_history !677

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i32 1301, ptr %i.b, align 4, !tbaa !96
  invoke void @_ZN7testing8internal18StreamableToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ds unwind label %bb.eb, !inline_history !677

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.dt unwind label %bb.ec, !inline_history !677

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.15)
          to label %bb.du unwind label %bb.ed, !inline_history !677

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.424)
          to label %bb.dv unwind label %bb.ee, !inline_history !677

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.17)
          to label %bb.dw unwind label %bb.ef, !inline_history !677

bb.dw:                                            ; preds = %bb.dv
  invoke fastcc void @_ZN7testing8internalL14DeathTestAbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #57
          to label %bb.dx unwind label %bb.eg, !inline_history !677

bb.dx:                                            ; preds = %bb.dw
  unreachable

bb.dy:                                            ; preds = %.critedge.i370
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i

bb.dz:                                            ; preds = %bb.dp
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i

bb.ea:                                            ; preds = %bb.dq
  %i.yv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142.i

bb.eb:                                            ; preds = %bb.dr
  %i.yw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.i

bb.ec:                                            ; preds = %bb.ds
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136.i

bb.ed:                                            ; preds = %bb.dt
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i

bb.ee:                                            ; preds = %bb.du
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i

bb.ef:                                            ; preds = %bb.dv
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.eg:                                            ; preds = %bb.dw
  %i.zb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zc = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ze = icmp eq ptr %i.zc, %i.zd
  br i1 %i.ze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.eg
  %i.zf = load i64, ptr %i.zd, align 8, !tbaa !80
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %i.zc, i64 noundef %i.zg) #56, !inline_history !677
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ef
  %.pn116.i = phi { ptr, i32 } [ %i.za, %bb.ef ], [ %i.zb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.zb, %bb.eg ] ; 2 uses
  %i.zh = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.zj = icmp eq ptr %i.zh, %i.zi
  br i1 %i.zj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.zk = load i64, ptr %i.zi, align 8, !tbaa !80
  %i.zl = add i64 %i.zk, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zl) #56, !inline_history !677
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i, %bb.ee
  %.pn116.pn.i = phi { ptr, i32 } [ %i.yz, %bb.ee ], [ %.pn116.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i ], [ %.pn116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.zm = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.zo = icmp eq ptr %i.zm, %i.zn
  br i1 %i.zo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i
  %i.zp = load i64, ptr %i.zn, align 8, !tbaa !80
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zm, i64 noundef %i.zq) #56, !inline_history !677
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i

end_hunk_0
begin_hunk_1_@_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorImSaImEES6_:bb.a
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111

bb.t:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.body105:                                         ; preds = %bb.l, %bb.m, %bb.t
  %eh.lpad-body106 = phi { ptr, i32 } [ %i.dj, %bb.t ], [ %i.bt, %bb.m ], [ %i.bt, %bb.l ] ; 2 uses
  %i.dk = load ptr, ptr %6, align 8, !tbaa !421   ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111, label %bb.u

bb.u:                                             ; preds = %.body105
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !422
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #56
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111: ; preds = %bb.u, %.body105, %bb.s
  %.pn84 = phi { ptr, i32 } [ %i.di, %bb.s ], [ %eh.lpad-body106, %.body105 ], [ %eh.lpad-body106, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br label %bb.aq

bb.v:                                             ; preds = %bb.v, %.lr.ph.new
  %.080141 = phi i64 [ 0, %.lr.ph.new ], [ %i.eb, %bb.v ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.v ]
  %i.dq = uitofp i64 %.080141 to double
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.080141
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !410
  store double %i.dq, ptr %i.ds, align 8, !tbaa !413
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.080141
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !421
  store i32 2, ptr %i.du, align 4, !tbaa !424
  %i.dv = or disjoint i64 %.080141, 1             ; 3 uses
  %i.dw = uitofp i64 %i.dv to double
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.dv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !410
  store double %i.dw, ptr %i.dy, align 8, !tbaa !413
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.dv
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !421
  store i32 2, ptr %i.ea, align 4, !tbaa !424
  %i.eb = add nuw i64 %.080141, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader133.loopexit.unr-lcssa, label %bb.v, !llvm.loop !1041

.preheader132:                                    ; preds = %scalar.ph, %middle.block, %.preheader133
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !406 ; 2 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !407   ; 3 uses
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 3                 ; 2 uses
  %.not158 = icmp ne ptr %i.ec, %i.ed             ; 2 uses
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !406 ; 4 uses
  %.pre173 = load ptr, ptr %2, align 8, !tbaa !407 ; 5 uses
  br i1 %.not158, label %.preheader.lr.ph, label %._crit_edge147.split

.preheader.lr.ph:                                 ; preds = %.preheader132
  %.not159 = icmp eq ptr %.pre, %.pre173
  br i1 %.not159, label %._crit_edge147.split.thread, label %.preheader.preheader

._crit_edge147.split.thread:                      ; preds = %.preheader.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.lr.ph155

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ei = ptrtoint ptr %.pre to i64
  %i.ej = ptrtoint ptr %.pre173 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 3
  br label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.079142 = phi i64 [ %i.ep, %scalar.ph ], [ %.079142.ph, %scalar.ph.preheader ] ; 4 uses
  %i.em = uitofp i64 %.079142 to double
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.079142
  store double %i.em, ptr %i.en, align 8, !tbaa !413
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.079142
  store i32 1, ptr %i.eo, align 4, !tbaa !424
  %i.ep = add nuw i64 %.079142, 1                 ; 2 uses
  %exitcond168.not = icmp eq i64 %i.ep, %i.cq
  br i1 %exitcond168.not, label %.preheader132, label %scalar.ph, !llvm.loop !1042

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.078146 = phi i64 [ %i.es, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.078146
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !79
  %i.es = add nuw i64 %.078146, 1                 ; 4 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.078146 ; 2 uses
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.es
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !421
  br label %bb.w

._crit_edge147.split:                             ; preds = %._crit_edge, %.preheader132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ex = icmp ne ptr %.pre, %.pre173
  %i.ey = select i1 %.not158, i1 true, i1 %i.ex
  br i1 %i.ey, label %.lr.ph155, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph155:                                        ; preds = %._crit_edge147.split.thread, %._crit_edge147.split
  %i.ez = ptrtoint ptr %.pre173 to i64
  %i.fa = ptrtoint ptr %.pre to i64
  %i.fb = sub i64 %i.fa, %i.ez
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.ad
  %exitcond172.not = icmp eq i64 %i.es, %i.eh
  br i1 %exitcond172.not, label %._crit_edge147.split, label %.preheader, !llvm.loop !1043

bb.w:                                             ; preds = %.preheader, %bb.ad
  %.077144 = phi i64 [ 0, %.preheader ], [ %i.fi, %bb.ad ] ; 5 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.pre173, i64 %.077144
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !79
  %i.fh = icmp eq i64 %i.er, %i.fg
  %i.fi = add nuw i64 %.077144, 1                 ; 7 uses
  br i1 %i.fh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fj = load ptr, ptr %i.eu, align 8, !tbaa !410
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.077144
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !413
  %i.fm = load ptr, ptr %i.et, align 8, !tbaa !410
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fi
  store double %i.fl, ptr %i.fn, align 8, !tbaa !413
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.fo = load ptr, ptr %i.et, align 8, !tbaa !410 ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.077144
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !413 ; 4 uses
  %i.fr = load ptr, ptr %i.eu, align 8, !tbaa !410 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fi
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !413 ; 4 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.077144
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !413 ; 3 uses
  %i.fw = fcmp olt double %i.fq, %i.ft
  %i.fx = fcmp olt double %i.fq, %i.fv
  %or.cond = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fy = fadd double %i.fq, 1.000000e+00
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fi
  store double %i.fy, ptr %i.fz, align 8, !tbaa !413
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ga = fcmp olt double %i.ft, %i.fq
  %i.gb = fcmp olt double %i.ft, %i.fv
  %or.cond91 = select i1 %i.ga, i1 %i.gb, i1 false
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fi ; 2 uses
  br i1 %or.cond91, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gd = fadd double %i.ft, 1.000000e+00
  store double %i.gd, ptr %i.gc, align 8, !tbaa !413
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ge = fadd double %i.fv, 1.000010e+00
  store double %i.ge, ptr %i.gc, align 8, !tbaa !413
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac, %bb.ab, %bb.x
  %.sink = phi i32 [ 1, %bb.z ], [ 3, %bb.ac ], [ 2, %bb.ab ], [ 0, %bb.x ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fi
  store i32 %.sink, ptr %i.gf, align 4, !tbaa !424
  %exitcond170.not = icmp eq i64 %i.fi, %i.el
  br i1 %exitcond170.not, label %._crit_edge, label %bb.w, !llvm.loop !1044

._crit_edge156:                                   ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit
  store ptr %i.hl, ptr %0, align 8
  %i.gg = icmp ne ptr %i.hl, %i.hk
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.hk, i64 -4 ; 2 uses
  %i.gh = icmp ult ptr %i.hl, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge156, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %._crit_edge156 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.gk, %.lr.ph.i.i ], [ %i.hl, %._crit_edge156 ] ; 3 uses
  %i.gi = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !424
  %i.gj = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !424
  store i32 %i.gj, ptr %.sroa.05.09.i.i, align 4, !tbaa !424
  store i32 %i.gi, ptr %.sroa.0.010.i.i, align 4, !tbaa !424
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.gl = icmp ult ptr %i.gk, %.sroa.0.0.i.i
  br i1 %i.gl, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !1045

bb.ae:                                            ; preds = %.lr.ph155, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit
  %i.gm = phi ptr [ null, %.lr.ph155 ], [ %i.hj, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 4 uses
  %i.gn = phi ptr [ null, %.lr.ph155 ], [ %i.hk, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 4 uses
  %.075153 = phi i64 [ %i.fc, %.lr.ph155 ], [ %i.hp, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %.076152 = phi i64 [ %i.eh, %.lr.ph155 ], [ %i.hn, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.go = phi ptr [ null, %.lr.ph155 ], [ %i.hl, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 9 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.076152
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !421
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.075153
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !424 ; 4 uses
  %.not.i = icmp eq ptr %i.gn, %i.gm
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.gs, ptr %i.gn, align 4, !tbaa !424
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 2 uses
  store ptr %i.gt, ptr %i.fd, align 8, !tbaa !425
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gu = ptrtoint ptr %i.gn to i64
  %i.gv = ptrtoint ptr %i.go to i64               ; 3 uses
  %i.gw = sub i64 %i.gu, %i.gv                    ; 5 uses
  %i.gx = icmp eq i64 %i.gw, 9223372036854775804
  br i1 %i.gx, label %bb.ah, label %_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.go, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.423) #57
          to label %.noexc113 unwind label %.loopexit.split-lp

.noexc113:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.gy = ashr exact i64 %i.gw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gy, i64 1)
  %i.gz = add nsw i64 %.sroa.speculated.i.i.i, %i.gy ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  %i.hb = call i64 @llvm.umin.i64(i64 %i.gz, i64 2305843009213693951)
  %i.hc = select i1 %i.ha, i64 2305843009213693951, i64 %i.hb ; 3 uses
  %.not.i.i.i112 = icmp ne i64 %i.hc, 0
  call void @llvm.assume(i1 %.not.i.i.i112)
  %i.hd = shl nuw nsw i64 %i.hc, 2
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #54
          to label %.noexc114 unwind label %.loopexit ; 4 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.gw ; 2 uses
  store i32 %i.gs, ptr %i.hf, align 4, !tbaa !424
  %i.hg = icmp sgt i64 %i.gw, 0
  br i1 %i.hg, label %bb.ai, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ai:                                            ; preds = %.noexc114
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.he, ptr align 4 %i.go, i64 %i.gw, i1 false)
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ai, %.noexc114
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %7 = ptrtoint ptr %i.gm to i64
  %8 = sub i64 %7, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %8) #56
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.hh, ptr %i.fd, align 8, !tbaa !425
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hc ; 2 uses
  store ptr %i.hi, ptr %i.fe, align 8, !tbaa !422
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.af
  %i.hj = phi ptr [ %i.hi, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.gm, %bb.af ]
  %i.hk = phi ptr [ %i.hh, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.gt, %bb.af ] ; 3 uses
  %i.hl = phi ptr [ %i.he, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.go, %bb.af ] ; 5 uses
  %i.hm = icmp ne i32 %i.gs, 1
  %.neg = sext i1 %i.hm to i64
  %i.hn = add i64 %.076152, %.neg                 ; 2 uses
  %i.ho = icmp ne i32 %i.gs, 2
  %.neg90 = sext i1 %i.ho to i64
  %i.hp = add i64 %.075153, %.neg90               ; 2 uses
  %i.hq = icmp ne i64 %i.hn, 0
  %i.hr = icmp ne i64 %i.hp, 0
  %i.hs = select i1 %i.hq, i1 true, i1 %i.hr
  br i1 %i.hs, label %bb.ae, label %._crit_edge156, !llvm.loop !1046

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.go, ptr %0, align 8
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i125 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126, label %bb.ap

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %._crit_edge147.split, %._crit_edge156
  %i.ht = load ptr, ptr %5, align 8, !tbaa !428   ; 5 uses
  %i.hu = load ptr, ptr %i.bp, align 8, !tbaa !430 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ht, %i.hu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ib, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i ], [ %i.ht, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit ] ; 3 uses
  %i.hv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !421 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !422
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.ia) #56
  br label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.ib, %i.hu
  br i1 %.not.i.i.i115, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %.not.i.i1.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.ic = load ptr, ptr %i.br, align 8, !tbaa !429
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ht to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.if) #56
  br label %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %i.ig = load ptr, ptr %3, align 8, !tbaa !417   ; 5 uses
  %i.ih = load ptr, ptr %i.ad, align 8, !tbaa !419 ; 2 uses
  %.not4.i.i.i117 = icmp eq ptr %i.ig, %i.ih
  br i1 %.not4.i.i.i117, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i119 = phi ptr [ %i.io, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %i.ig, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit ] ; 3 uses
  %i.ii = load ptr, ptr %.05.i.i.i119, align 8, !tbaa !410 ; 3 uses
  %.not.i.i.i.i.i.i.i120 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i.i.i120, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i118
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !411
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #56
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.an, %.lr.ph.i.i.i118
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 24 ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %i.io, %i.ih
  br i1 %.not.i.i.i121, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i118, !llvm.loop !23

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit
  %.not.i.i1.i123 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i1.i123, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ip = load ptr, ptr %i.af, align 8, !tbaa !418
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.ig to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.is) #56
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.ap:                                            ; preds = %bb.ak
  %9 = ptrtoint ptr %i.gm to i64
  %10 = sub i64 %9, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %10) #56
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126: ; preds = %bb.ak, %bb.ap
  call void @_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #55
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111
  %.pn86.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126 ], [ %.pn84, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #55
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt6vectorIdSaIdEED2Ev.exit109
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %bb.aq ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %.pn86.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !428    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !430  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !421 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !422
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #56
  br label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !22

_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !428
  br label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !429
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #56
  br label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !417    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !419  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !410 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !411
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #56
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !23

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !417
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !418
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #56
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.169") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.179", align 8   ; 14 uses
  %4 = alloca %"class.std::vector.179", align 8   ; 14 uses
  %5 = alloca %"class.testing::internal::edit_distance::(anonymous namespace)::InternalStrings", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !335
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !336
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !337
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !338
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !339
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !249
  %i.h = load ptr, ptr %1, align 8, !tbaa !251    ; 2 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

.preheader.loopexit:                              ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.promoted43.pre = load ptr, ptr %4, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.promoted43 = phi ptr [ null, %bb.a ], [ %.promoted43.pre, %.preheader.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.an, %.preheader.loopexit ]
  store ptr %.lcssa, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !249
  %i.m = load ptr, ptr %2, align 8, !tbaa !251    ; 2 uses
  %.not50 = icmp eq ptr %i.l, %i.m
  br i1 %.not50, label %._crit_edge, label %.lr.ph48

.lr.ph48:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.al, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.am, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 4 uses
  %i.r = phi ptr [ %i.h, %.lr.ph ], [ %i.aq, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.01442 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 7 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.01442
  %i.u = invoke fastcc noundef i64 @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStrings5GetIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.u, ptr %i.q, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.i, align 8, !tbaa !406
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.e:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %3, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.423) #57
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #54
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store i64 %i.u, ptr %i.ah, align 8, !tbaa !79
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.s, i64 %i.y, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %.noexc17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %6 = ptrtoint ptr %i.p to i64
  %7 = sub i64 %6, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %7) #56
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !406
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !1049
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.d
  %i.al = phi ptr [ %i.ak, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.p, %bb.d ]
  %i.am = phi ptr [ %i.aj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.v, %bb.d ]
  %i.an = phi ptr [ %i.ag, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.ao = add nuw i64 %.01442, 1                  ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !249
  %i.aq = load ptr, ptr %1, align 8, !tbaa !251   ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 5
  %i.av = icmp ult i64 %i.ao, %i.au
  br i1 %i.av, label %bb.b, label %.preheader.loopexit, !llvm.loop !1047

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit27, %.preheader
  %i.aw = phi ptr [ %.promoted43, %.preheader ], [ %i.bw, %_ZNSt6vectorImSaImEE9push_backEOm.exit27 ] ; 5 uses
  store ptr %i.aw, ptr %4, align 8
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !336
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ax)
          to label %_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #61
  unreachable

_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  invoke void @_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorImSaImEES6_(ptr dead_on_unwind writable sret(%"class.std::vector.169") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.t

bb.j:                                             ; preds = %.lr.ph48, %_ZNSt6vectorImSaImEE9push_backEOm.exit27
  %i.ba = phi ptr [ %i.m, %.lr.ph48 ], [ %i.bz, %_ZNSt6vectorImSaImEE9push_backEOm.exit27 ]
  %.047 = phi i64 [ 0, %.lr.ph48 ], [ %i.bx, %_ZNSt6vectorImSaImEE9push_backEOm.exit27 ] ; 2 uses
  %i.bb = phi ptr [ %.promoted43, %.lr.ph48 ], [ %i.bw, %_ZNSt6vectorImSaImEE9push_backEOm.exit27 ] ; 7 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.047
  %i.bd = invoke fastcc noundef i64 @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStrings5GetIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !406 ; 4 uses
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !1049 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !79
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bg, ptr %i.n, align 8, !tbaa !406
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit27

bb.m:                                             ; preds = %bb.k
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i19

bb.n:                                             ; preds = %bb.m
  store ptr %i.bb, ptr %4, align 8
  br label %.invoke

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i19: ; preds = %bb.m
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i20 = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i20, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i.i21 = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i21)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #54
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i19
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store i64 %i.bd, ptr %i.bs, align 8, !tbaa !79
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22

bb.o:                                             ; preds = %.noexc26
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %i.bb, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22: ; preds = %bb.o, %.noexc26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.not.i17.i.i.i23 = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i23, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22
  %8 = ptrtoint ptr %i.bf to i64
  %9 = sub i64 %8, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %9) #56
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22
  store ptr %i.bu, ptr %i.n, align 8, !tbaa !406
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.bv, ptr %i.o, align 8, !tbaa !1049
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit27

_ZNSt6vectorImSaImEE9push_backEOm.exit27:         ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24, %bb.l
  %i.bw = phi ptr [ %i.br, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24 ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bx = add nuw i64 %.047, 1                    ; 2 uses
  %i.by = load ptr, ptr %i.k, align 8, !tbaa !249
  %i.bz = load ptr, ptr %2, align 8, !tbaa !251   ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 5
  %i.ce = icmp ult i64 %i.bx, %i.cd
  br i1 %i.ce, label %bb.j, label %._crit_edge, !llvm.loop !1048

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i19
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bb, ptr %4, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.b, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit37 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %3, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit37, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  %.pre = load ptr, ptr %4, align 8, !tbaa !407
  br label %bb.u

bb.q:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1049
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.aw to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cj) #56
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.ck = load ptr, ptr %3, align 8, !tbaa !407   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorImSaImEED2Ev.exit29, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1049
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #56
  br label %_ZNSt6vectorImSaImEED2Ev.exit29

_ZNSt6vectorImSaImEED2Ev.exit29:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  ret void

bb.t:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit.split-lp
  %i.cr = phi ptr [ %.pre, %.loopexit.split-lp ], [ %i.aw, %bb.t ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.cq, %bb.t ]
  %.not.i.i.i30 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorImSaImEED2Ev.exit31, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1049
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #56
  br label %_ZNSt6vectorImSaImEED2Ev.exit31

_ZNSt6vectorImSaImEED2Ev.exit31:                  ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.cx = load ptr, ptr %3, align 8, !tbaa !407   ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorImSaImEED2Ev.exit33, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit31
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1049
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #56
  br label %_ZNSt6vectorImSaImEED2Ev.exit33

_ZNSt6vectorImSaImEED2Ev.exit33:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit31, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStrings5GetIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !340 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !24

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !78   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #55 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !432
  br label %bb.e

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !339 ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, %bb.d
  %.0 = phi i64 [ %i.y, %bb.d ], [ %i.aa, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #61
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal13edit_distance17CreateUnifiedDiffERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_m(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::vector.169", align 8   ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.testing::internal::edit_distance::(anonymous namespace)::Hunk", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.169") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %.sink21.i.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 9 uses
  %.sink21.i.sroa.gep109 = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 8 uses
  %.sink21.i.sroa.gep110 = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 17 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.preheader138 unwind label %bb.d

.preheader138:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !425  ; 4 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !421    ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 13 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader138, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit
  %.0127 = phi i64 [ %.2.lcssa, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit ], [ 0, %.preheader138 ] ; 2 uses
  %.058 = phi i64 [ %.260.lcssa, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit ], [ 0, %.preheader138 ] ; 2 uses
  %.055 = phi i64 [ %.257.lcssa, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev.exit ], [ 0, %.preheader138 ] ; 4 uses
  %i.t = icmp ult i64 %.055, %i.h
  br i1 %i.t, label %.preheader137.preheader, label %bb.ac

.preheader137.preheader:                          ; preds = %bb.b
  %i.u = add i64 %i.h, %.0127
  %i.v = sub i64 %i.u, %.055
  %i.w = add i64 %i.h, %.058
  %i.x = sub i64 %i.w, %.055
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.preheader, %bb.c
  %.156144 = phi i64 [ %i.ad, %bb.c ], [ %.055, %.preheader137.preheader ] ; 3 uses
  %.159143 = phi i64 [ %i.ac, %bb.c ], [ %.058, %.preheader137.preheader ] ; 2 uses
  %.1128142 = phi i64 [ %i.ab, %bb.c ], [ %.0127, %.preheader137.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.156144
  %i.z = load i32, ptr %i.y, align 4, !tbaa !424
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader137
  %i.ab = add i64 %.1128142, 1
  %i.ac = add i64 %.159143, 1
  %i.ad = add i64 %.156144, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not, label %.critedge, label %.preheader137, !llvm.loop !1050

bb.d:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %4, align 8, !tbaa !421
  br label %bb.ah

.critedge:                                        ; preds = %bb.c, %.preheader137
  %.1128.lcssa = phi i64 [ %i.v, %bb.c ], [ %.1128142, %.preheader137 ] ; 5 uses
  %.159.lcssa = phi i64 [ %i.x, %bb.c ], [ %.159143, %.preheader137 ] ; 3 uses
  %.156.lcssa = phi i64 [ %i.h, %bb.c ], [ %.156144, %.preheader137 ] ; 3 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %3, i64 %.1128.lcssa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.af = add i64 %.1128.lcssa, 1
  %i.ag = sub i64 %i.af, %.sroa.speculated
  %reass.sub = sub i64 %.159.lcssa, %.sroa.speculated
  %i.ah = add i64 %reass.sub, 1
  store i64 %i.ag, ptr %6, align 8, !tbaa !1064
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !1065
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1066
  store ptr %i.k, ptr %i.k, align 8, !tbaa !435
  store i64 0, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1067
  store ptr %i.m, ptr %i.n, align 8, !tbaa !1066
  store ptr %i.m, ptr %i.m, align 8, !tbaa !435
  store i64 0, ptr %.sink21.i.sroa.gep, align 8, !tbaa !1067
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1066
  store ptr %i.o, ptr %i.o, align 8, !tbaa !435
  store i64 0, ptr %.sink21.i.sroa.gep109, align 8, !tbaa !1067
  %.not145 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not145, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.g, %.critedge
  %i.ai = icmp ult i64 %.156.lcssa, %i.h
  br i1 %i.ai, label %.lr.ph156, label %.critedge4.thread

.lr.ph:                                           ; preds = %.critedge, %bb.g
  %.048146 = phi i64 [ %i.bd, %bb.g ], [ %.sroa.speculated, %.critedge ] ; 2 uses
  %i.aj = sub i64 %.1128.lcssa, %.048146
  %i.ak = load ptr, ptr %1, align 8, !tbaa !251
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !77
  %i.an = load i64, ptr %i.q, align 8, !tbaa !1068
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !1068
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !435 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.o
  br i1 %i.aq, label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #55
  %i.ar = load i64, ptr %.sink21.i.sroa.gep109, align 8, !tbaa !1069
  %i.as = load i64, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  %i.at = add i64 %i.as, %i.ar
  store i64 %i.at, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  store i64 0, ptr %.sink21.i.sroa.gep109, align 8, !tbaa !1069
  br label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i

_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i: ; preds = %bb.e, %.lr.ph
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !435 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.m
  br i1 %i.av, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #55
  %i.aw = load i64, ptr %.sink21.i.sroa.gep, align 8, !tbaa !1069
  %i.ax = load i64, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  store i64 0, ptr %.sink21.i.sroa.gep, align 8, !tbaa !1069
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i
  %i.az = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #54
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.g:                                             ; preds = %.sink.split.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i8 32, ptr %i.ba, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.am, ptr %.sroa.45.0..sroa_idx.i, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #55
  %i.bb = load i64, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  %i.bd = add i64 %.048146, -1                    ; 2 uses
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !1051

.lr.ph156:                                        ; preds = %.preheader, %bb.q
  %.047155 = phi i64 [ %i.bt, %bb.q ], [ 0, %.preheader ] ; 2 uses
  %.257154 = phi i64 [ %i.dg, %bb.q ], [ %.156.lcssa, %.preheader ] ; 6 uses
  %.260153 = phi i64 [ %i.df, %bb.q ], [ %.159.lcssa, %.preheader ] ; 4 uses
  %.2152 = phi i64 [ %i.dc, %bb.q ], [ %.1128.lcssa, %.preheader ] ; 4 uses
  %.not61 = icmp ult i64 %.047155, %3
  br i1 %.not61, label %.critedge4, label %bb.h

bb.h:                                             ; preds = %.lr.ph156
  %i.be = shl i64 %.257154, 32
  %i.bf = ashr exact i64 %i.be, 30
  %i.bg = getelementptr inbounds i8, ptr %i.d, i64 %i.bf ; 3 uses
  %.not131147 = icmp eq ptr %i.bg, %i.c
  br i1 %.not131147, label %.critedge2, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.h, %bb.i
  %.sroa.0104.0148 = phi ptr [ %i.bj, %bb.i ], [ %i.bg, %bb.h ] ; 3 uses
  %i.bh = load i32, ptr %.sroa.0104.0148, align 4, !tbaa !424
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %.lr.ph149
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0104.0148, i64 4 ; 3 uses
  %.not131 = icmp eq ptr %i.bj, %i.c
  br i1 %.not131, label %.critedge2, label %.lr.ph149, !llvm.loop !1052

.critedge2:                                       ; preds = %.lr.ph149, %bb.i, %bb.h
  %.sroa.0104.0.lcssa = phi ptr [ %i.bg, %bb.h ], [ %i.bj, %bb.i ], [ %.sroa.0104.0148, %.lr.ph149 ] ; 2 uses
  %i.bk = icmp eq ptr %.sroa.0104.0.lcssa, %i.c
  br i1 %i.bk, label %.critedge4.thread, label %bb.j

bb.j:                                             ; preds = %.critedge2
  %i.bl = ptrtoint ptr %.sroa.0104.0.lcssa to i64
  %i.bm = sub i64 %i.bl, %i.f
  %i.bn = ashr exact i64 %i.bm, 2
  %i.bo = sub i64 %i.bn, %.257154
  %.not62 = icmp ult i64 %i.bo, %3
  br i1 %.not62, label %.critedge4, label %.critedge4.thread

.critedge4:                                       ; preds = %bb.j, %.lr.ph156
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.257154
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !424 ; 5 uses
  %i.br = icmp eq i32 %i.bq, 0                    ; 3 uses
  %i.bs = add i64 %.047155, 1
  %i.bt = select i1 %i.br, i64 %i.bs, i64 0
  switch i32 %i.bq, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit72 [
    i32 3, label %bb.k
    i32 2, label %bb.k
    i32 0, label %bb.k
  ]

bb.k:                                             ; preds = %.critedge4, %.critedge4, %.critedge4
  %i.bu = select i1 %i.br, i8 32, i8 45
  %i.bv = load ptr, ptr %1, align 8, !tbaa !251
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %.2152
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !77
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.by = load i64, ptr %i.q, align 8, !tbaa !1068
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.q, align 8, !tbaa !1068
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !435 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.o
  br i1 %i.cb, label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i71, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #55
  %i.cc = load i64, ptr %.sink21.i.sroa.gep109, align 8, !tbaa !1069
  %i.cd = load i64, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  %i.ce = add i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  store i64 0, ptr %.sink21.i.sroa.gep109, align 8, !tbaa !1069
  br label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i71

_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i71: ; preds = %bb.m, %bb.l
  %i.cf = load ptr, ptr %i.m, align 8, !tbaa !435 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.m
  br i1 %i.cg, label %.sink.split.i69, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i71
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #55
  %i.ch = load i64, ptr %.sink21.i.sroa.gep, align 8, !tbaa !1069
  %i.ci = load i64, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  %i.cj = add i64 %i.ci, %i.ch
  store i64 %i.cj, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  store i64 0, ptr %.sink21.i.sroa.gep, align 8, !tbaa !1069
  br label %.sink.split.i69

bb.o:                                             ; preds = %bb.k
  %i.ck = load i64, ptr %i.r, align 8, !tbaa !1070
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.r, align 8, !tbaa !1070
  br label %.sink.split.i69

.sink.split.i69:                                  ; preds = %bb.o, %bb.n, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i71
  %.sink22.i = phi ptr [ %i.k, %bb.n ], [ %i.o, %bb.o ], [ %i.k, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i71 ]
  %.sink21.i.sroa.phi = phi ptr [ %.sink21.i.sroa.gep110, %bb.n ], [ %.sink21.i.sroa.gep109, %bb.o ], [ %.sink21.i.sroa.gep110, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i71 ] ; 2 uses
  %i.cm = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #54
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %.sink.split.i69
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i8 %i.bu, ptr %i.cn, align 8
  %.sroa.45.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %i.bx, ptr %.sroa.45.0..sroa_idx.i70, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %.sink22.i) #55
  %i.co = load i64, ptr %.sink21.i.sroa.phi, align 8, !tbaa !1069
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %.sink21.i.sroa.phi, align 8, !tbaa !1069
  br label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit72

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit72: ; preds = %.noexc, %.critedge4
  %i.cq = and i32 %i.bq, -3
  %or.cond9 = icmp eq i32 %i.cq, 1
  br i1 %or.cond9, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit72
  %i.cr = load ptr, ptr %2, align 8, !tbaa !251
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %.260153
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !77
  %i.cu = load i64, ptr %i.j, align 8, !tbaa !1071
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.j, align 8, !tbaa !1071
  %i.cw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #54
          to label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit78: ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i8 43, ptr %i.cx, align 8
  %.sroa.45.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.ct, ptr %.sroa.45.0..sroa_idx.i76, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #55
  %i.cy = load i64, ptr %.sink21.i.sroa.gep, align 8, !tbaa !1069
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %.sink21.i.sroa.gep, align 8, !tbaa !1069
  br label %bb.q

bb.q:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit78, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk8PushLineEcPKc.exit72
  %i.da = icmp ne i32 %i.bq, 1
  %i.db = zext i1 %i.da to i64
  %i.dc = add i64 %.2152, %i.db                   ; 2 uses
  %i.dd = icmp ne i32 %i.bq, 2
  %i.de = zext i1 %i.dd to i64
  %i.df = add i64 %.260153, %i.de                 ; 2 uses
  %i.dg = add i64 %.257154, 1                     ; 2 uses
  %exitcond173.not = icmp eq i64 %i.dg, %i.h
  br i1 %exitcond173.not, label %.critedge4.thread, label %.lr.ph156, !llvm.loop !1053

.critedge4.thread:                                ; preds = %bb.q, %bb.j, %.critedge2, %.preheader
  %.2.lcssa = phi i64 [ %.1128.lcssa, %.preheader ], [ %.2152, %.critedge2 ], [ %.2152, %bb.j ], [ %i.dc, %bb.q ]
  %.260.lcssa = phi i64 [ %.159.lcssa, %.preheader ], [ %.260153, %.critedge2 ], [ %.260153, %bb.j ], [ %i.df, %bb.q ]
  %.257.lcssa = phi i64 [ %.156.lcssa, %.preheader ], [ %.257154, %.critedge2 ], [ %.257154, %bb.j ], [ %i.h, %bb.q ]
  %.val = load i64, ptr %i.j, align 8, !tbaa !1071
  %.val68 = load i64, ptr %i.r, align 8
  %.not.i = icmp ne i64 %.val, 0
  %i.dh = icmp ne i64 %.val68, 0
  %i.di = select i1 %.not.i, i1 true, i1 %i.dh    ; 2 uses
  br i1 %i.di, label %bb.r, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %.sink.split.i69, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.ab, %bb.aa, %bb.z, %bb.y, %.sink.split.i, %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i, %.noexc89, %.noexc88, %.noexc87, %bb.v, %bb.u, %.noexc84, %.noexc83, %.noexc82, %bb.s, %bb.r
  %lpad.loopexit.split-lp232 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_14HunkD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br label %.body

bb.r:                                             ; preds = %.critedge4.thread
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.461, i64 noundef 3)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc81:                                         ; preds = %bb.r
  %i.dk = load i64, ptr %i.r, align 8, !tbaa !1070
  %.not.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc81
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.81, i64 noundef 1)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc82:                                         ; preds = %bb.s
  %i.dm = load i64, ptr %6, align 8, !tbaa !1064
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.dm)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc83:                                         ; preds = %.noexc82
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull @.str.462, i64 noundef 1)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc84:                                         ; preds = %.noexc83
  %i.dp = load i64, ptr %i.r, align 8, !tbaa !1070
  %i.dq = load i64, ptr %i.q, align 8, !tbaa !1068
  %i.dr = add i64 %i.dq, %i.dp
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i64 noundef %i.dr)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc85:                                         ; preds = %.noexc84
  %.pr.i.i = load i64, ptr %i.r, align 8, !tbaa !1070
  %.not6.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not6.i.i, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc85
  %i.dt = load i64, ptr %i.j, align 8, !tbaa !1071
  %.not7.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not7.i.i, label %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.65, i64 noundef 1)
          to label %.thread.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.thread.i.i:                                      ; preds = %bb.u, %.noexc85, %.noexc81
  %.pr = load i64, ptr %i.j, align 8, !tbaa !1071
  %.not8.i.i = icmp eq i64 %.pr, 0
  br i1 %.not8.i.i, label %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i, label %bb.v

bb.v:                                             ; preds = %.thread.i.i
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.463, i64 noundef 1)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc87:                                         ; preds = %bb.v
  %i.dw = load i64, ptr %i.i, align 8, !tbaa !1065
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.dw)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc88:                                         ; preds = %.noexc87
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.462, i64 noundef 1)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc89:                                         ; preds = %.noexc88
  %i.dz = load i64, ptr %i.j, align 8, !tbaa !1071
  %i.ea = load i64, ptr %i.q, align 8, !tbaa !1068
  %i.eb = add i64 %i.ea, %i.dz
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, i64 noundef %i.eb)
          to label %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i: ; preds = %bb.t, %.noexc89, %.thread.i.i
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.464, i64 noundef 4)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc91:                                         ; preds = %_ZNK7testing8internal13edit_distance12_GLOBAL__N_14Hunk11PrintHeaderEPSo.exit.i
  %i.ee = load ptr, ptr %i.o, align 8, !tbaa !435 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.o
  br i1 %i.ef, label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i79, label %bb.w

bb.w:                                             ; preds = %.noexc91
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #55
  %i.eg = load i64, ptr %.sink21.i.sroa.gep109, align 8, !tbaa !1069
  %i.eh = load i64, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  %i.ei = add i64 %i.eh, %i.eg
  store i64 %i.ei, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  store i64 0, ptr %.sink21.i.sroa.gep109, align 8, !tbaa !1069
  br label %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i79

_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i79: ; preds = %bb.w, %.noexc91
  %i.ej = load ptr, ptr %i.m, align 8, !tbaa !435 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.m
  br i1 %i.ek, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i79
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #55
  %i.el = load i64, ptr %.sink21.i.sroa.gep, align 8, !tbaa !1069
  %i.em = load i64, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  %i.en = add i64 %i.em, %i.el
  store i64 %i.en, ptr %.sink21.i.sroa.gep110, align 8, !tbaa !1069
  store i64 0, ptr %.sink21.i.sroa.gep, align 8, !tbaa !1069
  br label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i: ; preds = %bb.x, %_ZNSt7__cxx114listISt4pairIcPKcESaIS4_EE6spliceESt20_List_const_iteratorIS4_ERS6_.exit.i.i79
  %.sroa.07.011.i = load ptr, ptr %i.k, align 8, !tbaa !435 ; 2 uses
  %.not12.i = icmp eq ptr %.sroa.07.011.i, %i.k
  br i1 %.not12.i, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i, %.noexc96
  %.sroa.07.013.i = phi ptr [ %.sroa.07.0.i, %.noexc96 ], [ %.sroa.07.011.i, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i, i64 16
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !1073 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ep, ptr %i.a, align 1, !tbaa !80
  %i.eq = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.er = getelementptr i8, ptr %i.eq, i64 -24
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds i8, ptr %i.s, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !307
  %.not.i3.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i3.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %.lr.ph.i
  %i.ex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef signext %i.ep)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.z, %bb.y
  %.0.i.i = phi ptr [ %i.ew, %bb.y ], [ %i.s, %bb.z ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !1074 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.ez, null
  br i1 %.not.i4.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.fa = load ptr, ptr %.0.i.i, align 8, !tbaa !86
  %i.fb = getelementptr i8, ptr %i.fa, i64 -24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !303
  %i.fg = or i32 %i.ff, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fd, i32 noundef %i.fg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.fh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ez) #55
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull %i.ez, i64 noundef %i.fh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.ab, %bb.aa
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull @.str.20, i64 noundef 1)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc96:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %.sroa.07.0.i = load ptr, ptr %.sroa.07.013.i, align 8, !tbaa !435 ; 2 uses
  %.not.i80 = icmp eq ptr %.sroa.07.0.i, %i.k
  br i1 %.not.i80, label %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit, label %.lr.ph.i, !llvm.loop !1054

_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit: ; preds = %.noexc96, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk10FlushEditsEv.exit.i, %.critedge4.thread
  %i.fk = load ptr, ptr %i.o, align 8, !tbaa !435 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.fk, %i.o
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i ], [ %i.fk, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit ] ; 2 uses
  %i.fl = load ptr, ptr %.09.i.i.i, align 8, !tbaa !435 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 32) #56
  %.not.i.i.i = icmp eq ptr %i.fl, %i.o
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN7testing8internal13edit_distance12_GLOBAL__N_14Hunk7PrintToEPSo.exit
  %i.fm = load ptr, ptr %i.m, align 8, !tbaa !435 ; 2 uses
  %.not8.i.i1.i = icmp eq ptr %i.fm, %i.m
  br i1 %.not8.i.i1.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i, label %.lr.ph.i.i2.i

.lr.ph.i.i2.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i, %.lr.ph.i.i2.i
  %.09.i.i3.i = phi ptr [ %i.fn, %.lr.ph.i.i2.i ], [ %i.fm, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i ] ; 2 uses
  %i.fn = load ptr, ptr %.09.i.i3.i, align 8, !tbaa !435 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i3.i, i64 noundef 32) #56
  %.not.i.i4.i = icmp eq ptr %i.fn, %i.m
  br i1 %.not.i.i4.i, label %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i, label %.lr.ph.i.i2.i, !llvm.loop !25

_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit5.i: ; preds = %.lr.ph.i.i2.i, %_ZNSt7__cxx1110_List_baseISt4pairIcPKcESaIS4_EED2Ev.exit.i
end_hunk_1
begin_hunk_2_@_ZN7testing8internal12UnitTestImpl11RunAllTestsEv:bb.a
  %i.lx = lshr exact i64 %i.lw, 3
  %i.ly = trunc i64 %i.lx to i32
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %.preheader203, %bb.ax
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %bb.ax ], [ 1, %.preheader203 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ax ], [ 0, %.preheader203 ] ; 6 uses
  %i.ma = phi ptr [ %i.om, %bb.ax ], [ %i.lt, %.preheader203 ]
  %i.mb = load ptr, ptr %i.gr, align 8, !tbaa !478
  %i.mc = load ptr, ptr %i.go, align 8, !tbaa !475 ; 2 uses
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = shl i64 %i.mf, 30
  %i.mh = ashr i64 %i.mg, 32
  %.not.i.i142 = icmp slt i64 %indvars.iv, %i.mh
  call void @llvm.assume(i1 %.not.i.i142)
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !96 ; 2 uses
  %i.mk = icmp sgt i32 %i.mj, -1
  call void @llvm.assume(i1 %i.mk)
  %i.ml = zext nneg i32 %i.mj to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !377
  call void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %i.mn)
  %i.mo = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !81, !range !69, !noundef !70
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i144, label %bb.ax

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i144: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.mq = load ptr, ptr %i.gr, align 8, !tbaa !478
  %i.mr = load ptr, ptr %i.go, align 8, !tbaa !475 ; 2 uses
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = shl i64 %i.mu, 30
  %i.mw = ashr i64 %i.mv, 32
  %.not.i.i143 = icmp slt i64 %indvars.iv, %i.mw
  call void @llvm.assume(i1 %.not.i.i143)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !96 ; 2 uses
  %i.mz = icmp sgt i32 %i.my, -1
  call void @llvm.assume(i1 %i.mz)
  %i.na = zext nneg i32 %i.my to i64
  %i.nb = load ptr, ptr %i.i, align 8, !tbaa !392
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.na
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !377
  %i.ne = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.nd)
  br i1 %i.ne, label %.preheader201, label %bb.ax

.preheader201:                                    ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i144
  %i.nf = trunc nuw nsw i64 %indvars.iv to i32
  %.059219 = add nuw nsw i32 %i.nf, 1
  %i.ng = load ptr, ptr %i.j, align 8, !tbaa !391
  %i.nh = load ptr, ptr %i.i, align 8, !tbaa !392 ; 2 uses
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = lshr exact i64 %i.nk, 3
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = icmp slt i32 %.059219, %i.nm
  br i1 %i.nn, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147: ; preds = %.preheader201, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147 ], [ %indvars.iv239, %.preheader201 ] ; 3 uses
  %i.no = phi ptr [ %i.od, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147 ], [ %i.nh, %.preheader201 ]
  %i.np = load ptr, ptr %i.gr, align 8, !tbaa !478
  %i.nq = load ptr, ptr %i.go, align 8, !tbaa !475 ; 2 uses
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %i.nu = shl i64 %i.nt, 30
  %i.nv = ashr i64 %i.nu, 32
  %.not.i.i146 = icmp slt i64 %indvars.iv242, %i.nv
  call void @llvm.assume(i1 %.not.i.i146)
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv242
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !96 ; 2 uses
  %i.ny = icmp sgt i32 %i.nx, -1
  call void @llvm.assume(i1 %i.ny)
  %i.nz = zext nneg i32 %i.nx to i64
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nz
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !377
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ob)
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %i.oc = load ptr, ptr %i.j, align 8, !tbaa !391
  %i.od = load ptr, ptr %i.i, align 8, !tbaa !392 ; 2 uses
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = lshr exact i64 %i.og, 3
  %i.oi = trunc i64 %i.oh to i32
  %i.oj = trunc nuw i64 %indvars.iv.next243 to i32
  %i.ok = icmp slt i32 %i.oj, %i.oi
  br i1 %i.ok, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147, label %.loopexit, !llvm.loop !1644

bb.ax:                                            ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i144
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ol = load ptr, ptr %i.j, align 8, !tbaa !391
  %i.om = load ptr, ptr %i.i, align 8, !tbaa !392 ; 2 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = shl i64 %i.op, 29
  %i.or = ashr i64 %i.oq, 32
  %i.os = icmp slt i64 %indvars.iv.next, %i.or
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1
  br i1 %i.os, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %.loopexit, !llvm.loop !1645

bb.ay:                                            ; preds = %bb.aw
  %i.ot = call noundef zeroext i1 @_ZN7testing4Test15HasFatalFailureEv()
  br i1 %i.ot, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ay
  %i.ou = load ptr, ptr %i.j, align 8, !tbaa !391
  %i.ov = load ptr, ptr %i.i, align 8, !tbaa !392 ; 2 uses
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = sub i64 %i.ow, %i.ox
  %i.oz = lshr exact i64 %i.oy, 3
  %i.pa = trunc i64 %i.oz to i32
  %i.pb = icmp sgt i32 %i.pa, 0
  br i1 %i.pb, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150: ; preds = %.preheader, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150 ], [ 0, %.preheader ] ; 3 uses
  %i.pc = phi ptr [ %i.pr, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150 ], [ %i.ov, %.preheader ]
  %i.pd = load ptr, ptr %i.gr, align 8, !tbaa !478
  %i.pe = load ptr, ptr %i.go, align 8, !tbaa !475 ; 2 uses
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = shl i64 %i.ph, 30
  %i.pj = ashr i64 %i.pi, 32
  %.not.i.i149 = icmp slt i64 %indvars.iv245, %i.pj
  call void @llvm.assume(i1 %.not.i.i149)
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv245
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !96 ; 2 uses
  %i.pm = icmp sgt i32 %i.pl, -1
  call void @llvm.assume(i1 %i.pm)
  %i.pn = zext nneg i32 %i.pl to i64
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.pn
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !377
  call void @_ZN7testing9TestSuite4SkipEv(ptr noundef nonnull align 8 dereferenceable(264) %i.pp)
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.pq = load ptr, ptr %i.j, align 8, !tbaa !391
  %i.pr = load ptr, ptr %i.i, align 8, !tbaa !392 ; 2 uses
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = shl i64 %i.pu, 29
  %i.pw = ashr i64 %i.pv, 32
  %i.px = icmp slt i64 %indvars.iv.next246, %i.pw
  br i1 %i.px, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150, label %.loopexit, !llvm.loop !1646

.loopexit:                                        ; preds = %bb.ax, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i147, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i150, %.preheader203, %.preheader201, %.preheader, %bb.ay, %._crit_edge
  %i.py = icmp eq i32 %.062224, %i.gu
  %or.cond5 = select i1 %i.py, i1 true, i1 %i.gl
  br i1 %or.cond5, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.loopexit
  %i.pz = load ptr, ptr %i.gb, align 8, !tbaa !508
  %i.qa = load ptr, ptr %i.fx, align 8, !tbaa !86
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 112
  %i.qc = load ptr, ptr %i.qb, align 8
  call void %i.qc(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(72) %i.pz)
  %i.qd = load ptr, ptr %i.gq, align 8, !tbaa !509, !noalias !1663 ; 2 uses
  %i.qe = load ptr, ptr %i.gp, align 8, !tbaa !509, !noalias !1664 ; 2 uses
  %.not4.i152 = icmp eq ptr %i.qd, %i.qe
  br i1 %.not4.i152, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %bb.az, %.lr.ph.i153
  %.sroa.0196.0 = phi ptr [ %i.qf, %.lr.ph.i153 ], [ %i.qd, %bb.az ]
  %i.qf = getelementptr inbounds i8, ptr %.sroa.0196.0, i64 -8 ; 3 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !506 ; 2 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !86
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.qg), !inline_history !1651
  %.not.i154 = icmp eq ptr %i.qf, %i.qe
  br i1 %.not.i154, label %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, label %.lr.ph.i153, !llvm.loop !1652

_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit: ; preds = %.lr.ph.i153, %bb.az
  %i.qk = load ptr, ptr %i.gb, align 8, !tbaa !508
  %i.ql = load ptr, ptr %i.fx, align 8, !tbaa !86
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 120
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(72) %i.qk)
  br label %bb.ba

bb.ba:                                            ; preds = %_ZSt8for_eachISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing11EnvironmentESt6vectorIS5_SaIS5_EEEEEPFvS5_EET0_T_SF_SE_.exit, %.loopexit, %_ZN7testing8internal12UnitTestImpl12ShuffleTestsEv.exit
  %i.qo = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #55
  %i.qp = sub nsw i64 %i.qo, %i.hp
  %i.qq = sdiv i64 %i.qp, 1000000
  store i64 %i.qq, ptr %i.gv, align 8, !tbaa !483
  %i.qr = load ptr, ptr %i.gb, align 8, !tbaa !508
  %i.qs = load ptr, ptr %i.fx, align 8, !tbaa !86
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 128
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(72) %i.qr, i32 noundef %.062224)
  %i.qv = load ptr, ptr %i.i, align 8, !tbaa !376 ; 2 uses
  %i.qw = load ptr, ptr %i.j, align 8, !tbaa !376 ; 3 uses
  %.not7.i.i.i.i = icmp eq ptr %i.qv, %i.qw
  br i1 %.not7.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %i.qx = phi ptr [ %i.re, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.qw, %bb.ba ]
  %.09.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ 0, %bb.ba ]
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.rg, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i ], [ %i.qv, %bb.ba ] ; 2 uses
  %i.qy = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !377 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 112
  %i.ra = load i8, ptr %i.qz, align 8, !tbaa !390, !range !69, !noundef !70
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.bb, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.rc = call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.qy)
  %i.rd = zext i1 %i.rc to i32
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !376
  br label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i

_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i
  %i.re = phi ptr [ %i.qx, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i, %bb.bb ] ; 4 uses
  %i.rf = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.rd, %bb.bb ]
  %spec.select.i.i.i.i = add nuw nsw i32 %i.rf, %.09.i.i.i.i ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.rg, %i.re
  br i1 %.not.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i: ; preds = %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i
  %.not.i.i155 = icmp eq i32 %spec.select.i.i.i.i, 0
  br i1 %.not.i.i155, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i: ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i, %bb.ba
  %i.rh = phi ptr [ %i.re, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i ], [ %i.qw, %bb.ba ] ; 3 uses
  %i.ri = load ptr, ptr %i.gx, align 8, !tbaa !326
  %i.rj = load ptr, ptr %i.gw, align 8, !tbaa !328 ; 2 uses
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = sdiv exact i64 %i.rm, 112               ; 5 uses
  %i.ro = trunc i64 %i.rn to i32
  %i.rp = icmp sgt i32 %i.ro, 0
  br i1 %i.rp, label %.lr.ph.preheader.i.i.i, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i
  %wide.trip.count.i.i.i = and i64 %i.rn, 2147483647
  br label %.lr.ph.i.i.i

bb.bc:                                            ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond16.not.i.i.i, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit, label %.lr.ph.i.i.i, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bc ] ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.rn
  br i1 %exitcond.not.i.i.i, label %bb.bd, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.557, i64 noundef %i.rn, i64 noundef %i.rn) #57
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.rq = getelementptr inbounds nuw [112 x i8], ptr %i.rj, i64 %indvars.iv.i.i.i
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !325
  %i.rs = add i32 %i.rr, -3
  %spec.select.i.i1.i.i = icmp ult i32 %i.rs, -2
  br i1 %spec.select.i.i1.i.i, label %bb.bc, label %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit

_ZNK7testing8internal12UnitTestImpl6PassedEv.exit: ; preds = %bb.bc, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i
  %i.rt = phi ptr [ %i.rh, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i ], [ %i.re, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i ], [ %i.rh, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ], [ %i.rh, %bb.bc ] ; 2 uses
  %i.ru = phi i1 [ %.063223, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i ], [ true, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i ], [ %.063223, %bb.bc ], [ true, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i ] ; 2 uses
  %i.rv = load ptr, ptr %i.i, align 8, !tbaa !392 ; 3 uses
  %.not.i156 = icmp eq ptr %i.rt, %i.rv
  br i1 %.not.i156, label %_ZN7testing8internal12UnitTestImpl14UnshuffleTestsEv.exit, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit
  %i.rw = ptrtoint ptr %i.rt to i64
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = sub i64 %i.rw, %i.rx
  %i.rz = ashr exact i64 %i.ry, 3
  %i.sa = load ptr, ptr %i.go, align 8, !tbaa !475
  br label %bb.be

bb.be:                                            ; preds = %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i, %.lr.ph.i157
  %.05.i = phi i64 [ 0, %.lr.ph.i157 ], [ %i.st, %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i ] ; 4 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %.05.i
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !377 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 72
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 80
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !478 ; 2 uses
  %i.sg = load ptr, ptr %i.sd, align 8, !tbaa !475 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.sf, %i.sg
  br i1 %.not.i.i158, label %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.be
  %i.sh = ptrtoint ptr %i.sf to i64
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = ashr exact i64 %i.sj, 2                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.sk, 8
  br i1 %min.iters.check, label %.lr.ph.i.i159.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.sk, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %index ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  store <4 x i32> %vec.ind, ptr %i.sl, align 4, !tbaa !96
  store <4 x i32> %step.add, ptr %i.sm, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.sn = icmp eq i64 %index.next, %n.vec
  br i1 %i.sn, label %middle.block, label %vector.body, !llvm.loop !1653

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sk, %n.vec
  br i1 %cmp.n, label %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i, label %.lr.ph.i.i159.preheader

.lr.ph.i.i159.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.04.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i159

.lr.ph.i.i159:                                    ; preds = %.lr.ph.i.i159.preheader, %.lr.ph.i.i159
  %.04.i.i = phi i64 [ %i.sq, %.lr.ph.i.i159 ], [ %.04.i.i.ph, %.lr.ph.i.i159.preheader ] ; 3 uses
  %i.so = trunc i64 %.04.i.i to i32
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %.04.i.i
  store i32 %i.so, ptr %i.sp, align 4, !tbaa !96
  %i.sq = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.sq, %i.sk
  br i1 %exitcond.not.i.i, label %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i, label %.lr.ph.i.i159, !llvm.loop !1654

_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i:   ; preds = %.lr.ph.i.i159, %middle.block, %bb.be
  %i.sr = trunc i64 %.05.i to i32
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %.05.i
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !96
  %i.st = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.st, %i.rz
  br i1 %exitcond.not.i160, label %_ZN7testing8internal12UnitTestImpl14UnshuffleTestsEv.exit, label %bb.be, !llvm.loop !34

_ZN7testing8internal12UnitTestImpl14UnshuffleTestsEv.exit: ; preds = %_ZN7testing9TestSuite14UnshuffleTestsEv.exit.i, %_ZNK7testing8internal12UnitTestImpl6PassedEv.exit
  %i.su = load i8, ptr @_ZN7testing19FLAGS_gtest_shuffleE, align 1, !tbaa !81, !range !69, !noundef !70
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN7testing8internal12UnitTestImpl14UnshuffleTestsEv.exit
  %i.sw = load i32, ptr %i.fv, align 4, !tbaa !482
  %i.sx = call noundef i32 @_ZN7testing8internal17GetNextRandomSeedEi(i32 noundef %i.sw)
  store i32 %i.sx, ptr %i.fv, align 4, !tbaa !482
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN7testing8internal12UnitTestImpl14UnshuffleTestsEv.exit
  %i.sy = add nuw nsw i32 %.062224, 1             ; 2 uses
  %i.sz = icmp ne i32 %i.sy, %i.gh
  %i.ta = select i1 %i.gi, i1 true, i1 %i.sz
  br i1 %i.ta, label %bb.ab, label %._crit_edge226.loopexit, !llvm.loop !1655

bb.bh:                                            ; preds = %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #55
  %i.tb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.tb, ptr %8, align 8, !tbaa !74
  store i64 2459091176614816102, ptr %i.tb, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.tc, align 8, !tbaa !78
  %i.td = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.td, align 8, !tbaa !80
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  %i.te = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing18FLAGS_gtest_filterB5cxx11E, i64 8), align 8, !tbaa !78, !noalias !1665 ; 2 uses
  %i.tf = icmp ugt i64 %i.te, 4611686018427387895
  br i1 %i.tf, label %bb.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.440) #57
          to label %.noexc168 unwind label %bb.bq, !noalias !1665

.noexc168:                                        ; preds = %bb.bi
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.bh
  %i.tg = load ptr, ptr @_ZN7testing18FLAGS_gtest_filterB5cxx11E, align 8, !tbaa !77, !noalias !1665
  %i.th = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.tg, i64 noundef %i.te)
          to label %.noexc169 unwind label %bb.bq, !noalias !1665 ; 6 uses

.noexc169:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ti = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ti, ptr %7, align 8, !tbaa !74, !alias.scope !1665
  %i.tj = load ptr, ptr %i.th, align 8, !tbaa !77 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 16 ; 5 uses
  %i.tl = icmp eq ptr %i.tj, %i.tk
  br i1 %i.tl, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

bb.bj:                                            ; preds = %.noexc169
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !78 ; 3 uses
  %i.to = icmp ult i64 %i.tn, 16
  call void @llvm.assume(i1 %i.to)
  %i.tp = add nuw nsw i64 %i.tn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ti, ptr noundef nonnull align 8 dereferenceable(1) %i.tk, i64 %i.tp, i1 false)
  br label %bb.bk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %.noexc169
  store ptr %i.tj, ptr %7, align 8, !tbaa !77, !alias.scope !1665
  %i.tq = load i64, ptr %i.tk, align 8, !tbaa !80
  store i64 %i.tq, ptr %i.ti, align 8, !tbaa !80, !alias.scope !1665
  %.phi.trans.insert.i166 = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %.pre.i167 = load i64, ptr %.phi.trans.insert.i166, align 8, !tbaa !78
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165, %bb.bj
  %i.tr = phi i64 [ %i.tn, %bb.bj ], [ %.pre.i167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ]
  %i.ts = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.tr, ptr %i.tt, align 8, !tbaa !78, !alias.scope !1665
  store ptr %i.tk, ptr %i.th, align 8, !tbaa !77
  store i64 0, ptr %i.ts, align 8, !tbaa !78
  store i8 0, ptr %i.tk, align 8, !tbaa !80
  call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !78, !noalias !1666
  %i.tv = add i64 %i.tu, -4611686018427387860
  %i.tw = icmp ult i64 %i.tv, 44
  br i1 %i.tw, label %bb.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i170

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.440) #57
          to label %.noexc174 unwind label %bb.br, !noalias !1666

.noexc174:                                        ; preds = %bb.bl
end_hunk_2
