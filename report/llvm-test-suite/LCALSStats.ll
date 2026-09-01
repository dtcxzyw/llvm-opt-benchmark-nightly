Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LCALSStats?download=true
inline.NumInlined: 1543
inline.NumDeleted: 476
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN16LoopSuiteRunInfoD2Ev:bb.a
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit54
  tail call void @_ZdlPv(ptr noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z10flushCachev() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  %i.c = load i64, ptr %i.b, align 8, !tbaa !123  ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge8, label %.lr.ph

._crit_edge8:                                     ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %.pre = load x86_fp80, ptr %.phi.trans.insert, align 16, !tbaa !115
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !124 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %.promoted = load x86_fp80, ptr %i.f, align 16, !tbaa !115 ; 2 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.g = icmp ult i64 %i.c, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.c, -4
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi x86_fp80 [ %.promoted, %.lr.ph ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %.05.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %i.h = phi x86_fp80 [ %.epil.init, %.epil.preheader ], [ %i.l, %bb.b ]
  %.05.epil = phi i64 [ %.05.epil.init, %.epil.preheader ], [ %i.m, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05.epil
  %i.j = load double, ptr %i.i, align 8, !tbaa !128
  %i.k = fpext double %i.j to x86_fp80
  %i.l = fadd x86_fp80 %i.h, %i.k                 ; 2 uses
  %i.m = add nuw i64 %.05.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !149

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %._crit_edge8
  %i.n = phi x86_fp80 [ %.pre, %._crit_edge8 ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ], [ %i.l, %bb.b ]
  %i.o = uitofp i64 %i.c to x86_fp80
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.q = fdiv x86_fp80 %i.n, %i.o
  store x86_fp80 %i.q, ptr %i.p, align 16, !tbaa !115
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %i.r = phi x86_fp80 [ %.promoted, %.lr.ph.new ], [ %i.ak, %bb.c ]
  %.05 = phi i64 [ 0, %.lr.ph.new ], [ %i.al, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05
  %i.t = load double, ptr %i.s, align 8, !tbaa !128
  %i.u = fpext double %i.t to x86_fp80
  %i.v = fadd x86_fp80 %i.r, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !128
  %i.z = fpext double %i.y to x86_fp80
  %i.aa = fadd x86_fp80 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !128
  %i.ae = fpext double %i.ad to x86_fp80
  %i.af = fadd x86_fp80 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !128
  %i.aj = fpext double %i.ai to x86_fp80
  %i.ak = fadd x86_fp80 %i.af, %i.aj              ; 3 uses
  %i.al = add nuw i64 %.05, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !151
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9copyTimerR8LoopStatiRK9LoopTimer(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !152, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !154
  %i.f = load i64, ptr %2, align 8, !tbaa !155
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = sitofp i64 %i.g to x86_fp80
  %i.i = fdiv x86_fp80 %i.h, 1.000000e+06         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %1 to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156
  %.not.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store x86_fp80 %i.i, ptr %i.o, align 16, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.r, ptr %i.n, align 8, !tbaa !65
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !66   ; 4 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775792
  br i1 %i.w, label %bb.e, label %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #19
  unreachable

_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.x = ashr exact i64 %i.v, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 576460752303423487)
  %i.ab = select i1 %i.z, i64 576460752303423487, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 4
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #20 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store x86_fp80 %i.i, ptr %i.ae, align 16, !tbaa !67
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.f, label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.ad, ptr align 16 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.not.i17.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #22
  br label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i

_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !66
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !156
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit

_ZNSt6vectorIeSaIeEE9push_backERKe.exit:          ; preds = %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12computeStatsjRSt6vectorI8LoopStatSaIS0_EEb(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !133    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 280
  %.not264 = icmp eq ptr %i.b, %i.c
  br i1 %.not264, label %._crit_edge256, label %.lr.ph255

._crit_edge256:                                   ; preds = %.loopexit234, %bb.a
  br i1 %2, label %bb.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph255:                                        ; preds = %bb.a, %.loopexit234
  %i.h = phi i64 [ %6, %.loopexit234 ], [ 0, %bb.a ]
  %.0253 = phi i32 [ %5, %.loopexit234 ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %i.h ; 10 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !36, !range !58, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.preheader233, label %.loopexit234

.preheader233:                                    ; preds = %.lr.ph255
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %.not265 = icmp eq ptr %i.n, %i.o
  br i1 %.not265, label %.loopexit234, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader233
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph252, %bb.h
  %i.ab = phi i64 [ 0, %.lr.ph252 ], [ %4, %bb.h ] ; 7 uses
  %.0135251 = phi i32 [ 0, %.lr.ph252 ], [ %3, %bb.h ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !63
  %.not145 = icmp eq i64 %i.ad, 0
  br i1 %.not145, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ab ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !66 ; 9 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = lshr exact i64 %i.al, 4                 ; 6 uses
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  %.not266 = icmp eq i32 %i.an, 0
  br i1 %.not266, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.c
  %i.ao = uitofp nneg i32 %i.an to x86_fp80       ; 2 uses
  %i.ap = fdiv x86_fp80 0.000000e+00, %i.ao
  br label %._crit_edge249

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = and i64 %i.am, 4294967295
  %i.aq = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.am, 4294967294
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.g
  %i.as = and i64 %i.al, 16
  %lcmp.mod.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.0130240.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader ], [ %.1131.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0134239.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bv, %._crit_edge.unr-lcssa ]
  %.sroa.0229.0..sroa.0229.0.230235238.epil.init = phi x86_fp80 [ f0xFFFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader ], [ %i.bx, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.0227.0..sroa.0227.0.228236237.epil.init = phi x86_fp80 [ f0x7FFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader ], [ %i.bz, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod356 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod356)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.epil.init
  %i.au = load x86_fp80, ptr %i.at, align 16, !tbaa !67 ; 7 uses
  %i.av = fadd x86_fp80 %.0134239.epil.init, %i.au ; 2 uses
  %i.aw = fcmp olt x86_fp80 %.sroa.0229.0..sroa.0229.0.230235238.epil.init, %i.au
  %i.ax = select i1 %i.aw, x86_fp80 %i.au, x86_fp80 %.sroa.0229.0..sroa.0229.0.230235238.epil.init ; 2 uses
  %i.ay = fcmp olt x86_fp80 %i.au, %.sroa.0227.0..sroa.0227.0.228236237.epil.init
  %i.az = select i1 %i.ay, x86_fp80 %i.au, x86_fp80 %.sroa.0227.0..sroa.0227.0.228236237.epil.init ; 2 uses
  %i.ba = fcmp ogt x86_fp80 %i.au, 0.000000e+00
  br i1 %i.ba, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph.epil.preheader
  %i.bb = fdiv x86_fp80 1.000000e+00, %i.au
  %i.bc = fadd x86_fp80 %.0130240.epil.init, %i.bb
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.d, %._crit_edge.unr-lcssa
  %.1131.lcssa = phi x86_fp80 [ %.1131.1, %._crit_edge.unr-lcssa ], [ %i.bc, %bb.d ], [ %.0130240.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.lcssa350 = phi x86_fp80 [ %i.bv, %._crit_edge.unr-lcssa ], [ %i.av, %bb.d ], [ %i.av, %.lr.ph.epil.preheader ]
  %.lcssa349 = phi x86_fp80 [ %i.bx, %._crit_edge.unr-lcssa ], [ %i.ax, %bb.d ], [ %i.ax, %.lr.ph.epil.preheader ] ; 2 uses
  %.lcssa = phi x86_fp80 [ %i.bz, %._crit_edge.unr-lcssa ], [ %i.az, %bb.d ], [ %i.az, %.lr.ph.epil.preheader ] ; 2 uses
  %i.bd = uitofp i32 %i.an to x86_fp80            ; 4 uses
  %i.be = fdiv x86_fp80 %.lcssa350, %i.bd         ; 7 uses
  %i.bf = fcmp ogt x86_fp80 %.1131.lcssa, 0.000000e+00
  %i.bg = fdiv x86_fp80 %i.bd, %.1131.lcssa
  %.2132 = select i1 %i.bf, x86_fp80 %i.bg, x86_fp80 %.1131.lcssa ; 2 uses
  %xtraiter357 = and i64 %i.am, 3                 ; 3 uses
  %i.bh = icmp ult i64 %i.aq, 3
  br i1 %i.bh, label %.lr.ph248.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter361 = and i64 %i.am, 4294967292
  br label %.lr.ph248

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.0130240 = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.1131.1, %bb.g ] ; 2 uses
  %.0134239 = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.bv, %bb.g ]
  %.sroa.0229.0..sroa.0229.0.230235238 = phi x86_fp80 [ f0xFFFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader.new ], [ %i.bx, %bb.g ] ; 2 uses
  %.sroa.0227.0..sroa.0227.0.228236237 = phi x86_fp80 [ f0x7FFEFFFFFFFFFFFFFFFF, %.lr.ph.preheader.new ], [ %i.bz, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bj = load x86_fp80, ptr %i.bi, align 16, !tbaa !67 ; 7 uses
  %i.bk = fadd x86_fp80 %.0134239, %i.bj
  %i.bl = fcmp olt x86_fp80 %.sroa.0229.0..sroa.0229.0.230235238, %i.bj
  %i.bm = select i1 %i.bl, x86_fp80 %i.bj, x86_fp80 %.sroa.0229.0..sroa.0229.0.230235238 ; 2 uses
  %i.bn = fcmp olt x86_fp80 %i.bj, %.sroa.0227.0..sroa.0227.0.228236237
  %i.bo = select i1 %i.bn, x86_fp80 %i.bj, x86_fp80 %.sroa.0227.0..sroa.0227.0.228236237 ; 2 uses
  %i.bp = fcmp ogt x86_fp80 %i.bj, 0.000000e+00
  br i1 %i.bp, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.bq = fdiv x86_fp80 1.000000e+00, %i.bj
  %i.br = fadd x86_fp80 %.0130240, %i.bq
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %.1131 = phi x86_fp80 [ %i.br, %bb.e ], [ %.0130240, %.lr.ph ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load x86_fp80, ptr %i.bt, align 16, !tbaa !67 ; 7 uses
  %i.bv = fadd x86_fp80 %i.bk, %i.bu              ; 3 uses
  %i.bw = fcmp olt x86_fp80 %i.bm, %i.bu
  %i.bx = select i1 %i.bw, x86_fp80 %i.bu, x86_fp80 %i.bm ; 3 uses
  %i.by = fcmp olt x86_fp80 %i.bu, %i.bo
  %i.bz = select i1 %i.by, x86_fp80 %i.bu, x86_fp80 %i.bo ; 3 uses
  %i.ca = fcmp ogt x86_fp80 %i.bu, 0.000000e+00
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.cb = fdiv x86_fp80 1.000000e+00, %i.bu
  %i.cc = fadd x86_fp80 %.1131, %i.cb
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %.1131.1 = phi x86_fp80 [ %i.cc, %bb.f ], [ %.1131, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !157

._crit_edge249.loopexit.unr-lcssa:                ; preds = %.lr.ph248
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %._crit_edge249, label %.lr.ph248.epil.preheader

.lr.ph248.epil.preheader:                         ; preds = %._crit_edge249.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv275.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next276.3, %._crit_edge249.loopexit.unr-lcssa ]
  %.0133245.epil.init = phi x86_fp80 [ 0.000000e+00, %._crit_edge ], [ %i.dm, %._crit_edge249.loopexit.unr-lcssa ]
  %lcmp.mod360 = icmp ne i64 %xtraiter357, 0
  tail call void @llvm.assume(i1 %lcmp.mod360)
  br label %.lr.ph248.epil

.lr.ph248.epil:                                   ; preds = %.lr.ph248.epil, %.lr.ph248.epil.preheader
  %indvars.iv275.epil = phi i64 [ %indvars.iv275.epil.init, %.lr.ph248.epil.preheader ], [ %indvars.iv.next276.epil, %.lr.ph248.epil ] ; 2 uses
  %.0133245.epil = phi x86_fp80 [ %.0133245.epil.init, %.lr.ph248.epil.preheader ], [ %i.cg, %.lr.ph248.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph248.epil.preheader ], [ %epil.iter.next, %.lr.ph248.epil ]
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv275.epil
  %i.ce = load x86_fp80, ptr %i.cd, align 16, !tbaa !67
  %i.cf = fsub x86_fp80 %i.ce, %i.be              ; 2 uses
  %i.cg = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.cf, x86_fp80 %i.cf, x86_fp80 %.0133245.epil) ; 2 uses
  %indvars.iv.next276.epil = add nuw nsw i64 %indvars.iv275.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter357
  br i1 %epil.iter.cmp.not, label %._crit_edge249, label %.lr.ph248.epil, !llvm.loop !158

._crit_edge249:                                   ; preds = %._crit_edge249.loopexit.unr-lcssa, %.lr.ph248.epil, %._crit_edge.thread
  %.2132312 = phi x86_fp80 [ 0.000000e+00, %._crit_edge.thread ], [ %.2132, %.lr.ph248.epil ], [ %.2132, %._crit_edge249.loopexit.unr-lcssa ]
  %i.ch = phi x86_fp80 [ %i.ap, %._crit_edge.thread ], [ %i.be, %.lr.ph248.epil ], [ %i.be, %._crit_edge249.loopexit.unr-lcssa ]
  %i.ci = phi x86_fp80 [ %i.ao, %._crit_edge.thread ], [ %i.bd, %.lr.ph248.epil ], [ %i.bd, %._crit_edge249.loopexit.unr-lcssa ]
  %.sroa.0229.0..sroa.0229.0.230235.lcssa311 = phi x86_fp80 [ f0xFFFEFFFFFFFFFFFFFFFF, %._crit_edge.thread ], [ %.lcssa349, %.lr.ph248.epil ], [ %.lcssa349, %._crit_edge249.loopexit.unr-lcssa ]
  %.sroa.0227.0..sroa.0227.0.228236.lcssa310 = phi x86_fp80 [ f0x7FFEFFFFFFFFFFFFFFFF, %._crit_edge.thread ], [ %.lcssa, %.lr.ph248.epil ], [ %.lcssa, %._crit_edge249.loopexit.unr-lcssa ]
  %.0133.lcssa = phi x86_fp80 [ 0.000000e+00, %._crit_edge.thread ], [ %i.dm, %._crit_edge249.loopexit.unr-lcssa ], [ %i.cg, %.lr.ph248.epil ]
  %i.cj = fdiv x86_fp80 %.0133.lcssa, %i.ci
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !66
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.ab
  store x86_fp80 %i.ch, ptr %i.cl, align 16, !tbaa !67
  %i.cm = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ab
  store x86_fp80 %i.cj, ptr %i.cn, align 16, !tbaa !67
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !66
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.ab
  store x86_fp80 %.sroa.0227.0..sroa.0227.0.228236.lcssa310, ptr %i.cp, align 16, !tbaa !67
  %i.cq = load ptr, ptr %i.z, align 8, !tbaa !66
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.ab
  store x86_fp80 %.sroa.0229.0..sroa.0229.0.230235.lcssa311, ptr %i.cr, align 16, !tbaa !67
  %i.cs = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.ab
  store x86_fp80 %.2132312, ptr %i.ct, align 16, !tbaa !67
  br label %bb.h

.lr.ph248:                                        ; preds = %.lr.ph248, %._crit_edge.new
  %indvars.iv275 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next276.3, %.lr.ph248 ] ; 5 uses
  %.0133245 = phi x86_fp80 [ 0.000000e+00, %._crit_edge.new ], [ %i.dm, %.lr.ph248 ]
  %niter362 = phi i64 [ 0, %._crit_edge.new ], [ %niter362.next.3, %.lr.ph248 ]
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv275
  %i.cv = load x86_fp80, ptr %i.cu, align 16, !tbaa !67
  %i.cw = fsub x86_fp80 %i.cv, %i.be              ; 2 uses
  %i.cx = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.cw, x86_fp80 %i.cw, x86_fp80 %.0133245)
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv275
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load x86_fp80, ptr %i.cz, align 16, !tbaa !67
  %i.db = fsub x86_fp80 %i.da, %i.be              ; 2 uses
  %i.dc = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.db, x86_fp80 %i.db, x86_fp80 %i.cx)
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv275
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load x86_fp80, ptr %i.de, align 16, !tbaa !67
  %i.dg = fsub x86_fp80 %i.df, %i.be              ; 2 uses
  %i.dh = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.dg, x86_fp80 %i.dg, x86_fp80 %i.dc)
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv275
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load x86_fp80, ptr %i.dj, align 16, !tbaa !67
  %i.dl = fsub x86_fp80 %i.dk, %i.be              ; 2 uses
  %i.dm = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.dl, x86_fp80 %i.dl, x86_fp80 %i.dh) ; 3 uses
  %indvars.iv.next276.3 = add nuw nsw i64 %indvars.iv275, 4 ; 2 uses
  %niter362.next.3 = add i64 %niter362, 4         ; 2 uses
  %niter362.ncmp.3 = icmp eq i64 %niter362.next.3, %unroll_iter361
  br i1 %niter362.ncmp.3, label %._crit_edge249.loopexit.unr-lcssa, label %.lr.ph248, !llvm.loop !159

bb.h:                                             ; preds = %bb.b, %._crit_edge249
  %3 = add i32 %.0135251, 1                       ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.dn = icmp ugt i64 %i.s, %4
  br i1 %i.dn, label %bb.b, label %.loopexit234, !llvm.loop !160

.loopexit234:                                     ; preds = %bb.h, %.preheader233, %.lr.ph255
  %5 = add i32 %.0253, 1                          ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.do = icmp ugt i64 %i.g, %6
  br i1 %i.do, label %.lr.ph255, label %._crit_edge256, !llvm.loop !161

bb.i:                                             ; preds = %._crit_edge256
  %i.dp = load ptr, ptr @_ZL21s_loop_suite_run_info, align 8, !tbaa !73 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 7 uses
  %i.dr = load i32, ptr %i.dq, align 16, !tbaa !121 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %bb.i
  %i.ds = zext i32 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 2                ; 2 uses
  %i.du = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #20 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.du, i8 0, i64 %i.dt, i1 false), !tbaa !4
  %.pre = load i32, ptr %i.dq, align 16, !tbaa !121 ; 2 uses
  %.not.i.i.i.i147 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i.i147, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.dv = zext i32 %.pre to i64
  %i.dw = shl nuw nsw i64 %i.dv, 4                ; 3 uses
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #20
          to label %.noexc151 unwind label %bb.n  ; 9 uses

.noexc151:                                        ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  %i.dz = add nsw i64 %i.dw, -16                  ; 2 uses
  %i.ea = lshr exact i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1
  %xtraiter363 = and i64 %i.eb, 7                 ; 2 uses
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %.lr.ph.i.i.i.i.i.i.i.i.i148.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i148.prol

.lr.ph.i.i.i.i.i.i.i.i.i148.prol:                 ; preds = %.noexc151, %.lr.ph.i.i.i.i.i.i.i.i.i148.prol
  %.07.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.i.i148.prol ], [ %i.dx, %.noexc151 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i148.prol ], [ 0, %.noexc151 ]
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i.prol, align 16, !tbaa !67
  %i.ec = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter363
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i148.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i148.prol, !llvm.loop !162

.lr.ph.i.i.i.i.i.i.i.i.i148.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i148.prol, %.noexc151
  %.07.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.dx, %.noexc151 ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.i.i148.prol ]
  %i.ed = icmp ult i64 %i.dz, 112
  br i1 %i.ed, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i148

.lr.ph.i.i.i.i.i.i.i.i.i148:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i148.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i148
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i.i.i148 ], [ %.07.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i148.prol.loopexit ] ; 9 uses
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i, align 16, !tbaa !67
  %i.ee = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 16
  store x86_fp80 0.000000e+00, ptr %i.ee, align 16, !tbaa !67
  %i.ef = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 32
  store x86_fp80 0.000000e+00, ptr %i.ef, align 16, !tbaa !67
  %i.eg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 48
  store x86_fp80 0.000000e+00, ptr %i.eg, align 16, !tbaa !67
  %i.eh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 64
  store x86_fp80 0.000000e+00, ptr %i.eh, align 16, !tbaa !67
  %i.ei = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 80
  store x86_fp80 0.000000e+00, ptr %i.ei, align 16, !tbaa !67
  %i.ej = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 96
  store x86_fp80 0.000000e+00, ptr %i.ej, align 16, !tbaa !67
  %i.ek = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 112
  store x86_fp80 0.000000e+00, ptr %i.ek, align 16, !tbaa !67
  %i.el = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i149.7 = icmp eq ptr %i.el, %i.dy
  br i1 %.not.i.i.i.i.i.i.i.i.i149.7, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i148, !llvm.loop !163

_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i148, %.lr.ph.i.i.i.i.i.i.i.i.i148.prol.loopexit
  %.pre291 = load i32, ptr %i.dq, align 16, !tbaa !121 ; 2 uses
  %.not.i.i.i.i152 = icmp eq i32 %.pre291, 0
  br i1 %.not.i.i.i.i152, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit
  %i.em = zext i32 %.pre291 to i64
  %i.en = shl nuw nsw i64 %i.em, 4                ; 3 uses
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #20
          to label %.noexc158 unwind label %bb.o  ; 8 uses

.noexc158:                                        ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en
  %i.eq = add nsw i64 %i.en, -16                  ; 2 uses
  %i.er = lshr exact i64 %i.eq, 4
  %i.es = add nuw nsw i64 %i.er, 1
  %xtraiter365 = and i64 %i.es, 7                 ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i153.prol

.lr.ph.i.i.i.i.i.i.i.i.i153.prol:                 ; preds = %.noexc158, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol
  %.07.i.i.i.i.i.i.i.i.i154.prol = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol ], [ %i.eo, %.noexc158 ] ; 2 uses
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol ], [ 0, %.noexc158 ]
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i154.prol, align 16, !tbaa !67
  %i.et = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154.prol, i64 16 ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i153.prol, !llvm.loop !164

.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i153.prol, %.noexc158
  %.07.i.i.i.i.i.i.i.i.i154.unr = phi ptr [ %i.eo, %.noexc158 ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol ]
  %i.eu = icmp ult i64 %i.eq, 112
  br i1 %i.eu, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159, label %.lr.ph.i.i.i.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i.i.i.i153:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i153
  %.07.i.i.i.i.i.i.i.i.i154 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i153 ], [ %.07.i.i.i.i.i.i.i.i.i154.unr, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit ] ; 9 uses
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i154, align 16, !tbaa !67
  %i.ev = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 16
  store x86_fp80 0.000000e+00, ptr %i.ev, align 16, !tbaa !67
  %i.ew = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 32
  store x86_fp80 0.000000e+00, ptr %i.ew, align 16, !tbaa !67
  %i.ex = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 48
  store x86_fp80 0.000000e+00, ptr %i.ex, align 16, !tbaa !67
  %i.ey = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 64
  store x86_fp80 0.000000e+00, ptr %i.ey, align 16, !tbaa !67
  %i.ez = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 80
  store x86_fp80 0.000000e+00, ptr %i.ez, align 16, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 96
  store x86_fp80 0.000000e+00, ptr %i.fa, align 16, !tbaa !67
  %i.fb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 112
  store x86_fp80 0.000000e+00, ptr %i.fb, align 16, !tbaa !67
  %i.fc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i154, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i155.7 = icmp eq ptr %i.fc, %i.ep
  br i1 %.not.i.i.i.i.i.i.i.i.i155.7, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159, label %.lr.ph.i.i.i.i.i.i.i.i.i153, !llvm.loop !163

_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i153, %.lr.ph.i.i.i.i.i.i.i.i.i153.prol.loopexit
  %.pre292 = load i32, ptr %i.dq, align 16, !tbaa !121 ; 2 uses
  %.not.i.i.i.i160 = icmp eq i32 %.pre292, 0
  br i1 %.not.i.i.i.i160, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit159
  %i.fd = zext i32 %.pre292 to i64
  %i.fe = shl nuw nsw i64 %i.fd, 4                ; 3 uses
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #20
          to label %.noexc166 unwind label %bb.p  ; 7 uses

.noexc166:                                        ; preds = %bb.l
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  %i.fh = add nsw i64 %i.fe, -16                  ; 2 uses
  %i.fi = lshr exact i64 %i.fh, 4
  %i.fj = add nuw nsw i64 %i.fi, 1
  %xtraiter368 = and i64 %i.fj, 7                 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol

.lr.ph.i.i.i.i.i.i.i.i.i161.prol:                 ; preds = %.noexc166, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol
  %.07.i.i.i.i.i.i.i.i.i162.prol = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol ], [ %i.ff, %.noexc166 ] ; 2 uses
  %prol.iter370 = phi i64 [ %prol.iter370.next, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol ], [ 0, %.noexc166 ]
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i162.prol, align 16, !tbaa !67
  %i.fk = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162.prol, i64 16 ; 2 uses
  %prol.iter370.next = add i64 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i64 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i161.prol, !llvm.loop !165

.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161.prol, %.noexc166
  %.07.i.i.i.i.i.i.i.i.i162.unr = phi ptr [ %i.ff, %.noexc166 ], [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol ]
  %i.fl = icmp ult i64 %i.fh, 112
  br i1 %i.fl, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167, label %.lr.ph.i.i.i.i.i.i.i.i.i161

.lr.ph.i.i.i.i.i.i.i.i.i161:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i161
  %.07.i.i.i.i.i.i.i.i.i162 = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i.i.i.i161 ], [ %.07.i.i.i.i.i.i.i.i.i162.unr, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit ] ; 9 uses
  store x86_fp80 0.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i162, align 16, !tbaa !67
  %i.fm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 16
  store x86_fp80 0.000000e+00, ptr %i.fm, align 16, !tbaa !67
  %i.fn = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 32
  store x86_fp80 0.000000e+00, ptr %i.fn, align 16, !tbaa !67
  %i.fo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 48
  store x86_fp80 0.000000e+00, ptr %i.fo, align 16, !tbaa !67
  %i.fp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 64
  store x86_fp80 0.000000e+00, ptr %i.fp, align 16, !tbaa !67
  %i.fq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 80
  store x86_fp80 0.000000e+00, ptr %i.fq, align 16, !tbaa !67
  %i.fr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 96
  store x86_fp80 0.000000e+00, ptr %i.fr, align 16, !tbaa !67
  %i.fs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 112
  store x86_fp80 0.000000e+00, ptr %i.fs, align 16, !tbaa !67
  %i.ft = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i162, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i163.7 = icmp eq ptr %i.ft, %i.fg
  br i1 %.not.i.i.i.i.i.i.i.i.i163.7, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167, label %.lr.ph.i.i.i.i.i.i.i.i.i161, !llvm.loop !163

_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i161, %.lr.ph.i.i.i.i.i.i.i.i.i161.prol.loopexit
  %.pre293 = load i32, ptr %i.dq, align 16, !tbaa !121 ; 2 uses
  %.not.i.i.i.i168 = icmp eq i32 %.pre293, 0
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit175, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIeSaIeEEC2EmRKeRKS0_.exit167
  %i.fu = zext i32 %.pre293 to i64
  %i.fv = shl nuw nsw i64 %i.fu, 4                ; 3 uses
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #20
          to label %.noexc174 unwind label %bb.q  ; 5 uses

.noexc174:                                        ; preds = %bb.m
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  %i.fy = add nsw i64 %i.fv, -16                  ; 2 uses
  %i.fz = lshr exact i64 %i.fy, 4
  %i.ga = add nuw nsw i64 %i.fz, 1
  %xtraiter371 = and i64 %i.ga, 7                 ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i169.prol

.lr.ph.i.i.i.i.i.i.i.i.i169.prol:                 ; preds = %.noexc174, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol
  %.07.i.i.i.i.i.i.i.i.i170.prol = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.i169.prol ], [ %i.fw, %.noexc174 ] ; 2 uses
end_hunk_0
