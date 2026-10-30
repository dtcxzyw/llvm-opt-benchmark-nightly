Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/gtest-all?download=true
inline.NumInlined: 8800
inline.NumDeleted: 2313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev:bb.a
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55 ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !78
  store i64 %i.c, ptr %i.a, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !81
  store i8 %i.j, ptr %i.i, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.b, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !81
  %i.m = load ptr, ptr %1, align 8, !tbaa !78     ; 7 uses
  %i.n = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.m, i32 noundef 58) #62 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !75
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #58 ; 8 uses
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.g, label %._crit_edge.i.i29

bb.g:                                             ; preds = %bb.f
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %.noexc.i37.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %.noexc9.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i30, !prof !80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i30: ; preds = %bb.h
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #55
          to label %.noexc34 unwind label %.critedge27 ; 2 uses

.noexc34:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i30
  store ptr %i.u, ptr %0, align 8, !tbaa !78
  store i64 %i.p, ptr %i.o, align 8, !tbaa !81
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.noexc34, %bb.f
  %i.v = phi ptr [ %i.u, %.noexc34 ], [ %i.o, %bb.f ] ; 3 uses
  switch i64 %i.p, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %.critedge28
  ]

bb.i:                                             ; preds = %._crit_edge.i.i29
  %i.w = load i8, ptr %i.m, align 1, !tbaa !81
  store i8 %i.w, ptr %i.v, align 1, !tbaa !81
  br label %.critedge28

bb.j:                                             ; preds = %._crit_edge.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.m, i64 %i.p, i1 false)
  br label %.critedge28

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y                       ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !75
  %i.ab = icmp ugt i64 %i.z, 15
  br i1 %i.ab, label %bb.l, label %._crit_edge.i.i35

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp slt i64 %i.z, 0
  br i1 %i.ac, label %.noexc.i37.invoke, label %bb.m

.noexc.i37.invoke:                                ; preds = %bb.l, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc.i37.cont unwind label %.critedge27

.noexc.i37.cont:                                  ; preds = %.noexc.i37.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ad = add nuw i64 %i.z, 1                     ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %.noexc9.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36, !prof !80

.noexc9.i.invoke:                                 ; preds = %bb.m, %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc9.i.cont unwind label %.critedge27

.noexc9.i.cont:                                   ; preds = %.noexc9.i.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36: ; preds = %bb.m
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #55
          to label %.noexc41 unwind label %.critedge27 ; 2 uses

.noexc41:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36
  store ptr %i.af, ptr %0, align 8, !tbaa !78
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !81
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.noexc41, %bb.k
  %i.ag = phi ptr [ %i.af, %.noexc41 ], [ %i.aa, %bb.k ] ; 3 uses
  switch i64 %i.z, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %.critedge
  ]

bb.n:                                             ; preds = %._crit_edge.i.i35
  %i.ah = load i8, ptr %i.m, align 1, !tbaa !81
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !81
  br label %.critedge

bb.o:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.m, i64 %i.z, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i35, %bb.n, %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.ai, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.z
  store i8 0, ptr %i.aj, align 1, !tbaa !81
  br label %.critedge25

.critedge28:                                      ; preds = %bb.j, %bb.i, %._crit_edge.i.i29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.ak, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.al, align 1, !tbaa !81
  br label %.critedge25

.critedge25:                                      ; preds = %.critedge, %.critedge28
  %i.am = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge25
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !81
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  ret void

.critedge27:                                      ; preds = %.noexc.i37.invoke, %.noexc9.i.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i30
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %.critedge27
  %i.at = load i64, ptr %i.a, align 8, !tbaa !81
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %.critedge27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  resume { ptr, i32 } %i.aq
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal15UnitTestOptions27GetAbsolutePathToOutputFileB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %5 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.testing::internal::FilePath", align 8 ; 33 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.testing::internal::FilePath", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %12 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.testing::internal::FilePath", align 8 ; 10 uses
  %17 = alloca %"class.testing::internal::FilePath", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !75
  %i.b = load ptr, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, align 8, !tbaa !78 ; 2 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing18FLAGS_gtest_outputB5cxx11E, i64 8), align 8, !tbaa !79 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !80

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55 ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !78
  store i64 %i.c, ptr %i.a, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !81
  store i8 %i.j, ptr %i.i, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.b, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !81
  %i.m = load ptr, ptr %1, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  invoke void @_ZN7testing8internal15UnitTestOptions15GetOutputFormatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !79
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %._crit_edge.i.i56, label %bb.h

._crit_edge.i.i56:                                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 3, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.s, align 1, !tbaa !81
  %i.t = load ptr, ptr %2, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @_ZN7testingL20kDefaultOutputFormatE, i64 3, i1 false)
  %i.u = load i64, ptr %i.r, align 8, !tbaa !79   ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !tbaa !79
  %i.v = load ptr, ptr %2, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !81
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !78
  store i64 0, ptr %i.r, align 8, !tbaa !79
  store i8 0, ptr %.pre.i, align 1, !tbaa !81
  %i.x = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i56
  %i.z = load i64, ptr %i.q, align 8, !tbaa !81
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %i.ac = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.m, i32 noundef 58) #62 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.au

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.ae = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.n, !prof !89

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  %.not.i61 = icmp eq i32 %i.ag, 0
  br i1 %.not.i61, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.l unwind label %bb.m, !inline_history !273

bb.l:                                             ; preds = %bb.k
  %i.ah = call i32 @__cxa_atexit(ptr @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !273 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !273
  br label %.body

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.l
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !75
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.403) #56
          to label %.noexc66 unwind label %bb.aq

.noexc66:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #58 ; 8 uses
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %bb.q, label %._crit_edge.i.i62

bb.q:                                             ; preds = %bb.p
  %i.aq = icmp slt i64 %i.ao, 0
  br i1 %i.aq, label %.noexc.i65, label %bb.r

.noexc.i65:                                       ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc67 unwind label %bb.aq

.noexc67:                                         ; preds = %.noexc.i65
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ar = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %.noexc11.i64, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i63, !prof !80

.noexc11.i64:                                     ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc68 unwind label %bb.aq

.noexc68:                                         ; preds = %.noexc11.i64
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i63: ; preds = %bb.r
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #55
          to label %.noexc69 unwind label %bb.aq  ; 2 uses

.noexc69:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i63
  store ptr %i.at, ptr %6, align 8, !tbaa !78
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !81
  br label %._crit_edge.i.i62

._crit_edge.i.i62:                                ; preds = %.noexc69, %bb.p
  %i.au = phi ptr [ %i.at, %.noexc69 ], [ %i.am, %bb.p ] ; 3 uses
  switch i64 %i.ao, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i62
  %i.av = load i8, ptr %i.al, align 1, !tbaa !81
  store i8 %i.av, ptr %i.au, align 1, !tbaa !81
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i62
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.al, i64 %i.ao, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i62
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.aw, align 8, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  store i8 0, ptr %i.ax, align 1, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !75
  %i.az = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !79 ; 8 uses
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %bb.v, label %._crit_edge.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bc = icmp slt i64 %i.ba, 0
  br i1 %i.bc, label %.noexc.i.i, label %bb.w

.noexc.i.i:                                       ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
          to label %.noexc71 unwind label %bb.ar

.noexc71:                                         ; preds = %.noexc.i.i
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bd = add nuw i64 %i.ba, 1                    ; 2 uses
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !80

.noexc6.i.i:                                      ; preds = %bb.w
  invoke void @_ZSt17__throw_bad_allocv() #56
          to label %.noexc72 unwind label %bb.ar

.noexc72:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.w
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #55
          to label %.noexc73 unwind label %bb.ar  ; 2 uses

.noexc73:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.bf, ptr %5, align 8, !tbaa !78
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc73, %bb.u
  %i.bg = phi ptr [ %i.bf, %.noexc73 ], [ %i.ay, %bb.u ] ; 3 uses
  switch i64 %i.ba, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !81
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.y:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.az, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.ba, ptr %i.bi, align 8, !tbaa !79
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !81
  %i.bk = load ptr, ptr %5, align 8, !tbaa !78    ; 10 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !79 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = icmp samesign eq i64 %i.bl, 0
  br i1 %i.bn, label %.lr.ph.i.i84.1, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %xtraiter462 = and i64 %i.bl, 1
  %lcmp.mod463.not = icmp eq i64 %xtraiter462, 0
  br i1 %lcmp.mod463.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !81
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !81
  %.pre326.prol = load ptr, ptr %5, align 8       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.pre.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.pre326.prol, %.lr.ph.i.i.prol ]
  %.sroa.015.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.prol ]
  %.unr464 = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %.pre326.prol, %.lr.ph.i.i.prol ]
  %.sroa.015.021.i.i.unr = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.prol ]
  %.sroa.012.020.i.i.unr = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %i.br = icmp eq i64 %i.bl, 1
  br i1 %i.br, label %.lr.ph.i.i84.1, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.ab
  %i.bs = phi ptr [ %.pre.i.i.1, %bb.ab ], [ %.unr464, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.015.021.i.i = phi ptr [ %.sroa.015.1.i.i.1, %bb.ab ], [ %.sroa.015.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.012.020.i.i = phi ptr [ %i.cg, %bb.ab ], [ %.sroa.012.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.bt = load i8, ptr %.sroa.012.020.i.i, align 1, !tbaa !81 ; 2 uses
  %i.bu = icmp ne i8 %i.bt, 47
  %i.bv = icmp eq ptr %.sroa.015.021.i.i, %i.bs
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond, label %.sink.split.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr inbounds i8, ptr %.sroa.015.021.i.i, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !81
  %.not.i.i = icmp eq i8 %i.bx, 47
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.z, %.lr.ph.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i, i64 1
  store i8 %i.bt, ptr %.sroa.015.021.i.i, align 1, !tbaa !81
  %.pre326 = load ptr, ptr %5, align 8
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.sink.split.i.i, %bb.z
  %.pre.i.i = phi ptr [ %i.bs, %bb.z ], [ %.pre326, %.sink.split.i.i ] ; 2 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.015.021.i.i, %bb.z ], [ %i.by, %.sink.split.i.i ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !81  ; 2 uses
  %i.cb = icmp ne i8 %i.ca, 47
  %i.cc = icmp eq ptr %.sroa.015.1.i.i, %.pre.i.i
  %or.cond.1 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond.1, label %.sink.split.i.i.1, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.1
  %i.cd = getelementptr inbounds i8, ptr %.sroa.015.1.i.i, i64 -1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !81
  %.not.i.i.1 = icmp eq i8 %i.ce, 47
  br i1 %.not.i.i.1, label %bb.ab, label %.sink.split.i.i.1

.sink.split.i.i.1:                                ; preds = %bb.aa, %.lr.ph.i.i.1
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 1
  store i8 %i.ca, ptr %.sroa.015.1.i.i, align 1, !tbaa !81
  %.pre326.1 = load ptr, ptr %5, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.1, %bb.aa
  %.pre.i.i.1 = phi ptr [ %.pre.i.i, %bb.aa ], [ %.pre326.1, %.sink.split.i.i.1 ] ; 2 uses
  %.sroa.015.1.i.i.1 = phi ptr [ %.sroa.015.1.i.i, %bb.aa ], [ %i.cf, %.sink.split.i.i.1 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i.i, i64 2 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bm
  br i1 %i.ch, label %.lr.ph.i.i84.1, label %.lr.ph.i.i

.lr.ph.i.i84.1:                                   ; preds = %.lr.ph.i.i.prol.loopexit, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ci = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.pre.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.pre.i.i.1, %bb.ab ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.sroa.015.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.015.1.i.i.1, %bb.ab ]
  %i.cj = ptrtoint ptr %.sroa.015.0.lcssa.i.i to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  store i64 %i.cl, ptr %i.bi, align 8, !tbaa !79
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cl
  store i8 0, ptr %i.cm, align 1, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cn, ptr %8, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cn, ptr noundef nonnull align 1 dereferenceable(11) @_ZN7testingL18kDefaultOutputFileE, i64 11, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.co, align 8, !tbaa !79
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.cp, align 1, !tbaa !81
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cq, ptr %7, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cq, ptr noundef nonnull align 1 dereferenceable(11) @_ZN7testingL18kDefaultOutputFileE, i64 11, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 11, ptr %i.cr, align 8, !tbaa !79
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 27
  store i8 0, ptr %i.cs, align 1, !tbaa !81
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 17
  %19 = load i8, ptr %i.ct, align 1, !tbaa !81
  %.not = icmp eq i8 %19, 47
  %.sroa.012.020.i.i86.ptr.1 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cu = load i8, ptr %.sroa.012.020.i.i86.ptr.1, align 8
  %.not.a = icmp eq i8 %i.cu, 47
  %or.cond455 = select i1 %.not, i1 %.not.a, i1 false ; 3 uses
  %.sroa.015.1.i.i88.1.v.sroa.sel.v = select i1 %or.cond455, i64 17, i64 18
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.015.1.i.i88.1.v.sroa.sel.v ; 2 uses
  %.sroa.012.020.i.i86.ptr.2 = getelementptr inbounds nuw i8, ptr %7, i64 18
  %20 = load i8, ptr %.sroa.012.020.i.i86.ptr.2, align 2, !tbaa !81 ; 2 uses
  %.not451 = icmp eq i8 %20, 47
  br i1 %.not451, label %.lr.ph.i.i84.2, label %.sink.split.i.i87.2

.lr.ph.i.i84.2:                                   ; preds = %.lr.ph.i.i84.1
  %.sroa.015.1.i.i88.1.v.sroa.sel.sroa.sel.v = select i1 %or.cond455, i64 16, i64 17
  %.sroa.012.020.i.i86.ptr.2.a = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.015.1.i.i88.1.v.sroa.sel.sroa.sel.v
  %i.cw = load i8, ptr %.sroa.012.020.i.i86.ptr.2.a, align 1, !tbaa !81
  %.not451.a = icmp eq i8 %i.cw, 47
  br i1 %.not451.a, label %.lr.ph.i.i84.3, label %.sink.split.i.i87.2

.sink.split.i.i87.2:                              ; preds = %.lr.ph.i.i84.2, %.lr.ph.i.i84.1
  %.sroa.015.1.i.i88.1.v.sroa.sel.sroa.sel468.v = select i1 %or.cond455, i64 18, i64 19
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.015.1.i.i88.1.v.sroa.sel.sroa.sel468.v
  store i8 %20, ptr %i.cv, align 1, !tbaa !81
  %.pre328 = load ptr, ptr %7, align 8
  br label %.lr.ph.i.i84.3

.lr.ph.i.i84.3:                                   ; preds = %.sink.split.i.i87.2, %.lr.ph.i.i84.2
  %i.cy = phi ptr [ %i.cq, %.lr.ph.i.i84.2 ], [ %.pre328, %.sink.split.i.i87.2 ] ; 2 uses
  %.sroa.015.1.i.i88.2 = phi ptr [ %i.cv, %.lr.ph.i.i84.2 ], [ %i.cx, %.sink.split.i.i87.2 ] ; 5 uses
  %.sroa.012.020.i.i86.ptr.3 = getelementptr inbounds nuw i8, ptr %7, i64 19
  %i.cz = load i8, ptr %.sroa.012.020.i.i86.ptr.3, align 1, !tbaa !81 ; 2 uses
  %i.da = icmp ne i8 %i.cz, 47
  %i.db = icmp eq ptr %.sroa.015.1.i.i88.2, %i.cy
  %or.cond314.3 = select i1 %i.da, i1 true, i1 %i.db
  br i1 %or.cond314.3, label %.sink.split.i.i87.3, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i84.3
  %i.dc = getelementptr inbounds i8, ptr %.sroa.015.1.i.i88.2, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !81
  %.not.i.i92.3 = icmp eq i8 %i.dd, 47
  br i1 %.not.i.i92.3, label %.lr.ph.i.i84.4, label %.sink.split.i.i87.3

.sink.split.i.i87.3:                              ; preds = %bb.ac, %.lr.ph.i.i84.3
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i88.2, i64 1
  store i8 %i.cz, ptr %.sroa.015.1.i.i88.2, align 1, !tbaa !81
  %.pre329 = load ptr, ptr %7, align 8
  br label %.lr.ph.i.i84.4

.lr.ph.i.i84.4:                                   ; preds = %.sink.split.i.i87.3, %bb.ac
  %i.df = phi ptr [ %i.cy, %bb.ac ], [ %.pre329, %.sink.split.i.i87.3 ] ; 2 uses
  %.sroa.015.1.i.i88.3 = phi ptr [ %.sroa.015.1.i.i88.2, %bb.ac ], [ %i.de, %.sink.split.i.i87.3 ] ; 5 uses
  %.sroa.012.020.i.i86.ptr.4 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.dg = load i8, ptr %.sroa.012.020.i.i86.ptr.4, align 4, !tbaa !81 ; 2 uses
  %i.dh = icmp ne i8 %i.dg, 47
  %i.di = icmp eq ptr %.sroa.015.1.i.i88.3, %i.df
  %or.cond314.4 = select i1 %i.dh, i1 true, i1 %i.di
  br i1 %or.cond314.4, label %.sink.split.i.i87.4, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i84.4
  %i.dj = getelementptr inbounds i8, ptr %.sroa.015.1.i.i88.3, i64 -1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !81
  %.not.i.i92.4 = icmp eq i8 %i.dk, 47
  br i1 %.not.i.i92.4, label %.lr.ph.i.i84.5, label %.sink.split.i.i87.4

.sink.split.i.i87.4:                              ; preds = %bb.ad, %.lr.ph.i.i84.4
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i88.3, i64 1
  store i8 %i.dg, ptr %.sroa.015.1.i.i88.3, align 1, !tbaa !81
  %.pre330 = load ptr, ptr %7, align 8
  br label %.lr.ph.i.i84.5

.lr.ph.i.i84.5:                                   ; preds = %.sink.split.i.i87.4, %bb.ad
  %i.dm = phi ptr [ %i.df, %bb.ad ], [ %.pre330, %.sink.split.i.i87.4 ] ; 2 uses
  %.sroa.015.1.i.i88.4 = phi ptr [ %.sroa.015.1.i.i88.3, %bb.ad ], [ %i.dl, %.sink.split.i.i87.4 ] ; 5 uses
  %.sroa.012.020.i.i86.ptr.5 = getelementptr inbounds nuw i8, ptr %7, i64 21
  %i.dn = load i8, ptr %.sroa.012.020.i.i86.ptr.5, align 1, !tbaa !81 ; 2 uses
  %i.do = icmp ne i8 %i.dn, 47
  %i.dp = icmp eq ptr %.sroa.015.1.i.i88.4, %i.dm
  %or.cond314.5 = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond314.5, label %.sink.split.i.i87.5, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i84.5
  %i.dq = getelementptr inbounds i8, ptr %.sroa.015.1.i.i88.4, i64 -1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !81
  %.not.i.i92.5 = icmp eq i8 %i.dr, 47
  br i1 %.not.i.i92.5, label %.lr.ph.i.i84.6, label %.sink.split.i.i87.5

.sink.split.i.i87.5:                              ; preds = %bb.ae, %.lr.ph.i.i84.5
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i88.4, i64 1
  store i8 %i.dn, ptr %.sroa.015.1.i.i88.4, align 1, !tbaa !81
  %.pre331 = load ptr, ptr %7, align 8
  br label %.lr.ph.i.i84.6

.lr.ph.i.i84.6:                                   ; preds = %.sink.split.i.i87.5, %bb.ae
  %i.dt = phi ptr [ %i.dm, %bb.ae ], [ %.pre331, %.sink.split.i.i87.5 ] ; 2 uses
  %.sroa.015.1.i.i88.5 = phi ptr [ %.sroa.015.1.i.i88.4, %bb.ae ], [ %i.ds, %.sink.split.i.i87.5 ] ; 5 uses
  %.sroa.012.020.i.i86.ptr.6 = getelementptr inbounds nuw i8, ptr %7, i64 22
  %i.du = load i8, ptr %.sroa.012.020.i.i86.ptr.6, align 2, !tbaa !81 ; 2 uses
  %i.dv = icmp ne i8 %i.du, 47
  %i.dw = icmp eq ptr %.sroa.015.1.i.i88.5, %i.dt
  %or.cond314.6 = select i1 %i.dv, i1 true, i1 %i.dw
  br i1 %or.cond314.6, label %.sink.split.i.i87.6, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i84.6
  %i.dx = getelementptr inbounds i8, ptr %.sroa.015.1.i.i88.5, i64 -1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !81
  %.not.i.i92.6 = icmp eq i8 %i.dy, 47
  br i1 %.not.i.i92.6, label %.lr.ph.i.i84.7, label %.sink.split.i.i87.6

.sink.split.i.i87.6:                              ; preds = %bb.af, %.lr.ph.i.i84.6
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i88.5, i64 1
  store i8 %i.du, ptr %.sroa.015.1.i.i88.5, align 1, !tbaa !81
  %.pre332 = load ptr, ptr %7, align 8
  br label %.lr.ph.i.i84.7

.lr.ph.i.i84.7:                                   ; preds = %.sink.split.i.i87.6, %bb.af
  %i.ea = phi ptr [ %i.dt, %bb.af ], [ %.pre332, %.sink.split.i.i87.6 ] ; 2 uses
  %.sroa.015.1.i.i88.6 = phi ptr [ %.sroa.015.1.i.i88.5, %bb.af ], [ %i.dz, %.sink.split.i.i87.6 ] ; 5 uses
  %.sroa.012.020.i.i86.ptr.7 = getelementptr inbounds nuw i8, ptr %7, i64 23
  %i.eb = load i8, ptr %.sroa.012.020.i.i86.ptr.7, align 1, !tbaa !81 ; 2 uses
  %i.ec = icmp ne i8 %i.eb, 47
  %i.ed = icmp eq ptr %.sroa.015.1.i.i88.6, %i.ea
  %or.cond314.7 = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %or.cond314.7, label %.sink.split.i.i87.7, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i84.7
  %i.ee = getelementptr inbounds i8, ptr %.sroa.015.1.i.i88.6, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !81
  %.not.i.i92.7 = icmp eq i8 %i.ef, 47
  br i1 %.not.i.i92.7, label %.lr.ph.i.i84.8, label %.sink.split.i.i87.7

.sink.split.i.i87.7:                              ; preds = %bb.ag, %.lr.ph.i.i84.7
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i88.6, i64 1
  store i8 %i.eb, ptr %.sroa.015.1.i.i88.6, align 1, !tbaa !81
  %.pre333 = load ptr, ptr %7, align 8
  br label %.lr.ph.i.i84.8

.lr.ph.i.i84.8:                                   ; preds = %.sink.split.i.i87.7, %bb.ag
  %i.eh = phi ptr [ %i.ea, %bb.ag ], [ %.pre333, %.sink.split.i.i87.7 ] ; 2 uses
  %.sroa.015.1.i.i88.7 = phi ptr [ %.sroa.015.1.i.i88.6, %bb.ag ], [ %i.eg, %.sink.split.i.i87.7 ] ; 5 uses
  %.sroa.012.020.i.i86.ptr.8 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ei = load i8, ptr %.sroa.012.020.i.i86.ptr.8, align 8, !tbaa !81 ; 2 uses
  %i.ej = icmp ne i8 %i.ei, 47
  %i.ek = icmp eq ptr %.sroa.015.1.i.i88.7, %i.eh
  %or.cond314.8 = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond314.8, label %.sink.split.i.i87.8, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i84.8
  %i.el = getelementptr inbounds i8, ptr %.sroa.015.1.i.i88.7, i64 -1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !81
  %.not.i.i92.8 = icmp eq i8 %i.em, 47
  br i1 %.not.i.i92.8, label %.lr.ph.i.i84.9, label %.sink.split.i.i87.8

.sink.split.i.i87.8:                              ; preds = %bb.ah, %.lr.ph.i.i84.8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i88.7, i64 1
  store i8 %i.ei, ptr %.sroa.015.1.i.i88.7, align 1, !tbaa !81
  %.pre334 = load ptr, ptr %7, align 8
  br label %.lr.ph.i.i84.9

.lr.ph.i.i84.9:                                   ; preds = %.sink.split.i.i87.8, %bb.ah
  %i.eo = phi ptr [ %i.eh, %bb.ah ], [ %.pre334, %.sink.split.i.i87.8 ] ; 2 uses
  %.sroa.015.1.i.i88.8 = phi ptr [ %.sroa.015.1.i.i88.7, %bb.ah ], [ %i.en, %.sink.split.i.i87.8 ] ; 5 uses
  %.sroa.012.020.i.i86.ptr.9 = getelementptr inbounds nuw i8, ptr %7, i64 25
  %i.ep = load i8, ptr %.sroa.012.020.i.i86.ptr.9, align 1, !tbaa !81 ; 2 uses
  %i.eq = icmp ne i8 %i.ep, 47
  %i.er = icmp eq ptr %.sroa.015.1.i.i88.8, %i.eo
  %or.cond314.9 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond314.9, label %.sink.split.i.i87.9, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i84.9
  %i.es = getelementptr inbounds i8, ptr %.sroa.015.1.i.i88.8, i64 -1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !81
  %.not.i.i92.9 = icmp eq i8 %i.et, 47
  br i1 %.not.i.i92.9, label %.lr.ph.i.i84.10, label %.sink.split.i.i87.9

.sink.split.i.i87.9:                              ; preds = %bb.ai, %.lr.ph.i.i84.9
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i88.8, i64 1
  store i8 %i.ep, ptr %.sroa.015.1.i.i88.8, align 1, !tbaa !81
  %.pre335 = load ptr, ptr %7, align 8
  br label %.lr.ph.i.i84.10

.lr.ph.i.i84.10:                                  ; preds = %.sink.split.i.i87.9, %bb.ai
  %i.ev = phi ptr [ %i.eo, %bb.ai ], [ %.pre335, %.sink.split.i.i87.9 ] ; 2 uses
  %.sroa.015.1.i.i88.9 = phi ptr [ %.sroa.015.1.i.i88.8, %bb.ai ], [ %i.eu, %.sink.split.i.i87.9 ] ; 5 uses
  %.sroa.012.020.i.i86.ptr.10 = getelementptr inbounds nuw i8, ptr %7, i64 26
  %i.ew = load i8, ptr %.sroa.012.020.i.i86.ptr.10, align 2, !tbaa !81 ; 2 uses
  %i.ex = icmp ne i8 %i.ew, 47
  %i.ey = icmp eq ptr %.sroa.015.1.i.i88.9, %i.ev
  %or.cond314.10 = select i1 %i.ex, i1 true, i1 %i.ey
  br i1 %or.cond314.10, label %.sink.split.i.i87.10, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i84.10
  %i.ez = getelementptr inbounds i8, ptr %.sroa.015.1.i.i88.9, i64 -1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !81
  %.not.i.i92.10 = icmp eq i8 %i.fa, 47
  br i1 %.not.i.i92.10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i89, label %.sink.split.i.i87.10

.sink.split.i.i87.10:                             ; preds = %bb.aj, %.lr.ph.i.i84.10
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i88.9, i64 1
  store i8 %i.ew, ptr %.sroa.015.1.i.i88.9, align 1, !tbaa !81
  %.pre.i.i90.pre = load ptr, ptr %7, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i89: ; preds = %.sink.split.i.i87.10, %bb.aj
  %.pre.i.i90 = phi ptr [ %i.ev, %bb.aj ], [ %.pre.i.i90.pre, %.sink.split.i.i87.10 ] ; 2 uses
  %.sroa.015.1.i.i88.10 = phi ptr [ %.sroa.015.1.i.i88.9, %bb.aj ], [ %i.fb, %.sink.split.i.i87.10 ]
  %i.fc = ptrtoint ptr %.sroa.015.1.i.i88.10 to i64
  %i.fd = ptrtoint ptr %.pre.i.i90 to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 2 uses
  store i64 %i.fe, ptr %i.cr, align 8, !tbaa !79
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre.i.i90, i64 %i.fe
  store i8 0, ptr %i.ff, align 1, !tbaa !81
  %i.fg = load ptr, ptr %2, align 8, !tbaa !78
  invoke void @_ZN7testing8internal8FilePath12MakeFileNameERKS1_S3_iPKc(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0, ptr noundef %i.fg)
          to label %bb.ak unwind label %bb.as

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.loopexit.i.i89
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.fh, ptr %0, align 8, !tbaa !75
  %i.fi = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !79 ; 8 uses
  %i.fl = icmp ugt i64 %i.fk, 15
  br i1 %i.fl, label %bb.al, label %._crit_edge.i.i100

bb.al:                                            ; preds = %bb.ak
  %i.fm = icmp slt i64 %i.fk, 0
  br i1 %i.fm, label %.noexc.i103, label %bb.am

.noexc.i103:                                      ; preds = %bb.al
end_hunk_0
