Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/learner?download=true
inline.NumInlined: 7339
inline.NumDeleted: 2449
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.l = getelementptr inbounds [32 x i8], ptr %0, i64 %.08 ; 8 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !106
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 7 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !67
  store i8 0, ptr %i.n, align 8, !tbaa !18
  store ptr %i.j, ptr %4, align 8, !tbaa !106
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c
  %i.u = load i64, ptr %i.n, align 8, !tbaa !18
  store i64 %i.u, ptr %i.h, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !21
  store i64 0, ptr %i.v, align 8, !tbaa !67
  store i8 0, ptr %i.n, align 8, !tbaa !18
  store ptr %i.j, ptr %4, align 8, !tbaa !106
  %i.w = icmp eq ptr %i.m, %i.h
  br i1 %i.w, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.x = phi i64 [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.m, ptr %4, align 8, !tbaa !21
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !18
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9 ]
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !67
  store ptr %i.h, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %i.i, align 8, !tbaa !67
  store i8 0, ptr %i.h, align 8, !tbaa !18
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef %.08, i64 noundef %i.d, ptr noundef nonnull align 8 %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.ac = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.j
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !18
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not = icmp eq i64 %.08, 0
  %i.ag = add nsw i64 %.08, -1
  %i.ah = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !18
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !925

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.j
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.ao = load i64, ptr %i.j, align 8, !tbaa !18
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.aq = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.h
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.as = load i64, ptr %i.h, align 8, !tbaa !18
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.al

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #21 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !106
  %i.b = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !21
  %i.i = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.i, ptr %i.a, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !67
  store ptr %i.c, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.k, align 8, !tbaa !67
  store i8 0, ptr %i.c, align 8, !tbaa !18
  %i.m = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %.not21.i = icmp eq ptr %0, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  switch i64 %i.q, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.m, align 1, !tbaa !18
  store i8 %i.s, ptr %i.c, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.t = load i64, ptr %i.p, align 8, !tbaa !67   ; 2 uses
  store i64 %i.t, ptr %i.k, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  store ptr %i.m, ptr %2, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67
  store i64 %i.w, ptr %i.k, align 8, !tbaa !67
  %i.x = load i64, ptr %i.n, align 8, !tbaa !18
  store i64 %i.x, ptr %i.c, align 8, !tbaa !18
  store ptr %i.n, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g
  %i.y = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.m, %bb.c ], [ %i.n, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !67
  store i8 0, ptr %i.y, align 1, !tbaa !18
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = ptrtoint ptr %0 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !106
  %i.af = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !67  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  store ptr %i.af, ptr %5, align 8, !tbaa !21
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !18
  %.pre17 = load i64, ptr %i.l, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.al = phi i64 [ %i.ah, %bb.h ], [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2 ]
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !67
  store ptr %i.a, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %i.l, align 8, !tbaa !67
  store i8 0, ptr %i.a, align 8, !tbaa !18
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ad, ptr noundef nonnull align 8 %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3
  %i.an = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.a, align 8, !tbaa !18
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ae
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.j
  %i.ay = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.ba = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !18
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.047 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.047, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.p = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i) #17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph
  %i.q = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.r = icmp slt i32 %.0.i.i.i, 0
  %spec.select = select i1 %i.r, i64 %i.g, i64 %i.e ; 5 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %.047 ; 8 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !21   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y                   ; 2 uses
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  br i1 %i.z, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  br i1 %i.z, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %.not21.i = icmp eq i64 %spec.select, %.047
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  switch i64 %i.ab, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !18
  store i8 %i.ad, ptr %i.u, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.x, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common15FixedSizeStreamD2Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7xgboost6common16PeekableInStreamE, i64 16), ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN7xgboost6common16PeekableInStreamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #39
  br label %_ZN7xgboost6common16PeekableInStreamD2Ev.exit

_ZN7xgboost6common16PeekableInStreamD2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare i32 @_ZNK7xgboost16HostDeviceVectorIfE6DeviceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIbbEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.19") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.45, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !104, !range !247, !noundef !248
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %i.c)
          to label %_ZNSolsEb.exit unwind label %bb.f ; 2 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.46, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEb.exit
  %i.f = load i8, ptr %2, align 1, !tbaa !104, !range !247, !noundef !248
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i1 noundef zeroext %i.g)
          to label %_ZNSolsEb.exit6 unwind label %bb.f

_ZNSolsEb.exit6:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZNSolsEb.exit6
  %i.j = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #42
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !106, !alias.scope !1069
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !67, !alias.scope !1069
  store i8 0, ptr %i.k, align 8, !tbaa !18, !alias.scope !1069
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !189, !noalias !1069 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1069 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190, !noalias !1069 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !21, !alias.scope !1069 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !18, !alias.scope !1069
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #39
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.j, ptr %0, align 8, !tbaa !87
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !8
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !18
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #39
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #17
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.aq) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.f:                                             ; preds = %_ZNSolsEb.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEb.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 32) #39
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %.body ], [ %i.ar, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost23LearnerModelParamLegacy11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS0_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.xgboost::common::ParamArray", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.34, i64 10, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.h, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.i, align 2, !tbaa !18
  %i.j = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #42
          to label %.noexc53 unwind label %bb.d   ; 15 uses

.noexc53:                                         ; preds = %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.j, i8 0, i64 160, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %i.n, ptr %i.m, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store ptr %i.p, ptr %i.o, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store ptr %i.r, ptr %i.q, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIN7xgboost6common10ParamArrayIfEEEE, i64 16), ptr %i.j, align 8, !tbaa !8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc54 unwind label %bb.d

.noexc54:                                         ; preds = %.noexc53
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !67
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !106, !alias.scope !1070
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.w, align 8, !tbaa !18, !alias.scope !1070
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !21
  store i8 0, ptr %i.y, align 1, !tbaa !18
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.x, align 8, !tbaa !67
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !18
  %i.z = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !18
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i64 0, ptr %i.ad, align 8, !tbaa !1075
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.j)
          to label %_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREINS1_6common10ParamArrayIfEEEERNS_9parameter10FieldEntryIT_EEPNS8_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_.exit unwind label %bb.d

_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREINS1_6common10ParamArrayIfEEEERNS_9parameter10FieldEntryIT_EEPNS8_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i64 25, ptr %i.f, align 8, !tbaa !43
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc58 unwind label %bb.e   ; 2 uses

.noexc58:                                         ; preds = %_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREINS1_6common10ParamArrayIfEEEERNS_9parameter10FieldEntryIT_EEPNS8_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_.exit
  store ptr %i.af, ptr %4, align 8, !tbaa !21
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !43  ; 3 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.af, ptr noundef nonnull align 1 dereferenceable(25) @.str.172, i64 25, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !67
  %i.ai = load ptr, ptr %4, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !106, !alias.scope !1077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ak, ptr noundef nonnull align 1 dereferenceable(10) @.str.34, i64 10, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.al, align 8, !tbaa !67, !alias.scope !1077
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.am, align 2, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %.noexc62 unwind label %bb.g

.noexc62:                                         ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ao = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.a unwind label %bb.g       ; 0 uses

bb.a:                                             ; preds = %.noexc62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 1, ptr %i.ap, align 8, !tbaa !1080
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !122
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #39
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.aw = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ak
  br i1 %i.ax, label %_ZN7xgboost6common10ParamArrayIfED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.ay = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #39
  br label %_ZN7xgboost6common10ParamArrayIfED2Ev.exit

_ZN7xgboost6common10ParamArrayIfED2Ev.exit:       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ba = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ae
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7xgboost6common10ParamArrayIfED2Ev.exit
  %i.bc = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7xgboost6common10ParamArrayIfED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.be = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.g
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.g, align 8, !tbaa !18
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bi, ptr %6, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bi, ptr noundef nonnull align 1 dereferenceable(11) @.str.62, i64 11, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.bj, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 27
  store i8 0, ptr %i.bk, align 1, !tbaa !18
  %i.bl = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #42
          to label %.noexc71 unwind label %bb.j   ; 13 uses

.noexc71:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.bl, i8 0, i64 144, i1 false)
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !106
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 88 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 133
  store i8 0, ptr %i.bt, align 1, !tbaa !1081
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIjEE, i64 16), ptr %i.bl, align 8, !tbaa !8
  invoke void @_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRj(ptr noundef nonnull align 8 dereferenceable(132) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.bm)
          to label %.noexc72 unwind label %bb.j

.noexc72:                                         ; preds = %.noexc71
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.bl)
          to label %_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS5_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_.exit unwind label %bb.j

_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS5_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_.exit: ; preds = %.noexc72
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  store i32 0, ptr %i.bu, align 8, !tbaa !1084
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i8 1, ptr %i.bv, align 8, !tbaa !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bw, ptr %7, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i64 94, ptr %i.e, align 8, !tbaa !43
  %i.bx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc76 unwind label %bb.k   ; 3 uses

.noexc76:                                         ; preds = %_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS5_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_.exit
  store ptr %i.bx, ptr %7, align 8, !tbaa !21
  %i.by = load i64, ptr %i.e, align 8, !tbaa !43  ; 3 uses
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(94) %i.bx, ptr noundef nonnull align 1 dereferenceable(94) @.str.173, i64 94, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !67
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.l

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc76
  %i.cb = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bw
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cd = load i64, ptr %i.bw, align 8, !tbaa !18
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.cf = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bi
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.ch = load i64, ptr %i.bi, align 8, !tbaa !18
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cj, ptr %8, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cj, ptr noundef nonnull align 1 dereferenceable(9) @.str.63, i64 9, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 9, ptr %i.ck, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 25
  store i8 0, ptr %i.cl, align 1, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cn = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREIiEERNS_9parameter10FieldEntryIT_EEPNS5_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.cm)
          to label %bb.c unwind label %bb.n       ; 4 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 128
  store i32 0, ptr %i.co, align 8, !tbaa !1085
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 1, ptr %i.cp, align 8, !tbaa !1080
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.cs(ptr noundef nonnull align 8 dereferenceable(144) %i.cn, i32 noundef 0)
          to label %.noexc.i90 unwind label %bb.o

.noexc.i90:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cu, ptr %9, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 109, ptr %i.d, align 8, !tbaa !43
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc91 unwind label %bb.p   ; 3 uses

.noexc91:                                         ; preds = %.noexc.i90
  store ptr %i.cv, ptr %9, align 8, !tbaa !21
  %i.cw = load i64, ptr %i.d, align 8, !tbaa !43  ; 3 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(109) %i.cv, ptr noundef nonnull align 1 dereferenceable(109) @.str.174, i64 109, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.q

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc91
  %i.da = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cu
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dc = load i64, ptr %i.cu, align 8, !tbaa !18
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.de = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cj
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.dg = load i64, ptr %i.cj, align 8, !tbaa !18
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.di, ptr %10, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.di, ptr noundef nonnull align 1 dereferenceable(10) @.str.64, i64 10, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 10, ptr %i.dj, align 8, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 26
  store i8 0, ptr %i.dk, align 2, !tbaa !18
  %i.dl = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #42
          to label %.noexc104 unwind label %bb.s  ; 15 uses

.noexc104:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.dl, i8 0, i64 144, i1 false)
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !106
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !106
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 104
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !106
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 133
  store i8 0, ptr %i.dt, align 1, !tbaa !1081
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIjEE, i64 16), ptr %i.dl, align 8, !tbaa !8
  invoke void @_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRj(ptr noundef nonnull align 8 dereferenceable(132) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.dm)
          to label %.noexc105 unwind label %bb.s

.noexc105:                                        ; preds = %.noexc104
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.dl)
          to label %_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS5_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_.exit107 unwind label %bb.s

_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS5_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_.exit107: ; preds = %.noexc105
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 128
  store i32 1, ptr %i.du, align 8, !tbaa !1084
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i8 1, ptr %i.dv, align 8, !tbaa !1080
  %i.dw = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.dy(ptr noundef nonnull align 8 dereferenceable(144) %i.dl, i32 noundef 1)
          to label %.noexc.i109 unwind label %bb.t

.noexc.i109:                                      ; preds = %_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS5_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_.exit107
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ea, ptr %11, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 68, ptr %i.c, align 8, !tbaa !43
  %i.eb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc110 unwind label %bb.u  ; 3 uses

.noexc110:                                        ; preds = %.noexc.i109
  store ptr %i.eb, ptr %11, align 8, !tbaa !21
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !43  ; 3 uses
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.eb, ptr noundef nonnull align 1 dereferenceable(68) @.str.175, i64 68, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !67
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec
  store i8 0, ptr %i.ee, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit113 unwind label %bb.v

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit113: ; preds = %.noexc110
  %i.eg = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ea
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit113
  %i.ei = load i64, ptr %i.ea, align 8, !tbaa !18
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.ek = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.di
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.em = load i64, ptr %i.di, align 8, !tbaa !18
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.eo, ptr %12, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 18, ptr %i.b, align 8, !tbaa !43
  %i.ep = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc122 unwind label %bb.x  ; 2 uses

.noexc122:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  store ptr %i.ep, ptr %12, align 8, !tbaa !21
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.ep, ptr noundef nonnull align 1 dereferenceable(18) @.str.65, i64 18, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !67
  %i.es = load ptr, ptr %12, align 8, !tbaa !21
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eq
  store i8 0, ptr %i.et, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ev = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREIiEERNS_9parameter10FieldEntryIT_EEPNS5_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.eu)
          to label %.noexc.i125 unwind label %bb.y ; 3 uses

.noexc.i125:                                      ; preds = %.noexc122
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 128
  store i32 1, ptr %i.ew, align 8, !tbaa !1085
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i8 1, ptr %i.ex, align 8, !tbaa !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.ey, ptr %13, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 62, ptr %i.a, align 8, !tbaa !43
  %i.ez = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc126 unwind label %bb.z  ; 3 uses

.noexc126:                                        ; preds = %.noexc.i125
  store ptr %i.ez, ptr %13, align 8, !tbaa !21
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.ez, ptr noundef nonnull align 1 dereferenceable(62) @.str.176, i64 62, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !67
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fa
  store i8 0, ptr %i.fc, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit129 unwind label %bb.aa

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit129: ; preds = %.noexc126
  %i.fe = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ey
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit129
  %i.fg = load i64, ptr %i.ey, align 8, !tbaa !18
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.fi = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.eo
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.fk = load i64, ptr %i.eo, align 8, !tbaa !18
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  ret void

bb.d:                                             ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRS6_.exit.i, %.noexc53, %._crit_edge.i.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREINS1_6common10ParamArrayIfEEEERNS_9parameter10FieldEntryIT_EEPNS8_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSA_.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.f:                                             ; preds = %.noexc58
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %.noexc62, %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_E8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost6common10ParamArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.g ], [ %i.fo, %bb.f ] ; 2 uses
  %i.fq = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.ae
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.h
  %i.fs = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fn, %bb.e ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.pn.pn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %i.fm, %bb.d ]
  %i.fu = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.g
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.i
  %i.fw = load i64, ptr %i.g, align 8, !tbaa !18
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ac

bb.j:                                             ; preds = %.noexc72, %.noexc71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %_ZN4dmlc9ParameterIN7xgboost23LearnerModelParamLegacyEE7DECLAREIjEERNS_9parameter10FieldEntryIT_EEPNS5_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.l:                                             ; preds = %.noexc76
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.bw
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1188

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #39
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #39
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1189

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK4dmlc9parameter10FieldEntryIiE10PrintEnumsERSo(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 123, ptr %i.c, align 1, !tbaa !18
  %i.d = load ptr, ptr %1, align 8, !tbaa !8
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !370
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 123) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not17 = icmp eq ptr %i.m, %i.n
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 125, ptr %i.b, align 1, !tbaa !18
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !370
  %.not.i5 = icmp eq i64 %i.t, 0
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

bb.e:                                             ; preds = %._crit_edge
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 125) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10
  %.sroa.012.018 = phi ptr [ %i.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10 ], [ %i.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ] ; 4 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !113
  %.not16 = icmp eq ptr %.sroa.012.018, %i.w
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.196, i64 noundef 2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.197, i64 noundef 1) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.018, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aa, i64 noundef %i.ac) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 39, ptr %i.a, align 1, !tbaa !18
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !370
  %.not.i8 = icmp eq i64 %i.aj, 0
  br i1 %.not.i8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

bb.i:                                             ; preds = %bb.g
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i8 noundef signext 39) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit10: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.012.018) #43 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1190
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost17LearnerTrainParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS0_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  store i64 27, ptr %i.h, align 8, !tbaa !43
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc unwind label %bb.a     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %5, align 8, !tbaa !21
  %i.k = load i64, ptr %i.h, align 8, !tbaa !43   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.j, ptr noundef nonnull align 1 dereferenceable(27) @.str.202, i64 27, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !67
  %i.m = load ptr, ptr %5, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  %i.o = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #42
          to label %.noexc56 unwind label %bb.b   ; 13 uses

.noexc56:                                         ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.o, i8 0, i64 136, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !106
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.s, ptr %i.r, align 8, !tbaa !106
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store ptr %i.v, ptr %i.u, align 8, !tbaa !106
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIbEE, i64 16), ptr %i.o, align 8, !tbaa !8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc57 unwind label %bb.b

.noexc57:                                         ; preds = %.noexc56
  %i.w = load i64, ptr %i.t, align 8, !tbaa !67
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !106, !alias.scope !1191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.y, ptr noundef nonnull align 1 dereferenceable(7) @.str.214, i64 7, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 7, ptr %i.z, align 8, !tbaa !67, !alias.scope !1191
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.aa, align 1, !tbaa !18, !alias.scope !1191
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ab, ptr noundef nonnull align 1 dereferenceable(7) @.str.214, i64 7, i1 false)
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !67
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %i.z, align 8, !tbaa !67
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !18
  %i.af = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.y
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !18
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i64 1, ptr %i.aj, align 8, !tbaa !1075
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.o)
          to label %.noexc.i60 unwind label %bb.b

.noexc.i60:                                       ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i8 0, ptr %i.ak, align 8, !tbaa !1196
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i8 1, ptr %i.al, align 8, !tbaa !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i64 52, ptr %i.g, align 8, !tbaa !43
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc61 unwind label %bb.c   ; 3 uses

.noexc61:                                         ; preds = %.noexc.i60
  store ptr %i.an, ptr %6, align 8, !tbaa !21
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !43  ; 3 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.an, ptr noundef nonnull align 1 dereferenceable(52) @.str.203, i64 52, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc61
  %i.ar = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.am
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.at = load i64, ptr %i.am, align 8, !tbaa !18
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.av = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.i
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !18
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.az, ptr %7, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.az, ptr noundef nonnull align 1 dereferenceable(7) @.str.55, i64 7, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.ba, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.bb, align 1, !tbaa !18
  %i.bc = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #42
          to label %.noexc76 unwind label %bb.f   ; 14 uses

.noexc76:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bc, i8 0, i64 160, i1 false)
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !106
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !106
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 88 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 128 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !106
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.bc, align 8, !tbaa !8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc77 unwind label %bb.f

.noexc77:                                         ; preds = %.noexc76
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !67
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i71, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i71: ; preds = %.noexc77
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.bo, ptr %3, align 8, !tbaa !106, !alias.scope !1198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bo, ptr noundef nonnull align 1 dereferenceable(6) @.str.215, i64 6, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 6, ptr %i.bp, align 8, !tbaa !67, !alias.scope !1198
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.bq, align 2, !tbaa !18, !alias.scope !1198
  %i.br = load ptr, ptr %i.bf, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.br, ptr noundef nonnull align 1 dereferenceable(6) @.str.215, i64 6, i1 false)
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !67 ; 2 uses
  store i64 %i.bs, ptr %i.bh, align 8, !tbaa !67
  %i.bt = load ptr, ptr %i.bf, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !18
  %.pre.i.i.i72 = load ptr, ptr %3, align 8, !tbaa !21
  store i64 0, ptr %i.bp, align 8, !tbaa !67
  store i8 0, ptr %.pre.i.i.i72, align 1, !tbaa !18
  %i.bv = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bo
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i71
  %i.bx = load i64, ptr %i.bo, align 8, !tbaa !18
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74, %.noexc77
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  store i64 8, ptr %i.bz, align 8, !tbaa !1075
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.bc)
          to label %_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit unwind label %bb.f

_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ca, ptr %8, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ca, ptr noundef nonnull align 1 dereferenceable(6) @.str.75, i64 6, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 6, ptr %i.cb, align 8, !tbaa !67
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i8 0, ptr %i.cc, align 2, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i85 unwind label %bb.g

.noexc.i85:                                       ; preds = %_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i8 1, ptr %i.cd, align 8, !tbaa !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ce, ptr %9, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i64 35, ptr %i.f, align 8, !tbaa !43
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc86 unwind label %bb.h   ; 3 uses

.noexc86:                                         ; preds = %.noexc.i85
  store ptr %i.cf, ptr %9, align 8, !tbaa !21
  %i.cg = load i64, ptr %i.f, align 8, !tbaa !43  ; 3 uses
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.cf, ptr noundef nonnull align 1 dereferenceable(35) @.str.204, i64 35, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  store i8 0, ptr %i.ci, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit unwind label %bb.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit: ; preds = %.noexc86
  %i.cj = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ce
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit
  %i.cl = load i64, ptr %i.ce, align 8, !tbaa !18
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cn = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ca
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.cp = load i64, ptr %i.ca, align 8, !tbaa !18
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.cr = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.az
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.ct = load i64, ptr %i.az, align 8, !tbaa !18
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.cv, ptr %10, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cv, ptr noundef nonnull align 1 dereferenceable(9) @.str.52, i64 9, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 9, ptr %i.cw, align 8, !tbaa !67
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 25
  store i8 0, ptr %i.cx, align 1, !tbaa !18
  %i.cy = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #42
          to label %.noexc108 unwind label %bb.l  ; 14 uses

.noexc108:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.cy, i8 0, i64 160, i1 false)
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !106
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 56 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !106
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 88 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  store ptr %i.df, ptr %i.de, align 8, !tbaa !106
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 128 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !106
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.cy, align 8, !tbaa !8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc109 unwind label %bb.l

.noexc109:                                        ; preds = %.noexc108
  %i.di = load i64, ptr %i.dd, align 8, !tbaa !67
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i103, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i103: ; preds = %.noexc109
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.dk, ptr %2, align 8, !tbaa !106, !alias.scope !1203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dk, ptr noundef nonnull align 1 dereferenceable(6) @.str.215, i64 6, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 6, ptr %i.dl, align 8, !tbaa !67, !alias.scope !1203
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.dm, align 2, !tbaa !18, !alias.scope !1203
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dn, ptr noundef nonnull align 1 dereferenceable(6) @.str.215, i64 6, i1 false)
  %i.do = load i64, ptr %i.dl, align 8, !tbaa !67 ; 2 uses
  store i64 %i.do, ptr %i.dd, align 8, !tbaa !67
  %i.dp = load ptr, ptr %i.db, align 8, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !18
  %.pre.i.i.i104 = load ptr, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.dl, align 8, !tbaa !67
  store i8 0, ptr %.pre.i.i.i104, align 1, !tbaa !18
  %i.dr = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dk
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i103
  %i.dt = load i64, ptr %i.dk, align 8, !tbaa !18
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i102

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i106, %.noexc109
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 120
  store i64 40, ptr %i.dv, align 8, !tbaa !1075
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.cy)
          to label %_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit111 unwind label %bb.l

_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit111: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E4InitERKS8_PvRS8_.exit.i102
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.dw, ptr %11, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i64 16, ptr %i.e, align 8, !tbaa !43
  %i.dx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc114 unwind label %bb.m  ; 2 uses

.noexc114:                                        ; preds = %_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE7DECLAREINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS_9parameter10FieldEntryIT_EEPNSB_21ParamManagerSingletonIS2_EERKSA_RSD_.exit111
  store ptr %i.dx, ptr %11, align 8, !tbaa !21
  %i.dy = load i64, ptr %i.e, align 8, !tbaa !43  ; 3 uses
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dx, ptr noundef nonnull align 1 dereferenceable(16) @.str.205, i64 16, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !67
  %i.ea = load ptr, ptr %11, align 8, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dy
  store i8 0, ptr %i.eb, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.noexc.i119 unwind label %bb.n

.noexc.i119:                                      ; preds = %.noexc114
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 1, ptr %i.ec, align 8, !tbaa !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ed, ptr %12, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 47, ptr %i.d, align 8, !tbaa !43
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc120 unwind label %bb.o  ; 3 uses

.noexc120:                                        ; preds = %.noexc.i119
  store ptr %i.ee, ptr %12, align 8, !tbaa !21
  %i.ef = load i64, ptr %i.d, align 8, !tbaa !43  ; 3 uses
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.ee, ptr noundef nonnull align 1 dereferenceable(47) @.str.206, i64 47, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !67
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  store i8 0, ptr %i.eh, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit123 unwind label %bb.p

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit123: ; preds = %.noexc120
  %i.ei = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ed
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit123
  %i.ek = load i64, ptr %i.ed, align 8, !tbaa !18
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_E8describeERKS8_.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.em = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dw
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.eo = load i64, ptr %i.dw, align 8, !tbaa !18
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.eq = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.cv
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.es = load i64, ptr %i.cv, align 8, !tbaa !18
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.eu, ptr %13, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.eu, ptr noundef nonnull align 1 dereferenceable(14) @.str.207, i64 14, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 14, ptr %i.ev, align 8, !tbaa !67
  %i.ew = getelementptr inbounds nuw i8, ptr %13, i64 30
  store i8 0, ptr %i.ew, align 2, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ey = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE7DECLAREINS1_13MultiStrategyEEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.ex)
          to label %.noexc.i138 unwind label %bb.s ; 5 uses

.noexc.i138:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ez, ptr %14, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 19, ptr %i.c, align 8, !tbaa !43
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc139 unwind label %bb.t  ; 2 uses

.noexc139:                                        ; preds = %.noexc.i138
  store ptr %i.fa, ptr %14, align 8, !tbaa !21
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !43  ; 3 uses
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.fa, ptr noundef nonnull align 1 dereferenceable(19) @.str.208, i64 19, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !67
  %i.fd = load ptr, ptr %14, align 8, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fb
  store i8 0, ptr %i.fe, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.ff = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9parameter10FieldEntryIiE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(248) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 0)
          to label %_ZN4dmlc9parameter10FieldEntryIN7xgboost13MultiStrategyEE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_.exit unwind label %bb.u ; 0 uses

_ZN4dmlc9parameter10FieldEntryIN7xgboost13MultiStrategyEE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_.exit: ; preds = %.noexc139
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.fg, ptr %15, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 17, ptr %i.b, align 8, !tbaa !43
  %i.fh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc144 unwind label %bb.v  ; 2 uses

.noexc144:                                        ; preds = %_ZN4dmlc9parameter10FieldEntryIN7xgboost13MultiStrategyEE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_.exit
  store ptr %i.fh, ptr %15, align 8, !tbaa !21
  %i.fi = load i64, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.fh, ptr noundef nonnull align 1 dereferenceable(17) @.str.209, i64 17, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !67
  %i.fk = load ptr, ptr %15, align 8, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fi
  store i8 0, ptr %i.fl, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.fm = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN4dmlc9parameter10FieldEntryIiE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(248) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 1)
          to label %_ZN4dmlc9parameter10FieldEntryIN7xgboost13MultiStrategyEE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_.exit147 unwind label %bb.w ; 0 uses

_ZN4dmlc9parameter10FieldEntryIN7xgboost13MultiStrategyEE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_.exit147: ; preds = %.noexc144
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  store i32 0, ptr %i.fn, align 8, !tbaa !1085
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i8 1, ptr %i.fo, align 8, !tbaa !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.fp, ptr %16, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 115, ptr %i.a, align 8, !tbaa !43
  %i.fq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc150 unwind label %bb.x  ; 3 uses

.noexc150:                                        ; preds = %_ZN4dmlc9parameter10FieldEntryIN7xgboost13MultiStrategyEE8add_enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_.exit147
  store ptr %i.fq, ptr %16, align 8, !tbaa !21
  %i.fr = load i64, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(115) %i.fq, ptr noundef nonnull align 1 dereferenceable(115) @.str.210, i64 115, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !67
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  store i8 0, ptr %i.ft, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.y

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc150
  %i.fv = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fp
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

end_hunk_2
