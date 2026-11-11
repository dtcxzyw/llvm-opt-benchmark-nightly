Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pdb2top?download=true
inline.NumInlined: 2376
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z16print_top_headerP8_IO_FILERKNSt10filesystem7__cxx114pathEbS5_f:bb.a
  br label %_ZL17print_top_heavy_HP8_IO_FILEf.exit

bb.e:                                             ; preds = %bb.c
  %i.e = fcmp une float %4, 1.000000e+00
  br i1 %i.e, label %bb.f, label %_ZL17print_top_heavy_HP8_IO_FILEf.exit

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
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 47)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !38, !noalias !348 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 3
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, label %_ZNKSt10filesystem7__cxx114path5beginEv.exit

_ZNKSt10filesystem7__cxx114path5beginEv.exit:     ; preds = %bb.d
  %i.o = load i64, ptr %i.i, align 8, !tbaa !32, !noalias !348
  %4 = icmp eq i64 %i.o, 0                        ; 2 uses
  %5 = zext i1 %4 to i8
  %i.p = and i64 %i.l, 3
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZNKSt10filesystem7__cxx114path3endEv.exit, label %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread

_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread: ; preds = %bb.d
  %i.r = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26, !noalias !348 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !38, !noalias !349 ; 2 uses
  %.pre36 = ptrtoint ptr %.pre to i64
  %i.s = and i64 %.pre36, 3
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNKSt10filesystem7__cxx114path3endEv.exit, label %.lr.ph.preheader

_ZNKSt10filesystem7__cxx114path3endEv.exit.thread: ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit
  br i1 %4, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

_ZNKSt10filesystem7__cxx114path3endEv.exit:       ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, %_ZNKSt10filesystem7__cxx114path5beginEv.exit
  %.sink.i61 = phi i8 [ 0, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ], [ %5, %_ZNKSt10filesystem7__cxx114path5beginEv.exit ] ; 3 uses
  %.sink1.i58 = phi ptr [ %i.r, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ], [ null, %_ZNKSt10filesystem7__cxx114path5beginEv.exit ] ; 3 uses
  %i.u = call noundef ptr @_ZNKSt10filesystem7__cxx114path5_List3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26, !noalias !349 ; 3 uses
  %.pre34 = load ptr, ptr %i.c, align 8, !tbaa !38
  %.pre34.fr = freeze ptr %.pre34                 ; 3 uses
  %.pre37 = ptrtoint ptr %.pre34.fr to i64
  %.pre39 = and i64 %.pre37, 3
  %i.v = icmp eq i64 %.pre39, 0
  br i1 %i.v, label %.split, label %bb.e

.split:                                           ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  %.not66 = icmp eq ptr %.sink1.i58, %i.u
  br i1 %.not66, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

bb.e:                                             ; preds = %_ZNKSt10filesystem7__cxx114path3endEv.exit
  %.not = icmp eq i8 %.sink.i61, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.e
  %.sink.i62 = phi i8 [ %.sink.i61, %.split ], [ %.sink.i61, %bb.e ], [ 0, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ 0, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i59 = phi ptr [ %.sink1.i58, %.split ], [ %.sink1.i58, %bb.e ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %i.r, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %i.w = phi ptr [ %.pre34.fr, %.split ], [ %.pre34.fr, %bb.e ], [ %i.k, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ %.pre, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink1.i144953 = phi ptr [ %i.u, %.split ], [ %i.u, %bb.e ], [ null, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ null, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  %.sink.i155052 = phi i8 [ 0, %.split ], [ 0, %bb.e ], [ 1, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread ], [ 1, %_ZNKSt10filesystem7__cxx114path5beginEv.exit.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %i.x = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %i.w, %.lr.ph.preheader ]
  %.032 = phi i1 [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ false, %.lr.ph.preheader ]
  %.sroa.13.031 = phi i8 [ %spec.select28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sink.i62, %.lr.ph.preheader ]
  %.sroa.8.030 = phi ptr [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.sink1.i59, %.lr.ph.preheader ] ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = and i64 %i.y, 3
  %i.aa = icmp eq i64 %i.z, 0
  %.0.i.sroa.speculated = select i1 %i.aa, ptr %.sroa.8.030, ptr %1 ; 3 uses
  br i1 %.032, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !32  ; 4 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f
  %i.af = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ah = phi i64 [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ab, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.aj = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store i8 47, ptr %i.ak, align 1, !tbaa !33
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !32
  %i.al = load ptr, ptr %3, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ac
  store i8 0, ptr %i.am, align 1, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !32 ; 2 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !32
  %i.aq = sub i64 4611686018427387903, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #27
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %bb.h
  %i.as = load ptr, ptr %.0.i.sroa.speculated, align 8, !tbaa !31
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.as, i64 noundef %i.ao)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculated, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 3
  %i.ay = icmp eq i64 %i.ax, 3
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = and i64 %i.ba, 3
  %i.bc = icmp eq i64 %i.bb, 0                    ; 3 uses
  %spec.select.idx = select i1 %i.bc, i64 48, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.8.030, i64 %spec.select.idx ; 2 uses
  %spec.select28 = select i1 %i.bc, i8 %.sroa.13.031, i8 1 ; 2 uses
  %6 = icmp ne i8 %spec.select28, %.sink.i155052
  %i.bd = icmp ne ptr %spec.select, %.sink1.i144953
  %.0.i.i = select i1 %i.bc, i1 %i.bd, i1 %6
  br i1 %.0.i.i, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i, %bb.b, %bb.c, %bb.i
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %_ZNKSt10filesystem7__cxx114path3endEv.exit.thread, %.split, %bb.e, %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !28
  %i.bh = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
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
  %.pre35 = load i64, ptr %i.b, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bn = phi i64 [ %i.bj, %bb.j ], [ %.pre35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !33
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %lpad.loopexit.split-lp67
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
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !33
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i
end_hunk_0
