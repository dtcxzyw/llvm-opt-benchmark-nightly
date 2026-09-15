Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN5Catch9Benchmark6Detail7analyseERKNS_7IConfigEPNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESA_:bb.a

_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i26, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i.i27 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i27)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #59 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store double %i.bg, ptr %i.bs, align 8, !tbaa !9286
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.p, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %.sroa.056.0123, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i28 = icmp eq ptr %.sroa.056.0123, null
  br i1 %.not.i17.i.i.i28, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.0123, i64 noundef %i.bj) #60
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.m, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %.sroa.056.2 = phi ptr [ %i.br, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.056.0123, %bb.m ] ; 2 uses
  %.pn102 = phi ptr [ %i.bs, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.1060.0124, %bb.m ]
  %.sroa.1663.2 = phi ptr [ %i.bu, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.1663.0125, %bb.m ] ; 2 uses
  %.sroa.1060.2 = getelementptr inbounds nuw i8, ptr %.pn102, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.053.0126, i64 8 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %.sroa.1681.0.lcssa
  br i1 %i.bw, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit, label %.lr.ph127

bb.r:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.499) #58
  unreachable

bb.t:                                             ; preds = %bb.r
  %.not103 = icmp eq ptr %3, %2
  br i1 %.not103, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33, label %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE13_M_deallocateEPS4_m.exit.i32

_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE13_M_deallocateEPS4_m.exit.i32: ; preds = %bb.t
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #59 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.g
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33: ; preds = %bb.t, %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE13_M_deallocateEPS4_m.exit.i32
  %.sroa.040.1 = phi ptr [ %i.bx, %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE13_M_deallocateEPS4_m.exit.i32 ], [ null, %bb.t ] ; 4 uses
  %.sroa.16.1 = phi ptr [ %i.by, %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE13_M_deallocateEPS4_m.exit.i32 ], [ null, %bb.t ] ; 2 uses
  %i.bz = icmp ult ptr %2, %3
  br i1 %i.bz, label %.lr.ph137, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35.loopexit: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit
  %i.ca = uitofp nneg i32 %i.df to double
  %i.cb = fdiv double %i.dd, %i.ca
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35.loopexit, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33
  %.sroa.040.0.lcssa = phi ptr [ %.sroa.040.1, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ], [ %.sroa.040.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35.loopexit ]
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.040.1, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ], [ %.sroa.10.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35.loopexit ]
  %.sroa.16.0.lcssa = phi ptr [ %.sroa.16.1, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ], [ %.sroa.16.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35.loopexit ]
  %i.cc = phi double [ +qnan, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ], [ %i.cb, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35.loopexit ] ; 3 uses
  store ptr %.sroa.040.0.lcssa, ptr %0, align 8, !tbaa !9291
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.lcssa, ptr %i.cd, align 8, !tbaa !9292
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.16.0.lcssa, ptr %i.ce, align 8, !tbaa !9293
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.cc, ptr %i.cf, align 8, !tbaa !9286
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.cc, ptr %i.cg, align 8, !tbaa !9286
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.cc, ptr %i.ch, align 8, !tbaa !9286
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double 0.000000e+00, ptr %i.cj, align 8, !tbaa !69653
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.ci, i8 0, i64 60, i1 false)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph137:                                        ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit
  %.0136 = phi ptr [ %i.de, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ] ; 4 uses
  %.021135 = phi i32 [ %i.df, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ 0, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ]
  %.sroa.0.0134 = phi double [ %i.dd, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ 0.000000e+00, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ]
  %.sroa.16.0133 = phi ptr [ %.sroa.16.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.16.1, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ] ; 3 uses
  %.sroa.10.0132 = phi ptr [ %.sroa.10.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.040.1, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ] ; 3 uses
  %.sroa.040.0131 = phi ptr [ %.sroa.040.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.040.1, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit33 ] ; 5 uses
  %.not.i = icmp eq ptr %.sroa.10.0132, %.sroa.16.0133
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph137
  %i.ck = load i64, ptr %.0136, align 8           ; 2 uses
  store i64 %i.ck, ptr %.sroa.10.0132, align 8, !tbaa !9286
  %i.cl = bitcast i64 %i.ck to double
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit

bb.v:                                             ; preds = %.lr.ph137
  %i.cm = ptrtoint ptr %.sroa.16.0133 to i64
  %i.cn = ptrtoint ptr %.sroa.040.0131 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.w, label %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.cu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i36)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #59 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  %i.cy = load i64, ptr %.0136, align 8           ; 2 uses
  store i64 %i.cy, ptr %i.cx, align 8, !tbaa !9286
  %i.cz = icmp sgt i64 %i.co, 0
  %i.da = bitcast i64 %i.cy to double
  br i1 %i.cz, label %bb.x, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %.sroa.040.0131, i64 %i.co, i1 false)
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.040.0131, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.0131, i64 noundef %i.co) #60
  %.pre.pre = load double, ptr %.0136, align 8, !tbaa !9285
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %.pre = phi double [ %.pre.pre, %bb.y ], [ %i.da, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.u, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.dc = phi double [ %.pre, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.cl, %bb.u ]
  %.sroa.040.2 = phi ptr [ %i.cw, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.040.0131, %bb.u ] ; 2 uses
  %.pn104 = phi ptr [ %i.cx, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.10.0132, %bb.u ]
  %.sroa.16.2 = phi ptr [ %i.db, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.16.0133, %bb.u ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn104, i64 8 ; 2 uses
  %i.dd = fadd double %.sroa.0.0134, %i.dc        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0136, i64 8 ; 2 uses
  %i.df = add nuw nsw i32 %.021135, 1             ; 2 uses
  %i.dg = icmp ult ptr %i.de, %3
  br i1 %i.dg, label %.lr.ph137, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35.loopexit, !llvm.loop !69643

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.l, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch9Benchmark6Detail15analyse_samplesEdjPdS2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Catch::Benchmark::Detail::bootstrap_analysis") align 8 captures(none) initializes((0, 72)) %0, double noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %class.anon.10, align 8             ; 8 uses
  %6 = alloca %"struct.Catch::Benchmark::Estimate.5", align 8 ; 5 uses
  %7 = alloca %"struct.Catch::Benchmark::Estimate.5", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  store i32 %2, ptr %5, align 8, !tbaa !9300
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !9301
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.b, align 8, !tbaa !9302
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %1, ptr %i.c, align 8, !tbaa !9303
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call fastcc void @"_ZZN5Catch9Benchmark6Detail15analyse_samplesEdjPdS2_ENK3$_0clEPFdPKdS5_E"(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @_ZN5Catch9Benchmark6Detail4meanEPKdS3_)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call fastcc void @"_ZZN5Catch9Benchmark6Detail15analyse_samplesEdjPdS2_ENK3$_0clEPFdPKdS5_E"(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @_ZN5Catch9Benchmark6Detail12_GLOBAL__N_118standard_deviationEPKdS4_)
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %.sroa.010.0.copyload = load double, ptr %6, align 8, !tbaa !9286
  %.sroa.0.0.copyload = load double, ptr %7, align 8, !tbaa !9286 ; 3 uses
  %i.i = sitofp i32 %i.h to double                ; 4 uses
  %i.j = tail call noundef double @sqrt(double noundef %i.i) #49
  %i.k = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %i.l = insertelement <2 x double> %i.k, double %.sroa.010.0.copyload, i64 1
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.i, i64 1
  %i.o = fdiv <2 x double> %i.l, %i.n             ; 4 uses
  %i.p = fmul <2 x double> %i.o, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 1
  %i.r = fmul double %i.q, 2.500000e-01           ; 2 uses
  %i.s = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.t = fcmp olt double %i.s, %i.r
  %.sroa.speculated21.i = select i1 %i.t, double %i.s, double %i.r ; 2 uses
  %i.u = sub nsw i32 0, %i.h
  %i.v = sitofp i32 %i.u to double
  %i.w = fneg double %i.i
  %foldExtExtBinop = fsub <2 x double> %i.o, %i.p
  %8 = fmul double %.sroa.0.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %9 = fmul double %.sroa.speculated21.i, %.sroa.speculated21.i ; 3 uses
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %9, double %8)
  %i.y = fmul double %9, 4.000000e+00
  %i.z = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.o, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ad = fmul <2 x double> %i.aa, %i.ac          ; 2 uses
  %i.ae = insertelement <2 x double> poison, double %i.v, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x double> %i.ad, %i.af          ; 2 uses
  %i.ah = fmul <2 x double> %i.ag, splat (double -2.000000e+00)
  %i.ai = insertelement <2 x double> poison, double %i.x, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fadd <2 x double> %i.ad, %i.aj          ; 3 uses
  %i.al = fneg <2 x double> %i.ag
  %i.am = insertelement <2 x double> poison, double %i.y, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.an, %i.al
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.ak, <2 x double> %i.ao) ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 1
  %i.ar = tail call double @sqrt(double noundef %i.aq) #49
  %i.as = extractelement <2 x double> %i.ap, i64 0
  %i.at = tail call double @sqrt(double noundef %i.as) #49
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.ar, i64 1
  %i.aw = fadd <2 x double> %i.av, %i.ak
  %i.ax = fdiv <2 x double> %i.ah, %i.aw
  %i.ay = fptosi <2 x double> %i.ax to <2 x i32>
  %i.az = sitofp <2 x i32> %i.ay to <2 x double>  ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0 ; 2 uses
  %i.bb = extractelement <2 x double> %i.az, i64 1 ; 2 uses
  %i.bc = fcmp olt double %i.ba, %i.bb
  %.sroa.speculated.i = select i1 %i.bc, double %i.ba, double %i.bb
  %i.bd = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.sroa.speculated.i, i64 0
  %i.be = fsub <2 x double> %i.ac, %i.bd          ; 2 uses
  %i.bf = fdiv <2 x double> %i.be, %i.ac
  %i.bg = fneg <2 x double> %i.be
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %i.bh = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x double> poison, double %8, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> %12)
  %i.bj = fmul <2 x double> %i.bf, %i.bi          ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0 ; 2 uses
  %i.bl = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.bm = fcmp olt double %i.bk, %i.bl
  %.sroa.speculated4.i = select i1 %i.bm, double %i.bk, double %i.bl
  %i.bn = fdiv double %.sroa.speculated4.i, %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !9304
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !9304
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.bn, ptr %i.bp, align 8, !tbaa !9297
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch9Benchmark6Detail17classify_outliersEPKdS3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Catch::Benchmark::OutlierClassification") align 4 captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.501) #58
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %2, %1                ; 2 uses
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %i.c
  br label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #59 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 3 uses
  %i.h = icmp samesign ugt i64 %i.c, 8
  br i1 %i.h, label %bb.c, label %bb.d, !prof !9305

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.i = icmp eq i64 %i.c, 8
  br i1 %i.i, label %bb.e, label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load double, ptr %1, align 8, !tbaa !9286
  store double %i.j, ptr %i.f, align 8, !tbaa !9286
  br label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit:     ; preds = %.thread.i.i, %bb.c, %bb.d, %bb.e
  %.sroa.14.0 = phi ptr [ %i.e, %.thread.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.e ], [ %i.g, %bb.d ] ; 10 uses
  %.sroa.041.0 = phi ptr [ null, %.thread.i.i ], [ %i.f, %bb.c ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 9 uses
  %i.k = ptrtoint ptr %.sroa.14.0 to i64
  %i.l = ptrtoint ptr %.sroa.041.0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 %i.m ; 2 uses
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.p = add nsw i64 %i.o, -1                     ; 2 uses
  %i.q = sitofp i64 %i.p to double
  %i.r = fmul nnan double %i.q, 2.500000e-01      ; 2 uses
  %i.s = fptosi double %i.r to i32                ; 2 uses
  %i.t = sitofp i32 %i.s to double
  %i.u = fsub double %i.r, %i.t                   ; 2 uses
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.041.0, i64 %i.v ; 5 uses
  %i.x = icmp eq ptr %.sroa.041.0, %.sroa.14.0    ; 2 uses
  %i.y = icmp eq ptr %i.w, %.sroa.14.0
  %or.cond.i.i = or i1 %i.x, %i.y
  br i1 %or.cond.i.i, label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = xor i64 %i.aa, 126
  tail call void @_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef %.sroa.041.0, ptr noundef %i.w, ptr noundef nonnull %i.n, i64 noundef %i.ab)
  br label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i

_ZSt11nth_elementIPdEvT_S1_S1_.exit.i:            ; preds = %bb.f, %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit
  %i.ac = load double, ptr %i.w, align 8, !tbaa !9286 ; 3 uses
  %i.ad = fcmp oeq double %i.u, 0.000000e+00
  br i1 %i.ad, label %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i
  %i.ae = getelementptr i8, ptr %i.w, i64 8       ; 4 uses
  %i.af = icmp eq ptr %i.ae, %.sroa.14.0
  %i.ag = getelementptr i8, ptr %i.w, i64 16      ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.ag, %.sroa.14.0
  %or.cond.i.i.i = or i1 %i.af, %.not17.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11min_elementIPdET_S1_S1_.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.g
  %.pre.i.i.i = load double, ptr %i.ae, align 8, !tbaa !9286
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.ah = phi double [ %i.am, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i ]
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !9286 ; 2 uses
  %i.ak = fcmp olt double %i.aj, %i.ah            ; 2 uses
  %spec.select.i.i.i = select i1 %i.ak, ptr %i.ai, ptr %.018.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.al, %.sroa.14.0
  %i.am = select i1 %i.ak, double %i.aj, double %i.ah
  br i1 %.not.i.i.i25, label %_ZSt11min_elementIPdET_S1_S1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !187

_ZSt11min_elementIPdET_S1_S1_.exit.i:             ; preds = %.lr.ph.i.i.i, %bb.g
  %.011.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.an = load double, ptr %.011.i.i.i, align 8, !tbaa !9286
  %i.ao = fsub double %i.an, %i.ac
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.u, double %i.ao, double %i.ac)
  br label %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit

_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit: ; preds = %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i, %_ZSt11min_elementIPdET_S1_S1_.exit.i
  %.0.i = phi double [ %i.ap, %_ZSt11min_elementIPdET_S1_S1_.exit.i ], [ %i.ac, %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i ] ; 2 uses
  %i.aq = mul nsw i64 %i.p, 3
  %i.ar = sitofp i64 %i.aq to double
  %i.as = fmul nnan double %i.ar, 2.500000e-01    ; 2 uses
  %i.at = fptosi double %i.as to i32              ; 2 uses
  %i.au = sitofp i32 %i.at to double
  %i.av = fsub double %i.as, %i.au                ; 2 uses
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.041.0, i64 %i.aw ; 5 uses
  %i.ay = icmp eq ptr %i.ax, %.sroa.14.0
  %or.cond.i.i26 = or i1 %i.x, %i.ay
  br i1 %or.cond.i.i26, label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i27, label %bb.h

bb.h:                                             ; preds = %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = xor i64 %i.ba, 126
  tail call void @_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %.sroa.041.0, ptr noundef %i.ax, ptr noundef nonnull %i.n, i64 noundef %i.bb)
  br label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i27

_ZSt11nth_elementIPdEvT_S1_S1_.exit.i27:          ; preds = %bb.h, %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit
  %i.bc = load double, ptr %i.ax, align 8, !tbaa !9286 ; 3 uses
  %i.bd = fcmp oeq double %i.av, 0.000000e+00
  br i1 %i.bd, label %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit39, label %bb.i

bb.i:                                             ; preds = %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i27
  %i.be = getelementptr i8, ptr %i.ax, i64 8      ; 4 uses
  %i.bf = icmp eq ptr %i.be, %.sroa.14.0
  %i.bg = getelementptr i8, ptr %i.ax, i64 16     ; 2 uses
  %.not17.i.i.i28 = icmp eq ptr %i.bg, %.sroa.14.0
  %or.cond.i.i.i29 = or i1 %i.bf, %.not17.i.i.i28
  br i1 %or.cond.i.i.i29, label %_ZSt11min_elementIPdET_S1_S1_.exit.i36, label %.lr.ph.preheader.i.i.i30

.lr.ph.preheader.i.i.i30:                         ; preds = %bb.i
  %.pre.i.i.i31 = load double, ptr %i.be, align 8, !tbaa !9286
  br label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %.lr.ph.i.i.i32, %.lr.ph.preheader.i.i.i30
  %i.bh = phi double [ %i.bm, %.lr.ph.i.i.i32 ], [ %.pre.i.i.i31, %.lr.ph.preheader.i.i.i30 ] ; 2 uses
  %i.bi = phi ptr [ %i.bl, %.lr.ph.i.i.i32 ], [ %i.bg, %.lr.ph.preheader.i.i.i30 ] ; 3 uses
  %.018.i.i.i33 = phi ptr [ %spec.select.i.i.i34, %.lr.ph.i.i.i32 ], [ %i.be, %.lr.ph.preheader.i.i.i30 ]
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !9286 ; 2 uses
  %i.bk = fcmp olt double %i.bj, %i.bh            ; 2 uses
  %spec.select.i.i.i34 = select i1 %i.bk, ptr %i.bi, ptr %.018.i.i.i33 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bl, %.sroa.14.0
  %i.bm = select i1 %i.bk, double %i.bj, double %i.bh
  br i1 %.not.i.i.i35, label %_ZSt11min_elementIPdET_S1_S1_.exit.i36, label %.lr.ph.i.i.i32, !llvm.loop !187

_ZSt11min_elementIPdET_S1_S1_.exit.i36:           ; preds = %.lr.ph.i.i.i32, %bb.i
  %.011.i.i.i37 = phi ptr [ %i.be, %bb.i ], [ %spec.select.i.i.i34, %.lr.ph.i.i.i32 ]
  %i.bn = load double, ptr %.011.i.i.i37, align 8, !tbaa !9286
  %i.bo = fsub double %i.bn, %i.bc
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.av, double %i.bo, double %i.bc)
  br label %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit39

_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit39: ; preds = %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i27, %_ZSt11min_elementIPdET_S1_S1_.exit.i36
  %.0.i38 = phi double [ %i.bp, %_ZSt11min_elementIPdET_S1_S1_.exit.i36 ], [ %i.bc, %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i27 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br i1 %.not.i.i.i, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit39
  %i.bq = fsub double %.0.i38, %.0.i              ; 2 uses
  %i.br = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = insertelement <2 x double> poison, double %.0.i38, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> <double 1.500000e+00, double 3.000000e+00>, <2 x double> %i.bu) ; 2 uses
  %i.bw = fneg double %i.bq
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> <double 3.000000e+00, double 1.500000e+00>, <2 x double> %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cg = extractelement <2 x double> %i.cb, i64 0
  %i.ch = extractelement <2 x double> %i.cb, i64 1
  %i.ci = extractelement <2 x double> %i.bv, i64 0
  %i.cj = extractelement <2 x double> %i.bv, i64 1
  br label %bb.j

end_hunk_0
