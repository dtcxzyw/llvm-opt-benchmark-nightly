Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMTargetMachine?download=true
inline.NumInlined: 7502
inline.NumDeleted: 3559
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4llvm20ARMBaseTargetMachine16getSubtargetImplERKNS_8FunctionE:bb.a
bb.s:                                             ; preds = %bb.r
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.bd, ptr %5, align 8, !tbaa !35
  %i.be = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !48
  br label %._crit_edge.i.i20

._crit_edge.i.i20:                                ; preds = %bb.s, %bb.r
  %i.bf = phi ptr [ %i.bd, %bb.s ], [ %i.ay, %bb.r ] ; 2 uses
  switch i64 %i.bb, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit21
  ]

bb.t:                                             ; preds = %._crit_edge.i.i20
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !48
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit21

bb.u:                                             ; preds = %._crit_edge.i.i20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit21: ; preds = %._crit_edge.i.i20, %bb.t, %bb.u
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !36
  %i.bj = load ptr, ptr %5, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit19

_ZNK4llvm9StringRef3strB5cxx11Ev.exit19:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i18, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bl = call ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.13, i64 14) #22
  store ptr %i.bl, ptr %6, align 8
  %i.bm = call noundef zeroext i1 @_ZNK4llvm9Attribute14getValueAsBoolEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.bm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit19
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0                    ; 2 uses
  %i.bq = select i1 %i.bp, i64 11, i64 12         ; 2 uses
  %i.br = sub i64 4611686018427387903, %i.bo
  %i.bs = icmp ult i64 %i.br, %i.bq
  br i1 %i.bs, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.v
  %i.bt = select i1 %i.bp, ptr @.str.14, ptr @.str.15
  %i.bu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.bt, i64 noundef %i.bq) #22 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.bv = load ptr, ptr %4, align 8, !tbaa !35, !noalias !720
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !36, !noalias !720 ; 3 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !35, !noalias !720
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !36, !noalias !720 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.cb, ptr %7, align 8, !tbaa !166, !alias.scope !721
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !36, !alias.scope !721
  store i8 0, ptr %i.cb, align 8, !tbaa !48, !alias.scope !721
  %i.cd = add i64 %i.ca, %i.bx
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cd) #22
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !36, !alias.scope !721
  %i.cf = sub i64 4611686018427387903, %i.ce
  %i.cg = icmp ult i64 %i.cf, %i.bx
  br i1 %i.cg, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.x
  %i.ch = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bv, i64 noundef %i.bx) #22 ; 0 uses
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !36, !alias.scope !721
  %i.cj = sub i64 4611686018427387903, %i.ci
  %i.ck = icmp ult i64 %i.cj, %i.ca
  br i1 %i.ck, label %bb.z, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.by, i64 noundef %i.ca) #22 ; 0 uses
  %i.cm = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 19) #22
  br i1 %i.cm, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.cn = load i64, ptr %i.cc, align 8, !tbaa !36
  %i.co = and i64 %i.cn, -8
  %i.cp = icmp eq i64 %i.co, 4611686018427387896
  br i1 %i.cp, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit22

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit22: ; preds = %bb.aa
  %i.cq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.16, i64 noundef 8) #22 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit22, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.cr = call i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #22 ; 2 uses
  %.sroa.06.0.extract.trunc = trunc i32 %i.cr to i16
  store i16 %.sroa.06.0.extract.trunc, ptr %8, align 2, !tbaa !722
  %i.cs = and i32 %i.cr, 65535
  %or.cond.not = icmp eq i32 %i.cs, 0
  br i1 %or.cond.not, label %bb.af, label %_ZNK4llvm12DenormalModeneES0_.exit.thread

_ZNK4llvm12DenormalModeneES0_.exit.thread:        ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZNK4llvm12DenormalMode3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 1 dereferenceable(2) %8)
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 17) #22, !noalias !723 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cu, ptr %9, align 8, !tbaa !166, !alias.scope !723
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !35 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ad:                                            ; preds = %_ZNK4llvm12DenormalModeneES0_.exit.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !36 ; 3 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  %i.db = add nuw nsw i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.db, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm12DenormalModeneES0_.exit.thread
  store ptr %i.cv, ptr %9, align 8, !tbaa !35, !alias.scope !723
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !48
  store i64 %i.dc, ptr %i.cu, align 8, !tbaa !48, !alias.scope !723
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dd = phi ptr [ %i.cu, %bb.ad ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.de = phi i64 [ %i.cz, %bb.ad ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !36, !alias.scope !723
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !35
  store i64 0, ptr %i.df, align 8, !tbaa !36
  store i8 0, ptr %i.cw, align 8, !tbaa !48
  %i.dh = load i64, ptr %i.cc, align 8, !tbaa !36
  %i.di = sub i64 4611686018427387903, %i.dh
  %i.dj = icmp ult i64 %i.di, %i.de
  br i1 %i.dj, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.ae:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.dk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.dd, i64 noundef %i.de) #22 ; 0 uses
  %i.dl = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cu
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.dn = load i64, ptr %i.cu, align 8, !tbaa !48
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.dp = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !48
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 4 uses
  %i.dv = load ptr, ptr %7, align 8, !tbaa !35    ; 3 uses
  %i.dw = load i64, ptr %i.cc, align 8, !tbaa !36 ; 7 uses
  %i.dx = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.dv, i64 %i.dw) #22
  %i.dy = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.du, ptr %i.dv, i64 %i.dw, i32 noundef %i.dx) #22 ; 2 uses
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !168
  %i.ea = zext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !170 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i, label %bb.ag, label %_ZN4llvm9StringMapISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EENS_15MallocAllocatorEEixENS_9StringRefE.exit

bb.ag:                                            ; preds = %bb.af
  %i.ed = add i64 %i.dw, 17
  %i.ee = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ed, i64 noundef 8) #22 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm14StringMapEntryISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EEE6createINS_15MallocAllocatorEJEEEPS6_NS_9StringRefERT_DpOT0_.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr align 1 %i.dv, i64 %i.dw, i1 false)
  br label %_ZN4llvm14StringMapEntryISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EEE6createINS_15MallocAllocatorEJEEEPS6_NS_9StringRefERT_DpOT0_.exit.i.i.i

_ZN4llvm14StringMapEntryISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EEE6createINS_15MallocAllocatorEJEEEPS6_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %bb.ah, %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dw
  store i8 0, ptr %i.eg, align 1, !tbaa !48
  store i64 %i.dw, ptr %i.ee, align 8, !tbaa !172
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr null, ptr %i.eh, align 8, !tbaa !725
  store ptr %i.ee, ptr %i.eb, align 8, !tbaa !170
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !174
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !174
  %i.el = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.du, i32 noundef %i.dy) #22
  %i.em = load ptr, ptr %i.du, align 8, !tbaa !168
  %i.en = zext i32 %i.el to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en
  %.pre.i27 = load ptr, ptr %i.eo, align 8, !tbaa !170
  br label %_ZN4llvm9StringMapISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EENS_15MallocAllocatorEEixENS_9StringRefE.exit

_ZN4llvm9StringMapISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EENS_15MallocAllocatorEEixENS_9StringRefE.exit: ; preds = %bb.af, %_ZN4llvm14StringMapEntryISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EEE6createINS_15MallocAllocatorEJEEEPS6_NS_9StringRefERT_DpOT0_.exit.i.i.i
  %i.ep = phi ptr [ %.pre.i27, %_ZN4llvm14StringMapEntryISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EEE6createINS_15MallocAllocatorEJEEEPS6_NS_9StringRefERT_DpOT0_.exit.i.i.i ], [ %i.ec, %bb.af ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 5 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !175 ; 2 uses
  %.not53 = icmp eq ptr %i.er, null
  br i1 %.not53, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN4llvm9StringMapISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EENS_15MallocAllocatorEEixENS_9StringRefE.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.eu = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 19) #22
  %i.ev = call noalias noundef nonnull dereferenceable(519368) ptr @_Znwm(i64 noundef 519368) #26, !noalias !726 ; 3 uses
  %i.ew = load i8, ptr %i.et, align 8, !tbaa !176, !range !22, !noalias !726, !noundef !23
  %i.ex = trunc nuw i8 %i.ew to i1
  %.sroa.0.0.copyload.i = load i16, ptr %8, align 2, !tbaa !722, !noalias !726
  call void @_ZN4llvm12ARMSubtargetC1ERKNS_6TripleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS_20ARMBaseTargetMachineEbbNS_12DenormalModeE(ptr noundef nonnull align 8 dereferenceable(519368) %i.ev, ptr noundef nonnull align 8 dereferenceable(56) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(1776) %0, i1 noundef zeroext %i.ex, i1 noundef zeroext %i.eu, i16 %.sroa.0.0.copyload.i) #22, !noalias !726
  %i.ey = load ptr, ptr %i.eq, align 8, !tbaa !175 ; 3 uses
  store ptr %i.ev, ptr %i.eq, align 8, !tbaa !175
  %.not.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm12ARMSubtargetESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12ARMSubtargetEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm12ARMSubtargetEEclEPS1_.exit.i.i.i.i: ; preds = %bb.ai
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(519368) %i.ey) #22, !inline_history !708
  %.pre = load ptr, ptr %i.eq, align 8, !tbaa !175
  br label %_ZNSt10unique_ptrIN4llvm12ARMSubtargetESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12ARMSubtargetESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm12ARMSubtargetEEclEPS1_.exit.i.i.i.i, %bb.ai
  %i.fc = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4llvm12ARMSubtargetEEclEPS1_.exit.i.i.i.i ], [ %i.ev, %bb.ai ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 461
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !287, !range !22, !noundef !23
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN4llvm12ARMSubtargetESt14default_deleteIS1_EED2Ev.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 463
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !727, !range !22, !noundef !23
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %bb.ak

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.aj
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fk = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #22 ; 2 uses
  %i.fl = extractvalue { ptr, i64 } %i.fk, 0
  %i.fm = extractvalue { ptr, i64 } %i.fk, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 3, ptr %i.fn, align 8, !tbaa !290, !alias.scope !728
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 5, ptr %i.fo, align 1, !tbaa !291, !alias.scope !728
  store ptr @.str.18, ptr %12, align 8, !tbaa !48, !alias.scope !728
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.fl, ptr %i.fp, align 8, !tbaa !48, !alias.scope !728
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %i.fm, ptr %i.fq, align 8, !tbaa !48, !alias.scope !728
  store ptr %12, ptr %11, align 8, !alias.scope !729
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.19, ptr %i.fr, align 8, !alias.scope !729
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.fs, align 8, !tbaa !290, !alias.scope !729
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.ft, align 1, !tbaa !291, !alias.scope !729
  call void @_ZN4llvm11LLVMContext9emitErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull align 8 dereferenceable(34) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %.pre55 = load ptr, ptr %i.eq, align 8, !tbaa !175
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN4llvm12ARMSubtargetESt14default_deleteIS1_EED2Ev.exit, %bb.aj, %_ZN4llvmplERKNS_5TwineES2_.exit, %_ZN4llvm9StringMapISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EENS_15MallocAllocatorEEixENS_9StringRefE.exit
  %i.fu = phi ptr [ %i.fc, %_ZNSt10unique_ptrIN4llvm12ARMSubtargetESt14default_deleteIS1_EED2Ev.exit ], [ %i.fc, %bb.aj ], [ %.pre55, %_ZN4llvmplERKNS_5TwineES2_.exit ], [ %i.er, %_ZN4llvm9StringMapISt10unique_ptrINS_12ARMSubtargetESt14default_deleteIS2_EENS_15MallocAllocatorEEixENS_9StringRefE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.fv = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.cb
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.ak
  %i.fx = load i64, ptr %i.cb, align 8, !tbaa !48
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fz = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !48
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ge = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !48
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %i.fu
}

declare ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm9Attribute16getValueAsStringEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm9Attribute14getValueAsBoolEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare i32 @_ZNK4llvm8Function16getDenormalFPEnvEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm12DenormalMode3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !166
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !36
  store i8 0, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !730
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !731
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !732
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %0, ptr %i.g, align 8, !tbaa !733
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #22
  %i.h = load i8, ptr %1, align 1, !tbaa !734     ; 3 uses
  %i.i = icmp ult i8 %i.h, 4
  br i1 %i.i, label %switch.lookup, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

switch.lookup:                                    ; preds = %bb.a
  %i.l = zext nneg i8 %i.h to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm12DenormalMode3strB5cxx11Ev.204, i64 %i.l
end_hunk_0
