inline.NumInlined: 466
inline.NumDeleted: 267
begin_hunk_0_@_ZN6duckdb17StatementVerifier14CompareResultsB5cxx11ERKS0_:bb.a
  store i8 0, ptr %i.n, align 8, !tbaa !81, !alias.scope !211
  %i.p = add i64 %i.m, 41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !80, !alias.scope !211
  %i.r = sub i64 4611686018427387903, %i.q
  %i.s = icmp ult i64 %i.r, %i.m
  br i1 %i.s, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.g
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !80, !alias.scope !211
  %i.v = add i64 %i.u, -4611686018427387863
  %i.w = icmp ult i64 %i.v, 41
  br i1 %i.w, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.cont.i.i unwind label %bb.h

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, i64 noundef 41)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !34, !alias.scope !211 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.z) #21
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23MaterializedQueryResultESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.i unwind label %bb.aa      ; 2 uses

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(553) %i.ab)
          to label %bb.j unwind label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 17)
          to label %.noexc unwind label %bb.ab    ; 6 uses

.noexc:                                           ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !79, !alias.scope !214
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !34 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !80 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ah, ptr %4, align 8, !tbaa !34, !alias.scope !214
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !81
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !81, !alias.scope !214
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.ap = phi i64 [ %i.al, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !80, !alias.scope !214
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !34
  store i64 0, ptr %i.aq, align 8, !tbaa !80
  store i8 0, ptr %i.ai, align 8, !tbaa !81
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !80 ; 2 uses
  %i.at = load i64, ptr %i.o, align 8, !tbaa !80
  %i.au = sub i64 4611686018427387903, %i.at
  %i.av = icmp ult i64 %i.au, %i.as
  br i1 %i.av, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.noexc44 unwind label %bb.ac

.noexc44:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.l
  %i.aw = load ptr, ptr %4, align 8, !tbaa !34
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aw, i64 noundef %i.as)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.ac ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ay = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ag
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.ay) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.ba = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !34, !noalias !217
  %i.be = load i64, ptr %i.l, align 8, !tbaa !80, !noalias !217 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bf, ptr %7, align 8, !tbaa !79, !alias.scope !220
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !80, !alias.scope !220
  store i8 0, ptr %i.bf, align 8, !tbaa !81, !alias.scope !220
  %i.bh = add i64 %i.be, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bh)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !80, !alias.scope !220
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.be
  br i1 %i.bk, label %.invoke.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i53: ; preds = %bb.n
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bd, i64 noundef %i.be)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i54 unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i53
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !80, !alias.scope !220
  %i.bn = and i64 %i.bm, -2
  %i.bo = icmp eq i64 %i.bn, 4611686018427387902
  br i1 %i.bo, label %.invoke.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i55

.invoke.i.i56:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i54, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.cont.i.i57 unwind label %bb.o

.cont.i.i57:                                      ; preds = %.invoke.i.i56
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i54
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit60 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i55, %.invoke.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %7, align 8, !tbaa !34, !alias.scope !220 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bf
  br i1 %i.bs, label %.body58, label %.body58.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i55
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23MaterializedQueryResultESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.p unwind label %bb.ad      ; 2 uses

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit60
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  invoke void %i.bw(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(553) %i.bt)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.bx = load i64, ptr %i.bg, align 8, !tbaa !80, !noalias !223 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !80, !noalias !223 ; 4 uses
  %i.ca = add i64 %i.bz, %i.bx                    ; 2 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !34, !noalias !223 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bf                ; 2 uses
  br i1 %i.cc, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.r, %bb.q
  %15 = load i64, ptr %i.bf, align 8, !noalias !223
  %16 = select i1 %i.cc, i64 15, i64 %15
  %i.ce = icmp ugt i64 %i.ca, %16
  br i1 %i.ce, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cf = load ptr, ptr %8, align 8, !tbaa !34, !noalias !223
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg                ; 2 uses
  br i1 %i.ch, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

bb.t:                                             ; preds = %bb.s
  %i.ci = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i: ; preds = %bb.t, %bb.s
  %17 = load i64, ptr %i.cg, align 8, !noalias !223
  %18 = select i1 %i.ch, i64 15, i64 %17
  %.not.i = icmp ugt i64 %i.ca, %18
  br i1 %.not.i, label %bb.v, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.cb, i64 noundef %i.bx)
          to label %.noexc63 unwind label %bb.ae  ; 5 uses

.noexc63:                                         ; preds = %.critedge.i
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ck, ptr %6, align 8, !tbaa !79, !alias.scope !223
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !34 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 5 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

bb.u:                                             ; preds = %.noexc63
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !80 ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  %i.cr = add nuw nsw i64 %i.cp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, ptr noundef nonnull align 8 dereferenceable(1) %i.cm, i64 %i.cr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %.noexc63
  store ptr %i.cl, ptr %6, align 8, !tbaa !34, !alias.scope !223
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !81
  store i64 %i.cs, ptr %i.ck, align 8, !tbaa !81, !alias.scope !223
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !80
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !80, !alias.scope !223
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !34
  store i64 0, ptr %i.ct, align 8, !tbaa !80
  store i8 0, ptr %i.cm, align 8, !tbaa !81
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cw = sub i64 4611686018427387903, %i.bx
  %i.cx = icmp ult i64 %i.cw, %i.bz
  br i1 %i.cx, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i61

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.noexc64 unwind label %bb.ae

.noexc64:                                         ; preds = %bb.w
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i61: ; preds = %bb.v
  %i.cy = load ptr, ptr %8, align 8, !tbaa !34, !noalias !223
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.cy, i64 noundef %i.bz)
          to label %.noexc65 unwind label %bb.ae  ; 5 uses

.noexc65:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i61
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.da, ptr %6, align 8, !tbaa !79, !alias.scope !223
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !34 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 5 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i

bb.x:                                             ; preds = %.noexc65
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !80 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dg)
  %i.dh = add nuw nsw i64 %i.df, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.dh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i: ; preds = %.noexc65
  store ptr %i.db, ptr %6, align 8, !tbaa !34, !alias.scope !223
  %i.di = load i64, ptr %i.dc, align 8, !tbaa !81
  store i64 %i.di, ptr %i.da, align 8, !tbaa !81, !alias.scope !223
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i, %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !80
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !80, !alias.scope !223
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !34
  store i64 0, ptr %i.dj, align 8, !tbaa !80
  store i8 0, ptr %i.dc, align 8, !tbaa !81
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !80 ; 2 uses
  %i.do = load i64, ptr %i.o, align 8, !tbaa !80
  %i.dp = sub i64 4611686018427387903, %i.do
  %i.dq = icmp ult i64 %i.dp, %i.dn
  br i1 %i.dq, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i66

bb.y:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.noexc67 unwind label %bb.af

.noexc67:                                         ; preds = %bb.y
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i66: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.dr = load ptr, ptr %6, align 8, !tbaa !34
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dr, i64 noundef %i.dn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69 unwind label %bb.af ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i66
  %i.dt = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69
  call void @_ZdlPv(ptr noundef %i.dt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %i.dw = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  call void @_ZdlPv(ptr noundef %i.dw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.dz = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bf
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  call void @_ZdlPv(ptr noundef %i.dz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bv

bb.z:                                             ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.d, %bb.c, %bb.b, %bb.a
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.i, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ab:                                            ; preds = %bb.j
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.m
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ag
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.ef) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.ab
  %.pn35 = phi { ptr, i32 } [ %i.ed, %bb.ab ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.ee, %bb.ac ] ; 2 uses
  %i.eh = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @_ZdlPv(ptr noundef %i.eh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.aa
  %.pn35.pn = phi { ptr, i32 } [ %i.ec, %bb.aa ], [ %.pn35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ag

bb.ad:                                            ; preds = %bb.p, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit60
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i61, %bb.w, %.critedge.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i66, %bb.y
  %i.em = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN6duckdb17StatementVerifier14CompareResultsB5cxx11ERKS0_:bb.a
  store i8 0, ptr %i.fk, align 8, !tbaa !81, !alias.scope !229
  %i.fm = add i64 %i.fj, 41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fm)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !80, !alias.scope !229
  %i.fo = sub i64 4611686018427387903, %i.fn
  %i.fp = icmp ult i64 %i.fo, %i.fj
  br i1 %i.fp, label %.invoke.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i101: ; preds = %bb.ar
  %i.fq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i102 unwind label %bb.as ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i102: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i101
  %i.fr = load i64, ptr %i.fl, align 8, !tbaa !80, !alias.scope !229
  %i.fs = add i64 %i.fr, -4611686018427387863
  %i.ft = icmp ult i64 %i.fs, 41
  br i1 %i.ft, label %.invoke.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i103

.invoke.i.i104:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i102, %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.cont.i.i105 unwind label %bb.as

.cont.i.i105:                                     ; preds = %.invoke.i.i104
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i102
  %i.fu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, i64 noundef 41)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit108 unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i103, %.invoke.i.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i101, %bb.aq
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %0, align 8, !tbaa !34, !alias.scope !229 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fk
  br i1 %i.fx, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.fw) #21
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i103
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.fy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23MaterializedQueryResultESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.at unwind label %bb.bn     ; 2 uses

bb.at:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit108
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !47
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  invoke void %i.gb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(553) %i.fy)
          to label %bb.au unwind label %bb.bn

bb.au:                                            ; preds = %bb.at
  %i.gc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 17)
          to label %.noexc113 unwind label %bb.bo ; 6 uses

.noexc113:                                        ; preds = %bb.au
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.gd, ptr %9, align 8, !tbaa !79, !alias.scope !232
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !34 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 5 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

bb.av:                                            ; preds = %.noexc113
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !80 ; 3 uses
  %i.gj = icmp ult i64 %i.gi, 16
  call void @llvm.assume(i1 %i.gj)
  %i.gk = add nuw nsw i64 %i.gi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gd, ptr noundef nonnull align 8 dereferenceable(1) %i.gf, i64 %i.gk, i1 false)
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %.noexc113
  store ptr %i.ge, ptr %9, align 8, !tbaa !34, !alias.scope !232
  %i.gl = load i64, ptr %i.gf, align 8, !tbaa !81
  store i64 %i.gl, ptr %i.gd, align 8, !tbaa !81, !alias.scope !232
  %.phi.trans.insert.i110 = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.pre.i111 = load i64, ptr %.phi.trans.insert.i110, align 8, !tbaa !80
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.av
  %i.gm = phi i64 [ %i.gi, %bb.av ], [ %.pre.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.gm, ptr %i.go, align 8, !tbaa !80, !alias.scope !232
  store ptr %i.gf, ptr %i.gc, align 8, !tbaa !34
  store i64 0, ptr %i.gn, align 8, !tbaa !80
  store i8 0, ptr %i.gf, align 8, !tbaa !81
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !80 ; 2 uses
  %i.gq = load i64, ptr %i.fl, align 8, !tbaa !80
  %i.gr = sub i64 4611686018427387903, %i.gq
  %i.gs = icmp ult i64 %i.gr, %i.gp
  br i1 %i.gs, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i115

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.noexc116 unwind label %bb.bp

.noexc116:                                        ; preds = %bb.ax
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i115: ; preds = %bb.aw
  %i.gt = load ptr, ptr %9, align 8, !tbaa !34
  %i.gu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gt, i64 noundef %i.gp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit118 unwind label %bb.bp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i115
  %i.gv = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.gd
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit118
  call void @_ZdlPv(ptr noundef %i.gv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  %i.gx = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  call void @_ZdlPv(ptr noundef %i.gx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.ha = load ptr, ptr %i.fg, align 8, !tbaa !34, !noalias !235
  %i.hb = load i64, ptr %i.fi, align 8, !tbaa !80, !noalias !235 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.hc, ptr %12, align 8, !tbaa !79, !alias.scope !238
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 0, ptr %i.hd, align 8, !tbaa !80, !alias.scope !238
  store i8 0, ptr %i.hc, align 8, !tbaa !81, !alias.scope !238
  %i.he = add i64 %i.hb, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.he)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !80, !alias.scope !238
  %i.hg = sub i64 4611686018427387903, %i.hf
  %i.hh = icmp ult i64 %i.hg, %i.hb
  br i1 %i.hh, label %.invoke.i.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i128: ; preds = %bb.ay
  %i.hi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.ha, i64 noundef %i.hb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i129 unwind label %bb.az ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i129: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i128
  %i.hj = load i64, ptr %i.hd, align 8, !tbaa !80, !alias.scope !238
  %i.hk = and i64 %i.hj, -2
  %i.hl = icmp eq i64 %i.hk, 4611686018427387902
  br i1 %i.hl, label %.invoke.i.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i130

.invoke.i.i131:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i129, %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.cont.i.i132 unwind label %bb.az

.cont.i.i132:                                     ; preds = %.invoke.i.i131
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i129
  %i.hm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit135 unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i130, %.invoke.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = load ptr, ptr %12, align 8, !tbaa !34, !alias.scope !238 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.hc
  br i1 %i.hp, label %.body133, label %.body133.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit135: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i130
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.hq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23MaterializedQueryResultESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ba unwind label %bb.bq     ; 2 uses

bb.ba:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit135
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !47
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  invoke void %i.ht(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(553) %i.hq)
          to label %bb.bb unwind label %bb.bq

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.hu = load i64, ptr %i.hd, align 8, !tbaa !80, !noalias !241 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !80, !noalias !241 ; 4 uses
  %i.hx = add i64 %i.hw, %i.hu                    ; 2 uses
  %i.hy = load ptr, ptr %12, align 8, !tbaa !34, !noalias !241 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hc                ; 2 uses
  br i1 %i.hz, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136

bb.bc:                                            ; preds = %bb.bb
  %i.ia = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.ia)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136: ; preds = %bb.bc, %bb.bb
  %19 = load i64, ptr %i.hc, align 8, !noalias !241
  %20 = select i1 %i.hz, i64 15, i64 %19
  %i.ib = icmp ugt i64 %i.hx, %20
  br i1 %i.ib, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136
  %i.ic = load ptr, ptr %13, align 8, !tbaa !34, !noalias !241
  %i.id = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id                ; 2 uses
  br i1 %i.ie, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i140

bb.be:                                            ; preds = %bb.bd
  %i.if = icmp ult i64 %i.hw, 16
  call void @llvm.assume(i1 %i.if)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i140: ; preds = %bb.be, %bb.bd
  %21 = load i64, ptr %i.id, align 8, !noalias !241
  %22 = select i1 %i.ie, i64 15, i64 %21
  %.not.i141 = icmp ugt i64 %i.hx, %22
  br i1 %.not.i141, label %bb.bg, label %.critedge.i142

.critedge.i142:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i140
  %i.ig = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.hy, i64 noundef %i.hu)
          to label %.noexc145 unwind label %bb.br ; 5 uses

.noexc145:                                        ; preds = %.critedge.i142
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ih, ptr %11, align 8, !tbaa !79, !alias.scope !241
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !34 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 5 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %bb.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

bb.bf:                                            ; preds = %.noexc145
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !80 ; 2 uses
  %i.in = icmp ult i64 %i.im, 16
  call void @llvm.assume(i1 %i.in)
  %i.io = add nuw nsw i64 %i.im, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ih, ptr noundef nonnull align 8 dereferenceable(1) %i.ij, i64 %i.io, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %.noexc145
  store ptr %i.ii, ptr %11, align 8, !tbaa !34, !alias.scope !241
  %i.ip = load i64, ptr %i.ij, align 8, !tbaa !81
  store i64 %i.ip, ptr %i.ih, align 8, !tbaa !81, !alias.scope !241
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i144: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.bf
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !80
  %i.is = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !80, !alias.scope !241
  store ptr %i.ij, ptr %i.ig, align 8, !tbaa !34
  store i64 0, ptr %i.iq, align 8, !tbaa !80
  store i8 0, ptr %i.ij, align 8, !tbaa !81
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i136
  %i.it = sub i64 4611686018427387903, %i.hu
  %i.iu = icmp ult i64 %i.it, %i.hw
  br i1 %i.iu, label %bb.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i137

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.noexc146 unwind label %bb.br

.noexc146:                                        ; preds = %bb.bh
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i137: ; preds = %bb.bg
  %i.iv = load ptr, ptr %13, align 8, !tbaa !34, !noalias !241
  %i.iw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.iv, i64 noundef %i.hw)
          to label %.noexc147 unwind label %bb.br ; 5 uses

.noexc147:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i137
  %i.ix = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ix, ptr %11, align 8, !tbaa !79, !alias.scope !241
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !34 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 5 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i138

bb.bi:                                            ; preds = %.noexc147
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !80 ; 2 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nuw nsw i64 %i.jc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ix, ptr noundef nonnull align 8 dereferenceable(1) %i.iz, i64 %i.je, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i138: ; preds = %.noexc147
  store ptr %i.iy, ptr %11, align 8, !tbaa !34, !alias.scope !241
  %i.jf = load i64, ptr %i.iz, align 8, !tbaa !81
  store i64 %i.jf, ptr %i.ix, align 8, !tbaa !81, !alias.scope !241
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i139: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i138, %bb.bi
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !80
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !80, !alias.scope !241
  store ptr %i.iz, ptr %i.iw, align 8, !tbaa !34
  store i64 0, ptr %i.jg, align 8, !tbaa !80
  store i8 0, ptr %i.iz, align 8, !tbaa !81
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i144
  %i.jj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !80 ; 2 uses
  %i.jl = load i64, ptr %i.fl, align 8, !tbaa !80
  %i.jm = sub i64 4611686018427387903, %i.jl
  %i.jn = icmp ult i64 %i.jm, %i.jk
  br i1 %i.jn, label %bb.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i149

bb.bj:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.noexc150 unwind label %bb.bs

.noexc150:                                        ; preds = %bb.bj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i149: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit148
  %i.jo = load ptr, ptr %11, align 8, !tbaa !34
  %i.jp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.jo, i64 noundef %i.jk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit152 unwind label %bb.bs ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i149
  %i.jq = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit152
  call void @_ZdlPv(ptr noundef %i.jq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  %i.jt = load ptr, ptr %13, align 8, !tbaa !34   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  call void @_ZdlPv(ptr noundef %i.jt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.jw = load ptr, ptr %12, align 8, !tbaa !34   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.hc
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  call void @_ZdlPv(ptr noundef %i.jw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.jy = load ptr, ptr %3, align 8, !tbaa !34, !noalias !244
  %i.jz = load i64, ptr %i.b, align 8, !tbaa !80, !noalias !244 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.ka, ptr %14, align 8, !tbaa !79, !alias.scope !247
  %i.kb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 0, ptr %i.kb, align 8, !tbaa !80, !alias.scope !247
  store i8 0, ptr %i.ka, align 8, !tbaa !81, !alias.scope !247
  %i.kc = add i64 %i.jz, 36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.kc)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !80, !alias.scope !247
  %i.ke = add i64 %i.kd, -4611686018427387868
  %i.kf = icmp ult i64 %i.ke, 36
  br i1 %i.kf, label %.invoke.i.i168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i165: ; preds = %bb.bk
  %i.kg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.6, i64 noundef 36)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i166 unwind label %bb.bl ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i166: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i165
  %i.kh = load i64, ptr %i.kb, align 8, !tbaa !80, !alias.scope !247
  %i.ki = sub i64 4611686018427387903, %i.kh
  %i.kj = icmp ult i64 %i.ki, %i.jz
  br i1 %i.kj, label %.invoke.i.i168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i167

.invoke.i.i168:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i166, %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.cont.i.i169 unwind label %bb.bl

.cont.i.i169:                                     ; preds = %.invoke.i.i168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i166
  %i.kk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.jy, i64 noundef %i.jz)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i167, %.invoke.i.i168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = load ptr, ptr %14, align 8, !tbaa !34, !alias.scope !247 ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.ka
  br i1 %i.kn, label %.body170, label %.body170.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i167
  %i.ko = load i64, ptr %i.kb, align 8, !tbaa !80 ; 2 uses
  %i.kp = load i64, ptr %i.fl, align 8, !tbaa !80
  %i.kq = sub i64 4611686018427387903, %i.kp
  %i.kr = icmp ult i64 %i.kq, %i.ko
  br i1 %i.kr, label %bb.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i172

bb.bm:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.noexc173 unwind label %bb.bt
end_hunk_1
