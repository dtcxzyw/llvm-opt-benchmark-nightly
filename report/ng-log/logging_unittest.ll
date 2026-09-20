Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/logging_unittest?download=true
inline.NumInlined: 4872
inline.NumDeleted: 1444
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEv:bb.a
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.z = load ptr, ptr %4, align 8, !tbaa !73, !noalias !591
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !74, !noalias !591 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !102, !alias.scope !592
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !74, !alias.scope !592
  store i8 0, ptr %i.ab, align 8, !tbaa !75, !alias.scope !592
  %i.ad = add i64 %i.aa, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ad)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !74, !alias.scope !592
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.aa
  br i1 %i.ag, label %.invoke.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i60: ; preds = %bb.e
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.z, i64 noundef %i.aa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i61 unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i60
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !74, !alias.scope !592
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
  %i.am = load ptr, ptr %5, align 8, !tbaa !73, !alias.scope !592 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ab
  br i1 %i.an, label %.body65, label %.body65.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i62
  invoke fastcc void @_ZL11DeleteFilesRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit67
  %i.ao = load ptr, ptr %5, align 8, !tbaa !73    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !75
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.as = load i8, ptr @_ZN3fLB21FLAGS_drop_log_memoryE, align 1, !tbaa !66, !range !69, !noundef !70
  store i8 1, ptr @_ZN3fLB21FLAGS_drop_log_memoryE, align 1, !tbaa !66
  %i.at = load i32, ptr @_ZN3fLI16FLAGS_logbufsecsE, align 4, !tbaa !62
  store i32 0, ptr @_ZN3fLI16FLAGS_logbufsecsE, align 4, !tbaa !62
  %i.au = load ptr, ptr %4, align 8, !tbaa !73
  invoke void @_ZN5nglog17SetLogDestinationENS_11LogSeverityEPKc(i32 noundef 0, ptr noundef %i.au)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.av, ptr %6, align 8, !tbaa !102
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 3000, i8 noundef signext 120)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ay = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #45
          to label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i unwind label %bb.n ; 4 uses

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  store ptr %i.ay, ptr %7, align 8, !tbaa !147
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !148
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !149
  %i.ba = ptrtoint ptr %6 to i64                  ; 2 uses
  br label %bb.o

bb.i:                                             ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"
  %i.bb = load ptr, ptr %7, align 8, !tbaa !593   ; 6 uses
  %.not167182 = icmp eq ptr %i.bb, %i.di          ; 2 uses
  br i1 %.not167182, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit67
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !73    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ab
  br i1 %i.bf, label %.body65, label %.body65.sink.split

.body65.sink.split:                               ; preds = %bb.k, %bb.f
  %.sink = phi ptr [ %i.am, %bb.f ], [ %i.be, %bb.k ]
  %.pn.ph = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.bd, %bb.k ]
  %i.bg = load i64, ptr %i.ab, align 8, !tbaa !75
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bh) #41
  br label %.body65

.body65:                                          ; preds = %.body65.sink.split, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.bd, %bb.k ], [ %.pn.ph, %.body65.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.cd

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.m:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %._crit_edge
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body73

bb.o:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"
  %i.bl = phi ptr [ %i.ay, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.di, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ] ; 6 uses
  %.017181 = phi i32 [ 0, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.dj, %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit" ]
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !149
  %.not.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %i.bl, align 8, !tbaa !151
  %i.bn = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45
          to label %.noexc72 unwind label %.loopexit170 ; 3 uses

.noexc72:                                         ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEEEE", i64 16), ptr %i.bn, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.ba, ptr %i.bo, align 8, !tbaa !88
  store ptr %i.bn, ptr %2, align 8, !tbaa !153
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.noexc72
  %i.bp = load ptr, ptr %2, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i", label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %bb.q
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #40, !inline_history !570
  br label %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i"

bb.r:                                             ; preds = %.noexc72
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %2, align 8, !tbaa !153   ; 3 uses
  %.not.i5.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i5.i.i, label %.body73, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i: ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu) #40, !inline_history !570
  br label %.body73

"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i": ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.by = load ptr, ptr %i.ax, align 8, !tbaa !148
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ax, align 8, !tbaa !148
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"

bb.s:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %7, align 8, !tbaa !147   ; 5 uses
  %i.cb = ptrtoint ptr %i.bl to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.t, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #43
          to label %.noexc75 unwind label %.loopexit.split-lp171

.noexc75:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %20 = add nsw i64 %.sroa.speculated.i.i.i, %i.cf ; 2 uses
  %i.cg = icmp ult i64 %20, %i.cf
  %i.ch = call i64 @llvm.umin.i64(i64 %20, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i4.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i4.i)
  %i.cj = shl nuw nsw i64 %i.ci, 3                ; 2 uses
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #45
          to label %.noexc76 unwind label %.loopexit170 ; 6 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 0, ptr %i.cl, align 8, !tbaa !151
  %i.cm = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45
          to label %.noexc.i.i unwind label %bb.y ; 3 uses

.noexc.i.i:                                       ; preds = %.noexc76
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEEEE", i64 16), ptr %i.cm, align 8, !tbaa !31
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.ba, ptr %i.cn, align 8, !tbaa !88
  store ptr %i.cm, ptr %1, align 8, !tbaa !153
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc.i.i
  %i.co = load ptr, ptr %1, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i71, label %bb.w, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i: ; preds = %bb.u
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #40, !inline_history !571
  br label %bb.w

bb.v:                                             ; preds = %.noexc.i.i
  %i.cs = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ct = load ptr, ptr %1, align 8, !tbaa !153   ; 3 uses
  %.not.i5.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i5.i.i.i, label %bb.aa, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i: ; preds = %bb.v
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !31
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #40, !inline_history !571
  br label %bb.aa

bb.w:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ca, %i.bl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %i.ck, %bb.w ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i ], [ %i.ca, %bb.w ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !595, !noalias !594
  store i64 %i.cx, ptr %.012.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !594, !noalias !595
  store i64 0, ptr %.0911.i.i.i.i.i, align 8, !tbaa !100, !alias.scope !595, !noalias !594
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, %i.bl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !575

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.w
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ck, %bb.w ], [ %i.cz, %.lr.ph.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i33.i.i, label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cd) #41
  br label %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i"

bb.y:                                             ; preds = %.noexc76
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body73 unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i, %bb.v
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.db, %bb.y ], [ %i.cs, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i.i.i ], [ %i.cs, %bb.v ]
  %i.dd = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.de = call ptr @__cxa_begin_catch(ptr %i.dd) #40 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cj) #41
  invoke void @__cxa_rethrow() #43
          to label %bb.ac unwind label %bb.z

bb.ab:                                            ; preds = %bb.z
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #42
  unreachable

bb.ac:                                            ; preds = %bb.aa
  unreachable

"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i": ; preds = %bb.x, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit32.i.i
  store ptr %i.ck, ptr %7, align 8, !tbaa !147
  store ptr %i.da, ptr %i.ax, align 8, !tbaa !148
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.dh, ptr %i.aw, align 8, !tbaa !149
  br label %"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit"

"_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEERS0_DpOT_.exit": ; preds = %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i", %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i"
  %i.di = phi ptr [ %i.da, %"_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i" ], [ %i.bz, %"_ZNSt6threadC2IZN43Logging_DropLogMemoryConcurrentWriters_Test8TestBodyEvE3$_0JEvEEOT_DpOT0_.exit.i" ] ; 4 uses
  %i.dj = add nuw nsw i32 %.017181, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dj, 8
  br i1 %exitcond.not, label %bb.i, label %bb.o, !llvm.loop !576

.loopexit170:                                     ; preds = %bb.p, %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit172 = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.loopexit.split-lp171:                            ; preds = %bb.t
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.body73

._crit_edge:                                      ; preds = %bb.ad, %bb.i
  invoke void @_ZN5nglog13FlushLogFilesENS_11LogSeverityE(i32 noundef 0)
          to label %bb.af unwind label %bb.n

.lr.ph:                                           ; preds = %bb.i, %bb.ad
  %.sroa.0161.0183 = phi ptr [ %i.dk, %bb.ad ], [ %i.bb, %bb.i ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0161.0183)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0161.0183, i64 8 ; 2 uses
  %.not167 = icmp eq ptr %i.dk, %i.di
  br i1 %.not167, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body73

bb.af:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.dm = load ptr, ptr %4, align 8, !tbaa !73, !noalias !596
  %i.dn = load i64, ptr %i.k, align 8, !tbaa !74, !noalias !596 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.do, ptr %9, align 8, !tbaa !102, !alias.scope !597
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.dp, align 8, !tbaa !74, !alias.scope !597
  store i8 0, ptr %i.do, align 8, !tbaa !75, !alias.scope !597
  %i.dq = add i64 %i.dn, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.dq)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !74, !alias.scope !597
  %i.ds = sub i64 4611686018427387903, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.dn
  br i1 %i.dt, label %.invoke.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i80: ; preds = %bb.ag
  %i.du = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.dm, i64 noundef %i.dn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i81 unwind label %bb.ah ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i80
  %i.dv = load i64, ptr %i.dp, align 8, !tbaa !74, !alias.scope !597
  %i.dw = icmp eq i64 %i.dv, 4611686018427387903
  br i1 %i.dw, label %.invoke.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i82

.invoke.i.i83:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i81, %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.332) #43
          to label %.cont.i.i84 unwind label %bb.ah

.cont.i.i84:                                      ; preds = %.invoke.i.i83
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i81
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.61, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit87 unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i82, %.invoke.i.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i80, %bb.af
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %9, align 8, !tbaa !73, !alias.scope !597 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.do
  br i1 %i.ea, label %.body85, label %.body85.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i82
  invoke fastcc void @_ZL8GetFilesRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS4_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %8)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit87
  %i.eb = load ptr, ptr %9, align 8, !tbaa !73    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.do
end_hunk_0
begin_hunk_1_@_ZN7testing8internal15TestFactoryImplI24DeathCheckNN_Simple_TestE10CreateTestEv:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI38Logging_MaxLogSizeWhenNoTimestamp_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI38Logging_MaxLogSizeWhenNoTimestamp_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV38Logging_MaxLogSizeWhenNoTimestamp_Test, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI50Logging_MaxLogSizeAboveCapNotFlooredToMinimum_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI50Logging_MaxLogSizeAboveCapNotFlooredToMinimum_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV50Logging_MaxLogSizeAboveCapNotFlooredToMinimum_Test, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI21Logging_Basename_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI21Logging_Basename_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV21Logging_Basename_Test, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI42Logging_BasenameAppendWhenNoTimestamp_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI42Logging_BasenameAppendWhenNoTimestamp_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV42Logging_BasenameAppendWhenNoTimestamp_Test, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI30Logging_TwoProcessesWrite_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI30Logging_TwoProcessesWrite_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV30Logging_TwoProcessesWrite_Test, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI20Logging_Symlink_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI20Logging_Symlink_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV20Logging_Symlink_Test, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI22Logging_Extension_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI22Logging_Extension_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV22Logging_Extension_Test, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare i32 @glob(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @globfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !135    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #43
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #45 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !102
  %i.r = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !74   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !73
  %i.y = load i64, ptr %i.s, align 8, !tbaa !75
  store i64 %i.y, ptr %i.q, align 8, !tbaa !75
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !74
  store ptr %i.s, ptr %2, align 8, !tbaa !73
  store i64 0, ptr %i.aa, align 8, !tbaa !74
  store i8 0, ptr %i.s, align 8, !tbaa !75
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !102, !alias.scope !774, !noalias !775
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !73, !alias.scope !775, !noalias !774 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !74, !alias.scope !775, !noalias !774 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !776
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !73, !alias.scope !774, !noalias !775
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !75, !alias.scope !775, !noalias !774
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !75, !alias.scope !774, !noalias !775
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !74, !alias.scope !775, !noalias !774
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !74, !alias.scope !774, !noalias !775
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !73, !alias.scope !775, !noalias !774
  store i64 0, ptr %i.am, align 8, !tbaa !74, !alias.scope !775, !noalias !774
  store i8 0, ptr %i.ae, align 8, !tbaa !75, !alias.scope !775, !noalias !774
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !102, !alias.scope !777, !noalias !778
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !73, !alias.scope !778, !noalias !777 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !74, !alias.scope !778, !noalias !777 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !779
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !73, !alias.scope !777, !noalias !778
  %i.az = load i64, ptr %i.at, align 8, !tbaa !75, !alias.scope !778, !noalias !777
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !75, !alias.scope !777, !noalias !778
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !74, !alias.scope !778, !noalias !777
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !74, !alias.scope !777, !noalias !778
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !73, !alias.scope !778, !noalias !777
  store i64 0, ptr %i.bb, align 8, !tbaa !74, !alias.scope !778, !noalias !777
  store i8 0, ptr %i.at, align 8, !tbaa !75, !alias.scope !778, !noalias !777
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !137
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #41
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !135
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !136
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !137
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI20Logging_Wrapper_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI20Logging_Wrapper_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV20Logging_Wrapper_Test, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #41
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8MyLoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV8MyLogger, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  store i8 1, ptr %i.b, align 1, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !75
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #41
end_hunk_1
begin_hunk_2_@_ZN17TestLogSinkWriter3RunEv:bb.a
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.af ], [ %i.ea, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.am

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, %bb.s
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %bb.u, %bb.t
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn7 = phi { ptr, i32 } [ %i.eb, %bb.ai ], [ %i.ec, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.am

bb.al:                                            ; preds = %bb.aa
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah, %bb.ae, %bb.ad
  %.pn9 = phi { ptr, i32 } [ %i.ed, %bb.al ], [ %i.dx, %bb.ad ], [ %.pn7, %bb.ak ], [ %.pn, %bb.ah ], [ %i.dy, %bb.ae ]
  %i.ee = load ptr, ptr %4, align 8, !tbaa !73    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.i
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.am
  %i.eg = load i64, ptr %i.i, align 8, !tbaa !75
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn9

bb.an:                                            ; preds = %bb.aj, %bb.ag
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !286
  %i.d = icmp ugt i64 %1, -49
  br i1 %i.d, label %.noexc3.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit, !prof !128

.noexc3.i:                                        ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !287
  %i.h = sub nuw nsw i64 %.sroa.speculated, %i.e
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #45
          to label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit, !llvm.loop !981

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #40 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !88
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #41
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i, !llvm.loop !18

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #43
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #42
  unreachable

bb.e:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  unreachable

.body:                                            ; preds = %bb.c
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #40 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !287
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !286
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #43
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !281
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !88  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !282
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !283
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !281
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !88 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !282
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !283
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !284
  %i.ar = and i64 %1, 15
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !288
  ret void

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #42
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #16

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !135    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #43
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #45 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !102
  %i.s = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !74   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.u, ptr %i.a, align 8, !tbaa !100
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !73
  %i.x = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.x, ptr %i.r, align 8, !tbaa !75
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !75
  store i8 %i.z, ptr %i.y, align 1, !tbaa !75
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !74
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !102, !alias.scope !988, !noalias !989
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !73, !alias.scope !989, !noalias !988 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !74, !alias.scope !989, !noalias !988 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !990
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !73, !alias.scope !988, !noalias !989
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !75, !alias.scope !989, !noalias !988
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !75, !alias.scope !988, !noalias !989
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !74, !alias.scope !989, !noalias !988
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !74, !alias.scope !988, !noalias !989
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !73, !alias.scope !989, !noalias !988
  store i64 0, ptr %i.ao, align 8, !tbaa !74, !alias.scope !989, !noalias !988
  store i8 0, ptr %i.ag, align 8, !tbaa !75, !alias.scope !989, !noalias !988
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !102, !alias.scope !991, !noalias !992
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !73, !alias.scope !992, !noalias !991 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !74, !alias.scope !992, !noalias !991 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !993
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !73, !alias.scope !991, !noalias !992
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !75, !alias.scope !992, !noalias !991
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !75, !alias.scope !991, !noalias !992
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !74, !alias.scope !992, !noalias !991
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !74, !alias.scope !991, !noalias !992
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !73, !alias.scope !992, !noalias !991
  store i64 0, ptr %i.bd, align 8, !tbaa !74, !alias.scope !992, !noalias !991
  store i8 0, ptr %i.av, align 8, !tbaa !75, !alias.scope !992, !noalias !991
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !137
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #41
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !135
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !136
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !137
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #40 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #41
  invoke void @__cxa_rethrow() #43
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #42
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr nofreeobj noundef align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread24_M_thread_deps_never_runEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM17TestLogSinkWriterFvvEPS3_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev:bb.a

bb.l:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #42
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED0Ev(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %0) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 400) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE27MaybeDescribeExtraMatcherToEPSo(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1035, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.368, i64 noundef 19) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !210
  %i.h = icmp ne ptr %i.g, null
  %i.i = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.h)
  br i1 %i.i, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.285, i32 noundef 245)
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.286, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.k

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !210
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !240
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !260
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.354, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE9GetHandleEv(ptr dead_on_unwind noalias writable sret(%"class.testing::Expectation") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  tail call void @_ZN7testing8internal25UntypedFunctionMockerBase11GetHandleOfEPNS0_15ExpectationBaseE(ptr dead_on_unwind writable sret(%"class.testing::Expectation") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !212
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !210
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !212
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !75
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit unwind label %bb.d, !inline_history !12

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #42, !inline_history !213
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE19MatchAndExplainImplINSG_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKSG_SF_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE12DescribeImplINSG_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEvRKSG_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #0 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.514, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.515, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE16GetDescriberImplINSG_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSG_(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

declare void @_ZN7testing8internal25UntypedFunctionMockerBase11GetHandleOfEPNS0_15ExpectationBaseE(ptr dead_on_unwind writable sret(%"class.testing::Expectation") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(400) %i.b) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !257    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #43
  unreachable

_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #45 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115  ; 2 uses
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !112
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !112
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !75
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !62
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !62
  br label %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !112, !alias.scope !1044, !noalias !1043
  store ptr null, ptr %i.y, align 8, !tbaa !115, !alias.scope !1044, !noalias !1043
  store <2 x ptr> %i.z, ptr %.012.i.i.i, align 8, !tbaa !112, !alias.scope !1043, !noalias !1044
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !216, !alias.scope !1044, !noalias !1043
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !1039

_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i18 ], [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.af, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.ae = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !112, !alias.scope !1046, !noalias !1045
  store ptr null, ptr %i.ad, align 8, !tbaa !115, !alias.scope !1046, !noalias !1045
  store <2 x ptr> %i.ae, ptr %.012.i.i.i19, align 8, !tbaa !112, !alias.scope !1045, !noalias !1046
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !216, !alias.scope !1046, !noalias !1045
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !1039

_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ag, %.lr.ph.i.i.i18 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !297
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #41
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !257
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !256
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !1055
  %i.b = tail call ptr @pthread_getspecific(i32 noundef %i.a) #40 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN7testing8internal26ThreadLocalValueHolderBaseE, ptr nonnull @_ZTIN7testing8internal11ThreadLocalIPNS_8SequenceEE11ValueHolderE, i64 0) #40
  %i.d = icmp ne ptr %i.c, null
  %i.e = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.d)
  br i1 %i.e, label %_ZN7testing8internal27CheckedDowncastToActualTypeINS0_11ThreadLocalIPNS_8SequenceEE11ValueHolderENS0_26ThreadLocalValueHolderBaseEEEPT_PT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.344, i32 noundef 1154)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.519, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %_ZN7testing8internal27CheckedDowncastToActualTypeINS0_11ThreadLocalIPNS_8SequenceEE11ValueHolderENS0_26ThreadLocalValueHolderBaseEEEPT_PT0_.exit

common.resume:                                    ; preds = %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.s, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1056 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 3 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !1055
  %i.o = tail call i32 @pthread_setspecific(i32 noundef %i.n, ptr noundef %i.m) #40 ; 2 uses
  %.not12 = icmp eq i32 %i.o, 0
  br i1 %.not12, label %_ZN7testing8internal27CheckedDowncastToActualTypeINS0_11ThreadLocalIPNS_8SequenceEE11ValueHolderENS0_26ThreadLocalValueHolderBaseEEEPT_PT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.344, i32 noundef 1811)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.518, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.348, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.o)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZN7testing8internal27CheckedDowncastToActualTypeINS0_11ThreadLocalIPNS_8SequenceEE11ValueHolderENS0_26ThreadLocalValueHolderBaseEEEPT_PT0_.exit

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %common.resume

_ZN7testing8internal27CheckedDowncastToActualTypeINS0_11ThreadLocalIPNS_8SequenceEE11ValueHolderENS0_26ThreadLocalValueHolderBaseEEEPT_PT0_.exit: ; preds = %bb.e, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.b
  %.pn = phi ptr [ %i.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ %i.b, %bb.b ], [ %i.m, %bb.g ], [ %i.m, %bb.e ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #34

declare void @_ZN7testing7ExactlyEi(ptr dead_on_unwind writable sret(%"class.testing::Cardinality") align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN7testing20CardinalityInterfaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31
end_hunk_3
begin_hunk_4_@_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_SC_SC_EE21CreateVariadicMatcherIRKSA_Lm0EEEvPSt6vectorINS_7MatcherIT_EESaISK_EESt17integral_constantImXT0_EE:bb.a
  %i.k = load i64, ptr %i.j, align 8, !tbaa !75
  store i64 %i.k, ptr %i.i, align 8, !tbaa !75
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.c, align 8, !tbaa !31
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !298
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.b, align 8, !tbaa !298
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit unwind label %bb.f

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !106 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %.not.i.i4 = icmp eq ptr %i.p, null
  br i1 %.not.i.i4, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.s = atomicrmw sub ptr %i.r, i32 1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.d, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !106
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !75
  invoke void %i.w(ptr noundef %i.x)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.e, !inline_history !1

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #42, !inline_history !109
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread, %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_SC_SC_EE21CreateVariadicMatcherIRKSA_Lm1EEEvPSt6vectorINS_7MatcherIT_EESaISK_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !299    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EvT_SC_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !31
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #40, !inline_history !19
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !20

_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !299
  br label %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EvT_SC_RSaIT0_E.exit

_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EvT_SC_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EvT_SC_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EvT_SC_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #41
  br label %_ZNSt12_Vector_baseIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit

_ZNSt12_Vector_baseIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EvT_SC_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_SC_SC_EE21CreateVariadicMatcherIRKSA_Lm1EEEvPSt6vectorINS_7MatcherIT_EESaISK_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Matcher", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNK7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcvNS_7MatcherIT_EEIRKS8_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::Matcher") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.b, label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  store ptr %i.h, ptr %i.f, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !75
  store i64 %i.k, ptr %i.i, align 8, !tbaa !75
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.c, align 8, !tbaa !31
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !298
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.b, align 8, !tbaa !298
  br label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit unwind label %bb.f

_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !106 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %2, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %.not.i.i4 = icmp eq ptr %i.p, null
  br i1 %.not.i.i4, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.s = atomicrmw sub ptr %i.r, i32 1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.d, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !106
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !75
  invoke void %i.w(ptr noundef %i.x)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.e, !inline_history !1

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #42, !inline_history !109
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit.thread, %_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE9push_backEOSA_.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @_ZNK7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_SC_SC_EE21CreateVariadicMatcherIRKSA_Lm2EEEvPSt6vectorINS_7MatcherIT_EESaISK_EESt17integral_constantImXT0_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE17_M_realloc_insertIJSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !299    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #43
  unreachable

_ZNKSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.k = select i1 %i.i, i64 384307168202282325, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 24
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #45 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  store ptr %i.s, ptr %i.q, align 8, !tbaa !106
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75
  store i64 %i.v, ptr %i.t, align 8, !tbaa !75
  store ptr null, ptr %i.r, align 8, !tbaa !106
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.p, align 8, !tbaa !31
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE12_M_check_lenEmPKc.exit, %bb.d
  %.015.i.i.i.i.i = phi ptr [ %i.ah, %bb.d ], [ %i.o, %_ZNKSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.c, %_ZNKSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106  ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !75 ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !75
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  %i.ac = inttoptr i64 %i.ab to ptr
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.af = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %.015.i.i.i.i.i, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1065

_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit: ; preds = %bb.d, %_ZNKSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE12_M_check_lenEmPKc.exit ], [ %i.ah, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit37, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit, %bb.f
  %.015.i.i.i.i.i30 = phi ptr [ %i.au, %bb.f ], [ %i.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit ] ; 4 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.at, %bb.f ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !106 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !106
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !75 ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !75
  %.not.i.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.al, null
  %i.ap = inttoptr i64 %i.ao to ptr
  br i1 %.not.i.i.i.i.i.i.i.i.i32, label %bb.f, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i33

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108
  %.not.i.i.i.i.i.i.i.i34 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i33
  %i.as = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i29
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %.015.i.i.i.i.i30, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i.i.i35, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit37, label %.lr.ph.i.i.i.i.i29, !llvm.loop !1065

_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit37: ; preds = %bb.f, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit
  %.0.lcssa.i.i.i.i.i36 = phi ptr [ %i.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit ], [ %i.au, %bb.f ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit37, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit37 ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #40, !inline_history !19
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !20

_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SC_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISA_EET0_T_SE_SD_RT1_.exit37
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SC_.exit
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !183
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #41
  br label %_ZNSt12_Vector_baseIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SC_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !299
  store ptr %.0.lcssa.i.i.i.i.i36, ptr %i.a, align 8, !tbaa !298
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEcvNS_7MatcherIT_EEIRKS8_EEv(ptr dead_on_unwind noalias writable sret(%"class.testing::Matcher") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !102
  %i.e = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.g, ptr %i.a, align 8, !tbaa !100
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !73
  %i.j = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.j, ptr %i.d, align 8, !tbaa !75
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !75
  store i8 %i.l, ptr %i.k, align 1, !tbaa !75
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !74
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.q, align 8, !tbaa !106
  %i.s = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #45 ; 3 uses
  store i32 1, ptr %i.s, align 4, !tbaa !122
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = ptrtoint ptr %i.b to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !124
  store ptr %i.s, ptr %i.r, align 8, !tbaa !75
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !31
  ret void

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #41
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_4
