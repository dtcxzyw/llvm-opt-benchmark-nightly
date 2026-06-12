inline.NumInlined: 3920
inline.NumDeleted: 2209
begin_hunk_0_@_ZN6duckdb15InsertStatement24OnConflictActionToStringB5cxx11ENS_16OnConflictActionE:bb.a
bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn21 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #24
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i13, %._crit_edge.i.i9, %._crit_edge.i.i
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn21, %bb.f ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15InsertStatement8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(370) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.685", align 8   ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::vector.685", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.duckdb::optional_ptr", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 35 uses
  store i64 0, ptr %i.c, align 8, !tbaa !27
  store i8 0, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke void @_ZNK6duckdb24CommonTableExpressionMap8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !42     ; 6 uses
  %i.f = icmp eq ptr %i.e, %i.b
  %i.g = load ptr, ptr %4, align 8, !tbaa !42     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %.not21.i = icmp eq ptr %4, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  switch i64 %i.k, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.g, align 1, !tbaa !28
  store i8 %i.m, ptr %i.e, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.n = load i64, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  store i64 %i.n, ptr %i.c, align 8, !tbaa !27
  %i.o = load ptr, ptr %0, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 0, ptr %i.p, align 1, !tbaa !28
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.g, ptr %0, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load <2 x i64>, ptr %i.q, align 8, !tbaa !28
  store <2 x i64> %i.r, ptr %i.c, align 8, !tbaa !28
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.s = load i64, ptr %i.b, align 8, !tbaa !28
  store ptr %i.g, ptr %0, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load <2 x i64>, ptr %i.t, align 8, !tbaa !28
  store <2 x i64> %i.u, ptr %i.c, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.e, ptr %4, align 8, !tbaa !42
  store i64 %i.s, ptr %i.h, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %4, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.v = phi ptr [ %i.e, %bb.g ], [ %i.h, %bb.h ], [ %i.g, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !27
  store i8 0, ptr %i.v, align 1, !tbaa !28
  %i.x = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !27
  %i.ab = add i64 %i.aa, -4611686018427387898
  %i.ac = icmp ult i64 %i.ab, 6
  br i1 %i.ac, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !274
  %.not512 = icmp eq ptr %i.af, null
  br i1 %.not512, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit139, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ag = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14OnConflictInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !248
  %i.ai = icmp eq i8 %i.ah, 3
  br i1 %i.ai, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit139

bb.k:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !27
  %i.ak = add i64 %i.aj, -4611686018427387893
  %i.al = icmp ult i64 %i.ak, 11
  br i1 %i.al, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i136: ; preds = %bb.k
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.31, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit139 unwind label %bb.m ; 0 uses

bb.l:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.fu

bb.m:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.aj, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i136, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.036.not = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ false, %bb.j ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i136 ]
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !27
  %i.aq = add i64 %i.ap, -4611686018427387898
  %i.ar = icmp ult i64 %i.aq, 6
  br i1 %i.ar, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit139
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.32, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit143 unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i140
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit143
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 noundef signext 34, i1 noundef zeroext true, i8 noundef zeroext 4)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !27, !noalias !338
  %i.az = icmp eq i64 %i.ay, 4611686018427387903
  br i1 %i.az, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i144

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc147 unwind label %bb.u

.noexc147:                                        ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i144: ; preds = %bb.o
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.33, i64 noundef 1)
          to label %.noexc148 unwind label %bb.u  ; 6 uses

.noexc148:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i144
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.bb, ptr %5, align 8, !tbaa !26, !alias.scope !338
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

bb.q:                                             ; preds = %.noexc148
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !27 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false)
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %.noexc148
  store ptr %i.bc, ptr %5, align 8, !tbaa !42, !alias.scope !338
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !28
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !28, !alias.scope !338
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre.i146 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.q
  %i.bk = phi i64 [ %i.bg, %bb.q ], [ %.pre.i146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !27, !alias.scope !338
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !42
  store i64 0, ptr %i.bl, align 8, !tbaa !27
  store i8 0, ptr %i.bd, align 8, !tbaa !28
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !27 ; 2 uses
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !27
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc149 unwind label %bb.v

.noexc149:                                        ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.r
  %i.br = load ptr, ptr %5, align 8, !tbaa !42
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.br, i64 noundef %i.bn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.v ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bt = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bb
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.bt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  %i.bv = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  call void @_ZdlPv(ptr noundef %i.bv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.w

bb.t:                                             ; preds = %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i144, %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !42    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.cb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.u ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %i.ca, %bb.v ] ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  call void @_ZdlPv(ptr noundef %i.cd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.by, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.fu

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit143
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !27
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i8 noundef signext 34, i1 noundef zeroext true, i8 noundef zeroext 4)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !27, !noalias !341
  %i.cm = icmp eq i64 %i.cl, 4611686018427387903
  br i1 %i.cm, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i163

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc167 unwind label %bb.ae

.noexc167:                                        ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i163: ; preds = %bb.y
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.33, i64 noundef 1)
          to label %.noexc168 unwind label %bb.ae ; 6 uses

.noexc168:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i163
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.co, ptr %7, align 8, !tbaa !26, !alias.scope !341
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !42 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 5 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

bb.aa:                                            ; preds = %.noexc168
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !27 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nuw nsw i64 %i.ct, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %i.cq, i64 %i.cv, i1 false)
  br label %bb.ab
end_hunk_0
begin_hunk_1_@_ZNK6duckdb15InsertStatement8ToStringB5cxx11Ev:bb.a
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.iw, ptr %i.a, align 8, !tbaa !38
  %i.ix = icmp ugt i64 %i.iw, 15
  br i1 %i.ix, label %.noexc.i251, label %._crit_edge.i.i250

.noexc.i251:                                      ; preds = %bb.bf
  %i.iy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc252 unwind label %bb.bv ; 2 uses

.noexc252:                                        ; preds = %.noexc.i251
  store ptr %i.iy, ptr %15, align 8, !tbaa !42
  %i.iz = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.iz, ptr %i.it, align 8, !tbaa !28
  br label %._crit_edge.i.i250

._crit_edge.i.i250:                               ; preds = %.noexc252, %bb.bf
  %i.ja = phi ptr [ %i.iy, %.noexc252 ], [ %i.it, %bb.bf ] ; 2 uses
  switch i64 %i.iw, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %bb.bi
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i250
  %i.jb = load i8, ptr %i.iu, align 1, !tbaa !28
  store i8 %i.jb, ptr %i.ja, align 1, !tbaa !28
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge.i.i250
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr align 1 %i.iu, i64 %i.iw, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %._crit_edge.i.i250
  %i.jc = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.jc, ptr %i.jd, align 8, !tbaa !27
  %i.je = load ptr, ptr %15, align 8, !tbaa !42
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jc
  store i8 0, ptr %i.jf, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.jg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  store ptr %i.jg, ptr %16, align 8, !tbaa !26
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i64 0, ptr %i.jh, align 8, !tbaa !27
  store i8 0, ptr %i.jg, align 8, !tbaa !28
  invoke void @_ZNK6duckdb12optional_ptrINS_17ExpressionListRefELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bj unwind label %bb.bw

bb.bj:                                            ; preds = %bb.bi
  %i.ji = load ptr, ptr %14, align 8, !tbaa !350  ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 5 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !42 ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  %i.jn = load ptr, ptr %16, align 8, !tbaa !42   ; 6 uses
  %i.jo = icmp eq ptr %i.jn, %i.jg                ; 2 uses
  br i1 %i.jm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i261: ; preds = %bb.bj
  br i1 %i.jo, label %bb.bk, label %.thread.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i255: ; preds = %bb.bj
  br i1 %i.jo, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i256

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i261
  %i.jp = load i64, ptr %i.jh, align 8, !tbaa !27 ; 3 uses
  %i.jq = icmp ult i64 %i.jp, 16
  call void @llvm.assume(i1 %i.jq)
  %.not21.i258 = icmp eq ptr %16, %i.jj
  br i1 %.not21.i258, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit263, label %bb.bl, !prof !44

bb.bl:                                            ; preds = %bb.bk
  switch i64 %i.jp, label %bb.bn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i259
    i64 1, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !28
  store i8 %i.jr, ptr %i.jk, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i259

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jk, ptr align 1 %i.jn, i64 %i.jp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i259: ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.js = load i64, ptr %i.jh, align 8, !tbaa !27 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store i64 %i.js, ptr %i.jt, align 8, !tbaa !27
  %i.ju = load ptr, ptr %i.jj, align 8, !tbaa !42
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.js
  store i8 0, ptr %i.jv, align 1, !tbaa !28
  %.pre.i260 = load ptr, ptr %16, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit263

.thread.i262:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i261
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store ptr %i.jn, ptr %i.jj, align 8, !tbaa !42
  %i.jx = load <2 x i64>, ptr %i.jh, align 8, !tbaa !28
  store <2 x i64> %i.jx, ptr %i.jw, align 8, !tbaa !28
  br label %bb.bp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i256: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i255
  %i.jy = load i64, ptr %i.jl, align 8, !tbaa !28
  store ptr %i.jn, ptr %i.jj, align 8, !tbaa !42
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.ka = load <2 x i64>, ptr %i.jh, align 8, !tbaa !28
  store <2 x i64> %i.ka, ptr %i.jz, align 8, !tbaa !28
  %.not.i257 = icmp eq ptr %i.jk, null
  br i1 %.not.i257, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i256
  store ptr %i.jk, ptr %16, align 8, !tbaa !42
  store i64 %i.jy, ptr %i.jg, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit263

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i256, %.thread.i262
  store ptr %i.jg, ptr %16, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit263: ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i259, %bb.bo, %bb.bp
  %i.kb = phi ptr [ %i.jk, %bb.bo ], [ %i.jg, %bb.bp ], [ %i.jn, %bb.bk ], [ %.pre.i260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i259 ]
  store i64 0, ptr %i.jh, align 8, !tbaa !27
  store i8 0, ptr %i.kb, align 1, !tbaa !28
  %i.kc = load ptr, ptr %16, align 8, !tbaa !42   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.jg
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit263
  call void @_ZdlPv(ptr noundef %i.kc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit263, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNK6duckdb12optional_ptrINS_17ExpressionListRefELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bq unwind label %bb.bx

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.ke = load ptr, ptr %14, align 8, !tbaa !350  ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !29
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  invoke void %i.kh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(176) %i.ke)
          to label %bb.br unwind label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !27 ; 2 uses
  %i.kk = load i64, ptr %i.c, align 8, !tbaa !27
  %i.kl = sub i64 4611686018427387903, %i.kk
  %i.km = icmp ult i64 %i.kl, %i.kj
  br i1 %i.km, label %bb.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i269

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc270 unwind label %bb.by

.noexc270:                                        ; preds = %bb.bs
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i269: ; preds = %bb.br
  %i.kn = load ptr, ptr %17, align 8, !tbaa !42
  %i.ko = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.kn, i64 noundef %i.kj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit272 unwind label %bb.by ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i269
  %i.kp = load ptr, ptr %17, align 8, !tbaa !42   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit272
  call void @_ZdlPv(ptr noundef %i.kp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  invoke void @_ZNK6duckdb12optional_ptrINS_17ExpressionListRefELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.ks = load ptr, ptr %14, align 8, !tbaa !350
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.kt, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bt
  %i.ku = load ptr, ptr %15, align 8, !tbaa !42   ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.it
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.ku) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304

bb.bu:                                            ; preds = %.invoke775, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit248
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.bv:                                            ; preds = %.noexc.i251, %bb.be
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

bb.bw:                                            ; preds = %bb.bi
  %i.ky = landingpad { ptr, i32 }
          cleanup
  %i.kz = load ptr, ptr %16, align 8, !tbaa !42   ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.jg
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.bw
  call void @_ZdlPv(ptr noundef %i.kz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.ca

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %bb.bq
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i269, %bb.bs
  %i.lc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ld = load ptr, ptr %17, align 8, !tbaa !42   ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %bb.by
  call void @_ZdlPv(ptr noundef %i.ld) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %bb.bx
  %.pn95 = phi { ptr, i32 } [ %i.lb, %bb.bx ], [ %i.lc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ], [ %i.lc, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  %.pn97 = phi { ptr, i32 } [ %i.lg, %bb.bz ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284 ] ; 2 uses
  %i.lh = load ptr, ptr %15, align 8, !tbaa !42   ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.it
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %bb.ca
  call void @_ZdlPv(ptr noundef %i.lh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, %bb.bv
  %.pn97.pn = phi { ptr, i32 } [ %i.kx, %bb.bv ], [ %.pn97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288 ], [ %.pn97, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.ft

bb.cb:                                            ; preds = %bb.bd
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !313
  %.not515 = icmp eq ptr %i.lk, null
  br i1 %.not515, label %bb.ci, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.ll = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lj)
          to label %bb.cd unwind label %bb.cg     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !29
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8
  invoke void %i.lo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(128) %i.ll)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.lp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !27 ; 2 uses
  %i.lr = load i64, ptr %i.c, align 8, !tbaa !27
  %i.ls = sub i64 4611686018427387903, %i.lr
  %i.lt = icmp ult i64 %i.ls, %i.lq
  br i1 %i.lt, label %bb.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i291

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc292 unwind label %bb.ch

.noexc292:                                        ; preds = %bb.cf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i291: ; preds = %bb.ce
  %i.lu = load ptr, ptr %18, align 8, !tbaa !42
  %i.lv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.lu, i64 noundef %i.lq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit294 unwind label %bb.ch ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i291
  %i.lw = load ptr, ptr %18, align 8, !tbaa !42   ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit294
  call void @_ZdlPv(ptr noundef %i.lw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304

bb.cg:                                            ; preds = %bb.cd, %bb.cc
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i291, %bb.cf
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mb = load ptr, ptr %18, align 8, !tbaa !42   ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %bb.ch
  call void @_ZdlPv(ptr noundef %i.mb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298, %bb.cg
  %.pn93 = phi { ptr, i32 } [ %i.lz, %bb.cg ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %i.ma, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.ft

bb.ci:                                            ; preds = %bb.cb
  %i.me = load i64, ptr %i.c, align 8, !tbaa !27
  %i.mf = add i64 %i.me, -4611686018427387890
  %i.mg = icmp ult i64 %i.mf, 14
  br i1 %i.mg, label %.invoke775, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i301: ; preds = %bb.ci
  %i.mh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304 unwind label %bb.bu ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  br i1 %.036.not, label %bb.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304
  %i.mi = load ptr, ptr %i.ae, align 8, !tbaa !274
  %.not516 = icmp eq ptr %i.mi, null
  br i1 %.not516, label %bb.ev, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304.a
  %i.mj = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb10unique_ptrINS_14OnConflictInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.ck unwind label %bb.cn     ; 5 uses

bb.ck:                                            ; preds = %bb.cj
  %i.mk = load i64, ptr %i.c, align 8, !tbaa !27
  %i.ml = add i64 %i.mk, -4611686018427387891
  %i.mm = icmp ult i64 %i.ml, 13
  br i1 %i.mm, label %.invoke777, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i305: ; preds = %bb.ck
  %i.mn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.37, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit308 unwind label %bb.cn ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i305
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !269
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 4 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !269
  %i.ms = icmp eq ptr %i.mp, %i.mr
  br i1 %i.ms, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit316, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit308
  %i.mt = load i64, ptr %i.c, align 8, !tbaa !27
  %i.mu = icmp eq i64 %i.mt, 4611686018427387903
  br i1 %i.mu, label %.invoke777, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i309: ; preds = %bb.cl
  %i.mv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.19, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit312 unwind label %bb.cn ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit312: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i309
  %i.mw = load ptr, ptr %i.mo, align 8, !tbaa !269 ; 2 uses
  %i.mx = load ptr, ptr %i.mq, align 8, !tbaa !269
  %.not516611 = icmp eq ptr %i.mw, %i.mx
  br i1 %.not516611, label %._crit_edge, label %.lr.ph613

.lr.ph613:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit312
  %i.my = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  br label %bb.co

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit327, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit312
  %i.na = load i64, ptr %i.c, align 8, !tbaa !27
  %i.nb = and i64 %i.na, -2
  %i.nc = icmp eq i64 %i.nb, 4611686018427387902
  br i1 %i.nc, label %bb.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i313

bb.cm:                                            ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc314 unwind label %bb.cv

.noexc314:                                        ; preds = %bb.cm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i313: ; preds = %._crit_edge
  %i.nd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit316 unwind label %bb.cv ; 0 uses

bb.cn:                                            ; preds = %.invoke777, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i305, %bb.cj
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.co:                                            ; preds = %.lr.ph613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit327
  %.sroa.0506.0612 = phi ptr [ %i.mw, %.lr.ph613 ], [ %i.nn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit327 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0506.0612)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.nf = load i64, ptr %i.my, align 8, !tbaa !27 ; 2 uses
  %i.ng = load i64, ptr %i.c, align 8, !tbaa !27
  %i.nh = sub i64 4611686018427387903, %i.ng
  %i.ni = icmp ult i64 %i.nh, %i.nf
  br i1 %i.ni, label %bb.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i317

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc318 unwind label %.loopexit.split-lp553

.noexc318:                                        ; preds = %bb.cq
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i317: ; preds = %bb.cp
  %i.nj = load ptr, ptr %19, align 8, !tbaa !42
  %i.nk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.nj, i64 noundef %i.nf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit320 unwind label %.loopexit552 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i317
  %i.nl = load ptr, ptr %19, align 8, !tbaa !42   ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.mz
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit320
  call void @_ZdlPv(ptr noundef %i.nl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0506.0612, i64 32 ; 3 uses
  %i.no = load ptr, ptr %i.mq, align 8, !tbaa !269
  %.not517 = icmp eq ptr %i.nn, %i.no
  br i1 %.not517, label %._crit_edge, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323
  %i.np = load i64, ptr %i.c, align 8, !tbaa !27
  %i.nq = and i64 %i.np, -2
  %i.nr = icmp eq i64 %i.nq, 4611686018427387902
  br i1 %i.nr, label %bb.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i324

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc325 unwind label %.loopexit.split-lp558

.noexc325:                                        ; preds = %bb.cs
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i324: ; preds = %bb.cr
  %i.ns = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit327 unwind label %.loopexit557 ; 0 uses

bb.ct:                                            ; preds = %bb.co
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

.loopexit552:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i317
  %lpad.loopexit554 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp553:                            ; preds = %bb.cq
  %lpad.loopexit.split-lp555 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.split-lp553, %.loopexit552
  %lpad.phi556 = phi { ptr, i32 } [ %lpad.loopexit554, %.loopexit552 ], [ %lpad.loopexit.split-lp555, %.loopexit.split-lp553 ] ; 2 uses
  %i.nu = load ptr, ptr %19, align 8, !tbaa !42   ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.mz
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef %i.nu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328, %bb.ct
  %.pn100 = phi { ptr, i32 } [ %i.nt, %bb.ct ], [ %lpad.phi556, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328 ], [ %lpad.phi556, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.ft

.loopexit557:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i324
  %lpad.loopexit559 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp558:                            ; preds = %bb.cs
  %lpad.loopexit.split-lp560 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i324
  %.pre = load ptr, ptr %i.mq, align 8, !tbaa !269
  %i.nw = icmp eq ptr %i.nn, %.pre
  br i1 %i.nw, label %._crit_edge, label %bb.co, !llvm.loop !353

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i313, %bb.cm
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i313, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit308
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mj, i64 40 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !55
  %.not518 = icmp eq ptr %i.nz, null
  br i1 %.not518, label %bb.df, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit316
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.oa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ny)
          to label %bb.cx unwind label %bb.dc     ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !29
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 64
  %i.od = load ptr, ptr %i.oc, align 8
  invoke void %i.od(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(56) %i.oa)
          to label %bb.cy unwind label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %i.oe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.14, i64 noundef 7)
          to label %.noexc334 unwind label %bb.dd ; 6 uses

.noexc334:                                        ; preds = %bb.cy
  %i.of = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.of, ptr %20, align 8, !tbaa !26, !alias.scope !354
  %i.og = load ptr, ptr %i.oe, align 8, !tbaa !42 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6duckdb15InsertStatement8ToStringB5cxx11Ev:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.cont778 unwind label %bb.cn

.cont778:                                         ; preds = %.invoke777
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i366: ; preds = %bb.dk
  %i.qo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.38, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit369 unwind label %bb.cn ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i366
  %i.qp = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qj)
          to label %.preheader unwind label %bb.do ; 5 uses

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit369
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8 ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 16 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !176
  %i.qt = load ptr, ptr %i.qq, align 8, !tbaa !186
  %.not620 = icmp eq ptr %i.qs, %i.qt
  br i1 %.not620, label %._crit_edge616, label %.lr.ph615

.lr.ph615:                                        ; preds = %.preheader
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  %i.qv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 8 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  br label %bb.dp

._crit_edge616:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %.preheader
  %i.rd = load ptr, ptr %i.qp, align 8, !tbaa !55
  %.not520 = icmp eq ptr %i.rd, null
  br i1 %.not520, label %bb.ev, label %bb.em

bb.dl:                                            ; preds = %bb.df
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

bb.dm:                                            ; preds = %bb.dg
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i356, %bb.dj
  %i.rg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rh = load ptr, ptr %22, align 8, !tbaa !42   ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.pm
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %bb.dn
  call void @_ZdlPv(ptr noundef %i.rh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370, %bb.dm
  %.pn108 = phi { ptr, i32 } [ %i.rf, %bb.dm ], [ %i.rg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ], [ %i.rg, %bb.dn ] ; 2 uses
  %i.rj = load ptr, ptr %23, align 8, !tbaa !42   ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rl = icmp eq ptr %i.rj, %i.rk
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  call void @_ZdlPv(ptr noundef %i.rj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373, %bb.dl
  %.pn108.pn = phi { ptr, i32 } [ %i.re, %bb.dl ], [ %.pn108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373 ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.ft

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit369
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.dp:                                            ; preds = %.lr.ph615, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %.037614 = phi i64 [ 0, %.lr.ph615 ], [ %i.uj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ] ; 4 uses
  %i.rn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qq, i64 noundef %.037614)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.ro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qu, i64 noundef %.037614)
          to label %bb.dr unwind label %.loopexit532

bb.dr:                                            ; preds = %bb.dq
  %.not114 = icmp eq i64 %.037614, 0
  br i1 %.not114, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit379, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.rp = load i64, ptr %i.c, align 8, !tbaa !27
  %i.rq = and i64 %i.rp, -2
  %i.rr = icmp eq i64 %i.rq, 4611686018427387902
  br i1 %i.rr, label %bb.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i376

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc377 unwind label %.loopexit.split-lp533

.noexc377:                                        ; preds = %bb.dt
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i376: ; preds = %bb.ds
  %i.rs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit379 unwind label %.loopexit532 ; 0 uses

bb.du:                                            ; preds = %bb.dp
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit532:                                     ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i376
  %lpad.loopexit534 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp533:                            ; preds = %bb.dt
  %lpad.loopexit.split-lp535 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit379: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i376, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %i.rn)
          to label %bb.dv unwind label %bb.ej

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit379
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ru = load i64, ptr %i.qv, align 8, !tbaa !27, !noalias !360
  %i.rv = add i64 %i.ru, -4611686018427387901
  %i.rw = icmp ult i64 %i.rv, 3
  br i1 %i.rw, label %bb.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i380

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc384 unwind label %.loopexit.split-lp538

.noexc384:                                        ; preds = %bb.dw
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i380: ; preds = %bb.dv
  %i.rx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.39, i64 noundef 3)
          to label %.noexc385 unwind label %.loopexit537 ; 6 uses

.noexc385:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i380
  store ptr %i.qw, ptr %25, align 8, !tbaa !26, !alias.scope !360
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !42 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 16 ; 5 uses
  %i.sa = icmp eq ptr %i.ry, %i.rz
  br i1 %i.sa, label %bb.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

bb.dx:                                            ; preds = %.noexc385
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !27 ; 3 uses
  %i.sd = icmp ult i64 %i.sc, 16
  call void @llvm.assume(i1 %i.sd)
  %i.se = add nuw nsw i64 %i.sc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qw, ptr noundef nonnull align 8 dereferenceable(1) %i.rz, i64 %i.se, i1 false)
  br label %bb.dy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %.noexc385
  store ptr %i.ry, ptr %25, align 8, !tbaa !42, !alias.scope !360
  %i.sf = load i64, ptr %i.rz, align 8, !tbaa !28
  store i64 %i.sf, ptr %i.qw, align 8, !tbaa !28, !alias.scope !360
  %.phi.trans.insert.i382 = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %.pre.i383 = load i64, ptr %.phi.trans.insert.i382, align 8, !tbaa !27
  br label %bb.dy

bb.dy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381, %bb.dx
  %i.sg = phi i64 [ %i.sc, %bb.dx ], [ %.pre.i383, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381 ]
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store i64 %i.sg, ptr %i.qx, align 8, !tbaa !27, !alias.scope !360
  store ptr %i.rz, ptr %i.rx, align 8, !tbaa !42
  store i64 0, ptr %i.sh, align 8, !tbaa !27
  store i8 0, ptr %i.rz, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.si = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ro)
          to label %bb.dz unwind label %bb.ek     ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !29
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 64
  %i.sl = load ptr, ptr %i.sk, align 8
  invoke void %i.sl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(56) %i.si)
          to label %bb.ea unwind label %bb.ek

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.sm = load i64, ptr %i.qx, align 8, !tbaa !27, !noalias !363 ; 4 uses
  %i.sn = load i64, ptr %i.qy, align 8, !tbaa !27, !noalias !363 ; 4 uses
  %i.so = add i64 %i.sn, %i.sm                    ; 2 uses
  %i.sp = load ptr, ptr %25, align 8, !tbaa !42, !noalias !363 ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.qw
  br i1 %i.sq, label %bb.eb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

bb.eb:                                            ; preds = %bb.ea
  %i.sr = icmp ult i64 %i.sm, 16
  call void @llvm.assume(i1 %i.sr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %bb.ea
  %34 = load i64, ptr %i.qw, align 8, !tbaa !28, !noalias !363
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387, %bb.eb
  %35 = phi i64 [ %34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387 ], [ 15, %bb.eb ]
  %i.ss = icmp ugt i64 %i.so, %35
  br i1 %i.ss, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.st = load ptr, ptr %27, align 8, !tbaa !42, !noalias !363
  %i.su = icmp eq ptr %i.st, %i.qz
  br i1 %i.su, label %bb.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

bb.ed:                                            ; preds = %bb.ec
  %i.sv = icmp ult i64 %i.sn, 16
  call void @llvm.assume(i1 %i.sv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.ec
  %36 = load i64, ptr %i.qz, align 8, !tbaa !28, !noalias !363
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %bb.ed
  %37 = phi i64 [ %36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %bb.ed ]
  %.not.i388 = icmp ugt i64 %i.so, %37
  br i1 %.not.i388, label %bb.ef, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i
  %i.sw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef 0, i64 noundef 0, ptr noundef %i.sp, i64 noundef %i.sm)
          to label %.noexc390 unwind label %.loopexit542 ; 5 uses

.noexc390:                                        ; preds = %.critedge.i
  store ptr %i.ra, ptr %24, align 8, !tbaa !26, !alias.scope !363
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !42 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 16 ; 5 uses
  %i.sz = icmp eq ptr %i.sx, %i.sy
  br i1 %i.sz, label %bb.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

bb.ee:                                            ; preds = %.noexc390
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !27 ; 2 uses
  %i.tc = icmp ult i64 %i.tb, 16
  call void @llvm.assume(i1 %i.tc)
  %i.td = add nuw nsw i64 %i.tb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ra, ptr noundef nonnull align 8 dereferenceable(1) %i.sy, i64 %i.td, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %.noexc390
  store ptr %i.sx, ptr %24, align 8, !tbaa !42, !alias.scope !363
  %i.te = load i64, ptr %i.sy, align 8, !tbaa !28
  store i64 %i.te, ptr %i.ra, align 8, !tbaa !28, !alias.scope !363
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389, %bb.ee
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sw, i64 8 ; 2 uses
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !27
  store i64 %i.tg, ptr %i.rb, align 8, !tbaa !27, !alias.scope !363
  store ptr %i.sy, ptr %i.sw, align 8, !tbaa !42
  store i64 0, ptr %i.tf, align 8, !tbaa !27
  store i8 0, ptr %i.sy, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.th = sub i64 4611686018427387903, %i.sm
  %i.ti = icmp ult i64 %i.th, %i.sn
  br i1 %i.ti, label %bb.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i387

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc391 unwind label %.loopexit.split-lp543

.noexc391:                                        ; preds = %bb.eg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i387: ; preds = %bb.ef
  %i.tj = load ptr, ptr %27, align 8, !tbaa !42, !noalias !363
  %i.tk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %i.tj, i64 noundef %i.sn)
          to label %.noexc392 unwind label %.loopexit542 ; 5 uses

.noexc392:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i387
  store ptr %i.ra, ptr %24, align 8, !tbaa !26, !alias.scope !363
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !42 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 16 ; 5 uses
  %i.tn = icmp eq ptr %i.tl, %i.tm
  br i1 %i.tn, label %bb.eh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i

bb.eh:                                            ; preds = %.noexc392
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !27 ; 2 uses
  %i.tq = icmp ult i64 %i.tp, 16
  call void @llvm.assume(i1 %i.tq)
  %i.tr = add nuw nsw i64 %i.tp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ra, ptr noundef nonnull align 8 dereferenceable(1) %i.tm, i64 %i.tr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i: ; preds = %.noexc392
  store ptr %i.tl, ptr %24, align 8, !tbaa !42, !alias.scope !363
  %i.ts = load i64, ptr %i.tm, align 8, !tbaa !28
  store i64 %i.ts, ptr %i.ra, align 8, !tbaa !28, !alias.scope !363
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i, %bb.eh
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tk, i64 8 ; 2 uses
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !27
  store i64 %i.tu, ptr %i.rb, align 8, !tbaa !27, !alias.scope !363
  store ptr %i.tm, ptr %i.tk, align 8, !tbaa !42
  store i64 0, ptr %i.tt, align 8, !tbaa !27
  store i8 0, ptr %i.tm, align 8, !tbaa !28
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.tv = load i64, ptr %i.rb, align 8, !tbaa !27 ; 2 uses
  %i.tw = load i64, ptr %i.c, align 8, !tbaa !27
  %i.tx = sub i64 4611686018427387903, %i.tw
  %i.ty = icmp ult i64 %i.tx, %i.tv
  br i1 %i.ty, label %bb.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i393

bb.ei:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc394 unwind label %.loopexit.split-lp548

.noexc394:                                        ; preds = %bb.ei
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i393: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.tz = load ptr, ptr %24, align 8, !tbaa !42
  %i.ua = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.tz, i64 noundef %i.tv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit396 unwind label %.loopexit547 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i393
  %i.ub = load ptr, ptr %24, align 8, !tbaa !42   ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %i.ra
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit396
  call void @_ZdlPv(ptr noundef %i.ub) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
  %i.ud = load ptr, ptr %27, align 8, !tbaa !42   ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.qz
  br i1 %i.ue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  call void @_ZdlPv(ptr noundef %i.ud) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.uf = load ptr, ptr %25, align 8, !tbaa !42   ; 2 uses
  %i.ug = icmp eq ptr %i.uf, %i.qw
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  call void @_ZdlPv(ptr noundef %i.uf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  %i.uh = load ptr, ptr %26, align 8, !tbaa !42   ; 2 uses
  %i.ui = icmp eq ptr %i.uh, %i.rc
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  call void @_ZdlPv(ptr noundef %i.uh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.uj = add nuw i64 %.037614, 1                 ; 2 uses
  %i.uk = load ptr, ptr %i.qr, align 8, !tbaa !176
  %i.ul = load ptr, ptr %i.qq, align 8, !tbaa !186
  %i.um = ptrtoint ptr %i.uk to i64
  %i.un = ptrtoint ptr %i.ul to i64
  %i.uo = sub i64 %i.um, %i.un
  %i.up = ashr exact i64 %i.uo, 5
  %i.uq = icmp ult i64 %i.uj, %i.up
  br i1 %i.uq, label %bb.dp, label %._crit_edge616, !llvm.loop !366

bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit379
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

.loopexit537:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i380
  %lpad.loopexit539 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

.loopexit.split-lp538:                            ; preds = %bb.dw
  %lpad.loopexit.split-lp540 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

bb.ek:                                            ; preds = %bb.dz, %bb.dy
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

.loopexit542:                                     ; preds = %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i387
  %lpad.loopexit544 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

.loopexit.split-lp543:                            ; preds = %bb.eg
  %lpad.loopexit.split-lp545 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

.loopexit547:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i393
  %lpad.loopexit549 = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

.loopexit.split-lp548:                            ; preds = %bb.ei
  %lpad.loopexit.split-lp550 = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.el:                                            ; preds = %.loopexit.split-lp548, %.loopexit547
  %lpad.phi551 = phi { ptr, i32 } [ %lpad.loopexit549, %.loopexit547 ], [ %lpad.loopexit.split-lp550, %.loopexit.split-lp548 ] ; 2 uses
  %i.ut = load ptr, ptr %24, align 8, !tbaa !42   ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.ra
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %bb.el
  call void @_ZdlPv(ptr noundef %i.ut) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %bb.el, %.loopexit542, %.loopexit.split-lp543, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409
  %.pn115 = phi { ptr, i32 } [ %lpad.phi551, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %lpad.loopexit.split-lp545, %.loopexit.split-lp543 ], [ %lpad.loopexit544, %.loopexit542 ], [ %lpad.phi551, %bb.el ] ; 2 uses
  %i.uv = load ptr, ptr %27, align 8, !tbaa !42   ; 2 uses
  %i.uw = icmp eq ptr %i.uv, %i.qz
  br i1 %i.uw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  call void @_ZdlPv(ptr noundef %i.uv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412, %bb.ek
  %.pn115.pn = phi { ptr, i32 } [ %i.us, %bb.ek ], [ %.pn115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412 ], [ %.pn115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.ux = load ptr, ptr %25, align 8, !tbaa !42   ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.qw
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  call void @_ZdlPv(ptr noundef %i.ux) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, %.loopexit537, %.loopexit.split-lp538, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415
  %.pn115.pn.pn = phi { ptr, i32 } [ %.pn115.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415 ], [ %lpad.loopexit.split-lp540, %.loopexit.split-lp538 ], [ %lpad.loopexit539, %.loopexit537 ], [ %.pn115.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414 ] ; 2 uses
  %i.uz = load ptr, ptr %26, align 8, !tbaa !42   ; 2 uses
  %i.va = icmp eq ptr %i.uz, %i.rc
  br i1 %i.va, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417
  call void @_ZdlPv(ptr noundef %i.uz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418, %bb.ej
  %.pn115.pn.pn.pn = phi { ptr, i32 } [ %i.ur, %bb.ej ], [ %.pn115.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418 ], [ %.pn115.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.ft

bb.em:                                            ; preds = %._crit_edge616
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.vb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qp)
          to label %bb.en unwind label %bb.es     ; 2 uses

bb.en:                                            ; preds = %bb.em
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !29
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 64
  %i.ve = load ptr, ptr %i.vd, align 8
  invoke void %i.ve(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(56) %i.vb)
          to label %bb.eo unwind label %bb.es

bb.eo:                                            ; preds = %bb.en
  %i.vf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.14, i64 noundef 7)
          to label %.noexc425 unwind label %bb.et ; 6 uses

.noexc425:                                        ; preds = %bb.eo
  %i.vg = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 5 uses
  store ptr %i.vg, ptr %28, align 8, !tbaa !26, !alias.scope !367
  %i.vh = load ptr, ptr %i.vf, align 8, !tbaa !42 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 5 uses
  %i.vj = icmp eq ptr %i.vh, %i.vi
  br i1 %i.vj, label %bb.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

bb.ep:                                            ; preds = %.noexc425
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !27 ; 3 uses
  %i.vm = icmp ult i64 %i.vl, 16
  call void @llvm.assume(i1 %i.vm)
  %i.vn = add nuw nsw i64 %i.vl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vg, ptr noundef nonnull align 8 dereferenceable(1) %i.vi, i64 %i.vn, i1 false)
  br label %bb.eq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %.noexc425
  store ptr %i.vh, ptr %28, align 8, !tbaa !42, !alias.scope !367
  %i.vo = load i64, ptr %i.vi, align 8, !tbaa !28
  store i64 %i.vo, ptr %i.vg, align 8, !tbaa !28, !alias.scope !367
  %.phi.trans.insert.i422 = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %.pre.i423 = load i64, ptr %.phi.trans.insert.i422, align 8, !tbaa !27
  br label %bb.eq

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, %bb.ep
  %i.vp = phi i64 [ %i.vl, %bb.ep ], [ %.pre.i423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ]
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vr = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 %i.vp, ptr %i.vr, align 8, !tbaa !27, !alias.scope !367
  store ptr %i.vi, ptr %i.vf, align 8, !tbaa !42
  store i64 0, ptr %i.vq, align 8, !tbaa !27
  store i8 0, ptr %i.vi, align 8, !tbaa !28
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !27 ; 2 uses
  %i.vt = load i64, ptr %i.c, align 8, !tbaa !27
  %i.vu = sub i64 4611686018427387903, %i.vt
  %i.vv = icmp ult i64 %i.vu, %i.vs
  br i1 %i.vv, label %bb.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i427

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc428 unwind label %bb.eu

.noexc428:                                        ; preds = %bb.er
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i427: ; preds = %bb.eq
  %i.vw = load ptr, ptr %28, align 8, !tbaa !42
  %i.vx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.vw, i64 noundef %i.vs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit430 unwind label %bb.eu ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit430: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i427
  %i.vy = load ptr, ptr %28, align 8, !tbaa !42   ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.vg
  br i1 %i.vz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit430
  call void @_ZdlPv(ptr noundef %i.vy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431
  %i.wa = load ptr, ptr %29, align 8, !tbaa !42   ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.wc = icmp eq ptr %i.wa, %i.wb
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433
  call void @_ZdlPv(ptr noundef %i.wa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.ev

bb.es:                                            ; preds = %bb.en, %bb.em
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

bb.et:                                            ; preds = %bb.eo
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i427, %bb.er
  %i.wf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wg = load ptr, ptr %28, align 8, !tbaa !42   ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.vg
  br i1 %i.wh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %bb.eu
  call void @_ZdlPv(ptr noundef %i.wg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %bb.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437, %bb.et
  %.pn111 = phi { ptr, i32 } [ %i.we, %bb.et ], [ %i.wf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437 ], [ %i.wf, %bb.eu ] ; 2 uses
  %i.wi = load ptr, ptr %29, align 8, !tbaa !42   ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  call void @_ZdlPv(ptr noundef %i.wi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440, %bb.es
  %.pn111.pn = phi { ptr, i32 } [ %i.wd, %bb.es ], [ %.pn111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440 ], [ %.pn111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  br label %bb.ft

bb.ev:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, %._crit_edge616, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit304
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 6 uses
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !94
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !94
  %i.wp = icmp eq ptr %i.wm, %i.wo
  br i1 %i.wp, label %.loopexit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.wq = load i64, ptr %i.c, align 8, !tbaa !27
  %i.wr = add i64 %i.wq, -4611686018427387893
  %i.ws = icmp ult i64 %i.wr, 11
  br i1 %i.ws, label %.invoke775, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i443

.invoke775:                                       ; preds = %bb.ew, %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.cont776 unwind label %bb.bu

.cont776:                                         ; preds = %.invoke775
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i443: ; preds = %bb.ew
  %i.wt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.15, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit446.preheader unwind label %bb.bu ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit446.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i443
  %i.wu = load ptr, ptr %i.wn, align 8, !tbaa !82
  %i.wv = load ptr, ptr %i.wl, align 8, !tbaa !79
  %.not621 = icmp eq ptr %i.wu, %i.wv
  br i1 %.not621, label %.loopexit, label %.lr.ph618

.lr.ph618:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit446.preheader
  %i.ww = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.wy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.xa = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %32, i64 22
  br label %bb.ex

bb.ex:                                            ; preds = %.lr.ph618, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497
  %.0617 = phi i64 [ 0, %.lr.ph618 ], [ %i.zh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497 ] ; 5 uses
  %.not124 = icmp eq i64 %.0617, 0
  br i1 %.not124, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit450, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.xf = load i64, ptr %i.c, align 8, !tbaa !27
  %i.xg = and i64 %i.xf, -2
  %i.xh = icmp eq i64 %i.xg, 4611686018427387902
  br i1 %i.xh, label %bb.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i447

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc448 unwind label %.loopexit.split-lp

.noexc448:                                        ; preds = %bb.ez
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i447: ; preds = %bb.ey
  %i.xi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit450 unwind label %.loopexit521 ; 0 uses

.loopexit521:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i447
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp:                               ; preds = %bb.ez
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i447, %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  %i.xj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.wl, i64 noundef %.0617)
          to label %bb.fa unwind label %bb.fn

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit450
  %i.xk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xj)
          to label %bb.fb unwind label %bb.fn     ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !29
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 64
  %i.xn = load ptr, ptr %i.xm, align 8
  invoke void %i.xn(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(56) %i.xk)
          to label %bb.fc unwind label %bb.fn

bb.fc:                                            ; preds = %bb.fb
  %i.xo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.wl, i64 noundef %.0617)
          to label %bb.fd unwind label %.loopexit522

bb.fd:                                            ; preds = %bb.fc
  %i.xp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xo)
          to label %bb.fe unwind label %.loopexit522

bb.fe:                                            ; preds = %bb.fd
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !27
  %i.xs = icmp eq i64 %i.xr, 0
  br i1 %i.xs, label %bb.fq, label %._crit_edge.i.i451

._crit_edge.i.i451:                               ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  store ptr %i.ww, ptr %32, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ww, ptr noundef nonnull align 1 dereferenceable(6) @.str.16, i64 6, i1 false)
  store i64 6, ptr %i.wx, align 8, !tbaa !27
  store i8 0, ptr %i.xe, align 2, !tbaa !28
  %i.xt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.wl, i64 noundef %.0617)
          to label %bb.ff unwind label %bb.fo

bb.ff:                                            ; preds = %._crit_edge.i.i451
  %i.xu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xt)
          to label %bb.fg unwind label %bb.fo

bb.fg:                                            ; preds = %bb.ff
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  invoke void @_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %i.xv, i8 noundef signext 34, i1 noundef zeroext true, i8 noundef zeroext 4)
          to label %bb.fh unwind label %bb.fo

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !370
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !370
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.xw = load ptr, ptr %2, align 8, !tbaa !142, !noalias !370 ; 3 uses
  %i.xx = load ptr, ptr %i.wy, align 8, !tbaa !145, !noalias !370 ; 2 uses
  %.not4.i.i.i.i.i455 = icmp eq ptr %i.xw, %i.xx
  br i1 %.not4.i.i.i.i.i455, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i463, label %.lr.ph.i.i.i.i.i456

.lr.ph.i.i.i.i.i456:                              ; preds = %bb.fi, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i459
  %.05.i.i.i.i.i457 = phi ptr [ %i.yc, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i459 ], [ %i.xw, %bb.fi ] ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i457, i64 32
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !42 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i457, i64 48
  %i.yb = icmp eq ptr %i.xz, %i.ya
  br i1 %i.yb, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i458

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i458: ; preds = %.lr.ph.i.i.i.i.i456
  call void @_ZdlPv(ptr noundef %i.xz) #26
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i459

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i459: ; preds = %.lr.ph.i.i.i.i.i456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i458
  %i.yc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i457, i64 64 ; 2 uses
  %.not.i.i.i.i.i460 = icmp eq ptr %i.yc, %i.xx
  br i1 %.not.i.i.i.i.i460, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i461, label %.lr.ph.i.i.i.i.i456, !llvm.loop !146

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i461: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i459
  %.pr.i.i.i462 = load ptr, ptr %2, align 8, !tbaa !142, !noalias !370
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i463

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i463: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i461, %bb.fi
  %i.yd = phi ptr [ %.pr.i.i.i462, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i461 ], [ %i.xw, %bb.fi ] ; 2 uses
  %.not.i.i1.i.i.i464 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i1.i.i.i464, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i463
  call void @_ZdlPv(ptr noundef nonnull %i.yd) #26
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fh
  %i.ye = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !370
  br label %.body466

bb.fl:                                            ; preds = %bb.fj, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !370
  %i.yf = load i64, ptr %i.wz, align 8, !tbaa !27 ; 2 uses
  %i.yg = load i64, ptr %i.xa, align 8, !tbaa !27
  %i.yh = sub i64 4611686018427387903, %i.yg
  %i.yi = icmp ult i64 %i.yh, %i.yf
  br i1 %i.yi, label %bb.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i469

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #25
          to label %.noexc470 unwind label %.loopexit.split-lp528

.noexc470:                                        ; preds = %bb.fm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i469: ; preds = %bb.fl
  %i.yj = load ptr, ptr %31, align 8, !tbaa !42
  %i.yk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.yj, i64 noundef %i.yf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit472 unwind label %.loopexit527 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit472: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i469
  %i.yl = load ptr, ptr %31, align 8, !tbaa !42   ; 2 uses
  %i.ym = icmp eq ptr %i.yl, %i.xb
  br i1 %i.ym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit472
  call void @_ZdlPv(ptr noundef %i.yl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475

end_hunk_2
