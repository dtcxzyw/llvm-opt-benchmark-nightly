Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/common?download=true
inline.NumInlined: 196
inline.NumDeleted: 83
begin_hunk_0_@_ZN6google8protobuf8internal13VerifyVersionEiiPKc:bb.a
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc33 unwind label %bb.o   ; 2 uses

.noexc33:                                         ; preds = %.noexc.i.i
  store ptr %i.y, ptr %4, align 8, !tbaa !17, !alias.scope !34
  %i.z = load i64, ptr %i.g, align 8, !tbaa !16, !noalias !34
  store i64 %i.z, ptr %i.v, align 8, !tbaa !14, !alias.scope !34
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc33, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit
  %i.aa = phi ptr [ %i.y, %.noexc33 ], [ %i.v, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.h, align 16, !tbaa !14, !noalias !34
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 16 %i.h, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !16, !noalias !34 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !13, !alias.scope !34
  %i.ae = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20, !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20, !noalias !34
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !13
  %i.ai = sub i64 4611686018427387903, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.f
  %i.ak = load ptr, ptr %4, align 8, !tbaa !17
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.ak, i64 noundef %i.ag)
          to label %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.p ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.am = load i64, ptr %i.j, align 8, !tbaa !13
  %i.an = add i64 %i.am, -4611686018427387834
  %i.ao = icmp ult i64 %i.an, 70
  br i1 %i.ao, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i36

.invoke:                                          ; preds = %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i36: ; preds = %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull @.str.2, i64 noundef 70)
          to label %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit39 unwind label %bb.p ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsEPKc.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20, !noalias !35
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 128, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef 14, i32 noundef 0) #20, !noalias !35 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 127
  store i8 0, ptr %i.ar, align 1, !tbaa !14, !noalias !35
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !15, !alias.scope !35
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #20, !noalias !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20, !noalias !35
  store i64 %i.at, ptr %i.e, align 8, !tbaa !16, !noalias !35
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc.i.i41, label %._crit_edge.i.i.i40

.noexc.i.i41:                                     ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit39
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc42 unwind label %bb.q   ; 2 uses

.noexc42:                                         ; preds = %.noexc.i.i41
  store ptr %i.av, ptr %5, align 8, !tbaa !17, !alias.scope !35
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !16, !noalias !35
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !14, !alias.scope !35
  br label %._crit_edge.i.i.i40

._crit_edge.i.i.i40:                              ; preds = %.noexc42, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit39
  %i.ax = phi ptr [ %i.av, %.noexc42 ], [ %i.as, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit39 ] ; 2 uses
  switch i64 %i.at, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i40
  %i.ay = load i8, ptr %i.f, align 16, !tbaa !14, !noalias !35
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !14
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull align 16 %i.f, i64 %i.at, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i40
  %i.az = load i64, ptr %i.e, align 8, !tbaa !16, !noalias !35 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !13, !alias.scope !35
  %i.bb = load ptr, ptr %5, align 8, !tbaa !17, !alias.scope !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !35
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.be = load i64, ptr %i.j, align 8, !tbaa !13
  %i.bf = sub i64 4611686018427387903, %i.be
  %i.bg = icmp ult i64 %i.bf, %i.bd
  br i1 %i.bg, label %.invoke151, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i44

.invoke151:                                       ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit55, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit51, %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %.cont152 unwind label %bb.r

.cont152:                                         ; preds = %.invoke151
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i44: ; preds = %bb.i
  %i.bh = load ptr, ptr %5, align 8, !tbaa !17
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef %i.bh, i64 noundef %i.bd)
          to label %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47 unwind label %bb.r ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i44
  %i.bj = load i64, ptr %i.j, align 8, !tbaa !13
  %i.bk = add i64 %i.bj, -4611686018427387699
  %i.bl = icmp ult i64 %i.bk, 205
  br i1 %i.bl, label %.invoke151, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i48: ; preds = %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull @.str.3, i64 noundef 205)
          to label %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit51 unwind label %bb.r ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsEPKc.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i48
  %i.bn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20 ; 2 uses
  %i.bo = load i64, ptr %i.j, align 8, !tbaa !13
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %.invoke151, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i52: ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit51
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull %2, i64 noundef %i.bn)
          to label %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit55 unwind label %bb.r ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsEPKc.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i52
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !13
  %i.bt = add i64 %i.bs, -4611686018427387901
  %i.bu = icmp ult i64 %i.bt, 3
  br i1 %i.bu, label %.invoke151, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i56: ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit55
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit59 unwind label %bb.r ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsEPKc.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i56
  %i.bw = load i32, ptr %3, align 8, !tbaa !20
  %.not.i.i = icmp eq i32 %i.bw, 3
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit59
  %i.bx = load atomic i32, ptr @_ZN6google8protobuf8internalL19log_silencer_count_E seq_cst, align 4
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.noexc60, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.j
  %.pre.i.i = load i32, ptr %3, align 8, !tbaa !20
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit59
  %i.bz = phi i32 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ 3, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit59 ]
  %i.ca = load ptr, ptr @_ZN6google8protobuf8internalL12log_handler_B5cxx11E, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !23
  invoke void %i.ca(i32 noundef %i.bz, ptr noundef %i.cc, i32 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.noexc60 unwind label %bb.r, !inline_history !36

.noexc60:                                         ; preds = %.critedge.i.i, %bb.j
  %i.cf = load i32, ptr %3, align 8, !tbaa !20
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %bb.k, label %_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE.exit

bb.k:                                             ; preds = %.noexc60
  %i.ch = call ptr @__cxa_allocate_exception(i64 56) #20 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf14FatalExceptionC2EPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef %i.cj, i32 noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTIN6google8protobuf14FatalExceptionE, ptr @_ZN6google8protobuf14FatalExceptionD1Ev) #21
          to label %.noexc61 unwind label %bb.r

.noexc61:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #20
  br label %.body

_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE.exit: ; preds = %.noexc60
  %i.cn = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.as
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE.exit
  %i.cp = load i64, ptr %i.as, align 8, !tbaa !14
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.cr = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.v
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = load i64, ptr %i.v, align 8, !tbaa !14
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.u

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, %bb.c
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %.noexc.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.p:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %.noexc.i.i41
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.r:                                             ; preds = %.invoke151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i56, %bb.l, %.critedge.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.m ], [ %i.cz, %bb.r ] ; 2 uses
  %i.da = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.as
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %.body
  %i.dc = load i64, ptr %i.as, align 8, !tbaa !14
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.cx, %bb.p ] ; 2 uses
  %i.de = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.v
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.s
  %i.dg = load i64, ptr %i.v, align 8, !tbaa !14
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.o ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.pn.pn.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.n
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.cv, %bb.n ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ap

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.a
  %i.di = icmp slt i32 %0, 3014000
  br i1 %i.di, label %bb.v, label %bb.ao

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 87)
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 7 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.dl = add i64 %i.dk, -4611686018427387862
  %i.dm = icmp ult i64 %i.dl, 42
  br i1 %i.dm, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i71

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %.noexc72 unwind label %bb.ah

.noexc72:                                         ; preds = %bb.w
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i71: ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 9 uses
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull @.str.5, i64 noundef 42)
          to label %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit74 unwind label %bb.ah ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsEPKc.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.dp = sdiv i32 %0, 1000000
  %i.dq = sdiv i32 %0, 1000
  %i.dr = srem i32 %i.dq, 1000
  %i.ds = srem i32 %0, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20, !noalias !37
  %i.dt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.8, i32 noundef %i.dp, i32 noundef %i.dr, i32 noundef %i.ds) #20, !noalias !37 ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 127
  store i8 0, ptr %i.du, align 1, !tbaa !14, !noalias !37
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.dv, ptr %7, align 8, !tbaa !15, !alias.scope !37
  %i.dw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20, !noalias !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !37
  store i64 %i.dw, ptr %i.c, align 8, !tbaa !16, !noalias !37
  %i.dx = icmp ugt i64 %i.dw, 15
  br i1 %i.dx, label %.noexc.i.i76, label %._crit_edge.i.i.i75

.noexc.i.i76:                                     ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit74
  %i.dy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc77 unwind label %bb.ai  ; 2 uses

.noexc77:                                         ; preds = %.noexc.i.i76
  store ptr %i.dy, ptr %7, align 8, !tbaa !17, !alias.scope !37
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !16, !noalias !37
  store i64 %i.dz, ptr %i.dv, align 8, !tbaa !14, !alias.scope !37
  br label %._crit_edge.i.i.i75

._crit_edge.i.i.i75:                              ; preds = %.noexc77, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit74
  %i.ea = phi ptr [ %i.dy, %.noexc77 ], [ %i.dv, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit74 ] ; 2 uses
  switch i64 %i.dw, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i75
  %i.eb = load i8, ptr %i.d, align 16, !tbaa !14, !noalias !37
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !14
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 16 %i.d, i64 %i.dw, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i75
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !16, !noalias !37 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !13, !alias.scope !37
  %i.ee = load ptr, ptr %7, align 8, !tbaa !17, !alias.scope !37
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  store i8 0, ptr %i.ef, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20, !noalias !37
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !13 ; 2 uses
  %i.eh = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.ei = sub i64 4611686018427387903, %i.eh
  %i.ej = icmp ult i64 %i.ei, %i.eg
  br i1 %i.ej, label %.invoke153, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i79: ; preds = %bb.z
  %i.ek = load ptr, ptr %7, align 8, !tbaa !17
  %i.el = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef %i.ek, i64 noundef %i.eg)
          to label %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82 unwind label %bb.aj ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i79
  %i.em = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.en = add i64 %i.em, -4611686018427387811
  %i.eo = icmp ult i64 %i.en, 93
  br i1 %i.eo, label %.invoke153, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i83

.invoke153:                                       ; preds = %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %.cont154 unwind label %bb.aj

.cont154:                                         ; preds = %.invoke153
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i83: ; preds = %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit82
  %i.ep = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull @.str.6, i64 noundef 93)
          to label %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit86 unwind label %bb.aj ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsEPKc.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i83
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !38
  %i.eq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef 14, i32 noundef 0) #20, !noalias !38 ; 0 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 127
  store i8 0, ptr %i.er, align 1, !tbaa !14, !noalias !38
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.es, ptr %8, align 8, !tbaa !15, !alias.scope !38
  %i.et = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #20, !noalias !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !38
  store i64 %i.et, ptr %i.a, align 8, !tbaa !16, !noalias !38
  %i.eu = icmp ugt i64 %i.et, 15
  br i1 %i.eu, label %.noexc.i.i88, label %._crit_edge.i.i.i87

.noexc.i.i88:                                     ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit86
  %i.ev = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc89 unwind label %bb.ak  ; 2 uses

.noexc89:                                         ; preds = %.noexc.i.i88
  store ptr %i.ev, ptr %8, align 8, !tbaa !17, !alias.scope !38
  %i.ew = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !38
  store i64 %i.ew, ptr %i.es, align 8, !tbaa !14, !alias.scope !38
  br label %._crit_edge.i.i.i87

._crit_edge.i.i.i87:                              ; preds = %.noexc89, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit86
  %i.ex = phi ptr [ %i.ev, %.noexc89 ], [ %i.es, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit86 ] ; 2 uses
  switch i64 %i.et, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i87
  %i.ey = load i8, ptr %i.b, align 16, !tbaa !14, !noalias !38
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !14
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr nonnull align 16 %i.b, i64 %i.et, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i87
  %i.ez = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !38 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !13, !alias.scope !38
  %i.fb = load ptr, ptr %8, align 8, !tbaa !17, !alias.scope !38
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ez
  store i8 0, ptr %i.fc, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !38
  %i.fd = load i64, ptr %i.fa, align 8, !tbaa !13 ; 2 uses
  %i.fe = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.ff = sub i64 4611686018427387903, %i.fe
  %i.fg = icmp ult i64 %i.ff, %i.fd
  br i1 %i.fg, label %.invoke155, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i91

.invoke155:                                       ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit102, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit98, %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit94, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %.cont156 unwind label %bb.al

.cont156:                                         ; preds = %.invoke155
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i91: ; preds = %bb.ac
  %i.fh = load ptr, ptr %8, align 8, !tbaa !17
  %i.fi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef %i.fh, i64 noundef %i.fd)
          to label %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit94 unwind label %bb.al ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i91
  %i.fj = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.fk = add i64 %i.fj, -4611686018427387684
  %i.fl = icmp ult i64 %i.fk, 220
  br i1 %i.fl, label %.invoke155, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i95: ; preds = %_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit94
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull @.str.7, i64 noundef 220)
          to label %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit98 unwind label %bb.al ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsEPKc.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i95
  %i.fn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20 ; 2 uses
  %i.fo = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.fp = sub i64 4611686018427387903, %i.fo
  %i.fq = icmp ult i64 %i.fp, %i.fn
  br i1 %i.fq, label %.invoke155, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i99: ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit98
  %i.fr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull %2, i64 noundef %i.fn)
          to label %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit102 unwind label %bb.al ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsEPKc.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i99
  %i.fs = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.ft = add i64 %i.fs, -4611686018427387901
  %i.fu = icmp ult i64 %i.ft, 3
  br i1 %i.fu, label %.invoke155, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i103: ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit102
  %i.fv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit106 unwind label %bb.al ; 0 uses

_ZN6google8protobuf8internal10LogMessagelsEPKc.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i103
  %i.fw = load i32, ptr %6, align 8, !tbaa !20
  %.not.i.i107 = icmp eq i32 %i.fw, 3
  br i1 %.not.i.i107, label %.critedge.i.i110, label %bb.ad

bb.ad:                                            ; preds = %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit106
  %i.fx = load atomic i32, ptr @_ZN6google8protobuf8internalL19log_silencer_count_E seq_cst, align 4
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.noexc111, label %..critedge_crit_edge.i.i108

..critedge_crit_edge.i.i108:                      ; preds = %bb.ad
  %.pre.i.i109 = load i32, ptr %6, align 8, !tbaa !20
  br label %.critedge.i.i110

.critedge.i.i110:                                 ; preds = %..critedge_crit_edge.i.i108, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit106
  %i.fz = phi i32 [ %.pre.i.i109, %..critedge_crit_edge.i.i108 ], [ 3, %_ZN6google8protobuf8internal10LogMessagelsEPKc.exit106 ]
  %i.ga = load ptr, ptr @_ZN6google8protobuf8internalL12log_handler_B5cxx11E, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !22
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !23
  invoke void %i.ga(i32 noundef %i.fz, ptr noundef %i.gc, i32 noundef %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %.noexc111 unwind label %bb.al, !inline_history !36

.noexc111:                                        ; preds = %.critedge.i.i110, %bb.ad
  %i.gf = load i32, ptr %6, align 8, !tbaa !20
  %i.gg = icmp eq i32 %i.gf, 3
  br i1 %i.gg, label %bb.ae, label %_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE.exit115

bb.ae:                                            ; preds = %.noexc111
  %i.gh = call ptr @__cxa_allocate_exception(i64 56) #20 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !23
  invoke void @_ZN6google8protobuf14FatalExceptionC2EPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.gh, ptr noundef %i.gj, i32 noundef %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.gh, ptr nonnull @_ZTIN6google8protobuf14FatalExceptionE, ptr @_ZN6google8protobuf14FatalExceptionD1Ev) #21
          to label %.noexc112 unwind label %bb.al

.noexc112:                                        ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gh) #20
  br label %.body113

_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE.exit115: ; preds = %.noexc111
  %i.gn = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.es
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE.exit115
  %i.gp = load i64, ptr %i.es, align 8, !tbaa !14
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.gr = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.dv
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.gt = load i64, ptr %i.dv, align 8, !tbaa !14
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ao

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i71, %bb.w
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ai:                                            ; preds = %.noexc.i.i76
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

bb.aj:                                            ; preds = %.invoke153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i79
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %.noexc.i.i88
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.al:                                            ; preds = %.invoke155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i103, %bb.af, %.critedge.i.i110
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %bb.al, %bb.ag
  %.pn25 = phi { ptr, i32 } [ %i.gm, %bb.ag ], [ %i.gz, %bb.al ] ; 2 uses
  %i.ha = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.es
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %.body113
  %i.hc = load i64, ptr %i.es, align 8, !tbaa !14
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %.body113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.ak
  %.pn25.pn = phi { ptr, i32 } [ %i.gy, %bb.ak ], [ %.pn25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %.pn25, %.body113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %bb.aj
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %i.gx, %bb.aj ] ; 2 uses
  %i.he = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.dv
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.am
  %i.hg = load i64, ptr %i.dv, align 8, !tbaa !14
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %bb.ai
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %i.gw, %bb.ai ], [ %.pn25.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %.pn25.pn.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.ah
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %i.gv, %bb.ah ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.u
  ret void

bb.ap:                                            ; preds = %bb.an, %bb.t
  %.pn25.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn.pn, %bb.an ], [ %.pn.pn.pn.pn.pn, %bb.t ]
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull %1, i64 noundef %i.a) ; 0 uses
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %1, align 8, !tbaa !17
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.h, i64 noundef %i.b) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal13VersionStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 7 uses
  %i.c = sdiv i32 %1, 1000000
  %i.d = sdiv i32 %1, 1000
  %i.e = srem i32 %i.d, 1000
  %i.f = srem i32 %1, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.8, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.f) #20 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 127
  store i8 0, ptr %i.h, align 1, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !15
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.j, ptr %i.a, align 8, !tbaa !16
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !17
  %i.m = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.m, ptr %i.i, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.b, align 16, !tbaa !14
  store i8 %i.o, ptr %i.n, align 1, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 16 %i.b, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !13
  %i.r = load ptr, ptr %0, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !20
  %.not.i = icmp eq i32 %i.a, 3
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr @_ZN6google8protobuf8internalL19log_silencer_count_E seq_cst, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.b
  %.pre.i = load i32, ptr %1, align 8, !tbaa !20
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.a
  %i.d = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ 3, %bb.a ]
  %i.e = load ptr, ptr @_ZN6google8protobuf8internalL12log_handler_B5cxx11E, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void %i.e(i32 noundef %i.d, ptr noundef %i.g, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j), !inline_history !39
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  %i.k = load i32, ptr %1, align 8, !tbaa !20
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %_ZN6google8protobuf8internal10LogMessage6FinishEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 56) #20 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN6google8protobuf14FatalExceptionC2EPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef %i.o, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6google8protobuf14FatalExceptionE, ptr @_ZN6google8protobuf14FatalExceptionD1Ev) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #20
  resume { ptr, i32 } %i.s

_ZN6google8protobuf8internal10LogMessage6FinishEv.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN6google8protobuf8internal17DefaultLogHandlerENS0_8LogLevelEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) #3 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobuf8internal17DefaultLogHandlerENS0_8LogLevelEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11level_names, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = load ptr, ptr %3, align 8, !tbaa !17
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.13, ptr noundef %i.e, ptr noundef %1, i32 noundef %2, ptr noundef %i.f) #23 ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6google8protobuf8internal14NullLogHandlerENS0_8LogLevelEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree nonnull readnone align 8 captures(none) %3) #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNS0_11StringPieceE(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.b = load ptr, ptr %1, align 8, !tbaa !47, !noalias !45 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit.thread, label %bb.b

_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !15, !alias.scope !45
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !13, !alias.scope !45
  store i8 0, ptr %i.d, align 8, !tbaa !14, !alias.scope !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48, !noalias !45 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !15, !alias.scope !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !45
  store i64 %i.g, ptr %i.a, align 8, !tbaa !16, !noalias !45
  %i.i = icmp ugt i64 %i.g, 15
  br i1 %i.i, label %.noexc.i5.i, label %._crit_edge.i.i4.i

.noexc.i5.i:                                      ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !17, !alias.scope !45
  %i.k = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !45
  store i64 %i.k, ptr %i.h, align 8, !tbaa !14, !alias.scope !45
  br label %._crit_edge.i.i4.i

._crit_edge.i.i4.i:                               ; preds = %.noexc.i5.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i5.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i4.i
  %i.m = load i8, ptr %i.b, align 1, !tbaa !14
  store i8 %i.m, ptr %i.l, align 1, !tbaa !14
  br label %_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.b, i64 %i.g, i1 false)
  br label %_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit

_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit: ; preds = %._crit_edge.i.i4.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !45 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !13, !alias.scope !45
  %i.p = load ptr, ptr %2, align 8, !tbaa !17, !alias.scope !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !45
  %.pre = load i64, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = sub i64 4611686018427387903, %i.s
  %i.u = icmp ult i64 %i.t, %.pre
  br i1 %i.u, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit.thread, %_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit
  %i.v = phi i64 [ 0, %_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit.thread ], [ %.pre, %_ZNK6google8protobuf11StringPiece8ToStringB5cxx11Ev.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %2, align 8, !tbaa !17
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef %i.x, i64 noundef %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.z = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %0

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNS0_4util6StatusE(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK6google8protobuf4util6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %2, align 8, !tbaa !17
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.h, i64 noundef %i.b)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal10LogMessagelsEm:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = sub i64 4611686018427387903, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull %i.a, i64 noundef %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEd(ptr noundef nonnull returned align 8 dereferenceable(56) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.19, double noundef %1) #20 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  store i8 0, ptr %i.c, align 1, !tbaa !14
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = sub i64 4611686018427387903, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull %i.a, i64 noundef %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPv(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.20, ptr noundef %1) #20 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  store i8 0, ptr %i.c, align 1, !tbaa !14
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = sub i64 4611686018427387903, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull %i.a, i64 noundef %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEx(ptr noundef nonnull returned align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.21, i64 noundef %1) #20 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  store i8 0, ptr %i.c, align 1, !tbaa !14
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = sub i64 4611686018427387903, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull %i.a, i64 noundef %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEy(ptr noundef nonnull returned align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.22, i64 noundef %1) #20 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  store i8 0, ptr %i.c, align 1, !tbaa !14
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = sub i64 4611686018427387903, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull %i.a, i64 noundef %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf8internal10LogMessageC2ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 4), (8, 20)) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.e, align 8, !tbaa !13
  store i8 0, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal10LogMessageD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !14
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal10LogMessage6FinishEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !20
  %.not = icmp eq i32 %i.a, 3
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr @_ZN6google8protobuf8internalL19log_silencer_count_E seq_cst, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load i32, ptr %0, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.d = phi i32 [ %.pre, %..critedge_crit_edge ], [ 3, %bb.a ]
  %i.e = load ptr, ptr @_ZN6google8protobuf8internalL12log_handler_B5cxx11E, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void %i.e(i32 noundef %i.d, ptr noundef %i.g, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.k = load i32, ptr %0, align 8, !tbaa !20
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 56) #20 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf14FatalExceptionC2EPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef %i.o, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6google8protobuf14FatalExceptionE, ptr @_ZN6google8protobuf14FatalExceptionD1Ev) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #20
  resume { ptr, i32 } %i.s

bb.g:                                             ; preds = %bb.c
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6google8protobuf14FatalExceptionC2EPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6google8protobuf14FatalExceptionE, i64 16), ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !15
  %i.f = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.h, ptr %i.a, align 8, !tbaa !16
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %i.d, align 8, !tbaa !17
  %i.k = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.k, ptr %i.e, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !14
  store i8 %i.m, ptr %i.l, align 1, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !13
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.e:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  resume { ptr, i32 } %i.r
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN6google8protobuf13SetLogHandlerEPFvNS0_8LogLevelEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @_ZN6google8protobuf8internalL12log_handler_B5cxx11E, align 8, !tbaa !21 ; 2 uses
  %i.b = icmp eq ptr %0, null
  %_ZN6google8protobuf8internal14NullLogHandlerENS0_8LogLevelEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE. = select i1 %i.b, ptr @_ZN6google8protobuf8internal14NullLogHandlerENS0_8LogLevelEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %0
  store ptr %_ZN6google8protobuf8internal14NullLogHandlerENS0_8LogLevelEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE., ptr @_ZN6google8protobuf8internalL12log_handler_B5cxx11E, align 8, !tbaa !21
  %i.c = icmp eq ptr %i.a, @_ZN6google8protobuf8internal14NullLogHandlerENS0_8LogLevelEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
  %spec.store.select = select i1 %i.c, ptr null, ptr %i.a
  ret ptr %spec.store.select
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN6google8protobuf11LogSilencerC2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = atomicrmw add ptr @_ZN6google8protobuf8internalL19log_silencer_count_E, i32 1 seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN6google8protobuf11LogSilencerD2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = atomicrmw sub ptr @_ZN6google8protobuf8internalL19log_silencer_count_E, i32 1 seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6google8protobuf7ClosureD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6google8protobuf7ClosureD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal16FunctionClosure0D0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16FunctionClosure0D1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6google8protobuf9DoNothingEv() local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6google8protobuf6ghtonlEj(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.insert.insert = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf14FatalExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6google8protobuf14FatalExceptionE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !14
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf14FatalExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf14FatalExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6google8protobuf14FatalException4whatEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6google8protobuf8internal16FunctionClosure03RunEv(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  tail call void %i.e()
  br i1 %i.c, label %bb.b, label %bb.c
end_hunk_1
