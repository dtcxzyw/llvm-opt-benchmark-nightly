Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/mmin?download=true
inline.NumInlined: 394
inline.NumDeleted: 170
begin_hunk_0_@_ZNK6casadi4MMax4dispERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23, !noalias !32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !24, !alias.scope !35
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !23, !alias.scope !35
  store i8 0, ptr %i.g, align 8, !tbaa !28, !alias.scope !35
  %i.i = add i64 %i.f, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23, !alias.scope !35
  %i.k = and i64 %i.j, -4
  %i.l = icmp eq i64 %i.k, 4611686018427387900
  br i1 %i.l, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !23, !alias.scope !35
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.f
  br i1 %i.p, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #18
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !18, !alias.scope !35 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.g, align 8, !tbaa !28, !alias.scope !35
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #19
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.w = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !38
  %i.x = icmp eq i64 %i.w, 4611686018427387903
  br i1 %i.x, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #18
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %.noexc2 unwind label %bb.h    ; 6 uses

.noexc2:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !24, !alias.scope !38
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !18  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !23 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc2
  store ptr %i.aa, ptr %0, align 8, !tbaa !18, !alias.scope !38
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !28
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !28, !alias.scope !38
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.ai = phi i64 [ %i.ae, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !23, !alias.scope !38
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !18
  store i64 0, ptr %i.aj, align 8, !tbaa !23
  store i8 0, ptr %i.ab, align 8, !tbaa !28
  %i.al = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.g
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.g
  %i.an = load i64, ptr %i.g, align 8, !tbaa !28
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.g
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.h
  %i.as = load i64, ptr %i.g, align 8, !tbaa !28
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi4MMin4evalEPPKdPPdPxS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !41
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 0) #18
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 5 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i4.not = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i4.not, label %bb.d, label %_ZNK6casadi6MXNode3depEx.exit5

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 0) #18
  unreachable

_ZNK6casadi6MXNode3depEx.exit5:                   ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_denseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = select i1 %i.l, double +inf, double 0.000000e+00 ; 3 uses
  %.not7.i = icmp ne ptr %i.b, null
  %i.n = icmp sgt i64 %i.h, 0
  %or.cond.i = and i1 %.not7.i, %i.n
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZNK6casadi6MXNode3depEx.exit5
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.h, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ] ; 2 uses
  %vec.phi9 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !47 ; 2 uses
  %wide.load10 = load <2 x double>, ptr %i.p, align 8, !tbaa !47 ; 2 uses
  %i.q = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi, <2 x double> %wide.load) ; 2 uses
  %i.r = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi9, <2 x double> %wide.load10) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = fcmp uno <2 x double> %wide.load, %wide.load10
  %i.t = freeze <2 x i1> %i.s
  %i.u = bitcast <2 x i1> %i.t to i2
  %i.v = icmp ne i2 %i.u, 0                       ; 5 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %i.y = select i1 %i.v, <2 x double> %vec.phi, <2 x double> %i.q
  %i.z = select i1 %i.v, <2 x double> %vec.phi9, <2 x double> %i.r
  %i.aa = select i1 %i.v, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.y, <2 x double> %i.z)
  %i.ab = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %i.h, %n.vec
  %.not11 = or i1 %cmp.n, %i.v
  br i1 %.not11, label %.lr.ph.i.i.preheader12, label %_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit

.lr.ph.i.i.preheader12:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  %.067.i.i.ph = phi double [ %i.m, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader12, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader12 ] ; 2 uses
  %.067.i.i = phi double [ %i.ae, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader12 ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.08.i.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !47
  %i.ae = tail call nsz double @llvm.minnum.f64(double %.067.i.i, double %i.ad) ; 2 uses
  %i.af = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.h
  br i1 %exitcond.not.i.i, label %_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit, label %.lr.ph.i.i, !llvm.loop !53

_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit:        ; preds = %.lr.ph.i.i, %middle.block, %_ZNK6casadi6MXNode3depEx.exit5
  %.0.i = phi double [ %i.m, %_ZNK6casadi6MXNode3depEx.exit5 ], [ %i.ab, %middle.block ], [ %i.ae, %.lr.ph.i.i ]
  %i.ag = load ptr, ptr %2, align 8, !tbaa !41
  store double %.0.i, ptr %i.ag, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6casadi11casadi_mminIdEET_PKS1_xx.exit
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi4MMax4evalEPPKdPPdPxS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !41
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 0) #18
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 5 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i4.not = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i4.not, label %bb.d, label %_ZNK6casadi6MXNode3depEx.exit5

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 0) #18
  unreachable

_ZNK6casadi6MXNode3depEx.exit5:                   ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_denseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = select i1 %i.l, double -inf, double 0.000000e+00 ; 3 uses
  %.not7.i = icmp ne ptr %i.b, null
  %i.n = icmp sgt i64 %i.h, 0
  %or.cond.i = and i1 %.not7.i, %i.n
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZNK6casadi6MXNode3depEx.exit5
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.h, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ] ; 2 uses
  %vec.phi9 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !47 ; 2 uses
  %wide.load10 = load <2 x double>, ptr %i.p, align 8, !tbaa !47 ; 2 uses
  %i.q = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi, <2 x double> %wide.load) ; 2 uses
  %i.r = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi9, <2 x double> %wide.load10) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = fcmp uno <2 x double> %wide.load, %wide.load10
  %i.t = freeze <2 x i1> %i.s
  %i.u = bitcast <2 x i1> %i.t to i2
  %i.v = icmp ne i2 %i.u, 0                       ; 5 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %i.y = select i1 %i.v, <2 x double> %vec.phi, <2 x double> %i.q
  %i.z = select i1 %i.v, <2 x double> %vec.phi9, <2 x double> %i.r
  %i.aa = select i1 %i.v, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.y, <2 x double> %i.z)
  %i.ab = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %i.h, %n.vec
  %.not11 = or i1 %cmp.n, %i.v
  br i1 %.not11, label %.lr.ph.i.i.preheader12, label %_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit

.lr.ph.i.i.preheader12:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  %.067.i.i.ph = phi double [ %i.m, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader12, %.lr.ph.i.i
  %.08.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader12 ] ; 2 uses
  %.067.i.i = phi double [ %i.ae, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader12 ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.08.i.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !47
  %i.ae = tail call nsz double @llvm.maxnum.f64(double %.067.i.i, double %i.ad) ; 2 uses
  %i.af = add nuw nsw i64 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.h
  br i1 %exitcond.not.i.i, label %_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit, label %.lr.ph.i.i, !llvm.loop !55

_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit:        ; preds = %.lr.ph.i.i, %middle.block, %_ZNK6casadi6MXNode3depEx.exit5
  %.0.i = phi double [ %i.m, %_ZNK6casadi6MXNode3depEx.exit5 ], [ %i.ab, %middle.block ], [ %i.ae, %.lr.ph.i.i ]
  %i.ag = load ptr, ptr %2, align 8, !tbaa !41
  store double %.0.i, ptr %i.ag, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6casadi11casadi_mmaxIdEET_PKS1_xx.exit
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi4MMin7eval_sxEPPKNS_6SXElemEPPS1_PxS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !56
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.b = load ptr, ptr %1, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 0) #18
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.h = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i6.not = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i6.not, label %bb.d, label %_ZNK6casadi6MXNode3depEx.exit7

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 0) #18
  unreachable

_ZNK6casadi6MXNode3depEx.exit7:                   ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_denseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = zext i1 %i.l to i64
  call void @_ZN6casadi11casadi_mminINS_6SXElemEEET_PKS2_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %5, ptr noundef %i.b, i64 noundef %i.h, i64 noundef %i.m)
  %i.n = load ptr, ptr %2, align 8, !tbaa !56
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit7
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.g

bb.f:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit7
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %bb.a, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi11casadi_mminINS_6SXElemEEET_PKS2_xx(ptr dead_on_unwind noalias writable sret(%"class.casadi::SXElem") align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %5 = alloca %"class.casadi::SXElem", align 8    ; 8 uses
  %6 = alloca %"class.casadi::SXElem", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %.not = icmp eq i64 %3, 0
  %i.a = select i1 %.not, double 0.000000e+00, double +inf
  call void @_ZN6casadi6SXElemC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.a)
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6casadi6SXElemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN6casadi6SXElemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.c = icmp sgt i64 %2, 0
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.06.i = phi i64 [ %i.f, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !58
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i
  invoke void @_ZN6casadi6SXElem6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::SXElem") align 8 %4, i64 noundef 34, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.g, !noalias !58 ; 0 uses

bb.f:                                             ; preds = %.noexc
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16, !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !58
  %i.f = add nuw nsw i64 %.06.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !61

bb.g:                                             ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16, !noalias !58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !58
  br label %.body

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  invoke void @_ZN6casadi6SXElemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN6casadi12casadi_vfminINS_6SXElemEEET_PKS2_xS2_.exit unwind label %.loopexit.split-lp

_ZN6casadi12casadi_vfminINS_6SXElemEEET_PKS2_xS2_.exit: ; preds = %._crit_edge.i
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #16
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.b, %_ZN6casadi12casadi_vfminINS_6SXElemEEET_PKS2_xS2_.exit
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.i:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.b, %bb.c ]
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi4MMax7eval_sxEPPKNS_6SXElemEPPS1_PxS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !56
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.b = load ptr, ptr %1, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 0) #18
end_hunk_0
