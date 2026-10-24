Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_matchers?download=true
inline.NumInlined: 3728
inline.NumDeleted: 1406
begin_hunk_0_@_ZN11opencv_test26match_affineBestOf2Nearest12PerfTestBodyEv:.noexc.i
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !157 ; 8 uses
  %.not.i.i228 = icmp eq ptr %.pre, null
  br i1 %.not.i.i228, label %_ZNSt12__shared_ptrIN2cv6detail15FeaturesMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.rt = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.ru = load atomic i64, ptr %i.rt acquire, align 8 ; 2 uses
  %i.rv = icmp eq i64 %i.ru, 4294967297
  %i.rw = trunc i64 %i.ru to i32                  ; 2 uses
  br i1 %i.rv, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i32 0, ptr %i.rt, align 8, !tbaa !159
  %i.rx = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.rx, align 4, !tbaa !160
  %i.ry = load ptr, ptr %.pre, align 8, !tbaa !79
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8
  call void %i.sa(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #29, !inline_history !9
  %i.sb = load ptr, ptr %.pre, align 8, !tbaa !79
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #29, !inline_history !9
  br label %_ZNSt12__shared_ptrIN2cv6detail15FeaturesMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fs:                                            ; preds = %bb.fq
  %i.se = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i229 = icmp eq i8 %i.se, 0
  br i1 %.not.i.i.i229, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.sf = add nsw i32 %i.rw, -1
  store i32 %i.sf, ptr %i.rt, align 8, !tbaa !161
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230

bb.fu:                                            ; preds = %bb.fs
  %i.sg = atomicrmw volatile add ptr %i.rt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230: ; preds = %bb.fu, %bb.ft
  %.0.i.i.i.i231 = phi i32 [ %i.rw, %bb.ft ], [ %i.sg, %bb.fu ]
  %i.sh = icmp eq i32 %.0.i.i.i.i231, 1
  br i1 %i.sh, label %bb.fv, label %_ZNSt12__shared_ptrIN2cv6detail15FeaturesMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !162

bb.fv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #29
  br label %_ZNSt12__shared_ptrIN2cv6detail15FeaturesMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6detail15FeaturesMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.fp, %bb.fr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i230, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.si = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !157 ; 8 uses
  %.not.i.i232 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i232, label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt12__shared_ptrIN2cv6detail15FeaturesMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 4 uses
  %i.sl = load atomic i64, ptr %i.sk acquire, align 8 ; 2 uses
  %i.sm = icmp eq i64 %i.sl, 4294967297
  %i.sn = trunc i64 %i.sl to i32                  ; 2 uses
  br i1 %i.sm, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i32 0, ptr %i.sk, align 8, !tbaa !159
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 12
  store i32 0, ptr %i.so, align 4, !tbaa !160
  %i.sp = load ptr, ptr %i.sj, align 8, !tbaa !79
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8
  call void %i.sr(ptr noundef nonnull align 8 dereferenceable(16) %i.sj) #29, !inline_history !1
  %i.ss = load ptr, ptr %i.sj, align 8, !tbaa !79
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(16) %i.sj) #29, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fy:                                            ; preds = %bb.fw
  %i.sv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !74
  %.not.i.i.i233 = icmp eq i8 %i.sv, 0
  br i1 %.not.i.i.i233, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.sw = add nsw i32 %i.sn, -1
  store i32 %i.sw, ptr %i.sk, align 8, !tbaa !161
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234

bb.ga:                                            ; preds = %bb.fy
  %i.sx = atomicrmw volatile add ptr %i.sk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234: ; preds = %bb.ga, %bb.fz
  %.0.i.i.i.i235 = phi i32 [ %i.sn, %bb.fz ], [ %i.sx, %bb.ga ]
  %i.sy = icmp eq i32 %.0.i.i.i.i235, 1
  br i1 %i.sy, label %bb.gb, label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !162

bb.gb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sj) #29
  br label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2cv6detail15FeaturesMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i234, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.gc:                                            ; preds = %bb.ff, %bb.er
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %bb.ff ], [ %i.pq, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.eq, %bb.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %bb.gc ], [ %.pn84.pn.pn, %bb.eq ], [ %.pn80.pn.pn, %bb.do ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #29
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.ck
  %.pn88.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn, %bb.gd ], [ %i.jy, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #29
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.cj
  %.pn88.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn, %bb.ge ], [ %i.jx, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #29
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ci
  %.pn88.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn.pn, %bb.gf ], [ %i.jw, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.cb, %bb.ca
  %.pn96 = phi { ptr, i32 } [ %i.in, %bb.cb ], [ %.pn88.pn.pn.pn.pn.pn.pn, %bb.gg ], [ %i.im, %bb.ca ]
  call void @_ZN2cv6detail11MatchesInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %21) #29
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.bz
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %bb.gh ], [ %i.il, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.by, %bb.bx
  %.pn96.pn.pn = phi { ptr, i32 } [ %.pn96.pn, %bb.gi ], [ %i.ik, %bb.by ], [ %i.ij, %bb.bx ]
  call void @_ZN2cv6detail13ImageFeaturesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @_ZN2cv6detail13ImageFeaturesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %.body

.body:                                            ; preds = %bb.au, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6detail27AffineBestOf2NearestMatcherESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i144, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6detail27AffineBestOf2NearestMatcherESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, %bb.gj, %bb.bj
  %.pn96.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn, %bb.gj ], [ %i.ew, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6detail27AffineBestOf2NearestMatcherESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i144 ], [ %i.bs, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6detail27AffineBestOf2NearestMatcherESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ], [ %.pn63.pn.pn, %bb.bj ], [ %i.gf, %bb.au ]
  call void @_ZNSt12__shared_ptrIN2cv6detail15FeaturesMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #29
  br label %bb.gk

bb.gk:                                            ; preds = %.body, %bb.ag
  %.pn96.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.pn, %.body ], [ %i.ec, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.gl

bb.gl:                                            ; preds = %bb.ad, %bb.ae, %bb.af, %bb.gk
  %.pn96.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.ad ], [ %.pn96.pn.pn.pn.pn.pn.pn, %bb.gk ], [ %i.eb, %bb.af ], [ %i.ea, %bb.ae ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #29
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.pn96.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gl ], [ %.pn54.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #29
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.pn96.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gm ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn96.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal24CmpHelperFloatingPointEQIdEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %or.cond = fcmp uno double %3, %4
  br i1 %or.cond, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit: ; preds = %bb.a
  %9 = bitcast double %3 to i64                   ; 2 uses
  %10 = bitcast double %4 to i64                  ; 3 uses
  %11 = sub i64 0, %9
  %12 = tail call double @llvm.fabs.f64(double %3)
  %13 = fneg double %12
  %14 = bitcast double %13 to i64
  %.not3.i.i.i = icmp slt i64 %9, 0
  %.0.i.i.i = select i1 %.not3.i.i.i, i64 %11, i64 %14
  %.neg.i = sub nuw i64 -9223372036854775808, %10
  %.not3.i9.i.i = icmp slt i64 %10, 0
  %.0.i10.i.neg4.i = select i1 %.not3.i9.i.i, i64 %10, i64 %.neg.i
  %15 = add i64 %.0.i.i.i, 4
  %16 = add i64 %15, %.0.i10.i.neg4.i
  %i.a = icmp ult i64 %16, 9
  br i1 %i.a, label %bb.b, label %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread

bb.b:                                             ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.p

_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread: ; preds = %bb.a, %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 17, ptr %i.g, align 8, !tbaa !546
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %3)
          to label %_ZNSolsEd.exit unwind label %bb.g ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSolsEd.exit
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 17, ptr %i.n, align 8, !tbaa !546
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %4)
          to label %_ZNSolsEd.exit14 unwind label %bb.i ; 0 uses

_ZNSolsEd.exit14:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSolsEd.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %8, align 8, !tbaa !73     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !74
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.u = load ptr, ptr %7, align 8, !tbaa !73     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.v, align 8, !tbaa !74
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.z = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.z, ptr %6, align 8, !tbaa !79
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 -24     ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %6, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !79
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !74
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #29
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !79
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 -24    ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %6, i64 %i.aq
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !79
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !291
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.at) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  store ptr %i.z, ptr %5, align 8, !tbaa !79
  %i.au = load i64, ptr %i.ab, align 8
  %i.av = getelementptr inbounds i8, ptr %5, i64 %i.au
  store ptr %i.aa, ptr %i.av, align 8, !tbaa !79
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !79
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !74
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit20: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !79
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #29
  store ptr %i.an, ptr %5, align 8, !tbaa !79
  %i.be = load i64, ptr %i.ap, align 8
  %i.bf = getelementptr inbounds i8, ptr %5, i64 %i.be
  store ptr %i.ao, ptr %i.bf, align 8, !tbaa !79
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !291
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bh) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.p

bb.g:                                             ; preds = %_ZNK7testing8internal13FloatingPointIdE12AlmostEqualsERKS2_.exit.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSolsEd.exit14
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.k:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.l:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %8, align 8, !tbaa !73    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !74
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bn, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bt = load ptr, ptr %7, align 8, !tbaa !73    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !74
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #31
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_perf_matchers.cpp:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.kg = call noundef i32 @_ZN11opencv_test86matchVector_affineBestOf2NearestVectorFeatures_affineBestOf2NearestVectorFeatures_Test13AddToRegistryEv()
  store i32 %i.kg, ptr @_ZN11opencv_test86matchVector_affineBestOf2NearestVectorFeatures_affineBestOf2NearestVectorFeatures_Test24gtest_registering_dummy_E, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.kh = call noundef ptr @_ZN7testing8UnitTest11GetInstanceEv()
  %i.ki = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest27parameterized_test_registryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.kh)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.kj, ptr %1, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 70, ptr %i.b, align 8, !tbaa !71
  %i.kk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.kk, ptr %1, align 8, !tbaa !73
  %i.kl = load i64, ptr %i.b, align 8, !tbaa !71  ; 3 uses
  store i64 %i.kl, ptr %i.kj, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.kk, ptr noundef nonnull align 1 dereferenceable(70) @.str.21, i64 70, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !75
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kl
  store i8 0, ptr %i.kn, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.ko, ptr %0, align 8, !tbaa !69
  %i.kp = load ptr, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.kq = load i64, ptr %i.km, align 8, !tbaa !75 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.kq, ptr %i.a, align 8, !tbaa !71
  %i.kr = icmp ugt i64 %i.kq, 15
  br i1 %i.kr, label %.noexc.i.i.i114, label %._crit_edge.i.i.i.i93

.noexc.i.i.i114:                                  ; preds = %__cxx_global_var_init.56.exit
  %i.ks = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9.i115 unwind label %bb.at ; 2 uses

.noexc9.i115:                                     ; preds = %.noexc.i.i.i114
  store ptr %i.ks, ptr %0, align 8, !tbaa !73
  %i.kt = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.kt, ptr %i.ko, align 8, !tbaa !74
  br label %._crit_edge.i.i.i.i93

._crit_edge.i.i.i.i93:                            ; preds = %.noexc9.i115, %__cxx_global_var_init.56.exit
  %i.ku = phi ptr [ %i.ks, %.noexc9.i115 ], [ %i.ko, %__cxx_global_var_init.56.exit ] ; 2 uses
  switch i64 %i.kq, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i93
  %i.kv = load i8, ptr %i.kp, align 1, !tbaa !74
  store i8 %i.kv, ptr %i.ku, align 1, !tbaa !74
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i93
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ku, ptr align 1 %i.kp, i64 %i.kq, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i.i.i93
  %i.kw = load i64, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !75
  %i.ky = load ptr, ptr %0, align 8, !tbaa !73
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kw
  store i8 0, ptr %i.kz, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 230, ptr %i.la, align 8, !tbaa !77
  %i.lb = invoke noundef ptr @_ZN7testing8internal29ParameterizedTestCaseRegistry24GetTestCasePatternHolderIN11opencv_test46matchVector_affineBestOf2NearestVectorFeaturesEEEPNS0_25ParameterizedTestCaseInfoIT_EEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(24) %i.ki, ptr noundef nonnull @.str.69, ptr noundef nonnull align 8 %0)
          to label %._crit_edge.i.i10.i102 unwind label %bb.au

._crit_edge.i.i10.i102:                           ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.lc, ptr %2, align 8, !tbaa !69
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ld, align 8, !tbaa !75
  store i8 0, ptr %i.lc, align 8, !tbaa !74
  %i.le = invoke noundef i32 @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test46matchVector_affineBestOf2NearestVectorFeaturesEE24AddTestCaseInstantiationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJSA_iEEEEvEPFSA_RKNS_13TestParamInfoISF_EEEPKci(ptr noundef nonnull align 8 dereferenceable(128) %i.lb, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @_ZN11opencv_testL67gtest_matchVector_affineBestOf2NearestVectorFeatures_EvalGenerator_B5cxx11Ev, ptr noundef nonnull @_ZN11opencv_testL70gtest_matchVector_affineBestOf2NearestVectorFeatures_EvalGenerateName_ERKN7testing13TestParamInfoISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEE, ptr noundef nonnull @.str.21, i32 noundef 230)
          to label %bb.as unwind label %bb.av     ; 0 uses

bb.as:                                            ; preds = %._crit_edge.i.i10.i102
  %i.lf = load ptr, ptr %2, align 8, !tbaa !73    ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.lc
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106: ; preds = %bb.as
  %i.lh = load i64, ptr %i.lc, align 8, !tbaa !74
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.lj = load ptr, ptr %0, align 8, !tbaa !73    ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.ko
  br i1 %i.lk, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107
  %i.ll = load i64, ptr %i.ko, align 8, !tbaa !74
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #31
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i109

_ZN7testing8internal12CodeLocationD2Ev.exit.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108
  %i.ln = load ptr, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.kj
  br i1 %i.lo, label %__cxx_global_var_init.68.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i110: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i109
  %i.lp = load i64, ptr %i.kj, align 8, !tbaa !74
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #31
  br label %__cxx_global_var_init.68.exit

bb.at:                                            ; preds = %.noexc.i.i.i114
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit22.i96

bb.au:                                            ; preds = %bb.ar
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i10.i102
  %i.lt = landingpad { ptr, i32 }
          cleanup
  %i.lu = load ptr, ptr %2, align 8, !tbaa !73    ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.lc
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i103: ; preds = %bb.av
  %i.lw = load i64, ptr %i.lc, align 8, !tbaa !74
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i104: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i104, %bb.au
  %.pn.pn.i94 = phi { ptr, i32 } [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i104 ], [ %i.ls, %bb.au ] ; 2 uses
  %i.ly = load ptr, ptr %0, align 8, !tbaa !73    ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.ko
  br i1 %i.lz, label %_ZN7testing8internal12CodeLocationD2Ev.exit22.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i95: ; preds = %bb.aw
  %i.ma = load i64, ptr %i.ko, align 8, !tbaa !74
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #31
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit22.i96

_ZN7testing8internal12CodeLocationD2Ev.exit22.i96: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i95, %bb.at
  %.pn.pn.pn.i97 = phi { ptr, i32 } [ %i.lr, %bb.at ], [ %.pn.pn.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i95 ], [ %.pn.pn.i94, %bb.aw ]
  %i.mc = load ptr, ptr %1, align 8, !tbaa !73    ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.kj
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i98: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit22.i96
  %i.me = load i64, ptr %i.kj, align 8, !tbaa !74
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i99: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit22.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %common.resume

__cxx_global_var_init.68.exit:                    ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #28

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #24 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(none) }
attributes #35 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}
!llvm.errno.tbaa = !{!65}

!0 = distinct !{!0, !114}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !114}
!3 = distinct !{!3, !114}
!4 = distinct !{null, null}
!5 = distinct !{null, null, null, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!8 = distinct !{null}
!9 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv6detail15FeaturesMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!10 = distinct !{null}
!11 = distinct !{!11, !114}
!12 = distinct !{!12, !114}
!13 = distinct !{null, null, null, null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{!15, !114}
!16 = distinct !{!16, !114}
!17 = distinct !{!17, !114}
!18 = distinct !{null, null}
!19 = distinct !{!19, !114}
!20 = distinct !{!20, !114}
!21 = distinct !{!21, !114}
!22 = distinct !{!22, !114}
!23 = distinct !{ptr @_ZN7testing8internal14ParamGeneratorIiED2Ev, null, null}
!24 = distinct !{ptr @_ZN7testing8internal14ParamGeneratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null, null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{ptr @_ZN7testing8internal13ParamIteratorIiED2Ev, null, null}
!28 = distinct !{ptr @_ZN7testing8internal13ParamIteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null, null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{null, null}
!34 = distinct !{null, null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{!38, !114}
!39 = distinct !{!39, !114}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{ptr @_ZN7testing8internal13ParamIteratorImED2Ev, null, null}
!44 = distinct !{null, null, null}
!45 = distinct !{null}
!46 = distinct !{!46, !114}
!47 = distinct !{!47, !114}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{null}
!52 = distinct !{null}
!53 = distinct !{ptr @_ZN7testing8internal13ParamIteratorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEED2Ev, null, null}
!54 = distinct !{null, null, null}
!55 = distinct !{null}
!56 = distinct !{null}
!57 = !{i32 8, !"PIC Level", i32 2}
!58 = !{i32 7, !"PIE Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 2}
!60 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!61 = !{!"Simple C++ TBAA"}
!62 = !{!"omnipotent char", !61, i64 0}
!63 = !{!"int", !62, i64 0}
!64 = !{!"__libc_errno", !63, i64 0}
!65 = !{!64, !63, i64 0}
!66 = !{!"any pointer", !62, i64 0}
!67 = !{!"p1 omnipotent char", !66, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !67, i64 0}
!69 = !{!68, !67, i64 0}
!70 = !{!"long", !62, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0, !70, i64 8, !62, i64 16}
!73 = !{!72, !67, i64 0}
!74 = !{!62, !62, i64 0}
!75 = !{!72, !70, i64 8}
!76 = !{!"_ZTSN7testing8internal12CodeLocationE", !72, i64 0, !63, i64 32}
!77 = !{!76, !63, i64 32}
!78 = !{!"vtable pointer", !61, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"bool", !62, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !66, i64 0}
!83 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !82, i64 0, !63, i64 8}
!84 = !{!83, !63, i64 8}
!85 = !{!"p1 _ZTSN7testing8internal14GTestFlagSaverE", !66, i64 0}
!86 = !{!"_ZTSN7testing8internal10scoped_ptrINS0_14GTestFlagSaverEEE", !85, i64 0}
!87 = !{!"_ZTSN7testing4TestE", !86, i64 8}
!88 = !{!"p1 _ZTSSt4pairIiN2cv5Size_IiEEE", !66, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN2cv5Size_IiEEESaIS4_EE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!90 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN2cv5Size_IiEEESaIS4_EE12_Vector_implE", !89, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseISt4pairIiN2cv5Size_IiEEESaIS4_EE", !90, i64 0}
!92 = !{!"_ZTSSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EE", !91, i64 0}
!93 = !{!"_ZTSN4perf13PERF_STRATEGYE", !62, i64 0}
!94 = !{!"p1 long", !66, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!96 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !95, i64 0}
!97 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !96, i64 0}
!98 = !{!"_ZTSSt6vectorIlSaIlEE", !97, i64 0}
!99 = !{!"double", !62, i64 0}
!100 = !{!"_ZTSN4perf19performance_metricsE", !70, i64 0, !70, i64 8, !63, i64 16, !63, i64 20, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !63, i64 80}
!101 = !{!"p1 _ZTSN4perf8TestBaseE", !66, i64 0}
!102 = !{!"_ZTSN4perf8TestBase14_declareHelperE", !101, i64 0}
!103 = !{!"_ZTSN4perf8TestBaseE", !87, i64 0, !92, i64 16, !92, i64 40, !93, i64 64, !98, i64 72, !70, i64 96, !70, i64 104, !70, i64 112, !63, i64 120, !63, i64 124, !63, i64 128, !63, i64 132, !63, i64 136, !100, i64 144, !80, i64 232, !102, i64 240}
!104 = !{!"_ZTSN7testing18WithParamInterfaceImEE"}
!105 = !{!"_ZTSN4perf17TestBaseWithParamImEE", !103, i64 0, !104, i64 248}
!106 = !{!"_ZTSN11opencv_test40FeaturesFinderVec_ParallelFeaturesFinderE", !105, i64 0}
!107 = !{!"_ZTSN11opencv_test68FeaturesFinderVec_ParallelFeaturesFinder_ParallelFeaturesFinder_TestE", !106, i64 0, !80, i64 256}
!108 = !{!107, !80, i64 256}
!109 = !{!"any p2 pointer", !66, i64 0}
!110 = !{!"p2 _ZTSN7testing8internal29ParameterizedTestCaseInfoBaseE", !109, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!"p1 _ZTSN7testing8internal29ParameterizedTestCaseInfoBaseE", !66, i64 0}
!113 = !{!112, !112, i64 0}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"_ZTSNSt12_Vector_baseIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!116 = !{!115, !110, i64 8}
!117 = !{!115, !110, i64 16}
!118 = !{!115, !110, i64 0}
!119 = !{!"_ZTSN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test40FeaturesFinderVec_ParallelFeaturesFinderEE17InstantiationInfoE", !72, i64 0, !66, i64 32, !66, i64 40, !67, i64 48, !63, i64 56}
!120 = !{!119, !66, i64 32}
!121 = !{!119, !66, i64 40}
!122 = !{!119, !67, i64 48}
!123 = !{!119, !63, i64 56}
!124 = !{!"p1 _ZTSN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test40FeaturesFinderVec_ParallelFeaturesFinderEE17InstantiationInfoE", !66, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test40FeaturesFinderVec_ParallelFeaturesFinderEE17InstantiationInfoESaIS6_EE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!126 = !{!125, !124, i64 8}
!127 = !{!125, !124, i64 16}
!128 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!129 = !{!128, !94, i64 0}
!130 = !{!128, !94, i64 16}
!131 = !{!128, !94, i64 8}
!132 = !{!"p1 _ZTSN7testing8internal23ParamGeneratorInterfaceImEE", !66, i64 0}
!133 = !{!"p1 _ZTSN7testing8internal19linked_ptr_internalE", !66, i64 0}
!134 = !{!"_ZTSN7testing8internal19linked_ptr_internalE", !133, i64 0}
!135 = !{!"_ZTSN7testing8internal10linked_ptrIKNS0_23ParamGeneratorInterfaceImEEEE", !132, i64 0, !134, i64 8}
!136 = !{!135, !132, i64 0}
!137 = !{!134, !133, i64 0}
!138 = !{!"p1 _ZTSN2cv3MatE", !66, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!140 = !{!139, !138, i64 8}
!141 = !{!139, !138, i64 0}
!142 = !{!"p1 _ZTSN2cv6detail13ImageFeaturesE", !66, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseIN2cv6detail13ImageFeaturesESaIS2_EE17_Vector_impl_dataE", !142, i64 0, !142, i64 8, !142, i64 16}
!144 = !{!143, !142, i64 0}
!145 = !{!143, !142, i64 8}
!146 = !{!143, !142, i64 16}
!147 = !{!66, !66, i64 0}
!148 = !{!"_ZTSN2cv5Size_IiEE", !63, i64 0, !63, i64 4}
!149 = !{!148, !63, i64 0}
!150 = !{!148, !63, i64 4}
!151 = !{!"_ZTSN2cv11_InputArrayE", !63, i64 0, !66, i64 8, !148, i64 16}
!152 = !{!151, !63, i64 0}
!153 = !{!151, !66, i64 8}
!154 = !{!103, !80, i64 232}
!155 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !66, i64 0}
!156 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !155, i64 0}
!157 = !{!156, !155, i64 0}
end_hunk_1
