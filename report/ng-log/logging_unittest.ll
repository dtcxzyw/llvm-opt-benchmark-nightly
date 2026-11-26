Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/logging_unittest?download=true
inline.NumInlined: 4872
inline.NumDeleted: 1445
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEv:bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !70
  %fwrite = call i64 @fwrite(ptr nonnull @.str.125, i64 74, i64 1, ptr %i.e) #46 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5nglog10TestTmpDirB5cxx11Ev()
          to label %bb.b unwind label %bb.j       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75, !noalias !595
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !76, !noalias !595 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !104, !alias.scope !596
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.k, align 8, !tbaa !76, !alias.scope !596
  store i8 0, ptr %i.j, align 8, !tbaa !77, !alias.scope !596
  %i.l = add i64 %i.i, 29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.l)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !76, !alias.scope !596
  %i.n = sub i64 4611686018427387903, %i.m
  %i.o = icmp ult i64 %i.n, %i.i
  br i1 %i.o, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !76, !alias.scope !596
  %i.r = add i64 %i.q, -4611686018427387875
  %i.s = icmp ult i64 %i.r, 29
  br i1 %i.s, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.332) #43
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.126, i64 noundef 29)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !75, !alias.scope !596 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.j, align 8, !tbaa !77, !alias.scope !596
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #41
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.z = load ptr, ptr %4, align 8, !tbaa !75, !noalias !597
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !76, !noalias !597 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !104, !alias.scope !598
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !76, !alias.scope !598
  store i8 0, ptr %i.ab, align 8, !tbaa !77, !alias.scope !598
  %i.ad = add i64 %i.aa, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ad)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !76, !alias.scope !598
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.aa
  br i1 %i.ag, label %.invoke.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i60: ; preds = %bb.e
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.z, i64 noundef %i.aa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i61 unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i60
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !76, !alias.scope !598
  %i.aj = icmp eq i64 %i.ai, 4611686018427387903
  br i1 %i.aj, label %.invoke.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i62

.invoke.i.i63:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i61, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.332) #43
          to label %.cont.i.i64 unwind label %bb.f

.cont.i.i64:                                      ; preds = %.invoke.i.i63
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i61
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.61, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit67 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i62, %.invoke.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i60, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !75, !alias.scope !598 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ab
  br i1 %i.an, label %.body65, label %.body65.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i62
  invoke fastcc void @_ZL11DeleteFilesRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit67
  %i.ao = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !77
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.as = load i8, ptr @_ZN3fLB21FLAGS_drop_log_memoryE, align 1, !tbaa !68, !range !71, !noundef !72
  store i8 1, ptr @_ZN3fLB21FLAGS_drop_log_memoryE, align 1, !tbaa !68
  %i.at = load i32, ptr @_ZN3fLI16FLAGS_logbufsecsE, align 4, !tbaa !64
  store i32 0, ptr @_ZN3fLI16FLAGS_logbufsecsE, align 4, !tbaa !64
  %i.au = load ptr, ptr %4, align 8, !tbaa !75
  invoke void @_ZN5nglog17SetLogDestinationENS_11LogSeverityEPKc(i32 noundef 0, ptr noundef %i.au)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.av, ptr %6, align 8, !tbaa !104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 3000, i8 noundef signext 120)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.ay = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #45
          to label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i unwind label %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  store ptr %i.ay, ptr %7, align 8, !tbaa !149
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !150
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 2 uses
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !151
  %i.ba = ptrtoint ptr %6 to i64                  ; 2 uses
  br label %bb.n

bb.i:                                             ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"
  store ptr %i.dv, ptr %i.ax, align 8
  store ptr %i.du, ptr %i.aw, align 8
  store ptr %i.dt, ptr %7, align 8
  %.not167205 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not167205, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit67
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ab
  br i1 %i.be, label %.body65, label %.body65.sink.split

.body65.sink.split:                               ; preds = %bb.k, %bb.f
  %.sink = phi ptr [ %i.am, %bb.f ], [ %i.bd, %bb.k ]
  %.pn.ph = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.bc, %bb.k ]
  %i.bf = load i64, ptr %i.ab, align 8, !tbaa !77
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bg) #41
  br label %.body65

.body65:                                          ; preds = %.body65.sink.split, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.bc, %bb.k ], [ %.pn.ph, %.body65.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.bz

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.m:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

bb.n:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"
  %.017204 = phi i32 [ 0, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.dw, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ]
  %i.bj = phi ptr [ %i.ay, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.dv, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ] ; 12 uses
  %i.bk = phi ptr [ %i.az, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.du, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ] ; 8 uses
  %i.bl = phi ptr [ %i.ay, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.dt, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ] ; 15 uses
  %.not.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %i.bj, align 8, !tbaa !153
  %i.bm = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45
          to label %.noexc72 unwind label %.loopexit.split-lp171.loopexit ; 3 uses

.noexc72:                                         ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEEEE", i64 16), ptr %i.bm, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.ba, ptr %i.bn, align 8, !tbaa !90
  store ptr %i.bm, ptr %2, align 8, !tbaa !155
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc72
  %i.bo = load ptr, ptr %2, align 8, !tbaa !155   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %bb.p
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #40, !inline_history !572
  br label %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i"

bb.q:                                             ; preds = %.noexc72
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.bj, ptr %i.ax, align 8
  store ptr %i.bk, ptr %i.aw, align 8
  store ptr %i.bl, ptr %7, align 8
  %i.bt = load ptr, ptr %2, align 8, !tbaa !155   ; 3 uses
  %.not.i5.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i5.i.i, label %.body73, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i: ; preds = %bb.q
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #40, !inline_history !572
  br label %.body73

"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"

bb.r:                                             ; preds = %bb.n
  %i.bx = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.by = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.s, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  store ptr %i.bj, ptr %i.ax, align 8
  store ptr %i.bk, ptr %i.aw, align 8
  store ptr %i.bl, ptr %7, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #43
          to label %.noexc75 unwind label %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i4.i = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i4.i)
  %i.cg = shl nuw nsw i64 %i.cf, 3                ; 2 uses
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #45
          to label %.noexc76 unwind label %.loopexit.split-lp171.loopexit ; 11 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 0, ptr %i.ci, align 8, !tbaa !153
  %i.cj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45
          to label %.noexc.i.i unwind label %bb.w ; 3 uses

.noexc.i.i:                                       ; preds = %.noexc76
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEEEE", i64 16), ptr %i.cj, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.ba, ptr %i.ck, align 8, !tbaa !90
  store ptr %i.cj, ptr %1, align 8, !tbaa !155
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc.i.i
  %i.cl = load ptr, ptr %1, align 8, !tbaa !155   ; 3 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i71, label %bb.v, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.t
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl) #40, !inline_history !573
  br label %bb.v

bb.u:                                             ; preds = %.noexc.i.i
  %i.cp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  store ptr %i.bj, ptr %i.ax, align 8
  store ptr %i.bk, ptr %i.aw, align 8
  store ptr %i.bl, ptr %7, align 8
  %i.cq = load ptr, ptr %1, align 8, !tbaa !155   ; 3 uses
  %.not.i5.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i5.i.i.i, label %bb.y, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i: ; preds = %bb.u
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #40, !inline_history !573
  br label %bb.y

bb.v:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not10.i.i.i.i.i = icmp eq ptr %i.bl, %i.bj
  br i1 %.not10.i.i.i.i.i, label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.v
  %i.cu = add i64 %i.bx, -8
  %i.cv = sub i64 %i.cu, %i.by                    ; 3 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader379, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cy = and i64 %i.cv, -8
  %i.cz = add i64 %i.cy, 8                        ; 2 uses
  %i.da = getelementptr i8, ptr %i.ch, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.bl, i64 %i.cz
  %bound0 = icmp ult ptr %i.ch, %i.db
  %bound1 = icmp ult ptr %i.bl, %i.da
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader379, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cx, 4611686018427387900     ; 3 uses
  %i.dc = shl i64 %n.vec, 3                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ch, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %i.bl, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.df ; 2 uses
  %next.gep363 = getelementptr i8, ptr %i.bl, i64 %i.df ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.dg = getelementptr i8, ptr %next.gep363, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep363, align 8, !tbaa !102, !alias.scope !601
  %wide.load364 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !102, !alias.scope !601
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !102, !alias.scope !602, !noalias !603
  store <2 x i64> %wide.load364, ptr %i.dh, align 8, !tbaa !102, !alias.scope !602, !noalias !603
  store <2 x i64> zeroinitializer, ptr %next.gep363, align 8, !tbaa !102, !alias.scope !601
  store <2 x i64> zeroinitializer, ptr %i.dg, align 8, !tbaa !102, !alias.scope !601
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !580

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", label %.lr.ph.i.i.i.i.i.preheader379

.lr.ph.i.i.i.i.i.preheader379:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader379, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader379 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader379 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.dj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !102, !alias.scope !600
  store i64 %i.dj, ptr %.012.i.i.i.i.i, align 8, !tbaa !102, !alias.scope !599
  store i64 0, ptr %.0911.i.i.i.i.i, align 8, !tbaa !102, !alias.scope !600
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, %i.bj
  br i1 %.not.i.i.i.i.i, label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !581

bb.w:                                             ; preds = %.noexc76
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.bj, ptr %i.ax, align 8
  store ptr %i.bk, ptr %i.aw, align 8
  store ptr %i.bl, ptr %7, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body73 unwind label %bb.z

bb.y:                                             ; preds = %bb.w, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i, %bb.u
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dm, %bb.w ], [ %i.cp, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i ], [ %i.cp, %bb.u ]
  %i.do = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.dp = call ptr @__cxa_begin_catch(ptr %i.do) #40 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cg) #41
  invoke void @__cxa_rethrow() #43
          to label %bb.aa unwind label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #42
  unreachable

bb.aa:                                            ; preds = %bb.y
  unreachable

"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i": ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.v
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %bb.v ], [ %i.dd, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i.i ]
  %20 = ptrtoint ptr %i.bk to i64
  %21 = sub i64 %20, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %21) #41
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"

"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit": ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i"
  %i.dt = phi ptr [ %i.ch, %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i" ], [ %i.bl, %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i" ] ; 4 uses
  %i.du = phi ptr [ %i.ds, %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i" ], [ %i.bk, %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i" ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i" ], [ %i.bj, %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i" ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 3 uses
  %i.dw = add nuw nsw i32 %.017204, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dw, 8
  br i1 %exitcond.not, label %bb.i, label %bb.n, !llvm.loop !582

._crit_edge:                                      ; preds = %bb.ab, %bb.i
  invoke void @_ZN5nglog13FlushLogFilesENS_11LogSeverityE(i32 noundef 0)
          to label %bb.ac unwind label %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.i, %bb.ab
  %.sroa.0161.0206 = phi ptr [ %i.dx, %bb.ab ], [ %i.dt, %bb.i ] ; 3 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0161.0206)
          to label %bb.ab unwind label %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %.lr.ph
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0161.0206, i64 8
  %.not167 = icmp eq ptr %.sroa.0161.0206, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not167, label %._crit_edge, label %.lr.ph

.loopexit.split-lp171.loopexit:                   ; preds = %bb.o, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit175 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bj, ptr %i.ax, align 8
  store ptr %i.bk, ptr %i.aw, align 8
  store ptr %i.bl, ptr %7, align 8
  br label %.body73

.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %bb.s
  %lpad.loopexit.split-lp377 = landingpad { ptr, i32 }
          cleanup
  br label %.body73

bb.ac:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.dy = load ptr, ptr %4, align 8, !tbaa !75, !noalias !606
  %i.dz = load i64, ptr %i.k, align 8, !tbaa !76, !noalias !606 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.ea, ptr %9, align 8, !tbaa !104, !alias.scope !607
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.eb, align 8, !tbaa !76, !alias.scope !607
  store i8 0, ptr %i.ea, align 8, !tbaa !77, !alias.scope !607
  %i.ec = add i64 %i.dz, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ec)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !76, !alias.scope !607
  %i.ee = sub i64 4611686018427387903, %i.ed
  %i.ef = icmp ult i64 %i.ee, %i.dz
  br i1 %i.ef, label %.invoke.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i80: ; preds = %bb.ad
  %i.eg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.dy, i64 noundef %i.dz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i81 unwind label %bb.ae ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i80
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !76, !alias.scope !607
  %i.ei = icmp eq i64 %i.eh, 4611686018427387903
  br i1 %i.ei, label %.invoke.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i82

.invoke.i.i83:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i81, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.332) #43
          to label %.cont.i.i84 unwind label %bb.ae

.cont.i.i84:                                      ; preds = %.invoke.i.i83
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i81
  %i.ej = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.61, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit87 unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i82, %.invoke.i.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i80, %bb.ac
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %9, align 8, !tbaa !75, !alias.scope !607 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ea
  br i1 %i.em, label %.body85, label %.body85.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i82
  invoke fastcc void @_ZL8GetFilesRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS4_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %8)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit87
  %i.en = load ptr, ptr %9, align 8, !tbaa !75    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ea
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.af
  %i.ep = load i64, ptr %i.ea, align 8, !tbaa !77
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !138
  %i.et = load ptr, ptr %8, align 8, !tbaa !137
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 2 uses
  %i.ex = ashr exact i64 %i.ew, 5
  store i64 %i.ex, ptr %i.c, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  store i64 1, ptr %i.d, align 8, !tbaa !102
  %i.ey = icmp eq i64 %i.ew, 32
  br i1 %i.ey, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.thread, label %bb.ag, !prof !135

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  store ptr null, ptr %11, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %_ZN5nglog8internal13CheckOpStringD2Ev.exit

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  invoke void @_ZN5nglog8internal17MakeCheckOpStringImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS8_EERKT_RKT0_PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.102)
          to label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit unwind label %bb.ai

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.ag
  %.pre = load i64, ptr %11, align 8, !tbaa !90   ; 2 uses
  store i64 %.pre, ptr %10, align 8, !tbaa !90
  store ptr null, ptr %11, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %.not168 = icmp eq i64 %.pre, 0
  br i1 %.not168, label %_ZN5nglog8internal13CheckOpStringD2Ev.exit, label %bb.aj

_ZN5nglog8internal13CheckOpStringD2Ev.exit:       ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.thread, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  %i.ez = load ptr, ptr %8, align 8, !tbaa !137
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ez, i32 noundef 8)
          to label %bb.aq unwind label %bb.av

bb.ah:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit87
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %9, align 8, !tbaa !75    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ea
  br i1 %i.fc, label %.body85, label %.body85.sink.split

.body85.sink.split:                               ; preds = %bb.ah, %bb.ae
  %.sink368 = phi ptr [ %i.el, %bb.ae ], [ %i.fb, %bb.ah ]
  %.pn37.ph = phi { ptr, i32 } [ %i.ek, %bb.ae ], [ %i.fa, %bb.ah ]
  %i.fd = load i64, ptr %i.ea, align 8, !tbaa !77
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %.sink368, i64 noundef %i.fe) #41
  br label %.body85

.body85:                                          ; preds = %.body85.sink.split, %bb.ah, %bb.ae
  %.pn37 = phi { ptr, i32 } [ %i.ek, %bb.ae ], [ %i.fa, %bb.ah ], [ %.pn37.ph, %.body85.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.by

bb.ai:                                            ; preds = %bb.ag
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.ap

bb.aj:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  invoke void @_ZN5nglog15LogMessageFatalC1EPKciRKNS_8internal13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull @.str, i32 noundef 1131, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.al unwind label %bb.ao     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #43
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @_ZN5nglog8internal13CheckOpStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #40
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.invoke
end_hunk_0
begin_hunk_1_@_ZL15TestLogToStringv:bb.a

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.u, %bb.t
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7)
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn24 = phi { ptr, i32 } [ %i.az, %bb.au ], [ %i.ba, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.bd

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, %bb.x, %bb.w
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn26 = phi { ptr, i32 } [ %i.bb, %bb.ax ], [ %i.bc, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.bd

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %bb.y
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, %bb.aa, %bb.z
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn28 = phi { ptr, i32 } [ %i.bd, %bb.ba ], [ %i.be, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.aq, %bb.an, %bb.ak, %bb.ah, %bb.ae
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.bc ], [ %.pn26, %bb.az ], [ %.pn24, %bb.aw ], [ %.pn22, %bb.at ], [ %.pn20, %bb.aq ], [ %.pn18, %bb.an ], [ %.pn16, %bb.ak ], [ %.pn14, %bb.ah ], [ %.pn, %bb.ae ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.a
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.bd
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !77
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  resume { ptr, i32 } %.pn28.pn

bb.be:                                            ; preds = %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.ap, %bb.am, %bb.aj, %bb.ag, %bb.ad
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL23TestLogSinkWaitTillSentv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.TestWaitingLogSink, align 8  ; 10 uses
  %1 = alloca %"class.nglog::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.nglog::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.nglog::LogMessage", align 8 ; 7 uses
  %4 = alloca %"class.nglog::LogMessage", align 8 ; 7 uses
  %5 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 6 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %i.c = load ptr, ptr @_ZL15global_messagesB5cxx11, align 8, !tbaa !137 ; 3 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15global_messagesB5cxx11, i64 8), align 8, !tbaa !138 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !75 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !77
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL15global_messagesB5cxx11, i64 8), align 8, !tbaa !138
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18TestWaitingLogSink, i64 16), ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZN17TestLogSinkWriterC2Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.m = tail call i64 @pthread_self() #47
  store i64 %i.m, ptr %i.k, align 8, !tbaa !102
  invoke void @_ZN5nglog10AddLogSinkEPNS_7LogSinkE(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %_ZN18TestWaitingLogSinkC2Ev.exit unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17TestLogSinkWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.l) #40
  br label %bb.e

common.resume:                                    ; preds = %bb.x, %bb.aa, %bb.af, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.ar, %bb.aa ], [ %i.at, %bb.af ], [ %.pn10.pn, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  call void @_ZN5nglog7LogSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(152) %0) #40
  br label %common.resume

_ZN18TestWaitingLogSinkC2Ev.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  invoke void @_ZN5nglog10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str, i32 noundef 1439)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZN18TestWaitingLogSinkC2Ev.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.450, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZN5nglog10LogMessageC1EPKciNS_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 1440, i32 noundef 2)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.451, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.j
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN5nglog10LogMessageC1EPKciNS_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str, i32 noundef 1441, i32 noundef 1)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.452, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %bb.m
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @_ZN18TestWaitingLogSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  %i.v = load ptr, ptr @_ZL15global_messagesB5cxx11, align 8, !tbaa !90 ; 3 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15global_messagesB5cxx11, i64 8), align 8, !tbaa !90 ; 3 uses
  %.not23 = icmp eq ptr %i.v, %i.w
  br i1 %.not23, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15global_messagesB5cxx11, i64 8), align 8, !tbaa !138
  %.pre25 = load ptr, ptr @_ZL15global_messagesB5cxx11, align 8, !tbaa !137
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.x = phi ptr [ %.pre25, %._crit_edge.loopexit ], [ %i.v, %bb.n ]
  %i.y = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.w, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 5
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 3, ptr %i.b, align 8, !tbaa !102
  %i.ad = icmp eq i64 %i.ab, 96
  br i1 %i.ad, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.thread, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, !prof !135

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.thread: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %_ZN5nglog8internal13CheckOpStringD2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %._crit_edge
  call void @_ZN5nglog8internal17MakeCheckOpStringImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS8_EERKT_RKT0_PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.454)
  %.pre26 = load i64, ptr %6, align 8, !tbaa !90  ; 2 uses
  store i64 %.pre26, ptr %5, align 8, !tbaa !90
  store ptr null, ptr %6, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.not22 = icmp eq i64 %.pre26, 0
  br i1 %.not22, label %_ZN5nglog8internal13CheckOpStringD2Ev.exit, label %bb.ab

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN18TestWaitingLogSinkC2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g, %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1)
          to label %bb.q unwind label %bb.ai

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.af, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.x

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.j, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2)
          to label %bb.t unwind label %bb.ai

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn8 = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.ah, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.x

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.m, %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn10 = phi { ptr, i32 } [ %i.ai, %bb.u ], [ %i.aj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t, %bb.q
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.w ], [ %.pn8, %bb.t ], [ %.pn, %bb.q ]
  call void @_ZN18TestWaitingLogSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  br label %common.resume

.lr.ph:                                           ; preds = %bb.n, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.sroa.019.024 = phi ptr [ %i.aq, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %i.v, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @_ZN5nglog10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str, i32 noundef 1444)
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.y unwind label %bb.z       ; 2 uses

bb.y:                                             ; preds = %.lr.ph
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.453, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %bb.y
  %i.am = load ptr, ptr %.sroa.019.024, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !76
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.am, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.z ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  call void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.aq, %i.w
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %bb.y, %.lr.ph
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume

_ZN5nglog8internal13CheckOpStringD2Ev.exit:       ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.thread, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret void

bb.ab:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  invoke void @_ZN5nglog15LogMessageFatalC1EPKciRKNS_8internal13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str, i32 noundef 1446, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.ad unwind label %bb.ag     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #43
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.ab
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @_ZN5nglog8internal13CheckOpStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %common.resume

bb.ag:                                            ; preds = %bb.ac
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke void @_ZN5nglog15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #43
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.z, %bb.v, %bb.s, %bb.p
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL9TestSTREQv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit:
  %0 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %1 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %2 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %3 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %5 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %6 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %8 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %9 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %11 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %12 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %14 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %15 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %16 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %17 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %18 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %19 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %20 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %21 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %22 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %23 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %24 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %25 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
  %29 = alloca %"struct.nglog::internal::CheckOpString", align 8 ; 5 uses
  %30 = alloca %"class.std::unique_ptr", align 8  ; 3 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.nglog::LogMessageFatal", align 8 ; 6 uses
end_hunk_1
