Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_transformer_tableref?download=true
inline.NumInlined: 1481
inline.NumDeleted: 926
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_11SubqueryRefESt14default_deleteIS1_ELb1EEptEv:bb.a

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_11SubqueryRefESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer13TransformFromENS_12optional_ptrIN17duckdb_libpgquery6PGListELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !330 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.153", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::unique_ptr.75", align 8 ; 16 uses
  %5 = alloca %"class.duckdb::optional_ptr.72", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::unique_ptr", align 8 ; 11 uses
  %7 = alloca %"class.duckdb::StackChecker", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::optional_ptr.72", align 8 ; 5 uses
  store ptr %2, ptr %3, align 8
  %.not76 = icmp eq ptr %2, null
  br i1 %.not76, label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit, label %bb.b

_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #17, !noalias !331 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 8, ptr %i.b, align 8, !tbaa !75, !noalias !331
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !76, !noalias !331
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !77, !noalias !331
  store i8 0, ptr %i.d, align 8, !tbaa !78, !noalias !331
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !79, !noalias !331
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !80, !noalias !331
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false), !noalias !331
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb13EmptyTableRefE, i64 16), ptr %i.a, align 8, !tbaa !82, !noalias !331
  store ptr %i.a, ptr %0, align 8, !tbaa !102
  br label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.i = load ptr, ptr %3, align 8, !tbaa !195
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !139
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.m = call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #17, !noalias !332 ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 3, ptr %i.n, align 8, !tbaa !75, !noalias !332
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !76, !noalias !332
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.q, align 8, !tbaa !77, !noalias !332
  store i8 0, ptr %i.p, align 8, !tbaa !78, !noalias !332
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.r, align 8, !tbaa !79, !noalias !332
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 -1, ptr %i.s, align 8, !tbaa !80, !noalias !332
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false), !noalias !332
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb7JoinRefE, i64 16), ptr %i.m, align 8, !tbaa !82, !noalias !332
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !noalias !332
  store i8 3, ptr %i.v, align 8, !tbaa !131, !noalias !332
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 129
  store i8 2, ptr %i.w, align 1, !tbaa !132, !noalias !332
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.x, i8 0, i64 50, i1 false), !noalias !332
  store ptr %i.m, ptr %4, align 8, !tbaa !134, !alias.scope !332
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7JoinRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 185
  store i8 1, ptr %i.z, align 1, !tbaa !333
  %i.aa = load ptr, ptr %4, align 8, !tbaa !134
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EEptEv.exit unwind label %bb.e

_ZN6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EEptEv.exit: ; preds = %bb.d
  %i.ab = load ptr, ptr %3, align 8, !tbaa !195
  %.0.in84 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.085 = load ptr, ptr %.0.in84, align 8, !tbaa !105 ; 2 uses
  %.not86 = icmp eq ptr %.085, null
  br i1 %.not86, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EEptEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.f

_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit55, %_ZN6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EEptEv.exit
  %i.ad = load ptr, ptr %4, align 8, !tbaa !134
  store ptr %i.ad, ptr %0, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.w

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit55
  %.089 = phi ptr [ %.085, %.lr.ph ], [ %.0.pre, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit55 ] ; 2 uses
  %.01188 = phi i64 [ 0, %.lr.ph ], [ %i.bz, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit55 ]
  %.01287 = phi ptr [ %i.aa, %.lr.ph ], [ %.1, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit55 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.af = load ptr, ptr %.089, align 8, !tbaa !78
  store ptr %i.af, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %5, align 8, !tbaa !197
  invoke void @_ZN6duckdb11Transformer21TransformTableRefNodeERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ag)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.01287, i64 104 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !137
  %.not77 = icmp eq ptr %i.ai, null
  br i1 %.not77, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %bb.j

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.h
  %i.aj = load ptr, ptr %6, align 8, !tbaa !137
  store ptr null, ptr %6, align 8, !tbaa !137
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !137
  br label %bb.s

bb.i:                                             ; preds = %bb.f, %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit58

bb.j:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.01287, i64 112 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !137
  %.not78 = icmp eq ptr %i.am, null
  br i1 %.not78, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit32, label %bb.k

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit32: ; preds = %bb.j
  %i.an = load ptr, ptr %6, align 8, !tbaa !137
  store ptr null, ptr %6, align 8, !tbaa !137
  store ptr %i.an, ptr %i.al, align 8, !tbaa !137
  br label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ao = load i64, ptr %4, align 8, !tbaa !134   ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 4 uses
  store ptr null, ptr %4, align 8, !tbaa !134
  %i.aq = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #17
          to label %bb.l unwind label %bb.p, !noalias !334 ; 13 uses

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i8 3, ptr %i.ar, align 8, !tbaa !75, !noalias !334
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !76, !noalias !334
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 0, ptr %i.au, align 8, !tbaa !77, !noalias !334
  store i8 0, ptr %i.at, align 8, !tbaa !78, !noalias !334
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store ptr null, ptr %i.av, align 8, !tbaa !79, !noalias !334
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store i64 -1, ptr %i.aw, align 8, !tbaa !80, !noalias !334
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i8 0, i64 40, i1 false), !noalias !334
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb7JoinRefE, i64 16), ptr %i.aq, align 8, !tbaa !82, !noalias !334
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false), !noalias !334
  store i8 3, ptr %i.az, align 8, !tbaa !131, !noalias !334
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 129
  store i8 2, ptr %i.ba, align 1, !tbaa !132, !noalias !334
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.bb, i8 0, i64 50, i1 false), !noalias !334
  %i.bc = load ptr, ptr %4, align 8, !tbaa !134   ; 3 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !134
  %.not.i.i.i.i.i33 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i33, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit36, label %_ZNKSt14default_deleteIN6duckdb7JoinRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb7JoinRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(186) %i.bc) #16, !inline_history !328
  br label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit36

_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit36: ; preds = %_ZNKSt14default_deleteIN6duckdb7JoinRefEEclEPS1_.exit.i.i.i.i.i, %bb.l
  %i.bg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7JoinRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 185
  store i8 1, ptr %i.bh, align 1, !tbaa !333
  %i.bi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7JoinRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !137 ; 3 uses
  store ptr %i.ap, ptr %i.bj, align 8, !tbaa !137
  %.not.i.i.i.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i37, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i38

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i38: ; preds = %bb.n
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bk) #16, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i38, %bb.n
  %i.bo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7JoinRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 112 ; 2 uses
  %i.bq = load ptr, ptr %6, align 8, !tbaa !137
  store ptr null, ptr %6, align 8, !tbaa !137
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !137 ; 3 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !137
  %.not.i.i.i.i.i41 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i41, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit46, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i42

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i42: ; preds = %bb.o
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.br) #16, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit46

_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit46: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i42, %bb.o
  %i.bv = load ptr, ptr %4, align 8, !tbaa !134
  br label %bb.s

bb.p:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit49

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit36
  %.sroa.066.0 = phi ptr [ null, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit ], [ %i.ap, %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit36 ]
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit49

bb.r:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i47 = icmp eq i64 %i.ao, 0
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52.sink.split

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit49: ; preds = %bb.q, %bb.p
  %.sroa.066.1 = phi ptr [ %.sroa.066.0, %bb.q ], [ %i.ap, %bb.p ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.q ], [ %i.bw, %bb.p ] ; 2 uses
  %.not.i50 = icmp eq ptr %.sroa.066.1, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52.sink.split

bb.s:                                             ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit32, %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit46, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %.1 = phi ptr [ %i.bv, %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit46 ], [ %.01287, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit32 ], [ %.01287, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit ]
  %i.bz = add i64 %.01188, 1                      ; 2 uses
  invoke void @_ZN6duckdb11Transformer10StackCheckEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::StackChecker") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 noundef %i.bz)
          to label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit55 unwind label %bb.t

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit55: ; preds = %bb.s
  %i.ca = load i64, ptr %i.ac, align 8, !tbaa !171
  %i.cb = load ptr, ptr %7, align 8, !tbaa !172, !nonnull !173, !align !174
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 200 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !193
  %i.ce = sub i64 %i.cd, %i.ca
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !193
  %.0.in.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.089, i64 8
  %.0.pre = load ptr, ptr %.0.in.phi.trans.insert, align 8, !tbaa !105 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not = icmp eq ptr %.0.pre, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit, label %bb.f, !llvm.loop !329

bb.t:                                             ; preds = %bb.s
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52

_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52.sink.split: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit49, %bb.r
  %.lcssa103.sink108 = phi ptr [ %i.ap, %bb.r ], [ %.sroa.066.1, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit49 ] ; 2 uses
  %.pn22.ph = phi { ptr, i32 } [ %i.by, %bb.r ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit49 ]
  %9 = load ptr, ptr %.lcssa103.sink108, align 8, !tbaa !82
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  call void %11(ptr noundef nonnull align 8 dereferenceable(104) %.lcssa103.sink108) #16
  br label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52

_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52: ; preds = %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52.sink.split, %bb.r, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit49, %bb.t
  %.pn22 = phi { ptr, i32 } [ %i.cf, %bb.t ], [ %i.by, %bb.r ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit49 ], [ %.pn22.ph, %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52.sink.split ] ; 2 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !137   ; 3 uses
  %.not.i56 = icmp eq ptr %i.cg, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit58, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i57

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i57: ; preds = %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !82
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.cg) #16, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit58

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit58: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i57, %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52, %bb.i
  %.pn22.pn = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %.pn22, %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit52 ], [ %.pn22, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit58
  %.pn22.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %.pn22.pn, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit58 ]
  %i.ck = load ptr, ptr %4, align 8, !tbaa !134   ; 3 uses
  %.not.i59 = icmp eq ptr %i.ck, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit61, label %_ZNKSt14default_deleteIN6duckdb7JoinRefEEclEPS1_.exit.i60

_ZNKSt14default_deleteIN6duckdb7JoinRefEEclEPS1_.exit.i60: ; preds = %bb.u
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(186) %i.ck) #16, !inline_history !10
  br label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit61

_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit61: ; preds = %bb.u, %_ZNKSt14default_deleteIN6duckdb7JoinRefEEclEPS1_.exit.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn

bb.v:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.co = load ptr, ptr %3, align 8, !tbaa !195
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !198
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78
  store ptr %i.cr, ptr %8, align 8
  call void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.cs = load ptr, ptr %8, align 8, !tbaa !197
  call void @_ZN6duckdb11Transformer21TransformTableRefNodeERN17duckdb_libpgquery6PGNodeE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit
  ret void
}

declare void @_ZN6duckdb11Transformer10StackCheckEm(ptr dead_on_unwind writable sret(%"class.duckdb::StackChecker") align 8, ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer20TransformPivotColumnERN17duckdb_libpgquery7PGPivotEb(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::PivotColumn") align 8 initializes((0, 72)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, i1 zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !337 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.duckdb::vector.48", align 16 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  %13 = alloca %"class.duckdb::unique_ptr.63", align 8 ; 9 uses
  %14 = alloca %"struct.duckdb::PivotColumnEntry", align 16 ; 16 uses
  %15 = alloca %"class.duckdb::unique_ptr.135", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 72, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !77
  store i8 0, ptr %i.b, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !157
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb11Transformer23TransformExpressionListERN17duckdb_libpgquery6PGListERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !199    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199  ; 2 uses
  %.not137143 = icmp eq ptr %i.g, %i.i
  br i1 %.not137143, label %.loopexit138, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.aa
  %.sroa.095.0144 = phi ptr [ %i.bh, %bb.aa ], [ %i.g, %bb.c ] ; 7 uses
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0144)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.n, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0144)
          to label %bb.g unwind label %.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %.thread101

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0144)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb15ParserExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_12optional_idxERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.ba unwind label %bb.l

.thread:                                          ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.thread101:                                       ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.037 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !91     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.y) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ab = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, label %.thread110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.af = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.af) #18
  br label %bb.m

.thread110:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ab) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.037, label %bb.n, label %.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.037, label %bb.n, label %.loopexit.split-lp

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %.thread101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.thread
  %.pn69.pn.pn100.ph = phi { ptr, i32 } [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.thread ], [ %i.w, %.thread101 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread110, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %.pn69.pn.pn100 = phi { ptr, i32 } [ %i.v, %.thread ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.x, %.thread110 ], [ %.pn69.pn.pn100.ph, %bb.m ]
  call void @__cxa_free_exception(ptr %i.o) #16
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.e
  %i.ai = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0144)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(56) %i.ai)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  br i1 %i.am, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.an = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.ao = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0144)
          to label %bb.s unwind label %.thread113

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %.sroa.0.0.copyload.i78 = load i64, ptr %i.ap, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %.thread117

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.aq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0144)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.aq)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb15ParserExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_12optional_idxERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 %.sroa.0.0.copyload.i78, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.ba unwind label %bb.x

.thread113:                                       ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.thread117:                                       ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.031 = phi i1 [ false, %bb.w ], [ true, %bb.v ] ; 2 uses
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ax = load ptr, ptr %9, align 8, !tbaa !91    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.ax) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.ba = load ptr, ptr %7, align 8, !tbaa !91    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, label %.thread126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread: ; preds = %bb.t, %bb.u
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.be = load ptr, ptr %7, align 8, !tbaa !91    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread
  call void @_ZdlPv(ptr noundef %i.be) #18
  br label %bb.y

.thread126:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @_ZdlPv(ptr noundef %i.ba) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %.031, label %bb.z, label %.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %.031, label %bb.z, label %.loopexit.split-lp

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread, %.thread117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.thread
  %.pn65.pn.pn116.ph = phi { ptr, i32 } [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.thread ], [ %i.av, %.thread117 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread126, %.thread113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  %.pn65.pn.pn116 = phi { ptr, i32 } [ %i.au, %.thread113 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.aw, %.thread126 ], [ %.pn65.pn.pn116.ph, %bb.y ]
  call void @__cxa_free_exception(ptr %i.an) #16
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.095.0144, i64 8 ; 2 uses
  %.not137 = icmp eq ptr %i.bh, %i.i
  br i1 %.not137, label %.loopexit138, label %.lr.ph

bb.ab:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !340 ; 2 uses
  %.not55 = icmp eq ptr %i.bj, null
  br i1 %.not55, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  invoke void @_ZN6duckdb11Transformer19TransformStringListB5cxx11EPN17duckdb_libpgquery6PGListE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.48") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull %i.bj)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !140 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !106 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bq = load <2 x ptr>, ptr %10, align 16, !tbaa !141
  store <2 x ptr> %i.bq, ptr %i.bk, align 8, !tbaa !141
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !107
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !107
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.bl, %bb.ad ] ; 3 uses
  %i.bt = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !91 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bt) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.bn
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %bb.ad
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #18
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.ae
  %i.bx = load ptr, ptr %10, align 16, !tbaa !140 ; 3 uses
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !106 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bx, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 3 uses
  %i.bz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !91 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.bz) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cc, %i.by
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 16, !tbaa !140
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  %i.cd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bx, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cd) #18
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.loopexit138

bb.ag:                                            ; preds = %bb.ac
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ab
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.ba unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread: ; preds = %bb.ah
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.030 = phi i1 [ false, %bb.aj ], [ true, %bb.ai ] ; 2 uses
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ci = load ptr, ptr %11, align 8, !tbaa !91   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.ci) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br i1 %.030, label %bb.al, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br i1 %.030, label %bb.al, label %.loopexit.split-lp

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn131 = phi { ptr, i32 } [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ]
  call void @__cxa_free_exception(ptr %i.cf) #16
  br label %.loopexit.split-lp

.loopexit138:                                     ; preds = %bb.aa, %bb.c, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !341 ; 2 uses
  %.not57 = icmp eq ptr %i.cm, null
  br i1 %.not57, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit138
  %.0.in145 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.0146 = load ptr, ptr %.0.in145, align 8, !tbaa !105 ; 2 uses
  %.not58147 = icmp eq ptr %.0146, null
  br i1 %.not58147, label %.loopexit, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph149, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.0148 = phi ptr [ %.0146, %.lr.ph149 ], [ %.0, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.cw = load ptr, ptr %.0148, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  invoke void @_ZN6duckdb11Transformer19TransformExpressionENS_12optional_ptrIN17duckdb_libpgquery6PGNodeELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.63") align 8 %13, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr %i.cw)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %14, i8 0, i64 32, i1 false)
  store ptr %i.co, ptr %i.cn, align 16, !tbaa !76
  store i64 0, ptr %i.cp, align 8, !tbaa !77
  store i8 0, ptr %i.co, align 16, !tbaa !78
  %i.cx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ao
  %i.cz = load ptr, ptr %13, align 8, !tbaa !98
  store ptr null, ptr %13, align 8, !tbaa !98
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !98 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb11Transformer20TransformPivotColumnERN17duckdb_libpgquery7PGPivotEb:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dk = load i64, ptr %i.cq, align 8, !tbaa !98
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !98
  store ptr null, ptr %i.cq, align 8, !tbaa !98
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 3 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !76
  %i.dn = load ptr, ptr %i.cn, align 16, !tbaa !91 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.co
  br i1 %i.do, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.dp = load i64, ptr %i.cp, align 8, !tbaa !77 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dm, ptr noundef nonnull align 16 dereferenceable(1) %i.co, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorIN6duckdb16PivotColumnEntryESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ap
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !91
  %i.ds = load i64, ptr %i.co, align 16, !tbaa !78
  store i64 %i.ds, ptr %i.dm, align 8, !tbaa !78
  %.pre = load i64, ptr %i.cp, align 8, !tbaa !77
  br label %_ZNSt6vectorIN6duckdb16PivotColumnEntryESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb16PivotColumnEntryESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dt = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.dp, %bb.aq ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !77
  store ptr %i.co, ptr %i.cn, align 16, !tbaa !91
  store i64 0, ptr %i.cp, align 8, !tbaa !77
  store i8 0, ptr %i.co, align 16, !tbaa !78
  %i.dv = load ptr, ptr %i.cr, align 8, !tbaa !202
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  store ptr %i.dw, ptr %i.cr, align 8, !tbaa !202
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.ar:                                            ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  invoke void @_ZNSt6vectorIN6duckdb16PivotColumnEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr %i.de, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %_ZNSt6vectorIN6duckdb16PivotColumnEntryESaIS1_EE9push_backEOS1_.exit unwind label %bb.au

_ZNSt6vectorIN6duckdb16PivotColumnEntryESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ar
  %.pre154 = load ptr, ptr %i.cn, align 16, !tbaa !91 ; 2 uses
  %i.dx = icmp eq ptr %.pre154, %i.co
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb16PivotColumnEntryESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre154) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6duckdb16PivotColumnEntryESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb16PivotColumnEntryESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dy = load ptr, ptr %i.cq, align 8, !tbaa !98 ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i88, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !82
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(56) %i.dy) #16, !inline_history !335
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ec = load ptr, ptr %14, align 16, !tbaa !208 ; 3 uses
  %i.ed = load ptr, ptr %i.ct, align 8, !tbaa !209 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ec, %i.ed
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i ], [ %i.ec, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i) #16
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %14, align 16, !tbaa !208
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %i.ef = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ec, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb16PivotColumnEntryD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ef) #18
  br label %_ZN6duckdb16PivotColumnEntryD2Ev.exit

_ZN6duckdb16PivotColumnEntryD2Ev.exit:            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.eg = load ptr, ptr %13, align 8, !tbaa !98   ; 3 uses
  %.not.i = icmp eq ptr %i.eg, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb16PivotColumnEntryD2Ev.exit
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !82
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(56) %i.eg) #16, !inline_history !0
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb16PivotColumnEntryD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %.0.in = getelementptr inbounds nuw i8, ptr %.0148, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !105 ; 2 uses
  %.not58 = icmp eq ptr %.0, null
  br i1 %.not58, label %.loopexit, label %bb.am, !llvm.loop !336

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.d, %bb.o, %bb.p, %bb.az, %bb.b
  %lpad.loopexit.split-lp201 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.at:                                            ; preds = %bb.am
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit91

bb.au:                                            ; preds = %bb.ar, %bb.ao, %bb.an
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb16PivotColumnEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.em = load ptr, ptr %13, align 8, !tbaa !98   ; 3 uses
  %.not.i89 = icmp eq ptr %i.em, null
  br i1 %.not.i89, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i90

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i90: ; preds = %bb.au
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !82
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(56) %i.em) #16, !inline_history !0
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit91

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i90, %bb.au, %bb.at
  %.pn61 = phi { ptr, i32 } [ %i.ek, %bb.at ], [ %i.el, %bb.au ], [ %i.el, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %.preheader, %.loopexit138
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !342 ; 2 uses
  %.not59 = icmp eq ptr %i.er, null
  br i1 %.not59, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  invoke void @_ZN6duckdb11Transformer19TransformSelectNodeERN17duckdb_libpgquery6PGNodeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.135") align 8 %15, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.er, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.es = load ptr, ptr %15, align 8, !tbaa !160
  store ptr null, ptr %15, align 8, !tbaa !160
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !160 ; 3 uses
  store ptr %i.es, ptr %i.d, align 8, !tbaa !160
  %.not.i.i.i.i.i92 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i92, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.aw
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !82
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.et) #16, !inline_history !5
  %.pr = load ptr, ptr %15, align 8, !tbaa !160   ; 3 uses
  %.not.i93 = icmp eq ptr %.pr, null
  br i1 %.not.i93, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ex = load ptr, ptr %.pr, align 8, !tbaa !82
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr) #16, !inline_history !8
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.aw, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %.loopexit.split-lp

bb.ay:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %.loopexit
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !343 ; 3 uses
  %.not60 = icmp eq ptr %i.fc, null
  br i1 %.not60, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fd = load i64, ptr %i.c, align 8, !tbaa !77
  %i.fe = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fc) #16
  %i.ff = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.fd, ptr noundef nonnull %i.fc, i64 noundef %i.fe)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.az, %bb.ay
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %.thread110, %.thread126, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.al, %bb.ax, %bb.ag
  %.pn69.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn61, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit91 ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.aw, %.thread126 ], [ %i.fa, %bb.ax ], [ %i.ce, %bb.ag ], [ %.pn131, %bb.al ], [ %.pn69.pn.pn100, %bb.n ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %.pn65.pn.pn116, %bb.z ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.x, %.thread110 ], [ %lpad.loopexit.split-lp201, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb11PivotColumnD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #16
  resume { ptr, i32 } %.pn69.pn.pn.pn.pn

bb.ba:                                            ; preds = %bb.aj, %bb.w, %bb.k
  unreachable
}

declare void @_ZN6duckdb11Transformer23TransformExpressionListERN17duckdb_libpgquery6PGListERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !344 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !92

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ParserExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_12optional_idxERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !347 {
bb.a:
  %4 = alloca %"class.std::vector.288", align 8   ; 9 uses
  %5 = alloca %"class.std::unordered_map.297", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN6duckdb9Exception19InitializeExtraInfoB5cxx11ENS_12optional_idxE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.297") align 8 %5, i64 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !348
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !165, !noalias !348 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !166, !noalias !348 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #18
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !165, !noalias !348
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !348
  br label %.body

bb.e:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !348
  invoke void @_ZN6duckdb15ParserExceptionC2ERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEERSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %6, align 8, !tbaa !91     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.k) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !211  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.p, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !212 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8: ; preds = %.lr.ph.i.i.i.i7
  call void @_ZdlPv(ptr noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !91   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.v) #18
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #18
  %.not.i.i.i.i9 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i9, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i7, !llvm.loop !13

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load ptr, ptr %5, align 8, !tbaa !213
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !214
  %i.ab = shl i64 %i.aa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ab, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %5, align 8, !tbaa !213   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ac) #18
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit
end_hunk_1
