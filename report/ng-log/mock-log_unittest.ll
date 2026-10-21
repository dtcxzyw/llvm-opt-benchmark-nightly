Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ng-log/original/mock-log_unittest?download=true
inline.NumInlined: 1698
inline.NumDeleted: 727
begin_hunk_0_@_ZN12_GLOBAL__N_136ScopedMockLogTest_InterceptsLog_Test8TestBodyEv:bb.a
  br label %common.resume

_ZN5nglog13nglog_testing13ScopedMockLogC2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7testing10InSequenceC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %bb.dn

bb.f:                                             ; preds = %_ZN5nglog13nglog_testing13ScopedMockLogC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %5, align 8, !tbaa !17
  store ptr @_ZZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 1, ptr %i.p, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7testing8EndsWithIA21_cEENS_18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher") align 8 %7, ptr noundef nonnull align 1 dereferenceable(21) @.str.5)
          to label %bb.g unwind label %bb.do

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.q = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc unwind label %bb.dp    ; 6 uses

.noexc:                                           ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.q, align 8, !tbaa !17, !noalias !227
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !45, !noalias !227
  %i.t = load ptr, ptr %7, align 8, !tbaa !53, !noalias !227 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47, !noalias !227 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !227
  store i64 %i.v, ptr %i.d, align 8, !tbaa !54, !noalias !227
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %.noexc
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.k, !noalias !227 ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !53, !noalias !227
  %i.y = load i64, ptr %i.d, align 8, !tbaa !54, !noalias !227
  store i64 %i.y, ptr %i.s, align 8, !tbaa !48, !noalias !227
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i, %.noexc
  %i.z = phi ptr [ %i.x, %.noexc.i ], [ %i.s, %.noexc ] ; 2 uses
  switch i64 %i.v, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !48, !noalias !227
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !48, !noalias !227
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false), !noalias !227
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !54, !noalias !227 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !47, !noalias !227
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !53, !noalias !227
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !48, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !227
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.af, align 8, !tbaa !57, !alias.scope !227
  %i.ah = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.l unwind label %bb.dp      ; 3 uses

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 40) #27, !noalias !227
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i32 1, ptr %i.ah, align 4, !tbaa !59, !noalias !227
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = ptrtoint ptr %i.q to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !61, !noalias !227
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !48, !alias.scope !227
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8, !tbaa !17, !alias.scope !227
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7testing5StrEqIA7_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %9, ptr noundef nonnull align 1 dereferenceable(7) @.str.6)
          to label %bb.m unwind label %bb.dq

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.al = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc63 unwind label %bb.dr  ; 7 uses

.noexc63:                                         ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.al, align 8, !tbaa !17, !noalias !228
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !45, !noalias !228
  %i.ao = load ptr, ptr %9, align 8, !tbaa !53, !noalias !228 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !47, !noalias !228 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !228
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !54, !noalias !228
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i.i.i.i61, label %._crit_edge.i.i.i.i.i60

.noexc.i.i.i.i61:                                 ; preds = %.noexc63
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i62 unwind label %bb.q, !noalias !228 ; 2 uses

.noexc.i62:                                       ; preds = %.noexc.i.i.i.i61
  store ptr %i.as, ptr %i.am, align 8, !tbaa !53, !noalias !228
  %i.at = load i64, ptr %i.c, align 8, !tbaa !54, !noalias !228
  store i64 %i.at, ptr %i.an, align 8, !tbaa !48, !noalias !228
  br label %._crit_edge.i.i.i.i.i60

._crit_edge.i.i.i.i.i60:                          ; preds = %.noexc.i62, %.noexc63
  %i.au = phi ptr [ %i.as, %.noexc.i62 ], [ %i.an, %.noexc63 ] ; 2 uses
  switch i64 %i.aq, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i60
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !48, !noalias !228
  store i8 %i.av, ptr %i.au, align 1, !tbaa !48, !noalias !228
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ao, i64 %i.aq, i1 false), !noalias !228
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i.i60
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !54, !noalias !228 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !47, !noalias !228
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !53, !noalias !228
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !48, !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !228
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bc = load i16, ptr %i.bb, align 8, !noalias !228
  store i16 %i.bc, ptr %i.ba, align 8, !noalias !228
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.bd, align 8, !tbaa !57, !alias.scope !228
  %i.bf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.r unwind label %bb.dr      ; 3 uses

bb.q:                                             ; preds = %.noexc.i.i.i.i61
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #27, !noalias !228
  br label %.body65

bb.r:                                             ; preds = %bb.p
  store i32 1, ptr %i.bf, align 4, !tbaa !59, !noalias !228
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = ptrtoint ptr %i.al to i64
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !61, !noalias !228
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !48, !alias.scope !228
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %8, align 8, !tbaa !17, !alias.scope !228
  invoke void @_ZN5nglog13nglog_testing13ScopedMockLog9gmock_LogERKN7testing7MatcherINS_11LogSeverityEEERKNS3_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESI_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::MockSpec") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.s unwind label %bb.ds

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal18GetWithoutMatchersEv()
          to label %bb.t unwind label %bb.dt

bb.t:                                             ; preds = %bb.s
  %i.bj = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE18InternalExpectedAtEPKciSF_SF_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @.str.2, i32 noundef 58, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
          to label %bb.u unwind label %bb.dt      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %i.bl, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i145, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !63
  %.not.i.i.i.i146 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i146, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !48
  %24 = atomicrmw add ptr %i.br, i32 -1 acq_rel, align 4
  %i.bs = icmp eq i32 %24, 1
  br i1 %i.bs, label %bb.w, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i

bb.w:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !63
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !48
  invoke void %i.bv(ptr noundef %i.bw)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i unwind label %bb.x, !inline_history !0

bb.x:                                             ; preds = %bb.w
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i: ; preds = %bb.w, %bb.v, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i, %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.bz, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !66
  %.not.i.i.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !48
  %25 = atomicrmw add ptr %i.cf, i32 -1 acq_rel, align 4
  %i.cg = icmp eq i32 %25, 1
  br i1 %i.cg, label %bb.z, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !66
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !48
  invoke void %i.cj(ptr noundef %i.ck)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i unwind label %bb.aa, !inline_history !1

bb.aa:                                            ; preds = %bb.z
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i: ; preds = %bb.z, %bb.y, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.bk, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !66
  %.not.i.i.i3.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !48
  %26 = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.ct = icmp eq i32 %26, 1
  br i1 %i.ct, label %bb.ac, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !48
  invoke void %i.cw(ptr noundef %i.cx)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit unwind label %bb.ad, !inline_history !1

bb.ad:                                            ; preds = %bb.ac
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i, %bb.ab, %bb.ac
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %8, align 8, !tbaa !17
  %i.da = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.dd = load ptr, ptr %i.be, align 8, !tbaa !48
  %27 = atomicrmw add ptr %i.dd, i32 -1 acq_rel, align 4
  %i.de = icmp eq i32 %27, 1
  br i1 %i.de, label %bb.af, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.df = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !66
  %i.di = load ptr, ptr %i.be, align 8, !tbaa !48
  invoke void %i.dh(ptr noundef %i.di)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.ag, !inline_history !1

bb.ag:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.ae, %bb.af
  %i.dl = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !48
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8, !tbaa !17
  %i.dq = load ptr, ptr %i.af, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i67, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit70, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i68

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i68: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !66
  %.not.i.i69 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i69, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit70, label %bb.ah

bb.ah:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i68
  %i.dt = load ptr, ptr %i.ag, align 8, !tbaa !48
  %28 = atomicrmw add ptr %i.dt, i32 -1 acq_rel, align 4
  %i.du = icmp eq i32 %28, 1
  br i1 %i.du, label %bb.ai, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit70

bb.ai:                                            ; preds = %bb.ah
  %i.dv = load ptr, ptr %i.af, align 8, !tbaa !57
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !66
  %i.dy = load ptr, ptr %i.ag, align 8, !tbaa !48
  invoke void %i.dx(ptr noundef %i.dy)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit70 unwind label %bb.aj, !inline_history !1

bb.aj:                                            ; preds = %bb.ai
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit70: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i68, %bb.ah, %bb.ai
  %i.eb = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit70
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !48
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit

_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %5, align 8, !tbaa !17
  %i.eg = load ptr, ptr %i.o, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i73, label %bb.an, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !63
  %.not.i.i74 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i74, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !48
  %29 = atomicrmw add ptr %i.ej, i32 -1 acq_rel, align 4
  %i.ek = icmp eq i32 %29, 1
  br i1 %i.ek, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.el = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !63
  %i.eo = load ptr, ptr %i.p, align 8, !tbaa !48
  invoke void %i.en(ptr noundef %i.eo)
          to label %bb.an unwind label %bb.am, !inline_history !0

bb.am:                                            ; preds = %bb.al
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #28, !inline_history !64
  unreachable

bb.an:                                            ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %11, align 8, !tbaa !17
  store ptr @_ZZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.er, align 8, !tbaa !52
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store i64 0, ptr %i.es, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i64 0, ptr %i.eu, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.et, align 8, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %12, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN7testing5StrEqIA11_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %14, ptr noundef nonnull align 1 dereferenceable(11) @.str.9)
          to label %bb.ao unwind label %bb.dv

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.ev = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc78 unwind label %bb.dw  ; 7 uses

.noexc78:                                         ; preds = %bb.ao
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.ev, align 8, !tbaa !17, !noalias !229
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 3 uses
  store ptr %i.ex, ptr %i.ew, align 8, !tbaa !45, !noalias !229
  %i.ey = load ptr, ptr %14, align 8, !tbaa !53, !noalias !229 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !47, !noalias !229 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !229
  store i64 %i.fa, ptr %i.b, align 8, !tbaa !54, !noalias !229
  %i.fb = icmp ugt i64 %i.fa, 15
  br i1 %i.fb, label %.noexc.i.i.i.i76, label %._crit_edge.i.i.i.i.i75

.noexc.i.i.i.i76:                                 ; preds = %.noexc78
  %i.fc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i77 unwind label %bb.as, !noalias !229 ; 2 uses

.noexc.i77:                                       ; preds = %.noexc.i.i.i.i76
  store ptr %i.fc, ptr %i.ew, align 8, !tbaa !53, !noalias !229
  %i.fd = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !229
  store i64 %i.fd, ptr %i.ex, align 8, !tbaa !48, !noalias !229
  br label %._crit_edge.i.i.i.i.i75

._crit_edge.i.i.i.i.i75:                          ; preds = %.noexc.i77, %.noexc78
  %i.fe = phi ptr [ %i.fc, %.noexc.i77 ], [ %i.ex, %.noexc78 ] ; 2 uses
  switch i64 %i.fa, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i75
  %i.ff = load i8, ptr %i.ey, align 1, !tbaa !48, !noalias !229
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !48, !noalias !229
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fe, ptr align 1 %i.ey, i64 %i.fa, i1 false), !noalias !229
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i.i.i.i75
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !229 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !47, !noalias !229
  %i.fi = load ptr, ptr %i.ew, align 8, !tbaa !53, !noalias !229
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fg
  store i8 0, ptr %i.fj, align 1, !tbaa !48, !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !229
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.fm = load i16, ptr %i.fl, align 8, !noalias !229
  store i16 %i.fm, ptr %i.fk, align 8, !noalias !229
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.fn, align 8, !tbaa !57, !alias.scope !229
  %i.fp = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.at unwind label %bb.dw     ; 3 uses

bb.as:                                            ; preds = %.noexc.i.i.i.i76
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef 48) #27, !noalias !229
  br label %.body80

bb.at:                                            ; preds = %bb.ar
  store i32 1, ptr %i.fp, align 4, !tbaa !59, !noalias !229
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fs = ptrtoint ptr %i.ev to i64
  store i64 %i.fs, ptr %i.fr, align 8, !tbaa !61, !noalias !229
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !48, !alias.scope !229
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8, !tbaa !17, !alias.scope !229
  invoke void @_ZN5nglog13nglog_testing13ScopedMockLog9gmock_LogERKN7testing7MatcherINS_11LogSeverityEEERKNS3_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESI_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::MockSpec") align 8 %10, ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.au unwind label %bb.dx

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN7testing8internal18GetWithoutMatchersEv()
          to label %bb.av unwind label %bb.dy

bb.av:                                            ; preds = %bb.au
  %i.ft = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE18InternalExpectedAtEPKciSF_SF_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull @.str.2, i32 noundef 59, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10)
          to label %bb.aw unwind label %bb.dy

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN7testing7ExactlyEi(ptr dead_on_unwind nonnull writable sret(%"class.testing::Cardinality") align 8 %1, i32 noundef 2)
          to label %.noexc83 unwind label %bb.dy

.noexc83:                                         ; preds = %bb.aw
  invoke void @_ZN7testing8internal15ExpectationBase12UntypedTimesERKNS_11CardinalityE(ptr noundef nonnull align 8 dereferenceable(400) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE5TimesERKNS_11CardinalityE.exit.i unwind label %bb.bd

_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE5TimesERKNS_11CardinalityE.exit.i: ; preds = %.noexc83
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i, label %bb.be, label %bb.ax

bb.ax:                                            ; preds = %_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE5TimesERKNS_11CardinalityE.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 4 uses
  %i.fx = load atomic i64, ptr %i.fw acquire, align 8 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 4294967297
  %i.fz = trunc i64 %i.fx to i32                  ; 2 uses
  br i1 %i.fy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.fw, align 8, !tbaa !72
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store i32 0, ptr %i.ga, align 4, !tbaa !73
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #26, !inline_history !224
  %i.ge = load ptr, ptr %i.fv, align 8, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #26, !inline_history !224
  br label %bb.be

bb.az:                                            ; preds = %bb.ax
  %i.gh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i.i.i = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gi = add nsw i32 %i.fz, -1
  store i32 %i.gi, ptr %i.fw, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gj = atomicrmw volatile add ptr %i.fw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i = phi i32 [ %i.fz, %bb.ba ], [ %i.gj, %bb.bb ]
  %i.gk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gk, label %bb.bc, label %bb.be, !prof !74

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fv) #26
  br label %bb.be

bb.bd:                                            ; preds = %.noexc83
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11CardinalityD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.body84

bb.be:                                            ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ay, %_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE5TimesERKNS_11CardinalityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %i.gn, align 8, !tbaa !17
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i147 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i147, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i150, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i148

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i148: ; preds = %bb.be
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !63
  %.not.i.i.i.i149 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i149, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i150, label %bb.bf

bb.bf:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i148
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !48
  %30 = atomicrmw add ptr %i.gt, i32 -1 acq_rel, align 4
  %i.gu = icmp eq i32 %30, 1
  br i1 %i.gu, label %bb.bg, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i150

bb.bg:                                            ; preds = %bb.bf
  %i.gv = load ptr, ptr %i.go, align 8, !tbaa !52
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !63
  %i.gy = load ptr, ptr %i.gs, align 8, !tbaa !48
  invoke void %i.gx(ptr noundef %i.gy)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i150 unwind label %bb.bh, !inline_history !0

bb.bh:                                            ; preds = %bb.bg
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i150: ; preds = %bb.bg, %bb.bf, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i148, %bb.be
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.hb, align 8, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i151 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i.i151, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i154, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i152

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i152: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i150
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !66
  %.not.i.i.i.i1.i153 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i1.i153, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i154, label %bb.bi

bb.bi:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i152
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !48
  %31 = atomicrmw add ptr %i.hh, i32 -1 acq_rel, align 4
  %i.hi = icmp eq i32 %31, 1
  br i1 %i.hi, label %bb.bj, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i154

bb.bj:                                            ; preds = %bb.bi
  %i.hj = load ptr, ptr %i.hc, align 8, !tbaa !57
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !66
  %i.hm = load ptr, ptr %i.hg, align 8, !tbaa !48
  invoke void %i.hl(ptr noundef %i.hm)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i154 unwind label %bb.bk, !inline_history !1

bb.bk:                                            ; preds = %bb.bj
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i154: ; preds = %bb.bj, %bb.bi, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i152, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i150
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.gm, align 8, !tbaa !17
  %i.hp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i1.i.i155 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i1.i.i155, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit158, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i156

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i156: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i154
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !66
  %.not.i.i.i3.i.i157 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i3.i.i157, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit158, label %bb.bl

bb.bl:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i156
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !48
  %32 = atomicrmw add ptr %i.hu, i32 -1 acq_rel, align 4
  %i.hv = icmp eq i32 %32, 1
  br i1 %i.hv, label %bb.bm, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit158

bb.bm:                                            ; preds = %bb.bl
  %i.hw = load ptr, ptr %i.hp, align 8, !tbaa !57
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !66
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !48
  invoke void %i.hy(ptr noundef %i.hz)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit158 unwind label %bb.bn, !inline_history !1

bb.bn:                                            ; preds = %bb.bm
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit158: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i154, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i156, %bb.bl, %bb.bm
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %13, align 8, !tbaa !17
  %i.ic = load ptr, ptr %i.fn, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i86, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit89, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i87

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i87: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit158
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !66
  %.not.i.i88 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i88, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit89, label %bb.bo

bb.bo:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i87
  %i.if = load ptr, ptr %i.fo, align 8, !tbaa !48
  %33 = atomicrmw add ptr %i.if, i32 -1 acq_rel, align 4
  %i.ig = icmp eq i32 %33, 1
  br i1 %i.ig, label %bb.bp, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit89

bb.bp:                                            ; preds = %bb.bo
  %i.ih = load ptr, ptr %i.fn, align 8, !tbaa !57
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !66
  %i.ik = load ptr, ptr %i.fo, align 8, !tbaa !48
  invoke void %i.ij(ptr noundef %i.ik)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit89 unwind label %bb.bq, !inline_history !1

bb.bq:                                            ; preds = %bb.bp
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit89: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit158, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i87, %bb.bo, %bb.bp
  %i.in = load ptr, ptr %14, align 8, !tbaa !53   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i90: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit89
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !48
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit92

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit92: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %12, align 8, !tbaa !17
  %i.is = load ptr, ptr %i.et, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i93, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit96, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i94

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i94: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit92
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !66
  %.not.i.i95 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i95, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit96, label %bb.br

bb.br:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i94
  %i.iv = load ptr, ptr %i.eu, align 8, !tbaa !48
  %34 = atomicrmw add ptr %i.iv, i32 -1 acq_rel, align 4
  %i.iw = icmp eq i32 %34, 1
  br i1 %i.iw, label %bb.bs, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit96

bb.bs:                                            ; preds = %bb.br
  %i.ix = load ptr, ptr %i.et, align 8, !tbaa !57
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !66
  %i.ja = load ptr, ptr %i.eu, align 8, !tbaa !48
  invoke void %i.iz(ptr noundef %i.ja)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit96 unwind label %bb.bt, !inline_history !1

bb.bt:                                            ; preds = %bb.bs
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit96: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit92, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i94, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %11, align 8, !tbaa !17
  %i.jd = load ptr, ptr %i.er, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i97, label %bb.bx, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i98

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i98: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit96
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !63
  %.not.i.i99 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i99, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i98
  %i.jg = load ptr, ptr %i.es, align 8, !tbaa !48
  %35 = atomicrmw add ptr %i.jg, i32 -1 acq_rel, align 4
  %i.jh = icmp eq i32 %35, 1
  br i1 %i.jh, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ji = load ptr, ptr %i.er, align 8, !tbaa !52
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !63
  %i.jl = load ptr, ptr %i.es, align 8, !tbaa !48
  invoke void %i.jk(ptr noundef %i.jl)
          to label %bb.bx unwind label %bb.bw, !inline_history !0

bb.bw:                                            ; preds = %bb.bv
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #28, !inline_history !64
  unreachable

bb.bx:                                            ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit96, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i98, %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.jo = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %16, align 8, !tbaa !17
  store ptr @_ZZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.jo, align 8, !tbaa !52
  %i.jp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store i64 2, ptr %i.jp, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.jq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store i64 0, ptr %i.jr, align 8
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyINS0_15AnythingMatcherELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.jq, align 8, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %17, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing5StrEqIA6_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %19, ptr noundef nonnull align 1 dereferenceable(6) @.str.11)
          to label %bb.by unwind label %bb.ea

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.js = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc104 unwind label %bb.eb ; 7 uses

.noexc104:                                        ; preds = %bb.by
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.js, align 8, !tbaa !17, !noalias !230
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 24 ; 3 uses
  store ptr %i.ju, ptr %i.jt, align 8, !tbaa !45, !noalias !230
  %i.jv = load ptr, ptr %19, align 8, !tbaa !53, !noalias !230 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !47, !noalias !230 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !230
  store i64 %i.jx, ptr %i.a, align 8, !tbaa !54, !noalias !230
  %i.jy = icmp ugt i64 %i.jx, 15
  br i1 %i.jy, label %.noexc.i.i.i.i102, label %._crit_edge.i.i.i.i.i101

.noexc.i.i.i.i102:                                ; preds = %.noexc104
  %i.jz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.jt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i103 unwind label %bb.cc, !noalias !230 ; 2 uses

.noexc.i103:                                      ; preds = %.noexc.i.i.i.i102
  store ptr %i.jz, ptr %i.jt, align 8, !tbaa !53, !noalias !230
  %i.ka = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !230
  store i64 %i.ka, ptr %i.ju, align 8, !tbaa !48, !noalias !230
  br label %._crit_edge.i.i.i.i.i101

._crit_edge.i.i.i.i.i101:                         ; preds = %.noexc.i103, %.noexc104
  %i.kb = phi ptr [ %i.jz, %.noexc.i103 ], [ %i.ju, %.noexc104 ] ; 2 uses
  switch i64 %i.jx, label %bb.ca [
    i64 1, label %bb.bz
    i64 0, label %bb.cb
  ]

bb.bz:                                            ; preds = %._crit_edge.i.i.i.i.i101
  %i.kc = load i8, ptr %i.jv, align 1, !tbaa !48, !noalias !230
  store i8 %i.kc, ptr %i.kb, align 1, !tbaa !48, !noalias !230
  br label %bb.cb

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kb, ptr align 1 %i.jv, i64 %i.jx, i1 false), !noalias !230
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %._crit_edge.i.i.i.i.i101
  %i.kd = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !230 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store i64 %i.kd, ptr %i.ke, align 8, !tbaa !47, !noalias !230
  %i.kf = load ptr, ptr %i.jt, align 8, !tbaa !53, !noalias !230
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kd
  store i8 0, ptr %i.kg, align 1, !tbaa !48, !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !230
  %i.kh = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  %i.ki = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.kj = load i16, ptr %i.ki, align 8, !noalias !230
  store i16 %i.kj, ptr %i.kh, align 8, !noalias !230
  %i.kk = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.kk, align 8, !tbaa !57, !alias.scope !230
  %i.km = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.cd unwind label %bb.eb     ; 3 uses

bb.cc:                                            ; preds = %.noexc.i.i.i.i102
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef 48) #27, !noalias !230
  br label %.body106

bb.cd:                                            ; preds = %bb.cb
  store i32 1, ptr %i.km, align 4, !tbaa !59, !noalias !230
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kp = ptrtoint ptr %i.js to i64
  store i64 %i.kp, ptr %i.ko, align 8, !tbaa !61, !noalias !230
  store ptr %i.km, ptr %i.kl, align 8, !tbaa !48, !alias.scope !230
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %18, align 8, !tbaa !17, !alias.scope !230
  invoke void @_ZN5nglog13nglog_testing13ScopedMockLog9gmock_LogERKN7testing7MatcherINS_11LogSeverityEEERKNS3_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESI_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::MockSpec") align 8 %15, ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.ce unwind label %bb.ec

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN7testing8internal18GetWithoutMatchersEv()
          to label %bb.cf unwind label %bb.ed

bb.cf:                                            ; preds = %bb.ce
  %i.kq = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE18InternalExpectedAtEPKciSF_SF_(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr noundef nonnull @.str.2, i32 noundef 60, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12)
          to label %bb.cg unwind label %bb.ed     ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.kr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %15, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %i.ks, align 8, !tbaa !17
  %i.kt = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i.i.i159, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i162, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i160

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i160: ; preds = %bb.cg
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !63
  %.not.i.i.i.i161 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i.i161, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i162, label %bb.ch

bb.ch:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i160
  %i.kx = getelementptr inbounds nuw i8, ptr %15, i64 72 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !48
  %36 = atomicrmw add ptr %i.ky, i32 -1 acq_rel, align 4
  %i.kz = icmp eq i32 %36, 1
  br i1 %i.kz, label %bb.ci, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i162

bb.ci:                                            ; preds = %bb.ch
  %i.la = load ptr, ptr %i.kt, align 8, !tbaa !52
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !63
  %i.ld = load ptr, ptr %i.kx, align 8, !tbaa !48
  invoke void %i.lc(ptr noundef %i.ld)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i162 unwind label %bb.cj, !inline_history !0

bb.cj:                                            ; preds = %bb.ci
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i162: ; preds = %bb.ci, %bb.ch, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i160, %bb.cg
  %i.lg = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.lg, align 8, !tbaa !17
  %i.lh = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i163 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i.i.i163, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i166, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i164

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i164: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i162
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !66
  %.not.i.i.i.i1.i165 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i.i1.i165, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i166, label %bb.ck

bb.ck:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i164
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !48
  %37 = atomicrmw add ptr %i.lm, i32 -1 acq_rel, align 4
  %i.ln = icmp eq i32 %37, 1
  br i1 %i.ln, label %bb.cl, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i166

bb.cl:                                            ; preds = %bb.ck
  %i.lo = load ptr, ptr %i.lh, align 8, !tbaa !57
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !66
  %i.lr = load ptr, ptr %i.ll, align 8, !tbaa !48
  invoke void %i.lq(ptr noundef %i.lr)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i166 unwind label %bb.cm, !inline_history !1

bb.cm:                                            ; preds = %bb.cl
  %i.ls = landingpad { ptr, i32 }
          catch ptr null
  %i.lt = extractvalue { ptr, i32 } %i.ls, 0
  call void @__clang_call_terminate(ptr %i.lt) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i166: ; preds = %bb.cl, %bb.ck, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i164, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i162
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.kr, align 8, !tbaa !17
  %i.lu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i1.i.i167 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i.i1.i.i167, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit170, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i168

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i168: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i166
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !66
  %.not.i.i.i3.i.i169 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i3.i.i169, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit170, label %bb.cn

bb.cn:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i168
  %i.ly = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !48
  %38 = atomicrmw add ptr %i.lz, i32 -1 acq_rel, align 4
  %i.ma = icmp eq i32 %38, 1
  br i1 %i.ma, label %bb.co, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit170

bb.co:                                            ; preds = %bb.cn
  %i.mb = load ptr, ptr %i.lu, align 8, !tbaa !57
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !66
  %i.me = load ptr, ptr %i.ly, align 8, !tbaa !48
  invoke void %i.md(ptr noundef %i.me)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit170 unwind label %bb.cp, !inline_history !1

bb.cp:                                            ; preds = %bb.co
  %i.mf = landingpad { ptr, i32 }
          catch ptr null
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  call void @__clang_call_terminate(ptr %i.mg) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit170: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i166, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i168, %bb.cn, %bb.co
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %18, align 8, !tbaa !17
  %i.mh = load ptr, ptr %i.kk, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i109, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit112, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i110

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i110: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit170
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !66
  %.not.i.i111 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i111, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit112, label %bb.cq

bb.cq:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i110
  %i.mk = load ptr, ptr %i.kl, align 8, !tbaa !48
  %39 = atomicrmw add ptr %i.mk, i32 -1 acq_rel, align 4
  %i.ml = icmp eq i32 %39, 1
  br i1 %i.ml, label %bb.cr, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit112

bb.cr:                                            ; preds = %bb.cq
  %i.mm = load ptr, ptr %i.kk, align 8, !tbaa !57
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !66
  %i.mp = load ptr, ptr %i.kl, align 8, !tbaa !48
  invoke void %i.mo(ptr noundef %i.mp)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit112 unwind label %bb.cs, !inline_history !1

bb.cs:                                            ; preds = %bb.cr
  %i.mq = landingpad { ptr, i32 }
          catch ptr null
  %i.mr = extractvalue { ptr, i32 } %i.mq, 0
  call void @__clang_call_terminate(ptr %i.mr) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit112: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit170, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i110, %bb.cq, %bb.cr
  %i.ms = load ptr, ptr %19, align 8, !tbaa !53   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit112
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !48
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit115

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit115: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %17, align 8, !tbaa !17
  %i.mx = load ptr, ptr %i.jq, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i116, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit119, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i117

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i117: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit115
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !66
  %.not.i.i118 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i118, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit119, label %bb.ct

bb.ct:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i117
  %i.na = load ptr, ptr %i.jr, align 8, !tbaa !48
  %40 = atomicrmw add ptr %i.na, i32 -1 acq_rel, align 4
  %i.nb = icmp eq i32 %40, 1
  br i1 %i.nb, label %bb.cu, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit119

bb.cu:                                            ; preds = %bb.ct
  %i.nc = load ptr, ptr %i.jq, align 8, !tbaa !57
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !66
  %i.nf = load ptr, ptr %i.jr, align 8, !tbaa !48
  invoke void %i.ne(ptr noundef %i.nf)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit119 unwind label %bb.cv, !inline_history !1

bb.cv:                                            ; preds = %bb.cu
  %i.ng = landingpad { ptr, i32 }
          catch ptr null
  %i.nh = extractvalue { ptr, i32 } %i.ng, 0
  call void @__clang_call_terminate(ptr %i.nh) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit119: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit115, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i117, %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %16, align 8, !tbaa !17
  %i.ni = load ptr, ptr %i.jo, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i120, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit123, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i121

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i121: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit119
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !63
  %.not.i.i122 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i122, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit123, label %bb.cw

bb.cw:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i121
  %i.nl = load ptr, ptr %i.jp, align 8, !tbaa !48
  %41 = atomicrmw add ptr %i.nl, i32 -1 acq_rel, align 4
  %i.nm = icmp eq i32 %41, 1
  br i1 %i.nm, label %bb.cx, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit123

bb.cx:                                            ; preds = %bb.cw
  %i.nn = load ptr, ptr %i.jo, align 8, !tbaa !52
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !63
  %i.nq = load ptr, ptr %i.jp, align 8, !tbaa !48
  invoke void %i.np(ptr noundef %i.nq)
          to label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit123 unwind label %bb.cy, !inline_history !0

bb.cy:                                            ; preds = %bb.cx
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  %i.ns = extractvalue { ptr, i32 } %i.nr, 0
  call void @__clang_call_terminate(ptr %i.ns) #28, !inline_history !64
  unreachable

_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit123: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit119, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i121, %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN5nglog10LogMessageC1EPKciNS_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(96) %20, ptr noundef nonnull @.str.2, i32 noundef 62, i32 noundef 1)
          to label %bb.cz unwind label %bb.ef

bb.cz:                                            ; preds = %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit123
  %i.nt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %20)
          to label %bb.da unwind label %bb.eg

bb.da:                                            ; preds = %bb.cz
  %i.nu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.eg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.da
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %20)
          to label %bb.db unwind label %bb.ef

bb.db:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  invoke void @_ZN5nglog10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %21, ptr noundef nonnull @.str.2, i32 noundef 63)
          to label %bb.dc unwind label %bb.ei

bb.dc:                                            ; preds = %bb.db
  %i.nv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %21)
          to label %bb.dd unwind label %bb.ej

bb.dd:                                            ; preds = %bb.dc
  %i.nw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef nonnull @.str.9, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126 unwind label %bb.ej ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126: ; preds = %bb.dd
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %21)
          to label %bb.de unwind label %bb.ei

bb.de:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  invoke void @_ZN5nglog10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %22, ptr noundef nonnull @.str.2, i32 noundef 64)
          to label %bb.df unwind label %bb.el

bb.df:                                            ; preds = %bb.de
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %22)
          to label %bb.dg unwind label %bb.em

bb.dg:                                            ; preds = %bb.df
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef nonnull @.str.9, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128 unwind label %bb.em ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128: ; preds = %bb.dg
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %22)
          to label %bb.dh unwind label %bb.el

bb.dh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZN5nglog10LogMessageC1EPKciNS_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(96) %23, ptr noundef nonnull @.str.2, i32 noundef 65, i32 noundef 2)
          to label %bb.di unwind label %bb.eo

bb.di:                                            ; preds = %bb.dh
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %23)
          to label %bb.dj unwind label %bb.ep

bb.dj:                                            ; preds = %bb.di
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull @.str.11, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %bb.ep ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %bb.dj
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %23)
          to label %bb.dk unwind label %bb.eo

bb.dk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @_ZN7testing10InSequenceD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5nglog13nglog_testing13ScopedMockLogE, i64 16), ptr %2, align 8, !tbaa !17
  invoke void @_ZN5nglog13RemoveLogSinkEPNS_7LogSinkE(ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %bb.dl unwind label %bb.dm, !inline_history !75

bb.dl:                                            ; preds = %bb.dk
  %i.ob = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.j
  br i1 %i.oc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i131: ; preds = %bb.dl
  %i.od = load i64, ptr %i.j, align 8, !tbaa !48
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.oe) #27, !inline_history !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i131
  %i.of = load ptr, ptr %i.f, align 8, !tbaa !53  ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.g
  br i1 %i.og, label %_ZN5nglog13nglog_testing13ScopedMockLogD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.oh = load i64, ptr %i.g, align 8, !tbaa !48
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #27, !inline_history !75
  br label %_ZN5nglog13nglog_testing13ScopedMockLogD2Ev.exit

bb.dm:                                            ; preds = %bb.dk
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  %i.ok = extractvalue { ptr, i32 } %i.oj, 0
  call void @__clang_call_terminate(ptr %i.ok) #28, !inline_history !75
  unreachable

_ZN5nglog13nglog_testing13ScopedMockLogD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.e) #26, !inline_history !75
  call void @_ZN5nglog7LogSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(152) %2) #26, !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.dn:                                            ; preds = %_ZN5nglog13nglog_testing13ScopedMockLogC2Ev.exit
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.do:                                            ; preds = %bb.f
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit138

bb.dp:                                            ; preds = %bb.j, %bb.g
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dq:                                            ; preds = %bb.l
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit135

bb.dr:                                            ; preds = %bb.p, %bb.m
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.body65

bb.ds:                                            ; preds = %bb.r
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.t, %bb.s
  %i.or = landingpad { ptr, i32 }
          cleanup
  %i.os = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.os) #26
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn = phi { ptr, i32 } [ %i.or, %bb.dt ], [ %i.oq, %bb.ds ]
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  br label %.body65

.body65:                                          ; preds = %bb.dr, %bb.q, %bb.du
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.du ], [ %i.op, %bb.dr ], [ %i.bg, %bb.q ] ; 2 uses
  %i.ot = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i133: ; preds = %.body65
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !48
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit135

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit135: ; preds = %.body65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i133, %bb.dq
  %.pn.pn.pn = phi { ptr, i32 } [ %i.oo, %bb.dq ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i133 ], [ %.pn.pn, %.body65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  br label %.body

.body:                                            ; preds = %bb.dp, %bb.k, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit135
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit135 ], [ %i.on, %bb.dp ], [ %i.ai, %bb.k ] ; 2 uses
  %i.oy = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_136ScopedMockLogTest_InterceptsLog_Test8TestBodyEv:bb.a
_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit144: ; preds = %.body106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i142, %bb.ea
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.pn, %bb.ea ], [ %.pn43.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i142 ], [ %.pn43.pn, %.body106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.er

bb.ef:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit123
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.da, %bb.cz
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %20)
          to label %bb.eh unwind label %bb.et

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn49 = phi { ptr, i32 } [ %i.px, %bb.ef ], [ %i.py, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.er

bb.ei:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126, %bb.db
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %bb.dd, %bb.dc
  %i.qa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %21)
          to label %bb.ek unwind label %bb.et

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.pn51 = phi { ptr, i32 } [ %i.pz, %bb.ei ], [ %i.qa, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.er

bb.el:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128, %bb.de
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.em:                                            ; preds = %bb.dg, %bb.df
  %i.qc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %22)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em, %bb.el
  %.pn53 = phi { ptr, i32 } [ %i.qb, %bb.el ], [ %i.qc, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.er

bb.eo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130, %bb.dh
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ep:                                            ; preds = %bb.dj, %bb.di
  %i.qe = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %23)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.pn55 = phi { ptr, i32 } [ %i.qd, %bb.eo ], [ %i.qe, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.en, %bb.ek, %bb.eh, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit144, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit141, %_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit138
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %bb.eq ], [ %.pn53, %bb.en ], [ %.pn51, %bb.ek ], [ %.pn49, %bb.eh ], [ %.pn43.pn.pn, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit144 ], [ %.pn37.pn.pn, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit141 ], [ %.pn.pn.pn.pn.pn, %_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit138 ]
  call void @_ZN7testing10InSequenceD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %3) #26
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.dn
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %bb.er ], [ %i.ol, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZN5nglog13nglog_testing13ScopedMockLogD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

bb.et:                                            ; preds = %bb.ep, %bb.em, %bb.ej, %bb.eg
  %i.qf = landingpad { ptr, i32 }
          catch ptr null
  %i.qg = extractvalue { ptr, i32 } %i.qf, 0
  call void @__clang_call_terminate(ptr %i.qg) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN7testing10InSequenceC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nglog13nglog_testing13ScopedMockLog9gmock_LogERKN7testing7MatcherINS_11LogSeverityEEERKNS3_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESI_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::MockSpec") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.testing::Matcher.19", align 8 ; 6 uses
  %6 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %7 = alloca %"class.testing::Matcher", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.d, null
  %i.h = inttoptr i64 %i.g to ptr
  br i1 %.not.i.i.i, label %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i
  %i.k = atomicrmw add ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit

_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %5, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !48
  %.not.i.i.i9 = icmp eq ptr %i.n, null
  %i.r = inttoptr i64 %i.q to ptr
  br i1 %.not.i.i.i9, label %bb.d, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66
  %.not.i.i10 = icmp eq ptr %i.t, null
  br i1 %.not.i.i10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57   ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !48
  %.not.i.i.i11 = icmp eq ptr %i.x, null
  %i.ab = inttoptr i64 %i.aa to ptr
  br i1 %.not.i.i.i11, label %bb.f, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i12

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i12: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66
  %.not.i.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i12
  %i.ae = atomicrmw add ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i12, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %7, align 8, !tbaa !17
  invoke void @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE4WithENS_7MatcherIS3_EENSE_ISB_EESG_(ptr dead_on_unwind writable sret(%"class.testing::internal::MockSpec") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %5, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %6, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %7, align 8, !tbaa !17
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !57  ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i15, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i16

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i16: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !66
  %.not.i.i17 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i17, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i16
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !48
  %8 = atomicrmw add ptr %i.ai, i32 -1 acq_rel, align 4
  %i.aj = icmp eq i32 %8, 1
  br i1 %i.aj, label %bb.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !48
  invoke void %i.am(ptr noundef %i.an)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.j, !inline_history !1

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.g, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i16, %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %6, align 8, !tbaa !17
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !57  ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i18, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit21, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i19

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i19: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !66
  %.not.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i.i20, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit21, label %bb.k

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i19
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !48
  %9 = atomicrmw add ptr %i.at, i32 -1 acq_rel, align 4
  %i.au = icmp eq i32 %9, 1
  br i1 %i.au, label %bb.l, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit21

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !66
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !48
  invoke void %i.ax(ptr noundef %i.ay)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit21 unwind label %bb.m, !inline_history !1

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit21: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i19, %bb.k, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %5, align 8, !tbaa !17
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i22, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i23

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i23: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !63
  %.not.i.i24 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i24, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i23
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !48
  %10 = atomicrmw add ptr %i.be, i32 -1 acq_rel, align 4
  %i.bf = icmp eq i32 %10, 1
  br i1 %i.bf, label %bb.o, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.bi(ptr noundef %i.bj)
          to label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit unwind label %bb.p, !inline_history !0

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #28, !inline_history !64
  unreachable

_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit21, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i23, %bb.n, %bb.o
  ret void

bb.q:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  resume { ptr, i32 } %i.bm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8EndsWithIA21_cEENS_18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::PolymorphicMatcher") align 8 %0, ptr noundef nonnull align 1 dereferenceable(21) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::internal::EndsWithMatcher", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !45
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.e, ptr %i.c, align 8, !tbaa !54
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !53
  %i.h = load i64, ptr %i.c, align 8, !tbaa !54
  store i64 %i.h, ptr %i.d, align 8, !tbaa !48
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !48
  store i8 %i.j, ptr %i.i, align 1, !tbaa !48
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.k = load i64, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = load ptr, ptr %3, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !45
  %i.p = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.q, ptr %i.b, align 8, !tbaa !54
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc6 unwind label %bb.k    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.s, ptr %2, align 8, !tbaa !53
  %i.t = load i64, ptr %i.b, align 8, !tbaa !54
  store i64 %i.t, ptr %i.o, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %bb.d
  %i.u = phi ptr [ %i.s, %.noexc6 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.q, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.p, align 1, !tbaa !48
  store i8 %i.v, ptr %i.u, align 1, !tbaa !48
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.w = load i64, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !47
  %i.y = load ptr, ptr %2, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !45, !alias.scope !233
  %i.ab = load ptr, ptr %2, align 8, !tbaa !53, !noalias !233 ; 2 uses
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !47, !noalias !233 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !233
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !54, !noalias !233
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.g
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7 unwind label %bb.l    ; 2 uses

.noexc7:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.ae, ptr %0, align 8, !tbaa !53, !alias.scope !233
  %i.af = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !233
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !48, !alias.scope !233
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc7, %bb.g
  %i.ag = phi ptr [ %i.ae, %.noexc7 ], [ %i.aa, %bb.g ] ; 2 uses
  switch i64 %i.ac, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !48
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !48
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ab, i64 %i.ac, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !233 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !47, !alias.scope !233
  %i.ak = load ptr, ptr %0, align 8, !tbaa !53, !alias.scope !233
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !233
  %i.am = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.o
  br i1 %i.an, label %_ZN7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !48
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #27
  br label %_ZN7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aq = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.d
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.as = load i64, ptr %i.d, align 8, !tbaa !48
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.k:                                             ; preds = %.noexc.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit10

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE18InternalExpectedAtEPKciSF_SF_:._crit_edge.i.i
  %i.cl = icmp ult i64 %i.ck, %i.cf
  br i1 %i.cl, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.m
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ce, i64 noundef %i.cf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !47, !alias.scope !254
  %i.co = and i64 %i.cn, -8
  %i.cp = icmp eq i64 %i.co, 4611686018427387896
  br i1 %i.cp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #30
          to label %.cont.i.i unwind label %bb.n

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.87, i64 noundef 8)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %10, align 8, !tbaa !53, !alias.scope !254 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cg
  br i1 %i.ct, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZN7testing8internal15LogWithLocationENS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cu = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cg
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.o
  %i.cw = load i64, ptr %i.cg, align 8, !tbaa !48
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cy = load ptr, ptr %0, align 8, !tbaa !90
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE17AddNewExpectationEPKciSB_RKSt5tupleIJNS_7MatcherIS3_EENSH_ISB_EESJ_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.cy, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.cz)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.db = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bc
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.p
  %i.dd = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %i.da

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26, %bb.d
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i33, %bb.g
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i40, %bb.j
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.an
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.t
  %i.dl = load i64, ptr %i.an, align 8, !tbaa !48
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.s
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.s ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.di, %bb.t ] ; 2 uses
  %i.dn = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.w
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.dp = load i64, ptr %i.w, align 8, !tbaa !48
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ] ; 2 uses
  %i.dr = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.g
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.dt = load i64, ptr %i.g, align 8, !tbaa !48
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  %i.dv = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.a
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !48
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.u:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cg
  br i1 %i.eb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.u, %bb.n
  %.sink = phi ptr [ %i.cs, %bb.n ], [ %i.ea, %bb.u ]
  %.pn19.ph = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.dz, %bb.u ]
  %i.ec = load i64, ptr %i.cg, align 8, !tbaa !48
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ed) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.u, %bb.n
  %.pn19 = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.dz, %bb.u ], [ %.pn19.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.body
  %.pn21 = phi { ptr, i32 } [ %i.ee, %bb.v ], [ %.pn19, %.body ] ; 2 uses
  %i.ef = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.bc
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.w
  %i.eh = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn21.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn21, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit unwind label %bb.d, !inline_history !255

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE7DestroyEv.exit unwind label %bb.d, !inline_history !256

_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing5StrEqIA11_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %0, ptr noundef nonnull align 1 dereferenceable(11) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::internal::StrEqualityMatcher", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !45
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.d, ptr %i.b, align 8, !tbaa !54
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !53
  %i.g = load i64, ptr %i.b, align 8, !tbaa !54
  store i64 %i.g, ptr %i.c, align 8, !tbaa !48
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !48
  store i8 %i.i, ptr %i.h, align 1, !tbaa !48
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !47
  %i.l = load ptr, ptr %3, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !45
  %i.o = load ptr, ptr %3, align 8, !tbaa !53     ; 3 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.k, align 8, !tbaa !47   ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.s, i1 false)
  br label %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES7_bb.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.o, ptr %2, align 8, !tbaa !53
  %i.t = load i64, ptr %i.c, align 8, !tbaa !48
  store i64 %i.t, ptr %i.n, align 8, !tbaa !48
  %.pr = load i64, ptr %i.k, align 8, !tbaa !47
  br label %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES7_bb.exit

_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES7_bb.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = phi ptr [ %i.n, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.v = phi i64 [ %i.q, %bb.e ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !47
  store ptr %i.c, ptr %3, align 8, !tbaa !53
  store i64 0, ptr %i.k, align 8, !tbaa !47
  store i8 0, ptr %i.c, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i8 1, ptr %i.x, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !78
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !45, !alias.scope !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !259
  store i64 %i.v, ptr %i.a, align 8, !tbaa !54, !noalias !259
  %i.aa = icmp ugt i64 %i.v, 15
  br i1 %i.aa, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES7_bb.exit
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.i    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !53, !alias.scope !259
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !259
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !48, !alias.scope !259
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc4, %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES7_bb.exit
  %i.ad = phi ptr [ %i.ab, %.noexc4 ], [ %i.z, %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ES7_bb.exit ] ; 2 uses
  switch i64 %i.v, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ae = load i8, ptr %i.u, align 1, !tbaa !48
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !48
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !259 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !47, !alias.scope !259
  %i.ah = load ptr, ptr %0, align 8, !tbaa !53, !alias.scope !259
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !259
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i16, ptr %i.x, align 8, !noalias !259
  store i16 %i.ak, ptr %i.aj, align 8, !alias.scope !259
  %i.al = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.n
  br i1 %i.am, label %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.an = load i64, ptr %i.n, align 8, !tbaa !48
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #27
  br label %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ap = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.c
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !48
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.n
  br i1 %i.av, label %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.i
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !48
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #27
  br label %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit8

_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit8: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  %i.ay = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.c
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit8
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !48
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZN7testing8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.at
}
end_hunk_2
begin_hunk_3_@_ZN5nglog13nglog_testing13ScopedMockLog4sendENS_11LogSeverityEPKcS4_iRKNS_14LogMessageTimeES4_m:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !48
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.x, ptr %i.t, align 8, !tbaa !53
  %i.ah = load <2 x i64>, ptr %i.q, align 8, !tbaa !48
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !48
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !48
  store ptr %i.x, ptr %i.t, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load <2 x i64>, ptr %i.q, align 8, !tbaa !48
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.u, ptr %8, align 8, !tbaa !53
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %8, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.al = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.u, %bb.i ], [ %i.h, %bb.j ]
  store i64 0, ptr %i.q, align 8, !tbaa !47
  store i8 0, ptr %i.al, align 1, !tbaa !48
  %i.am = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.h
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !48
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nglog13nglog_testing13ScopedMockLog12WaitTillSentEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.30", align 8     ; 6 uses
  %2 = alloca %"struct.nglog::nglog_testing::ScopedMockLog::MessageInfo", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5nglog13nglog_testing13ScopedMockLog11MessageInfoC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.a)
  %i.b = load i32, ptr %2, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase15SetOwnerAndNameEPKvPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.69)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.d, ptr %1, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.b, ptr %i.g, align 8, !tbaa !272
  invoke void @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE10InvokeWithEOSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !48
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN5nglog13nglog_testing13ScopedMockLog11MessageInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !48
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZN5nglog13nglog_testing13ScopedMockLog11MessageInfoD2Ev.exit

_ZN5nglog13nglog_testing13ScopedMockLog11MessageInfoD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5nglog13nglog_testing13ScopedMockLog11MessageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.r
}

declare void @_ZN7testing8internal25UntypedFunctionMockerBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE25ClearDefaultActionsLockedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not16 = icmp eq ptr %i.b, %i.d
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %.preheader
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %bb.k unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #27
  br label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit

_ZNSt6vectorIPKvSaIS1_EED2Ev.exit:                ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.g

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.sroa.06.017 = phi ptr [ %i.ah, %bb.j ], [ %i.b, %.preheader ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.06.017, align 8, !tbaa !106 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i2, label %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #28
  unreachable

_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEEE, i64 16), ptr %i.s, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal10OnCallSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i.i: ; preds = %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZN7testing8internal10OnCallSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 4
  %i.z = icmp eq i32 %1, 1
  br i1 %i.z, label %bb.h, label %_ZN7testing8internal10OnCallSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !113
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !48
  invoke void %i.ac(ptr noundef %i.ad)
          to label %_ZN7testing8internal10OnCallSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev.exit unwind label %bb.i, !inline_history !2

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #28, !inline_history !114
  unreachable

_ZN7testing8internal10OnCallSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev.exit: ; preds = %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit.i, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i.i, %bb.g, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ag) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 144) #27
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN7testing8internal10OnCallSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !273

bb.k:                                             ; preds = %._crit_edge
  %.not.i.i.i3 = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit4, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.f to i64
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.ak) #27
  br label %_ZNSt6vectorIPKvSaIS1_EED2Ev.exit4

_ZNSt6vectorIPKvSaIS1_EED2Ev.exit4:               ; preds = %bb.k, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE32UntypedDescribeUninterestingCallEPKvPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.21, i64 noundef 35) ; 0 uses
  tail call void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE23DescribeDefaultActionToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %2)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.22, i64 noundef 19) ; 0 uses
  %i.c = tail call noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase4NameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !17
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41
  %i.j = or i32 %i.i, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #26
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.c, i64 noundef %i.k) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.26, i64 noundef 1) ; 0 uses
  tail call void @_ZN7testing8internal12PrintTupleToISt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EELm3EEEvRKT_St17integral_constantImXT0_EEPSo(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %2)
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.27, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE30UntypedFindMatchingExpectationEPKvPSF_PbPSoSI_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  invoke void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280, !noalias !281 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !280, !noalias !282
  %.not12.i = icmp eq ptr %i.c, %i.d
  br i1 %.not12.i, label %.loopexit39, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.thread.i
  %.sroa.08.013.i = phi ptr [ %i.e, %_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.thread.i ], [ %i.c, %.noexc ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.08.013.i, i64 -16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118  ; 8 uses
  invoke void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %.lr.ph.i
  invoke void @_ZNK7testing8internal15ExpectationBase25CheckActionCountIfNotDoneEv(ptr noundef nonnull align 8 dereferenceable(400) %i.f)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %.noexc26
  invoke void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %.noexc27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 164
  %i.h = load i8, ptr %i.g, align 4, !tbaa !137, !range !138, !noundef !139
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.noexc28
  %i.j = invoke noundef zeroext i1 @_ZNK7testing8internal15ExpectationBase28AllPrerequisitesAreSatisfiedEv(ptr noundef nonnull align 8 dereferenceable(400) %i.f)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.b
  br i1 %i.j, label %_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.i, label %_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.thread.i

_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.i: ; preds = %.noexc29
  %i.k = invoke noundef zeroext i1 @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE7MatchesERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(400) %i.f, ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.i
  br i1 %i.k, label %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE29FindMatchingExpectationLockedERKSt5tupleIJS3_SB_SB_EE.exit, label %_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.thread.i

_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.thread.i: ; preds = %.noexc30, %.noexc29, %.noexc28
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !280, !noalias !282
  %.not.i = icmp eq ptr %i.e, %i.l
  br i1 %.not.i, label %.loopexit39, label %.lr.ph.i, !llvm.loop !278

.loopexit39:                                      ; preds = %_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.thread.i, %.noexc
  invoke void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %.loopexit39
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.31, i64 noundef 33)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc32:                                         ; preds = %.noexc31
  invoke void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE23DescribeDefaultActionToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %4)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %.noexc32
  invoke void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE28PrintTriedExpectationsLockedERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %5)
          to label %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE33FormatUnexpectedCallMessageLockedERKSt5tupleIJS3_SB_SB_EEPSoSI_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE29FindMatchingExpectationLockedERKSt5tupleIJS3_SB_SB_EE.exit: ; preds = %.noexc30
  invoke void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE29FindMatchingExpectationLockedERKSt5tupleIJS3_SB_SB_EE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.p = load i32, ptr %i.o, align 8, !tbaa !140
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !141  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.p)
          to label %_ZNK7testing8internal15ExpectationBase11IsSaturatedEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !279

_ZNK7testing8internal15ExpectationBase11IsSaturatedEv.exit: ; preds = %.noexc35
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %3, align 1, !tbaa !142
  %i.w = invoke noundef ptr @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21GetActionForArgumentsEPKNS0_14FunctionMockerISC_EERKSt5tupleIJS3_SB_SB_EEPSoSM_(ptr noundef nonnull align 8 dereferenceable(400) %i.f, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %4, ptr noundef %5)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.c:                                             ; preds = %_ZNK7testing8internal15ExpectationBase11IsSaturatedEv.exit
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  %.not.i.i.not.i.i = icmp eq ptr %i.y, null
  %spec.select = select i1 %.not.i.i.not.i.i, ptr null, ptr %i.w
  br label %bb.f

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE21ShouldHandleArgumentsERKSt5tupleIJS3_SB_SB_EE.exit.i, %bb.b, %.noexc27, %.noexc26, %.lr.ph.i, %.noexc35, %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE29FindMatchingExpectationLockedERKSt5tupleIJS3_SB_SB_EE.exit, %.noexc33, %.noexc32, %.noexc31, %.loopexit39, %bb.a, %_ZNK7testing8internal15ExpectationBase11IsSaturatedEv.exit
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit:    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp52

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %spec.select, %bb.d ]
  store ptr %.0, ptr %2, align 8, !tbaa !106
  br label %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE33FormatUnexpectedCallMessageLockedERKSt5tupleIJS3_SB_SB_EEPSoSI_.exit

_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE33FormatUnexpectedCallMessageLockedERKSt5tupleIJS3_SB_SB_EEPSoSI_.exit: ; preds = %.noexc33, %bb.f
  %.022 = phi ptr [ %i.f, %bb.f ], [ null, %.noexc33 ]
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZN7testing8internal14GTestMutexLockD2Ev.exit37 unwind label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE33FormatUnexpectedCallMessageLockedERKSt5tupleIJS3_SB_SB_EEPSoSI_.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable

_ZN7testing8internal14GTestMutexLockD2Ev.exit37:  ; preds = %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE33FormatUnexpectedCallMessageLockedERKSt5tupleIJS3_SB_SB_EEPSoSI_.exit
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE16UntypedPrintArgsEPKvPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.26, i64 noundef 1) ; 0 uses
  tail call void @_ZN7testing8internal12PrintTupleToISt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EELm3EEEvRKT_St17integral_constantImXT0_EEPSo(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull %2)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.27, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !143, !range !138, !noundef !139
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !144
  %i.f = tail call i64 @pthread_self() #31
  %i.g = icmp eq i64 %i.e, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  %i.i = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.h)
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef 1668)
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.14, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0)
          to label %_ZNSolsEPKv.exit unwind label %bb.e ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c, %_ZNSolsEPKv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.a, align 8, !tbaa !143
  %i.b = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #26 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef 1662)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.16, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.17, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.b)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #26 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef 1650)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.17, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.a)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.f = tail call i64 @pthread_self() #31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.f, ptr %i.g, align 8, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.h, align 8, !tbaa !143
  ret void
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #14

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.h = icmp eq i32 %1, 1
  br i1 %i.h, label %bb.c, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !48
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.o, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66
  %.not.i.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48
  %2 = atomicrmw add ptr %i.u, i32 -1 acq_rel, align 4
  %i.v = icmp eq i32 %2, 1
  br i1 %i.v, label %bb.f, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !48
  invoke void %i.y(ptr noundef %i.z)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i: ; preds = %bb.f, %bb.e, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %.not.i.i.i3.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i3.i, label %_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48
  %3 = atomicrmw add ptr %i.ah, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %3, 1
  br i1 %i.ai, label %bb.i, label %_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !66
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !48
  invoke void %i.al(ptr noundef %i.am)
          to label %_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EED2Ev.exit unwind label %bb.j, !inline_history !1

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7DestroyEv.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7DestroyEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7DestroyEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7DestroyEv.exit unwind label %bb.d, !inline_history !283

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE7DestroyEv.exit: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit unwind label %bb.d, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !114
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 245)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 251)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE23DescribeDefaultActionToERKSt5tupleIJS3_SB_SB_EEPSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146, !noalias !288
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.08.0.i = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.c ] ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !146, !noalias !289
  %.not.i = icmp eq ptr %.sroa.08.0.i, %i.d
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106  ; 3 uses
  %i.g = tail call noundef zeroext i1 @_ZNK7testing8internal10OnCallSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE7MatchesERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br i1 %i.g, label %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE14FindOnCallSpecERKSt5tupleIJS3_SB_SB_EE.exit, label %bb.b, !llvm.loop !3

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.23, i64 noundef 20) ; 0 uses
  br label %bb.f

_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE14FindOnCallSpecERKSt5tupleIJS3_SB_SB_EE.exit: ; preds = %bb.c
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.24, i64 noundef 36) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !149
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !150
  call void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.j, i32 noundef %i.l)
  %i.m = load ptr, ptr %3, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE14FindOnCallSpecERKSt5tupleIJS3_SB_SB_EE.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !48
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNK7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE14FindOnCallSpecERKSt5tupleIJS3_SB_SB_EE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.e
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !48
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  ret void
}

declare noundef ptr @_ZNK7testing8internal25UntypedFunctionMockerBase4NameEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7testing8internal10OnCallSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE7MatchesERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %3 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZN7testing8internal11TuplePrefixILm3EE7MatchesISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %3, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.g = icmp ne ptr %i.f, null
end_hunk_3
begin_hunk_4_@_ZN7testing8internal11TuplePrefixILm3EE22ExplainMatchFailuresToISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEvRKT_RKT0_PSo:bb.a
  %i.aa = icmp ne ptr %i.z, null
  %i.ab = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.aa)
          to label %.noexc29 unwind label %bb.o

.noexc29:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  br i1 %i.ab, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 245)
          to label %.noexc30 unwind label %bb.o

.noexc30:                                         ; preds = %bb.g
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i28 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i28: ; preds = %.noexc30
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.i

bb.h:                                             ; preds = %.noexc30
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i28, %.noexc29
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !171
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit unwind label %bb.o, !inline_history !172

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit: ; preds = %bb.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.50, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit
  invoke void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull %2)
          to label %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit unwind label %bb.o

_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ai, ptr %7, align 8, !tbaa !45, !alias.scope !319
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !47, !alias.scope !319
  store i8 0, ptr %i.ai, align 8, !tbaa !48, !alias.scope !319
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23, !noalias !319 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !noalias !319 ; 2 uses
  %i.ao = icmp ugt ptr %i.al, %i.an
  %.08.i.i.i.i = select i1 %i.ao, ptr %i.al, ptr %i.an ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i37 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i37, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24, !noalias !319 ; 2 uses
  %i.ar = ptrtoint ptr %.08.i.i.i.i to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.aq, i64 noundef %i.at)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %7, align 8, !tbaa !53, !alias.scope !319 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ai
  br i1 %i.ax, label %.body38, label %.body38.sink.split

bb.l:                                             ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.k

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.l, %bb.j
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !47
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %.noexc40 unwind label %bb.p   ; 0 uses

.noexc40:                                         ; preds = %bb.m
  %i.bc = load ptr, ptr %7, align 8, !tbaa !53
  %i.bd = load i64, ptr %i.aj, align 8, !tbaa !47
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bc, i64 noundef %i.bd)
          to label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit unwind label %bb.p ; 0 uses

_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit, %.noexc40
  %i.bf = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ai
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit
  %i.bh = load i64, ptr %i.ai, align 8, !tbaa !48
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.o ; 0 uses

bb.n:                                             ; preds = %_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS9_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit, %bb.i, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f, %bb.e, %bb.c, %_ZN7testing25StringMatchResultListenerC2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.noexc40, %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ai
  br i1 %i.bo, label %.body38, label %.body38.sink.split

.body38.sink.split:                               ; preds = %bb.p, %bb.k
  %.sink = phi ptr [ %i.aw, %bb.k ], [ %i.bn, %bb.p ]
  %.pn.ph = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.bm, %bb.p ]
  %i.bp = load i64, ptr %i.ai, align 8, !tbaa !48
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bq) #27
  br label %.body38

.body38:                                          ; preds = %.body38.sink.split, %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.bm, %bb.p ], [ %.pn.ph, %.body38.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !17
  %i.br = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.br, ptr %i.l, align 8, !tbaa !17
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bt = getelementptr i8, ptr %i.br, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.l, i64 %i.bu
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !17
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bw, ptr %i.m, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bx, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !53 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !48
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27, !inline_history !167
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bx, align 8, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #26, !inline_history !167
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cf, ptr %i.l, align 8, !tbaa !17
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.l, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.ck, align 8, !tbaa !169
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cl) #26, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !17
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i47, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i48

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i48: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !66
  %.not.i.i49 = icmp eq ptr %i.co, null
  br i1 %.not.i.i49, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i48
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !48
  %8 = atomicrmw add ptr %i.cp, i32 -1 acq_rel, align 4
  %i.cq = icmp eq i32 %8, 1
  br i1 %i.cq, label %bb.r, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !66
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !48
  invoke void %i.ct(ptr noundef %i.cu)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.s, !inline_history !1

bb.s:                                             ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i48, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.body:                                            ; preds = %bb.d, %bb.h, %bb.o, %.body38
  %.pn19 = phi { ptr, i32 } [ %.pn, %.body38 ], [ %i.s, %bb.d ], [ %i.bl, %bb.o ], [ %i.ad, %bb.h ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %6) #26
  br label %bb.t

bb.t:                                             ; preds = %.body, %bb.n
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %.body ], [ %i.bk, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11TuplePrefixILm2EE22ExplainMatchFailuresToISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEvRKT_RKT0_PSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::Matcher", align 8  ; 9 uses
  %6 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN7testing8internal11TuplePrefixILm1EE22ExplainMatchFailuresToISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEvRKT_RKT0_PSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.d, null
  %i.h = inttoptr i64 %i.g to ptr
  br i1 %.not.i.i.i, label %_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS9_.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.k = atomicrmw add ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS9_.exit

_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS9_.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !160, !nonnull !139, !align !156 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.n)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.n

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS9_.exit
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.r = icmp ne ptr %i.q, null
  %i.s = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.r)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 233)
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %bb.c
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc22
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

bb.d:                                             ; preds = %.noexc22
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !157
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull %6)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit unwind label %bb.o, !inline_history !6

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit: ; preds = %bb.e
  br i1 %i.x, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, label %bb.f

bb.f:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.49, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %_ZNSolsEm.exit unwind label %bb.o

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.37, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %_ZNSolsEm.exit
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ac = icmp ne ptr %i.ab, null
  %i.ad = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ac)
          to label %.noexc29 unwind label %bb.o

.noexc29:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 245)
          to label %.noexc30 unwind label %bb.o

.noexc30:                                         ; preds = %bb.g
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i28 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i28: ; preds = %.noexc30
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.i

bb.h:                                             ; preds = %.noexc30
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i28, %.noexc29
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !171
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit unwind label %bb.o, !inline_history !172

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit: ; preds = %bb.i
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.50, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit
  invoke void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull %2)
          to label %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit unwind label %bb.o

_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !45, !alias.scope !329
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.al, align 8, !tbaa !47, !alias.scope !329
  store i8 0, ptr %i.ak, align 8, !tbaa !48, !alias.scope !329
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23, !noalias !329 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !329 ; 2 uses
  %i.aq = icmp ugt ptr %i.an, %i.ap
  %.08.i.i.i.i = select i1 %i.aq, ptr %i.an, ptr %i.ap ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i37 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i37, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24, !noalias !329 ; 2 uses
  %i.at = ptrtoint ptr %.08.i.i.i.i to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.as, i64 noundef %i.av)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %7, align 8, !tbaa !53, !alias.scope !329 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ak
  br i1 %i.az, label %.body38, label %.body38.sink.split

bb.l:                                             ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PSo.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.k

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.l, %bb.j
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !47
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %.noexc40 unwind label %bb.p   ; 0 uses

.noexc40:                                         ; preds = %bb.m
  %i.be = load ptr, ptr %7, align 8, !tbaa !53
  %i.bf = load i64, ptr %i.al, align 8, !tbaa !47
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.be, i64 noundef %i.bf)
          to label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit unwind label %bb.p ; 0 uses

_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit, %.noexc40
  %i.bh = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ak
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit
  %i.bj = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.o ; 0 uses

bb.n:                                             ; preds = %_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS9_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo.exit, %bb.i, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f, %bb.e, %bb.c, %_ZN7testing25StringMatchResultListenerC2Ev.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.noexc40, %bb.m
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ak
  br i1 %i.bq, label %.body38, label %.body38.sink.split

.body38.sink.split:                               ; preds = %bb.p, %bb.k
  %.sink = phi ptr [ %i.ay, %bb.k ], [ %i.bp, %bb.p ]
  %.pn.ph = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.bo, %bb.p ]
  %i.br = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bs) #27
  br label %.body38

.body38:                                          ; preds = %.body38.sink.split, %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.bo, %bb.p ], [ %.pn.ph, %.body38.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainES9_PNS_19MatchResultListenerE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !17
  %i.bt = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bt, ptr %i.n, align 8, !tbaa !17
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.n, i64 %i.bw
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !17
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.by, ptr %i.o, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bz, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !53 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !48
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #27, !inline_history !167
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bz, align 8, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #26, !inline_history !167
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ch, ptr %i.n, align 8, !tbaa !17
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cj = getelementptr i8, ptr %i.ch, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %i.n, i64 %i.ck
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.cm, align 8, !tbaa !169
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cn) #26, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %5, align 8, !tbaa !17
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !57  ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i47, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i48

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i48: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !66
  %.not.i.i49 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i49, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i48
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !48
  %8 = atomicrmw add ptr %i.cr, i32 -1 acq_rel, align 4
  %i.cs = icmp eq i32 %8, 1
  br i1 %i.cs, label %bb.r, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !66
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.cv(ptr noundef %i.cw)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.s, !inline_history !1

bb.s:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i48, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.body:                                            ; preds = %bb.d, %bb.h, %bb.o, %.body38
  %.pn19 = phi { ptr, i32 } [ %.pn, %.body38 ], [ %i.u, %bb.d ], [ %i.bn, %bb.o ], [ %i.af, %bb.h ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %6) #26
  br label %bb.t

bb.t:                                             ; preds = %.body, %bb.n
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %.body ], [ %i.bm, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 245)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11TuplePrefixILm1EE22ExplainMatchFailuresToISt5tupleIJNS_7MatcherIN5nglog11LogSeverityEEENS5_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESH_EES4_IJS7_SG_SG_EEEEvRKT_RKT0_PSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::Matcher.19", align 8 ; 9 uses
  %6 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.d, null
  %i.h = inttoptr i64 %i.g to ptr
  br i1 %.not.i.i.i, label %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i
  %i.k = atomicrmw add ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit

_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %5, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_ZN7testing25StringMatchResultListenerC2Ev.exit unwind label %bb.n

_ZN7testing25StringMatchResultListenerC2Ev.exit:  ; preds = %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.q = icmp ne ptr %i.p, null
  %i.r = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.q)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZN7testing25StringMatchResultListenerC2Ev.exit
  br i1 %i.r, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 233)
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %bb.c
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc22
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

bb.d:                                             ; preds = %.noexc22
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !158
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull %6)
          to label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE15MatchAndExplainERKS3_PNS_19MatchResultListenerE.exit unwind label %bb.o, !inline_history !330

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE15MatchAndExplainERKS3_PNS_19MatchResultListenerE.exit: ; preds = %bb.e
  br i1 %i.w, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, label %bb.f

bb.f:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE15MatchAndExplainERKS3_PNS_19MatchResultListenerE.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.49, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %_ZNSolsEm.exit unwind label %bb.o

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.37, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %_ZNSolsEm.exit
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ab)
          to label %.noexc29 unwind label %bb.o

.noexc29:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  br i1 %i.ac, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 245)
          to label %.noexc30 unwind label %bb.o

.noexc30:                                         ; preds = %bb.g
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i28 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i28: ; preds = %.noexc30
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.i

bb.h:                                             ; preds = %.noexc30
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i28, %.noexc29
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !173
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE10DescribeToEPSo.exit unwind label %bb.o, !inline_history !337

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE10DescribeToEPSo.exit: ; preds = %bb.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.50, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE10DescribeToEPSo.exit
  %i.aj = load i32, ptr %i.l, align 8, !tbaa !161
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.aj)
          to label %_ZN7testing8internal14UniversalPrintIN5nglog11LogSeverityEEEvRKT_PSo.exit unwind label %bb.o ; 0 uses

_ZN7testing8internal14UniversalPrintIN5nglog11LogSeverityEEEvRKT_PSo.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.al, ptr %7, align 8, !tbaa !45, !alias.scope !341
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.am, align 8, !tbaa !47, !alias.scope !341
  store i8 0, ptr %i.al, align 8, !tbaa !48, !alias.scope !341
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !23, !noalias !341 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ao, null
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !341 ; 2 uses
  %i.ar = icmp ugt ptr %i.ao, %i.aq
  %.08.i.i.i.i = select i1 %i.ar, ptr %i.ao, ptr %i.aq ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i37 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i37, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN7testing8internal14UniversalPrintIN5nglog11LogSeverityEEEvRKT_PSo.exit
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24, !noalias !341 ; 2 uses
  %i.au = ptrtoint ptr %.08.i.i.i.i to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.at, i64 noundef %i.aw)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %7, align 8, !tbaa !53, !alias.scope !341 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.al
  br i1 %i.ba, label %.body38, label %.body38.sink.split

bb.l:                                             ; preds = %_ZN7testing8internal14UniversalPrintIN5nglog11LogSeverityEEEvRKT_PSo.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.k

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.l, %bb.j
  %i.bc = load i64, ptr %i.am, align 8, !tbaa !47
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2)
          to label %.noexc40 unwind label %bb.p   ; 0 uses

.noexc40:                                         ; preds = %bb.m
  %i.bf = load ptr, ptr %7, align 8, !tbaa !53
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !47
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bf, i64 noundef %i.bg)
          to label %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit unwind label %bb.p ; 0 uses

_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit: ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit, %.noexc40
  %i.bi = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.al
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !48
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal15PrintIfNotEmptyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %bb.o ; 0 uses

bb.n:                                             ; preds = %_ZN7testing7MatcherIN5nglog11LogSeverityEEC2ERKS3_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE10DescribeToEPSo.exit, %bb.i, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f, %bb.e, %bb.c, %_ZN7testing25StringMatchResultListenerC2Ev.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.noexc40, %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.al
  br i1 %i.br, label %.body38, label %.body38.sink.split

.body38.sink.split:                               ; preds = %bb.p, %bb.k
  %.sink = phi ptr [ %i.az, %bb.k ], [ %i.bq, %bb.p ]
  %.pn.ph = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.bp, %bb.p ]
  %i.bs = load i64, ptr %i.al, align 8, !tbaa !48
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bt) #27
  br label %.body38

.body38:                                          ; preds = %.body38.sink.split, %bb.p, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.bp, %bb.p ], [ %.pn.ph, %.body38.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE15MatchAndExplainERKS3_PNS_19MatchResultListenerE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !17
  %i.bu = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bu, ptr %i.m, align 8, !tbaa !17
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %i.m, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !17
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bz, ptr %i.n, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ca, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !48
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #27, !inline_history !167
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ca, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ch) #26, !inline_history !167
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ci, ptr %i.m, align 8, !tbaa !17
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ck = getelementptr i8, ptr %i.ci, i64 -24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds i8, ptr %i.m, i64 %i.cl
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.cn, align 8, !tbaa !169
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.co) #26, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %5, align 8, !tbaa !17
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i47, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i48

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i48: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !63
  %.not.i.i49 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i49, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i48
  %i.cs = load ptr, ptr %i.e, align 8, !tbaa !48
  %8 = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.ct = icmp eq i32 %8, 1
  br i1 %i.ct, label %bb.r, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !63
  %i.cx = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.cw(ptr noundef %i.cx)
          to label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit unwind label %bb.s, !inline_history !0

bb.s:                                             ; preds = %bb.r
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #28, !inline_history !64
  unreachable

_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i48, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

.body:                                            ; preds = %bb.d, %bb.h, %bb.o, %.body38
  %.pn19 = phi { ptr, i32 } [ %.pn, %.body38 ], [ %i.t, %bb.d ], [ %i.bo, %bb.o ], [ %i.ae, %bb.h ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %6) #26
  br label %bb.t

bb.t:                                             ; preds = %.body, %bb.n
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %.body ], [ %i.bn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 245)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIN5nglog11LogSeverityEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !64
  unreachable

_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 251)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !173
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !64
  unreachable

_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 251)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.d, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing25StringMatchResultListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !17
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.g, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.l, align 8, !tbaa !48
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27, !inline_history !167
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #26, !inline_history !167
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.q, ptr %i.a, align 8, !tbaa !17
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.v, align 8, !tbaa !169
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.w) #26, !inline_history !167
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 408) #27
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343
  tail call void @_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !344  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  tail call void @_ZN7testing11ExpectationD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !342

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing11ExpectationD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

declare void @_ZN7testing8internal15ExpectationBase22RetireAllPreRequisitesEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE16GetCurrentActionEPKNS0_14FunctionMockerISC_EERKSt5tupleIJS3_SB_SB_EE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i32, ptr %i.b, align 8, !tbaa !140  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 82, ptr %i.a, align 8, !tbaa !54
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %3, align 8, !tbaa !53
  %i.f = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(82) %i.e, ptr noundef nonnull align 1 dereferenceable(82) @.str.60, i64 82, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.i = icmp sgt i32 %i.c, 0
  br i1 %i.i, label %_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.a

bb.a:                                             ; preds = %.noexc
  %i.j = invoke noundef ptr @_ZN7testing8internal18GetFailureReporterEv()
          to label %.noexc28 unwind label %bb.o   ; 2 uses

.noexc28:                                         ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 1, ptr noundef nonnull @.str.59, i32 noundef 1186, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.o, !inline_history !345

_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc, %.noexc28
  %i.n = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.d
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.p = load i64, ptr %i.d, align 8, !tbaa !48
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal6AssertEbPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !104
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !103
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 3
  %i.z = trunc i64 %i.y to i32                    ; 5 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.s

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !350, !range !138, !noundef !139
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = icmp sle i32 %i.c, %i.z
  %or.cond.not = or i1 %i.ae, %i.ad
  br i1 %or.cond.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  invoke void @_ZNK7testing8internal15ExpectationBase18DescribeLocationToEPSo(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull %i.af)
          to label %bb.d unwind label %bb.p

end_hunk_4
begin_hunk_5_@_ZN7testing8internal25UntypedFunctionMockerBase21FailureCleanupHandlerD2Ev:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  ret void

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.x, %.critedge.i, %.noexc25, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24, %.noexc, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit10, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.a, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.s, %bb.p, %bb.l, %bb.g, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.dk, %bb.p ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.c ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5 ], [ %i.aw, %bb.g ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19 ], [ %i.ch, %bb.l ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i35 ], [ %i.go, %bb.ab ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i45 ], [ %i.ee, %bb.s ]
  %i.gp = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.gp) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7testing8internal10OnCallSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE9GetActionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 58, ptr %i.a, align 8, !tbaa !54
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !53
  %i.f = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.e, ptr noundef nonnull align 1 dereferenceable(58) @.str.73, i64 58, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.i = icmp eq i32 %i.c, 2
  br i1 %i.i, label %_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.a

bb.a:                                             ; preds = %.noexc.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !150
  %i.l = load ptr, ptr %0, align 8, !tbaa !149
  %i.m = invoke noundef ptr @_ZN7testing8internal18GetFailureReporterEv()
          to label %.noexc4 unwind label %bb.b    ; 2 uses

.noexc4:                                          ; preds = %bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef 1, ptr noundef %i.l, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.b, !inline_history !436

_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc.i, %.noexc4
  %i.q = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.s = load i64, ptr %i.d, align 8, !tbaa !48
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK7testing8internal21UntypedOnCallSpecBase18AssertSpecPropertyEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  ret ptr %i.u

bb.b:                                             ; preds = %.noexc4, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  %i.y = load i64, ptr %i.d, align 8, !tbaa !48
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.v
}

declare void @_ZN7testing8internal16IllegalDoDefaultEPKci(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare void @_ZN7testing8internal23ReportUninterestingCallENS0_12CallReactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE4WithENS_7MatcherIS3_EENSE_ISB_EESG_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::MockSpec") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofreeobj noundef align 8 dereferenceable(24) %2, ptr nofreeobj noundef align 8 dereferenceable(24) %3, ptr nofreeobj noundef align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57, !noalias !440 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48, !noalias !440 ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !57, !noalias !440
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57, !noalias !440 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48, !noalias !440 ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !57, !noalias !440
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52, !noalias !440 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48, !noalias !440 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !52, !noalias !440
  store ptr %1, ptr %0, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.q, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.r, align 8, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.b, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt11_Tuple_implILm2EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ERKSB_.exit.i.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11_Tuple_implILm2EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ERKSB_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i
  %i.u = atomicrmw add ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZNSt11_Tuple_implILm2EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ERKSB_.exit.i.i.i.i

_ZNSt11_Tuple_implILm2EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ERKSB_.exit.i.i.i.i: ; preds = %bb.b, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.p, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.w, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.i, ptr %i.x, align 8, !tbaa !48
  %.not.i.i.i.i4.i.i.i.i = icmp eq ptr %i.g, null ; 2 uses
  br i1 %.not.i.i.i.i4.i.i.i.i, label %_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ERKSB_.exit.i.i.i, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11_Tuple_implILm2EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ERKSB_.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ERKSB_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.aa = atomicrmw add ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ERKSB_.exit.i.i.i

_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ERKSB_.exit.i.i.i: ; preds = %bb.c, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i.i.i, %_ZNSt11_Tuple_implILm2EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEC2ERKSB_.exit.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.v, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.n, ptr %i.ad, align 8, !tbaa !48
  %.not.i.i.i.i4.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i4.i.i.i, label %bb.e, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ERKSB_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i.i.i
  %i.ag = atomicrmw add ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNSt11_Tuple_implILm1EJN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEC2ERKSB_.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %i.ab, align 8, !tbaa !17
  br label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i: ; preds = %bb.d, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %i.ab, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i
  %5 = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.aj = icmp eq i32 %5, 1
  br i1 %i.aj, label %bb.g, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !63
  invoke void %i.ak(ptr noundef %i.o)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i unwind label %bb.h, !inline_history !0

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i: ; preds = %bb.e, %bb.g, %bb.f, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i
  br i1 %.not.i.i.i.i4.i.i.i.i, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66
  %.not.i.i.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i
  %6 = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4
  %i.ap = icmp eq i32 %6, 1
  br i1 %i.ap, label %bb.j, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !66
  invoke void %i.aq(ptr noundef %i.j)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i unwind label %bb.k, !inline_history !1

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66
  %.not.i.i.i3.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i
  %7 = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %i.av = icmp eq i32 %7, 1
  br i1 %i.av, label %bb.m, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !66
  invoke void %i.aw(ptr noundef %i.e)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit unwind label %bb.n, !inline_history !1

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i, %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE19MatchAndExplainImplINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS4_RKS3_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %1, align 4, !tbaa !161
  %i.c = load i32, ptr %i.a, align 8, !tbaa !161
  %i.d = icmp eq i32 %i.b, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE12DescribeImplINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEvRKS4_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #0 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 14) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30, i64 noundef 1) ; 0 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !161
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE16GetDescriberImplINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !48
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZN7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !48
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27, !inline_history !441
  br label %_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED2Ev.exit

_ZN7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_ED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_E10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.78, i64 noundef 10) ; 0 uses
  tail call void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_E18DescribeNegationToEPSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.79, i64 noundef 17) ; 0 uses
  tail call void @_ZN7testing8internal13PrintStringToERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7testing18PolymorphicMatcherINS_8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_E15MatchAndExplainESD_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef zeroext i1 @_ZNK7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainIS7_EEbRKT_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7testing8internal15EndsWithMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15MatchAndExplainIS7_EEbRKT_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 6 uses
  %.not.not = icmp ult i64 %i.c, %i.e
  br i1 %.not.not, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.f = sub nuw i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !45, !alias.scope !444
  %i.h = load ptr, ptr %1, align 8, !tbaa !53, !noalias !444
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !444
  store i64 %i.e, ptr %i.a, align 8, !tbaa !54, !noalias !444
  %i.j = icmp ugt i64 %i.e, 15
  br i1 %i.j, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !53, !alias.scope !444
  %i.l = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !444
  store i64 %i.l, ptr %i.g, align 8, !tbaa !48, !alias.scope !444
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.m = phi ptr [ %i.k, %.noexc10.i.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.i, align 1, !tbaa !48
  store i8 %i.n, ptr %i.m, align 1, !tbaa !48
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.i, i64 %i.e, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !444 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !47, !alias.scope !444
  %i.q = load ptr, ptr %3, align 8, !tbaa !53, !alias.scope !444
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !444
  %i.s = load i64, ptr %i.p, align 8, !tbaa !47   ; 4 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !47
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !53
  br label %bb.f

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.v = icmp eq i64 %i.s, 0
  %.pre9 = load ptr, ptr %3, align 8, !tbaa !53   ; 3 uses
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !53
  %bcmp.i = call i32 @bcmp(ptr %.pre9, ptr %i.w, i64 %i.s)
  %i.x = icmp eq i32 %bcmp.i, 0
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit._crit_edge, %bb.e, %bb.d
end_hunk_5
begin_hunk_6_@_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE17AddNewExpectationEPKciSB_RKSt5tupleIJNS_7MatcherIS3_EENSH_ISB_EESJ_EE:bb.a
  br label %common.resume

bb.r:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE9push_backERKS4_.exit, %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.s:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing11ExpectationD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.br, %bb.t ], [ %i.bq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ac

bb.v:                                             ; preds = %bb.p, %_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE3getEv.exit
  %i.bs = load ptr, ptr %i.ao, align 8, !tbaa !70 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7testing8internal15ExpectationBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bt, align 8, !tbaa !72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !73
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #26, !inline_history !458
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #26, !inline_history !458
  br label %_ZNSt12__shared_ptrIN7testing8internal15ExpectationBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.bw, %bb.z ], [ %i.cg, %bb.aa ]
  %i.ch = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ch, label %bb.ab, label %_ZNSt12__shared_ptrIN7testing8internal15ExpectationBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #26
  br label %_ZNSt12__shared_ptrIN7testing8internal15ExpectationBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7testing8internal15ExpectationBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %i.b

bb.ac:                                            ; preds = %bb.r, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.r ], [ %.pn, %bb.u ]
  call void @_ZNSt12__shared_ptrIN7testing8internal15ExpectationBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %common.resume
}

declare void @_ZN7testing4Mock31RegisterUseByOnCallOrExpectCallEPKvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK7testing8Sequence14AddExpectationERKNS_11ExpectationE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN7testing11ExpectationC1ERKSt10shared_ptrINS_8internal15ExpectationBaseEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN7testing8internal15ExpectationBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !463
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !463
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN7testing8internal15ExpectationBaseC2EPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7testing8internal15ExpectationBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEE, i64 16), ptr %0, align 8, !tbaa !17
  invoke void @_ZNK7testing8internal15ExpectationBase25CheckActionCountIfNotDoneEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEEE, i64 16), ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !111  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i: ; preds = %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !113
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.q, i32 -1 acq_rel, align 4
  %i.r = icmp eq i32 %1, 1
  br i1 %i.r, label %bb.f, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !48
  invoke void %i.u(ptr noundef %i.v)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit unwind label %bb.g, !inline_history !2

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #28, !inline_history !114
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit: ; preds = %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i, %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.y) #26
  tail call void @_ZN7testing8internal15ExpectationBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #26
  ret void

.lr.ph:                                           ; preds = %bb.b, %bb.k
  %i.z = phi ptr [ %i.ah, %bb.k ], [ %i.d, %bb.b ]
  %.sroa.05.09 = phi ptr [ %i.ai, %bb.k ], [ %i.b, %bb.b ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.05.09, align 8, !tbaa !106 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i2, label %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3)
          to label %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit3 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #28
  unreachable

_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit3: ; preds = %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #27
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !146
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit3
  %i.ah = phi ptr [ %i.z, %.lr.ph ], [ %.pre, %_ZN7testing6ActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit3 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.ah
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !464

bb.l:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED0Ev(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 400) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE27MaybeDescribeExtraMatcherToEPSo(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i8, ptr %i.a, align 8, !tbaa !465, !range !138, !noundef !139
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.41, i64 noundef 19) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = icmp ne ptr %i.g, null
  %i.i = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.h)
  br i1 %i.i, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef 245)
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.k

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !145
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %1, i1 noundef zeroext false), !inline_history !166
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.25, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE10DescribeToEPSo.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE9GetHandleEv(ptr dead_on_unwind noalias writable sret(%"class.testing::Expectation") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187
  tail call void @_ZN7testing8internal25UntypedFunctionMockerBase11GetHandleOfEPNS0_15ExpectationBaseE(ptr dead_on_unwind writable sret(%"class.testing::Expectation") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing7MatcherIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %1 = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !48
  invoke void %i.j(ptr noundef %i.k)
          to label %_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit unwind label %bb.d, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !114
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt5tupleIJN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
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
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.88, i64 noundef 13) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.89, i64 noundef 11) ; 0 uses
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

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(400) %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !163    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #30
  unreachable

_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !106
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !106
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !42
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !42
  br label %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit

_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !106, !alias.scope !474
  store ptr null, ptr %i.z, align 8, !tbaa !70, !alias.scope !474
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !106, !alias.scope !473
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !118, !alias.scope !474
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !469

_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN7testing8internal15ExpectationBaseEEC2ERKS3_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ah, %.lr.ph.i.i.i18 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ag, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !106, !alias.scope !476
  store ptr null, ptr %i.ae, align 8, !tbaa !70, !alias.scope !476
  store <2 x ptr> %i.af, ptr %.012.i.i.i19, align 8, !tbaa !106, !alias.scope !475
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !118, !alias.scope !476
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !469

_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ah, %.lr.ph.i.i.i18 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7testing8internal15ExpectationBaseEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !191
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_141ScopedMockLogTest_LogDuringIntercept_Test8TestBodyEv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false), !noalias !513
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !54, !noalias !513 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !47, !noalias !513
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !53, !noalias !513
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !48, !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26, !noalias !513
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.an = load i16, ptr %i.am, align 8, !noalias !513
  store i16 %i.an, ptr %i.al, align 8, !noalias !513
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.ao, align 8, !tbaa !57, !alias.scope !513
  %i.aq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.l unwind label %bb.gm      ; 3 uses

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 48) #27, !noalias !513
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i32 1, ptr %i.aq, align 4, !tbaa !59, !noalias !513
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = ptrtoint ptr %i.w to i64
  store i64 %i.at, ptr %i.as, align 8, !tbaa !61, !noalias !513
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !48, !alias.scope !513
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %8, align 8, !tbaa !17, !alias.scope !513
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing5StrEqIA20_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %11, ptr noundef nonnull align 1 dereferenceable(20) @.str.93)
          to label %bb.m unwind label %bb.gn

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.au = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc90 unwind label %bb.go  ; 7 uses

.noexc90:                                         ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.au, align 8, !tbaa !17, !noalias !514
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 3 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !45, !noalias !514
  %i.ax = load ptr, ptr %11, align 8, !tbaa !53, !noalias !514 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !47, !noalias !514 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26, !noalias !514
  store i64 %i.az, ptr %i.i, align 8, !tbaa !54, !noalias !514
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i.i.i.i88, label %._crit_edge.i.i.i.i.i87

.noexc.i.i.i.i88:                                 ; preds = %.noexc90
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc.i89 unwind label %bb.q, !noalias !514 ; 2 uses

.noexc.i89:                                       ; preds = %.noexc.i.i.i.i88
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !53, !noalias !514
  %i.bc = load i64, ptr %i.i, align 8, !tbaa !54, !noalias !514
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !48, !noalias !514
  br label %._crit_edge.i.i.i.i.i87

._crit_edge.i.i.i.i.i87:                          ; preds = %.noexc.i89, %.noexc90
  %i.bd = phi ptr [ %i.bb, %.noexc.i89 ], [ %i.aw, %.noexc90 ] ; 2 uses
  switch i64 %i.az, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i87
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !48, !noalias !514
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !48, !noalias !514
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ax, i64 %i.az, i1 false), !noalias !514
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i.i87
  %i.bf = load i64, ptr %i.i, align 8, !tbaa !54, !noalias !514 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !47, !noalias !514
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !53, !noalias !514
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !48, !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26, !noalias !514
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bl = load i16, ptr %i.bk, align 8, !noalias !514
  store i16 %i.bl, ptr %i.bj, align 8, !noalias !514
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.bm, align 8, !tbaa !57, !alias.scope !514
  %i.bo = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.r unwind label %bb.go      ; 3 uses

bb.q:                                             ; preds = %.noexc.i.i.i.i88
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 48) #27, !noalias !514
  br label %.body92

bb.r:                                             ; preds = %bb.p
  store i32 1, ptr %i.bo, align 4, !tbaa !59, !noalias !514
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = ptrtoint ptr %i.au to i64
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !61, !noalias !514
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !48, !alias.scope !514
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %10, align 8, !tbaa !17, !alias.scope !514
  invoke void @_ZN5nglog13nglog_testing13ScopedMockLog9gmock_LogERKN7testing7MatcherINS_11LogSeverityEEERKNS3_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESI_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::MockSpec") align 8 %6, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.s unwind label %bb.gp

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7testing8internal18GetWithoutMatchersEv()
          to label %bb.t unwind label %bb.gq

bb.t:                                             ; preds = %bb.s
  %i.bs = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE18InternalExpectedAtEPKciSF_SF_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull @.str.2, i32 noundef 85, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.94)
          to label %bb.u unwind label %bb.gq

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.bt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc95 unwind label %bb.gq  ; 6 uses

.noexc95:                                         ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 1, ptr %i.bv, align 8, !tbaa !72, !noalias !515
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 1, ptr %i.bw, align 4, !tbaa !73, !noalias !515
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7testing8internal23InvokeWithoutArgsActionIPFvvEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bt, align 8, !tbaa !17, !noalias !515
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  store i64 ptrtoint (ptr @_ZN12_GLOBAL__N_17LogTreeEv to i64), ptr %i.bx, align 8, !tbaa !106, !noalias !515
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !70, !alias.scope !515
  store ptr %i.bx, ptr %3, align 8, !tbaa !516, !alias.scope !515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.by = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.w unwind label %bb.v       ; 3 uses

bb.v:                                             ; preds = %.noexc95
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EE18StdFunctionAdaptorINS_8internal23InvokeWithoutArgsActionIPFvvEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body96

bb.w:                                             ; preds = %.noexc95
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !194
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.bt, ptr %i.cc, align 8, !tbaa !70
  store ptr %i.by, ptr %12, align 8, !tbaa !196
  store ptr @_ZNSt17_Function_handlerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EN7testing10OnceActionISA_E18StdFunctionAdaptorINSB_8internal23InvokeWithoutArgsActionIPFvvEEEEEE9_M_invokeERKSt9_Any_dataOS1_S9_S9_, ptr %i.ca, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EN7testing10OnceActionISA_E18StdFunctionAdaptorINSB_8internal23InvokeWithoutArgsActionIPFvvEEEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.cb, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.cd = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE8WillOnceENS_10OnceActionISC_EE(ptr noundef nonnull align 8 dereferenceable(400) %i.bs, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.x unwind label %bb.gr      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #28
  unreachable

_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit: ; preds = %bb.x, %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %i.cj, align 8, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i: ; preds = %_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !63
  %.not.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !48
  %38 = atomicrmw add ptr %i.cp, i32 -1 acq_rel, align 4
  %i.cq = icmp eq i32 %38, 1
  br i1 %i.cq, label %bb.ab, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !63
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !48
  invoke void %i.ct(ptr noundef %i.cu)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i unwind label %bb.ac, !inline_history !0

bb.ac:                                            ; preds = %bb.ab
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i: ; preds = %bb.ab, %bb.aa, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i, %_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.cx, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !66
  %.not.i.i.i.i1.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !48
  %39 = atomicrmw add ptr %i.dd, i32 -1 acq_rel, align 4
  %i.de = icmp eq i32 %39, 1
  br i1 %i.de, label %bb.ae, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !66
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !48
  invoke void %i.dh(ptr noundef %i.di)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i unwind label %bb.af, !inline_history !1

bb.af:                                            ; preds = %bb.ae
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i: ; preds = %bb.ae, %bb.ad, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.ci, align 8, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !66
  %.not.i.i.i3.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !48
  %40 = atomicrmw add ptr %i.dq, i32 -1 acq_rel, align 4
  %i.dr = icmp eq i32 %40, 1
  br i1 %i.dr, label %bb.ah, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !66
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !48
  invoke void %i.du(ptr noundef %i.dv)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit unwind label %bb.ai, !inline_history !1

bb.ai:                                            ; preds = %bb.ah
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i, %bb.ag, %bb.ah
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %10, align 8, !tbaa !17
  %i.dy = load ptr, ptr %i.bm, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !66
  %.not.i.i98 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i98, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.eb = load ptr, ptr %i.bn, align 8, !tbaa !48
  %41 = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4
  %i.ec = icmp eq i32 %41, 1
  br i1 %i.ec, label %bb.ak, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ed = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !66
  %i.eg = load ptr, ptr %i.bn, align 8, !tbaa !48
  invoke void %i.ef(ptr noundef %i.eg)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.al, !inline_history !1

bb.al:                                            ; preds = %bb.ak
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.aj, %bb.ak
  %i.ej = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !48
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %8, align 8, !tbaa !17
  %i.eo = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i99, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit102, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i100

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i100: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !66
  %.not.i.i101 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i101, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit102, label %bb.am

bb.am:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i100
  %i.er = load ptr, ptr %i.ap, align 8, !tbaa !48
  %42 = atomicrmw add ptr %i.er, i32 -1 acq_rel, align 4
  %i.es = icmp eq i32 %42, 1
  br i1 %i.es, label %bb.an, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit102

bb.an:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %i.ao, align 8, !tbaa !57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !66
  %i.ew = load ptr, ptr %i.ap, align 8, !tbaa !48
  invoke void %i.ev(ptr noundef %i.ew)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit102 unwind label %bb.ao, !inline_history !1

bb.ao:                                            ; preds = %bb.an
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit102: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i100, %bb.am, %bb.an
  %i.ez = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit102
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !48
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit105

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit105: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %7, align 8, !tbaa !17
  %i.fe = load ptr, ptr %i.u, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i106, label %bb.as, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit105
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !63
  %.not.i.i107 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i107, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i
  %i.fh = load ptr, ptr %i.v, align 8, !tbaa !48
  %43 = atomicrmw add ptr %i.fh, i32 -1 acq_rel, align 4
  %i.fi = icmp eq i32 %43, 1
  br i1 %i.fi, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.fj = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !63
  %i.fm = load ptr, ptr %i.v, align 8, !tbaa !48
  invoke void %i.fl(ptr noundef %i.fm)
          to label %bb.as unwind label %bb.ar, !inline_history !0

bb.ar:                                            ; preds = %bb.aq
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #28, !inline_history !64
  unreachable

bb.as:                                            ; preds = %bb.aq, %bb.ap, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit105
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.fp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %14, align 8, !tbaa !17
  store ptr @_ZZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.fp, align 8, !tbaa !52
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store i64 0, ptr %i.fq, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN7testing5StrEqIA55_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %16, ptr noundef nonnull align 1 dereferenceable(55) @.str.2)
          to label %bb.at unwind label %bb.gv

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.fr = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc111 unwind label %bb.gw ; 7 uses

.noexc111:                                        ; preds = %bb.at
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.fr, align 8, !tbaa !17, !noalias !517
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 24 ; 3 uses
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !45, !noalias !517
  %i.fu = load ptr, ptr %16, align 8, !tbaa !53, !noalias !517 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !47, !noalias !517 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26, !noalias !517
  store i64 %i.fw, ptr %i.h, align 8, !tbaa !54, !noalias !517
  %i.fx = icmp ugt i64 %i.fw, 15
  br i1 %i.fx, label %.noexc.i.i.i.i109, label %._crit_edge.i.i.i.i.i108

.noexc.i.i.i.i109:                                ; preds = %.noexc111
  %i.fy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc.i110 unwind label %bb.ax, !noalias !517 ; 2 uses

.noexc.i110:                                      ; preds = %.noexc.i.i.i.i109
  store ptr %i.fy, ptr %i.fs, align 8, !tbaa !53, !noalias !517
  %i.fz = load i64, ptr %i.h, align 8, !tbaa !54, !noalias !517
  store i64 %i.fz, ptr %i.ft, align 8, !tbaa !48, !noalias !517
  br label %._crit_edge.i.i.i.i.i108

._crit_edge.i.i.i.i.i108:                         ; preds = %.noexc.i110, %.noexc111
  %i.ga = phi ptr [ %i.fy, %.noexc.i110 ], [ %i.ft, %.noexc111 ] ; 2 uses
  switch i64 %i.fw, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i108
  %i.gb = load i8, ptr %i.fu, align 1, !tbaa !48, !noalias !517
  store i8 %i.gb, ptr %i.ga, align 1, !tbaa !48, !noalias !517
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i.i.i.i108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr align 1 %i.fu, i64 %i.fw, i1 false), !noalias !517
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i.i.i.i108
  %i.gc = load i64, ptr %i.h, align 8, !tbaa !54, !noalias !517 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !47, !noalias !517
  %i.ge = load ptr, ptr %i.fs, align 8, !tbaa !53, !noalias !517
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store i8 0, ptr %i.gf, align 1, !tbaa !48, !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26, !noalias !517
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.gi = load i16, ptr %i.gh, align 8, !noalias !517
  store i16 %i.gi, ptr %i.gg, align 8, !noalias !517
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.gj, align 8, !tbaa !57, !alias.scope !517
  %i.gl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.ay unwind label %bb.gw     ; 3 uses

bb.ax:                                            ; preds = %.noexc.i.i.i.i109
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef 48) #27, !noalias !517
  br label %.body113

bb.ay:                                            ; preds = %bb.aw
  store i32 1, ptr %i.gl, align 4, !tbaa !59, !noalias !517
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.go = ptrtoint ptr %i.fr to i64
  store i64 %i.go, ptr %i.gn, align 8, !tbaa !61, !noalias !517
  store ptr %i.gl, ptr %i.gk, align 8, !tbaa !48, !alias.scope !517
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %15, align 8, !tbaa !17, !alias.scope !517
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZN7testing5StrEqIA26_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %18, ptr noundef nonnull align 1 dereferenceable(26) @.str.95)
          to label %bb.az unwind label %bb.gx

bb.az:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.gp = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc119 unwind label %bb.gy ; 7 uses

.noexc119:                                        ; preds = %bb.az
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.gp, align 8, !tbaa !17, !noalias !518
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 24 ; 3 uses
  store ptr %i.gr, ptr %i.gq, align 8, !tbaa !45, !noalias !518
  %i.gs = load ptr, ptr %18, align 8, !tbaa !53, !noalias !518 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !47, !noalias !518 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26, !noalias !518
  store i64 %i.gu, ptr %i.g, align 8, !tbaa !54, !noalias !518
  %i.gv = icmp ugt i64 %i.gu, 15
  br i1 %i.gv, label %.noexc.i.i.i.i117, label %._crit_edge.i.i.i.i.i116

.noexc.i.i.i.i117:                                ; preds = %.noexc119
  %i.gw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.gq, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc.i118 unwind label %bb.bd, !noalias !518 ; 2 uses

.noexc.i118:                                      ; preds = %.noexc.i.i.i.i117
  store ptr %i.gw, ptr %i.gq, align 8, !tbaa !53, !noalias !518
  %i.gx = load i64, ptr %i.g, align 8, !tbaa !54, !noalias !518
  store i64 %i.gx, ptr %i.gr, align 8, !tbaa !48, !noalias !518
  br label %._crit_edge.i.i.i.i.i116

._crit_edge.i.i.i.i.i116:                         ; preds = %.noexc.i118, %.noexc119
  %i.gy = phi ptr [ %i.gw, %.noexc.i118 ], [ %i.gr, %.noexc119 ] ; 2 uses
  switch i64 %i.gu, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i.i116
  %i.gz = load i8, ptr %i.gs, align 1, !tbaa !48, !noalias !518
  store i8 %i.gz, ptr %i.gy, align 1, !tbaa !48, !noalias !518
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gy, ptr align 1 %i.gs, i64 %i.gu, i1 false), !noalias !518
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i.i.i116
  %i.ha = load i64, ptr %i.g, align 8, !tbaa !54, !noalias !518 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !47, !noalias !518
  %i.hc = load ptr, ptr %i.gq, align 8, !tbaa !53, !noalias !518
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ha
  store i8 0, ptr %i.hd, align 1, !tbaa !48, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26, !noalias !518
  %i.he = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.hg = load i16, ptr %i.hf, align 8, !noalias !518
  store i16 %i.hg, ptr %i.he, align 8, !noalias !518
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.hh, align 8, !tbaa !57, !alias.scope !518
  %i.hj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.be unwind label %bb.gy     ; 3 uses

bb.bd:                                            ; preds = %.noexc.i.i.i.i117
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef 48) #27, !noalias !518
  br label %.body121

bb.be:                                            ; preds = %bb.bc
  store i32 1, ptr %i.hj, align 4, !tbaa !59, !noalias !518
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hm = ptrtoint ptr %i.gp to i64
  store i64 %i.hm, ptr %i.hl, align 8, !tbaa !61, !noalias !518
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !48, !alias.scope !518
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %17, align 8, !tbaa !17, !alias.scope !518
  invoke void @_ZN5nglog13nglog_testing13ScopedMockLog9gmock_LogERKN7testing7MatcherINS_11LogSeverityEEERKNS3_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESI_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::MockSpec") align 8 %13, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.bf unwind label %bb.gz

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN7testing8internal18GetWithoutMatchersEv()
          to label %bb.bg unwind label %bb.ha

bb.bg:                                            ; preds = %bb.bf
  %i.hn = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE18InternalExpectedAtEPKciSF_SF_(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull @.str.2, i32 noundef 88, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.96)
          to label %bb.bh unwind label %bb.ha

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.ho = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc124 unwind label %bb.ha ; 6 uses

.noexc124:                                        ; preds = %bb.bh
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i32 1, ptr %i.hq, align 8, !tbaa !72, !noalias !519
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 1, ptr %i.hr, align 4, !tbaa !73, !noalias !519
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7testing8internal23InvokeWithoutArgsActionIPFvvEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ho, align 8, !tbaa !17, !noalias !519
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 3 uses
  store i64 ptrtoint (ptr @_ZN12_GLOBAL__N_19LogForestEv to i64), ptr %i.hs, align 8, !tbaa !106, !noalias !519
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !70, !alias.scope !519
  store ptr %i.hs, ptr %2, align 8, !tbaa !516, !alias.scope !519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  %i.ht = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.bj unwind label %bb.bi     ; 3 uses

bb.bi:                                            ; preds = %.noexc124
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EE18StdFunctionAdaptorINS_8internal23InvokeWithoutArgsActionIPFvvEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.body125

bb.bj:                                            ; preds = %.noexc124
  %i.hv = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !194
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.ho, ptr %i.hx, align 8, !tbaa !70
  store ptr %i.ht, ptr %19, align 8, !tbaa !196
  store ptr @_ZNSt17_Function_handlerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EN7testing10OnceActionISA_E18StdFunctionAdaptorINSB_8internal23InvokeWithoutArgsActionIPFvvEEEEEE9_M_invokeERKSt9_Any_dataOS1_S9_S9_, ptr %i.hv, align 8, !tbaa !183
  store ptr @_ZNSt17_Function_handlerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EN7testing10OnceActionISA_E18StdFunctionAdaptorINSB_8internal23InvokeWithoutArgsActionIPFvvEEEEEE10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.hw, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.hy = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal16TypedExpectationIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE8WillOnceENS_10OnceActionISC_EE(ptr noundef nonnull align 8 dereferenceable(400) %i.hn, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.bk unwind label %bb.hb     ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.hz = load ptr, ptr %i.hw, align 8, !tbaa !108 ; 2 uses
  %.not.i.i128 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i128, label %_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit129, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ia = invoke noundef zeroext i1 %i.hz(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 3)
          to label %_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit129 unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  call void @__clang_call_terminate(ptr %i.ic) #28
  unreachable

_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit129: ; preds = %bb.bk, %bb.bl
  %i.id = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %i.ie, align 8, !tbaa !17
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i290 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i.i290, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i293, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i291

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i291: ; preds = %_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit129
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !63
  %.not.i.i.i.i292 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i292, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i293, label %bb.bn

bb.bn:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i291
  %i.ij = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !48
  %44 = atomicrmw add ptr %i.ik, i32 -1 acq_rel, align 4
  %i.il = icmp eq i32 %44, 1
  br i1 %i.il, label %bb.bo, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i293

bb.bo:                                            ; preds = %bb.bn
  %i.im = load ptr, ptr %i.if, align 8, !tbaa !52
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !63
  %i.ip = load ptr, ptr %i.ij, align 8, !tbaa !48
  invoke void %i.io(ptr noundef %i.ip)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i293 unwind label %bb.bp, !inline_history !0

bb.bp:                                            ; preds = %bb.bo
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i293: ; preds = %bb.bo, %bb.bn, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i291, %_ZN7testing10OnceActionIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EED2Ev.exit129
  %i.is = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.is, align 8, !tbaa !17
  %i.it = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i294 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i.i294, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i297, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i295

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i295: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i293
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !66
  %.not.i.i.i.i1.i296 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i1.i296, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i297, label %bb.bq

bb.bq:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i295
  %i.ix = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !48
  %45 = atomicrmw add ptr %i.iy, i32 -1 acq_rel, align 4
  %i.iz = icmp eq i32 %45, 1
  br i1 %i.iz, label %bb.br, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i297

bb.br:                                            ; preds = %bb.bq
  %i.ja = load ptr, ptr %i.it, align 8, !tbaa !57
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !66
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !48
  invoke void %i.jc(ptr noundef %i.jd)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i297 unwind label %bb.bs, !inline_history !1

bb.bs:                                            ; preds = %bb.br
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i297: ; preds = %bb.br, %bb.bq, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i295, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i293
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.id, align 8, !tbaa !17
  %i.jg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i1.i.i298 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i1.i.i298, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit301, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i299

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i299: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i297
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !66
  %.not.i.i.i3.i.i300 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i3.i.i300, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit301, label %bb.bt

bb.bt:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i299
  %i.jk = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !48
  %46 = atomicrmw add ptr %i.jl, i32 -1 acq_rel, align 4
  %i.jm = icmp eq i32 %46, 1
  br i1 %i.jm, label %bb.bu, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit301

bb.bu:                                            ; preds = %bb.bt
  %i.jn = load ptr, ptr %i.jg, align 8, !tbaa !57
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !66
  %i.jq = load ptr, ptr %i.jk, align 8, !tbaa !48
  invoke void %i.jp(ptr noundef %i.jq)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit301 unwind label %bb.bv, !inline_history !1

bb.bv:                                            ; preds = %bb.bu
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit301: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i297, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i299, %bb.bt, %bb.bu
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %17, align 8, !tbaa !17
  %i.jt = load ptr, ptr %i.hh, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i130, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit133, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i131

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i131: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit301
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !66
  %.not.i.i132 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i132, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit133, label %bb.bw

bb.bw:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i131
  %i.jw = load ptr, ptr %i.hi, align 8, !tbaa !48
  %47 = atomicrmw add ptr %i.jw, i32 -1 acq_rel, align 4
  %i.jx = icmp eq i32 %47, 1
  br i1 %i.jx, label %bb.bx, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit133

bb.bx:                                            ; preds = %bb.bw
  %i.jy = load ptr, ptr %i.hh, align 8, !tbaa !57
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !66
  %i.kb = load ptr, ptr %i.hi, align 8, !tbaa !48
  invoke void %i.ka(ptr noundef %i.kb)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit133 unwind label %bb.by, !inline_history !1

bb.by:                                            ; preds = %bb.bx
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit133: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit301, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i131, %bb.bw, %bb.bx
  %i.ke = load ptr, ptr %18, align 8, !tbaa !53   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i134: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit133
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !48
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit136

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit136: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %15, align 8, !tbaa !17
  %i.kj = load ptr, ptr %i.gj, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i137 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i137, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit140, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i138

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i138: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit136
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !66
  %.not.i.i139 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i139, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit140, label %bb.bz

bb.bz:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i138
  %i.km = load ptr, ptr %i.gk, align 8, !tbaa !48
  %48 = atomicrmw add ptr %i.km, i32 -1 acq_rel, align 4
  %i.kn = icmp eq i32 %48, 1
  br i1 %i.kn, label %bb.ca, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit140

bb.ca:                                            ; preds = %bb.bz
  %i.ko = load ptr, ptr %i.gj, align 8, !tbaa !57
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !66
  %i.kr = load ptr, ptr %i.gk, align 8, !tbaa !48
  invoke void %i.kq(ptr noundef %i.kr)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit140 unwind label %bb.cb, !inline_history !1

bb.cb:                                            ; preds = %bb.ca
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit140: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit136, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i138, %bb.bz, %bb.ca
  %i.ku = load ptr, ptr %16, align 8, !tbaa !53   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i141: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit140
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !48
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit143

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit143: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %14, align 8, !tbaa !17
  %i.kz = load ptr, ptr %i.fp, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i144, label %bb.cf, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i145

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i145: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit143
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !63
  %.not.i.i146 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i146, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i145
  %i.lc = load ptr, ptr %i.fq, align 8, !tbaa !48
  %49 = atomicrmw add ptr %i.lc, i32 -1 acq_rel, align 4
  %i.ld = icmp eq i32 %49, 1
  br i1 %i.ld, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.le = load ptr, ptr %i.fp, align 8, !tbaa !52
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !63
  %i.lh = load ptr, ptr %i.fq, align 8, !tbaa !48
  invoke void %i.lg(ptr noundef %i.lh)
          to label %bb.cf unwind label %bb.ce, !inline_history !0

bb.ce:                                            ; preds = %bb.cd
  %i.li = landingpad { ptr, i32 }
          catch ptr null
  %i.lj = extractvalue { ptr, i32 } %i.li, 0
  call void @__clang_call_terminate(ptr %i.lj) #28, !inline_history !64
  unreachable

bb.cf:                                            ; preds = %bb.cd, %bb.cc, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i145, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.lk = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %21, align 8, !tbaa !17
  store ptr @_ZZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.lk, align 8, !tbaa !52
  %i.ll = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store i64 0, ptr %i.ll, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZN7testing5StrEqIA55_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %23, ptr noundef nonnull align 1 dereferenceable(55) @.str.2)
          to label %bb.cg unwind label %bb.hf

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.lm = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc151 unwind label %bb.hg ; 7 uses

.noexc151:                                        ; preds = %bb.cg
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.lm, align 8, !tbaa !17, !noalias !520
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 24 ; 3 uses
  store ptr %i.lo, ptr %i.ln, align 8, !tbaa !45, !noalias !520
  %i.lp = load ptr, ptr %23, align 8, !tbaa !53, !noalias !520 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !47, !noalias !520 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26, !noalias !520
  store i64 %i.lr, ptr %i.f, align 8, !tbaa !54, !noalias !520
  %i.ls = icmp ugt i64 %i.lr, 15
  br i1 %i.ls, label %.noexc.i.i.i.i149, label %._crit_edge.i.i.i.i.i148

.noexc.i.i.i.i149:                                ; preds = %.noexc151
  %i.lt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.ln, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc.i150 unwind label %bb.ck, !noalias !520 ; 2 uses

.noexc.i150:                                      ; preds = %.noexc.i.i.i.i149
  store ptr %i.lt, ptr %i.ln, align 8, !tbaa !53, !noalias !520
  %i.lu = load i64, ptr %i.f, align 8, !tbaa !54, !noalias !520
  store i64 %i.lu, ptr %i.lo, align 8, !tbaa !48, !noalias !520
  br label %._crit_edge.i.i.i.i.i148

._crit_edge.i.i.i.i.i148:                         ; preds = %.noexc.i150, %.noexc151
  %i.lv = phi ptr [ %i.lt, %.noexc.i150 ], [ %i.lo, %.noexc151 ] ; 2 uses
  switch i64 %i.lr, label %bb.ci [
    i64 1, label %bb.ch
    i64 0, label %bb.cj
  ]

bb.ch:                                            ; preds = %._crit_edge.i.i.i.i.i148
  %i.lw = load i8, ptr %i.lp, align 1, !tbaa !48, !noalias !520
  store i8 %i.lw, ptr %i.lv, align 1, !tbaa !48, !noalias !520
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i.i.i.i.i148
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lv, ptr align 1 %i.lp, i64 %i.lr, i1 false), !noalias !520
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %._crit_edge.i.i.i.i.i148
  %i.lx = load i64, ptr %i.f, align 8, !tbaa !54, !noalias !520 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store i64 %i.lx, ptr %i.ly, align 8, !tbaa !47, !noalias !520
  %i.lz = load ptr, ptr %i.ln, align 8, !tbaa !53, !noalias !520
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lx
  store i8 0, ptr %i.ma, align 1, !tbaa !48, !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !520
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.mc = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.md = load i16, ptr %i.mc, align 8, !noalias !520
  store i16 %i.md, ptr %i.mb, align 8, !noalias !520
  %i.me = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.me, align 8, !tbaa !57, !alias.scope !520
  %i.mg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.cl unwind label %bb.hg     ; 3 uses

bb.ck:                                            ; preds = %.noexc.i.i.i.i149
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef 48) #27, !noalias !520
  br label %.body153

bb.cl:                                            ; preds = %bb.cj
  store i32 1, ptr %i.mg, align 4, !tbaa !59, !noalias !520
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mj = ptrtoint ptr %i.lm to i64
  store i64 %i.mj, ptr %i.mi, align 8, !tbaa !61, !noalias !520
  store ptr %i.mg, ptr %i.mf, align 8, !tbaa !48, !alias.scope !520
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %22, align 8, !tbaa !17, !alias.scope !520
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  invoke void @_ZN7testing5StrEqIA27_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %25, ptr noundef nonnull align 1 dereferenceable(27) @.str.97)
          to label %bb.cm unwind label %bb.hh

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.mk = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc159 unwind label %bb.hi ; 7 uses

.noexc159:                                        ; preds = %bb.cm
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.mk, align 8, !tbaa !17, !noalias !521
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 24 ; 3 uses
  store ptr %i.mm, ptr %i.ml, align 8, !tbaa !45, !noalias !521
  %i.mn = load ptr, ptr %25, align 8, !tbaa !53, !noalias !521 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !47, !noalias !521 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26, !noalias !521
  store i64 %i.mp, ptr %i.e, align 8, !tbaa !54, !noalias !521
  %i.mq = icmp ugt i64 %i.mp, 15
  br i1 %i.mq, label %.noexc.i.i.i.i157, label %._crit_edge.i.i.i.i.i156

.noexc.i.i.i.i157:                                ; preds = %.noexc159
  %i.mr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.ml, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i158 unwind label %bb.cq, !noalias !521 ; 2 uses

.noexc.i158:                                      ; preds = %.noexc.i.i.i.i157
  store ptr %i.mr, ptr %i.ml, align 8, !tbaa !53, !noalias !521
  %i.ms = load i64, ptr %i.e, align 8, !tbaa !54, !noalias !521
  store i64 %i.ms, ptr %i.mm, align 8, !tbaa !48, !noalias !521
  br label %._crit_edge.i.i.i.i.i156

._crit_edge.i.i.i.i.i156:                         ; preds = %.noexc.i158, %.noexc159
  %i.mt = phi ptr [ %i.mr, %.noexc.i158 ], [ %i.mm, %.noexc159 ] ; 2 uses
  switch i64 %i.mp, label %bb.co [
    i64 1, label %bb.cn
    i64 0, label %bb.cp
  ]

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i.i156
  %i.mu = load i8, ptr %i.mn, align 1, !tbaa !48, !noalias !521
  store i8 %i.mu, ptr %i.mt, align 1, !tbaa !48, !noalias !521
  br label %bb.cp

bb.co:                                            ; preds = %._crit_edge.i.i.i.i.i156
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mt, ptr align 1 %i.mn, i64 %i.mp, i1 false), !noalias !521
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %._crit_edge.i.i.i.i.i156
  %i.mv = load i64, ptr %i.e, align 8, !tbaa !54, !noalias !521 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !47, !noalias !521
  %i.mx = load ptr, ptr %i.ml, align 8, !tbaa !53, !noalias !521
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mv
  store i8 0, ptr %i.my, align 1, !tbaa !48, !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !521
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %i.na = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.nb = load i16, ptr %i.na, align 8, !noalias !521
  store i16 %i.nb, ptr %i.mz, align 8, !noalias !521
  %i.nc = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.nc, align 8, !tbaa !57, !alias.scope !521
  %i.ne = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.cr unwind label %bb.hi     ; 3 uses

bb.cq:                                            ; preds = %.noexc.i.i.i.i157
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef 48) #27, !noalias !521
  br label %.body161

bb.cr:                                            ; preds = %bb.cp
  store i32 1, ptr %i.ne, align 4, !tbaa !59, !noalias !521
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nh = ptrtoint ptr %i.mk to i64
  store i64 %i.nh, ptr %i.ng, align 8, !tbaa !61, !noalias !521
  store ptr %i.ne, ptr %i.nd, align 8, !tbaa !48, !alias.scope !521
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %24, align 8, !tbaa !17, !alias.scope !521
  invoke void @_ZN5nglog13nglog_testing13ScopedMockLog9gmock_LogERKN7testing7MatcherINS_11LogSeverityEEERKNS3_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESI_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::MockSpec") align 8 %20, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.cs unwind label %bb.hj

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN7testing8internal18GetWithoutMatchersEv()
          to label %bb.ct unwind label %bb.hk

bb.ct:                                            ; preds = %bb.cs
  %i.ni = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE18InternalExpectedAtEPKciSF_SF_(ptr noundef nonnull align 8 dereferenceable(80) %20, ptr noundef nonnull @.str.2, i32 noundef 91, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.98)
          to label %bb.cu unwind label %bb.hk     ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  %i.nj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %20, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %i.nk, align 8, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i302 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i302, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i305, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i303

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i303: ; preds = %bb.cu
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !63
  %.not.i.i.i.i304 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i304, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i305, label %bb.cv

bb.cv:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i303
  %i.np = getelementptr inbounds nuw i8, ptr %20, i64 72 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !48
  %50 = atomicrmw add ptr %i.nq, i32 -1 acq_rel, align 4
  %i.nr = icmp eq i32 %50, 1
  br i1 %i.nr, label %bb.cw, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i305

bb.cw:                                            ; preds = %bb.cv
  %i.ns = load ptr, ptr %i.nl, align 8, !tbaa !52
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !63
  %i.nv = load ptr, ptr %i.np, align 8, !tbaa !48
  invoke void %i.nu(ptr noundef %i.nv)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i305 unwind label %bb.cx, !inline_history !0

bb.cx:                                            ; preds = %bb.cw
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  %i.nx = extractvalue { ptr, i32 } %i.nw, 0
  call void @__clang_call_terminate(ptr %i.nx) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i305: ; preds = %bb.cw, %bb.cv, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i303, %bb.cu
  %i.ny = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.ny, align 8, !tbaa !17
  %i.nz = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i306 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i.i.i306, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i309, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i307

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i307: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i305
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !66
  %.not.i.i.i.i1.i308 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i1.i308, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i309, label %bb.cy

bb.cy:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i307
  %i.od = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !48
  %51 = atomicrmw add ptr %i.oe, i32 -1 acq_rel, align 4
  %i.of = icmp eq i32 %51, 1
  br i1 %i.of, label %bb.cz, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i309

bb.cz:                                            ; preds = %bb.cy
  %i.og = load ptr, ptr %i.nz, align 8, !tbaa !57
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !66
  %i.oj = load ptr, ptr %i.od, align 8, !tbaa !48
  invoke void %i.oi(ptr noundef %i.oj)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i309 unwind label %bb.da, !inline_history !1

bb.da:                                            ; preds = %bb.cz
  %i.ok = landingpad { ptr, i32 }
          catch ptr null
  %i.ol = extractvalue { ptr, i32 } %i.ok, 0
  call void @__clang_call_terminate(ptr %i.ol) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i309: ; preds = %bb.cz, %bb.cy, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i307, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i305
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.nj, align 8, !tbaa !17
  %i.om = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i1.i.i310 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i.i1.i.i310, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit313, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i311

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i311: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i309
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !66
  %.not.i.i.i3.i.i312 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i3.i.i312, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit313, label %bb.db

bb.db:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i311
  %i.oq = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !48
  %52 = atomicrmw add ptr %i.or, i32 -1 acq_rel, align 4
  %i.os = icmp eq i32 %52, 1
  br i1 %i.os, label %bb.dc, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit313

bb.dc:                                            ; preds = %bb.db
  %i.ot = load ptr, ptr %i.om, align 8, !tbaa !57
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !66
  %i.ow = load ptr, ptr %i.oq, align 8, !tbaa !48
  invoke void %i.ov(ptr noundef %i.ow)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit313 unwind label %bb.dd, !inline_history !1

bb.dd:                                            ; preds = %bb.dc
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  %i.oy = extractvalue { ptr, i32 } %i.ox, 0
  call void @__clang_call_terminate(ptr %i.oy) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit313: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i309, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i311, %bb.db, %bb.dc
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %24, align 8, !tbaa !17
  %i.oz = load ptr, ptr %i.nc, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i164, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i165

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i165: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit313
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !66
  %.not.i.i166 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i166, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167, label %bb.de

bb.de:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i165
  %i.pc = load ptr, ptr %i.nd, align 8, !tbaa !48
  %53 = atomicrmw add ptr %i.pc, i32 -1 acq_rel, align 4
  %i.pd = icmp eq i32 %53, 1
  br i1 %i.pd, label %bb.df, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167

bb.df:                                            ; preds = %bb.de
  %i.pe = load ptr, ptr %i.nc, align 8, !tbaa !57
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !66
  %i.ph = load ptr, ptr %i.nd, align 8, !tbaa !48
  invoke void %i.pg(ptr noundef %i.ph)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167 unwind label %bb.dg, !inline_history !1

bb.dg:                                            ; preds = %bb.df
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit313, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i165, %bb.de, %bb.df
  %i.pk = load ptr, ptr %25, align 8, !tbaa !53   ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pm = icmp eq ptr %i.pk, %i.pl
  br i1 %i.pm, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i168: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !48
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.po) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit170

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit170: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %22, align 8, !tbaa !17
  %i.pp = load ptr, ptr %i.me, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i171, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit174, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i172

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i172: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit170
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !66
  %.not.i.i173 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i173, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit174, label %bb.dh

bb.dh:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i172
  %i.ps = load ptr, ptr %i.mf, align 8, !tbaa !48
  %54 = atomicrmw add ptr %i.ps, i32 -1 acq_rel, align 4
  %i.pt = icmp eq i32 %54, 1
  br i1 %i.pt, label %bb.di, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit174

bb.di:                                            ; preds = %bb.dh
  %i.pu = load ptr, ptr %i.me, align 8, !tbaa !57
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !66
  %i.px = load ptr, ptr %i.mf, align 8, !tbaa !48
  invoke void %i.pw(ptr noundef %i.px)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit174 unwind label %bb.dj, !inline_history !1

bb.dj:                                            ; preds = %bb.di
  %i.py = landingpad { ptr, i32 }
          catch ptr null
  %i.pz = extractvalue { ptr, i32 } %i.py, 0
  call void @__clang_call_terminate(ptr %i.pz) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit174: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit170, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i172, %bb.dh, %bb.di
  %i.qa = load ptr, ptr %23, align 8, !tbaa !53   ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i175: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit174
  %i.qd = load i64, ptr %i.qb, align 8, !tbaa !48
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit177

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit177: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %21, align 8, !tbaa !17
  %i.qf = load ptr, ptr %i.lk, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i178, label %bb.dn, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i179

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i179: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit177
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !63
  %.not.i.i180 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i180, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i179
  %i.qi = load ptr, ptr %i.ll, align 8, !tbaa !48
  %55 = atomicrmw add ptr %i.qi, i32 -1 acq_rel, align 4
  %i.qj = icmp eq i32 %55, 1
  br i1 %i.qj, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.qk = load ptr, ptr %i.lk, align 8, !tbaa !52
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !63
  %i.qn = load ptr, ptr %i.ll, align 8, !tbaa !48
  invoke void %i.qm(ptr noundef %i.qn)
          to label %bb.dn unwind label %bb.dm, !inline_history !0

bb.dm:                                            ; preds = %bb.dl
  %i.qo = landingpad { ptr, i32 }
          catch ptr null
  %i.qp = extractvalue { ptr, i32 } %i.qo, 0
  call void @__clang_call_terminate(ptr %i.qp) #28, !inline_history !64
  unreachable

bb.dn:                                            ; preds = %bb.dl, %bb.dk, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i179, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit177
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  %i.qq = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %27, align 8, !tbaa !17
  store ptr @_ZZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.qq, align 8, !tbaa !52
  %i.qr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  store i64 0, ptr %i.qr, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  invoke void @_ZN7testing5StrEqIA55_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %29, ptr noundef nonnull align 1 dereferenceable(55) @.str.2)
          to label %bb.do unwind label %bb.hm

bb.do:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.qs = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc185 unwind label %bb.hn ; 7 uses

.noexc185:                                        ; preds = %bb.do
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.qs, align 8, !tbaa !17, !noalias !522
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 24 ; 3 uses
  store ptr %i.qu, ptr %i.qt, align 8, !tbaa !45, !noalias !522
  %i.qv = load ptr, ptr %29, align 8, !tbaa !53, !noalias !522 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !47, !noalias !522 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !522
  store i64 %i.qx, ptr %i.d, align 8, !tbaa !54, !noalias !522
  %i.qy = icmp ugt i64 %i.qx, 15
  br i1 %i.qy, label %.noexc.i.i.i.i183, label %._crit_edge.i.i.i.i.i182

.noexc.i.i.i.i183:                                ; preds = %.noexc185
  %i.qz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.qt, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i184 unwind label %bb.ds, !noalias !522 ; 2 uses

.noexc.i184:                                      ; preds = %.noexc.i.i.i.i183
  store ptr %i.qz, ptr %i.qt, align 8, !tbaa !53, !noalias !522
  %i.ra = load i64, ptr %i.d, align 8, !tbaa !54, !noalias !522
  store i64 %i.ra, ptr %i.qu, align 8, !tbaa !48, !noalias !522
  br label %._crit_edge.i.i.i.i.i182

._crit_edge.i.i.i.i.i182:                         ; preds = %.noexc.i184, %.noexc185
  %i.rb = phi ptr [ %i.qz, %.noexc.i184 ], [ %i.qu, %.noexc185 ] ; 2 uses
  switch i64 %i.qx, label %bb.dq [
    i64 1, label %bb.dp
    i64 0, label %bb.dr
  ]

bb.dp:                                            ; preds = %._crit_edge.i.i.i.i.i182
  %i.rc = load i8, ptr %i.qv, align 1, !tbaa !48, !noalias !522
  store i8 %i.rc, ptr %i.rb, align 1, !tbaa !48, !noalias !522
  br label %bb.dr

bb.dq:                                            ; preds = %._crit_edge.i.i.i.i.i182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rb, ptr align 1 %i.qv, i64 %i.qx, i1 false), !noalias !522
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %._crit_edge.i.i.i.i.i182
  %i.rd = load i64, ptr %i.d, align 8, !tbaa !54, !noalias !522 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store i64 %i.rd, ptr %i.re, align 8, !tbaa !47, !noalias !522
  %i.rf = load ptr, ptr %i.qt, align 8, !tbaa !53, !noalias !522
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rd
  store i8 0, ptr %i.rg, align 1, !tbaa !48, !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !522
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qs, i64 40
  %i.ri = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.rj = load i16, ptr %i.ri, align 8, !noalias !522
  store i16 %i.rj, ptr %i.rh, align 8, !noalias !522
  %i.rk = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.rk, align 8, !tbaa !57, !alias.scope !522
  %i.rm = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.dt unwind label %bb.hn     ; 3 uses

bb.ds:                                            ; preds = %.noexc.i.i.i.i183
  %i.rn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef 48) #27, !noalias !522
  br label %.body187

bb.dt:                                            ; preds = %bb.dr
  store i32 1, ptr %i.rm, align 4, !tbaa !59, !noalias !522
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rp = ptrtoint ptr %i.qs to i64
  store i64 %i.rp, ptr %i.ro, align 8, !tbaa !61, !noalias !522
  store ptr %i.rm, ptr %i.rl, align 8, !tbaa !48, !alias.scope !522
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %28, align 8, !tbaa !17, !alias.scope !522
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  invoke void @_ZN7testing5StrEqIA28_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %31, ptr noundef nonnull align 1 dereferenceable(28) @.str.99)
          to label %bb.du unwind label %bb.ho

bb.du:                                            ; preds = %bb.dt
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.rq = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc193 unwind label %bb.hp ; 7 uses

.noexc193:                                        ; preds = %bb.du
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.rq, align 8, !tbaa !17, !noalias !523
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 24 ; 3 uses
  store ptr %i.rs, ptr %i.rr, align 8, !tbaa !45, !noalias !523
  %i.rt = load ptr, ptr %31, align 8, !tbaa !53, !noalias !523 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !47, !noalias !523 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !523
  store i64 %i.rv, ptr %i.c, align 8, !tbaa !54, !noalias !523
  %i.rw = icmp ugt i64 %i.rv, 15
  br i1 %i.rw, label %.noexc.i.i.i.i191, label %._crit_edge.i.i.i.i.i190

.noexc.i.i.i.i191:                                ; preds = %.noexc193
  %i.rx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.rr, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i192 unwind label %bb.dy, !noalias !523 ; 2 uses

.noexc.i192:                                      ; preds = %.noexc.i.i.i.i191
  store ptr %i.rx, ptr %i.rr, align 8, !tbaa !53, !noalias !523
  %i.ry = load i64, ptr %i.c, align 8, !tbaa !54, !noalias !523
  store i64 %i.ry, ptr %i.rs, align 8, !tbaa !48, !noalias !523
  br label %._crit_edge.i.i.i.i.i190

._crit_edge.i.i.i.i.i190:                         ; preds = %.noexc.i192, %.noexc193
  %i.rz = phi ptr [ %i.rx, %.noexc.i192 ], [ %i.rs, %.noexc193 ] ; 2 uses
  switch i64 %i.rv, label %bb.dw [
    i64 1, label %bb.dv
    i64 0, label %bb.dx
  ]

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i.i190
  %i.sa = load i8, ptr %i.rt, align 1, !tbaa !48, !noalias !523
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !48, !noalias !523
  br label %bb.dx

bb.dw:                                            ; preds = %._crit_edge.i.i.i.i.i190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rz, ptr align 1 %i.rt, i64 %i.rv, i1 false), !noalias !523
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %._crit_edge.i.i.i.i.i190
  %i.sb = load i64, ptr %i.c, align 8, !tbaa !54, !noalias !523 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store i64 %i.sb, ptr %i.sc, align 8, !tbaa !47, !noalias !523
  %i.sd = load ptr, ptr %i.rr, align 8, !tbaa !53, !noalias !523
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  store i8 0, ptr %i.se, align 1, !tbaa !48, !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !523
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  %i.sg = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.sh = load i16, ptr %i.sg, align 8, !noalias !523
  store i16 %i.sh, ptr %i.sf, align 8, !noalias !523
  %i.si = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.si, align 8, !tbaa !57, !alias.scope !523
  %i.sk = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.dz unwind label %bb.hp     ; 3 uses

bb.dy:                                            ; preds = %.noexc.i.i.i.i191
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef 48) #27, !noalias !523
  br label %.body195

bb.dz:                                            ; preds = %bb.dx
  store i32 1, ptr %i.sk, align 4, !tbaa !59, !noalias !523
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sn = ptrtoint ptr %i.rq to i64
  store i64 %i.sn, ptr %i.sm, align 8, !tbaa !61, !noalias !523
  store ptr %i.sk, ptr %i.sj, align 8, !tbaa !48, !alias.scope !523
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %30, align 8, !tbaa !17, !alias.scope !523
  invoke void @_ZN5nglog13nglog_testing13ScopedMockLog9gmock_LogERKN7testing7MatcherINS_11LogSeverityEEERKNS3_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESI_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::MockSpec") align 8 %26, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %bb.ea unwind label %bb.hq

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN7testing8internal18GetWithoutMatchersEv()
          to label %bb.eb unwind label %bb.hr

bb.eb:                                            ; preds = %bb.ea
  %i.so = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE18InternalExpectedAtEPKciSF_SF_(ptr noundef nonnull align 8 dereferenceable(80) %26, ptr noundef nonnull @.str.2, i32 noundef 93, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.100)
          to label %bb.ec unwind label %bb.hr     ; 0 uses

bb.ec:                                            ; preds = %bb.eb
  %i.sp = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %26, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %i.sq, align 8, !tbaa !17
  %i.sr = getelementptr inbounds nuw i8, ptr %26, i64 64 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i314 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i.i.i.i314, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i317, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i315

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i315: ; preds = %bb.ec
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !63
  %.not.i.i.i.i316 = icmp eq ptr %i.su, null
  br i1 %.not.i.i.i.i316, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i317, label %bb.ed

bb.ed:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i315
  %i.sv = getelementptr inbounds nuw i8, ptr %26, i64 72 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !48
  %56 = atomicrmw add ptr %i.sw, i32 -1 acq_rel, align 4
  %i.sx = icmp eq i32 %56, 1
  br i1 %i.sx, label %bb.ee, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i317

bb.ee:                                            ; preds = %bb.ed
  %i.sy = load ptr, ptr %i.sr, align 8, !tbaa !52
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !63
  %i.tb = load ptr, ptr %i.sv, align 8, !tbaa !48
  invoke void %i.ta(ptr noundef %i.tb)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i317 unwind label %bb.ef, !inline_history !0

bb.ef:                                            ; preds = %bb.ee
  %i.tc = landingpad { ptr, i32 }
          catch ptr null
  %i.td = extractvalue { ptr, i32 } %i.tc, 0
  call void @__clang_call_terminate(ptr %i.td) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i317: ; preds = %bb.ee, %bb.ed, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i315, %bb.ec
  %i.te = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.te, align 8, !tbaa !17
  %i.tf = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i318 = icmp eq ptr %i.tg, null
  br i1 %.not.i.i.i.i.i.i318, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i321, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i319

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i319: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i317
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 24
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !66
  %.not.i.i.i.i1.i320 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i.i1.i320, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i321, label %bb.eg

bb.eg:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i319
  %i.tj = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !48
  %57 = atomicrmw add ptr %i.tk, i32 -1 acq_rel, align 4
  %i.tl = icmp eq i32 %57, 1
  br i1 %i.tl, label %bb.eh, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i321

bb.eh:                                            ; preds = %bb.eg
  %i.tm = load ptr, ptr %i.tf, align 8, !tbaa !57
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !66
  %i.tp = load ptr, ptr %i.tj, align 8, !tbaa !48
  invoke void %i.to(ptr noundef %i.tp)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i321 unwind label %bb.ei, !inline_history !1

bb.ei:                                            ; preds = %bb.eh
  %i.tq = landingpad { ptr, i32 }
          catch ptr null
  %i.tr = extractvalue { ptr, i32 } %i.tq, 0
  call void @__clang_call_terminate(ptr %i.tr) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i321: ; preds = %bb.eh, %bb.eg, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i319, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i317
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.sp, align 8, !tbaa !17
  %i.ts = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i1.i.i322 = icmp eq ptr %i.tt, null
  br i1 %.not.i.i.i.i1.i.i322, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit325, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i323

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i323: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i321
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !66
  %.not.i.i.i3.i.i324 = icmp eq ptr %i.tv, null
  br i1 %.not.i.i.i3.i.i324, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit325, label %bb.ej

bb.ej:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i323
  %i.tw = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !48
  %58 = atomicrmw add ptr %i.tx, i32 -1 acq_rel, align 4
  %i.ty = icmp eq i32 %58, 1
  br i1 %i.ty, label %bb.ek, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit325

bb.ek:                                            ; preds = %bb.ej
  %i.tz = load ptr, ptr %i.ts, align 8, !tbaa !57
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !66
  %i.uc = load ptr, ptr %i.tw, align 8, !tbaa !48
  invoke void %i.ub(ptr noundef %i.uc)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit325 unwind label %bb.el, !inline_history !1

bb.el:                                            ; preds = %bb.ek
  %i.ud = landingpad { ptr, i32 }
          catch ptr null
  %i.ue = extractvalue { ptr, i32 } %i.ud, 0
  call void @__clang_call_terminate(ptr %i.ue) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit325: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i321, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i323, %bb.ej, %bb.ek
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %30, align 8, !tbaa !17
  %i.uf = load ptr, ptr %i.si, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i198, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit201, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i199

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i199: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit325
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !66
  %.not.i.i200 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i200, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit201, label %bb.em

bb.em:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i199
  %i.ui = load ptr, ptr %i.sj, align 8, !tbaa !48
  %59 = atomicrmw add ptr %i.ui, i32 -1 acq_rel, align 4
  %i.uj = icmp eq i32 %59, 1
  br i1 %i.uj, label %bb.en, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit201

bb.en:                                            ; preds = %bb.em
  %i.uk = load ptr, ptr %i.si, align 8, !tbaa !57
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !66
  %i.un = load ptr, ptr %i.sj, align 8, !tbaa !48
  invoke void %i.um(ptr noundef %i.un)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit201 unwind label %bb.eo, !inline_history !1

bb.eo:                                            ; preds = %bb.en
  %i.uo = landingpad { ptr, i32 }
          catch ptr null
  %i.up = extractvalue { ptr, i32 } %i.uo, 0
  call void @__clang_call_terminate(ptr %i.up) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit201: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit325, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i199, %bb.em, %bb.en
  %i.uq = load ptr, ptr %31, align 8, !tbaa !53   ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.us = icmp eq ptr %i.uq, %i.ur
  br i1 %i.us, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit201
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !48
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uu) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit204

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit204: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %28, align 8, !tbaa !17
  %i.uv = load ptr, ptr %i.rk, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i205 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i.i205, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit208, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i206

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i206: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit204
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 24
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !66
  %.not.i.i207 = icmp eq ptr %i.ux, null
  br i1 %.not.i.i207, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit208, label %bb.ep

bb.ep:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i206
  %i.uy = load ptr, ptr %i.rl, align 8, !tbaa !48
  %60 = atomicrmw add ptr %i.uy, i32 -1 acq_rel, align 4
  %i.uz = icmp eq i32 %60, 1
  br i1 %i.uz, label %bb.eq, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit208

bb.eq:                                            ; preds = %bb.ep
  %i.va = load ptr, ptr %i.rk, align 8, !tbaa !57
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !66
  %i.vd = load ptr, ptr %i.rl, align 8, !tbaa !48
  invoke void %i.vc(ptr noundef %i.vd)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit208 unwind label %bb.er, !inline_history !1

bb.er:                                            ; preds = %bb.eq
  %i.ve = landingpad { ptr, i32 }
          catch ptr null
  %i.vf = extractvalue { ptr, i32 } %i.ve, 0
  call void @__clang_call_terminate(ptr %i.vf) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit208: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit204, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i206, %bb.ep, %bb.eq
  %i.vg = load ptr, ptr %29, align 8, !tbaa !53   ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.vi = icmp eq ptr %i.vg, %i.vh
  br i1 %i.vi, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit208
  %i.vj = load i64, ptr %i.vh, align 8, !tbaa !48
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vk) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit211

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit211: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %27, align 8, !tbaa !17
  %i.vl = load ptr, ptr %i.qq, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i212 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i.i212, label %bb.ev, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i213

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i213: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit211
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 24
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !63
  %.not.i.i214 = icmp eq ptr %i.vn, null
  br i1 %.not.i.i214, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i213
  %i.vo = load ptr, ptr %i.qr, align 8, !tbaa !48
  %61 = atomicrmw add ptr %i.vo, i32 -1 acq_rel, align 4
  %i.vp = icmp eq i32 %61, 1
  br i1 %i.vp, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.vq = load ptr, ptr %i.qq, align 8, !tbaa !52
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 24
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !63
  %i.vt = load ptr, ptr %i.qr, align 8, !tbaa !48
  invoke void %i.vs(ptr noundef %i.vt)
          to label %bb.ev unwind label %bb.eu, !inline_history !0

bb.eu:                                            ; preds = %bb.et
  %i.vu = landingpad { ptr, i32 }
          catch ptr null
  %i.vv = extractvalue { ptr, i32 } %i.vu, 0
  call void @__clang_call_terminate(ptr %i.vv) #28, !inline_history !64
  unreachable

bb.ev:                                            ; preds = %bb.et, %bb.es, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i213, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit211
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  %i.vw = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIN5nglog11LogSeverityEEE, i64 16), ptr %33, align 8, !tbaa !17
  store ptr @_ZZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIS3_EELb1EEEEEPKNS4_6VTableEvE7kVTable, ptr %i.vw, align 8, !tbaa !52
  %i.vx = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  store i64 0, ptr %i.vx, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  invoke void @_ZN7testing5StrEqIA55_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %35, ptr noundef nonnull align 1 dereferenceable(55) @.str.2)
          to label %bb.ew unwind label %bb.ht

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.vy = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc219 unwind label %bb.hu ; 7 uses

.noexc219:                                        ; preds = %bb.ew
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.vy, align 8, !tbaa !17, !noalias !524
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8 ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 24 ; 3 uses
  store ptr %i.wa, ptr %i.vz, align 8, !tbaa !45, !noalias !524
  %i.wb = load ptr, ptr %35, align 8, !tbaa !53, !noalias !524 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !47, !noalias !524 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !524
  store i64 %i.wd, ptr %i.b, align 8, !tbaa !54, !noalias !524
  %i.we = icmp ugt i64 %i.wd, 15
  br i1 %i.we, label %.noexc.i.i.i.i217, label %._crit_edge.i.i.i.i.i216

.noexc.i.i.i.i217:                                ; preds = %.noexc219
  %i.wf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.vz, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i218 unwind label %bb.fa, !noalias !524 ; 2 uses

.noexc.i218:                                      ; preds = %.noexc.i.i.i.i217
  store ptr %i.wf, ptr %i.vz, align 8, !tbaa !53, !noalias !524
  %i.wg = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !524
  store i64 %i.wg, ptr %i.wa, align 8, !tbaa !48, !noalias !524
  br label %._crit_edge.i.i.i.i.i216

._crit_edge.i.i.i.i.i216:                         ; preds = %.noexc.i218, %.noexc219
  %i.wh = phi ptr [ %i.wf, %.noexc.i218 ], [ %i.wa, %.noexc219 ] ; 2 uses
  switch i64 %i.wd, label %bb.ey [
    i64 1, label %bb.ex
    i64 0, label %bb.ez
  ]

bb.ex:                                            ; preds = %._crit_edge.i.i.i.i.i216
  %i.wi = load i8, ptr %i.wb, align 1, !tbaa !48, !noalias !524
  store i8 %i.wi, ptr %i.wh, align 1, !tbaa !48, !noalias !524
  br label %bb.ez

bb.ey:                                            ; preds = %._crit_edge.i.i.i.i.i216
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wh, ptr align 1 %i.wb, i64 %i.wd, i1 false), !noalias !524
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %._crit_edge.i.i.i.i.i216
  %i.wj = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !524 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  store i64 %i.wj, ptr %i.wk, align 8, !tbaa !47, !noalias !524
  %i.wl = load ptr, ptr %i.vz, align 8, !tbaa !53, !noalias !524
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.wj
  store i8 0, ptr %i.wm, align 1, !tbaa !48, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !524
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vy, i64 40
  %i.wo = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.wp = load i16, ptr %i.wo, align 8, !noalias !524
  store i16 %i.wp, ptr %i.wn, align 8, !noalias !524
  %i.wq = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.wq, align 8, !tbaa !57, !alias.scope !524
  %i.ws = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.fb unwind label %bb.hu     ; 3 uses

bb.fa:                                            ; preds = %.noexc.i.i.i.i217
  %i.wt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.vy, i64 noundef 48) #27, !noalias !524
  br label %.body221

bb.fb:                                            ; preds = %bb.ez
  store i32 1, ptr %i.ws, align 4, !tbaa !59, !noalias !524
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wv = ptrtoint ptr %i.vy to i64
  store i64 %i.wv, ptr %i.wu, align 8, !tbaa !61, !noalias !524
  store ptr %i.ws, ptr %i.wr, align 8, !tbaa !48, !alias.scope !524
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %34, align 8, !tbaa !17, !alias.scope !524
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  invoke void @_ZN7testing5StrEqIA29_cEENS_18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.21") align 8 %37, ptr noundef nonnull align 1 dereferenceable(29) @.str.101)
          to label %bb.fc unwind label %bb.hv

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.ww = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc227 unwind label %bb.hw ; 7 uses

.noexc227:                                        ; preds = %bb.fc
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE15MonomorphicImplIRKS8_EE, i64 16), ptr %i.ww, align 8, !tbaa !17, !noalias !525
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 24 ; 3 uses
  store ptr %i.wy, ptr %i.wx, align 8, !tbaa !45, !noalias !525
  %i.wz = load ptr, ptr %37, align 8, !tbaa !53, !noalias !525 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !47, !noalias !525 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !525
  store i64 %i.xb, ptr %i.a, align 8, !tbaa !54, !noalias !525
  %i.xc = icmp ugt i64 %i.xb, 15
  br i1 %i.xc, label %.noexc.i.i.i.i225, label %._crit_edge.i.i.i.i.i224

.noexc.i.i.i.i225:                                ; preds = %.noexc227
  %i.xd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(34) %i.wx, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i226 unwind label %bb.fg, !noalias !525 ; 2 uses

.noexc.i226:                                      ; preds = %.noexc.i.i.i.i225
  store ptr %i.xd, ptr %i.wx, align 8, !tbaa !53, !noalias !525
  %i.xe = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !525
  store i64 %i.xe, ptr %i.wy, align 8, !tbaa !48, !noalias !525
  br label %._crit_edge.i.i.i.i.i224

._crit_edge.i.i.i.i.i224:                         ; preds = %.noexc.i226, %.noexc227
  %i.xf = phi ptr [ %i.xd, %.noexc.i226 ], [ %i.wy, %.noexc227 ] ; 2 uses
  switch i64 %i.xb, label %bb.fe [
    i64 1, label %bb.fd
    i64 0, label %bb.ff
  ]

bb.fd:                                            ; preds = %._crit_edge.i.i.i.i.i224
  %i.xg = load i8, ptr %i.wz, align 1, !tbaa !48, !noalias !525
  store i8 %i.xg, ptr %i.xf, align 1, !tbaa !48, !noalias !525
  br label %bb.ff

bb.fe:                                            ; preds = %._crit_edge.i.i.i.i.i224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xf, ptr align 1 %i.wz, i64 %i.xb, i1 false), !noalias !525
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %._crit_edge.i.i.i.i.i224
  %i.xh = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !525 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  store i64 %i.xh, ptr %i.xi, align 8, !tbaa !47, !noalias !525
  %i.xj = load ptr, ptr %i.wx, align 8, !tbaa !53, !noalias !525
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xh
  store i8 0, ptr %i.xk, align 1, !tbaa !48, !noalias !525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !525
  %i.xl = getelementptr inbounds nuw i8, ptr %i.ww, i64 40
  %i.xm = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.xn = load i16, ptr %i.xm, align 8, !noalias !525
  store i16 %i.xn, ptr %i.xl, align 8, !noalias !525
  %i.xo = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIS9_EELb1EEEEEPKNSA_6VTableEvE7kVTableB5cxx11, ptr %i.xo, align 8, !tbaa !57, !alias.scope !525
  %i.xq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %bb.fh unwind label %bb.hw     ; 3 uses

bb.fg:                                            ; preds = %.noexc.i.i.i.i225
  %i.xr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ww, i64 noundef 48) #27, !noalias !525
  br label %.body229

bb.fh:                                            ; preds = %bb.ff
  store i32 1, ptr %i.xq, align 4, !tbaa !59, !noalias !525
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xt = ptrtoint ptr %i.ww to i64
  store i64 %i.xt, ptr %i.xs, align 8, !tbaa !61, !noalias !525
  store ptr %i.xq, ptr %i.xp, align 8, !tbaa !48, !alias.scope !525
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %36, align 8, !tbaa !17, !alias.scope !525
  invoke void @_ZN5nglog13nglog_testing13ScopedMockLog9gmock_LogERKN7testing7MatcherINS_11LogSeverityEEERKNS3_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESI_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::MockSpec") align 8 %32, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.fi unwind label %bb.hx

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZN7testing8internal18GetWithoutMatchersEv()
          to label %bb.fj unwind label %bb.hy

bb.fj:                                            ; preds = %bb.fi
  %i.xu = invoke noundef nonnull align 8 dereferenceable(400) ptr @_ZN7testing8internal8MockSpecIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EE18InternalExpectedAtEPKciSF_SF_(ptr noundef nonnull align 8 dereferenceable(80) %32, ptr noundef nonnull @.str.2, i32 noundef 95, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.102)
          to label %bb.fk unwind label %bb.hy     ; 0 uses

bb.fk:                                            ; preds = %bb.fj
  %i.xv = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.xw = getelementptr inbounds nuw i8, ptr %32, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %i.xw, align 8, !tbaa !17
  %i.xx = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i326 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i.i.i.i326, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i329, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i327

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i327: ; preds = %bb.fk
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !63
  %.not.i.i.i.i328 = icmp eq ptr %i.ya, null
  br i1 %.not.i.i.i.i328, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i329, label %bb.fl

bb.fl:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i327
  %i.yb = getelementptr inbounds nuw i8, ptr %32, i64 72 ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !48
  %62 = atomicrmw add ptr %i.yc, i32 -1 acq_rel, align 4
  %i.yd = icmp eq i32 %62, 1
  br i1 %i.yd, label %bb.fm, label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i329

bb.fm:                                            ; preds = %bb.fl
  %i.ye = load ptr, ptr %i.xx, align 8, !tbaa !52
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 24
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !63
  %i.yh = load ptr, ptr %i.yb, align 8, !tbaa !48
  invoke void %i.yg(ptr noundef %i.yh)
          to label %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i329 unwind label %bb.fn, !inline_history !0

bb.fn:                                            ; preds = %bb.fm
  %i.yi = landingpad { ptr, i32 }
          catch ptr null
  %i.yj = extractvalue { ptr, i32 } %i.yi, 0
  call void @__clang_call_terminate(ptr %i.yj) #28, !inline_history !64
  unreachable

_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i329: ; preds = %bb.fm, %bb.fl, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i.i.i327, %bb.fk
  %i.yk = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.yk, align 8, !tbaa !17
  %i.yl = getelementptr inbounds nuw i8, ptr %32, i64 40 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i330 = icmp eq ptr %i.ym, null
  br i1 %.not.i.i.i.i.i.i330, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i333, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i331

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i331: ; preds = %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i329
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 24
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !66
  %.not.i.i.i.i1.i332 = icmp eq ptr %i.yo, null
  br i1 %.not.i.i.i.i1.i332, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i333, label %bb.fo

bb.fo:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i331
  %i.yp = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 2 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !48
  %63 = atomicrmw add ptr %i.yq, i32 -1 acq_rel, align 4
  %i.yr = icmp eq i32 %63, 1
  br i1 %i.yr, label %bb.fp, label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i333

bb.fp:                                            ; preds = %bb.fo
  %i.ys = load ptr, ptr %i.yl, align 8, !tbaa !57
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !66
  %i.yv = load ptr, ptr %i.yp, align 8, !tbaa !48
  invoke void %i.yu(ptr noundef %i.yv)
          to label %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i333 unwind label %bb.fq, !inline_history !1

bb.fq:                                            ; preds = %bb.fp
  %i.yw = landingpad { ptr, i32 }
          catch ptr null
  %i.yx = extractvalue { ptr, i32 } %i.yw, 0
  call void @__clang_call_terminate(ptr %i.yx) #28, !inline_history !67
  unreachable

_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i333: ; preds = %bb.fp, %bb.fo, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i.i.i331, %_ZNSt10_Head_baseILm0EN7testing7MatcherIN5nglog11LogSeverityEEELb0EED2Ev.exit.i329
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.xv, align 8, !tbaa !17
  %i.yy = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i1.i.i334 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i.i.i1.i.i334, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit337, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i335

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i335: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i333
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !66
  %.not.i.i.i3.i.i336 = icmp eq ptr %i.zb, null
  br i1 %.not.i.i.i3.i.i336, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit337, label %bb.fr

bb.fr:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i335
  %i.zc = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !48
  %64 = atomicrmw add ptr %i.zd, i32 -1 acq_rel, align 4
  %i.ze = icmp eq i32 %64, 1
  br i1 %i.ze, label %bb.fs, label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit337

bb.fs:                                            ; preds = %bb.fr
  %i.zf = load ptr, ptr %i.yy, align 8, !tbaa !57
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !66
  %i.zi = load ptr, ptr %i.zc, align 8, !tbaa !48
  invoke void %i.zh(ptr noundef %i.zi)
          to label %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit337 unwind label %bb.ft, !inline_history !1

bb.ft:                                            ; preds = %bb.fs
  %i.zj = landingpad { ptr, i32 }
          catch ptr null
  %i.zk = extractvalue { ptr, i32 } %i.zj, 0
  call void @__clang_call_terminate(ptr %i.zk) #28, !inline_history !67
  unreachable

_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit337: ; preds = %_ZNSt10_Head_baseILm1EN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i.i333, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i.i2.i.i335, %bb.fr, %bb.fs
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %36, align 8, !tbaa !17
  %i.zl = load ptr, ptr %i.xo, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i232 = icmp eq ptr %i.zl, null
  br i1 %.not.i.i.i232, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit235, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i233

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i233: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit337
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 24
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !66
  %.not.i.i234 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i234, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit235, label %bb.fu

bb.fu:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i233
  %i.zo = load ptr, ptr %i.xp, align 8, !tbaa !48
  %65 = atomicrmw add ptr %i.zo, i32 -1 acq_rel, align 4
  %i.zp = icmp eq i32 %65, 1
  br i1 %i.zp, label %bb.fv, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit235

bb.fv:                                            ; preds = %bb.fu
  %i.zq = load ptr, ptr %i.xo, align 8, !tbaa !57
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !66
  %i.zt = load ptr, ptr %i.xp, align 8, !tbaa !48
  invoke void %i.zs(ptr noundef %i.zt)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit235 unwind label %bb.fw, !inline_history !1

bb.fw:                                            ; preds = %bb.fv
  %i.zu = landingpad { ptr, i32 }
          catch ptr null
  %i.zv = extractvalue { ptr, i32 } %i.zu, 0
  call void @__clang_call_terminate(ptr %i.zv) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit235: ; preds = %_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev.exit337, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i233, %bb.fu, %bb.fv
  %i.zw = load ptr, ptr %37, align 8, !tbaa !53   ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.zy = icmp eq ptr %i.zw, %i.zx
  br i1 %i.zy, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i236: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit235
  %i.zz = load i64, ptr %i.zx, align 8, !tbaa !48
  %i.aaa = add i64 %i.zz, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.aaa) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit238

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit238: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %34, align 8, !tbaa !17
  %i.aab = load ptr, ptr %i.wq, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.aab, null
  br i1 %.not.i.i.i239, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit238
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !66
  %.not.i.i241 = icmp eq ptr %i.aad, null
  br i1 %.not.i.i241, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242, label %bb.fx

bb.fx:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240
  %i.aae = load ptr, ptr %i.wr, align 8, !tbaa !48
  %66 = atomicrmw add ptr %i.aae, i32 -1 acq_rel, align 4
  %i.aaf = icmp eq i32 %66, 1
  br i1 %i.aaf, label %bb.fy, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242

bb.fy:                                            ; preds = %bb.fx
  %i.aag = load ptr, ptr %i.wq, align 8, !tbaa !57
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !66
  %i.aaj = load ptr, ptr %i.wr, align 8, !tbaa !48
  invoke void %i.aai(ptr noundef %i.aaj)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242 unwind label %bb.fz, !inline_history !1

bb.fz:                                            ; preds = %bb.fy
  %i.aak = landingpad { ptr, i32 }
          catch ptr null
  %i.aal = extractvalue { ptr, i32 } %i.aak, 0
  call void @__clang_call_terminate(ptr %i.aal) #28, !inline_history !67
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit238, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i240, %bb.fx, %bb.fy
  %i.aam = load ptr, ptr %35, align 8, !tbaa !53  ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.aao = icmp eq ptr %i.aam, %i.aan
  br i1 %i.aao, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242
  %i.aap = load i64, ptr %i.aan, align 8, !tbaa !48
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aaq) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit245

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit245: ; preds = %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIN5nglog11LogSeverityEEE, i64 16), ptr %33, align 8, !tbaa !17
  %i.aar = load ptr, ptr %i.vw, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %i.aar, null
  br i1 %.not.i.i.i246, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit249, label %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i247

_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i247: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit245
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 24
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !63
  %.not.i.i248 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i248, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit249, label %bb.ga

bb.ga:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i247
  %i.aau = load ptr, ptr %i.vx, align 8, !tbaa !48
  %67 = atomicrmw add ptr %i.aau, i32 -1 acq_rel, align 4
  %i.aav = icmp eq i32 %67, 1
  br i1 %i.aav, label %bb.gb, label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit249

bb.gb:                                            ; preds = %bb.ga
  %i.aaw = load ptr, ptr %i.vw, align 8, !tbaa !52
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 24
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !63
  %i.aaz = load ptr, ptr %i.vx, align 8, !tbaa !48
  invoke void %i.aay(ptr noundef %i.aaz)
          to label %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit249 unwind label %bb.gc, !inline_history !0

bb.gc:                                            ; preds = %bb.gb
  %i.aba = landingpad { ptr, i32 }
          catch ptr null
  %i.abb = extractvalue { ptr, i32 } %i.aba, 0
  call void @__clang_call_terminate(ptr %i.abb) #28, !inline_history !64
  unreachable

_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit249: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit245, %_ZNK7testing8internal11MatcherBaseIN5nglog11LogSeverityEE8IsSharedEv.exit.i.i247, %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZN5nglog10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.2, i32 noundef 68)
          to label %.noexc250 unwind label %bb.ia

.noexc250:                                        ; preds = %_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev.exit249
  %i.abc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5nglog10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.gd unwind label %bb.ge

bb.gd:                                            ; preds = %.noexc250
  %i.abd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abc, ptr noundef nonnull @.str.93, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ge ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.gd
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1)
          to label %bb.gh unwind label %bb.ia

bb.ge:                                            ; preds = %bb.gd, %.noexc250
  %i.abe = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN5nglog10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1)
          to label %bb.gf unwind label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.body252

bb.gg:                                            ; preds = %bb.ge
  %i.abf = landingpad { ptr, i32 }
          catch ptr null
  %i.abg = extractvalue { ptr, i32 } %i.abf, 0
  call void @__clang_call_terminate(ptr %i.abg) #28
  unreachable

bb.gh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @_ZN7testing10InSequenceD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5nglog13nglog_testing13ScopedMockLogE, i64 16), ptr %4, align 8, !tbaa !17
  invoke void @_ZN5nglog13RemoveLogSinkEPNS_7LogSinkE(ptr noundef nonnull align 8 dereferenceable(152) %4)
          to label %bb.gi unwind label %bb.gj, !inline_history !75

bb.gi:                                            ; preds = %bb.gh
  %i.abh = load ptr, ptr %i.o, align 8, !tbaa !53 ; 2 uses
  %i.abi = icmp eq ptr %i.abh, %i.p
  br i1 %i.abi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254: ; preds = %bb.gi
  %i.abj = load i64, ptr %i.p, align 8, !tbaa !48
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abh, i64 noundef %i.abk) #27, !inline_history !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i254
  %i.abl = load ptr, ptr %i.l, align 8, !tbaa !53 ; 2 uses
  %i.abm = icmp eq ptr %i.abl, %i.m
  br i1 %i.abm, label %_ZN5nglog13nglog_testing13ScopedMockLogD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.abn = load i64, ptr %i.m, align 8, !tbaa !48
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abo) #27, !inline_history !75
  br label %_ZN5nglog13nglog_testing13ScopedMockLogD2Ev.exit

bb.gj:                                            ; preds = %bb.gh
  %i.abp = landingpad { ptr, i32 }
          catch ptr null
  %i.abq = extractvalue { ptr, i32 } %i.abp, 0
  call void @__clang_call_terminate(ptr %i.abq) #28, !inline_history !75
  unreachable

_ZN5nglog13nglog_testing13ScopedMockLogD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @_ZN7testing8internal14FunctionMockerIFvN5nglog11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.k) #26, !inline_history !75
  call void @_ZN5nglog7LogSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(152) %4) #26, !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.gk:                                            ; preds = %_ZN5nglog13nglog_testing13ScopedMockLogC2Ev.exit
  %i.abr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.gl:                                            ; preds = %bb.f
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit263

bb.gm:                                            ; preds = %bb.j, %bb.g
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gn:                                            ; preds = %bb.l
  %i.abu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit260

bb.go:                                            ; preds = %bb.p, %bb.m
  %i.abv = landingpad { ptr, i32 }
          cleanup
  br label %.body92

bb.gp:                                            ; preds = %bb.r
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gq:                                            ; preds = %bb.s, %bb.t, %bb.u
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %.body96

bb.gr:                                            ; preds = %bb.w
  %i.aby = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abz = load ptr, ptr %i.cb, align 8, !tbaa !108 ; 2 uses
  %.not.i.i256 = icmp eq ptr %i.abz, null
  br i1 %.not.i.i256, label %.body96, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aca = invoke noundef zeroext i1 %i.abz(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %.body96 unwind label %bb.gt   ; 0 uses

bb.gt:                                            ; preds = %bb.gs
  %i.acb = landingpad { ptr, i32 }
          catch ptr null
  %i.acc = extractvalue { ptr, i32 } %i.acb, 0
  call void @__clang_call_terminate(ptr %i.acc) #28
  unreachable

.body96:                                          ; preds = %bb.v, %bb.gq, %bb.gr, %bb.gs
  %.pn.pn = phi { ptr, i32 } [ %i.aby, %bb.gs ], [ %i.bz, %bb.v ], [ %i.abx, %bb.gq ], [ %i.aby, %bb.gr ]
  %i.acd = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZNSt11_Tuple_implILm0EJN7testing7MatcherIN5nglog11LogSeverityEEENS1_IRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.acd) #26
  br label %bb.gu

bb.gu:                                            ; preds = %.body96, %bb.gp
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body96 ], [ %i.abw, %bb.gp ]
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #26
  br label %.body92

.body92:                                          ; preds = %bb.go, %bb.q, %bb.gu
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.gu ], [ %i.abv, %bb.go ], [ %i.bp, %bb.q ] ; 2 uses
  %i.ace = load ptr, ptr %11, align 8, !tbaa !53  ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.acg = icmp eq ptr %i.ace, %i.acf
  br i1 %i.acg, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258: ; preds = %.body92
  %i.ach = load i64, ptr %i.acf, align 8, !tbaa !48
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.aci) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit260

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit260: ; preds = %.body92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258, %bb.gn
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abu, %bb.gn ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i258 ], [ %.pn.pn.pn.pn, %.body92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  br label %.body

.body:                                            ; preds = %bb.gm, %bb.k, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit260
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit260 ], [ %i.abt, %bb.gm ], [ %i.ar, %bb.k ] ; 2 uses
  %i.acj = load ptr, ptr %9, align 8, !tbaa !53   ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.acl = icmp eq ptr %i.acj, %i.ack
  br i1 %i.acl, label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261: ; preds = %.body
  %i.acm = load i64, ptr %i.ack, align 8, !tbaa !48
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acn) #27
  br label %_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit263

_ZN7testing18PolymorphicMatcherINS_8internal18StrEqualityMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit263: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261, %bb.gl
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abs, %bb.gl ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i261 ], [ %.pn.pn.pn.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN7testing8internal11MatcherBaseIN5nglog11LogSeverityEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
end_hunk_7
