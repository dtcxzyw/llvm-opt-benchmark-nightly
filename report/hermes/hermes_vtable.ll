inline.NumInlined: 2335
inline.NumDeleted: 1466
begin_hunk_0_@_ZN12_GLOBAL__N_119HostFunctionWrapper4callEPvRN6hermes2vm7RuntimeENS3_10NativeArgsE:bb.a

._crit_edge.loopexit:                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !633, !noalias !643
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.sroa.08.0.copyload = load i64, ptr %i.j, align 8, !tbaa !69
  %i.k = call fastcc { i32, i64 } @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl11createValueEN6hermes2vm11HermesValueE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, i64 %.sroa.08.0.copyload) ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0
  store i32 %i.l, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.k, 1
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !487  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !646
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !649
  %i.t = load ptr, ptr %3, align 8, !tbaa !217
  %i.u = load i32, ptr %i.c, align 8, !tbaa !219
  %i.v = zext i32 %i.u to i64
  %i.w = call { i32, i64 } %i.s(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %4, ptr noundef %i.t, i64 noundef %i.v) #22 ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0
  %i.y = extractvalue { i32, i64 } %i.w, 1        ; 5 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !217    ; 2 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !219 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %.idx = shl nuw nsw i64 %i.ab, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %.not48 = icmp eq i32 %i.aa, 0
  br i1 %.not48, label %._crit_edge52, label %.lr.ph51

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit
  %.sroa.038.047 = phi ptr [ %i.ad, %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit ], [ %i.e, %bb.a ]
  %i.ad = getelementptr inbounds i8, ptr %.sroa.038.047, i64 -8 ; 3 uses
  %.sroa.010.0.copyload = load i64, ptr %i.ad, align 8, !tbaa !69
  %i.ae = call fastcc { i32, i64 } @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl11createValueEN6hermes2vm11HermesValueE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, i64 %.sroa.010.0.copyload) ; 2 uses
  %i.af = extractvalue { i32, i64 } %i.ae, 0
  %i.ag = extractvalue { i32, i64 } %i.ae, 1
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !219 ; 2 uses
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !218
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit, label %bb.b, !prof !223

bb.b:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 16) #22
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !219
  br label %_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseI14HermesABIValueLb1EE9push_backERKS1_.exit: ; preds = %.lr.ph, %bb.b
  %i.aj = phi i32 [ %.pre.i, %bb.b ], [ %i.ah, %.lr.ph ]
  %i.ak = load ptr, ptr %3, align 8, !tbaa !217
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  store i32 %i.af, ptr %i.am, align 1
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ag, ptr %.sroa.436.0..sroa_idx, align 1
  %i.an = load i32, ptr %i.c, align 8, !tbaa !219
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.c, align 8, !tbaa !219
  %.not45 = icmp eq ptr %i.ad, %i.i
  br i1 %.not45, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge52:                                    ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit23, %._crit_edge
  %i.ap = load i32, ptr %4, align 8, !tbaa !158
  %.not.i21 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i21, label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge52
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !70  ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !520
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !651
  call void %i.as(ptr noundef nonnull %i.aq) #22, !inline_history !653
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit

_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit: ; preds = %._crit_edge52, %bb.c
  switch i32 %i.x, label %bb.i [
    i32 3, label %bb.e
    i32 0, label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit25
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 4, label %bb.h
    i32 -2147483641, label %bb.j
    i32 -2147483639, label %bb.j
    i32 -2147483643, label %bb.j
    i32 -2147483642, label %bb.j
  ]

.lr.ph51:                                         ; preds = %._crit_edge, %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit23
  %.049 = phi ptr [ %i.ay, %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit23 ], [ %i.z, %._crit_edge ] ; 3 uses
  %i.at = load i32, ptr %.049, align 8, !tbaa !158
  %.not.i22 = icmp sgt i32 %i.at, -1
  br i1 %.not.i22, label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit23, label %bb.d

bb.d:                                             ; preds = %.lr.ph51
  %i.au = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !520
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !651
  call void %i.ax(ptr noundef nonnull %i.av) #22, !inline_history !653
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit23

_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit23: ; preds = %.lr.ph51, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %.049, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.ac
  br i1 %.not, label %._crit_edge52, label %.lr.ph51

bb.e:                                             ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit
  %.sroa.533.8.extract.trunc = trunc i64 %i.y to i32
  %i.az = call fastcc noundef i32 @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl10raiseErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(180) %i.a, i32 noundef %.sroa.533.8.extract.trunc)
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit25

bb.f:                                             ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit25

bb.g:                                             ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit
  %i.ba = and i64 %i.y, 255
  %i.bb = or disjoint i64 %i.ba, -1407374883553280
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit25

bb.h:                                             ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit
  %i.bc = bitcast i64 %i.y to double
  %i.bd = fcmp uno double %i.bc, 0.000000e+00
  %.sroa.0.0.i.i = select i1 %i.bd, i64 9221120237041090560, i64 %i.y, !prof !133
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit25

bb.i:                                             ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.3) #24
  unreachable

bb.j:                                             ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit, %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit, %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit, %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit
  %i.be = inttoptr i64 %i.y to ptr                ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !69
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !520
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !651
  call void %i.bh(ptr noundef nonnull %i.be) #22, !inline_history !653
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit25

_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit25: ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit, %bb.h, %bb.g, %bb.f, %bb.j, %bb.e
  %.sroa.041.0 = phi i32 [ %i.az, %bb.e ], [ 1, %bb.j ], [ 1, %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ]
  %.sroa.3.0 = phi i64 [ undef, %bb.e ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.j ], [ -1688849860263936, %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit ], [ -1548112371908608, %bb.f ], [ %i.bb, %bb.g ], [ %.sroa.0.0.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bi = load ptr, ptr %3, align 8, !tbaa !217   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.b
  br i1 %i.bj, label %_ZN4llvh11SmallVectorI14HermesABIValueLj8EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit25
  call void @free(ptr noundef %i.bi) #22
  br label %_ZN4llvh11SmallVectorI14HermesABIValueLj8EED2Ev.exit

_ZN4llvh11SmallVectorI14HermesABIValueLj8EED2Ev.exit: ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit25, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.041.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119HostFunctionWrapper7releaseEPv(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !487 ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !646
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !654
  tail call void %i.d(ptr noundef nonnull %.val) #22, !inline_history !655
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl10raiseErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(180) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.llvh::SmallVector.457", align 8 ; 9 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  switch i32 %1, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 [
    i32 1, label %bb.g
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !28, !alias.scope !662
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !662 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68, !noalias !662 ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.c, ptr %2, align 8, !tbaa !67, !alias.scope !662
  %i.j = load i64, ptr %i.d, align 8, !tbaa !70, !noalias !662
  store i64 %i.j, ptr %i.b, align 8, !tbaa !70, !alias.scope !662
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !68, !noalias !662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.k = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.b, %bb.c ]
  %i.l = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !68, !alias.scope !662
  store ptr %i.d, ptr %i.a, align 8, !tbaa !67, !noalias !662
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.m, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !217
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !219
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.q, align 4, !tbaa !218
  %i.r = call noundef zeroext i1 @_ZN4llvh24convertUTF8ToUTF16StringENS_9StringRefERNS_15SmallVectorImplItEE(ptr %i.k, i64 %i.l, ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !115  ; 2 uses
  br i1 %i.r, label %bb.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.u, align 8, !tbaa !663
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 33, ptr %i.v, align 8, !tbaa !666
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !667
  store ptr @.str.11, ptr %4, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.x, align 8, !tbaa !668
  %i.y = call noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.z = load ptr, ptr %3, align 8, !tbaa !217
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !219
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 4, ptr %i.ac, align 8, !tbaa !668
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ad, align 8, !tbaa !663
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.ab, ptr %i.ae, align 8, !tbaa !666
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.af, align 8, !tbaa !667
  store ptr %i.z, ptr %5, align 8, !tbaa !70
  %i.ag = call noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.0 = phi i32 [ %i.ag, %bb.d ], [ %i.y, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %i.ah = load ptr, ptr %3, align 8, !tbaa !217   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.o
  br i1 %i.ai, label %_ZN4llvh11SmallVectorItLj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ah) #22
  br label %_ZN4llvh11SmallVectorItLj8EED2Ev.exit

_ZN4llvh11SmallVectorItLj8EED2Ev.exit:            ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.aj = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN4llvh11SmallVectorItLj8EED2Ev.exit
  %i.al = load i64, ptr %i.b, align 8, !tbaa !70
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZN4llvh11SmallVectorItLj8EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.g

_ZN6hermes2vm11TwineChar16C2EPKc.exit8:           ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ap, align 8, !tbaa !663
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 26, ptr %i.aq, align 8, !tbaa !666
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !667
  store ptr @.str.12, ptr %6, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.as, align 8, !tbaa !668
  %i.at = call noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %.1 = phi i32 [ %i.at, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ], [ 0, %bb.a ]
  ret i32 %.1
}

declare noundef zeroext i1 @_ZN4llvh24convertUTF8ToUTF16StringENS_9StringRefERNS_15SmallVectorImplItEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

declare { i32, i64 } @_ZN6hermes2vm10HostObject22createWithoutPrototypeERNS0_7RuntimeESt10unique_ptrINS0_15HostObjectProxyESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117HostObjectWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_117HostObjectWrapperE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !500  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !669
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !672
  tail call void %i.d(ptr noundef nonnull %i.b) #22
  tail call void @_ZN6hermes2vm15HostObjectProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117HostObjectWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_117HostObjectWrapperE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !500  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !669
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !672
  tail call void %i.d(ptr noundef nonnull %i.b) #22, !inline_history !674
  tail call void @_ZN6hermes2vm15HostObjectProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #22, !inline_history !674
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

declare noundef i64 @_ZNK6hermes2vm15DecoratedObject10Decoration13getMallocSizeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN12_GLOBAL__N_117HostObjectWrapper3getEN6hermes2vm8SymbolIDE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !495  ; 4 uses
  %i.c = zext i32 %1 to i64
  %i.d = or disjoint i64 %i.c, -1266637395197952
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !202
  %i.j = uitofp i64 %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load double, ptr %i.k, align 8, !tbaa !203
  %i.m = fcmp ogt double %i.l, %i.j
  br i1 %i.m, label %.sink.split.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !201  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not4.i.i.i, label %.sink.split.i.i.i, label %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit

.sink.split.i.i.i:                                ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !201
  br label %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit

_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit: ; preds = %bb.a, %bb.c, %.sink.split.i.i.i
  %i.o = phi ptr [ %i.g, %bb.a ], [ %i.n, %bb.c ], [ %.pre.i.i, %.sink.split.i.i.i ] ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !70
  store ptr %.val.i.i.i, ptr %i.f, align 8, !tbaa !201
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store atomic i32 1, ptr %i.q monotonic, align 8
  store i64 %i.d, ptr %i.p, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !500  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !669
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !675
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !495
  %i.x = tail call { i32, i64 } %i.v(ptr noundef nonnull %i.s, ptr noundef %i.w, ptr %i.o) #22 ; 2 uses
  %i.y = extractvalue { i32, i64 } %i.x, 0
  %i.z = extractvalue { i32, i64 } %i.x, 1        ; 5 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !520
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !651
  tail call void %i.ab(ptr noundef nonnull %i.o) #22, !inline_history !676
  switch i32 %i.y, label %bb.h [
    i32 3, label %bb.d
    i32 0, label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 4, label %bb.g
    i32 -2147483641, label %bb.i
    i32 -2147483639, label %bb.i
    i32 -2147483643, label %bb.i
    i32 -2147483642, label %bb.i
  ]

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !495
  %.sroa.514.8.extract.trunc = trunc i64 %i.z to i32
  %i.ad = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl10raiseErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, i32 noundef %.sroa.514.8.extract.trunc)
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit
end_hunk_0
