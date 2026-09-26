Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pdb2top?download=true
inline.NumInlined: 2376
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z16print_top_headerP8_IO_FILERKNSt10filesystem7__cxx114pathEbS5_f:bb.a

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.42, double noundef %i.b) #32 ; 0 uses
  br label %_ZL17print_top_heavy_HP8_IO_FILEf.exit

_ZL17print_top_heavy_HP8_IO_FILEf.exit:           ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.38, i64 32, i64 1, ptr %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.h = load ptr, ptr %3, align 8, !tbaa !31, !noalias !342 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32, !noalias !342 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.k, ptr %6, align 8, !tbaa !28, !alias.scope !342
  %i.l = icmp eq ptr %i.h, null
  %i.m = icmp ne i64 %i.j, 0
  %or.cond.i.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %_ZL17print_top_heavy_HP8_IO_FILEf.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.g:                                             ; preds = %_ZL17print_top_heavy_HP8_IO_FILEf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !342
  store i64 %i.j, ptr %i.a, align 8, !tbaa !36, !noalias !342
  %i.n = icmp ugt i64 %i.j, 15
  br i1 %i.n, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !31, !alias.scope !342
  %i.p = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !342
  store i64 %i.p, ptr %i.k, align 8, !tbaa !33, !alias.scope !342
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.g
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i ], [ %i.k, %bb.g ] ; 2 uses
  switch i64 %i.j, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNKSt10filesystem7__cxx114path6stringEv.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %i.h, align 1, !tbaa !33
  store i8 %i.r, ptr %i.q, align 1, !tbaa !33
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit

_ZNKSt10filesystem7__cxx114path6stringEv.exit:    ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !36, !noalias !342 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !32, !alias.scope !342
  %i.u = load ptr, ptr %6, align 8, !tbaa !31, !alias.scope !342
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !342
  %i.w = load ptr, ptr %6, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_Z20fflib_forcefield_itpB5cxx11v(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %8)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNKSt10filesystem7__cxx114path6stringEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !343
  invoke void @_ZNKSt10filesystem7__cxx114path14generic_stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !343
  %i.x = load ptr, ptr %7, align 8, !tbaa !31
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %i.w, ptr noundef %i.x) #26 ; 0 uses
  %i.z = load ptr, ptr %7, align 8, !tbaa !31     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull %i.af) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %8, align 8, !tbaa !31    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !33
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #29
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.al = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.k
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.an = load i64, ptr %i.k, align 8, !tbaa !33
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.m:                                             ; preds = %_ZNKSt10filesystem7__cxx114path6stringEv.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %i.ap, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ar = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.k
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.o
  %i.at = load i64, ptr %i.k, align 8, !tbaa !33
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn
}

declare void @_Z20fflib_forcefield_itpB5cxx11v(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNKSt10filesystem7__cxx114path14generic_stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !32
  store i8 0, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 3
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 47)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.k)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !38, !noalias !348 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = and i64 %i.m, 3
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, label %_ZNKSt10filesystem7__cxx114path5beginEv.exit

_ZNKSt10filesystem7__cxx114path5beginEv.exit:     ; preds = %bb.e
  %i.p = load i64, ptr %i.j, align 8, !tbaa !32, !noalias !348
  %4 = icmp ne i64 %i.p, 0                        ; 2 uses
  %i.q = and i64 %i.m, 3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNKSt10filesystem7__cxx114path3endEv.exit, label %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread

_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread: ; preds = %bb.e
  %i.s = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26, !noalias !348 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !38, !noalias !349 ; 2 uses
  %.pre35 = ptrtoint ptr %.pre to i64
  %i.t = and i64 %.pre35, 3
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNKSt10filesystem7__cxx114path3endEv.exit, label %.lr.ph.preheader

_ZNKSt10filesystem7__cxx114path3endEv.exit.thread: ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit
  br i1 %4, label %.lr.ph.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

_ZNKSt10filesystem7__cxx114path3endEv.exit:       ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, %_ZNKSt10filesystem7__cxx114path5beginEv.exit
  %.sink.i58 = phi i1 [ true, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ], [ %4, %_ZNKSt10filesystem7__cxx114path5beginEv.exit ]
  %.sink1.i57 = phi ptr [ %i.s, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ], [ null, %_ZNKSt10filesystem7__cxx114path5beginEv.exit ] ; 3 uses
  %i.v = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26, !noalias !349 ; 3 uses
  %.pre33 = load ptr, ptr %i.c, align 8, !tbaa !38
  %.pre33.fr = freeze ptr %.pre33                 ; 3 uses
  %.pre36 = ptrtoint ptr %.pre33.fr to i64
  %.pre38 = and i64 %.pre36, 3
  %i.w = icmp eq i64 %.pre38, 0
  br i1 %i.w, label %.split, label %bb.f

.split:                                           ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  %.not65 = icmp eq ptr %.sink1.i57, %i.v
  br i1 %.not65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

bb.f:                                             ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  br i1 %.sink.i58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.f
  %5 = phi i1 [ true, %.split ], [ true, %bb.f ], [ false, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ false, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i58 = phi ptr [ %.sink1.i57, %.split ], [ %.sink1.i57, %bb.f ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %i.s, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %i.x = phi ptr [ %.pre33.fr, %.split ], [ %.pre33.fr, %bb.f ], [ %i.l, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %.pre, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i144852 = phi ptr [ %i.v, %.split ], [ %i.v, %bb.f ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ null, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %i.y = phi ptr [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %i.x, %.lr.ph.preheader ]
  %.032 = phi i1 [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ false, %.lr.ph.preheader ]
  %.sroa.8.030 = phi ptr [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sink1.i58, %.lr.ph.preheader ] ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 3
  %i.ab = icmp eq i64 %i.aa, 0
  %.0.i.sroa.speculated = select i1 %i.ab, ptr %.sroa.8.030, ptr %1 ; 3 uses
  br i1 %.032, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.ag = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ac, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.ak = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 47, ptr %i.al, align 1, !tbaa !33
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !32
  %i.am = load ptr, ptr %3, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 0, ptr %i.an, align 1, !tbaa !33
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !32
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #27
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %bb.j
  %i.au = load ptr, ptr %.0.i.sroa.speculated, align 8, !tbaa !31
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.au, i64 noundef %i.aq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, 3
  %i.ba = icmp eq i64 %i.az, 3
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 3
  %i.be = icmp eq i64 %i.bd, 0                    ; 2 uses
  %spec.select.idx = select i1 %i.be, i64 48, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.8.030, i64 %spec.select.idx ; 2 uses
  %i.bf = icmp ne ptr %spec.select, %.sink1.i144852
  %.0.i.i = select i1 %i.be, i1 %i.bf, i1 %5
  br i1 %.0.i.i, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.f, %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !28
  %i.bh = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  store ptr %i.bh, ptr %0, align 8, !tbaa !31
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !33
  %.pre34 = load i64, ptr %i.b, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bn = phi i64 [ %i.bj, %bb.l ], [ %.pre34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.c
  %.pn12 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.ao, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bp = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.m
  %i.br = load i64, ptr %i.a, align 8, !tbaa !33
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn12
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt10filesystem7__cxx114path5_List5beginEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_Z14print_top_molsP8_IO_FILEPKcRKNSt10filesystem7__cxx114pathES2_N3gmx8ArrayRefIS6_EENS9_IK6t_molsEE(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3, ptr %4, ptr nofree readnone captures(address) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.32") align 8 captures(none) %6) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 16 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 16 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 16 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.d = icmp eq ptr %4, %5
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.44, i64 27, i64 1, ptr %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %fputc = call i32 @fputc(i32 10, ptr %0)        ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %.sroa.036.041 = phi ptr [ %4, %bb.b ], [ %i.s, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.036.041)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !358
  invoke void @_ZNKSt10filesystem7__cxx114path14generic_stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !358
  %i.h = load ptr, ptr %19, align 8, !tbaa !31
  %i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef %i.h) #26 ; 0 uses
  %i.j = load ptr, ptr %19, align 8, !tbaa !31    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.e, align 8, !tbaa !33
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.n) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load ptr, ptr %20, align 8, !tbaa !31    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.q = load i64, ptr %i.g, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #29
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.036.041, i64 40 ; 2 uses
  %.not39 = icmp eq ptr %i.s, %5
  br i1 %.not39, label %bb.c, label %bb.d

common.resume:                                    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.au, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %.pn41.pn.pn.pn.pn.i, %bb.au ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aj, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %common.resume

bb.h:                                             ; preds = %bb.c, %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.av, label %bb.i

bb.i:                                             ; preds = %bb.h
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.52, i64 25, i64 1, ptr %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.u, ptr %10, align 8, !tbaa !28
  %i.v = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.x, ptr %i.c, align 8, !tbaa !36
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.i
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.z, ptr %10, align 8, !tbaa !31
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !36
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.i
  %i.ab = phi ptr [ %i.z, %.noexc.i.i.i ], [ %i.u, %bb.i ] ; 2 uses
  switch i64 %i.x, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
end_hunk_0
