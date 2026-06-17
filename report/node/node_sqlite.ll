inline.NumInlined: 5068
inline.NumDeleted: 1851
begin_hunk_0_@_ZN4node6sqlite19UserDefinedFunction5xFuncEP15sqlite3_contextiPP13sqlite3_value:bb.a

bb.d:                                             ; preds = %_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEPS1_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #31
  unreachable

bb.e:                                             ; preds = %_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEPS1_.exit
  %.not102 = icmp eq i32 %1, 0
  br i1 %.not102, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = shl nuw nsw i64 %i.w, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #32 ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = add i64 %i.f, 664
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 2 uses
  %.sroa.073.0115 = phi ptr [ %i.z, %.lr.ph ], [ %.sroa.073.6, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 9 uses
  %.sroa.9.0114 = phi ptr [ %i.z, %.lr.ph ], [ %.sroa.9.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 6 uses
  %.sroa.15.0113 = phi ptr [ %i.aa, %.lr.ph ], [ %.sroa.15.6, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8            ; 6 uses
  %i.ah = call i32 @sqlite3_value_type(ptr noundef %i.ag) #30
  switch i32 %i.ah, label %bb.v [
    i32 1, label %bb.g
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 5, label %bb.w
    i32 4, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ai = call i64 @sqlite3_value_int64(ptr noundef %i.ag) #30 ; 4 uses
  store i64 %i.ai, ptr %i.a, align 8
  %i.aj = load i8, ptr %i.ae, align 8, !range !26, !noundef !28
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = call ptr @_ZN2v86BigInt3NewEPNS_7IsolateEl(ptr noundef %i.e, i64 noundef %i.ai) #30
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.am = add i64 %i.ai, 9007199254740991
  %i.an = icmp ult i64 %i.am, 18014398509481983
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = sitofp i64 %i.ai to double
  %i.ap = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.e, double noundef %i.ao) #30
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aq = call ptr @_ZN4node16ERR_OUT_OF_RANGEIJRxEEEN2v85LocalINS2_6ObjectEEEPNS2_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.e, i64 64, ptr nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ar = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr %i.aq) #30 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.sroa.071.0 = phi ptr [ %i.al, %bb.h ], [ %i.ap, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.w

bb.m:                                             ; preds = %bb.f
  %i.as = call double @sqlite3_value_double(ptr noundef %i.ag) #30
  %i.at = call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.e, double noundef %i.as) #30
  br label %bb.w

bb.n:                                             ; preds = %bb.f
  %i.au = call ptr @sqlite3_value_text(ptr noundef %i.ag) #30
  %i.av = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.e, ptr noundef %i.au, i32 noundef 0, i32 noundef -1) #30
  br label %bb.w

bb.o:                                             ; preds = %bb.f
  %i.aw = call i32 @sqlite3_value_bytes(ptr noundef %i.ag) #30
  %i.ax = sext i32 %i.aw to i64                   ; 3 uses
  %i.ay = call ptr @sqlite3_value_blob(ptr noundef %i.ag) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN2v811ArrayBuffer15NewBackingStoreEPNS_7IsolateEmNS_30BackingStoreInitializationModeENS_25BackingStoreOnFailureModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.375") align 8 %3, ptr noundef %i.e, i64 noundef %i.ax, i32 noundef 1, i32 noundef 1) #30
  %i.az = load ptr, ptr %3, align 8
  %i.ba = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.az) #30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.ay, i64 %i.ax, i1 false)
  call void @_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bb = call ptr @_ZN2v811ArrayBuffer3NewEPNS_7IsolateESt10shared_ptrINS_12BackingStoreEE(ptr noundef %i.e, ptr noundef nonnull %4) #30
  %i.bc = load ptr, ptr %i.ab, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bd, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.bc, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #30, !inline_history !29
  %i.bl = load ptr, ptr %i.bc, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #30, !inline_history !29
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bo = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.bg, %bb.s ], [ %i.bq, %bb.t ]
  %i.br = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.br, label %bb.u, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #30
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  %i.bs = call ptr @_ZN2v810Uint8Array3NewENS_5LocalINS_11ArrayBufferEEEmm(ptr %i.bb, i64 noundef 0, i64 noundef %i.ax) #30
  %i.bt = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.bt) #30
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #30
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.w

bb.v:                                             ; preds = %bb.f
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6sqlite19UserDefinedFunction5xFuncEP15sqlite3_contextiPP13sqlite3_valueE20error_and_abort_args) #30
  call void @abort() #31
  unreachable

bb.w:                                             ; preds = %bb.f, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit, %bb.n, %bb.m, %bb.l
  %.sroa.071.1 = phi ptr [ %.sroa.071.0, %bb.l ], [ %i.at, %bb.m ], [ %i.av, %bb.n ], [ %i.bs, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit ], [ %i.ad, %bb.f ] ; 2 uses
  %i.bu = icmp eq ptr %.sroa.071.1, null
  br i1 %i.bu, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = ptrtoint ptr %.sroa.071.1 to i64        ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %.sroa.9.0114, %.sroa.15.0113
  br i1 %.not.i.i.i59, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %i.bv, ptr %.sroa.9.0114, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

bb.z:                                             ; preds = %bb.x
  %i.bw = ptrtoint ptr %.sroa.9.0114 to i64       ; 2 uses
  %i.bx = ptrtoint ptr %.sroa.073.0115 to i64     ; 3 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 4 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.aa, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.z
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i.i60 = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i60)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #32 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  store i64 %i.bv, ptr %i.ch, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.073.0115, %.sroa.9.0114
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ci = ptrtoaddr ptr %i.cg to i64
  %5 = add i64 %i.bw, -8
  %6 = sub i64 %5, %i.bx                          ; 2 uses
  %i.cj = lshr i64 %6, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 24
  %i.cl = sub i64 %i.ci, %i.bx
  %diff.check = icmp ult i64 %i.cl, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ck, 4611686018427387900     ; 3 uses
  %i.cm = shl i64 %n.vec, 3                       ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cg, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.073.0115, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cp ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.sroa.073.0115, i64 %i.cp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.cq = getelementptr i8, ptr %next.gep145, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep145, align 8, !alias.scope !33, !noalias !30
  %wide.load146 = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !33, !noalias !30
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !30, !noalias !33
  store <2 x i64> %wide.load146, ptr %i.cr, align 8, !alias.scope !30, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.i.preheader148:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cn, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.073.0115, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader148, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.ct = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !33, !noalias !30
  store i64 %i.ct, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !30, !noalias !33
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cu, %.sroa.9.0114
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !38

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cg, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cn, %middle.block ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.073.0115, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.073.0115, i64 noundef %i.by) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.ab, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit: ; preds = %bb.y, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.15.6 = phi ptr [ %i.cw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.15.0113, %bb.y ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.9.0114, %bb.y ]
  %.sroa.073.6 = phi ptr [ %i.cg, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.073.0115, %bb.y ] ; 2 uses
  %.sroa.9.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge58, label %bb.f, !llvm.loop !39

bb.ac:                                            ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 200
  store i8 1, ptr %i.cz, align 8
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 0) #30
  br label %bb.af

.critedge58:                                      ; preds = %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, %bb.e
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.15.6, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 2 uses
  %.sroa.073.0.lcssa = phi ptr [ null, %bb.e ], [ %.sroa.073.6, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 3008
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dc, align 8
  %i.dd = call ptr @_ZN2v88Function4CallENS_5LocalINS_7ContextEEENS1_INS_5ValueEEEiPS5_(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.095.0, ptr %.sroa.0.0.copyload.i.i.i, ptr %i.h, i32 noundef %1, ptr noundef %.sroa.073.0.lcssa) #30 ; 2 uses
  %.not103 = icmp eq ptr %i.dd, null
  br i1 %.not103, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.critedge58
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  store i8 1, ptr %i.dg, align 8
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 0) #30
  br label %bb.af

bb.ae:                                            ; preds = %.critedge58
  call void @_ZN4node6sqlite21JSValueToSQLiteResultEPN2v87IsolateEP15sqlite3_contextNS1_5LocalINS1_5ValueEEE(ptr noundef %i.e, ptr noundef %0, ptr nonnull %i.dd)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.sroa.15.0111 = phi ptr [ %.sroa.15.0.lcssa, %bb.ad ], [ %.sroa.15.0.lcssa, %bb.ae ], [ %.sroa.15.0113, %bb.ac ]
  %.sroa.073.0107 = phi ptr [ %.sroa.073.0.lcssa, %bb.ad ], [ %.sroa.073.0.lcssa, %bb.ae ], [ %.sroa.073.0115, %bb.ac ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.073.0107, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = ptrtoint ptr %.sroa.15.0111 to i64
  %i.di = ptrtoint ptr %.sroa.073.0107 to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.073.0107, i64 noundef %i.dj) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %bb.af, %bb.ag
  ret void
}

declare ptr @sqlite3_user_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @sqlite3_value_type(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_value_int64(ptr noundef) local_unnamed_addr #5

declare ptr @_ZN2v86BigInt3NewEPNS_7IsolateEl(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef, double noundef) local_unnamed_addr #5

declare double @sqlite3_value_double(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_value_text(ptr noundef) local_unnamed_addr #5

declare ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_value_bytes(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_value_blob(ptr noundef) local_unnamed_addr #5

declare void @_ZN2v811ArrayBuffer15NewBackingStoreEPNS_7IsolateEmNS_30BackingStoreInitializationModeENS_25BackingStoreOnFailureModeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.375") align 8, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZN2v811ArrayBuffer3NewEPNS_7IsolateESt10shared_ptrINS_12BackingStoreEE(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @_ZN2v810Uint8Array3NewENS_5LocalINS_11ArrayBufferEEEmm(ptr, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4node6sqlite12DatabaseSync24SetIgnoreNextSQLiteErrorEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(360) initializes((200, 201)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 %i.a, ptr %i.b, align 8
  ret void
}

declare ptr @_ZN2v88Function4CallENS_5LocalINS_7ContextEEENS1_INS_5ValueEEEiPS5_(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite19UserDefinedFunction8xDestroyEPv(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4node6sqlite19UserDefinedFunctionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.c) #30
  br label %_ZN4node6sqlite19UserDefinedFunctionD2Ev.exit

_ZN4node6sqlite19UserDefinedFunctionD2Ev.exit:    ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #33
  br label %bb.d

bb.d:                                             ; preds = %_ZN4node6sqlite19UserDefinedFunctionD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite18DatabaseSyncLimitsC2EPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEENS_17BaseObjectPtrImplINS0_12DatabaseSyncELb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN4node6sqlite18DatabaseSyncLimits12LimitsSetterEN2v85LocalINS2_4NameEEENS3_INS2_5ValueEEERKNS2_20PropertyCallbackInfoIvEE:bb.a
_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEcvbEv.exit.thread: ; preds = %bb.f, %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit, %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEcvbEv.exit
  %i.au = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.av = call ptr @_ZN4node17ERR_INVALID_STATEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.au, i64 20, ptr nonnull @.str.19)
  %i.aw = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.au, ptr %i.av) #30 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit
  %i.ax = call noundef zeroext i1 @_ZNK2v85Value8IsNumberEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  br i1 %i.ax, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = call ptr @_ZN4node20ERR_INVALID_ARG_TYPEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.ah, i64 55, ptr nonnull @.str.20)
  %i.az = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr %i.ay) #30 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ba = call noundef double @_ZNK2v86Number5ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  %or.cond = fcmp oeq double %i.ba, +inf
  br i1 %or.cond, label %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = call noundef zeroext i1 @_ZNK2v85Value7IsInt32Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = call ptr @_ZN4node20ERR_INVALID_ARG_TYPEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.ah, i64 55, ptr nonnull @.str.20)
  %i.bd = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr %i.bc) #30 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.be = call noundef i32 @_ZNK2v85Int325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.m, label %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit28

bb.m:                                             ; preds = %bb.l
  %i.bg = call ptr @_ZN4node16ERR_OUT_OF_RANGEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.ah, i64 33, ptr nonnull @.str.21)
  %i.bh = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr %i.bg) #30 ; 0 uses
  br label %bb.n

_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit28: ; preds = %bb.i, %bb.l
  %.0 = phi i32 [ %i.be, %bb.l ], [ 2147483647, %bb.i ]
  %i.bi = load ptr, ptr %i.an, align 8, !nonnull !28, !noundef !28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 192
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = call i32 @sqlite3_limit(ptr noundef %i.bm, i32 noundef %i.bo, i32 noundef %.0) #30 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit28, %bb.e, %bb.h, %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEcvbEv.exit.thread
  %.1 = phi i8 [ 1, %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEcvbEv.exit.thread ], [ 0, %bb.e ], [ 1, %bb.h ], [ 1, %_ZNK4node17BaseObjectPtrImplINS_6sqlite12DatabaseSyncELb1EEptEv.exit28 ], [ 1, %bb.m ], [ 1, %bb.k ]
  %i.bq = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.br = icmp ne ptr %i.bq, null
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = icmp ne ptr %i.bq, %i.bs
  %i.bu = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.o, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.bq) #30
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZNK2v85Value13QuickIsStringEv.exit.thread

_ZNK2v85Value13QuickIsStringEv.exit.thread:       ; preds = %bb.a, %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit, %_ZNK2v85Value13QuickIsStringEv.exit
  %.3 = phi i8 [ 0, %_ZNK2v85Value13QuickIsStringEv.exit ], [ %.1, %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit ], [ 0, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit ], [ 0, %bb.a ]
  ret i8 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 0, 2) i8 @_ZN4node6sqlite18DatabaseSyncLimits11LimitsQueryEN2v85LocalINS2_4NameEEERKNS2_20PropertyCallbackInfoINS2_7IntegerEEE(ptr %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.node::Utf8Value", align 8   ; 6 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 3
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZNK2v85Value13QuickIsStringEv.exit, label %_ZNK2v85Value13QuickIsStringEv.exit.thread

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %bb.a
  %i.d = add nsw i64 %i.a, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i16, ptr %i.h, align 2
  %i.j = icmp ult i16 %i.i, 128
  br i1 %i.j, label %bb.b, label %_ZNK2v85Value13QuickIsStringEv.exit.thread

bb.b:                                             ; preds = %_ZNK2v85Value13QuickIsStringEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN4node9Utf8ValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef %i.l, ptr nonnull %0) #30
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i64, ptr %2, align 8
  %i.p = call fastcc noundef ptr @_ZN4node6sqliteL20GetLimitInfoFromNameESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.o, ptr %i.n)
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.l, i32 noundef 4) #30 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8
  br label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split

_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split: ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ]
  store i64 %.sink, ptr %i.q, align 8
  br label %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit: ; preds = %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split, %bb.b
  %.0 = phi i8 [ 0, %bb.b ], [ 1, %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit.sink.split ]
  %i.u = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.v = icmp ne ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = icmp ne ptr %i.u, %i.w
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %bb.e, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.e:                                             ; preds = %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit
  call void @free(ptr noundef nonnull %i.u) #30
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %_ZN2v811ReturnValueINS_7IntegerEE3SetIS1_EEvNS_5LocalIT_EE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNK2v85Value13QuickIsStringEv.exit.thread

_ZNK2v85Value13QuickIsStringEv.exit.thread:       ; preds = %bb.a, %_ZNK2v85Value13QuickIsStringEv.exit, %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit
  %.1 = phi i8 [ %.0, %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit ], [ 0, %_ZNK2v85Value13QuickIsStringEv.exit ], [ 0, %bb.a ]
  ret i8 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite18DatabaseSyncLimits16LimitsEnumeratorERKN2v820PropertyCallbackInfoINS2_5ArrayEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit
  %.0.idx47 = phi i64 [ 0, %bb.a ], [ %.0.add, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit ] ; 2 uses
  %.sroa.024.046 = phi ptr [ null, %bb.a ], [ %.sroa.024.1, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit ] ; 9 uses
  %.sroa.8.045 = phi ptr [ null, %bb.a ], [ %.sroa.8.1, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit ] ; 6 uses
  %.sroa.13.044 = phi ptr [ null, %bb.a ], [ %.sroa.13.1, %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit ] ; 3 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr @_ZN4node6sqlite13kLimitMappingE, i64 %.0.idx47 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %.0.ptr, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.b, ptr noundef %i.d, i32 noundef 0, i32 noundef %i.f) #30 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %.not35 = icmp eq ptr %i.g, null
  br i1 %.not35, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %.sroa.8.045, %.sroa.13.044
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.h, ptr %.sroa.8.045, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %.sroa.8.045 to i64         ; 2 uses
  %i.j = ptrtoint ptr %.sroa.024.046 to i64       ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.f, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #32 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i64 %i.h, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.024.046, %.sroa.8.045
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.u = ptrtoaddr ptr %i.s to i64
  %1 = add i64 %i.i, -8
  %2 = sub i64 %1, %i.j                           ; 2 uses
  %i.v = lshr i64 %2, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
  %i.x = sub i64 %i.u, %i.j
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %.sroa.024.046, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %next.gep62 = getelementptr i8, ptr %.sroa.024.046, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ac = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 8, !alias.scope !45, !noalias !42
  %wide.load63 = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !45, !noalias !42
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !42, !noalias !45
  store <2 x i64> %wide.load63, ptr %i.ad, align 8, !alias.scope !42, !noalias !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader65

.lr.ph.i.i.i.i.i.i.i.preheader65:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.024.046, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader65, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.af = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !45, !noalias !42
  store i64 %i.af, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !42, !noalias !45
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %.sroa.8.045
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !48

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.024.046, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.046, i64 noundef %i.k) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit: ; preds = %bb.d, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.13.1 = phi ptr [ %i.ai, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.13.044, %bb.d ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.8.045, %bb.d ]
  %.sroa.024.1 = phi ptr [ %i.s, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.024.046, %bb.d ] ; 4 uses
  %.sroa.8.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %.0.add = add nuw nsw i64 %.0.idx47, 24         ; 2 uses
  %.not = icmp eq i64 %.0.add, 264
  br i1 %.not, label %.critedge18, label %bb.b

.critedge18:                                      ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = ptrtoint ptr %.sroa.8.1 to i64
  %i.al = ptrtoint ptr %.sroa.024.1 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = tail call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.b, ptr noundef %.sroa.024.1, i64 noundef %i.an) #30 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.h, label %.critedge.sink.split, !prof !5

bb.h:                                             ; preds = %.critedge18
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = add i64 %i.ar, 648
  %i.at = inttoptr i64 %i.as to ptr
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %.critedge18, %bb.h
  %.sink57 = phi ptr [ %i.at, %bb.h ], [ %i.ao, %.critedge18 ]
  %i.au = load i64, ptr %.sink57, align 8
  store i64 %i.au, ptr %i.aj, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.sink.split
  %.sroa.13.043 = phi ptr [ %.sroa.13.1, %.critedge.sink.split ], [ %.sroa.13.044, %bb.b ]
  %.sroa.024.038 = phi ptr [ %.sroa.024.1, %.critedge.sink.split ], [ %.sroa.024.046, %bb.b ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.024.038, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.av = ptrtoint ptr %.sroa.13.043 to i64
  %i.aw = ptrtoint ptr %.sroa.024.038 to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.038, i64 noundef %i.ax) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %.critedge, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef ptr @_ZN4node6sqliteL20GetLimitInfoFromNameESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) unnamed_addr #12 {
bb.a:
  %.fr24 = freeze i64 %0                          ; 2 uses
  switch i64 %.fr24, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.10 [
    i64 0, label %.split22.us
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1
    i64 14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.4
    i64 11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.6
    i64 17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.8
    i64 12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.10
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = xor i32 %i.a, 1735288172
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 26740
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.split22.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1: ; preds = %bb.a
  %i.k = load i64, ptr %1, align 1
  %i.l = xor i64 %i.k, 8387794212353765747
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = xor i64 %i.o, 104
  %i.q = or i64 %i.l, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.split22.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.3.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.u = load i32, ptr %1, align 1
  %i.v = xor i32 %i.u, 1970040675
  %i.w = getelementptr i8, ptr %1, i64 4
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i32
  %i.z = xor i32 %i.y, 28269
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.split22.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.5

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.3.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1
  %i.ae = load i64, ptr %1, align 1
  %i.af = xor i64 %i.ae, 8390317450443389029
  %i.ag = getelementptr i8, ptr %1, i64 8
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = xor i64 %i.ai, 104
  %i.ak = or i64 %i.af, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.split22.us, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.10

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.4: ; preds = %bb.a
  %i.ao = load i64, ptr %1, align 1
  %i.ap = xor i64 %i.ao, 7236850772719005539
  %i.aq = getelementptr i8, ptr %1, i64 6
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = xor i64 %i.ar, 8386658447324832878
  %i.at = or i64 %i.ap, %i.as
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.split22.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.9

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.5: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2
  %i.ax = load i32, ptr %1, align 1
  %i.ay = xor i32 %i.ax, 1700947062
  %i.az = getelementptr i8, ptr %1, i64 4
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = zext i16 %i.ba to i32
  %i.bc = xor i32 %i.bb, 28751
end_hunk_1
begin_hunk_2_@_ZN4node6sqlite24StatementExecutionHelper13ColumnToValueEPNS_11EnvironmentEP12sqlite3_stmtib:bb.a
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.ar) #30
  call void @_ZdlPv(ptr noundef nonnull %i.ar) #30
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6sqlite24StatementExecutionHelper13ColumnToValueEPNS_11EnvironmentEP12sqlite3_stmtibE20error_and_abort_args) #30
  tail call void @abort() #31
  unreachable

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.039.1 = phi ptr [ %.sroa.039.0, %bb.g ], [ %i.n, %bb.h ], [ %i.p, %bb.i ], [ %i.s, %bb.j ], [ %i.aq, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit ]
  ret ptr %.sroa.039.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4node6sqlite13StatementSync16ColumnNameToNameEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @sqlite3_column_name(ptr noundef %i.c, i32 noundef %1) #30 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = call ptr @_ZN4node17ERR_INVALID_STATEIJRKiEEEN2v85LocalINS3_6ObjectEEEPNS3_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.k, i64 28, ptr nonnull @.str.111, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.m = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.l) #30 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.k, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef -1) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0 = phi ptr [ null, %bb.b ], [ %i.n, %bb.c ]
  ret ptr %.sroa.04.0
}

declare ptr @sqlite3_column_name(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_type(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #5

declare double @sqlite3_column_double(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = tail call ptr @sqlite3_column_name(ptr noundef %1, i32 noundef %2) #30 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZN4node17ERR_INVALID_STATEIJRKiEEEN2v85LocalINS3_6ObjectEEEPNS3_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.e, i64 28, ptr nonnull @.str.111, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.g = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr %i.f) #30 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.e, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef -1) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK4node6sqlite13StatementSync10MemoryInfoEPNS_13MemoryTrackerE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4node6sqlite16ExtractRowValuesEPNS_11EnvironmentEP12sqlite3_stmtibPN2v811LocalVectorINS5_5ValueEEE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit

_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit:     ; preds = %bb.a, %bb.b
  %i.d = sext i32 %2 to i64                       ; 3 uses
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #31
  unreachable

bb.d:                                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE5clearEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i, label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.d, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #32 ; 3 uses
  %.not.i8.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.j) #33
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i.i
  store ptr %i.n, ptr %4, align 8
  store ptr %i.n, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.d
  store ptr %i.o, ptr %i.f, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit

_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit:   ; preds = %bb.d, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %.not24 = icmp eq i32 %2, 0
  br i1 %.not24, label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit, %bb.k
  %.01221 = phi i32 [ %i.ay, %bb.k ], [ 0, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ] ; 2 uses
  %i.p = tail call ptr @_ZN4node6sqlite24StatementExecutionHelper13ColumnToValueEPNS_11EnvironmentEP12sqlite3_stmtib(ptr noundef %0, ptr noundef %1, i32 noundef %.01221, i1 noundef zeroext %3) ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.s = load ptr, ptr %i.f, align 8
  %.not.i.i.i13 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.q, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.b, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %4, align 8                ; 7 uses
  %i.w = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i14 = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i14)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #32 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i64 %i.q, ptr %i.ah, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %5 = add i64 %i.w, -8
  %6 = sub i64 %5, %i.x                           ; 2 uses
  %i.aj = lshr i64 %6, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 24
  %i.al = sub i64 %i.ai, %i.x
  %diff.check = icmp ult i64 %i.al, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ag, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ap ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.v, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.aq = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8, !alias.scope !90, !noalias !87
  %wide.load33 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !90, !noalias !87
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !87, !noalias !90
  store <2 x i64> %wide.load33, ptr %i.ar, align 8, !alias.scope !87, !noalias !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader35

.lr.ph.i.i.i.i.i.i.i.preheader35:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader35, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader35 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader35 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.at = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !90, !noalias !87
  store i64 %i.at, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !87, !noalias !90
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !93

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.an, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  store ptr %i.ag, ptr %4, align 8
  store ptr %i.aw, ptr %i.b, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ax, ptr %i.f, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.g
  %i.ay = add nuw nsw i32 %.01221, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %2
  br i1 %exitcond.not, label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %.lr.ph, !llvm.loop !94

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit: ; preds = %.lr.ph, %bb.k, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit
  %.sroa.0.3 = phi i8 [ 1, %_ZN2v811LocalVectorINS_5ValueEE7reserveEm.exit ], [ 1, %bb.k ], [ 0, %.lr.ph ]
  ret i8 %.sroa.0.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4node6sqlite24StatementExecutionHelper3AllEPNS_11EnvironmentEPNS0_12DatabaseSyncEP12sqlite3_stmtbb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.v8::EscapableHandleScope", align 8 ; 9 uses
  %6 = alloca %"class.v8::LocalVector", align 8   ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN2v824EscapableHandleScopeBaseC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.c) #30
  %i.d = call i32 @sqlite3_column_count(ptr noundef %2) #30 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = icmp slt i32 %i.d, 0
  %i.g = shl nuw nsw i64 %i.e, 3
  %.not36173 = icmp sgt i32 %i.d, 0
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = add i64 %i.h, 664
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %3, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us
  %.sroa.19.0.us = phi ptr [ %.sroa.19.1.us, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us ], [ null, %bb.a ] ; 8 uses
  %.sroa.1089.0.us = phi ptr [ %.sroa.1089.1.us, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us ], [ null, %bb.a ] ; 4 uses
  %.sroa.084.0.us = phi ptr [ %.sroa.084.1.us, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us ], [ null, %bb.a ] ; 11 uses
  %i.l = call i32 @sqlite3_step(ptr noundef %2) #30
  switch i32 %i.l, label %.split181.us [
    i32 100, label %bb.b
    i32 101, label %.critedge38
  ]

bb.b:                                             ; preds = %.split.us
  %i.m = call i8 @_ZN4node6sqlite16ExtractRowValuesEPNS_11EnvironmentEP12sqlite3_stmtibPN2v811LocalVectorINS5_5ValueEEE(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.d, i1 noundef zeroext %4, ptr noundef nonnull %6)
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %6, align 8                ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.c, ptr noundef %i.o, i64 noundef %i.t) #30
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %.sroa.1089.0.us, %.sroa.19.0.us
  br i1 %.not.i.i.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.v, ptr %.sroa.1089.0.us, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us

bb.e:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %.sroa.19.0.us to i64       ; 2 uses
  %i.x = ptrtoint ptr %.sroa.084.0.us to i64      ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %.split195.us, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i.i.us, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i.i.us = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.us)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #32 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i64 %i.v, ptr %i.ah, align 8
  %.not10.i.i.i.i.i.i.i.us = icmp eq ptr %.sroa.084.0.us, %.sroa.19.0.us
  br i1 %.not10.i.i.i.i.i.i.i.us, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.us.preheader

.lr.ph.i.i.i.i.i.i.i.us.preheader:                ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %7 = add i64 %i.w, -8
  %8 = sub i64 %7, %i.x                           ; 2 uses
  %i.aj = lshr i64 %8, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %8, 24
  %i.al = sub i64 %i.ai, %i.x
  %diff.check416 = icmp ult i64 %i.al, 32
  %or.cond = or i1 %min.iters.check418, %diff.check416
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.us.preheader435, label %vector.ph419

vector.ph419:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.us.preheader
  %n.vec421 = and i64 %i.ak, 4611686018427387900  ; 3 uses
  %i.am = shl i64 %n.vec421, 3                    ; 2 uses
  %i.an = getelementptr i8, ptr %i.ag, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.084.0.us, i64 %i.am
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph419
  %index423 = phi i64 [ 0, %vector.ph419 ], [ %index.next428, %vector.body422 ] ; 2 uses
  %i.ap = shl i64 %index423, 3                    ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.ag, i64 %i.ap ; 2 uses
  %next.gep425 = getelementptr i8, ptr %.sroa.084.0.us, i64 %i.ap ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.aq = getelementptr i8, ptr %next.gep425, i64 16
  %wide.load426 = load <2 x i64>, ptr %next.gep425, align 8, !alias.scope !98, !noalias !95
  %wide.load427 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !98, !noalias !95
  %i.ar = getelementptr i8, ptr %next.gep424, i64 16
  store <2 x i64> %wide.load426, ptr %next.gep424, align 8, !alias.scope !95, !noalias !98
  store <2 x i64> %wide.load427, ptr %i.ar, align 8, !alias.scope !95, !noalias !98
  %index.next428 = add nuw i64 %index423, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next428, %n.vec421
  br i1 %i.as, label %middle.block429, label %vector.body422, !llvm.loop !100

middle.block429:                                  ; preds = %vector.body422
  %cmp.n430 = icmp eq i64 %i.ak, %n.vec421
  br i1 %cmp.n430, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.us.preheader435

.lr.ph.i.i.i.i.i.i.i.us.preheader435:             ; preds = %.lr.ph.i.i.i.i.i.i.i.us.preheader, %middle.block429
  %.012.i.i.i.i.i.i.i.us.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.us.preheader ], [ %i.an, %middle.block429 ]
  %.0911.i.i.i.i.i.i.i.us.ph = phi ptr [ %.sroa.084.0.us, %.lr.ph.i.i.i.i.i.i.i.us.preheader ], [ %i.ao, %middle.block429 ]
  br label %.lr.ph.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.us:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.us.preheader435, %.lr.ph.i.i.i.i.i.i.i.us
  %.012.i.i.i.i.i.i.i.us = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.us ], [ %.012.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.us.preheader435 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.us = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.us ], [ %.0911.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.us.preheader435 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.at = load i64, ptr %.0911.i.i.i.i.i.i.i.us, align 8, !alias.scope !98, !noalias !95
  store i64 %i.at, ptr %.012.i.i.i.i.i.i.i.us, align 8, !alias.scope !95, !noalias !98
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.us, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.us = icmp eq ptr %i.au, %.sroa.19.0.us
  br i1 %.not.i.i.i.i.i.i.i.us, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.i.us, !llvm.loop !101

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us, %middle.block429, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us
  %.0.lcssa.i.i.i.i.i.i.i.us = phi ptr [ %i.ag, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.us ], [ %i.an, %middle.block429 ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.us ]
  %.not.i23.i.i.i.i.us = icmp eq ptr %.sroa.084.0.us, null
  br i1 %.not.i23.i.i.i.i.us, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0.us, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us: ; preds = %bb.f, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.us
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit.us: ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us, %bb.d
  %.sroa.19.1.us = phi ptr [ %i.aw, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us ], [ %.sroa.19.0.us, %bb.d ]
  %.0.lcssa.i.i.i.i.i.i.i.us.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.us, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us ], [ %.sroa.1089.0.us, %bb.d ]
  %.sroa.084.1.us = phi ptr [ %i.ag, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.us ], [ %.sroa.084.0.us, %bb.d ]
  %.sroa.1089.1.us = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.us.pn, i64 8
  br label %.split.us, !llvm.loop !102

.split:                                           ; preds = %bb.a, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit
  %.sroa.10.0 = phi ptr [ %.sroa.10.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.17.0 = phi ptr [ %.sroa.17.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.074.0 = phi ptr [ %.sroa.074.3, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 8 uses
  %.sroa.19.0 = phi ptr [ %.sroa.19.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 10 uses
  %.sroa.1089.0 = phi ptr [ %.sroa.1089.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.084.0 = phi ptr [ %.sroa.084.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 13 uses
  %i.ax = call i32 @sqlite3_step(ptr noundef %2) #30
  switch i32 %i.ax, label %.split181.us [
    i32 100, label %bb.g
    i32 101, label %.critedge38
  ]

bb.g:                                             ; preds = %.split
  %i.ay = call i8 @_ZN4node6sqlite16ExtractRowValuesEPNS_11EnvironmentEP12sqlite3_stmtibPN2v811LocalVectorINS5_5ValueEEE(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.d, i1 noundef zeroext %4, ptr noundef nonnull %6)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

bb.h:                                             ; preds = %bb.g
  %i.ba = ptrtoint ptr %.sroa.10.0 to i64
  %i.bb = ptrtoint ptr %.sroa.074.0 to i64        ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp eq ptr %.sroa.10.0, %.sroa.074.0
  br i1 %i.bd, label %bb.i, label %.critedge

.split195.us:                                     ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

bb.i:                                             ; preds = %bb.h
  br i1 %i.f, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #31
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.be = ptrtoint ptr %.sroa.17.0 to i64
  %i.bf = sub i64 %i.be, %i.bb                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 3
  %i.bh = icmp ult i64 %i.bg, %i.e
  br i1 %i.bh, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i.i, label %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %bb.k
  %i.bi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  %.not.i8.i.i = icmp eq ptr %.sroa.10.0, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0, i64 noundef %i.bf) #33
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_M_allocateEm.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.e
  br label %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit

_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit:    ; preds = %bb.k, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  %.sroa.10.5 = phi ptr [ %i.bj, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ %.sroa.10.0, %bb.k ] ; 2 uses
  %.sroa.17.6 = phi ptr [ %i.bk, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ %.sroa.17.0, %bb.k ] ; 2 uses
  %.sroa.074.6 = phi ptr [ %i.bi, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE13_M_deallocateEPS4_m.exit.i.i ], [ %.sroa.074.0, %bb.k ] ; 2 uses
  br i1 %.not36173, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit, %bb.r
  %.034177 = phi i32 [ %i.ct, %bb.r ], [ 0, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ] ; 3 uses
  %.sroa.074.1176 = phi ptr [ %.sroa.074.2.ph, %bb.r ], [ %.sroa.074.6, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ] ; 10 uses
  %.sroa.17.1175 = phi ptr [ %.sroa.17.2.ph, %bb.r ], [ %.sroa.17.6, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ] ; 7 uses
  %.sroa.10.1174 = phi ptr [ %.sroa.10.2.ph, %bb.r ], [ %.sroa.10.5, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.034177, ptr %i.a, align 4
  %i.bl = call ptr @sqlite3_column_name(ptr noundef %2, i32 noundef %.034177) #30 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  %i.bn = load ptr, ptr %i.b, align 8             ; 3 uses
  br i1 %i.bm, label %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread, label %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit

_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread: ; preds = %.lr.ph
  %i.bo = call ptr @_ZN4node17ERR_INVALID_STATEIJRKiEEEN2v85LocalINS3_6ObjectEEEPNS3_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.bn, i64 28, ptr nonnull @.str.111, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.bp = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, ptr %i.bo) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit: ; preds = %.lr.ph
  %i.bq = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.bn, ptr noundef nonnull %i.bl, i32 noundef 0, i32 noundef -1) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit
  %.not.i.i.i41 = icmp eq ptr %.sroa.10.1174, %.sroa.17.1175
  br i1 %.not.i.i.i41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.br, ptr %.sroa.10.1174, align 8
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bs = ptrtoint ptr %.sroa.17.1175 to i64      ; 2 uses
  %i.bt = ptrtoint ptr %.sroa.074.1176 to i64     ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.p, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i.i42, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i.i.i43 = icmp ne i64 %i.ca, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i43)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #32 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  store i64 %i.br, ptr %i.cd, align 8
  %.not10.i.i.i.i.i.i.i44 = icmp eq ptr %.sroa.074.1176, %.sroa.17.1175
  br i1 %.not10.i.i.i.i.i.i.i44, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i45.preheader

.lr.ph.i.i.i.i.i.i.i45.preheader:                 ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ce = ptrtoaddr ptr %i.cc to i64
  %9 = add i64 %i.bs, -8
  %10 = sub i64 %9, %i.bt                         ; 2 uses
  %i.cf = lshr i64 %10, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check400 = icmp ult i64 %10, 24
  %i.ch = sub i64 %i.ce, %i.bt
  %diff.check398 = icmp ult i64 %i.ch, 32
  %or.cond433 = or i1 %min.iters.check400, %diff.check398
  br i1 %or.cond433, label %.lr.ph.i.i.i.i.i.i.i45.preheader445, label %vector.ph401

vector.ph401:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader
  %n.vec403 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ci = shl i64 %n.vec403, 3                    ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cc, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %.sroa.074.1176, i64 %i.ci
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph401
  %index405 = phi i64 [ 0, %vector.ph401 ], [ %index.next410, %vector.body404 ] ; 2 uses
  %i.cl = shl i64 %index405, 3                    ; 2 uses
  %next.gep406 = getelementptr i8, ptr %i.cc, i64 %i.cl ; 2 uses
  %next.gep407 = getelementptr i8, ptr %.sroa.074.1176, i64 %i.cl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.cm = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load408 = load <2 x i64>, ptr %next.gep407, align 8, !alias.scope !106, !noalias !103
  %wide.load409 = load <2 x i64>, ptr %i.cm, align 8, !alias.scope !106, !noalias !103
  %i.cn = getelementptr i8, ptr %next.gep406, i64 16
  store <2 x i64> %wide.load408, ptr %next.gep406, align 8, !alias.scope !103, !noalias !106
  store <2 x i64> %wide.load409, ptr %i.cn, align 8, !alias.scope !103, !noalias !106
  %index.next410 = add nuw i64 %index405, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.co, label %middle.block411, label %vector.body404, !llvm.loop !108

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.cg, %n.vec403
  br i1 %cmp.n412, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i45.preheader445

.lr.ph.i.i.i.i.i.i.i45.preheader445:              ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader, %middle.block411
  %.012.i.i.i.i.i.i.i46.ph = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i45.preheader ], [ %i.cj, %middle.block411 ]
  %.0911.i.i.i.i.i.i.i47.ph = phi ptr [ %.sroa.074.1176, %.lr.ph.i.i.i.i.i.i.i45.preheader ], [ %i.ck, %middle.block411 ]
  br label %.lr.ph.i.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i.i45:                           ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader445, %.lr.ph.i.i.i.i.i.i.i45
  %.012.i.i.i.i.i.i.i46 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i45 ], [ %.012.i.i.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i.i.i45.preheader445 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i47 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i45 ], [ %.0911.i.i.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i.i.i45.preheader445 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i.i.i47, align 8, !alias.scope !106, !noalias !103
  store i64 %i.cp, ptr %.012.i.i.i.i.i.i.i46, align 8, !alias.scope !103, !noalias !106
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i47, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i46, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i48 = icmp eq ptr %i.cq, %.sroa.17.1175
  br i1 %.not.i.i.i.i.i.i.i48, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i45, !llvm.loop !109

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i45, %middle.block411, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i49 = phi ptr [ %i.cc, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cj, %middle.block411 ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i45 ]
  %.not.i23.i.i.i.i50 = icmp eq ptr %.sroa.074.1176, null
  br i1 %.not.i23.i.i.i.i50, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.1176, i64 noundef %i.bu) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.10.1.pn = phi ptr [ %.sroa.10.1174, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i.i49, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ]
  %.sroa.17.2.ph = phi ptr [ %.sroa.17.1175, %bb.n ], [ %i.cs, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 2 uses
  %.sroa.074.2.ph = phi ptr [ %.sroa.074.1176, %bb.n ], [ %i.cc, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 2 uses
  %.sroa.10.2.ph = getelementptr inbounds nuw i8, ptr %.sroa.10.1.pn, i64 8 ; 2 uses
  %i.ct = add nuw nsw i32 %.034177, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %i.d
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !110

.critedge:                                        ; preds = %bb.r, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit, %bb.h
  %.sroa.10.3 = phi ptr [ %.sroa.10.0, %bb.h ], [ %.sroa.10.5, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ], [ %.sroa.10.2.ph, %bb.r ]
  %.sroa.17.3 = phi ptr [ %.sroa.17.0, %bb.h ], [ %.sroa.17.6, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ], [ %.sroa.17.2.ph, %bb.r ]
  %.sroa.074.3 = phi ptr [ %.sroa.074.0, %bb.h ], [ %.sroa.074.6, %_ZN2v811LocalVectorINS_4NameEE7reserveEm.exit ], [ %.sroa.074.2.ph, %bb.r ] ; 2 uses
  %i.cu = load ptr, ptr %6, align 8
  %i.cv = call ptr @_ZN2v86Object3NewEPNS_7IsolateENS_5LocalINS_5ValueEEEPNS3_INS_4NameEEEPS5_m(ptr noundef %i.c, ptr %i.j, ptr noundef %.sroa.074.3, ptr noundef %i.cu, i64 noundef %i.e) #30
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %.sroa.1089.0, %.sroa.19.0
  br i1 %.not.i.i.i52, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  store i64 %i.cw, ptr %.sroa.1089.0, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit

bb.t:                                             ; preds = %.critedge
  %i.cx = ptrtoint ptr %.sroa.19.0 to i64         ; 2 uses
  %i.cy = ptrtoint ptr %.sroa.084.0 to i64        ; 3 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.u, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53: ; preds = %bb.t
  %i.db = ashr exact i64 %i.cz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i54 = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i.i54, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975)
  %i.df = select i1 %i.dd, i64 1152921504606846975, i64 %i.de ; 3 uses
  %.not.i.i.i.i.i55 = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i55)
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #32 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  store i64 %i.cw, ptr %i.di, align 8
  %.not10.i.i.i.i.i.i.i56 = icmp eq ptr %.sroa.084.0, %.sroa.19.0
  br i1 %.not10.i.i.i.i.i.i.i56, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53
  %i.dj = ptrtoaddr ptr %i.dh to i64
  %11 = add i64 %i.cx, -8
  %12 = sub i64 %11, %i.cy                        ; 2 uses
  %i.dk = lshr i64 %12, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 24
  %i.dm = sub i64 %i.dj, %i.cy
  %diff.check = icmp ult i64 %i.dm, 32
  %or.cond434 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond434, label %.lr.ph.i.i.i.i.i.i.i57.preheader446, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i57.preheader
  %n.vec = and i64 %i.dl, 4611686018427387900     ; 3 uses
  %i.dn = shl i64 %n.vec, 3                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.dh, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %.sroa.084.0, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dh, i64 %i.dq ; 2 uses
  %next.gep394 = getelementptr i8, ptr %.sroa.084.0, i64 %i.dq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.dr = getelementptr i8, ptr %next.gep394, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep394, align 8, !alias.scope !114, !noalias !111
  %wide.load395 = load <2 x i64>, ptr %i.dr, align 8, !alias.scope !114, !noalias !111
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !111, !noalias !114
  store <2 x i64> %wide.load395, ptr %i.ds, align 8, !alias.scope !111, !noalias !114
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i57.preheader446

.lr.ph.i.i.i.i.i.i.i57.preheader446:              ; preds = %.lr.ph.i.i.i.i.i.i.i57.preheader, %middle.block
  %.012.i.i.i.i.i.i.i58.ph = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i57.preheader ], [ %i.do, %middle.block ]
  %.0911.i.i.i.i.i.i.i59.ph = phi ptr [ %.sroa.084.0, %.lr.ph.i.i.i.i.i.i.i57.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i57:                           ; preds = %.lr.ph.i.i.i.i.i.i.i57.preheader446, %.lr.ph.i.i.i.i.i.i.i57
  %.012.i.i.i.i.i.i.i58 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i57 ], [ %.012.i.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i.i57.preheader446 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i59 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i57 ], [ %.0911.i.i.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i.i.i57.preheader446 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.du = load i64, ptr %.0911.i.i.i.i.i.i.i59, align 8, !alias.scope !114, !noalias !111
  store i64 %i.du, ptr %.012.i.i.i.i.i.i.i58, align 8, !alias.scope !111, !noalias !114
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i59, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i58, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i60 = icmp eq ptr %i.dv, %.sroa.19.0
  br i1 %.not.i.i.i.i.i.i.i60, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61, label %.lr.ph.i.i.i.i.i.i.i57, !llvm.loop !117

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i.i.i57, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53
  %.0.lcssa.i.i.i.i.i.i.i62 = phi ptr [ %i.dh, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i53 ], [ %i.do, %middle.block ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i57 ]
  %.not.i23.i.i.i.i63 = icmp eq ptr %.sroa.084.0, null
  br i1 %.not.i23.i.i.i.i63, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0, i64 noundef %i.cz) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64: ; preds = %bb.v, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i61
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_5ArrayEEEEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64, %bb.s
  %.sroa.19.1 = phi ptr [ %i.dx, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64 ], [ %.sroa.19.0, %bb.s ]
  %.0.lcssa.i.i.i.i.i.i.i62.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i62, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64 ], [ %.sroa.1089.0, %bb.s ]
  %.sroa.084.1 = phi ptr [ %i.dh, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i64 ], [ %.sroa.084.0, %bb.s ]
  %.sroa.1089.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i62.pn, i64 8
  br label %.split, !llvm.loop !102

.split181.us:                                     ; preds = %.split, %.split.us
  %.us-phi = phi ptr [ null, %.split.us ], [ %.sroa.17.0, %.split ] ; 3 uses
  %.us-phi182 = phi ptr [ null, %.split.us ], [ %.sroa.074.0, %.split ] ; 3 uses
  %.us-phi183 = phi ptr [ %.sroa.19.0.us, %.split.us ], [ %.sroa.19.0, %.split ] ; 3 uses
  %.us-phi184 = phi ptr [ %.sroa.084.0.us, %.split.us ], [ %.sroa.084.0, %.split ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 8, !range !26, !noundef !28
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.split181.us
  store i8 0, ptr %i.dy, align 8
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

bb.x:                                             ; preds = %.split181.us
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call ptr @_ZN4node6sqlite17CreateSQLiteErrorEPN2v87IsolateEP7sqlite3(ptr noundef %i.c, ptr noundef %i.ec) ; 2 uses
  %.not.i65 = icmp eq ptr %i.ed, null
  br i1 %.not.i65, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ee = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr nonnull %i.ed) #30 ; 0 uses
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

.critedge38:                                      ; preds = %.split, %.split.us
  %.us-phi185 = phi ptr [ null, %.split.us ], [ %.sroa.17.0, %.split ] ; 2 uses
  %.us-phi186 = phi ptr [ null, %.split.us ], [ %.sroa.074.0, %.split ] ; 2 uses
  %.us-phi187 = phi ptr [ %.sroa.19.0.us, %.split.us ], [ %.sroa.19.0, %.split ] ; 2 uses
  %.us-phi188 = phi ptr [ %.sroa.1089.0.us, %.split.us ], [ %.sroa.1089.0, %.split ]
  %.us-phi189 = phi ptr [ %.sroa.084.0.us, %.split.us ], [ %.sroa.084.0, %.split ] ; 4 uses
  %i.ef = ptrtoint ptr %.us-phi188 to i64
  %i.eg = ptrtoint ptr %.us-phi189 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3
  %i.ej = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.c, ptr noundef %.us-phi189, i64 noundef %i.ei) #30 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.z

bb.z:                                             ; preds = %.critedge38
  %i.el = call noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.ej) #30
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit: ; preds = %bb.g, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit, %bb.z, %.critedge38, %bb.y, %bb.x, %bb.w, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread
  %.sroa.19.0156 = phi ptr [ %.sroa.19.0, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.us-phi183, %bb.y ], [ %.sroa.19.0, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %.us-phi187, %bb.z ], [ %.us-phi183, %bb.w ], [ %.us-phi183, %bb.x ], [ %.us-phi187, %.critedge38 ], [ %.sroa.19.0, %bb.g ] ; 2 uses
  %.sroa.084.0139 = phi ptr [ %.sroa.084.0, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.us-phi184, %bb.y ], [ %.sroa.084.0, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %.us-phi189, %bb.z ], [ %.us-phi184, %bb.w ], [ %.us-phi184, %bb.x ], [ %.us-phi189, %.critedge38 ], [ %.sroa.084.0, %bb.g ] ; 2 uses
  %.sroa.17.5 = phi ptr [ %.sroa.17.1175, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.us-phi, %bb.y ], [ %.sroa.17.1175, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %.us-phi185, %bb.z ], [ %.us-phi, %bb.w ], [ %.us-phi, %bb.x ], [ %.us-phi185, %.critedge38 ], [ %.sroa.17.0, %bb.g ]
  %.sroa.074.5 = phi ptr [ %.sroa.074.1176, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.us-phi182, %bb.y ], [ %.sroa.074.1176, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %.us-phi186, %bb.z ], [ %.us-phi182, %bb.w ], [ %.us-phi182, %bb.x ], [ %.us-phi186, %.critedge38 ], [ %.sroa.074.0, %bb.g ] ; 3 uses
  %.sroa.096.5 = phi ptr [ null, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ null, %bb.y ], [ null, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ], [ %i.el, %bb.z ], [ null, %bb.w ], [ null, %bb.x ], [ null, %.critedge38 ], [ null, %bb.g ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.074.5, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit
  %i.em = ptrtoint ptr %.sroa.17.5 to i64
  %i.en = ptrtoint ptr %.sroa.074.5 to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.5, i64 noundef %i.eo) #33
  br label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit

_ZN2v811LocalVectorINS_4NameEED2Ev.exit:          ; preds = %bb.b, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, %bb.aa
  %.sroa.096.5275 = phi ptr [ %.sroa.096.5, %bb.aa ], [ %.sroa.096.5, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ], [ null, %bb.b ]
  %.sroa.084.0139274 = phi ptr [ %.sroa.084.0139, %bb.aa ], [ %.sroa.084.0139, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ], [ %.sroa.084.0.us, %bb.b ] ; 3 uses
  %.sroa.19.0156273 = phi ptr [ %.sroa.19.0156, %bb.aa ], [ %.sroa.19.0156, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ], [ %.sroa.19.0.us, %bb.b ]
  %i.ep = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i66, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v811LocalVectorINS_4NameEED2Ev.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %_ZN2v811LocalVectorINS_4NameEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.not.i.i.i.i67 = icmp eq ptr %.sroa.084.0139274, null
  br i1 %.not.i.i.i.i67, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68, label %bb.ac

bb.ac:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit
  %i.ev = ptrtoint ptr %.sroa.19.0156273 to i64
  %i.ew = ptrtoint ptr %.sroa.084.0139274 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0139274, i64 noundef %i.ex) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68:       ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, %bb.ac
  %i.ey = load ptr, ptr %5, align 8               ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.ad, !prof !5

bb.ad:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = add i64 %i.fa, 560
  %i.fc = inttoptr i64 %i.fb to ptr               ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fc, align 8
  %i.ff = load ptr, ptr %i.fd, align 8
  store ptr %i.ff, ptr %i.fc, align 8
  store ptr %i.fe, ptr %i.fd, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = add nsw i32 %i.fh, -1
  store i32 %i.fi, ptr %i.fg, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.fk, %i.fm
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.ae, !prof !41

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.fm, ptr %i.fj, align 8
  %i.fn = load ptr, ptr %5, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.fn) #30
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit68, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.sroa.096.5275
}

declare i32 @sqlite3_column_count(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #5
end_hunk_2
begin_hunk_3_@_ZN4node6sqlite21StatementSyncIterator6CreateEPNS_11EnvironmentENS_17BaseObjectPtrImplINS0_13StatementSyncELb0EEE:bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32, !noalias !125 ; 9 uses
  %i.h = load i64, ptr %2, align 8, !noalias !125
  store ptr null, ptr %2, align 8, !noalias !125
  %i.i = load ptr, ptr %i.c, align 8, !noalias !125
  tail call void @_ZN4node10BaseObjectC2EPNS_5RealmEN2v85LocalINS3_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr nonnull %i.f) #30, !noalias !125
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4node6sqlite21StatementSyncIteratorE, i64 16), ptr %i.g, align 8, !noalias !125
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store i64 %i.h, ptr %i.j, align 8, !noalias !125
  tail call void @_ZN4node10BaseObject8MakeWeakEv(ptr noundef nonnull align 8 dereferenceable(72) %i.g) #30, !noalias !125
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i8 0, ptr %i.k, align 8, !noalias !125
  %i.l = load ptr, ptr %i.j, align 8, !noalias !125
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load i64, ptr %i.m, align 8, !noalias !125
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %i.n, ptr %i.o, align 8, !noalias !125
  store ptr %i.g, ptr %0, align 8, !alias.scope !125
  %i.p = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #30, !noalias !125
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.d, label %_ZN4node14MakeBaseObjectINS_6sqlite21StatementSyncIteratorEJRPNS_11EnvironmentERN2v85LocalINS6_6ObjectEEENS_17BaseObjectPtrImplINS1_13StatementSyncELb0EEEEEENSB_IT_Lb0EEEDpOT0_.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_6sqlite21StatementSyncIteratorELb0EEC1EPS2_E20error_and_abort_args_0) #30, !noalias !125
  tail call void @abort() #31, !noalias !125
  unreachable

_ZN4node14MakeBaseObjectINS_6sqlite21StatementSyncIteratorEJRPNS_11EnvironmentERN2v85LocalINS6_6ObjectEEENS_17BaseObjectPtrImplINS1_13StatementSyncELb0EEEEEENSB_IT_Lb0EEEDpOT0_.exit: ; preds = %bb.c
  tail call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #30, !noalias !125
  br label %bb.e

bb.e:                                             ; preds = %_ZN4node14MakeBaseObjectINS_6sqlite21StatementSyncIteratorEJRPNS_11EnvironmentERN2v85LocalINS6_6ObjectEEENS_17BaseObjectPtrImplINS1_13StatementSyncELb0EEEEEENSB_IT_Lb0EEEDpOT0_.exit, %bb.b
  ret void
}

declare ptr @_ZN2v86Object14GetPrototypeV2Ev(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare i16 @_ZN2v86Object14SetPrototypeV2ENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4node6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS0_12DatabaseSyncEP12sqlite3_stmtbb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.v8::EscapableHandleScope", align 8 ; 11 uses
  %6 = alloca %"class.v8::LocalVector", align 8   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN2v824EscapableHandleScopeBaseC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.c) #30
  %i.d = call i32 @sqlite3_step(ptr noundef %2) #30
  switch i32 %i.d, label %bb.d [
    i32 101, label %bb.b
    i32 100, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = add i64 %i.e, 648                        ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %i.f to ptr
  %i.i = call noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.h) #30
  br label %"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit"

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !26, !noundef !28
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.j, align 8
  br label %"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit"

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr @_ZN4node6sqlite17CreateSQLiteErrorEPN2v87IsolateEP7sqlite3(ptr noundef %i.c, ptr noundef %i.n) ; 2 uses
  %.not.i44 = icmp eq ptr %i.o, null
  br i1 %.not.i44, label %"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr nonnull %i.o) #30 ; 0 uses
  br label %"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit"

bb.h:                                             ; preds = %bb.a
  %i.q = call i32 @sqlite3_column_count(ptr noundef %2) #30 ; 5 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = ptrtoint ptr %i.c to i64
  %i.t = add i64 %i.s, 648
  %i.u = inttoptr i64 %i.t to ptr
  br label %"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.v = call i8 @_ZN4node6sqlite16ExtractRowValuesEPNS_11EnvironmentEP12sqlite3_stmtibPN2v811LocalVectorINS5_5ValueEEE(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.q, i1 noundef zeroext %4, ptr noundef nonnull %6)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.k, label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  br i1 %3, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %6, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.c, ptr noundef %i.x, i64 noundef %i.ad) #30 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = call noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.ae) #30
  br label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = sext i32 %i.q to i64                    ; 3 uses
  %i.ai = icmp slt i32 %i.q, 0
  br i1 %i.ai, label %bb.o, label %.lr.ph.preheader

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #31
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.aj = shl nuw nsw i64 %i.ah, 3
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #32 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ah
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %.034114 = phi i32 [ %i.bu, %bb.t ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.049.0113 = phi ptr [ %.sroa.049.1.ph, %bb.t ], [ %i.ak, %.lr.ph.preheader ] ; 9 uses
  %.sroa.15.0112 = phi ptr [ %.sroa.15.1.ph, %bb.t ], [ %i.al, %.lr.ph.preheader ] ; 7 uses
  %.sroa.9.0111 = phi ptr [ %.sroa.9.1.ph, %bb.t ], [ %i.ak, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.034114, ptr %i.a, align 4
  %i.am = call ptr @sqlite3_column_name(ptr noundef %2, i32 noundef %.034114) #30 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  %i.ao = load ptr, ptr %i.b, align 8             ; 3 uses
  br i1 %i.an, label %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread, label %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit

_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread: ; preds = %.lr.ph
  %i.ap = call ptr @_ZN4node17ERR_INVALID_STATEIJRKiEEEN2v85LocalINS3_6ObjectEEEPNS3_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.ao, i64 28, ptr nonnull @.str.111, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.aq = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr %i.ap) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit: ; preds = %.lr.ph
  %i.ar = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.ao, ptr noundef nonnull %i.am, i32 noundef 0, i32 noundef -1) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit
  %.not.i.i.i = icmp eq ptr %.sroa.9.0111, %.sroa.15.0112
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %i.as, ptr %.sroa.9.0111, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.at = ptrtoint ptr %.sroa.15.0112 to i64      ; 2 uses
  %i.au = ptrtoint ptr %.sroa.049.0113 to i64     ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.s, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.r
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i.i45 = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i45)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #32 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  store i64 %i.as, ptr %i.be, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.049.0113, %.sroa.15.0112
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bf = ptrtoaddr ptr %i.bd to i64
  %7 = add i64 %i.at, -8
  %8 = sub i64 %7, %i.au                          ; 2 uses
  %i.bg = lshr i64 %8, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.bi = sub i64 %i.bf, %i.au
  %diff.check = icmp ult i64 %i.bi, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bd, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.049.0113, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bm ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.sroa.049.0113, i64 %i.bm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.bn = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep158, align 8, !alias.scope !131, !noalias !128
  %wide.load159 = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !131, !noalias !128
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !128, !noalias !131
  store <2 x i64> %wide.load159, ptr %i.bo, align 8, !alias.scope !128, !noalias !131
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader161

.lr.ph.i.i.i.i.i.i.i.preheader161:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.049.0113, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader161, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader161 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader161 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !131, !noalias !128
  store i64 %i.bq, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !128, !noalias !131
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, %.sroa.15.0112
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !134

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bd, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.bk, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0113, i64 noundef %i.av) #33
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.9.0.pn = phi ptr [ %.sroa.9.0111, %bb.q ], [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ]
  %.sroa.15.1.ph = phi ptr [ %.sroa.15.0112, %bb.q ], [ %i.bt, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 3 uses
  %.sroa.049.1.ph = phi ptr [ %.sroa.049.0113, %bb.q ], [ %i.bd, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ] ; 4 uses
  %.sroa.9.1.ph = getelementptr inbounds nuw i8, ptr %.sroa.9.0.pn, i64 8
  %i.bu = add nuw nsw i32 %.034114, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bu, %i.q
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !135

.critedge:                                        ; preds = %bb.t
  %i.bv = ptrtoint ptr %i.c to i64
  %i.bw = add i64 %i.bv, 664
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load ptr, ptr %6, align 8
  %i.bz = call ptr @_ZN2v86Object3NewEPNS_7IsolateENS_5LocalINS_5ValueEEEPNS3_INS_4NameEEEPS5_m(ptr noundef %i.c, ptr %i.bx, ptr noundef %.sroa.049.1.ph, ptr noundef %i.by, i64 noundef %i.ah) #30 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.cb = call noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.bz) #30
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit: ; preds = %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread, %.critedge, %bb.u
  %.sroa.15.0106 = phi ptr [ %.sroa.15.0112, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.sroa.15.1.ph, %.critedge ], [ %.sroa.15.1.ph, %bb.u ], [ %.sroa.15.0112, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ]
  %.sroa.049.0102 = phi ptr [ %.sroa.049.0113, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ %.sroa.049.1.ph, %.critedge ], [ %.sroa.049.1.ph, %bb.u ], [ %.sroa.049.0113, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ] ; 2 uses
  %.sroa.060.2 = phi ptr [ null, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit.thread ], [ null, %.critedge ], [ %i.cb, %bb.u ], [ null, %_ZN4node6sqlite24StatementExecutionHelper16ColumnNameToNameEPNS_11EnvironmentEP12sqlite3_stmti.exit ]
  %i.cc = ptrtoint ptr %.sroa.15.0106 to i64
  %i.cd = ptrtoint ptr %.sroa.049.0102 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0102, i64 noundef %i.ce) #33
  br label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit

_ZN2v811LocalVectorINS_4NameEED2Ev.exit:          ; preds = %bb.m, %bb.l, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, %bb.j
  %.sroa.060.3 = phi ptr [ null, %bb.j ], [ %.sroa.060.2, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ], [ null, %bb.l ], [ %i.ag, %bb.m ]
  %i.cf = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i46, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN2v811LocalVectorINS_4NameEED2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %_ZN2v811LocalVectorINS_4NameEED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit"

"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit": ; preds = %bb.c, %bb.b, %bb.g, %bb.f, %bb.e, %bb.i, %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit
  %.sroa.060.4 = phi ptr [ %.sroa.060.3, %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit ], [ null, %bb.g ], [ %i.u, %bb.i ], [ null, %bb.e ], [ null, %bb.f ], [ %i.i, %bb.c ], [ null, %bb.b ]
  %i.cl = call i32 @sqlite3_reset(ptr noundef %2) #30 ; 0 uses
  %i.cm = load ptr, ptr %5, align 8               ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.w, !prof !5

bb.w:                                             ; preds = %"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit"
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = add i64 %i.co, 560
  %i.cq = inttoptr i64 %i.cp to ptr               ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8
  %i.ct = load ptr, ptr %i.cr, align 8
  store ptr %i.ct, ptr %i.cq, align 8
  store ptr %i.cs, ptr %i.cr, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.cu, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.x, !prof !41

bb.x:                                             ; preds = %bb.w
  store ptr %i.da, ptr %i.cx, align 8
  %i.db = load ptr, ptr %5, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.db) #30
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %"_ZN4node16OnScopeLeaveImplIZNS_6sqlite24StatementExecutionHelper3GetEPNS_11EnvironmentEPNS1_12DatabaseSyncEP12sqlite3_stmtbbE3$_0ED2Ev.exit", %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.sroa.060.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite13StatementSync3AllERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #30
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 8 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.w) #30 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.x) #30 ; 0 uses
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = add i64 %i.z, 47
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, 271
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.i.i, i64 56   ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4node6sqlite13StatementSync7ColumnsERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
bb.h:                                             ; preds = %_ZN4node11Environment10GetCurrentERKN2v820FunctionCallbackInfoINS1_5ValueEEE.exit
  %i.aw = tail call i32 @sqlite3_column_count(ptr noundef nonnull %i.aq) #30 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i44, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8            ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i44, i64 216 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3272
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.be = tail call ptr @_ZN2v818DictionaryTemplate3NewEPNS_7IsolateENS_10MemorySpanIKSt17basic_string_viewIcSt11char_traitsIcEEEE(ptr noundef %i.ay, ptr nonnull @_ZZN4node6sqlite13StatementSync7ColumnsERKN2v820FunctionCallbackInfoINS2_5ValueEEEE8col_keys, i64 5) #30 ; 2 uses
  %i.bf = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 3272 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4node11Environment26set_sqlite_column_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit, label %bb.j, !prof !41

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11IsolateData26set_sqlite_column_templateEN2v85LocalINS1_18DictionaryTemplateEEEE20error_and_abort_args) #30
  tail call void @abort() #31
  unreachable

_ZN4node11Environment26set_sqlite_column_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit: ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4648
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr @_ZN2v812api_internal10EternalizeEPNS_7IsolateEPNS_5ValueE(ptr noundef %i.bk, ptr noundef %i.be) #30
  store ptr %i.bl, ptr %i.bg, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN4node11Environment26set_sqlite_column_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit, %bb.h
  %.sroa.061.0 = phi ptr [ %i.be, %_ZN4node11Environment26set_sqlite_column_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit ], [ %i.bc, %bb.h ]
  %i.bm = sext i32 %i.aw to i64                   ; 2 uses
  %i.bn = icmp slt i32 %i.aw, 0
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.308) #31
  unreachable

bb.m:                                             ; preds = %bb.k
  %.not84 = icmp eq i32 %i.aw, 0
  br i1 %.not84, label %.critedge43, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bo = shl nuw nsw i64 %i.bm, 3
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #32 ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bm
  %i.br = ptrtoint ptr %i.ay to i64
  %i.bs = add i64 %i.br, 664
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i44, i64 3008
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit
  %.040103 = phi i32 [ 0, %.lr.ph ], [ %i.et, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ] ; 7 uses
  %.sroa.062.0102 = phi ptr [ %i.bp, %.lr.ph ], [ %.sroa.062.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ] ; 9 uses
  %.sroa.10.0101 = phi ptr [ %i.bp, %.lr.ph ], [ %.sroa.10.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ] ; 6 uses
  %.sroa.17.0100 = phi ptr [ %i.bq, %.lr.ph ], [ %.sroa.17.2, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ca = load ptr, ptr %i.ap, align 8
  %i.cb = call ptr @sqlite3_column_origin_name(ptr noundef %i.ca, i32 noundef %.040103) #30 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.ay, ptr noundef nonnull %i.cb, i32 noundef 1, i32 noundef -1) #30
  br label %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit

_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit: ; preds = %bb.n, %bb.o
  %.sroa.04.0.i = phi ptr [ %i.cd, %bb.o ], [ %i.bt, %bb.n ]
  store ptr %.sroa.04.0.i, ptr %1, align 16
  %i.ce = load ptr, ptr %i.ap, align 8
  %i.cf = call ptr @sqlite3_column_database_name(ptr noundef %i.ce, i32 noundef %.040103) #30 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit46, label %bb.p

bb.p:                                             ; preds = %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit
  %i.ch = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.ay, ptr noundef nonnull %i.cf, i32 noundef 1, i32 noundef -1) #30
  br label %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit46

_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit46: ; preds = %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit, %bb.p
  %.sroa.04.0.i45 = phi ptr [ %i.ch, %bb.p ], [ %i.bt, %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit ]
  store ptr %.sroa.04.0.i45, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.040103, ptr %i.a, align 4
  %i.ci = load ptr, ptr %i.ap, align 8
  %i.cj = call ptr @sqlite3_column_name(ptr noundef %i.ci, i32 noundef %.040103) #30 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  %i.cl = load ptr, ptr %i.bw, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 176
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 200
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit46
  %i.cq = call ptr @_ZN4node17ERR_INVALID_STATEIJRKiEEEN2v85LocalINS3_6ObjectEEEPNS3_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cp, i64 28, ptr nonnull @.str.111, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.cr = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, ptr %i.cq) #30 ; 0 uses
  br label %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit

bb.r:                                             ; preds = %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit46
  %i.cs = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.cp, ptr noundef nonnull %i.cj, i32 noundef 0, i32 noundef -1) #30
  %i.ct = ptrtoint ptr %i.cs to i64
  br label %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit

_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit: ; preds = %bb.q, %bb.r
  %.sroa.04.0.i47 = phi i64 [ 0, %bb.q ], [ %i.ct, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.04.0.i47, ptr %i.bv, align 16
  %i.cu = load ptr, ptr %i.ap, align 8
  %i.cv = call ptr @sqlite3_column_table_name(ptr noundef %i.cu, i32 noundef %.040103) #30 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit49, label %bb.s

bb.s:                                             ; preds = %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit
  %i.cx = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.ay, ptr noundef nonnull %i.cv, i32 noundef 1, i32 noundef -1) #30
  br label %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit49

_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit49: ; preds = %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit, %bb.s
  %.sroa.04.0.i48 = phi ptr [ %i.cx, %bb.s ], [ %i.bt, %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit ]
  store ptr %.sroa.04.0.i48, ptr %i.bx, align 8
  %i.cy = load ptr, ptr %i.ap, align 8
  %i.cz = call ptr @sqlite3_column_decltype(ptr noundef %i.cy, i32 noundef %.040103) #30 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit51, label %bb.t

bb.t:                                             ; preds = %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit49
  %i.db = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.ay, ptr noundef nonnull %i.cz, i32 noundef 1, i32 noundef -1) #30
  br label %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit51

_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit51: ; preds = %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit49, %bb.t
  %i.dc = phi ptr [ %i.db, %bb.t ], [ %i.bt, %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit49 ] ; 2 uses
  store ptr %i.dc, ptr %i.by, align 16
  %i.dd = load <4 x ptr>, ptr %1, align 16
  %.fr = freeze <4 x ptr> %i.dd
  %i.de = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.df = icmp eq ptr %i.dc, null
  %i.dg = bitcast <4 x i1> %i.de to i4
  %i.dh = icmp ne i4 %i.dg, 0
  %op.rdx = select i1 %i.dh, i1 true, i1 %i.df
  br i1 %op.rdx, label %.critedge, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit

_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit: ; preds = %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit51
  %i.di = load ptr, ptr %i.bz, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dj, align 8 ; 2 uses
  %i.dk = call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.061.0, ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull %1, i64 5) #30 ; 2 uses
  %i.dl = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #30
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = add i64 %i.dm, 664
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = call i16 @_ZN2v86Object14SetPrototypeV2ENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.dk, ptr %.sroa.0.0.copyload.i.i.i, ptr %i.do) #30
  %i.dq = trunc i16 %i.dp to i1
  %i.dr = ptrtoint ptr %i.dk to i64               ; 2 uses
  br i1 %i.dq, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit
  %.not.i.i.i52 = icmp eq ptr %.sroa.10.0101, %.sroa.17.0100
  br i1 %.not.i.i.i52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.dr, ptr %.sroa.10.0101, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.ds = ptrtoint ptr %.sroa.10.0101 to i64      ; 2 uses
  %i.dt = ptrtoint ptr %.sroa.062.0102 to i64     ; 3 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %bb.x, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.w
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i.i.i53 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i53)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #32 ; 8 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du
  store i64 %i.dr, ptr %i.ed, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.062.0102, %.sroa.10.0101
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ee = ptrtoaddr ptr %i.ec to i64
  %2 = add i64 %i.ds, -8
  %3 = sub i64 %2, %i.dt                          ; 2 uses
  %i.ef = lshr i64 %3, 3
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  %i.eh = sub i64 %i.ee, %i.dt
  %diff.check = icmp ult i64 %i.eh, 32
  %or.cond145 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond145, label %.lr.ph.i.i.i.i.i.i.i.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.eg, 4611686018427387900     ; 3 uses
  %i.ei = shl i64 %n.vec, 3                       ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ec, i64 %i.ei  ; 2 uses
  %i.ek = getelementptr i8, ptr %.sroa.062.0102, i64 %i.ei
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.el = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ec, i64 %i.el ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.sroa.062.0102, i64 %i.el ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.em = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep142, align 8, !alias.scope !139, !noalias !136
  %wide.load143 = load <2 x i64>, ptr %i.em, align 8, !alias.scope !139, !noalias !136
  %i.en = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !136, !noalias !139
  store <2 x i64> %wide.load143, ptr %i.en, align 8, !alias.scope !136, !noalias !139
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader146

.lr.ph.i.i.i.i.i.i.i.preheader146:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ej, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.062.0102, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ek, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader146, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.ep = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !139, !noalias !136
  store i64 %i.ep, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !136, !noalias !139
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eq, %.sroa.10.0101
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !142

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ej, %middle.block ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.062.0102, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.062.0102, i64 noundef %i.du) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit: ; preds = %bb.v, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.17.2 = phi ptr [ %i.es, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.17.0100, %bb.v ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.10.0101, %bb.v ]
  %.sroa.062.2 = phi ptr [ %i.ec, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.062.0102, %bb.v ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.et = add nuw nsw i32 %.040103, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.et, %i.aw
  br i1 %exitcond.not, label %.critedge43.loopexit, label %bb.n, !llvm.loop !143

.critedge:                                        ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit, %_ZN4node6sqlite27NullableSQLiteStringToValueEPN2v87IsolateEPKc.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

.critedge43.loopexit:                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJRNS_5LocalINS_6ObjectEEEEEEvDpOT_.exit
  %i.eu = ptrtoint ptr %.sroa.10.2 to i64
  br label %.critedge43

.critedge43:                                      ; preds = %.critedge43.loopexit, %bb.m
  %.sroa.17.0.lcssa = phi ptr [ null, %bb.m ], [ %.sroa.17.2, %.critedge43.loopexit ] ; 2 uses
  %.sroa.10.0.lcssa = phi i64 [ 0, %bb.m ], [ %i.eu, %.critedge43.loopexit ]
  %.sroa.062.0.lcssa = phi ptr [ null, %bb.m ], [ %.sroa.062.2, %.critedge43.loopexit ] ; 4 uses
  %i.ev = load ptr, ptr %0, align 8               ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 2 uses
  %i.ex = ptrtoint ptr %.sroa.062.0.lcssa to i64
  %i.ey = sub i64 %.sroa.10.0.lcssa, %i.ex
  %i.ez = ashr exact i64 %i.ey, 3
  %i.fa = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.ay, ptr noundef %.sroa.062.0.lcssa, i64 noundef %i.ez) #30 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.z, label %bb.aa, !prof !5

bb.z:                                             ; preds = %.critedge43
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = add i64 %i.fe, 648
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load i64, ptr %i.fg, align 8
  store i64 %i.fh, ptr %i.ew, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

bb.aa:                                            ; preds = %.critedge43
  %i.fi = load i64, ptr %i.fa, align 8
  store i64 %i.fi, ptr %i.ew, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit: ; preds = %bb.aa, %bb.z, %.critedge
  %.sroa.17.097 = phi ptr [ %.sroa.17.0.lcssa, %bb.aa ], [ %.sroa.17.0.lcssa, %bb.z ], [ %.sroa.17.0100, %.critedge ]
  %.sroa.062.089 = phi ptr [ %.sroa.062.0.lcssa, %bb.aa ], [ %.sroa.062.0.lcssa, %bb.z ], [ %.sroa.062.0102, %.critedge ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.062.089, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit
  %i.fj = ptrtoint ptr %.sroa.17.097 to i64
  %i.fk = ptrtoint ptr %.sroa.062.089 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.062.089, i64 noundef %i.fl) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %bb.ab, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, %bb.g, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

declare ptr @sqlite3_column_origin_name(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_database_name(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_table_name(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_decltype(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE(ptr %0, ptr %1, ptr %2, i64 %3) local_unnamed_addr #2 comdat {
bb.a:
  %.idx = shl nuw nsw i64 %3, 3
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %._crit_edge, label %.critedge

bb.b:                                             ; preds = %.critedge
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.012.026, i64 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %.sroa.012.026 = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.012.026, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = tail call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %0, ptr %2, i64 %3) #30 ; 2 uses
  %i.h = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #30
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = add i64 %i.i, 664
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call i16 @_ZN2v86Object14SetPrototypeV2ENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr %0, ptr %i.k) #30
  %i.m = trunc i16 %i.l to i1
  %spec.select = select i1 %i.m, ptr %i.g, ptr null
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %._crit_edge
  %.sroa.020.2 = phi ptr [ %spec.select, %._crit_edge ], [ null, %.critedge ]
  ret ptr %.sroa.020.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite13StatementSync15SourceSQLGetterERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #30
end_hunk_4
begin_hunk_5_@_ZN4node6sqlite21StatementSyncIterator4NextERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
  %i.cg = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ce, ptr %i.cf) #30 ; 0 uses
  br label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit

bb.j:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call i32 @sqlite3_step(ptr noundef %i.ci) #30
  switch i32 %i.cj, label %bb.k [
    i32 100, label %bb.o
    i32 101, label %.critedge
  ]

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.cl = load ptr, ptr %i.ai, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 200 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8, !range !26, !noundef !28
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.co, align 8
  br label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit

bb.m:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 192
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call ptr @_ZN4node6sqlite17CreateSQLiteErrorEPN2v87IsolateEP7sqlite3(ptr noundef %i.ck, ptr noundef %i.cs) ; 2 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ck, ptr nonnull %i.ct) #30 ; 0 uses
  br label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit

.critedge:                                        ; preds = %bb.j
  %i.cv = load ptr, ptr %i.ai, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call i32 @sqlite3_reset(ptr noundef %i.cx) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.cz = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.da = add i64 %i.cz, 672
  store i64 %i.da, ptr %2, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = add i64 %i.cz, 664
  store i64 %i.dc, ptr %i.db, align 8
  %i.dd = and i64 %i.cz, -9
  %or.cond193 = icmp eq i64 %i.dd, -672
  br i1 %or.cond193, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit89.thread, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit89

_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit89: ; preds = %.critedge
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 3008
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %.sroa.0.0.copyload.i.i.i83 = load ptr, ptr %i.dg, align 8 ; 2 uses
  %i.dh = call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.04.0.i, ptr %.sroa.0.0.copyload.i.i.i83, ptr nonnull %2, i64 2) #30 ; 2 uses
  %i.di = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #30
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = add i64 %i.dj, 664
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = call i16 @_ZN2v86Object14SetPrototypeV2ENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.dh, ptr %.sroa.0.0.copyload.i.i.i83, ptr %i.dl) #30
  %i.dn = trunc i16 %i.dm to i1
  br i1 %i.dn, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit80, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit89.thread

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit80: ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit89
  %i.do = load ptr, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load i64, ptr %i.dh, align 8
  store i64 %i.dq, ptr %i.dp, align 8
  br label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit89.thread

_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit89.thread: ; preds = %.critedge, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit80, %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit

bb.o:                                             ; preds = %bb.j
  %i.dr = load ptr, ptr %i.ai, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = tail call i32 @sqlite3_column_count(ptr noundef %i.dt) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.dv = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 65
  %i.dz = load i8, ptr %i.dy, align 1, !range !26, !noundef !28
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = call i8 @_ZN4node6sqlite16ExtractRowValuesEPNS_11EnvironmentEP12sqlite3_stmtibPN2v811LocalVectorINS5_5ValueEEE(ptr noundef nonnull %i.ah, ptr noundef %i.dx, i32 noundef %i.du, i1 noundef zeroext %i.ea, ptr noundef nonnull %4)
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.p, label %.critedge77

bb.p:                                             ; preds = %bb.o
  %i.ed = load ptr, ptr %i.ai, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  %i.ef = load i8, ptr %i.ee, align 8, !range !26, !noundef !28
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eh = load ptr, ptr %4, align 8               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 3
  %i.eo = tail call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.ao, ptr noundef %i.eh, i64 noundef %i.en) #30
  %.pre = ptrtoint ptr %i.ao to i64
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.ep = sext i32 %i.du to i64                   ; 2 uses
  call void @_ZN2v811LocalVectorINS_4NameEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ep)
  %.not74172 = icmp sgt i32 %i.du, 0
  br i1 %.not74172, label %.lr.ph, label %.critedge79

.lr.ph:                                           ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit
  %.070173 = phi i32 [ 0, %.lr.ph ], [ %i.go, %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit ] ; 3 uses
  %i.es = load ptr, ptr %i.ai, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.070173, ptr %i.a, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call ptr @sqlite3_column_name(ptr noundef %i.eu, i32 noundef %.070173) #30 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 176
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 200
  %i.fc = load ptr, ptr %i.fb, align 8            ; 3 uses
  br i1 %i.ew, label %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit.thread, label %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit

_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit.thread: ; preds = %bb.s
  %i.fd = call ptr @_ZN4node17ERR_INVALID_STATEIJRKiEEEN2v85LocalINS3_6ObjectEEEPNS3_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.fc, i64 28, ptr nonnull @.str.111, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.fe = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.fc, ptr %i.fd) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge77

_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit: ; preds = %bb.s
  %i.ff = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %i.fc, ptr noundef nonnull %i.ev, i32 noundef 0, i32 noundef -1) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fg = ptrtoint ptr %i.ff to i64               ; 2 uses
  %.not167 = icmp eq ptr %i.ff, null
  br i1 %.not167, label %.critedge77, label %bb.t

bb.t:                                             ; preds = %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit
  %i.fh = load ptr, ptr %i.eq, align 8            ; 5 uses
  %i.fi = load ptr, ptr %i.er, align 8
  %.not.i.i.i91 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not.i.i.i91, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %i.fg, ptr %i.fh, align 8
  %i.fj = load ptr, ptr %i.eq, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.fk, ptr %i.eq, align 8
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

bb.v:                                             ; preds = %bb.t
  %i.fl = load ptr, ptr %3, align 8               ; 7 uses
  %i.fm = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64               ; 3 uses
  %i.fo = sub i64 %i.fm, %i.fn                    ; 4 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775800
  br i1 %i.fp, label %bb.w, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.v
  %i.fq = ashr exact i64 %i.fo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 1152921504606846975)
  %i.fu = select i1 %i.fs, i64 1152921504606846975, i64 %i.ft ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #32 ; 8 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fo
  store i64 %i.fg, ptr %i.fx, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fl, %i.fh
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fy = ptrtoaddr ptr %i.fw to i64
  %6 = add i64 %i.fm, -8
  %7 = sub i64 %6, %i.fn                          ; 2 uses
  %i.fz = lshr i64 %7, 3
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 24
  %i.gb = sub i64 %i.fy, %i.fn
  %diff.check = icmp ult i64 %i.gb, 32
  %or.cond201 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond201, label %.lr.ph.i.i.i.i.i.i.i.preheader202, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ga, 4611686018427387900     ; 3 uses
  %i.gc = shl i64 %n.vec, 3                       ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fw, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fl, i64 %i.gc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fw, i64 %i.gf ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.fl, i64 %i.gf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.gg = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep198, align 8, !alias.scope !161, !noalias !158
  %wide.load199 = load <2 x i64>, ptr %i.gg, align 8, !alias.scope !161, !noalias !158
  %i.gh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !158, !noalias !161
  store <2 x i64> %wide.load199, ptr %i.gh, align 8, !alias.scope !158, !noalias !161
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ga, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader202

.lr.ph.i.i.i.i.i.i.i.preheader202:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gd, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ge, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader202, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader202 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader202 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.gj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !161, !noalias !158
  store i64 %i.gj, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !158, !noalias !161
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gk, %i.fh
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !164

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fw, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.gd, %middle.block ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fo) #33
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.x, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  store ptr %i.fw, ptr %3, align 8
  store ptr %i.gm, ptr %i.eq, align 8
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.gn, ptr %i.er, align 8
  br label %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit

_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit: ; preds = %bb.u, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_4NameEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %i.go = add nuw nsw i32 %.070173, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.go, %i.du
  br i1 %exitcond.not, label %.critedge79, label %bb.s, !llvm.loop !165

.critedge79:                                      ; preds = %_ZN2v811LocalVectorINS_4NameEE12emplace_backIJRNS_5LocalIS1_EEEEEvDpOT_.exit, %bb.r
  %i.gp = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.gq = add i64 %i.gp, 664
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = load ptr, ptr %3, align 8
  %i.gt = load ptr, ptr %4, align 8
  %i.gu = call ptr @_ZN2v86Object3NewEPNS_7IsolateENS_5LocalINS_5ValueEEEPNS3_INS_4NameEEEPS5_m(ptr noundef %i.ao, ptr %i.gr, ptr noundef %i.gs, ptr noundef %i.gt, i64 noundef %i.ep) #30
  br label %bb.y

bb.y:                                             ; preds = %.critedge79, %bb.q
  %.pre-phi = phi i64 [ %i.gp, %.critedge79 ], [ %.pre, %bb.q ]
  %.sroa.0105.0 = phi ptr [ %i.gu, %.critedge79 ], [ %i.eo, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.gv = add i64 %.pre-phi, 680
  store i64 %i.gv, ptr %5, align 16
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.0105.0, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ah, i64 3008
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 192
  %.sroa.0.0.copyload.i.i.i92 = load ptr, ptr %i.gz, align 8
  %i.ha = call ptr @_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE(ptr %.sroa.0.0.copyload.i.i.i92, ptr %.sroa.04.0.i, ptr nonnull %5, i64 2) ; 2 uses
  %.not168 = icmp eq ptr %i.ha, null
  br i1 %.not168, label %bb.z, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %bb.y
  %i.hb = load ptr, ptr %0, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load i64, ptr %i.ha, align 8
  store i64 %i.hd, ptr %i.hc, align 8
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.critedge77

.critedge77:                                      ; preds = %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit, %_ZN4node6sqlite13StatementSync16ColumnNameToNameEi.exit.thread, %bb.o, %bb.z
  %i.he = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.critedge77
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hj) #33
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

_ZN2v811LocalVectorINS_5ValueEED2Ev.exit:         ; preds = %.critedge77, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.hk = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i93, label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #33
  br label %_ZN2v811LocalVectorINS_4NameEED2Ev.exit

_ZN2v811LocalVectorINS_4NameEED2Ev.exit:          ; preds = %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit

_ZN4node6sqlite22THROW_ERR_SQLITE_ERROREPN2v87IsolateEPNS0_12DatabaseSyncE.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.d, %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit89.thread, %_ZN2v811LocalVectorINS_4NameEED2Ev.exit, %bb.i, %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit.thread, %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6sqlite21StatementSyncIterator6ReturnERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %1 = alloca [2 x %"class.v8::MaybeLocal"], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  %i.k = icmp eq i16 %i.j, 1040
  %i.l = add i16 %i.j, -1057
  %i.m = icmp ult i16 %i.l, 1002
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, 39
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1) #30
  br label %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit

_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 3 uses
  %i.t = icmp eq ptr %.0.i.i, null
  br i1 %i.t, label %bb.h, label %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i

_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i: ; preds = %_ZN4node10BaseObject12FromJSObjectEN2v85LocalINS1_5ValueEEE.exit
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.w) #30 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.x) #30 ; 0 uses
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = add i64 %i.z, 47
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, 271
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
end_hunk_5
begin_hunk_6_@"_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS8_5ValueEEEE3$_1E9_M_invokeERKSt9_Any_dataOS3_":bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  store i8 1, ptr %i.t, align 8
  br label %bb.i

bb.f:                                             ; preds = %_ZN4node9ToV8ValueEN2v85LocalINS0_7ContextEEESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7IsolateE.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !28, !align !396
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.g, align 8, !nonnull !28, !align !396
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3008
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %.sroa.0.0.copyload.i.i.i7.i.i.i = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add i64 %i.ae, 664
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = call ptr @_ZN2v88Function4CallENS_5LocalINS_7ContextEEENS1_INS_5ValueEEEiPS5_(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr %.sroa.0.0.copyload.i.i.i7.i.i.i, ptr %i.ag, i32 noundef 1, ptr noundef nonnull %2) #30 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not16.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %.val, align 8, !nonnull !28, !align !396
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  store i8 1, ptr %i.ak, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.g, align 8, !nonnull !28, !align !396
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef zeroext i1 @_ZNK2v85Value12BooleanValueEPNS_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef %i.ao) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.1.i.i.i = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ %i.ap, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %"_ZSt10__invoke_rIbRZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS3_5ValueEEEE3$_1JSt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

"_ZSt10__invoke_rIbRZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS3_5ValueEEEE3$_1JSt17basic_string_viewIcSt11char_traitsIcEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %bb.a, %bb.i
  %.2.i.i.i = phi i1 [ %.1.i.i.i, %bb.i ], [ false, %bb.a ]
  ret i1 %.2.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbSt17basic_string_viewIcSt11char_traitsIcEEEZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS8_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8
  store ptr %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val5, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8            ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 24) #33
  br label %"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4node6sqlite12DatabaseSync14ApplyChangesetERKN2v820FunctionCallbackInfoINS4_5ValueEEEE3$_1E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef zeroext i1 @_ZNK2v85Value12BooleanValueEPNS_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #5

declare void @_ZN4node21ThrowErrStringTooLongEPN2v87IsolateE(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZN4node17ERR_INVALID_STATEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.358, i32 noundef 1, i32 noundef 17) #30 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %3, align 8
  %i.g = load i64, ptr %i.b, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.f, i32 noundef 0, i32 noundef %i.h) #30 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !5

bb.c:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.c
  %i.k = call ptr @_ZN2v89Exception5ErrorENS_5LocalINS_6StringEEENS1_INS_5ValueEEE(ptr %i.i, ptr null) #30
  %i.l = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #30
  %i.m = call ptr @_ZNK2v85Value8ToObjectENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.l) #30 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit: ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, %bb.d
  %i.o = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #30
  %i.p = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %0, ptr noundef nonnull @.str.235, i32 noundef 1, i32 noundef 4) #30 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, %bb.e
  %i.r = call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr %i.o, ptr %i.p, ptr %i.d) #30
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %_ZNK2v85MaybeIbE5CheckEv.exit, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #30
  br label %_ZNK2v85MaybeIbE5CheckEv.exit

_ZNK2v85MaybeIbE5CheckEv.exit:                    ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.f
  %i.t = load ptr, ptr %3, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit
  %i.v = load i64, ptr %i.a, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 16 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not46 = icmp ult i64 %i.l, %i.d
  br i1 %.not46, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 4 uses
  %4 = add i64 %i.b, -8
  %5 = sub i64 %4, %i.c                           ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check154 = icmp ult i64 %5, 56
  %i.t = sub i64 %i.b, %i.c
  %diff.check152 = icmp ult i64 %i.t, 32
  %or.cond = or i1 %min.iters.check154, %diff.check152
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.d
  %n.vec157 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.u = shl i64 %n.vec157, 3                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.i, i64 %i.u
  %i.w = getelementptr i8, ptr %i.q, i64 %i.u
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.x = shl i64 %index159, 3                     ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.i, i64 %i.x ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.q, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <2 x i64>, ptr %next.gep161, align 8
  %wide.load163 = load <2 x i64>, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %wide.load162, ptr %next.gep160, align 8
  store <2 x i64> %wide.load163, ptr %i.z, align 8
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.aa, label %middle.block165, label %vector.body158, !llvm.loop !397

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.s, %n.vec157
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block165
  %.08.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.v, %middle.block165 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.w, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 8
  store i64 %i.ab, ptr %.08.i.i.i.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %i.i
  br i1 %i.ae, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !398

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block165
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d
  store ptr %i.ag, ptr %i.h, align 8
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.e, label %bb.f, !prof !41

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %1, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.an = icmp eq i64 %i.ai, 8
  br i1 %i.an, label %bb.g, label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aq = icmp sgt i64 %i.e, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i47.preheader, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit
  %min.iters.check172 = icmp ult i64 %i.e, 6
  %i.ar = sub i64 %i.m, %i.c
  %diff.check170 = icmp ult i64 %i.ar, 32
  %or.cond244 = or i1 %min.iters.check172, %diff.check170
  br i1 %or.cond244, label %.lr.ph.i.i.i.i.i47.preheader254, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %n.vec175 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.as = and i64 %i.e, 3
  %i.at = shl i64 %n.vec175, 3                    ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = getelementptr i8, ptr %2, i64 %i.at
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.aw = shl i64 %index177, 3                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.aw ; 2 uses
  %next.gep179 = getelementptr i8, ptr %2, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <2 x i64>, ptr %next.gep179, align 8
  %wide.load181 = load <2 x i64>, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %next.gep178, i64 16
  store <2 x i64> %wide.load180, ptr %next.gep178, align 8
  store <2 x i64> %wide.load181, ptr %i.ay, align 8
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.az, label %middle.block183, label %vector.body176, !llvm.loop !399

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.e, %n.vec175
  br i1 %cmp.n184, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i47.preheader254

.lr.ph.i.i.i.i.i47.preheader254:                  ; preds = %.lr.ph.i.i.i.i.i47.preheader, %middle.block183
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.as, %middle.block183 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.au, %middle.block183 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.av, %middle.block183 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader254, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i47 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i47 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %i.ba = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.ba, ptr %.0811.i.i.i.i.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i47, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !400

_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bf, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = add i64 %i.b, %i.m
  %i.bh = add i64 %i.bg, -8
  %6 = add i64 %i.k, %i.c
  %7 = sub i64 %i.bh, %6                          ; 2 uses
  %i.bi = lshr i64 %7, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  %i.bk = sub i64 %i.m, %i.c
  %diff.check = icmp ult i64 %i.bk, 32
  %or.cond245 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond245, label %.lr.ph.i.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.i, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bo ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8
  %wide.load112 = load <2 x i64>, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load112, ptr %i.bq, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !401

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader258

.lr.ph.i.i.i.i.preheader258:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader258, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %i.bs = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bs, ptr %.011.i.i.i.i, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bt, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !402

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bv = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIPKN2v85LocalINS0_5ValueEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = sub nuw nsw i64 %i.e, %i.o
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx ; 6 uses
  store ptr %i.by, ptr %i.h, align 8
  %i.bz = icmp eq ptr %1, %i.i
  br i1 %i.bz, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, label %.lr.ph.i.i.i.i.i48.preheader

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %8 = add i64 %i.k, -8
  %9 = sub i64 %8, %i.m                           ; 2 uses
  %i.ca = lshr i64 %9, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %9, 104
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.cc = add i64 %i.d, %i.bw
  %i.cd = sub i64 %i.cc, %i.k
  %diff.check115 = icmp ult i64 %i.cd, 32
  br i1 %diff.check115, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec120 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec120, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.ce
  %i.cg = getelementptr i8, ptr %1, i64 %i.ce
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.ch = shl i64 %index122, 3                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.by, i64 %i.ch ; 2 uses
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load125 = load <2 x i64>, ptr %next.gep124, align 8
  %wide.load126 = load <2 x i64>, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x i64> %wide.load125, ptr %next.gep123, align 8
  store <2 x i64> %wide.load126, ptr %i.cj, align 8
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.ck, label %middle.block128, label %vector.body121, !llvm.loop !403

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.cb, %n.vec120
  br i1 %cmp.n129, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48.preheader257

.lr.ph.i.i.i.i.i48.preheader257:                  ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i.i48.preheader, %middle.block128
  %.08.i.i.i.i.i49.ph = phi ptr [ %i.by, %vector.memcheck114 ], [ %i.by, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cf, %middle.block128 ]
  %.sroa.04.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.memcheck114 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cg, %middle.block128 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader257, %.lr.ph.i.i.i.i.i48
  %.08.i.i.i.i.i49 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i48 ], [ %.08.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i50 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.04.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %i.cl = load i64, ptr %.sroa.04.07.i.i.i.i.i50, align 8
  store i64 %i.cl, ptr %.08.i.i.i.i.i49, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i50, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i49, i64 8
  %i.co = icmp eq ptr %i.cm, %i.i
  br i1 %i.co, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !404

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block128
  %.pre90 = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52: ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cp = phi ptr [ %.pre90, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit ], [ %i.by, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.n
  store ptr %i.cq, ptr %i.h, align 8
  %i.cr = ashr exact i64 %i.n, 3                  ; 6 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i54.preheader, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52
  %min.iters.check135 = icmp ult i64 %i.cr, 6
  %i.ct = sub i64 %i.m, %i.c
  %diff.check133 = icmp ult i64 %i.ct, 32
  %or.cond246 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.i54.preheader255, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec138 = and i64 %i.cr, 9223372036854775804  ; 3 uses
  %i.cu = and i64 %i.cr, 3
  %i.cv = shl i64 %n.vec138, 3                    ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %2, i64 %i.cv
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.cy = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.cy ; 2 uses
  %next.gep142 = getelementptr i8, ptr %2, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8
  %wide.load144 = load <2 x i64>, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8
  store <2 x i64> %wide.load144, ptr %i.da, align 8
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.db, label %middle.block146, label %vector.body139, !llvm.loop !405

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.cr, %n.vec138
  br i1 %cmp.n147, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i54.preheader255

.lr.ph.i.i.i.i.i54.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block146
  %.012.i.i.i.i.i55.ph = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cu, %middle.block146 ]
  %.0811.i.i.i.i.i56.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cw, %middle.block146 ]
  %.0910.i.i.i.i.i57.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cx, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader255, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0811.i.i.i.i.i56 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i54 ], [ %.0811.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0910.i.i.i.i.i57 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i54 ], [ %.0910.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %i.dc = load i64, ptr %.0910.i.i.i.i.i57, align 8
  store i64 %i.dc, ptr %.0811.i.i.i.i.i56, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 8
  %i.df = add nsw i64 %.012.i.i.i.i.i55, -1
  %i.dg = icmp samesign ugt i64 %.012.i.i.i.i.i55, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i54, label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !406

bb.h:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %0, align 8               ; 7 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 4 uses
  %i.dj = sub i64 %i.k, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 4 uses
  %i.dl = sub nsw i64 1152921504606846975, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.e
  br i1 %i.dm, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.360) #31
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.e)
  %i.dn = add nsw i64 %.sroa.speculated.i, %i.dk  ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dk
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #32
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dt = phi ptr [ %i.ds, %bb.j ], [ null, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.du = icmp eq ptr %i.dh, %1
  br i1 %i.du, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i59.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit
  %i.dv = ptrtoaddr ptr %i.dt to i64
  %i.dw = add i64 %i.a, -8
  %i.dx = sub i64 %i.dw, %i.di                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check191 = icmp ult i64 %i.dx, 56
  %i.ea = sub i64 %i.dv, %i.di
  %diff.check189 = icmp ult i64 %i.ea, 32
  %or.cond247 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i59.preheader252, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i.i.i.i59.preheader
  %n.vec194 = and i64 %i.dz, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec194, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dt, i64 %i.eb  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dh, i64 %i.eb
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ee = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.dt, i64 %i.ee ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dh, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 8
  %wide.load200 = load <2 x i64>, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 8
  store <2 x i64> %wide.load200, ptr %i.eg, align 8
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.eh, label %middle.block202, label %vector.body195, !llvm.loop !407

middle.block202:                                  ; preds = %vector.body195
  %cmp.n203 = icmp eq i64 %i.dz, %n.vec194
  br i1 %cmp.n203, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader252

.lr.ph.i.i.i.i.i59.preheader252:                  ; preds = %.lr.ph.i.i.i.i.i59.preheader, %middle.block202
  %.08.i.i.i.i.i60.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ec, %middle.block202 ]
  %.sroa.04.07.i.i.i.i.i61.ph = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ed, %middle.block202 ]
  br label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i.i.i.i.i59.preheader252, %.lr.ph.i.i.i.i.i59
  %.08.i.i.i.i.i60 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i59 ], [ %.08.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i61 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i59 ], [ %.sroa.04.07.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %i.ei = load i64, ptr %.sroa.04.07.i.i.i.i.i61, align 8
  store i64 %i.ei, ptr %.08.i.i.i.i.i60, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i61, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %1
  br i1 %i.el, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !408

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i59, %middle.block202, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.dt, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_M_allocateEm.exit ], [ %i.ec, %middle.block202 ], [ %i.ek, %.lr.ph.i.i.i.i.i59 ] ; 4 uses
  %10 = add i64 %i.b, -8
  %11 = sub i64 %10, %i.c                         ; 2 uses
  %i.em = lshr i64 %11, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %11, 56
  %.0.lcssa.i.i.i.i.i62207 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i62 to i64
  %i.eo = sub i64 %.0.lcssa.i.i.i.i.i62207, %i.c
  %diff.check208 = icmp ult i64 %i.eo, 32
  %or.cond248 = select i1 %min.iters.check210, i1 true, i1 %diff.check208
  br i1 %or.cond248, label %.lr.ph.i.i.i.i64.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec213 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.ep = shl i64 %n.vec213, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %2, i64 %i.ep
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.es = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.es ; 2 uses
  %next.gep217 = getelementptr i8, ptr %2, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <2 x i64>, ptr %next.gep217, align 8
  %wide.load219 = load <2 x i64>, ptr %i.et, align 8
  %i.eu = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x i64> %wide.load218, ptr %next.gep216, align 8
  store <2 x i64> %wide.load219, ptr %i.eu, align 8
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.ev, label %middle.block221, label %vector.body214, !llvm.loop !409

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.en, %n.vec213
  br i1 %cmp.n222, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64.preheader

.lr.ph.i.i.i.i64.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block221
  %.011.i.i.i.i65.ph = phi ptr [ %.0.lcssa.i.i.i.i.i62, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.eq, %middle.block221 ]
  %.0810.i.i.i.i66.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.er, %middle.block221 ]
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64.preheader, %.lr.ph.i.i.i.i64
  %.011.i.i.i.i65 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i64 ], [ %.011.i.i.i.i65.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %.0810.i.i.i.i66 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i64 ], [ %.0810.i.i.i.i66.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %i.ew = load i64, ptr %.0810.i.i.i.i66, align 8
  store i64 %i.ew, ptr %.011.i.i.i.i65, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i66, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.ex, %3
  br i1 %.not.i.i.i.i67, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64, !llvm.loop !410

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69: ; preds = %.lr.ph.i.i.i.i64, %middle.block221
  %.lcssa109 = phi ptr [ %i.eq, %middle.block221 ], [ %i.ey, %.lr.ph.i.i.i.i64 ] ; 5 uses
  %i.ez = icmp eq ptr %1, %i.i
  br i1 %i.ez, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.lcssa109226 = ptrtoaddr ptr %.lcssa109 to i64
  %i.fa = add i64 %i.k, -8
  %i.fb = sub i64 %i.fa, %i.a                     ; 2 uses
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fb, 56
  %i.fe = sub i64 %.lcssa109226, %i.a
  %diff.check227 = icmp ult i64 %i.fe, 32
  %or.cond249 = select i1 %min.iters.check229, i1 true, i1 %diff.check227
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i70.preheader250, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec232 = and i64 %i.fd, 4611686018427387900  ; 3 uses
  %i.ff = shl i64 %n.vec232, 3                    ; 2 uses
  %i.fg = getelementptr i8, ptr %.lcssa109, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %1, i64 %i.ff
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.fi = shl i64 %index234, 3                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.lcssa109, i64 %i.fi ; 2 uses
  %next.gep236 = getelementptr i8, ptr %1, i64 %i.fi ; 2 uses
  %i.fj = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load237 = load <2 x i64>, ptr %next.gep236, align 8
  %wide.load238 = load <2 x i64>, ptr %i.fj, align 8
  %i.fk = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x i64> %wide.load237, ptr %next.gep235, align 8
  store <2 x i64> %wide.load238, ptr %i.fk, align 8
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.fl, label %middle.block240, label %vector.body233, !llvm.loop !411

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.fd, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader250

.lr.ph.i.i.i.i.i70.preheader250:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block240
  %.08.i.i.i.i.i71.ph = phi ptr [ %.lcssa109, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fg, %middle.block240 ]
  %.sroa.04.07.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fh, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader250, %.lr.ph.i.i.i.i.i70
  %.08.i.i.i.i.i71 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i70 ], [ %.08.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i72 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.04.07.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %i.fm = load i64, ptr %.sroa.04.07.i.i.i.i.i72, align 8
  store i64 %i.fm, ptr %.08.i.i.i.i.i71, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i72, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i71, i64 8 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.i
  br i1 %i.fp, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !412

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block240, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa109, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_5ValueEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69 ], [ %i.fg, %middle.block240 ], [ %i.fo, %.lr.ph.i.i.i.i.i70 ]
  %.not.i75 = icmp eq ptr %i.dh, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74
  %i.fq = load ptr, ptr %i.f, align 8
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.fs) #33
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, %bb.k
  store ptr %i.dt, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.h, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dq
  store ptr %i.ft, ptr %i.f, align 8
  br label %_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

_ZSt4copyIPKN2v85LocalINS0_5ValueEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i54, %.lr.ph.i.i.i.i.i47, %middle.block146, %middle.block183, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_5ValueEEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_insert_uniqueIS8_EES6_ISt17_Rb_tree_iteratorIS8_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %1, align 8
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.o = sub i64 %i.g, %i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit: ; preds = %bb.b, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.q = phi i1 [ %i.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.b ]
  %i.r = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS8_EEEPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef %i.r, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit
  %.sroa.09.0 = phi ptr [ %i.r, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit ], [ %i.b, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8           ; 2 uses
end_hunk_6
