Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPURegBankLegalizeHelper?download=true
inline.NumInlined: 3340
inline.NumDeleted: 922
begin_hunk_0_@_ZN4llvm6AMDGPU21RegBankLegalizeHelper5lowerERNS_12MachineInstrERKNS0_17RegBankLLTMappingERNS0_13WaterfallInfoE:bb.a
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !197, !nonnull !181, !align !182 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !229
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !195 ; 2 uses
  %i.nl = icmp slt i32 %i.nk, 0
  br i1 %i.nl, label %bb.aj, label %_ZNK4llvm8TypeSizecvmEv.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.nm = and i32 %i.nk, 2147483647               ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 472
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !199
  %i.np = icmp ugt i32 %i.no, %i.nm
  br i1 %i.np, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit421, label %_ZNK4llvm8TypeSizecvmEv.exit.thread

_ZNK4llvm8TypeSizecvmEv.exit.thread:              ; preds = %bb.aj, %bb.ai
  store i64 0, ptr %62, align 8
  br label %bb.at

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit421: ; preds = %bb.aj
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ng, i64 464
  %i.nr = zext nneg i32 %i.nm to i64
  %i.ns = load ptr, ptr %i.nq, align 8, !tbaa !198
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nr
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !195
  %.fr813 = freeze i64 %i.nu                      ; 12 uses
  store i64 %.fr813, ptr %62, align 8
  %.mask.i.i = and i64 %.fr813, -1152921504606846976
  %i.nv = icmp eq i64 %.mask.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.nv, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit421
  %i.nw = lshr i64 %.fr813, 60
  %.off.i.i = add nsw i64 %i.nw, -1
  %switch.i.i = icmp ult i64 %.off.i.i, 3
  br i1 %switch.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread:       ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit421, %bb.ak
  %i.nx = icmp slt i64 %.fr813, -8070450532247928832
  %spec.select.i.i.i = or i1 %i.nx, %i.nv
  %i.ny = lshr i64 %.fr813, 44
  %i.nz = and i64 %i.ny, 65535
  %i.oa = lshr i64 %.fr813, 28
  %i.ob = and i64 %i.oa, 4294967295
  %i.oc = select i1 %spec.select.i.i.i, i64 %i.nz, i64 %i.ob
  br label %_ZNK4llvm8TypeSizecvmEv.exit

_ZNK4llvm3LLT13getSizeInBitsEv.exit:              ; preds = %bb.ak
  %i.od = lshr i64 %.fr813, 4
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.od, 65535
  %i.oe = icmp slt i64 %.fr813, -8070450532247928832
  %i.of = lshr i64 %.fr813, 44
  %i.og = and i64 %i.of, 65535
  %i.oh = lshr i64 %.fr813, 28
  %spec.select = select i1 %i.oe, i64 %i.og, i64 %i.oh
  %i.oi = mul nuw nsw i64 %spec.select, %.sroa.0.0.insert.ext.i.i.i
  %i.oj = and i64 %i.oi, 4294967295
  %i.ok = trunc i64 %.fr813 to i1
  br i1 %i.ok, label %bb.al, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.al:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.18) #18
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread, %_ZNK4llvm3LLT13getSizeInBitsEv.exit
  %.sroa.05.0.i769 = phi i64 [ %i.oc, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread ], [ %i.oj, %_ZNK4llvm3LLT13getSizeInBitsEv.exit ] ; 2 uses
  %i.ol = trunc nuw i64 %.sroa.05.0.i769 to i32
  %i.om = icmp samesign ugt i64 %.sroa.05.0.i769, 128
  br i1 %i.om, label %bb.am, label %bb.at

bb.am:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.on = lshr i64 %.fr813, 60
  %i.oo = add nsw i64 %i.on, -5
  %switch.selectcmp.i = icmp ult i64 %i.oo, 4
  br i1 %switch.selectcmp.i, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #17
  %i.op = call i64 @_ZNK4llvm3LLT14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %62)
  store i64 %i.op, ptr %63, align 8
  %i.oq = call { i64, i8 } @_ZNK4llvm3LLT13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(8) %63) ; 2 uses
  %.fca.1.extract168 = extractvalue { i64, i8 } %i.oq, 1
  %i.or = trunc nuw i8 %.fca.1.extract168 to i1
  br i1 %i.or, label %bb.ao, label %_ZNK4llvm8TypeSizecvmEv.exit422

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.18) #18
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit422:                  ; preds = %bb.an
  %.fca.0.extract167 = extractvalue { i64, i8 } %i.oq, 0
  %i.os = udiv i64 128, %.fca.0.extract167
  %.sroa.0166.0.copyload = load i64, ptr %63, align 8, !tbaa !195
  %i.ot = call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %i.os, i64 %.sroa.0166.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.ou = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !193, !range !194, !noundef !181
  %i.ov = trunc nuw i8 %i.ou to i1
  %.sroa.0.0.i = select i1 %i.ov, i64 2305843043573432320, i64 1152921538966585344
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNK4llvm8TypeSizecvmEv.exit422
  %.sroa.0581.0 = phi i64 [ %i.ot, %_ZNK4llvm8TypeSizecvmEv.exit422 ], [ %.sroa.0.0.i, %bb.ap ] ; 6 uses
  %i.ow = lshr i32 %i.ol, 7
  switch i32 %i.ow, label %.critedge405 [
    i32 2, label %bb.ar
    i32 4, label %bb.as
  ]

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #17
  store i64 %.sroa.0581.0, ptr %64, align 8, !tbaa !195
  %i.ox = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %.sroa.0581.0, ptr %i.ox, align 8, !tbaa !195
  %i.oy = call noundef zeroext i1 @_ZN4llvm6AMDGPU21RegBankLegalizeHelper9splitLoadERNS_12MachineInstrENS_8ArrayRefINS_3LLTEEES5_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nonnull %64, i64 2, i64 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  br label %bb.ba

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #17
  store i64 %.sroa.0581.0, ptr %65, align 8, !tbaa !195
  %i.oz = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i64 %.sroa.0581.0, ptr %i.oz, align 8, !tbaa !195
  %i.pa = getelementptr inbounds nuw i8, ptr %65, i64 16
  store i64 %.sroa.0581.0, ptr %i.pa, align 8, !tbaa !195
  %i.pb = getelementptr inbounds nuw i8, ptr %65, i64 24
  store i64 %.sroa.0581.0, ptr %i.pb, align 8, !tbaa !195
  %i.pc = call noundef zeroext i1 @_ZN4llvm6AMDGPU21RegBankLegalizeHelper9splitLoadERNS_12MachineInstrENS_8ArrayRefINS_3LLTEEES5_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nonnull %65, i64 4, i64 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #17
  br label %bb.ba

.critedge405:                                     ; preds = %bb.aq
  %i.pd = load ptr, ptr %0, align 8, !tbaa !196, !nonnull !181, !align !182
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZN4llvm18reportGISelFailureERNS_15MachineFunctionERNS_32MachineOptimizationRemarkEmitterEPKcNS_9StringRefERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065) %i.pd, ptr noundef nonnull align 8 dereferenceable(16) %i.pe, ptr noundef nonnull @.str, ptr nonnull @.str.11, i64 50, ptr noundef nonnull align 8 dereferenceable(80) %1) #17
  br label %bb.ba

bb.at:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.thread, %_ZNK4llvm8TypeSizecvmEv.exit
  %i.pf = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4llvm6AMDGPU21RegBankLegalizeHelper3S96E)
  br i1 %i.pf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #17
  store i64 1152921521786716160, ptr %66, align 8, !tbaa !195
  %i.pg = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 1152921513196781568, ptr %i.pg, align 8, !tbaa !195
  %i.ph = call noundef zeroext i1 @_ZN4llvm6AMDGPU21RegBankLegalizeHelper9splitLoadERNS_12MachineInstrENS_8ArrayRefINS_3LLTEEES5_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nonnull %66, i64 2, i64 1152921513196781568) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %i.pi = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4llvm6AMDGPU21RegBankLegalizeHelper5V3S32E)
  br i1 %i.pi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #17
  store i64 5764607531624169504, ptr %67, align 8, !tbaa !195
  %i.pj = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 1152921513196781568, ptr %i.pj, align 8, !tbaa !195
  %i.pk = call noundef zeroext i1 @_ZN4llvm6AMDGPU21RegBankLegalizeHelper9splitLoadERNS_12MachineInstrENS_8ArrayRefINS_3LLTEEES5_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nonnull %67, i64 2, i64 1152921513196781568) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.pl = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4llvm6AMDGPU21RegBankLegalizeHelper5V6S16E)
  br i1 %i.pl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #17
  store i64 5764607527329202240, ptr %68, align 8, !tbaa !195
  %i.pm = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 5764607527329202208, ptr %i.pm, align 8, !tbaa !195
  %i.pn = call noundef zeroext i1 @_ZN4llvm6AMDGPU21RegBankLegalizeHelper9splitLoadERNS_12MachineInstrENS_8ArrayRefINS_3LLTEEES5_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nonnull %68, i64 2, i64 5764607527329202208) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.po = load ptr, ptr %0, align 8, !tbaa !196, !nonnull !181, !align !182
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZN4llvm18reportGISelFailureERNS_15MachineFunctionERNS_32MachineOptimizationRemarkEmitterEPKcNS_9StringRefERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065) %i.po, ptr noundef nonnull align 8 dereferenceable(16) %i.pp, ptr noundef nonnull @.str, ptr nonnull @.str.11, i64 50, ptr noundef nonnull align 8 dereferenceable(80) %1) #17
  br label %bb.ba

bb.ba:                                            ; preds = %bb.as, %bb.ar, %bb.aw, %bb.ay, %bb.au, %.critedge405, %bb.az
  %.2 = phi i1 [ false, %bb.az ], [ false, %.critedge405 ], [ true, %bb.aw ], [ true, %bb.au ], [ true, %bb.ay ], [ true, %bb.ar ], [ true, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  br label %.loopexit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.a
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !249, !nonnull !181, !align !182
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !229 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !195 ; 5 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 36
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !195 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 80
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !195 ; 2 uses
  %.not.i = icmp eq i64 %i.pz, 0
  %102 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.pz, i1 false)
  %103 = trunc nuw nsw i64 %102 to i8
  %104 = sub nuw nsw i8 63, %103
  %.sroa.0.0.i425 = select i1 %.not.i, i8 0, i8 %104 ; 2 uses
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %106 = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182 ; 2 uses
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %108 = load ptr, ptr %107, align 8, !tbaa !224
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %110 = load ptr, ptr %109, align 8, !tbaa !225
  %i.qa = getelementptr inbounds nuw i8, ptr %106, i64 64
  store ptr %108, ptr %i.qa, align 8, !tbaa !226
  %i.qb = getelementptr inbounds nuw i8, ptr %106, i64 72
  store ptr %110, ptr %i.qb, align 8
  %i.qc = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #17 ; 0 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !197, !nonnull !181, !align !182 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 48
  %i.qg = and i32 %i.px, 2147483647
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = load ptr, ptr %i.qf, align 8, !tbaa !198
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %i.qh
  %.0.copyload.i.i.i.i.i.i426 = load i64, ptr %i.qj, align 8
  %i.qk = and i64 %.0.copyload.i.i.i.i.i.i426, -5
  %i.ql = inttoptr i64 %i.qk to ptr
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !190
  %.not403 = icmp eq ptr %i.qn, %i.ql
  br i1 %.not403, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.qo = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #17
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qq = load <2 x i64>, ptr %i.qp, align 8
  store <2 x i64> %i.qq, ptr %69, align 16
  %i.qr = getelementptr inbounds nuw i8, ptr %69, i64 16
  store i32 3, ptr %i.qr, align 16, !tbaa !233
  %i.qs = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder14buildIntrinsicEjNS_8ArrayRefINS_5DstOpEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.qo, i32 noundef 3672, ptr nonnull %69, i64 1) #17 ; 2 uses
  %i.qt = extractvalue { ptr, ptr } %i.qs, 0      ; 2 uses
  %i.qu = extractvalue { ptr, ptr } %i.qs, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.qv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.qv, align 8, !tbaa !251, !alias.scope !505
  %i.qw = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.px, ptr %i.qw, align 4, !tbaa !195, !alias.scope !505
  %i.qx = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qx, i8 0, i64 16, i1 false), !alias.scope !505
  store i32 0, ptr %14, align 8, !alias.scope !505
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qu, ptr noundef nonnull align 8 dereferenceable(1065) %i.qt, ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store i32 1, ptr %13, align 8, !alias.scope !506
  %i.qy = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qy, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qu, ptr noundef nonnull align 8 dereferenceable(1065) %i.qt, ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #17
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !229
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !195
  %.pre838 = load ptr, ptr %i.qd, align 8, !tbaa !197
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.rd = phi ptr [ %.pre838, %bb.bb ], [ %i.qe, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %.sroa.0143.0 = phi i32 [ %i.rc, %bb.bb ], [ %i.px, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 3 uses
  %i.re = icmp slt i32 %i.pv, 0
  br i1 %i.re, label %bb.bd, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit429

bb.bd:                                            ; preds = %bb.bc
  %i.rf = and i32 %i.pv, 2147483647               ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 472
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !199
  %i.ri = icmp ugt i32 %i.rh, %i.rf
  br i1 %i.ri, label %bb.be, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit429

bb.be:                                            ; preds = %bb.bd
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 464
  %i.rk = zext nneg i32 %i.rf to i64
  %i.rl = load ptr, ptr %i.rj, align 8, !tbaa !198
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.rk
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !195
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit429

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit429: ; preds = %bb.bc, %bb.bd, %bb.be
  %.sroa.04.0.i428 = phi i64 [ %i.rn, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bc ] ; 3 uses
  %i.ro = load ptr, ptr %0, align 8, !tbaa !196, !nonnull !181, !align !182
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !158
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 160
  %.sroa.0.0.copyload.i430 = load i32, ptr %i.rr, align 8, !tbaa !209 ; 3 uses
  %i.rs = load ptr, ptr %i.pq, align 8, !tbaa !249, !nonnull !181, !align !182 ; 6 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 663
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !507, !range !194, !noundef !181
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread, label %bb.bf

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread: ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit429
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 384
  %i.rx = load i8, ptr %i.rw, align 8, !tbaa !187
  %i.ry = sext i8 %i.rx to i32
  br label %bb.bh

bb.bf:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit429
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rs, i64 643
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !508, !range !194, !noundef !181
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread778

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread778: ; preds = %bb.bf
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rs, i64 384
  %i.sd = load i8, ptr %i.sc, align 8, !tbaa !187
  %i.se = sext i8 %i.sd to i32
  br label %bb.bg

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit: ; preds = %bb.bf
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rs, i64 742
  %i.sg = load i8, ptr %i.sf, align 2, !tbaa !509, !range !194, !noundef !181
  %i.sh = trunc nuw i8 %i.sg to i1
  %i.si = getelementptr inbounds nuw i8, ptr %i.rs, i64 384
  %i.sj = load i8, ptr %i.si, align 8, !tbaa !187
  %i.sk = sext i8 %i.sj to i32                    ; 2 uses
  br i1 %i.sh, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread778, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit
  %i.sl = phi i32 [ %i.se, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread778 ], [ %i.sk, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit ] ; 2 uses
  %i.sm = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #17
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.so = load <2 x i64>, ptr %i.sn, align 8
  store <2 x i64> %i.so, ptr %70, align 16
  %i.sp = getelementptr inbounds nuw i8, ptr %70, i64 16
  store i32 3, ptr %i.sp, align 16, !tbaa !233
  %i.sq = zext i32 %i.sl to i64
  %i.sr = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.sm, ptr noundef nonnull align 8 dereferenceable(20) %70, i64 noundef %i.sq) #17 ; 2 uses
  %i.ss = extractvalue { ptr, ptr } %i.sr, 0
  %i.st = extractvalue { ptr, ptr } %i.sr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #17
  %i.su = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.sv = load <2 x i64>, ptr %i.sn, align 8
  store <2 x i64> %i.sv, ptr %11, align 16
  %.sroa.5545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 3, ptr %.sroa.5545.0..sroa_idx, align 16, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i32 %.sroa.0143.0, ptr %12, align 8
  %.sroa.4541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %.sroa.4541.0..sroa_idx, align 8, !tbaa !246
  %i.sw = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.ss, ptr %i.sw, align 8
  %.sroa.0536.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.st, ptr %.sroa.0536.sroa.4.0..sroa_idx, align 8, !tbaa !195
  %.sroa.4537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 1, ptr %.sroa.4537.0..sroa_idx, align 8, !tbaa !246
  %i.sx = load ptr, ptr %i.su, align 8, !tbaa !238
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = call { ptr, ptr } %i.sz(ptr noundef nonnull align 8 dereferenceable(96) %i.su, i32 noundef 155, ptr nonnull %11, i64 1, ptr nonnull %12, i64 2, i64 0) #17, !inline_history !5
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.tb = extractvalue { ptr, ptr } %i.ta, 1
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 32
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !229
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !195
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread, %bb.bg, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit
  %i.tg = phi i32 [ %i.sk, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit ], [ %i.sl, %bb.bg ], [ %i.ry, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread ]
  %i.th = phi i1 [ true, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit ], [ false, %bb.bg ], [ true, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread ]
  %.sroa.0120.0 = phi i32 [ %.sroa.0143.0, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit ], [ %i.tf, %bb.bg ], [ %.sroa.0143.0, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread ]
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pr, i64 520220
  %.sroa.0.0.copyload.i433 = load i8, ptr %i.ti, align 4, !tbaa !195
  %i.tj = icmp ugt i8 %.sroa.0.0.i425, %.sroa.0.0.copyload.i433
  br i1 %i.tj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.tk = zext nneg i8 %.sroa.0.0.i425 to i64
  %i.tl = shl nuw i64 1, %i.tk
  %i.tm = zext i32 %i.tg to i64
  %i.tn = select i1 %i.th, i64 0, i64 %i.tm
  %i.to = shl i64 %i.tl, %i.tn                    ; 2 uses
  %i.tp = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #17
  %i.tq = load ptr, ptr %i.qm, align 8, !tbaa !190
  %i.tr = ptrtoint ptr %i.tq to i64
  %i.ts = or i64 %i.tr, 4
  store i64 %i.ts, ptr %71, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 %.sroa.04.0.i428, ptr %i.tt, align 8, !tbaa !195
  %i.tu = getelementptr inbounds nuw i8, ptr %71, i64 16
  store i32 3, ptr %i.tu, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #17
  store i32 %.sroa.0.0.copyload.i430, ptr %72, align 8, !tbaa !209
  %i.tv = getelementptr inbounds nuw i8, ptr %72, i64 16
  store i32 0, ptr %i.tv, align 8, !tbaa !236
  %i.tw = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.tp, ptr noundef nonnull align 8 dereferenceable(20) %71, ptr noundef nonnull align 8 dereferenceable(20) %72) #17 ; 2 uses
  %i.tx = extractvalue { ptr, ptr } %i.tw, 0
  %i.ty = extractvalue { ptr, ptr } %i.tw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #17
  %i.tz = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #17
  %i.ua = load ptr, ptr %i.qm, align 8, !tbaa !190
  %i.ub = ptrtoint ptr %i.ua to i64
  %i.uc = or i64 %i.ub, 4
  store i64 %i.uc, ptr %73, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 %.sroa.04.0.i428, ptr %i.ud, align 8, !tbaa !195
  %i.ue = getelementptr inbounds nuw i8, ptr %73, i64 16
  store i32 3, ptr %i.ue, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #17
  store ptr %i.tx, ptr %74, align 8, !tbaa !40
  %.sroa.4532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %74, i64 8
  store ptr %i.ty, ptr %.sroa.4532.0..sroa_idx, align 8, !tbaa !240
  %i.uf = getelementptr inbounds nuw i8, ptr %74, i64 16
  store i32 1, ptr %i.uf, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #17
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.uh = load <2 x i64>, ptr %i.ug, align 8
  store <2 x i64> %i.uh, ptr %76, align 16
  %i.ui = getelementptr inbounds nuw i8, ptr %76, i64 16
  store i32 3, ptr %i.ui, align 16, !tbaa !233
  %i.uj = add i64 %i.to, -1
  %i.uk = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.tz, ptr noundef nonnull align 8 dereferenceable(20) %76, i64 noundef %i.uj) #17 ; 2 uses
  %i.ul = extractvalue { ptr, ptr } %i.uk, 0
  %i.um = extractvalue { ptr, ptr } %i.uk, 1
  store ptr %i.ul, ptr %75, align 8, !tbaa !40
  %.sroa.4526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %75, i64 8
  store ptr %i.um, ptr %.sroa.4526.0..sroa_idx, align 8, !tbaa !240
  %i.un = getelementptr inbounds nuw i8, ptr %75, i64 16
  store i32 1, ptr %i.un, align 8, !tbaa !236
  %i.uo = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11buildPtrAddERKNS_5DstOpERKNS_5SrcOpES6_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.tz, ptr noundef nonnull align 8 dereferenceable(20) %73, ptr noundef nonnull align 8 dereferenceable(20) %74, ptr noundef nonnull align 8 dereferenceable(20) %75, i64 0) #17 ; 2 uses
  %i.up = extractvalue { ptr, ptr } %i.uo, 0
  %i.uq = extractvalue { ptr, ptr } %i.uo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #17
  %i.ur = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.to, i1 false) ; 2 uses
  %i.us = icmp eq i64 %i.ur, 63
  %i.ut = ashr exact i64 -9223372036854775808, %i.ur
  %i.uu = select i1 %i.us, i64 -1, i64 %i.ut
  %i.uv = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #17
  %i.uw = load <2 x i64>, ptr %i.ug, align 8
  store <2 x i64> %i.uw, ptr %77, align 16
  %i.ux = getelementptr inbounds nuw i8, ptr %77, i64 16
  store i32 3, ptr %i.ux, align 16, !tbaa !233
  %i.uy = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.uv, ptr noundef nonnull align 8 dereferenceable(20) %77, i64 noundef %i.uu) #17 ; 2 uses
  %i.uz = extractvalue { ptr, ptr } %i.uy, 0
  %i.va = extractvalue { ptr, ptr } %i.uy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i32 %i.pv, ptr %9, align 8
  %.sroa.4520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 1, ptr %.sroa.4520.0..sroa_idx, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr %i.up, ptr %10, align 8
  %.sroa.0515.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.uq, ptr %.sroa.0515.sroa.4.0..sroa_idx, align 8, !tbaa !195
  %.sroa.4516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 1, ptr %.sroa.4516.0..sroa_idx, align 8, !tbaa !246
  %i.vb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.uz, ptr %i.vb, align 8
  %.sroa.4513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.va, ptr %.sroa.4513.0..sroa_idx, align 8, !tbaa !195
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !246
  %i.vc = load ptr, ptr %i.uv, align 8, !tbaa !238
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 32
  %i.ve = load ptr, ptr %i.vd, align 8
  %i.vf = call { ptr, ptr } %i.ve(ptr noundef nonnull align 8 dereferenceable(96) %i.uv, i32 noundef 241, ptr nonnull %9, i64 1, ptr nonnull %10, i64 2, i64 0) #17, !inline_history !491 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #17
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.vg = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #17
  store i32 %i.pv, ptr %78, align 8, !tbaa !209
  %i.vh = getelementptr inbounds nuw i8, ptr %78, i64 16
  store i32 1, ptr %i.vh, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #17
  store i32 %.sroa.0.0.copyload.i430, ptr %79, align 8, !tbaa !209
  %i.vi = getelementptr inbounds nuw i8, ptr %79, i64 16
  store i32 0, ptr %i.vi, align 8, !tbaa !236
  %i.vj = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.vg, ptr noundef nonnull align 8 dereferenceable(20) %78, ptr noundef nonnull align 8 dereferenceable(20) %79) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #17
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.vk = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #17
  %i.vl = load ptr, ptr %i.qm, align 8, !tbaa !190
  %i.vm = ptrtoint ptr %i.vl to i64
  %i.vn = or i64 %i.vm, 4
  store i64 %i.vn, ptr %80, align 8
  %i.vo = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 %.sroa.04.0.i428, ptr %i.vo, align 8, !tbaa !195
  %i.vp = getelementptr inbounds nuw i8, ptr %80, i64 16
  store i32 3, ptr %i.vp, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #17
  store i32 %i.pv, ptr %81, align 8, !tbaa !209
  %i.vq = getelementptr inbounds nuw i8, ptr %81, i64 16
  store i32 0, ptr %i.vq, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #17
  store i32 %.sroa.0120.0, ptr %82, align 8, !tbaa !209
  %i.vr = getelementptr inbounds nuw i8, ptr %82, i64 16
  store i32 0, ptr %i.vr, align 8, !tbaa !236
  %i.vs = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11buildPtrAddERKNS_5DstOpERKNS_5SrcOpES6_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(96) %i.vk, ptr noundef nonnull align 8 dereferenceable(20) %80, ptr noundef nonnull align 8 dereferenceable(20) %81, ptr noundef nonnull align 8 dereferenceable(20) %82, i64 0) #17 ; 2 uses
  %i.vt = extractvalue { ptr, ptr } %i.vs, 0
  %i.vu = extractvalue { ptr, ptr } %i.vs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #17
  %i.vv = load ptr, ptr %105, align 8, !tbaa !210, !nonnull !181, !align !182
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #17
  store i32 %.sroa.0.0.copyload.i430, ptr %83, align 8, !tbaa !209
  %i.vw = getelementptr inbounds nuw i8, ptr %83, i64 16
  store i32 1, ptr %i.vw, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #17
  store ptr %i.vt, ptr %84, align 8, !tbaa !40
  %.sroa.4509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %84, i64 8
  store ptr %i.vu, ptr %.sroa.4509.0..sroa_idx, align 8, !tbaa !240
  %i.vx = getelementptr inbounds nuw i8, ptr %84, i64 16
  store i32 1, ptr %i.vx, align 8, !tbaa !236
  %i.vy = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.vv, ptr noundef nonnull align 8 dereferenceable(20) %83, ptr noundef nonnull align 8 dereferenceable(20) %84) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #17
  br label %.loopexit

bb.bl:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #17
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !197, !nonnull !181, !align !182 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !229
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !195 ; 2 uses
  %i.wf = icmp slt i32 %i.we, 0
  br i1 %i.wf, label %bb.bm, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit437

bb.bm:                                            ; preds = %bb.bl
  %i.wg = and i32 %i.we, 2147483647               ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wa, i64 472
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !199
  %i.wj = icmp ugt i32 %i.wi, %i.wg
  br i1 %i.wj, label %bb.bn, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit437

bb.bn:                                            ; preds = %bb.bm
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wa, i64 464
  %i.wl = zext nneg i32 %i.wg to i64
  %i.wm = load ptr, ptr %i.wk, align 8, !tbaa !198
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.wl
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !195
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit437

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit437: ; preds = %bb.bl, %bb.bm, %bb.bn
  %.sroa.04.0.i436 = phi i64 [ %i.wo, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bl ]
  store i64 %.sroa.04.0.i436, ptr %85, align 8
  %i.wp = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4llvm6AMDGPU21RegBankLegalizeHelper3S96E)
  br i1 %i.wp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit437
  %i.wq = call noundef zeroext i1 @_ZN4llvm6AMDGPU21RegBankLegalizeHelper9widenLoadERNS_12MachineInstrENS_3LLTES4_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 1152921538966585344, i64 0) ; 0 uses
  br label %bb.bu

bb.bp:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit437
  %i.wr = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4llvm6AMDGPU21RegBankLegalizeHelper5V3S32E)
  br i1 %i.wr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ws = call noundef zeroext i1 @_ZN4llvm6AMDGPU21RegBankLegalizeHelper9widenLoadERNS_12MachineInstrENS_3LLTES4_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 5764607531624169536, i64 1152921513196781568) ; 0 uses
  br label %bb.bu

bb.br:                                            ; preds = %bb.bp
  %i.wt = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4llvm6AMDGPU21RegBankLegalizeHelper5V6S16E)
  br i1 %i.wt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.wu = call noundef zeroext i1 @_ZN4llvm6AMDGPU21RegBankLegalizeHelper9widenLoadERNS_12MachineInstrENS_3LLTES4_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 5764607527329202304, i64 5764607527329202208) ; 0 uses
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.wv = load ptr, ptr %0, align 8, !tbaa !196, !nonnull !181, !align !182
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZN4llvm18reportGISelFailureERNS_15MachineFunctionERNS_32MachineOptimizationRemarkEmitterEPKcNS_9StringRefERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065) %i.wv, ptr noundef nonnull align 8 dereferenceable(16) %i.ww, ptr noundef nonnull @.str, ptr nonnull @.str.12, i64 50, ptr noundef nonnull align 8 dereferenceable(80) %1) #17
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bo, %bb.bs, %bb.bq, %bb.bt
  %.3 = phi i1 [ false, %bb.bt ], [ true, %bb.bq ], [ true, %bb.bs ], [ true, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #17
  br label %.loopexit

bb.bv:                                            ; preds = %bb.a
  %i.wx = tail call noundef zeroext i1 @_ZN4llvm6AMDGPU21RegBankLegalizeHelper15lowerUnpackAExtERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) ; 0 uses
  br label %.loopexit

bb.bw:                                            ; preds = %bb.a
  %i.wy = tail call noundef zeroext i1 @_ZNK4llvm6AMDGPU21RegBankLegalizeHelper13widenMMOToS32ERNS_8GAnyLoadE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) ; 0 uses
  br label %.loopexit

bb.bx:                                            ; preds = %bb.a
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !210, !nonnull !181, !align !182 ; 2 uses
  tail call void @_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(96) %i.xa, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 32
  %i.xd = load i64, ptr %i.xb, align 8, !tbaa !414
  store i64 %i.xd, ptr %i.xc, align 8, !tbaa !414
  %i.xe = tail call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #17
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !510
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 11
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !512
  %i.xj = zext i8 %i.xi to i32
  %i.xk = add i32 %i.xe, %i.xj                    ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.xm = load i24, ptr %i.xl, align 8            ; 2 uses
  %i.xn = zext i24 %i.xm to i32
  %i.xo = icmp ult i32 %i.xk, %i.xn
  br i1 %i.xo, label %.lr.ph827, label %.loopexit

.lr.ph827:                                        ; preds = %bb.bx
  %i.xp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.xs = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.xt = getelementptr inbounds nuw i8, ptr %86, i64 16
  %i.xu = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.xv = zext nneg i32 %i.xk to i64
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph827, %bb.cd
  %i.xw = phi i24 [ %i.xm, %.lr.ph827 ], [ %i.ze, %bb.cd ] ; 2 uses
  %indvars.iv835 = phi i64 [ %i.xv, %.lr.ph827 ], [ %indvars.iv.next836, %bb.cd ] ; 2 uses
  %i.xx = load ptr, ptr %i.xp, align 8, !tbaa !229
  %i.xy = getelementptr inbounds nuw [32 x i8], ptr %i.xx, i64 %indvars.iv835 ; 3 uses
  %i.xz = load i32, ptr %i.xy, align 8
  %i.ya = and i32 %i.xz, 255
  %i.yb = icmp eq i32 %i.ya, 0
  br i1 %i.yb, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !195 ; 3 uses
  %i.ye = load ptr, ptr %i.xq, align 8, !tbaa !197, !nonnull !181, !align !182 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 48
  %i.yg = and i32 %i.yd, 2147483647               ; 2 uses
  %i.yh = zext nneg i32 %i.yg to i64              ; 2 uses
  %i.yi = load ptr, ptr %i.yf, align 8, !tbaa !198
  %i.yj = getelementptr inbounds nuw [16 x i8], ptr %i.yi, i64 %i.yh
  %.0.copyload.i.i.i.i.i.i439 = load i64, ptr %i.yj, align 8
  %i.yk = and i64 %.0.copyload.i.i.i.i.i.i439, -5
  %i.yl = inttoptr i64 %i.yk to ptr
  %i.ym = load ptr, ptr %i.xr, align 8, !tbaa !191 ; 2 uses
  %.not402 = icmp eq ptr %i.ym, %i.yl
  br i1 %.not402, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.yn = load ptr, ptr %i.wz, align 8, !tbaa !210, !nonnull !181, !align !182
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #17
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = or i64 %i.yo, 4
  %i.yq = icmp slt i32 %i.yd, 0
  br i1 %i.yq, label %bb.cb, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit441

bb.cb:                                            ; preds = %bb.ca
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ye, i64 472
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !199
  %i.yt = icmp ugt i32 %i.ys, %i.yg
  br i1 %i.yt, label %bb.cc, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit441

bb.cc:                                            ; preds = %bb.cb
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ye, i64 464
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !198
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.yh
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !195
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit441

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit441: ; preds = %bb.ca, %bb.cb, %bb.cc
  %.sroa.04.0.i440 = phi i64 [ %i.yx, %bb.cc ], [ 0, %bb.cb ], [ 0, %bb.ca ]
  store i64 %i.yp, ptr %86, align 8
  store i64 %.sroa.04.0.i440, ptr %i.xs, align 8, !tbaa !195
  store i32 3, ptr %i.xt, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #17
  store i32 %i.yd, ptr %87, align 8, !tbaa !209
  store i32 0, ptr %i.xu, align 8, !tbaa !236
  %i.yy = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.yn, ptr noundef nonnull align 8 dereferenceable(20) %86, ptr noundef nonnull align 8 dereferenceable(20) %87) #17
  %i.yz = extractvalue { ptr, ptr } %i.yy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #17
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !229
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !195
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.xy, i32 %i.zd) #17
  %.pre = load i24, ptr %i.xl, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bz, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit441, %bb.by
  %i.ze = phi i24 [ %i.xw, %bb.bz ], [ %.pre, %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit441 ], [ %i.xw, %bb.by ] ; 2 uses
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 1 ; 2 uses
  %i.zf = zext i24 %i.ze to i64
  %i.zg = icmp samesign ult i64 %indvars.iv.next836, %i.zf
  br i1 %i.zg, label %bb.by, label %.loopexit, !llvm.loop !492

bb.ce:                                            ; preds = %bb.a
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !243
  %i.zj = icmp eq i32 %i.zi, 80
  %spec.select.i.i442 = select i1 %i.zj, ptr %1, ptr null ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #17
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !197, !nonnull !181, !align !182 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %spec.select.i.i442, i64 40 ; 2 uses
end_hunk_0
