Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/libjsonnet?download=true
inline.NumInlined: 2016
inline.NumDeleted: 814
begin_hunk_0_@jsonnet_max_trace:bb.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @jsonnet_jpath_add(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %char0 = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %char0, 0
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !46
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.e, ptr %i.b, align 8, !tbaa !55
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !44
  %i.h = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.h, ptr %i.d, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !47
  store i8 %i.j, ptr %i.i, align 1, !tbaa !47
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !56
  %i.m = load ptr, ptr %2, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.o = load i64, ptr %i.l, align 8, !tbaa !56   ; 5 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !47
  %.not = icmp eq i8 %i.s, 47
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %i.o, 1                          ; 3 uses
  %i.u = icmp eq ptr %i.p, %i.d
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f
  %i.v = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.v)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.d, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.x = phi i64 [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.y = icmp ugt i64 %i.t, %i.x
  br i1 %i.y, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.o, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc7
  %i.z = phi ptr [ %.pre.i.i, %.noexc7 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.o
  store i8 47, ptr %i.aa, align 1, !tbaa !47
  store i64 %i.t, ptr %i.l, align 8, !tbaa !56
  %i.ab = load ptr, ptr %2, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store i8 0, ptr %i.ac, align 1, !tbaa !47
  br label %bb.i

bb.h:                                             ; preds = %bb.m, %.noexc.i.i, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.d
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !47
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89
  %.not.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !46
  %i.an = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ao = load i64, ptr %i.l, align 8, !tbaa !56  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !55
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !44
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.ar, ptr %i.am, align 8, !tbaa !47
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %bb.j
  %i.as = phi ptr [ %i.aq, %.noexc8 ], [ %i.am, %bb.j ] ; 2 uses
  switch i64 %i.ao, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.at = load i8, ptr %i.an, align 1, !tbaa !47
  store i8 %i.at, ptr %i.as, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.an, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.au = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !56
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !88
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.az, ptr %i.ai, align 8, !tbaa !88
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit

bb.m:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit unwind label %bb.h

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bb = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.d
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !47
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRS5_EEES9_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @jsonnet_fmt_file(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef %1, i32 noundef 8)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.b
  %.not.i = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %4, align 8, !tbaa !64
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %4, i64 %i.e ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !105
  %i.i = or i32 %i.h, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %.sink.i = phi i32 [ %i.i, %bb.c ], [ 0, %.noexc ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %.sink.i)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit unwind label %bb.r

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit: ; preds = %bb.d
  %i.j = load ptr, ptr %4, align 8, !tbaa !64
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.w, label %bb.e

bb.e:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.4, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %.not.i30 = icmp eq ptr %1, null
  br i1 %.not.i30, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !105
  %i.y = or i32 %i.x, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %i.y)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.t

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %1, i64 noundef %i.z)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %bb.g, %bb.h
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.ac = tail call ptr @__errno_location() #40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106
  %i.ae = call ptr @strerror(i32 noundef %i.ad) #35 ; 3 uses
  %.not.i36 = icmp eq ptr %i.ae, null
  br i1 %.not.i36, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.q, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105
  %i.al = or i32 %i.ak, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ai, i32 noundef %i.al)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.t

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #35
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.ae, i64 noundef %i.am)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %bb.i, %bb.j
  store i32 1, ptr %2, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !46, !alias.scope !223
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !56, !alias.scope !223
  store i8 0, ptr %i.ao, align 8, !tbaa !47, !alias.scope !223
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108, !noalias !223 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !noalias !223 ; 2 uses
  %i.au = icmp ugt ptr %i.ar, %i.at
  %.08.i.i.i = select i1 %i.au, ptr %i.ar, ptr %i.at ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109, !noalias !223 ; 2 uses
  %i.ax = ptrtoint ptr %.08.i.i.i to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.aw, i64 noundef %i.az)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
  %i.bc = load ptr, ptr %6, align 8, !tbaa !44, !alias.scope !223 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.be = load i64, ptr %i.ao, align 8, !tbaa !47, !alias.scope !223
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #37
  br label %.body

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.m, %bb.k
  %.val = load ptr, ptr %6, align 8               ; 3 uses
  %.val27 = load i64, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.bh = add i64 %.val27, 1                      ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bj = call noalias ptr @malloc(i64 noundef %i.bh) #41 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call fastcc void @_ZL12memory_panicv()
  unreachable

bb.p:                                             ; preds = %bb.n, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.0.i.i = phi ptr [ %i.bj, %bb.n ], [ null, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr readonly align 1 %.val, i64 %i.bh, i1 false)
  %i.bl = icmp eq ptr %.val, %i.ao
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.p
  %i.bm = icmp ult i64 %.val27, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bn = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %.val, i64 noundef %i.bo) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.bp = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bp, ptr %5, align 8, !tbaa !64
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %5, i64 %i.bs
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !64
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bu, ptr %i.q, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bv, align 8, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !44 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
end_hunk_0
begin_hunk_1_@jsonnet_fmt_file:bb.a
          catch ptr @_ZTISt9exception
  br label %bb.u

.body:                                            ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %.body ], [ %i.cn, %bb.t ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #35
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.cm, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.ac

bb.w:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.co, ptr %7, align 8, !tbaa !46
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !56
  store i8 0, ptr %i.co, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.cs, ptr %3, align 8, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.ct, align 8, !tbaa !56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %i.cr, i32 -1, ptr null, i32 -1)
          to label %.noexc45 unwind label %bb.aa

.noexc45:                                         ; preds = %bb.w
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = load ptr, ptr %7, align 8, !tbaa !44
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cu, %i.cw
  %i.cy = load ptr, ptr %3, align 8, !tbaa !44
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !56
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cx, i64 noundef 0, ptr noundef %i.cy, i64 noundef %i.cz)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %.noexc45
  %i.db = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cs
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43: ; preds = %bb.x
  %i.dd = load i64, ptr %i.cs, align 8, !tbaa !47
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i44

bb.y:                                             ; preds = %.noexc45
  %i.df = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
  %i.dg = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cs
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i: ; preds = %bb.y
  %i.di = load i64, ptr %i.cs, align 8, !tbaa !47
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %.body46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i44: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.dk = load ptr, ptr %7, align 8, !tbaa !44
  %i.dl = invoke fastcc noundef ptr @_ZL23jsonnet_fmt_snippet_auxP9JsonnetVmPKcS2_Pi(ptr noundef %0, ptr noundef %1, ptr noundef %i.dk, ptr noundef %2)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i44
  %i.dm = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.co
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.z
  %i.do = load i64, ptr %i.co, align 8, !tbaa !47
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i44
  %i.dq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
  br label %.body46

.body46:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, %bb.aa
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.dq, %bb.aa ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i ]
  %i.dr = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.co
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %.body46
  %i.dt = load i64, ptr %i.co, align 8, !tbaa !47
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %.body46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.019 = phi ptr [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.0.i.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret ptr %.019

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.v, %bb.r
  %.pn24 = phi { ptr, i32 } [ %eh.lpad-body47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn.pn.pn, %bb.v ], [ %i.cl, %bb.r ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #35
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.q
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.ac ], [ %i.ck, %bb.q ] ; 3 uses
  %.4 = extractvalue { ptr, i32 } %.pn24.pn, 1    ; 2 uses
  %.417 = extractvalue { ptr, i32 } %.pn24.pn, 0  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.dv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #35
  %i.dw = icmp eq i32 %.4, %i.dv
  br i1 %i.dw, label %.unreachable, label %bb.ae

.unreachable:                                     ; preds = %bb.ad
  %i.dx = call ptr @__cxa_begin_catch(ptr %.417) #35 ; 0 uses
  call fastcc void @_ZL12memory_panicv()
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.dy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.dz = icmp eq i32 %.4, %i.dy
  br i1 %i.dz, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ea = call ptr @__cxa_begin_catch(ptr %.417) #35 ; 2 uses
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 66)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %bb.af
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call noundef ptr %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #35
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ef)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.ah, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.ag
  call void @abort() #33
  unreachable

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.merged = phi { ptr, i32 } [ %i.ei, %bb.ah ], [ %.pn24.pn, %bb.ae ]
  resume { ptr, i32 } %.merged

bb.aj:                                            ; preds = %bb.ah
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef ptr @_ZL11from_stringP9JsonnetVmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #22 {
bb.a:
  %i.a = add i64 %.8.val, 1                       ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %jsonnet_realloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.a) #41 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %jsonnet_realloc.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

jsonnet_realloc.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %.0.val, i64 %i.a, i1 false)
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL23jsonnet_fmt_snippet_auxP9JsonnetVmPKcS2_Pi(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.jsonnet::internal::Allocator", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %6 = alloca %"class.std::map.96", align 8       ; 10 uses
  %7 = alloca %"class.std::__cxx11::list.101", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::vector.106", align 8   ; 12 uses
  %10 = alloca %"class.(anonymous namespace)::ReEscapeStrings", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.c, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.h, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %i.h, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %i.m, ptr %i.n, align 8, !tbaa !121
  store ptr %i.m, ptr %i.m, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 0, ptr %i.o, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.q, align 8, !tbaa !56
  store i8 0, ptr %i.p, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.r, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.r, ptr %i.u, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !46
  %i.x = icmp eq ptr %1, null
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #36
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.y, ptr %i.a, align 8, !tbaa !55
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc37 unwind label %bb.p   ; 2 uses

.noexc37:                                         ; preds = %.noexc.i
  store ptr %i.aa, ptr %8, align 8, !tbaa !44
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc37, %bb.c
  %i.ac = phi ptr [ %i.aa, %.noexc37 ], [ %i.w, %bb.c ] ; 2 uses
  switch i64 %i.y, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %1, align 1, !tbaa !47
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !47
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %1, i64 %i.y, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !56
  %i.ag = load ptr, ptr %8, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  invoke void @_ZN7jsonnet8internal11jsonnet_lexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list.101") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %2)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !47
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.am = invoke noundef ptr @_ZN7jsonnet8internal13jsonnet_parseEPNS0_9AllocatorERNSt7__cxx114listINS0_5TokenESaIS5_EEE(ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.am, ptr %i.b, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.an = load ptr, ptr %7, align 8, !tbaa !122   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !129 ; 3 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !130 ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i.i.i, label %.noexc39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = sdiv exact i64 %i.au, 40
  %i.aw = icmp ugt i64 %i.av, 230584300921369395
  br i1 %i.aw, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !92

.noexc.i.i:                                       ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc38 unwind label %bb.s

.noexc38:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.i
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #34
          to label %.noexc39 unwind label %bb.s

.noexc39:                                         ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %bb.h
  %i.ay = phi ptr [ null, %bb.h ], [ %i.ax, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ay, ptr %9, align 8, !tbaa !130
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !129
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !131
  %i.bc = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ar, ptr %i.aq, ptr noundef %i.ay)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %.noexc39
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7jsonnet8internal11StaticErrorE ; 2 uses
  %i.be = load ptr, ptr %9, align 8, !tbaa !130   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !131
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #37
  br label %.body

bb.l:                                             ; preds = %.noexc39
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !129
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !87, !range !95, !noundef !96
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN7jsonnet8internal15jsonnet_desugarEPNS0_9AllocatorERPNS0_3ASTEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5VmExtESt4lessISC_ESaISt4pairIKSC_SD_EEE(ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.bm)
end_hunk_1
begin_hunk_2_@_ZL23jsonnet_fmt_snippet_auxP9JsonnetVmPKcS2_Pi:bb.a
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.dw = load ptr, ptr %i.bb, align 8, !tbaa !131
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #37
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ea = load ptr, ptr %7, align 8, !tbaa !122   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ea, %7
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %i.ea, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit ] ; 3 uses
  %i.eb = load ptr, ptr %.09.i.i, align 8, !tbaa !122 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  call void @_ZN7jsonnet8internal5TokenD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.ec) #35
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 208) #37
  %.not.i.i = icmp eq ptr %i.eb, %7
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.ed = load ptr, ptr %i.s, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.ed)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.eg = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.p
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit
  %i.ei = load i64, ptr %i.p, align 8, !tbaa !47
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN7jsonnet8internal9AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.au

bb.ai:                                            ; preds = %bb.v
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7jsonnet8internal11StaticErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.u, %bb.t
  %.pn25 = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.ek, %bb.ai ], [ %i.bx, %bb.u ]
  call void @_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #35
  br label %.body

.body:                                            ; preds = %bb.s, %bb.k, %bb.j, %bb.aj
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.aj ], [ %i.bv, %bb.s ], [ %i.bd, %bb.k ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.ak

bb.ak:                                            ; preds = %.body, %bb.r
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %.body ], [ %i.bu, %bb.r ]
  call void @_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #35
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %bb.ak ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 3 uses
  %.4 = extractvalue { ptr, i32 } %.pn25.pn.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.el = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.p
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.al
  %i.en = load i64, ptr %i.p, align 8, !tbaa !47
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN7jsonnet8internal9AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.ep = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN7jsonnet8internal11StaticErrorE) #35
  %i.eq = icmp eq i32 %.4, %i.ep
  br i1 %i.eq, label %bb.am, label %bb.av

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.418 = extractvalue { ptr, i32 } %.pn25.pn.pn.pn, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %.418) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull @.str.45, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.an
  %i.eu = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN7jsonnet8internallsERSoRKNS0_11StaticErrorE(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull align 8 dereferenceable(96) %i.er)
          to label %bb.ao unwind label %bb.ar     ; 0 uses

bb.ao:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.es)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.ar, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.ao
  store i32 1, ptr %3, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.ap unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.ap:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %.val = load ptr, ptr %13, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.val34 = load i64, ptr %i.ew, align 8, !tbaa !56
  %i.ex = call fastcc noundef ptr @_ZL11from_stringP9JsonnetVmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %.val, i64 %.val34)
  %i.ey = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ap
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !47
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @__cxa_end_catch()
  br label %bb.au

bb.aq:                                            ; preds = %bb.am
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao, %bb.an, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.ar
  %.pn30.pn = phi { ptr, i32 } [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.fe, %bb.ar ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12) #35
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %bb.as ], [ %i.fd, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.aw

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.023 = phi ptr [ %.0.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  ret ptr %.023

bb.av:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.merged = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn30.pn.pn, %bb.at ]
  resume { ptr, i32 } %.merged

bb.aw:                                            ; preds = %bb.at
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  call void @__clang_call_terminate(ptr %i.fh) #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @jsonnet_fmt_snippet(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke fastcc noundef ptr @_ZL23jsonnet_fmt_snippet_auxP9JsonnetVmPKcS2_Pi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #35
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.unreachable, label %bb.c

.unreachable:                                     ; preds = %bb.b
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 0 uses
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #35
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.e
  tail call void @abort() #33
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  ret ptr %i.a

bb.h:                                             ; preds = %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.merged

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @jsonnet_evaluate_file(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke fastcc noundef ptr @_ZL25jsonnet_evaluate_file_auxP9JsonnetVmPKcPiN12_GLOBAL__N_18EvalKindE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #35
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.unreachable, label %bb.c

.unreachable:                                     ; preds = %bb.b
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 0 uses
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 71)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #35
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.e
  tail call void @abort() #33
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  ret ptr %i.a

bb.h:                                             ; preds = %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.merged

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL25jsonnet_evaluate_file_auxP9JsonnetVmPKcPiN12_GLOBAL__N_18EvalKindE(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::basic_ifstream", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef %1, i32 noundef 8)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %5, align 8, !tbaa !64
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.e ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !105
  %i.i = or i32 %i.h, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  %.sink.i = phi i32 [ %i.i, %bb.b ], [ 0, %.noexc ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %.sink.i)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit unwind label %bb.p

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit: ; preds = %bb.c
  %i.j = load ptr, ptr %5, align 8, !tbaa !64
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %5, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.u, label %bb.d

bb.d:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.4, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %.not.i23 = icmp eq ptr %1, null
  br i1 %.not.i23, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !105
  %i.y = or i32 %i.x, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %i.y)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.r

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %1, i64 noundef %i.z)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %bb.f, %bb.g
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.ac = tail call ptr @__errno_location() #40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106
  %i.ae = call ptr @strerror(i32 noundef %i.ad) #35 ; 3 uses
  %.not.i29 = icmp eq ptr %i.ae, null
  br i1 %.not.i29, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.q, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105
  %i.al = or i32 %i.ak, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ai, i32 noundef %i.al)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.r

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #35
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.ae, i64 noundef %i.am)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.h, %bb.i
  store i32 1, ptr %2, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !46, !alias.scope !232
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !56, !alias.scope !232
  store i8 0, ptr %i.ao, align 8, !tbaa !47, !alias.scope !232
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108, !noalias !232 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !noalias !232 ; 2 uses
  %i.au = icmp ugt ptr %i.ar, %i.at
  %.08.i.i.i = select i1 %i.au, ptr %i.ar, ptr %i.at ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109, !noalias !232 ; 2 uses
  %i.ax = ptrtoint ptr %.08.i.i.i to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.aw, i64 noundef %i.az)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %7, align 8, !tbaa !44, !alias.scope !232 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.be = load i64, ptr %i.ao, align 8, !tbaa !47, !alias.scope !232
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #37
  br label %.body

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %.val = load ptr, ptr %7, align 8               ; 3 uses
  %.val20 = load i64, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.bh = add i64 %.val20, 1                      ; 3 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bj = call noalias ptr @malloc(i64 noundef %i.bh) #41 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZL12memory_panicv()
  unreachable

bb.o:                                             ; preds = %bb.m, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.0.i.i = phi ptr [ %i.bj, %bb.m ], [ null, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr readonly align 1 %.val, i64 %i.bh, i1 false)
  %i.bl = icmp eq ptr %.val, %i.ao
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.o
  %i.bm = icmp ult i64 %.val20, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bn = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %.val, i64 noundef %i.bo) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.bp = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bp, ptr %6, align 8, !tbaa !64
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %6, i64 %i.bs
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !64
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bu, ptr %i.q, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bv, align 8, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !44 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !47
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #37
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bv, align 8, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cc) #35
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cd, ptr %6, align 8, !tbaa !64
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %6, i64 %i.cg
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !111
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cj) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.z

bb.p:                                             ; preds = %bb.c, %bb.a
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %bb.d
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %bb.i, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %bb.g, %bb.f, %bb.e
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %.body ], [ %i.cm, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #35
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.cl, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.aa

bb.u:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.cn, ptr %8, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !56
  store i8 0, ptr %i.cn, align 8, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.cr, ptr %4, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !56
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %i.cq, i32 -1, ptr null, i32 -1)
          to label %.noexc38 unwind label %bb.y

.noexc38:                                         ; preds = %bb.u
  %i.ct = ptrtoint ptr %i.cn to i64
  %i.cu = load ptr, ptr %8, align 8, !tbaa !44
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.ct, %i.cv
  %i.cx = load ptr, ptr %4, align 8, !tbaa !44
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !56
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.cw, i64 noundef 0, ptr noundef %i.cx, i64 noundef %i.cy)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %.noexc38
  %i.da = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36: ; preds = %bb.v
  %i.dc = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i37

bb.w:                                             ; preds = %.noexc38
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cr
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i: ; preds = %bb.w
  %i.dh = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %.body39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.dj = load ptr, ptr %8, align 8, !tbaa !44
  %i.dk = invoke fastcc noundef ptr @_ZL28jsonnet_evaluate_snippet_auxP9JsonnetVmPKcS2_PiN12_GLOBAL__N_18EvalKindE(ptr noundef %0, ptr noundef %1, ptr noundef %i.dj, ptr noundef %2, i32 noundef %3)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i37
  %i.dl = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cn
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.x
  %i.dn = load i64, ptr %i.cn, align 8, !tbaa !47
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.z

bb.y:                                             ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i37
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body39

.body39:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, %bb.y
  %eh.lpad-body40 = phi { ptr, i32 } [ %i.dp, %bb.y ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i ]
  %i.dq = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cn
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %.body39
  %i.ds = load i64, ptr %i.cn, align 8, !tbaa !47
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %.body39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.014 = phi ptr [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.0.i.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  ret ptr %.014

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.t, %bb.p
  %.pn18 = phi { ptr, i32 } [ %eh.lpad-body40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn.pn.pn, %bb.t ], [ %i.ck, %bb.p ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @jsonnet_evaluate_file_multi(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke fastcc noundef ptr @_ZL25jsonnet_evaluate_file_auxP9JsonnetVmPKcPiN12_GLOBAL__N_18EvalKindE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #35
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.unreachable, label %bb.c

.unreachable:                                     ; preds = %bb.b
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 0 uses
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #35
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.e
  tail call void @abort() #33
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  ret ptr %i.a

bb.h:                                             ; preds = %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.merged

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @jsonnet_evaluate_file_stream(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke fastcc noundef ptr @_ZL25jsonnet_evaluate_file_auxP9JsonnetVmPKcPiN12_GLOBAL__N_18EvalKindE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #35
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.unreachable, label %bb.c

.unreachable:                                     ; preds = %bb.b
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 0 uses
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 78)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #35
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.e
  tail call void @abort() #33
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  ret ptr %i.a

bb.h:                                             ; preds = %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.merged

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @jsonnet_evaluate_snippet(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke fastcc noundef ptr @_ZL28jsonnet_evaluate_snippet_auxP9JsonnetVmPKcS2_PiN12_GLOBAL__N_18EvalKindE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #35
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.unreachable, label %bb.c

.unreachable:                                     ; preds = %bb.b
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 0 uses
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 74)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #35
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.e
  tail call void @abort() #33
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  ret ptr %i.a

bb.h:                                             ; preds = %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.merged

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL28jsonnet_evaluate_snippet_auxP9JsonnetVmPKcS2_PiN12_GLOBAL__N_18EvalKindE(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.jsonnet::internal::Allocator", align 8 ; 23 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %6 = alloca %"class.std::__cxx11::list.101", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::map.96", align 8       ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::vector.34", align 8   ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr null, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.i, ptr %i.k, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.i, ptr %i.l, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 0, ptr %i.m, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %i.n, ptr %i.o, align 8, !tbaa !121
  store ptr %i.n, ptr %i.n, align 8, !tbaa !122
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 0, ptr %i.p, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !46
  %i.r = icmp eq ptr %1, null
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #36
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.s, ptr %i.b, align 8, !tbaa !55
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc182 unwind label %bb.k  ; 2 uses

.noexc182:                                        ; preds = %.noexc.i
  store ptr %i.u, ptr %7, align 8, !tbaa !44
  %i.v = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.v, ptr %i.q, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc182, %bb.c
  %i.w = phi ptr [ %i.u, %.noexc182 ], [ %i.q, %bb.c ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %1, align 1, !tbaa !47
  store i8 %i.x, ptr %i.w, align 1, !tbaa !47
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %1, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !56
  %i.aa = load ptr, ptr %7, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  invoke void @_ZN7jsonnet8internal11jsonnet_lexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list.101") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.q
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !47
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.ag = invoke noundef ptr @_ZN7jsonnet8internal13jsonnet_parseEPNS0_9AllocatorERNSt7__cxx114listINS0_5TokenESaIS5_EEE(ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !126
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN7jsonnet8internal15jsonnet_desugarEPNS0_9AllocatorERPNS0_3ASTEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5VmExtESt4lessISC_ESaISt4pairIKSC_SD_EEE(ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.ah)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !79
  %i.ak = add i32 %i.aj, 2                        ; 3 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !126
  invoke void @_ZN7jsonnet8internal23jsonnet_static_analysisEPNS0_3ASTE(ptr noundef %i.al)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  switch i32 %4, label %default.unreachable327 [
    i32 0, label %bb.o
    i32 1, label %bb.x
    i32 2, label %bb.ae
  ]

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7jsonnet8internal11StaticErrorE
          catch ptr @_ZTIN7jsonnet8internal12RuntimeErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.l:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7jsonnet8internal11StaticErrorE
          catch ptr @_ZTIN7jsonnet8internal12RuntimeErrorE ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.q
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.l
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !47
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.k
  %.pn = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.an, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.ap

bb.m:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7jsonnet8internal11StaticErrorE
          catch ptr @_ZTIN7jsonnet8internal12RuntimeErrorE
  br label %bb.ao

bb.n:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN7jsonnet8internal11StaticErrorE
          catch ptr @_ZTIN7jsonnet8internal12RuntimeErrorE
  br label %bb.ao

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !80
  %i.ay = uitofp i32 %i.ax to double
  %i.az = load double, ptr %0, align 8, !tbaa !78
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !85, !range !95, !noundef !96
  %i.bh = trunc nuw i8 %i.bg to i1
  invoke void @_ZN7jsonnet8internal18jsonnet_vm_executeEPNS0_9AllocatorEPKNS0_3ASTERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5VmExtESt4lessISC_ESaISt4pairIKSC_SD_EEEjddRKS6_ISC_NS0_16VmNativeCallbackESF_SaISG_ISH_SN_EEEPFiPvPKcSV_PPcSX_PmEST_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %5, ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(48) %i.av, i32 noundef %i.ak, double noundef %i.ay, double noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef %i.bc, ptr noundef %i.be, i1 noundef zeroext %i.bh)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 185
end_hunk_2
begin_hunk_3_@_ZL28jsonnet_evaluate_snippet_auxP9JsonnetVmPKcS2_PiN12_GLOBAL__N_18EvalKindE:bb.a

bb.av:                                            ; preds = %bb.au
  %i.ht = call ptr @__cxa_begin_catch(ptr %.7) #35 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.54, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 unwind label %bb.ay ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212: ; preds = %bb.aw
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !56
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef %i.hx, i64 noundef %i.hz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ay

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ia)
          to label %_ZNSolsEPFRSoS_E.exit215 unwind label %bb.ay, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit215:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !81 ; 2 uses
  %i.ie = lshr i32 %i.id, 1
  %i.if = zext nneg i32 %i.ie to i64              ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !236
  %i.ii = load ptr, ptr %i.ht, align 8, !tbaa !237
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik                    ; 2 uses
  %i.im = icmp sgt i64 %i.il, 0
  br i1 %i.im, label %.lr.ph286, label %._crit_edge287

.lr.ph286:                                        ; preds = %_ZNSolsEPFRSoS_E.exit215
  %i.in = udiv exact i64 %i.il, 96                ; 2 uses
  %i.io = zext i32 %i.id to i64
  %.neg = sub nsw i64 %i.if, %i.io
  %i.ip = add nsw i64 %.neg, %i.in
  br label %bb.az

._crit_edge287:                                   ; preds = %_ZNSolsEPFRSoS_E.exit219, %_ZNSolsEPFRSoS_E.exit215
  store i32 1, ptr %3, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.bf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.ax:                                            ; preds = %bb.av
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ay:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212, %bb.aw
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.az:                                            ; preds = %.lr.ph286, %_ZNSolsEPFRSoS_E.exit219
  %.0285 = phi i64 [ 0, %.lr.ph286 ], [ %i.jj, %_ZNSolsEPFRSoS_E.exit219 ] ; 5 uses
  %i.is = load ptr, ptr %i.ht, align 8, !tbaa !237
  %i.it = getelementptr inbounds nuw [96 x i8], ptr %i.is, i64 %.0285 ; 3 uses
  %i.iu = load i32, ptr %i.ic, align 8, !tbaa !81
  %.not = icmp ne i32 %i.iu, 0
  %.not164 = icmp samesign uge i64 %.0285, %i.if
  %or.cond.not259 = select i1 %.not, i1 %.not164, i1 false
  %i.iv = icmp slt i64 %.0285, %i.ip
  %or.cond174 = select i1 %or.cond.not259, i1 %i.iv, i1 false
  br i1 %or.cond174, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.iw = icmp eq i64 %.0285, %i.if
  br i1 %i.iw, label %bb.bb, label %_ZNSolsEPFRSoS_E.exit219

bb.bb:                                            ; preds = %bb.ba
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.55, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit225.invoke unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit225.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223, %bb.be, %bb.bd, %bb.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bd:                                            ; preds = %bb.az
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.56, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221: ; preds = %bb.bd
  %i.ja = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN7jsonnet8internallsERSoRKNS0_13LocationRangeE(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull align 8 dereferenceable(64) %i.it)
          to label %bb.be unwind label %bb.bc     ; 0 uses

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit221
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.56, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %bb.be
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 64
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 72
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !56
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef %i.jd, i64 noundef %i.jf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit225.invoke unwind label %bb.bc

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit225.invoke: ; preds = %bb.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223
  %i.jh = phi ptr [ %i.jg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 ], [ %i.hu, %bb.bb ]
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.jh)
          to label %_ZNSolsEPFRSoS_E.exit219 unwind label %bb.bc, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit219:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit225.invoke, %bb.ba
  %i.jj = add nuw nsw i64 %.0285, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.jj, %i.in
  br i1 %exitcond.not, label %._crit_edge287, label %bb.az, !llvm.loop !233

bb.bf:                                            ; preds = %._crit_edge287
  %.val = load ptr, ptr %13, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.val175 = load i64, ptr %i.jk, align 8, !tbaa !56
  %i.jl = call fastcc noundef ptr @_ZL11from_stringP9JsonnetVmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %.val, i64 %.val175)
  %i.jm = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.bf
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !47
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @__cxa_end_catch()
  br label %bb.bm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %._crit_edge287
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %bb.ay
  %.pn165.pn = phi { ptr, i32 } [ %i.ir, %bb.ay ], [ %i.iy, %bb.bc ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12) #35
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ax
  %.pn165.pn.pn = phi { ptr, i32 } [ %.pn165.pn, %bb.bg ], [ %i.iq, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  invoke void @__cxa_end_catch()
          to label %bb.bn unwind label %bb.bo

bb.bi:                                            ; preds = %bb.aq
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bj:                                            ; preds = %bb.as, %bb.ar, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %bb.bj
  %.pn169.pn = phi { ptr, i32 } [ %i.ju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %i.jt, %bb.bj ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14) #35
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %.pn169.pn.pn = phi { ptr, i32 } [ %.pn169.pn, %bb.bk ], [ %i.js, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  invoke void @__cxa_end_catch()
          to label %bb.bn unwind label %bb.bo

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit
  %.1 = phi ptr [ %.0124, %_ZNSt7__cxx1110_List_baseIN7jsonnet8internal5TokenESaIS3_EED2Ev.exit ], [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ]
  ret ptr %.1

bb.bn:                                            ; preds = %bb.bl, %bb.bh, %bb.au
  %.merged = phi { ptr, i32 } [ %.pn165.pn.pn, %bb.bh ], [ %.pn157.pn.pn.pn, %bb.au ], [ %.pn169.pn.pn, %bb.bl ]
  resume { ptr, i32 } %.merged

bb.bo:                                            ; preds = %bb.bl, %bb.bh
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @jsonnet_evaluate_snippet_multi(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke fastcc noundef ptr @_ZL28jsonnet_evaluate_snippet_auxP9JsonnetVmPKcS2_PiN12_GLOBAL__N_18EvalKindE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #35
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.unreachable, label %bb.c

.unreachable:                                     ; preds = %bb.b
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 0 uses
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 80)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #35
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.e
  tail call void @abort() #33
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  ret ptr %i.a

bb.h:                                             ; preds = %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.merged

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @jsonnet_evaluate_snippet_stream(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke fastcc noundef ptr @_ZL28jsonnet_evaluate_snippet_auxP9JsonnetVmPKcS2_PiN12_GLOBAL__N_18EvalKindE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 2)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #35
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %.unreachable, label %bb.c

.unreachable:                                     ; preds = %bb.b
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 0 uses
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.c) #35 ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.13, i64 noundef 81)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #35
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.o)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f, !inline_history !3 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.e
  tail call void @abort() #33
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  ret ptr %i.a

bb.h:                                             ; preds = %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.b, %bb.c ]
  resume { ptr, i32 } %.merged

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @jsonnet_realloc(ptr nofree noundef readnone captures(none) %0, ptr noundef captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @malloc(i64 noundef %2) #41 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

bb.e:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %1) #35
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.e = tail call ptr @realloc(ptr noundef nonnull %1, i64 noundef %2) #43 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZL12memory_panicv()
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.c, %bb.b, %bb.f
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ null, %bb.f ], [ %i.e, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEEixEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4, !tbaa !133   ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !133
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !238

_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !133
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIN7jsonnet8internal8BinaryOpEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i32 %.pre, ptr %i.l, align 4, !tbaa !240
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.m, align 4, !tbaa !241
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.l, align 4, !tbaa !133
  %i.t = load i32, ptr %i.r, align 4, !tbaa !133
  %i.u = icmp slt i32 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !50
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !50
  br label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #37
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #37
  br label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.aa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !133
  %i.i = load i32, ptr %2, align 4, !tbaa !133
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !57 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !133    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !133  ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !57 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !242

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIN7jsonnet8internal8BinaryOpESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #42 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !133
  %.pre82 = load i32, ptr %2, align 4, !tbaa !133
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
end_hunk_3
