Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmConfigureLog?download=true
inline.NumInlined: 578
inline.NumDeleted: 292
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN14cmConfigureLogC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEE:bb.a

bb.s:                                             ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRKjEEERjDpOT_.exit
  %i.bx = invoke noundef ptr @_ZNK4Json19StreamWriterBuilder15newStreamWriterEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.v, align 8, !tbaa !53  ; 3 uses
  store ptr %i.bx, ptr %i.v, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i.i: ; preds = %bb.t
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !55
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #26, !inline_history !82
  br label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i.i
  call void @_ZN4Json19StreamWriterBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRKjEEERjDpOT_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json19StreamWriterBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.v ], [ %i.cc, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %i.bw, %bb.r ]
  %i.ce = load ptr, ptr %i.v, align 8, !tbaa !53  ; 3 uses
  %.not.i9 = icmp eq ptr %i.ce, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i: ; preds = %bb.x
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !55
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #26, !inline_history !0
  br label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.s) #26
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit ], [ %i.bv, %bb.q ]
  %i.ci = load ptr, ptr %i.m, align 8, !tbaa !52  ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.y, %bb.z
  %i.cn = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.a
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !20
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #4 align 2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4Json19StreamWriterBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare noundef ptr @_ZNK4Json19StreamWriterBuilder15newStreamWriterEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN4Json19StreamWriterBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14cmConfigureLogD2Ev(ptr noundef nonnull align 8 dead_on_return(584) dereferenceable(584) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.b = load i8, ptr %i.a, align 4, !tbaa !49, !range !56, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48
  %i.f = add i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #26, !inline_history !0
  br label %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt14default_deleteIN4Json12StreamWriterEEclEPS1_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.n) #26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN4Json12StreamWriterESt14default_deleteIS1_EED2Ev.exit, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !20
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN14cmConfigureLog9EndObjectEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(584) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK14cmConfigureLog22IsAnyLogVersionEnabledERKSt6vectorIjSaIjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(584) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not14 = icmp eq ptr %i.a, %i.c
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = load ptr, ptr %2, align 8, !tbaa !22
  br label %6

6:                                                ; preds = %.lr.ph, %bb.f
  %.sroa.05.016 = phi ptr [ %4, %.lr.ph ], [ %.sroa.05.1, %bb.f ] ; 4 uses
  %.sroa.09.015 = phi ptr [ %i.a, %.lr.ph ], [ %.sroa.09.1, %bb.f ] ; 3 uses
  %.not13 = icmp eq ptr %.sroa.05.016, %5
  br i1 %.not13, label %.critedge, label %bb.b

bb.b:                                             ; preds = %6
  %i.d = load i32, ptr %.sroa.09.015, align 4, !tbaa !50 ; 2 uses
  %i.e = load i32, ptr %.sroa.05.016, align 4, !tbaa !50 ; 2 uses
  %i.f = icmp ult i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.09.015, i64 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %i.e, %i.d
  br i1 %i.h, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.016, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.09.1 = phi ptr [ %i.g, %bb.c ], [ %.sroa.09.015, %bb.e ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %.sroa.05.016, %bb.c ], [ %i.i, %bb.e ]
  %.not = icmp eq ptr %.sroa.09.1, %i.c
  br i1 %.not, label %.critedge, label %6, !llvm.loop !85

.critedge:                                        ; preds = %bb.d, %6, %bb.f, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %6 ], [ false, %bb.f ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14cmConfigureLog14WriteBacktraceERK10cmMakefile(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(2952) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.14", align 8    ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %class.cmListFileBacktrace, align 16 ; 10 uses
  %5 = alloca %class.cmListFileContext, align 8   ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %class.cmListFileBacktrace, align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = invoke noundef ptr @_ZNK10cmMakefile16GetCMakeInstanceEv(ptr noundef nonnull align 8 dereferenceable(2952) %1)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5cmake16GetHomeDirectoryB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(2456) %i.b)
          to label %bb.c unwind label %bb.p       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !15
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.g, ptr %i.a, align 8, !tbaa !58
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %3, align 8, !tbaa !18
  %i.j = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.j, ptr %i.d, align 8, !tbaa !20
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !20
  store i8 %i.l, ptr %i.k, align 1, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = load ptr, ptr %3, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNK10cmMakefile12GetBacktraceEv(ptr dead_on_unwind nonnull writable sret(%class.cmListFileBacktrace) align 8 %4, ptr noundef nonnull align 8 dereferenceable(2952) %1)
          to label %.preheader unwind label %bb.q

.preheader:                                       ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit41
  %i.as = invoke noundef zeroext i1 @_ZNK12cmConstStackI17cmListFileContext19cmListFileBacktraceE5EmptyEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  br i1 %i.as, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !61 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %bb.bl, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.au, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !64
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26, !inline_history !86
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26, !inline_history !86
  br label %bb.bl

bb.l:                                             ; preds = %bb.j
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.ax, %bb.m ], [ %i.bh, %bb.n ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.o, label %bb.bl, !prof !65

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26
  br label %bb.bl

bb.p:                                             ; preds = %.noexc.i, %bb.b, %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.q:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.r:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.s:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bm = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNK12cmConstStackI17cmListFileContext19cmListFileBacktraceE3TopEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.t unwind label %bb.ak

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN17cmListFileContextC2ERKS_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(112) %i.bm)
          to label %bb.u unwind label %bb.ak

bb.u:                                             ; preds = %bb.t
  %i.bn = load i64, ptr %i.q, align 8, !tbaa !19
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = load i64, ptr %i.r, align 8
  %i.bq = icmp ne i64 %i.bp, -1
  %or.cond.not = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond.not, label %bb.ar, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN13cmSystemTools15RelativeIfUnderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %bb.w unwind label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !18  ; 6 uses
  %i.bs = icmp eq ptr %i.br, %i.t
end_hunk_0
