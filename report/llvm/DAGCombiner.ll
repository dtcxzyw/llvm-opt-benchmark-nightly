Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30676
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN12_GLOBAL__N_111DAGCombiner9visitLOADEPN4llvm6SDNodeE:bb.a
  br i1 %.not436.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread.i

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread.i: ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.i, %bb.by
  %.sroa.292.0.copyload.i = load ptr, ptr %i.ft, align 8, !tbaa !216 ; 3 uses
  %i.ms = load i16, ptr %49, align 8, !tbaa !387  ; 10 uses
  %.not.i311.i = icmp ne i16 %i.ms, %.val236.i
  %i.mt = load ptr, ptr %i.fv, align 8            ; 3 uses
  %i.mu = icmp ne ptr %i.mt, %.sroa.292.0.copyload.i
  %i.mv = select i1 %.not.i311.i, i1 true, i1 %i.mu
  br i1 %i.mv, label %bb.ca, label %bb.db

bb.ca:                                            ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread.i
  %i.mw = icmp eq i64 %.fca.0.extract166.i, %.fca.0.extract162.i
  %i.mx = icmp eq i8 %.fca.1.extract167.i, %.fca.1.extract163.i
  %i.my = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %i.my, label %bb.cb, label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i.i312.i = icmp eq i16 %.val236.i, 1
  %i.mz = icmp eq ptr %.sroa.292.0.copyload.i, null
  %.not4.i.i313.i = select i1 %.not.i.i.i312.i, i1 %i.mz, i1 false
  br i1 %.not4.i.i313.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit319.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not.i.i314.i = icmp eq i16 %.val236.i, 0
  br i1 %.not.i.i314.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i315.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i315.i: ; preds = %bb.cc
  %i.na = getelementptr inbounds nuw i8, ptr %.val234.i, i64 112
  %i.nb = zext i16 %.val236.i to i64              ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.nb
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !398
  %.not.i316.not.i = icmp eq ptr %i.nd, null
  br i1 %.not.i316.not.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit319.i

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit319.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i315.i, %bb.cb
  %.pre-phi.i318.i = phi i64 [ %i.nb, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i315.i ], [ 1, %bb.cb ]
  %i.ne = getelementptr inbounds nuw [537 x i8], ptr %.val234.i, i64 %.pre-phi.i318.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 6432
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !400
  %i.nh = icmp eq i8 %i.ng, 0
  br i1 %i.nh, label %bb.cd, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i

bb.cd:                                            ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit319.i
  br i1 %i.mn, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit323.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit323.thread.i

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit323.i: ; preds = %bb.cd
  %i.ni = getelementptr inbounds nuw i8, ptr %.val234.i, i64 112
  %i.nj = zext i16 %.val236.i to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nj
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !398
  %.not439.i = icmp eq ptr %i.nl, null
  br i1 %.not439.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit323.thread.i

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit323.thread.i: ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit323.i, %bb.cd
  %.not.i.i.i324.i = icmp eq i16 %i.ms, 1
  %i.nm = icmp eq ptr %i.mt, null
  %.not4.i.i325.i = select i1 %.not.i.i.i324.i, i1 %i.nm, i1 false
  br i1 %.not4.i.i325.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit331.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit323.thread.i
  %.not.i.i326.i = icmp eq i16 %i.ms, 0
  br i1 %.not.i.i326.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i327.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i327.i: ; preds = %bb.ce
  %i.nn = getelementptr inbounds nuw i8, ptr %.val234.i, i64 112
  %i.no = zext i16 %i.ms to i64                   ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !398
  %.not.i328.not.i = icmp eq ptr %i.nq, null
  br i1 %.not.i328.not.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit331.i

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit331.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i327.i, %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit323.thread.i
  %.pre-phi.i330.i = phi i64 [ %i.no, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i327.i ], [ 1, %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit323.thread.i ]
  %i.nr = getelementptr inbounds nuw [537 x i8], ptr %.val234.i, i64 %.pre-phi.i330.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 6432
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !400
  %i.nu = icmp eq i8 %i.nt, 0
  br i1 %i.nu, label %bb.cf, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i

bb.cf:                                            ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit331.i
  br i1 %i.mn, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit335.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit335.thread.i

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit335.i: ; preds = %bb.cf
  %i.nv = getelementptr inbounds nuw i8, ptr %.val234.i, i64 112
  %i.nw = zext i16 %i.ms to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !398
  %.not440.i = icmp eq ptr %i.ny, null
  br i1 %.not440.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit335.thread.i

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit335.thread.i: ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit335.i, %bb.cf
  %i.nz = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.oa = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.ob = inttoptr i64 %i.oa to ptr
  %i.oc = load ptr, ptr %.val234.i, align 8, !tbaa !45
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 224
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = call noundef zeroext i1 %i.oe(ptr noundef nonnull align 8 dereferenceable(518435) %.val234.i, i16 %.val236.i, ptr %.sroa.292.0.copyload.i, i16 %i.ms, ptr %i.mt, ptr noundef nonnull align 8 dereferenceable(920) %i.nz, ptr noundef nonnull align 8 dereferenceable(88) %i.ob) #36, !inline_history !1565
  br i1 %i.of, label %bb.cg, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i

bb.cg:                                            ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit335.thread.i
  %i.og = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.072.0.copyload.i = load i16, ptr %48, align 8, !tbaa !214
  %.sroa.274.0.copyload.i = load ptr, ptr %i.ft, align 8, !tbaa !216
  %.sroa.069.0.copyload.i = load ptr, ptr %55, align 8
  %.sroa.270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %.sroa.270.0.copyload.i = load i32, ptr %.sroa.270.0..sroa_idx.i, align 8
  %i.oh = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.og, i16 %.sroa.072.0.copyload.i, ptr %.sroa.274.0.copyload.i, ptr %.sroa.069.0.copyload.i, i32 %.sroa.270.0.copyload.i) #36 ; 2 uses
  %.fca.0.extract65.i = extractvalue { ptr, i32 } %i.oh, 0
  %.fca.1.extract66.i = extractvalue { ptr, i32 } %i.oh, 1
  store ptr %.fca.0.extract65.i, ptr %55, align 8
  store i32 %.fca.1.extract66.i, ptr %.sroa.270.0..sroa_idx.i, align 8
  br label %bb.db

bb.ch:                                            ; preds = %bb.ca
  %.not.i336.i = icmp eq i16 %.val236.i, 0        ; 3 uses
  br i1 %.not.i336.i, label %_ZNK4llvm3EVT8isVectorEv.exit338.i, label %.split413.i

.split413.i:                                      ; preds = %bb.ch
  %i.oi = add i16 %.val236.i, -19
  %spec.select.i.i337.i = icmp ult i16 %i.oi, 197
  br i1 %spec.select.i.i337.i, label %bb.ci, label %bb.cw

_ZNK4llvm3EVT8isVectorEv.exit338.i:               ; preds = %bb.ch
  %i.oj = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #37
  br i1 %i.oj, label %bb.ci, label %bb.cw

bb.ci:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit338.i, %.split413.i
  br i1 %i.mn, label %bb.cj, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit342.thread.i

bb.cj:                                            ; preds = %bb.ci
  %.not.i.i341.i = icmp eq i16 %i.ms, 0
  br i1 %.not.i.i341.i, label %_ZNK4llvm3EVT8isVectorEv.exit364.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit342.i

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit342.i: ; preds = %bb.cj
  %i.ok = getelementptr inbounds nuw i8, ptr %.val234.i, i64 112
  %i.ol = zext i16 %i.ms to i64
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.ol
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !398
  %.not437.i = icmp eq ptr %i.on, null
  br i1 %.not437.i, label %.split428.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit342.thread.i

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit342.thread.i: ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit342.i, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #36
  br i1 %.not.i336.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit342.thread.i
  %i.oo = zext nneg i16 %.val236.i to i64
  %i.op = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.oo
  %i.oq = getelementptr i8, ptr %i.op, i64 -2
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !214
  %i.os = insertvalue { i16, ptr } poison, i16 %i.or, 0
  %i.ot = insertvalue { i16, ptr } %i.os, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i

bb.cl:                                            ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit342.thread.i
  %i.ou = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #36
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i

_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i:     ; preds = %bb.cl, %bb.ck
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.ot, %bb.ck ], [ %i.ou, %bb.cl ] ; 2 uses
  %i.ov = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 4 uses
  store i16 %i.ov, ptr %59, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ox = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1 ; 2 uses
  store ptr %i.ox, ptr %i.ow, align 8
  %.not.i344.i = icmp eq i16 %i.ov, 0
  br i1 %.not.i344.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i
  %i.oy = zext i16 %i.ov to i64
  %i.oz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.oy ; 2 uses
  %i.pa = getelementptr i8, ptr %i.oz, i64 -16
  %.sroa.0.0.copyload.i.i345.i = load i64, ptr %i.pa, align 16
  %.sroa.2.0..sroa_idx.i.i346.i = getelementptr i8, ptr %i.oz, i64 -8
  %.sroa.2.0.copyload.i.i347.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i346.i, align 8
  %.fca.0.insert.i.i348.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i345.i, 0
  %.fca.1.insert.i.i349.i = insertvalue { i64, i8 } %.fca.0.insert.i.i348.i, i8 %.sroa.2.0.copyload.i.i347.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit351.i

bb.cn:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.i
  %i.pb = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %59) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit351.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit351.i:         ; preds = %bb.cn, %bb.cm
  %.pn.i350.i = phi { i64, i8 } [ %.fca.1.insert.i.i349.i, %bb.cm ], [ %i.pb, %bb.cn ] ; 2 uses
  %.fca.0.extract61.i = extractvalue { i64, i8 } %.pn.i350.i, 0 ; 3 uses
  %.fca.1.extract62.i = extractvalue { i64, i8 } %.pn.i350.i, 1
  %i.pc = trunc nuw i8 %.fca.1.extract163.i to i1 ; 2 uses
  %.not5.i.i = xor i1 %i.pc, true
  %i.pd = trunc nuw i8 %.fca.1.extract62.i to i1  ; 2 uses
  %or.cond.i.i = select i1 %.not5.i.i, i1 %i.pd, i1 false
  %.not.i352.i = icmp eq i64 %.fca.0.extract61.i, 0
  %or.cond432.i = select i1 %or.cond.i.i, i1 true, i1 %.not.i352.i
  br i1 %or.cond432.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.sink.split.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE17isKnownMultipleOfERKS3_.exit.i

_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE17isKnownMultipleOfERKS3_.exit.i: ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit351.i
  %i.pe = urem i64 %.fca.0.extract162.i, %.fca.0.extract61.i
  %i.pf = udiv i64 %.fca.0.extract162.i, %.fca.0.extract61.i
  %i.pg = icmp eq i64 %i.pe, 0
  br i1 %i.pg, label %bb.co, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.sink.split.i

bb.co:                                            ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE17isKnownMultipleOfERKS3_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #36
  %i.ph = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 80
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !491
  br i1 %i.pd, label %bb.cp, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.cp:                                            ; preds = %bb.co
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %bb.co
  br i1 %i.pc, label %bb.cq, label %_ZNK4llvm8TypeSizecvmEv.exit356.i

bb.cq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit356.i:                ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.pk = trunc i64 %i.pf to i32
  %i.pl = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.pj, i16 %i.ov, ptr %i.ox, i32 noundef %i.pk, i1 noundef zeroext false) ; 2 uses
  %i.pm = extractvalue { i16, ptr } %i.pl, 0      ; 4 uses
  store i16 %i.pm, ptr %60, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  %i.po = extractvalue { i16, ptr } %i.pl, 1      ; 2 uses
  store ptr %i.po, ptr %i.pn, align 8
  %i.pp = load ptr, ptr %i.ml, align 8, !tbaa !347, !nonnull !53, !align !197 ; 3 uses
  %.sroa.051.0.copyload.i = load i16, ptr %48, align 8, !tbaa !214 ; 3 uses
  %.sroa.253.0.copyload.i = load ptr, ptr %i.ft, align 8, !tbaa !216
  %.not.i.i.i.i.i = icmp eq i16 %.sroa.051.0.copyload.i, 1
  %i.pq = icmp eq ptr %.sroa.253.0.copyload.i, null
  %.not4.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.pq, i1 false
  br i1 %.not4.i.i.i.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit356.i
  %.not.i16.i.i = icmp eq i16 %.sroa.051.0.copyload.i, 0
  br i1 %.not.i16.i.i, label %.thread422.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i357.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i357.i: ; preds = %bb.cr
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 112
  %i.ps = zext i16 %.sroa.051.0.copyload.i to i64 ; 2 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %i.ps
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !398
  %.not.i358.i = icmp eq ptr %i.pu, null
  br i1 %.not.i358.i, label %.thread422.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i357.i, %_ZNK4llvm8TypeSizecvmEv.exit356.i
  %.pre-phi.i = phi i64 [ %i.ps, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i357.i ], [ 1, %_ZNK4llvm8TypeSizecvmEv.exit356.i ]
  %i.pv = getelementptr inbounds nuw [537 x i8], ptr %i.pp, i64 %.pre-phi.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 6351
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !400
  %i.py = and i8 %i.px, -5
  %spec.select.i359.i = icmp ne i8 %i.py, 0
  %.not.i361.i = icmp eq i16 %i.pm, 0
  %or.cond433.i = select i1 %spec.select.i359.i, i1 true, i1 %.not.i361.i
  br i1 %or.cond433.i, label %.thread422.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pp, i64 112
  %i.qa = zext i16 %i.pm to i64
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.qa
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !398
  %.not438.i = icmp eq ptr %i.qc, null
  br i1 %.not438.i, label %.thread422.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  %i.qd = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 56
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !220
  %i.qg = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.qf) #36
  %i.qh = load i8, ptr %i.qg, align 8, !tbaa !635, !range !52, !noundef !53
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.qj = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %60)
  %i.qk = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %48)
  %i.ql = sub i32 %i.qj, %i.qk
  %.sroa.041.0.copyload.pre.i = load i16, ptr %60, align 8, !tbaa !214
  %.sroa.243.0.copyload.pre.i = load ptr, ptr %i.pn, align 8, !tbaa !216
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.sroa.243.0.copyload.i = phi ptr [ %.sroa.243.0.copyload.pre.i, %bb.ct ], [ %i.po, %bb.cs ]
  %.sroa.041.0.copyload.i = phi i16 [ %.sroa.041.0.copyload.pre.i, %bb.ct ], [ %i.pm, %bb.cs ]
  %.0217.i = phi i32 [ %i.ql, %bb.ct ], [ 0, %bb.cs ] ; 2 uses
  %i.qm = load ptr, ptr %i.ml, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.sroa.044.0.copyload.i = load i16, ptr %48, align 8, !tbaa !214
  %.sroa.246.0.copyload.i = load ptr, ptr %i.ft, align 8, !tbaa !216
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !45
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 1672
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = call noundef zeroext i1 %i.qp(ptr noundef nonnull align 8 dereferenceable(518435) %i.qm, i16 %.sroa.044.0.copyload.i, ptr %.sroa.246.0.copyload.i, i16 %.sroa.041.0.copyload.i, ptr %.sroa.243.0.copyload.i, i32 noundef %.0217.i) #36, !inline_history !1565
  br i1 %i.qq, label %bb.cv, label %.thread422.i

.thread422.i:                                     ; preds = %bb.cu, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i357.i, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #36
  br label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.sink.split.i

bb.cv:                                            ; preds = %bb.cu
  %i.qr = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #36
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !352
  store i64 %i.qt, ptr %61, align 8, !tbaa !352
  %i.qu = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !351
  store i32 %i.qw, ptr %i.qu, align 8, !tbaa !396
  %.sroa.035.0.copyload.i = load i16, ptr %48, align 8, !tbaa !214
  %.sroa.237.0.copyload.i = load ptr, ptr %i.ft, align 8, !tbaa !216
  %.sroa.030.0.copyload.i = load i16, ptr %60, align 8, !tbaa !214
  %.sroa.232.0.copyload.i = load ptr, ptr %i.pn, align 8, !tbaa !216
  %.sroa.027.0.copyload.i = load ptr, ptr %55, align 8
  %.sroa.228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %.sroa.228.0.copyload.i = load i32, ptr %.sroa.228.0..sroa_idx.i, align 8
  %i.qx = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.qr, i16 %.sroa.030.0.copyload.i, ptr %.sroa.232.0.copyload.i, ptr %.sroa.027.0.copyload.i, i32 %.sroa.228.0.copyload.i) #36 ; 2 uses
  %.fca.0.extract23.i = extractvalue { ptr, i32 } %i.qx, 0
  %.fca.1.extract24.i = extractvalue { ptr, i32 } %i.qx, 1
  %i.qy = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getExtractSubvectorERKNS_5SDLocENS_3EVTENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %i.qr, ptr noundef nonnull align 8 dereferenceable(12) %61, i16 %.sroa.035.0.copyload.i, ptr %.sroa.237.0.copyload.i, ptr %.fca.0.extract23.i, i32 %.fca.1.extract24.i, i32 noundef %.0217.i) ; 2 uses
  %.fca.0.extract19.i = extractvalue { ptr, i32 } %i.qy, 0
  %.fca.1.extract20.i = extractvalue { ptr, i32 } %i.qy, 1
  store ptr %.fca.0.extract19.i, ptr %55, align 8
  store i32 %.fca.1.extract20.i, ptr %.sroa.228.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #36
  br label %bb.db

bb.cw:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit338.i, %.split413.i
  %.not.i362.i = icmp eq i16 %i.ms, 0
  br i1 %.not.i362.i, label %_ZNK4llvm3EVT8isVectorEv.exit364.i, label %.split428.i

.split428.i:                                      ; preds = %bb.cw, %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit342.i
  %i.qz = add i16 %i.ms, -19
  %spec.select.i.i363.i = icmp ult i16 %i.qz, 197
  br i1 %spec.select.i.i363.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %bb.cx

_ZNK4llvm3EVT8isVectorEv.exit364.i:               ; preds = %bb.cw, %bb.cj
  %i.ra = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %49) #37
  br i1 %i.ra, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %bb.cx

bb.cx:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit364.i, %.split428.i
  br i1 %.not.i336.i, label %_ZNK4llvm3EVT8isVectorEv.exit367.i, label %.split430.i

.split430.i:                                      ; preds = %bb.cx
  %i.rb = add i16 %.val236.i, -19
  %spec.select.i.i366.i = icmp ult i16 %i.rb, 197
  br i1 %spec.select.i.i366.i, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %bb.cy

_ZNK4llvm3EVT8isVectorEv.exit367.i:               ; preds = %bb.cx
  %i.rc = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #37
  br i1 %i.rc, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit367.i, %.split430.i
  %i.rd = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %49)
  br i1 %i.rd, label %bb.cz, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i

bb.cz:                                            ; preds = %bb.cy
  %i.re = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %48)
  br i1 %i.re, label %bb.da, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i

bb.da:                                            ; preds = %bb.cz
  %i.rf = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #36
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !352
  store i64 %i.rh, ptr %62, align 8, !tbaa !352
  %i.ri = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !351
  store i32 %i.rk, ptr %i.ri, align 8, !tbaa !396
  %.sroa.015.0.copyload.i = load i16, ptr %48, align 8, !tbaa !214
  %.sroa.217.0.copyload.i = load ptr, ptr %i.ft, align 8, !tbaa !216
  %i.rl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.rf, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %62, i16 %.sroa.015.0.copyload.i, ptr %.sroa.217.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %55) #36 ; 2 uses
  %.fca.0.extract11.i = extractvalue { ptr, i32 } %i.rl, 0
  %.fca.1.extract12.i = extractvalue { ptr, i32 } %i.rl, 1
  store ptr %.fca.0.extract11.i, ptr %55, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i32 %.fca.1.extract12.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #36
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cv, %bb.cg, %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread.i
  %.val245.i = load ptr, ptr %0, align 8
  %i.rm = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111DAGCombiner28extendLoadedValueToExtensionEPN4llvm10LoadSDNodeERNS1_7SDValueE(ptr %.val245.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(12) %55)
  br i1 %i.rm, label %bb.dc, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.i

bb.dc:                                            ; preds = %bb.db
  %.sroa.08.0.copyload.i = load ptr, ptr %55, align 8
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %55, i64 8
  %.sroa.29.0.copyload.i = load i32, ptr %.sroa.29.0..sroa_idx.i, align 8
  %i.rn = call fastcc { ptr, i32 } @"_ZZN12_GLOBAL__N_111DAGCombiner29ForwardStoreValueToDirectLoadEPN4llvm10LoadSDNodeEENK3$_0clES3_NS1_7SDValueES5_"(ptr nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr %.sroa.08.0.copyload.i, i32 %.sroa.29.0.copyload.i, ptr %.sroa.0193.0.copyload.i, i32 %.sroa.6194.0.copyload.i)
  br label %_ZN12_GLOBAL__N_111DAGCombiner29ForwardStoreValueToDirectLoadEPN4llvm10LoadSDNodeE.exit

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit310.thread409.sink.split.i: ; preds = %.thread422.i, %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE17isKnownMultipleOfERKS3_.exit.i, %_ZNK4llvm3EVT13getSizeInBitsEv.exit351.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #36
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111DAGCombiner10visitSTOREEPN4llvm6SDNodeE:bb.a
  %i.ka = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %84, i64 12 ; 2 uses
  store i32 8, ptr %i.kb, align 4, !tbaa !77
  store ptr %1, ptr %i.jz, align 8
  store i32 1, ptr %i.ka, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #36
  %i.kc = zext nneg i16 %.sroa.0.0.copyload.i.i327 to i64
  %i.kd = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ke, align 16 ; 2 uses
  %i.kf = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 4 uses
  store i32 %i.kf, ptr %i.o, align 4, !tbaa !198
  %i.kg = udiv i32 64, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0203.0.copyload.i, i64 24
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !72
  %i.kj = icmp ne i32 %i.ki, 317
  %.not260268.i = icmp eq ptr %.sroa.0203.0.copyload.i, null
  %.not269.i = or i1 %.not260268.i, %i.kj
  br i1 %.not269.i, label %.critedge.thread.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11StoreSDNodeELb1EE9push_backES2_.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0203.0270.i, i64 40
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !204 ; 2 uses
  %.sroa.0203.0.copyload204.i = load ptr, ptr %i.kl, align 8, !tbaa !74 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0203.0.copyload204.i, i64 24
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !72
  %i.ko = icmp ne i32 %i.kn, 317
  %.not260.i = icmp eq ptr %.sroa.0203.0.copyload204.i, null
  %.not.i333 = or i1 %.not260.i, %i.ko
  br i1 %.not.i333, label %.critedge._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i, %.critedge.i
  %i.kp = phi i32 [ %i.lq, %.critedge.i ], [ 1, %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i ] ; 2 uses
  %.sroa.0203.0270.i = phi ptr [ %.sroa.0203.0.copyload204.i, %.critedge.i ], [ %.sroa.0203.0.copyload.i, %_ZNK4llvm3EVT13getScalarTypeEv.exit.i.i ] ; 8 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0203.0270.i, i64 88
  %.sroa.0.0.copyload.i159.i = load i16, ptr %i.kq, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i160.i = getelementptr inbounds nuw i8, ptr %.sroa.0203.0270.i, i64 96
  %.sroa.21.0.copyload.i161.i = load ptr, ptr %.sroa.21.0..sroa_idx.i160.i, align 8, !tbaa !216
  %.not.i164.i = icmp ne i16 %.sroa.0.0.copyload.i159.i, %.sroa.0.0.copyload.i.i327
  %i.kr = icmp ne ptr %.sroa.21.0.copyload.i161.i, null
  %i.ks = select i1 %.not.i164.i, i1 true, i1 %i.kr
  br i1 %i.ks, label %.critedge.thread.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0203.0270.i, i64 104
  %.0.copyload.i.i.i.i.i.i.i.i165.i = load i64, ptr %i.kt, align 8
  %i.ku = and i64 %.0.copyload.i.i.i.i.i.i.i.i165.i, -5
  %i.kv = inttoptr i64 %i.ku to ptr
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 36
  %i.kx = load i16, ptr %i.kw, align 4
  %i.ky = and i16 %i.kx, 3840
  %.not.i166.i = icmp eq i16 %i.ky, 0
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0203.0270.i, i64 32 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 8
  %i.lb = and i8 %i.la, 8
  %.not1.i167.i = icmp eq i8 %i.lb, 0
  %i.lc = select i1 %.not.i166.i, i1 %.not1.i167.i, i1 false
  br i1 %i.lc, label %bb.aj, label %.critedge.thread.i

bb.aj:                                            ; preds = %bb.ai
  %i.ld = load i16, ptr %i.kz, align 8
  %i.le = and i16 %i.ld, 896
  %.not261.i = icmp eq i16 %i.le, 0
  br i1 %.not261.i, label %bb.ak, label %.critedge.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0203.0270.i, i64 56
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !195 ; 2 uses
  %.not.i.i168.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i168.i, label %.critedge.thread.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.i

_ZNK4llvm6SDNode9hasOneUseEv.exit.i:              ; preds = %bb.ak
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !357
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.al, label %.critedge.thread.i

bb.al:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.i
  %i.lk = load i32, ptr %i.kb, align 4, !tbaa !77
  %.not.i169.i = icmp ult i32 %i.kp, %i.lk
  br i1 %.not.i169.i, label %bb.an, label %bb.am, !prof !78

bb.am:                                            ; preds = %bb.al
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11StoreSDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull %.sroa.0203.0270.i)
  %.pre.i = load i32, ptr %i.ka, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11StoreSDNodeELb1EE9push_backES2_.exit.i

bb.an:                                            ; preds = %bb.al
  %i.ll = zext nneg i32 %i.kp to i64
  %i.lm = load ptr, ptr %84, align 8, !tbaa !43
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ll
  store ptr %.sroa.0203.0270.i, ptr %i.ln, align 1
  %i.lo = load i32, ptr %i.ka, align 8, !tbaa !76
  %i.lp = add i32 %i.lo, 1                        ; 2 uses
  store i32 %i.lp, ptr %i.ka, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11StoreSDNodeELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_11StoreSDNodeELb1EE9push_backES2_.exit.i: ; preds = %bb.an, %bb.am
  %i.lq = phi i32 [ %.pre.i, %bb.am ], [ %i.lp, %bb.an ] ; 7 uses
  %i.lr = icmp ugt i32 %i.lq, %i.kg
  br i1 %i.lr, label %.critedge.thread.i, label %.critedge.i

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.sroa.6.0..sroa_idx205.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %.sroa.6.0.copyload206.i = load i32, ptr %.sroa.6.0..sroa_idx205.i, align 8, !tbaa !198
  %i.ls = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.lt = icmp ult i32 %i.lq, 2
  br i1 %i.lt, label %.critedge.thread.i, label %bb.ao

bb.ao:                                            ; preds = %.critedge._crit_edge.i
  %i.lu = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 80
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !491 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #36
  store i32 %i.lq, ptr %i.p, align 4, !tbaa !198
  %i.lx = mul i32 %i.lq, %i.kf                    ; 4 uses
  switch i32 %i.lx, label %bb.ca [
    i32 64, label %bb.ap
    i32 32, label %bb.ap
    i32 16, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #36
  store ptr null, ptr %85, align 8, !tbaa !193
  %i.ly = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 5 uses
  store i32 0, ptr %i.ly, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #36
  store i64 9223372036854775807, ptr %i.q, align 8, !tbaa !367
  call void @_ZN4llvm11SmallVectorIlLj8EEC2EmRKl(ptr noundef nonnull align 8 dereferenceable(80) %86, i64 noundef %i.ls, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #36
  store i64 9223372036854775807, ptr %i.r, align 8, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #36
  %i.lz = getelementptr inbounds nuw i8, ptr %87, i64 56 ; 3 uses
  store i8 0, ptr %i.lz, align 8, !tbaa !726
  %i.ma = load ptr, ptr %84, align 8, !tbaa !43   ; 2 uses
  %i.mb = load i32, ptr %i.ka, align 8, !tbaa !76 ; 2 uses
  %i.mc = zext i32 %i.mb to i64
  %.idx.i = shl nuw nsw i64 %i.mc, 3
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.idx.i
  %.not148272.i = icmp eq i32 %i.mb, 0
  br i1 %.not148272.i, label %._crit_edge.i335, label %.lr.ph275.i

.lr.ph275.i:                                      ; preds = %bb.ap
  %i.me = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.mf = zext nneg i32 %i.lx to i64
  %i.mg = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967295 ; 3 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.bk, %.lr.ph275.i
  %i.mh = phi i64 [ 9223372036854775807, %.lr.ph275.i ], [ %i.os, %bb.bk ] ; 2 uses
  %.0134274.i = phi ptr [ null, %.lr.ph275.i ], [ %.1135.i, %bb.bk ]
  %.0140273.i = phi ptr [ %i.ma, %.lr.ph275.i ], [ %i.ox, %bb.bk ] ; 2 uses
  %i.mi = load ptr, ptr %.0140273.i, align 8, !tbaa !728 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !204
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %.sroa.0196.0.copyload.i = load ptr, ptr %i.ml, align 8, !tbaa !74 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0196.0.copyload.i, i64 24
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !72
  %.not149.i = icmp eq i32 %i.mn, 230
  br i1 %.not149.i, label %bb.ar, label %.thread250.i

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #36
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0196.0.copyload.i, i64 40
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(16) %i.mp, i64 16, i1 false), !tbaa.struct !217
  %i.mq = load ptr, ptr %88, align 8, !tbaa !193  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !72
  %.off.i = add i32 %i.ms, -199
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 40
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !204
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !193 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !72
  switch i32 %i.my, label %bb.aw [
    i32 37, label %bb.at
    i32 12, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 88
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !403 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 24 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !405
  %i.ne = icmp ult i32 %i.nd, 65
  %i.nf = load ptr, ptr %i.nb, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.ne, ptr %i.nb, ptr %i.nf
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !75 ; 3 uses
  %i.ng = urem i64 %.0.i.i.i.i.i.i, %i.mg
  %i.nh = udiv i64 %.0.i.i.i.i.i.i, %i.mg
  %.not150.i = icmp eq i64 %i.ng, 0
  br i1 %.not150.i, label %bb.au, label %.thread239.i

bb.au:                                            ; preds = %bb.at
  %i.ni = call noundef i64 @_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %88)
  %i.nj = sub i64 %i.ni, %i.mg
  %i.nk = icmp ugt i64 %.0.i.i.i.i.i.i, %i.nj
  br i1 %i.nk, label %.thread239.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nl = load ptr, ptr %88, align 8, !tbaa !193
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 40
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %88, ptr noundef nonnull align 8 dereferenceable(12) %i.nn, i64 12, i1 false), !tbaa.struct !217
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as, %bb.ar
  %.1142.i = phi i64 [ %i.nh, %bb.av ], [ 0, %bb.as ], [ 0, %bb.ar ] ; 3 uses
  %i.no = load ptr, ptr %85, align 8, !tbaa !193  ; 5 uses
  %.not262.i = icmp eq ptr %i.no, null
  br i1 %.not262.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %85, ptr noundef nonnull align 8 dereferenceable(12) %88, i64 12, i1 false), !tbaa.struct !217
  br label %bb.be

bb.ay:                                            ; preds = %bb.aw
  %i.np = load ptr, ptr %88, align 8, !tbaa !193  ; 4 uses
  %i.nq = icmp ne ptr %i.no, %i.np
  %i.nr = load i32, ptr %i.ly, align 8            ; 2 uses
  %i.ns = load i32, ptr %i.me, align 8            ; 2 uses
  %i.nt = icmp ne i32 %i.nr, %i.ns
  %.not3.i.i = select i1 %i.nq, i1 true, i1 %i.nt
  br i1 %.not3.i.i, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !72
  %.off.i.i = add i32 %i.nv, -227
  %switch.i.i = icmp ult i32 %.off.i.i, 4
  br i1 %switch.i.i, label %bb.ba, label %_ZL16stripTruncAndExtN4llvm7SDValueE.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.nw = getelementptr inbounds nuw i8, ptr %i.no, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !204 ; 2 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.nx, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !198
  br label %_ZL16stripTruncAndExtN4llvm7SDValueE.exit.i

_ZL16stripTruncAndExtN4llvm7SDValueE.exit.i:      ; preds = %bb.ba, %bb.az
  %.sroa.4.0.i.i = phi i32 [ %.sroa.4.0.copyload.i.i, %bb.ba ], [ 0, %bb.az ]
  %.sroa.02.0.i.i = phi ptr [ %.sroa.02.0.copyload.i.i, %bb.ba ], [ null, %bb.az ]
  %i.ny = icmp ne ptr %.sroa.02.0.i.i, %i.np
  %i.nz = icmp ne i32 %.sroa.4.0.i.i, %i.ns
  %.not3.i172.i = select i1 %i.ny, i1 true, i1 %i.nz
  br i1 %.not3.i172.i, label %bb.bb, label %.critedge8.i

bb.bb:                                            ; preds = %_ZL16stripTruncAndExtN4llvm7SDValueE.exit.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !72
  %.off.i173.i = add i32 %i.ob, -227
  %switch.i174.i = icmp ult i32 %.off.i173.i, 4
  br i1 %switch.i174.i, label %_ZL16stripTruncAndExtN4llvm7SDValueE.exit182.i, label %.thread239.i

_ZL16stripTruncAndExtN4llvm7SDValueE.exit182.i:   ; preds = %bb.bb
  %i.oc = getelementptr inbounds nuw i8, ptr %i.np, i64 40
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !204 ; 2 uses
  %.sroa.02.0.copyload.i179.i = load ptr, ptr %i.od, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i180.i = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %.sroa.4.0.copyload.i181.i = load i32, ptr %.sroa.4.0..sroa_idx.i180.i, align 8, !tbaa !198
  %i.oe = icmp ne ptr %.sroa.02.0.copyload.i179.i, %i.no
  %i.of = icmp ne i32 %.sroa.4.0.copyload.i181.i, %i.nr
  %.not3.i183.i = select i1 %i.oe, i1 true, i1 %i.of
  br i1 %.not3.i183.i, label %.thread239.i, label %.critedge8.i

.critedge8.i:                                     ; preds = %_ZL16stripTruncAndExtN4llvm7SDValueE.exit182.i, %_ZL16stripTruncAndExtN4llvm7SDValueE.exit.i
  %i.og = call noundef i64 @_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %88)
  %i.oh = call noundef i64 @_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %85)
  %i.oi = icmp ugt i64 %i.og, %i.oh
  br i1 %i.oi, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.critedge8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %85, ptr noundef nonnull align 8 dereferenceable(12) %88, i64 12, i1 false), !tbaa.struct !217
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.critedge8.i
  %i.oj = call noundef i64 @_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %85)
  %i.ok = icmp ult i64 %i.oj, %i.mf
  br i1 %i.ok, label %.thread239.i, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #36
  %i.ol = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @_ZN4llvm15BaseIndexOffset5matchEPKNS_6SDNodeERKNS_12SelectionDAGE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BaseIndexOffset") align 8 %89, ptr noundef nonnull %i.mi, ptr noundef nonnull align 8 dereferenceable(920) %i.ol) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #36
  store i64 0, ptr %i.s, align 8, !tbaa !367
  %i.om = load i8, ptr %i.lz, align 8, !tbaa !726, !range !52, !noundef !53
  %i.on = trunc nuw i8 %i.om to i1
  br i1 %i.on, label %bb.bf, label %_ZNSt8optionalIN4llvm15BaseIndexOffsetEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit.i

_ZNSt8optionalIN4llvm15BaseIndexOffsetEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit.i: ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %87, ptr noundef nonnull align 8 dereferenceable(56) %89, i64 56, i1 false)
  store i8 1, ptr %i.lz, align 8, !tbaa !726
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.oo = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.op = call noundef zeroext i1 @_ZNK4llvm15BaseIndexOffset14equalBaseIndexERKS0_RKNS_12SelectionDAGERl(ptr noundef nonnull align 8 dereferenceable(49) %87, ptr noundef nonnull align 8 dereferenceable(49) %89, ptr noundef nonnull align 8 dereferenceable(920) %i.oo, ptr noundef nonnull align 8 dereferenceable(8) %i.s) #36
  br i1 %i.op, label %._crit_edge278.i, label %.thread245.i

._crit_edge278.i:                                 ; preds = %bb.bf
  %.pre279.i = load i64, ptr %i.s, align 8, !tbaa !367
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge278.i, %_ZNSt8optionalIN4llvm15BaseIndexOffsetEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit.i
  %i.oq = phi i64 [ %.pre279.i, %._crit_edge278.i ], [ 0, %_ZNSt8optionalIN4llvm15BaseIndexOffsetEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_.exit.i ] ; 4 uses
  %i.or = icmp slt i64 %i.oq, %i.mh
  br i1 %i.or, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i64 %i.oq, ptr %i.r, align 8, !tbaa !367
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.os = phi i64 [ %i.oq, %bb.bh ], [ %i.mh, %bb.bg ]
  %.1135.i = phi ptr [ %i.mi, %bb.bh ], [ %.0134274.i, %bb.bg ] ; 2 uses
  %i.ot = icmp sgt i64 %.1142.i, -1
  %.not151.i = icmp slt i64 %.1142.i, %i.ls
  %or.cond.i334 = select i1 %i.ot, i1 %.not151.i, i1 false
  br i1 %or.cond.i334, label %bb.bj, label %.thread245.i

bb.bj:                                            ; preds = %bb.bi
  %i.ou = load ptr, ptr %86, align 8, !tbaa !43
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %.1142.i ; 2 uses
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !367
  %.not152.i = icmp eq i64 %i.ow, 9223372036854775807
  br i1 %.not152.i, label %bb.bk, label %.thread245.i

.thread239.i:                                     ; preds = %bb.bd, %_ZL16stripTruncAndExtN4llvm7SDValueE.exit182.i, %bb.bb, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #36
  br label %.thread250.i

.thread245.i:                                     ; preds = %bb.bj, %bb.bi, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #36
  br label %.thread250.i

bb.bk:                                            ; preds = %bb.bj
  store i64 %i.oq, ptr %i.ov, align 8, !tbaa !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #36
  %i.ox = getelementptr inbounds nuw i8, ptr %.0140273.i, i64 8 ; 2 uses
  %.not148.i = icmp eq ptr %i.ox, %i.md
  br i1 %.not148.i, label %._crit_edge.i335, label %bb.aq

._crit_edge.i335:                                 ; preds = %bb.bk, %bb.ap
  %.0134.lcssa.i = phi ptr [ null, %bb.ap ], [ %.1135.i, %bb.bk ] ; 2 uses
  %i.oy = call { i16, ptr } @_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.lw, i32 noundef %i.lx) ; 2 uses
  %i.oz = extractvalue { i16, ptr } %i.oy, 0      ; 6 uses
  %i.pa = extractvalue { i16, ptr } %i.oy, 1      ; 6 uses
  %i.pb = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 56
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !220
  %i.pe = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.pd) #36 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #36
  store i32 0, ptr %i.t, align 4, !tbaa !198
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !347, !nonnull !53, !align !197
  %i.ph = getelementptr inbounds nuw i8, ptr %.0134.lcssa.i, i64 104 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i336 = load i64, ptr %i.ph, align 8
  %i.pi = and i64 %.0.copyload.i.i.i.i.i.i.i336, -5
  %i.pj = inttoptr i64 %i.pi to ptr
  %i.pk = call noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase18allowsMemoryAccessERNS_11LLVMContextERKNS_10DataLayoutENS_3EVTERKNS_17MachineMemOperandEPj(ptr noundef nonnull align 8 dereferenceable(518435) %i.pg, ptr noundef nonnull align 8 dereferenceable(8) %i.lw, ptr noundef nonnull align 8 dereferenceable(912) %i.pe, i16 %i.oz, ptr %i.pa, ptr noundef nonnull align 8 dereferenceable(88) %i.pj, ptr noundef nonnull %i.t) #36
  %i.pl = load i32, ptr %i.t, align 4
  %i.pm = icmp ne i32 %i.pl, 0
  %or.cond10.i = select i1 %i.pk, i1 %i.pm, i1 false
  br i1 %or.cond10.i, label %bb.bl, label %bb.by

bb.bl:                                            ; preds = %._crit_edge.i335
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #36
  store ptr %i.p, ptr %90, align 8, !tbaa !455
  %i.pn = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr %86, ptr %i.pn, align 8, !tbaa !1612
  %i.po = getelementptr inbounds nuw i8, ptr %90, i64 16
  store ptr %i.o, ptr %i.po, align 8, !tbaa !455
  %i.pp = getelementptr inbounds nuw i8, ptr %90, i64 24
  store ptr %i.r, ptr %i.pp, align 8, !tbaa !414
  %i.pq = load i8, ptr %i.pe, align 8, !tbaa !635, !range !52, !noundef !53
  %i.pr = trunc nuw i8 %i.pq to i1                ; 3 uses
  %i.ps = xor i1 %i.pr, true
  %i.pt = call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_111DAGCombiner16mergeTruncStoresEPN4llvm11StoreSDNodeEENK3$_0clEb"(ptr noundef nonnull align 8 dereferenceable(32) %90, i1 noundef zeroext %i.ps)
  br i1 %i.pt, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pu = icmp eq i32 %i.kf, 8
  br i1 %i.pu, label %bb.bn, label %bb.bo

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_111DAGCombiner17visitBUILD_VECTOREPN4llvm6SDNodeE:bb.a
  %i.ph = load i16, ptr %i.pg, align 8, !tbaa !205 ; 3 uses
  %i.pi = zext i16 %i.ph to i64
  %.idx.i = mul nuw nsw i64 %i.pi, 40
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.idx.i
  %.not289297.i = icmp eq i16 %i.ph, 0
  br i1 %.not289297.i, label %.thread275.i, label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.pk = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %.sroa.0227.0.copyload.peel.i = load ptr, ptr %i.pf, align 8, !tbaa !74 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0227.0.copyload.peel.i, i64 24
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !72
  switch i32 %i.pm, label %.thread275.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.peel.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.peel.i
    i32 228, label %bb.bm
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.peel.i: ; preds = %.lr.ph.i223, %.lr.ph.i223
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #36
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0227.0.copyload.peel.i, i64 88
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !403
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %72, ptr noundef nonnull align 8 dereferenceable(12) %i.pp, i32 noundef %i.os) #36
  %i.pq = load i32, ptr %i.pk, align 8, !tbaa !405 ; 3 uses
  %i.pr = icmp ult i32 %i.pq, 65
  br i1 %i.pr, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.peel.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.peel.i
  %i.ps = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %72) #37 ; 2 uses
  %i.pt = load ptr, ptr %72, align 8, !tbaa !75   ; 2 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %_ZN4llvm5APIntD2Ev.exit.peel.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdaPv(ptr noundef nonnull %i.pt) #38
  br label %_ZN4llvm5APIntD2Ev.exit.peel.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.peel.i:     ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.peel.i
  %.neg.i.i.peel.i = add nsw i32 %i.pq, -64
  %i.pv = load i64, ptr %72, align 8, !tbaa !75
  %i.pw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.pv, i1 false)
  %i.px = trunc nuw nsw i64 %i.pw to i32
  %i.py = add nsw i32 %.neg.i.i.peel.i, %i.px
  br label %_ZN4llvm5APIntD2Ev.exit.peel.i

_ZN4llvm5APIntD2Ev.exit.peel.i:                   ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.peel.i, %bb.bl, %bb.bk
  %.pn.peel.i = phi i32 [ %i.py, %_ZNK4llvm5APInt13getActiveBitsEv.exit.peel.i ], [ %i.ps, %bb.bk ], [ %i.ps, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #36
  %i.pz = icmp eq i32 %i.pq, %.pn.peel.i
  br i1 %i.pz, label %.thread261.peel.sink.split.i, label %.thread275.i

.thread261.peel.sink.split.i:                     ; preds = %_ZN4llvm5APIntD2Ev.exit.peel.i
  %i.qa = load i32, ptr %i.pd, align 8, !tbaa !405
  %i.qb = icmp ult i32 %i.qa, 65
  %i.qc = load ptr, ptr %71, align 8
  %.sink.i = select i1 %i.qb, ptr %71, ptr %i.qc  ; 2 uses
  %i.qd = load i64, ptr %.sink.i, align 8, !tbaa !75
  %i.qe = or i64 %i.qd, 1
  store i64 %i.qe, ptr %.sink.i, align 8, !tbaa !75
  br label %.thread261.peel.i

bb.bm:                                            ; preds = %.lr.ph.i223
  %i.qf = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0227.0.copyload.peel.i, i64 40
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !204 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #36
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !193
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !211
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 48
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !212
  %i.qn = zext i32 %i.qk to i64
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %i.qn ; 2 uses
  %.sroa.0.0.copyload.i.i.i143.peel.i = load i16, ptr %i.qo, align 8, !tbaa !214 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i.peel.i = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %.sroa.21.0.copyload.i.i.i.peel.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.peel.i, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i.i143.peel.i, ptr %67, align 8
  store ptr %.sroa.21.0.copyload.i.i.i.peel.i, ptr %i.qf, align 8
  %.not.i.i144.peel.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i143.peel.i, 0
  br i1 %.not.i.i144.peel.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qp = zext i16 %.sroa.0.0.copyload.i.i.i143.peel.i to i64
  %i.qq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 -16
  %.sroa.0.0.copyload.i.i3.i.peel.i = load i64, ptr %i.qr, align 16
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.peel.i

bb.bo:                                            ; preds = %bb.bm
  %i.qs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %67) #37
  %i.qt = extractvalue { i64, i8 } %i.qs, 0
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.peel.i

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.peel.i: ; preds = %bb.bo, %bb.bn
  %.pn.i.i145.peel.i = phi i64 [ %.sroa.0.0.copyload.i.i3.i.peel.i, %bb.bn ], [ %i.qt, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #36
  %i.qu = trunc i64 %.pn.i.i145.peel.i to i32     ; 2 uses
  %i.qv = shl i32 %i.qu, 1
  %i.qw = icmp ugt i32 %i.qv, %i.os
  br i1 %i.qw, label %.thread275.i, label %.thread261.peel.i

.thread261.peel.i:                                ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.peel.i, %.thread261.peel.sink.split.i
  %.1127268.peel.i = phi i32 [ %i.qu, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit.peel.i ], [ 0, %.thread261.peel.sink.split.i ] ; 2 uses
  %.not289.peel.i = icmp eq i16 %i.ph, 1
  br i1 %.not289.peel.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.thread261.peel.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pf, i64 40
  br label %bb.bp

bb.bp:                                            ; preds = %.thread261.i, %.peel.next.i
  %.sroa.7238.0299.i = phi i64 [ 1, %.peel.next.i ], [ %i.rz, %.thread261.i ] ; 3 uses
  %.sroa.0235.0298.i = phi ptr [ %i.qx, %.peel.next.i ], [ %i.sa, %.thread261.i ] ; 2 uses
  %.sroa.0227.0.copyload.i = load ptr, ptr %.sroa.0235.0298.i, align 8, !tbaa !74 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0227.0.copyload.i, i64 24
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !72
  switch i32 %i.qz, label %.thread275.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.bp, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #36
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0227.0.copyload.i, i64 88
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !403
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %72, ptr noundef nonnull align 8 dereferenceable(12) %i.rc, i32 noundef %i.os) #36
  %i.rd = load i32, ptr %i.pk, align 8, !tbaa !405 ; 3 uses
  %i.re = icmp ult i32 %i.rd, 65
  br i1 %i.re, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, label %bb.bq

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %.neg.i.i.i = add nsw i32 %i.rd, -64
  %i.rf = load i64, ptr %72, align 8, !tbaa !75
  %i.rg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.rf, i1 false)
  %i.rh = trunc nuw nsw i64 %i.rg to i32
  %i.ri = add nsw i32 %.neg.i.i.i, %i.rh
  br label %_ZN4llvm5APIntD2Ev.exit.i

bb.bq:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.rj = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %72) #37 ; 2 uses
  %i.rk = load ptr, ptr %72, align 8, !tbaa !75   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, null
  br i1 %i.rl, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZdaPv(ptr noundef nonnull %i.rk) #38
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.br, %bb.bq, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %.pn.i = phi i32 [ %i.ri, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ], [ %i.rj, %bb.bq ], [ %i.rj, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #36
  %i.rm = icmp eq i32 %i.rd, %.pn.i
  br i1 %i.rm, label %bb.bs, label %.thread275.i

bb.bs:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.rn = and i64 %.sroa.7238.0299.i, 63
  %i.ro = shl nuw i64 1, %i.rn                    ; 2 uses
  %i.rp = load i32, ptr %i.pd, align 8, !tbaa !405
  %i.rq = icmp ult i32 %i.rp, 65
  br i1 %i.rq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.rr = load i64, ptr %71, align 8, !tbaa !75
  %i.rs = or i64 %i.rr, %i.ro
  store i64 %i.rs, ptr %71, align 8, !tbaa !75
  br label %.thread261.i

bb.bu:                                            ; preds = %bb.bs
  %i.rt = load ptr, ptr %71, align 8, !tbaa !75
  %i.ru = lshr i64 %.sroa.7238.0299.i, 6
  %i.rv = and i64 %i.ru, 67108863
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.rv ; 2 uses
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !367
  %i.ry = or i64 %i.rx, %i.ro
  store i64 %i.ry, ptr %i.rw, align 8, !tbaa !367
  br label %.thread261.i

.thread261.i:                                     ; preds = %bb.bu, %bb.bt
  %i.rz = add nuw nsw i64 %.sroa.7238.0299.i, 1
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0235.0298.i, i64 40 ; 2 uses
  %.not289.i = icmp eq ptr %i.sa, %i.pj
  br i1 %.not289.i, label %._crit_edge.i, label %bb.bp, !llvm.loop !1673

._crit_edge.i:                                    ; preds = %.thread261.i, %.thread261.peel.i
  %i.sb = icmp eq i32 %.1127268.peel.i, 0
  br i1 %i.sb, label %.thread275.i, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #36
  %i.sc = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.sd = udiv i32 %i.os, %.1127268.peel.i        ; 3 uses
  %i.se = icmp ugt i32 %i.sd, 1
  br i1 %i.se, label %.lr.ph303.i, label %.loopexit.i

.lr.ph303.i:                                      ; preds = %bb.bv, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i
  %indvar = phi i64 [ %indvar.next, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i ], [ 0, %bb.bv ] ; 2 uses
  %storemerge301.i = phi i32 [ %i.tu, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i ], [ %i.sd, %bb.bv ] ; 9 uses
  %i.sf = urem i32 %i.os, %storemerge301.i
  %i.sg = udiv i32 %i.os, %storemerge301.i        ; 3 uses
  %.not133.i = icmp eq i32 %i.sf, 0
  br i1 %.not133.i, label %bb.bw, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i

bb.bw:                                            ; preds = %.lr.ph303.i
  %i.sh = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 80
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !491 ; 2 uses
  %i.sk = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.sg)
  %i.sl = icmp eq i32 %i.sk, 1
  br i1 %i.sl, label %.split.i.i148.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i146.i

.split.i.i148.i:                                  ; preds = %bb.bw
  %i.sm = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.sg, i1 true) ; 2 uses
  %i.sn = icmp samesign ult i32 %i.sm, 10
  br i1 %i.sn, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i149.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i146.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i149.i:         ; preds = %.split.i.i148.i
  %switch.idx.cast.i.i150.i = trunc nuw nsw i32 %i.sm to i16
  %switch.offset.i.i151.i = add nuw nsw i16 %switch.idx.cast.i.i150.i, 2
  %i.so = insertvalue { i16, ptr } poison, i16 %switch.offset.i.i151.i, 0
  %i.sp = insertvalue { i16, ptr } %i.so, ptr null, 1
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit152.i

_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i146.i:  ; preds = %.split.i.i148.i, %bb.bw
  %i.sq = call { i16, ptr } @_ZN4llvm3EVT20getExtendedIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.sj, i32 noundef %i.sg) #36
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !102
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  %.pre313.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !491
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit152.i

_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit152.i: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i146.i, %_ZN4llvm3MVT12getIntegerVTEj.exit.i149.i
  %i.sr = phi ptr [ %.pre313.i, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i146.i ], [ %i.sj, %_ZN4llvm3MVT12getIntegerVTEj.exit.i149.i ]
  %.fca.1.insert.merged.i147.i = phi { i16, ptr } [ %i.sq, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i146.i ], [ %i.sp, %_ZN4llvm3MVT12getIntegerVTEj.exit.i149.i ] ; 2 uses
  %i.ss = extractvalue { i16, ptr } %.fca.1.insert.merged.i147.i, 0 ; 6 uses
  %i.st = extractvalue { i16, ptr } %.fca.1.insert.merged.i147.i, 1 ; 3 uses
  %i.su = load i16, ptr %i.pg, align 8, !tbaa !205
  %i.sv = zext i16 %i.su to i32
  %i.sw = mul i32 %storemerge301.i, %i.sv         ; 2 uses
  %i.sx = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.ss, i32 noundef %i.sw) ; 2 uses
  %.not.i153.i = icmp eq i16 %i.sx, 0
  br i1 %.not.i153.i, label %bb.bx, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit.i226

bb.bx:                                            ; preds = %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit152.i
  %i.sy = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.sr, i16 %i.ss, ptr %i.st, i32 noundef %i.sw, i1 noundef zeroext false) #36 ; 2 uses
  %i.sz = extractvalue { i16, ptr } %i.sy, 0
  %i.ta = extractvalue { i16, ptr } %i.sy, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit.i226

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit.i226: ; preds = %bb.bx, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit152.i
  %.sroa.3.0.i.i227 = phi ptr [ %i.ta, %bb.bx ], [ null, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit152.i ]
  %.sroa.0.0.i.i228 = phi i16 [ %i.sz, %bb.bx ], [ %i.sx, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit152.i ] ; 3 uses
  store i16 %.sroa.0.0.i.i228, ptr %73, align 8, !tbaa !214
  store ptr %.sroa.3.0.i.i227, ptr %i.sc, align 8, !tbaa !216
  %i.tb = load ptr, ptr %i.nm, align 8, !tbaa !347, !nonnull !53, !align !197 ; 3 uses
  %.not.i156.i = icmp eq i16 %i.ss, 0
  br i1 %.not.i156.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.i: ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit.i226
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 112 ; 2 uses
  %i.td = zext i16 %i.ss to i64                   ; 2 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.td
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !398
  %i.tg = icmp eq ptr %i.tf, null
  %.not.i158.i = icmp eq i16 %.sroa.0.0.i.i228, 0
  %or.cond.i229 = select i1 %i.tg, i1 true, i1 %.not.i158.i
  br i1 %or.cond.i229, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit159.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit159.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.i
  %i.th = zext i16 %.sroa.0.0.i.i228 to i64       ; 2 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.th
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !398
  %.not290.i = icmp eq ptr %i.tj, null
  br i1 %.not290.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i, label %bb.by

bb.by:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit159.i
  %i.tk = load i8, ptr %i.h, align 1, !tbaa !324, !range !52, !noundef !53
  %i.tl = trunc nuw i8 %i.tk to i1
  br i1 %i.tl, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit167.i, label %bb.bz

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit167.i: ; preds = %bb.by
  %i.tm = getelementptr inbounds nuw [537 x i8], ptr %i.tb, i64 %i.td
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 6414
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !400
  %i.tp = and i8 %i.to, -5
  %spec.select.i165.i = icmp eq i8 %i.tp, 0
  br i1 %spec.select.i165.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit175.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit175.i: ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit167.i
  %i.tq = getelementptr inbounds nuw [537 x i8], ptr %i.tb, i64 %i.th
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 6346
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !400
  %i.tt = and i8 %i.ts, -5
  %spec.select.i173.i = icmp eq i8 %i.tt, 0
  br i1 %spec.select.i173.i, label %bb.bz, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.thread.i: ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit175.i, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit167.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit159.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit157.i, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit.i226, %.lr.ph303.i
  %i.tu = add i32 %storemerge301.i, -1            ; 2 uses
  %i.tv = icmp ugt i32 %i.tu, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.tv, label %.lr.ph303.i, label %.loopexit.i, !llvm.loop !1674

bb.bz:                                            ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit175.i, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #36
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !352
  store i64 %i.tx, ptr %74, align 8, !tbaa !352
  %i.ty = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !351
  store i32 %i.ua, ptr %i.ty, align 8, !tbaa !396
  %i.ub = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.uc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ub, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %74, i16 %i.ss, ptr %i.st, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract49.i = extractvalue { ptr, i32 } %i.uc, 0 ; 18 uses
  %.fca.1.extract50.i = extractvalue { ptr, i32 } %i.uc, 1 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #36
  %i.ud = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 5 uses
  store ptr %i.ud, ptr %75, align 8, !tbaa !43
  %i.ue = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 11 uses
  store i32 0, ptr %i.ue, align 8, !tbaa !76
  %i.uf = getelementptr inbounds nuw i8, ptr %75, i64 12 ; 5 uses
  store i32 16, ptr %i.uf, align 4, !tbaa !77
  %i.ug = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %73) ; 2 uses
  %i.uh = load i32, ptr %i.uf, align 4, !tbaa !77
  %i.ui = icmp ugt i32 %i.ug, %i.uh
  br i1 %i.ui, label %bb.ca, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.uj = zext i32 %i.ug to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull %i.ud, i64 noundef %i.uj, i64 noundef 16) #36
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i: ; preds = %bb.ca, %bb.bz
  %i.uk = load ptr, ptr %i.mk, align 8, !tbaa !204 ; 2 uses
  %i.ul = load i16, ptr %i.pg, align 8, !tbaa !205 ; 2 uses
  %i.um = zext i16 %i.ul to i64
  %.idx309.i = mul nuw nsw i64 %i.um, 40
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 %.idx309.i
  %.not291304.i = icmp eq i16 %i.ul, 0
  br i1 %.not291304.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.._crit_edge308_crit_edge.i, label %.lr.ph307.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.._crit_edge308_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i
  %.pre315.i = load ptr, ptr %75, align 8, !tbaa !43
  %.pre316.i = load i32, ptr %i.ue, align 8, !tbaa !76
  br label %._crit_edge308.i

.lr.ph307.i:                                      ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i
  %i.uo = zext i32 %storemerge301.i to i64        ; 4 uses
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 3 uses
  %i.up = add i32 %storemerge301.i, -1            ; 3 uses
  %i.uq = zext i32 %i.up to i64                   ; 4 uses
  %i.ur = add i32 %i.sd, -1
  %xtraiter707 = and i64 %i.uo, 7                 ; 2 uses
  %lcmp.mod708.not = icmp eq i64 %xtraiter707, 0
  %i.us = icmp ult i32 %storemerge301.i, 8
  %i.ut = zext i32 %i.ur to i64
  %xtraiter711 = and i64 %i.uq, 7                 ; 2 uses
  %lcmp.mod712.not = icmp eq i64 %xtraiter711, 0
  %i.uu = sub i64 %indvar, %i.ut
  %i.uv = icmp ugt i64 %i.uu, -8
  br label %bb.cc

._crit_edge308.i:                                 ; preds = %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.._crit_edge308_crit_edge.i
  %i.uw = phi i32 [ %.pre316.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.._crit_edge308_crit_edge.i ], [ %i.xm, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i ]
  %i.ux = phi ptr [ %.pre315.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.._crit_edge308_crit_edge.i ], [ %i.xl, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i ]
  %i.uy = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.016.0.copyload.i = load i16, ptr %73, align 8, !tbaa !214
  %.sroa.218.0.copyload.i = load ptr, ptr %i.sc, align 8, !tbaa !216
  %i.uz = zext i32 %i.uw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %66)
  store ptr %i.ux, ptr %66, align 8, !tbaa !413
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %i.uz, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !367
  %i.va = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.uy, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %74, i16 %.sroa.016.0.copyload.i, ptr %.sroa.218.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %66) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66)
  %.fca.0.extract12.i = extractvalue { ptr, i32 } %i.va, 0
  %.fca.1.extract13.i = extractvalue { ptr, i32 } %i.va, 1
  %i.vb = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.08.0.copyload.i = load i16, ptr %69, align 8, !tbaa !214
  %.sroa.210.0.copyload.i = load ptr, ptr %i.mj, align 8, !tbaa !216
  %i.vc = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.vb, i16 %.sroa.08.0.copyload.i, ptr %.sroa.210.0.copyload.i, ptr %.fca.0.extract12.i, i32 %.fca.1.extract13.i) #36 ; 2 uses
  %.fca.0.extract.i233 = extractvalue { ptr, i32 } %i.vc, 0
  %.fca.1.extract.i234 = extractvalue { ptr, i32 } %i.vc, 1
  %i.vd = load ptr, ptr %75, align 8, !tbaa !43   ; 2 uses
  %i.ve = icmp eq ptr %i.vd, %i.ud
  br i1 %i.ve, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge308.i
  call void @free(ptr noundef %i.vd) #36
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit.i: ; preds = %bb.cb, %._crit_edge308.i
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #36
  br label %.loopexit.i

bb.cc:                                            ; preds = %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i, %.lr.ph307.i
  %.sroa.0201.0306.i = phi ptr [ %i.uk, %.lr.ph307.i ], [ %i.xo, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i ] ; 2 uses
  %.sroa.7.0305.i = phi i64 [ 0, %.lr.ph307.i ], [ %i.xn, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0201.0306.i, i64 16, i1 false), !tbaa.struct !217
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_111DAGCombiner17visitBUILD_VECTOREPN4llvm6SDNodeE:bb.a
  %.not474 = icmp eq ptr %.fca.0.extract.i319, null
  br i1 %.not474, label %bb.fe, label %.critedge147

.sink.split656:                                   ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i292, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i289, %_ZN12_GLOBAL__N_111DAGCombiner28reduceBuildVecTruncToBitCastEPN4llvm6SDNodeE.exit.thread453
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #36
  br label %bb.fe

bb.fe:                                            ; preds = %.sink.split656, %_ZN12_GLOBAL__N_111DAGCombiner28reduceBuildVecTruncToBitCastEPN4llvm6SDNodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !352
  store i64 %i.ajz, ptr %35, align 8, !tbaa !352
  %i.aka = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.akb = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !351
  store i32 %i.akc, ptr %i.aka, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.akd = load ptr, ptr %i.b, align 8, !tbaa !212 ; 2 uses
  %.sroa.0.0.copyload.i.i325 = load i16, ptr %i.akd, align 8, !tbaa !214 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i326 = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %.sroa.21.0.copyload.i.i327 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i326, align 8, !tbaa !216 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i325, ptr %36, align 8
  %i.ake = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 7 uses
  store ptr %.sroa.21.0.copyload.i.i327, ptr %i.ake, align 8
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %.val.i328 = load ptr, ptr %i.akf, align 8
  %.val293.i = load i8, ptr %i.do, align 2, !tbaa !325, !range !52, !noundef !53
  %i.akg = trunc nuw i8 %.val293.i to i1
  br i1 %i.akg, label %bb.ff, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit.thread.i329

bb.ff:                                            ; preds = %bb.fe
  %.not.i.i.i383 = icmp eq i16 %.sroa.0.0.copyload.i.i325, 0
  br i1 %.not.i.i.i383, label %_ZN12_GLOBAL__N_111DAGCombiner23reduceBuildVecToShuffleEPN4llvm6SDNodeE.exit.thread, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit.i384

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit.i384: ; preds = %bb.ff
  %i.akh = getelementptr inbounds nuw i8, ptr %.val.i328, i64 112
  %i.aki = zext i16 %.sroa.0.0.copyload.i.i325 to i64
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %i.aki
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !398
  %.not616.i = icmp eq ptr %i.akk, null
  br i1 %.not616.i, label %_ZN12_GLOBAL__N_111DAGCombiner23reduceBuildVecToShuffleEPN4llvm6SDNodeE.exit.thread, label %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit.thread.i329

_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit.thread.i329: ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit.i384, %bb.fe
  %i.akl = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  %i.akm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.akn = load i16, ptr %i.akm, align 8, !tbaa !205 ; 3 uses
  %i.ako = zext i16 %i.akn to i32
  %.not135.i.i = icmp eq i16 %i.akn, 0
  br i1 %.not135.i.i, label %.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit.thread.i329
  %i.akp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !204 ; 2 uses
  %i.akr = zext i16 %i.akn to i64
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fi, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.fi ] ; 3 uses
  %.0137.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.ph.i.i, %bb.fi ] ; 2 uses
  %i.aks = getelementptr inbounds nuw [40 x i8], ptr %i.akq, i64 %indvars.iv.i.i
  %.sroa.0115.0.copyload.i.i = load ptr, ptr %i.aks, align 8, !tbaa !74
  %i.akt = getelementptr inbounds nuw i8, ptr %.sroa.0115.0.copyload.i.i, i64 24
  %i.aku = load i32, ptr %i.akt, align 8, !tbaa !72
  %i.akv = add i32 %i.aku, -53
  %spec.select.i.i.i.i330 = icmp ult i32 %i.akv, 2
  br i1 %spec.select.i.i.i.i330, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.akw = icmp eq i32 %.0137.i.i, -1
  %i.akx = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br i1 %i.akw, label %bb.fi, label %.sink.split.i

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.1.ph.i.i = phi i32 [ %i.akx, %bb.fh ], [ %.0137.i.i, %bb.fg ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i379 = icmp eq i64 %indvars.iv.next.i.i, %i.akr
  br i1 %.not.i.i379, label %._crit_edge.i.i, label %bb.fg, !llvm.loop !1682

._crit_edge.i.i:                                  ; preds = %bb.fi
  %i.aky = icmp eq i32 %.1.ph.i.i, -1
  br i1 %i.aky, label %.sink.split.i, label %bb.fj

bb.fj:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  store i16 %.sroa.0.0.copyload.i.i325, ptr %28, align 8
  %i.akz = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i327, ptr %i.akz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  %i.ala = zext i32 %.1.ph.i.i to i64
  %i.alb = getelementptr inbounds nuw [40 x i8], ptr %i.akq, i64 %i.ala
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %i.alb, i64 16, i1 false), !tbaa.struct !217
  %i.alc = load ptr, ptr %29, align 8, !tbaa !193 ; 3 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 24
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !72
  %.not91.i.i = icmp eq i32 %i.ale, 228
  br i1 %.not91.i.i, label %bb.fk, label %.sink.split.sink.split.i

bb.fk:                                            ; preds = %bb.fj
  %i.alf = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !211
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alc, i64 56
  %.sroa.018.022.i.i.i.i = load ptr, ptr %i.alh, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.sroa.018.022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %.sink.split.sink.split.i, label %.lr.ph.i.i.i.i

bb.fl:                                            ; preds = %.lr.ph.i.i.i.i
  %.214.i.i.i.i = select i1 %i.all, i32 %.01224.i.i.i.i, i32 0 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i, i64 32
  %.sroa.018.0.i.i.i.i = load ptr, ptr %i.ali, align 8, !tbaa !210 ; 2 uses
  %.not.i.i.i.i380 = icmp eq ptr %.sroa.018.0.i.i.i.i, null
  br i1 %.not.i.i.i.i380, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fk, %bb.fl
  %.sroa.018.025.i.i.i.i = phi ptr [ %.sroa.018.0.i.i.i.i, %bb.fl ], [ %.sroa.018.022.i.i.i.i, %bb.fk ] ; 2 uses
  %.01224.i.i.i.i = phi i32 [ %.214.i.i.i.i, %bb.fl ], [ 1, %bb.fk ] ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i, i64 8
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !211
  %i.all = icmp ne i32 %i.alk, %i.alg             ; 2 uses
  %i.alm = icmp ne i32 %.01224.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %i.all, i1 true, i1 %i.alm
  br i1 %cond.i.i.i.i, label %bb.fl, label %.sink.split.sink.split.i

_ZNK4llvm7SDValue9hasOneUseEv.exit.i.i:           ; preds = %bb.fl
  %i.aln = icmp eq i32 %.214.i.i.i.i, 0
  br i1 %i.aln, label %bb.fm, label %.sink.split.sink.split.i

bb.fm:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i.i
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alc, i64 40
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !204
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !193 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 24
  %i.als = load i32, ptr %i.alr, align 8, !tbaa !72
  %.not92.i.i = icmp eq i32 %i.als, 164
  br i1 %.not92.i.i, label %bb.fn, label %.sink.split.sink.split.i

bb.fn:                                            ; preds = %bb.fm
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alq, i64 40
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !204
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 40
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !193
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  %i.aly = load i32, ptr %i.alx, align 8, !tbaa !72
  switch i32 %i.aly, label %.sink.split.sink.split.i [
    i32 37, label %bb.fo
    i32 12, label %bb.fo
  ]

bb.fo:                                            ; preds = %bb.fn, %bb.fn
  %i.alz = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %29) ; 2 uses
  %.fca.1.extract62.i.i = extractvalue { i64, i8 } %i.alz, 1
  %i.ama = trunc nuw i8 %.fca.1.extract62.i.i to i1
  br i1 %i.ama, label %bb.fp, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i:                 ; preds = %bb.fo
  %.fca.0.extract61.i.i = extractvalue { i64, i8 } %i.alz, 0
  %i.amb = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %28)
  %.not93.i.i = icmp eq i64 %.fca.0.extract61.i.i, %i.amb
  br i1 %.not93.i.i, label %bb.fq, label %.sink.split.sink.split.i

bb.fq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.amc = load ptr, ptr %29, align 8, !tbaa !193
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 40
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %i.ame, i64 16, i1 false), !tbaa.struct !217
  %i.amf = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %29) ; 2 uses
  %.fca.1.extract56.i.i = extractvalue { i64, i8 } %i.amf, 1
  %i.amg = trunc nuw i8 %.fca.1.extract56.i.i to i1
  br i1 %i.amg, label %bb.fr, label %_ZNK4llvm8TypeSizecvmEv.exit96.i.i

bb.fr:                                            ; preds = %bb.fq
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit96.i.i:               ; preds = %bb.fq
  %.fca.0.extract55.i.i = extractvalue { i64, i8 } %i.amf, 0
  %i.amh = trunc i64 %.fca.0.extract55.i.i to i32 ; 3 uses
  %i.ami = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %30) ; 2 uses
  %.fca.1.extract50.i.i = extractvalue { i64, i8 } %i.ami, 1
  %i.amj = trunc nuw i8 %.fca.1.extract50.i.i to i1
  br i1 %i.amj, label %bb.fs, label %_ZNK4llvm8TypeSizecvmEv.exit97.i.i

bb.fs:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit96.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit97.i.i:               ; preds = %_ZNK4llvm8TypeSizecvmEv.exit96.i.i
  %.fca.0.extract49.i.i = extractvalue { i64, i8 } %i.ami, 0
  %i.amk = trunc i64 %.fca.0.extract49.i.i to i32 ; 3 uses
  %i.aml = urem i32 %i.amh, %i.amk
  %i.amm = udiv i32 %i.amh, %i.amk                ; 4 uses
  %.not94.i.i = icmp eq i32 %i.aml, 0
  br i1 %.not94.i.i, label %bb.ft, label %_ZL31reduceBuildVecToShuffleWithZeroPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread567.i

bb.ft:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit97.i.i
  %i.amn = load ptr, ptr %30, align 8, !tbaa !193
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 40
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !204
  %i.amq = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %i.amp) ; 2 uses
  %.fca.0.extract45.i.i = extractvalue { i64, i8 } %i.amq, 0
  %.fca.1.extract46.i.i = extractvalue { i64, i8 } %i.amq, 1
  %i.amr = load i16, ptr %28, align 8, !tbaa !387 ; 2 uses
  %.not.i.i300.i = icmp eq i16 %i.amr, 0
  br i1 %.not.i.i300.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ams = zext i16 %i.amr to i64
  %i.amt = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ams ; 2 uses
  %i.amu = getelementptr i8, ptr %i.amt, i64 -16
  %.sroa.0.0.copyload.i.i.i.i381 = load i64, ptr %i.amu, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.amt, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i381, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

bb.fv:                                            ; preds = %bb.ft
  %i.amv = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i:          ; preds = %bb.fv, %bb.fu
  %.pn.i.i.i382 = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i, %bb.fu ], [ %i.amv, %bb.fv ] ; 2 uses
  %.fca.0.extract41.i.i = extractvalue { i64, i8 } %.pn.i.i.i382, 0
  %.fca.1.extract42.i.i = extractvalue { i64, i8 } %.pn.i.i.i382, 1
  %.not.i98.i.i = icmp ne i64 %.fca.0.extract45.i.i, %.fca.0.extract41.i.i
  %i.amw = icmp ne i8 %.fca.1.extract46.i.i, %.fca.1.extract42.i.i
  %i.amx = select i1 %.not.i98.i.i, i1 true, i1 %i.amw
  br i1 %i.amx, label %_ZL31reduceBuildVecToShuffleWithZeroPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread567.i, label %bb.fw

bb.fw:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.amy = mul nsw i32 %i.amm, %i.ako             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  %i.amz = sext i32 %i.amy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 -1, ptr %i.a, align 4, !tbaa !198
  call void @_ZN4llvm11SmallVectorIiLj32EEC2EmRKi(ptr noundef nonnull align 8 dereferenceable(144) %31, i64 noundef %i.amz, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not95138.i.i = icmp ugt i32 %i.amk, %i.amh
  br i1 %.not95138.i.i, label %._crit_edge142.i.i, label %.lr.ph141.i.i

.lr.ph141.i.i:                                    ; preds = %bb.fw
  %i.ana = getelementptr inbounds nuw i8, ptr %i.akl, i64 56
  %i.anb = add nsw i32 %i.amm, -1
  %i.anc = zext i32 %i.amy to i64
  br label %bb.fx

._crit_edge142.i.i:                               ; preds = %bb.gb, %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.and = load i64, ptr %i.ajy, align 8, !tbaa !352
  store i64 %i.and, ptr %32, align 8, !tbaa !352
  %i.ane = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.anf = load i32, ptr %i.akb, align 4, !tbaa !351
  store i32 %i.anf, ptr %i.ane, align 8, !tbaa !396
  %i.ang = load ptr, ptr %30, align 8, !tbaa !193
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 40
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !204 ; 2 uses
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !193
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.anl = load i32, ptr %i.ank, align 8, !tbaa !211
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anj, i64 48
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !212
  %i.ano = zext i32 %i.anl to i64
  %i.anp = getelementptr inbounds nuw [16 x i8], ptr %i.ann, i64 %i.ano ; 2 uses
  %.sroa.0.0.copyload.i.i99.i.i = load i16, ptr %i.anp, align 8, !tbaa !214 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.anp, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !216 ; 2 uses
  %i.anq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.akl, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %32, i16 %.sroa.0.0.copyload.i.i99.i.i, ptr %.sroa.21.0.copyload.i.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract18.i.i = extractvalue { ptr, i32 } %i.anq, 0
  %.fca.1.extract19.i.i = extractvalue { ptr, i32 } %i.anq, 1
  %i.anr = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !218
  %i.ant = load ptr, ptr %30, align 8, !tbaa !193
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 40
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !204 ; 2 uses
  %.sroa.012.0.copyload.i.i = load ptr, ptr %i.anv, align 8, !tbaa !74
  %.sroa.213.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  %.sroa.213.0.copyload.i.i = load i32, ptr %.sroa.213.0..sroa_idx.i.i, align 8, !tbaa !198
  store ptr %.fca.0.extract18.i.i, ptr %33, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract19.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !198
  %i.anw = load ptr, ptr %31, align 8, !tbaa !43
  store ptr %i.anw, ptr %34, align 8, !tbaa !573
  %i.anx = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.any = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.anz = load i32, ptr %i.any, align 8, !tbaa !76
  %i.aoa = zext i32 %i.anz to i64
  store i64 %i.aoa, ptr %i.anx, align 8, !tbaa !574
  %i.aob = call { ptr, i32 } @_ZNK4llvm14TargetLowering23buildLegalVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_15MutableArrayRefIiEERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %i.ans, i16 %.sroa.0.0.copyload.i.i99.i.i, ptr %.sroa.21.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %32, ptr %.sroa.012.0.copyload.i.i, i32 %.sroa.213.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %34, ptr noundef nonnull align 8 dereferenceable(920) %i.akl) #36 ; 2 uses
  %.fca.0.extract8.i.i = extractvalue { ptr, i32 } %i.aob, 0 ; 2 uses
  %.not132.i.i = icmp eq ptr %.fca.0.extract8.i.i, null
  br i1 %.not132.i.i, label %bb.gd, label %bb.gc

bb.fx:                                            ; preds = %bb.gb, %.lr.ph141.i.i
  %indvars.iv144.i.i = phi i64 [ 0, %.lr.ph141.i.i ], [ %indvars.iv.next145.i.i, %bb.gb ] ; 3 uses
  %i.aoc = trunc nuw nsw i64 %indvars.iv144.i.i to i32 ; 2 uses
  %i.aod = sdiv i32 %i.aoc, %i.amm
  %i.aoe = srem i32 %i.aoc, %i.amm
  %i.aof = icmp eq i32 %i.aod, %.1.ph.i.i
  br i1 %i.aof, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %i.aog = load ptr, ptr %i.ana, align 8, !tbaa !220
  %i.aoh = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.aog) #36
  %i.aoi = load i8, ptr %i.aoh, align 8, !tbaa !635, !range !52, !noundef !53
  %i.aoj = trunc nuw i8 %i.aoi to i1
  %i.aok = select i1 %i.aoj, i32 %i.anb, i32 0
  %i.aol = icmp eq i32 %i.aoe, %i.aok
  br i1 %i.aol, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.aom = load ptr, ptr %30, align 8, !tbaa !193
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 40
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !204
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 40
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !193
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 88
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !403 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 24 ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aos, i64 32
  %i.aov = load i32, ptr %i.aou, align 8, !tbaa !405
  %i.aow = icmp ult i32 %i.aov, 65
  %i.aox = load ptr, ptr %i.aot, align 8
  %spec.select.i.i.i.i.i.i.i = select i1 %i.aow, ptr %i.aot, ptr %i.aox
  %.0.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i.i, align 8, !tbaa !75
  %i.aoy = trunc i64 %.0.i.i.i.i.i.i.i to i32
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.aoz = phi i32 [ %i.aoy, %bb.fz ], [ %i.amy, %bb.fy ]
  %i.apa = load ptr, ptr %31, align 8, !tbaa !43
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %i.apa, i64 %indvars.iv144.i.i
  store i32 %i.aoz, ptr %i.apb, align 4, !tbaa !198
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fx
  %indvars.iv.next145.i.i = add nuw nsw i64 %indvars.iv144.i.i, 1 ; 2 uses
  %.not95.i.i = icmp eq i64 %indvars.iv.next145.i.i, %i.anc
  br i1 %.not95.i.i, label %._crit_edge142.i.i, label %bb.fx, !llvm.loop !1683

bb.gc:                                            ; preds = %._crit_edge142.i.i
  %.fca.1.extract9.i.i = extractvalue { ptr, i32 } %i.aob, 1
  %.sroa.05.0.copyload.i.i = load i16, ptr %28, align 8, !tbaa !214
  %.sroa.27.0.copyload.i.i = load ptr, ptr %i.akz, align 8, !tbaa !216
  %i.apc = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.akl, i16 %.sroa.05.0.copyload.i.i, ptr %.sroa.27.0.copyload.i.i, ptr nonnull %.fca.0.extract8.i.i, i32 %.fca.1.extract9.i.i) #36 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i32 } %i.apc, 0
  %.fca.1.extract.i.i = extractvalue { ptr, i32 } %i.apc, 1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %._crit_edge142.i.i
  %.sroa.12.3.i.i = phi i32 [ %.fca.1.extract.i.i, %bb.gc ], [ 0, %._crit_edge142.i.i ]
  %.sroa.0117.3.i.i = phi ptr [ %.fca.0.extract.i.i, %bb.gc ], [ null, %._crit_edge142.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.apd = load ptr, ptr %31, align 8, !tbaa !43  ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.apf = icmp eq ptr %i.apd, %i.ape
  br i1 %i.apf, label %_ZL31reduceBuildVecToShuffleWithZeroPN4llvm6SDNodeERNS_12SelectionDAGE.exit.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @free(ptr noundef %i.apd) #36
  br label %_ZL31reduceBuildVecToShuffleWithZeroPN4llvm6SDNodeERNS_12SelectionDAGE.exit.i

_ZL31reduceBuildVecToShuffleWithZeroPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread567.i: ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i, %_ZNK4llvm8TypeSizecvmEv.exit97.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %.sink.split.sink.split.i

_ZL31reduceBuildVecToShuffleWithZeroPN4llvm6SDNodeERNS_12SelectionDAGE.exit.i: ; preds = %bb.ge, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  %.not617.i = icmp eq ptr %.sroa.0117.3.i.i, null
  br i1 %.not617.i, label %bb.gf, label %_ZN12_GLOBAL__N_111DAGCombiner23reduceBuildVecToShuffleEPN4llvm6SDNodeE.exit.thread462

_ZN12_GLOBAL__N_111DAGCombiner23reduceBuildVecToShuffleEPN4llvm6SDNodeE.exit.thread462: ; preds = %_ZL31reduceBuildVecToShuffleWithZeroPN4llvm6SDNodeERNS_12SelectionDAGE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  br label %.critedge147

.sink.split.sink.split.i:                         ; preds = %.lr.ph.i.i.i.i, %_ZL31reduceBuildVecToShuffleWithZeroPN4llvm6SDNodeERNS_12SelectionDAGE.exit.thread567.i, %_ZNK4llvm8TypeSizecvmEv.exit.i.i, %bb.fn, %bb.fm, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i.i, %bb.fk, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.fh, %.sink.split.sink.split.i, %._crit_edge.i.i, %_ZN12_GLOBAL__N_111DAGCombiner11isTypeLegalERKN4llvm3EVTE.exit.thread.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  br label %bb.gf

bb.gf:                                            ; preds = %.sink.split.i, %_ZL31reduceBuildVecToShuffleWithZeroPN4llvm6SDNodeERNS_12SelectionDAGE.exit.i
  %i.apg = load i8, ptr %i.h, align 1, !tbaa !324, !range !52, !noundef !53
  %i.aph = trunc nuw i8 %i.apg to i1
  br i1 %i.aph, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  %i.api = load ptr, ptr %i.akf, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0223.0.copyload.i = load i16, ptr %36, align 8, !tbaa !214 ; 3 uses
  %.sroa.2225.0.copyload.i = load ptr, ptr %i.ake, align 8, !tbaa !216
  %.not.i.i.i301.i = icmp eq i16 %.sroa.0223.0.copyload.i, 1
  %i.apj = icmp eq ptr %.sroa.2225.0.copyload.i, null
  %.not4.i.i.i375 = select i1 %.not.i.i.i301.i, i1 %i.apj, i1 false
  br i1 %.not4.i.i.i375, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.i377, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %.not.i.i302.i = icmp eq i16 %.sroa.0223.0.copyload.i, 0
  br i1 %.not.i.i302.i, label %_ZN12_GLOBAL__N_111DAGCombiner23reduceBuildVecToShuffleEPN4llvm6SDNodeE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i376

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i376: ; preds = %bb.gh
  %i.apk = getelementptr inbounds nuw i8, ptr %i.api, i64 112
  %i.apl = zext i16 %.sroa.0223.0.copyload.i to i64 ; 2 uses
  %i.apm = getelementptr inbounds nuw [8 x i8], ptr %i.apk, i64 %i.apl
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !398
  %.not.i303.not.i = icmp eq ptr %i.apn, null
  br i1 %.not.i303.not.i, label %_ZN12_GLOBAL__N_111DAGCombiner23reduceBuildVecToShuffleEPN4llvm6SDNodeE.exit.thread, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.i377

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.i377: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i376, %bb.gg
  %.pre-phi.i.i378 = phi i64 [ %i.apl, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i376 ], [ 1, %bb.gg ]
  %i.apo = getelementptr inbounds nuw [537 x i8], ptr %i.api, i64 %.pre-phi.i.i378
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 6355
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !400
  %i.apr = icmp eq i8 %i.apq, 0
  br i1 %i.apr, label %bb.gi, label %_ZN12_GLOBAL__N_111DAGCombiner23reduceBuildVecToShuffleEPN4llvm6SDNodeE.exit.thread

bb.gi:                                            ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.i377, %bb.gf
  %i.aps = load i16, ptr %i.akm, align 8, !tbaa !205 ; 9 uses
  %i.apt = zext i16 %i.aps to i32                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.apu = zext i16 %i.aps to i64                 ; 19 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  store ptr %i.apv, ptr %37, align 8, !tbaa !43
  %i.apw = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_111DAGCombiner17visitBUILD_VECTOREPN4llvm6SDNodeE:bb.a
  %indvars.iv706.i = phi i64 [ 0, %.lr.ph666.i ], [ %indvars.iv.next707.i, %bb.ko ] ; 2 uses
  %i.bcp = shl nuw nsw i64 %indvars.iv706.i, 1    ; 2 uses
  %i.bcq = or disjoint i64 %i.bcp, 1              ; 2 uses
  %i.bcr = load ptr, ptr %38, align 8, !tbaa !43  ; 2 uses
  %i.bcs = getelementptr inbounds nuw [16 x i8], ptr %i.bcr, i64 %i.bcq
  %i.bct = add nuw nsw i64 %i.bcp, 2              ; 3 uses
  %i.bcu = load i32, ptr %i.aqb, align 8, !tbaa !76
  %i.bcv = zext i32 %i.bcu to i64
  %i.bcw = icmp samesign ult i64 %i.bct, %i.bcv
  br i1 %i.bcw, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.bcx = getelementptr inbounds nuw [16 x i8], ptr %i.bcr, i64 %i.bct ; 2 uses
  %.sroa.0500.0.copyload.i = load ptr, ptr %i.bcx, align 8, !tbaa !74
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bcx, i64 8
  %i.bcy = load <2 x i32>, ptr %.sroa.6.0..sroa_idx.i, align 8
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.sroa.0500.0.i = phi ptr [ %.sroa.0500.0.copyload.i, %bb.if ], [ null, %bb.ie ] ; 9 uses
  %i.bcz = phi <2 x i32> [ %i.bcy, %bb.if ], [ zeroinitializer, %bb.ie ] ; 2 uses
  %i.bda = extractelement <2 x i32> %i.bcz, i64 0 ; 7 uses
  %i.bdb = load ptr, ptr %37, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %i.bcs, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  store ptr %.sroa.0500.0.i, ptr %26, align 8
  store <2 x i32> %i.bcz, ptr %.sroa.2508.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.bdc = load ptr, ptr %i.b, align 8, !tbaa !212 ; 2 uses
  %.sroa.0.0.copyload.i.i367.i = load i16, ptr %i.bdc, align 8, !tbaa !214 ; 9 uses
  %.sroa.21.0..sroa_idx.i.i368.i = getelementptr inbounds nuw i8, ptr %i.bdc, i64 8
  %.sroa.21.0.copyload.i.i369.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i368.i, align 8, !tbaa !216 ; 5 uses
  store i16 %.sroa.0.0.copyload.i.i367.i, ptr %16, align 8
  store ptr %.sroa.21.0.copyload.i.i369.i, ptr %i.bbb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.bdd = load ptr, ptr %27, align 8, !tbaa !193 ; 6 uses
  %i.bde = load i32, ptr %i.bbc, align 8, !tbaa !211 ; 6 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bdd, i64 48
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !212
  %i.bdh = zext i32 %i.bde to i64
  %i.bdi = getelementptr inbounds nuw [16 x i8], ptr %i.bdg, i64 %i.bdh ; 2 uses
  %.sroa.0.0.copyload.i.i.i370.i = load i16, ptr %i.bdi, align 8, !tbaa !214 ; 11 uses
  %.sroa.21.0..sroa_idx.i.i.i371.i = getelementptr inbounds nuw i8, ptr %i.bdi, i64 8
  %.sroa.21.0.copyload.i.i.i372.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i371.i, align 8, !tbaa !216 ; 6 uses
  store i16 %.sroa.0.0.copyload.i.i.i370.i, ptr %17, align 8
  store ptr %.sroa.21.0.copyload.i.i.i372.i, ptr %i.bbd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %.not.i373.i = icmp eq ptr %.sroa.0500.0.i, null ; 4 uses
  br i1 %.not.i373.i, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bdj = getelementptr inbounds nuw i8, ptr %.sroa.0500.0.i, i64 48
  %i.bdk = load ptr, ptr %i.bdj, align 8, !tbaa !212
  %i.bdl = zext i32 %i.bda to i64
  %i.bdm = getelementptr inbounds nuw [16 x i8], ptr %i.bdk, i64 %i.bdl ; 2 uses
  %.sroa.0.0.copyload.i.i249.i.i = load i16, ptr %i.bdm, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i250.i.i = getelementptr inbounds nuw i8, ptr %i.bdm, i64 8
  %.sroa.21.0.copyload.i.i251.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i250.i.i, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i249.i.i, ptr %18, align 8
  store ptr %.sroa.21.0.copyload.i.i251.i.i, ptr %i.bbe, align 8
  br label %bb.ij

bb.ii:                                            ; preds = %bb.ig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !442
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %.not.i.i.i374.i = icmp eq i16 %.sroa.0.0.copyload.i.i367.i, 0 ; 2 uses
  br i1 %.not.i.i.i374.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, label %.split.i.i.i349

.split.i.i.i349:                                  ; preds = %bb.ij
  %i.bdn = add i16 %.sroa.0.0.copyload.i.i367.i, -163
  %spec.select.i.i.i.i.i350 = icmp ult i16 %i.bdn, 53
  br i1 %spec.select.i.i.i.i.i350, label %bb.ik, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i:     ; preds = %bb.ij
  %i.bdo = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #37
  br i1 %i.bdo, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, %.split.i.i.i349
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i: ; preds = %.split.i.i.i349
  %i.bdp = zext i16 %.sroa.0.0.copyload.i.i367.i to i64
  %i.bdq = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bdp
  %i.bdr = getelementptr i8, ptr %i.bdq, i64 -2
  %i.bds = load i16, ptr %i.bdr, align 2, !tbaa !379
  %i.bdt = zext i16 %i.bds to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i

bb.il:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i
  %i.bdu = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i:   ; preds = %bb.il, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i
  %i.bdv = phi i32 [ %i.bdt, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i ], [ %i.bdu, %bb.il ] ; 13 uses
  br i1 %.2260786790.i, label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit259.i.i, label %bb.im

bb.im:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i
  %.not.i.i254.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i370.i, 0
  br i1 %.not.i.i254.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i258.i.i, label %.split.i255.i.i

.split.i255.i.i:                                  ; preds = %bb.im
  %i.bdw = add i16 %.sroa.0.0.copyload.i.i.i370.i, -163
  %spec.select.i.i.i256.i.i = icmp ult i16 %i.bdw, 53
  br i1 %spec.select.i.i.i256.i.i, label %bb.in, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i257.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i258.i.i:  ; preds = %bb.im
  %i.bdx = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #37
  br i1 %i.bdx, label %bb.in, label %bb.io

bb.in:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i258.i.i, %.split.i255.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i257.i.i: ; preds = %.split.i255.i.i
  %i.bdy = zext i16 %.sroa.0.0.copyload.i.i.i370.i to i64
  %i.bdz = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bdy
  %i.bea = getelementptr i8, ptr %i.bdz, i64 -2
  %i.beb = load i16, ptr %i.bea, align 2, !tbaa !379
  %i.bec = zext i16 %i.beb to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit259.i.i

bb.io:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i258.i.i
  %i.bed = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit259.i.i

_ZNK4llvm3EVT20getVectorNumElementsEv.exit259.i.i: ; preds = %bb.io, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i257.i.i, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i
  %i.bee = phi i32 [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i ], [ %i.bec, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i257.i.i ], [ %i.bed, %bb.io ] ; 5 uses
  br i1 %.not.i.i.i374.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit259.i.i
  %i.bef = zext i16 %.sroa.0.0.copyload.i.i367.i to i64
  %i.beg = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bef
  %i.beh = getelementptr i8, ptr %i.beg, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.beh, align 16
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit.i.i

bb.iq:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit259.i.i
  %i.bei = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #37
  %i.bej = extractvalue { i64, i8 } %i.bei, 0
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit.i.i:     ; preds = %bb.iq, %bb.ip
  %.pn.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.ip ], [ %i.bej, %bb.iq ] ; 7 uses
  %.not.i.i261.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i370.i, 0
  br i1 %.not.i.i261.i.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit.i.i
  %i.bek = zext i16 %.sroa.0.0.copyload.i.i.i370.i to i64
  %i.bel = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bek
  %i.bem = getelementptr i8, ptr %i.bel, i64 -16
  %.sroa.0.0.copyload.i.i.i262.i.i = load i64, ptr %i.bem, align 16
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit264.i.i

bb.is:                                            ; preds = %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit.i.i
  %i.ben = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #37
  %i.beo = extractvalue { i64, i8 } %i.ben, 0
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit264.i.i

_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit264.i.i:  ; preds = %bb.is, %bb.ir
  %.pn.i.i263.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i262.i.i, %bb.ir ], [ %i.beo, %bb.is ] ; 6 uses
  %i.bep = load i16, ptr %18, align 8, !tbaa !387 ; 5 uses
  %.not.i.i265.i.i = icmp eq i16 %i.bep, 0
  br i1 %.not.i.i265.i.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit264.i.i
  %i.beq = zext i16 %i.bep to i64
  %i.ber = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.beq
  %i.bes = getelementptr i8, ptr %i.ber, i64 -16
  %.sroa.0.0.copyload.i.i.i266.i.i = load i64, ptr %i.bes, align 16
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit268.i.i

bb.iu:                                            ; preds = %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit264.i.i
  %i.bet = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %18) #37
  %i.beu = extractvalue { i64, i8 } %i.bet, 0
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit268.i.i

_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit268.i.i:  ; preds = %bb.iu, %bb.it
  %.pn.i.i267.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i266.i.i, %bb.it ], [ %i.beu, %bb.iu ]
  %.not.i.i375.i = icmp ne i16 %.sroa.0.0.copyload.i.i.i370.i, %.sroa.0.0.copyload.i.i367.i
  %i.bev = icmp ne ptr %.sroa.21.0.copyload.i.i.i372.i, %.sroa.21.0.copyload.i.i369.i
  %i.bew = select i1 %.not.i.i375.i, i1 true, i1 %i.bev
  br i1 %i.bew, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit268.i.i
  %.not.i269.i.i = icmp ne i16 %i.bep, %.sroa.0.0.copyload.i.i367.i
  %i.bex = load ptr, ptr %i.bbe, align 8
  %i.bey = icmp ne ptr %i.bex, %.sroa.21.0.copyload.i.i369.i
  %i.bez = select i1 %.not.i269.i.i, i1 true, i1 %i.bey
  br i1 %i.bez, label %bb.iw, label %bb.ka

bb.iw:                                            ; preds = %bb.iv, %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit268.i.i
  %i.bfa = urem i64 %.pn.i.i.i.i, %.pn.i.i263.i.i
  %i.bfb = udiv i64 %.pn.i.i.i.i, %.pn.i.i263.i.i ; 3 uses
  %i.bfc = icmp eq i64 %i.bfa, 0
  br i1 %i.bfc, label %bb.ix, label %bb.jc

bb.ix:                                            ; preds = %bb.iw
  %.sroa.2189.0.copyload.i.i = load ptr, ptr %i.bbe, align 8, !tbaa !216
  %.not.i.i270.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i370.i, %i.bep
  %i.bfd = icmp eq ptr %.sroa.21.0.copyload.i.i.i372.i, %.sroa.2189.0.copyload.i.i
  %.not4.i.i395.i = select i1 %.not.i.i270.i.i, i1 %i.bfd, i1 false
  br i1 %.not4.i.i395.i, label %bb.iy, label %bb.jc

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %i.bfe = and i64 %i.bfb, 4294967295             ; 7 uses
  %i.bff = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.bfg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bff, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.0.0.copyload.i.i.i370.i, ptr %.sroa.21.0.copyload.i.i.i372.i) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %.fca.0.extract179.i.i = extractvalue { ptr, i32 } %i.bfg, 0 ; 11 uses
  %.fca.1.extract180.i.i = extractvalue { ptr, i32 } %i.bfg, 1 ; 11 uses
  store ptr %i.bbk, ptr %19, align 8, !tbaa !43
  store i32 0, ptr %i.bbl, align 8, !tbaa !76
  store i32 2, ptr %i.bbm, align 4, !tbaa !77
  %i.bfh = icmp samesign ugt i64 %i.bfe, 2
  br i1 %i.bfh, label %.lr.ph.i.i.i.preheader.i.i.i.i.i, label %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i.i:                 ; preds = %bb.iy
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull %i.bbk, i64 noundef %i.bfe, i64 noundef 16) #36
  %i.bfi = load ptr, ptr %19, align 8, !tbaa !43  ; 4 uses
  %xtraiter727 = and i64 %i.bfb, 7                ; 2 uses
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  br i1 %lcmp.mod728.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bfk, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.bfi, %.lr.ph.i.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bfj, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.bfe, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  %prol.iter729 = phi i64 [ %prol.iter729.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i.i ]
  store ptr %.fca.0.extract179.i.i, ptr %.09.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !74
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 8
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !198
  %i.bfj = add nsw i64 %.068.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter729.next = add i64 %prol.iter729, 1   ; 2 uses
  %prol.iter729.cmp.not = icmp eq i64 %prol.iter729.next, %xtraiter727
  br i1 %prol.iter729.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1691

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bfi, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.bfk, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bfe, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %i.bfj, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.bfl = icmp samesign ult i64 %i.bfe, 8
  br i1 %i.bfl, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.bfu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i.i.i = phi i64 [ %i.bft, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.fca.0.extract179.i.i, ptr %.09.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i, align 8, !tbaa !198
  %i.bfm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16
  store ptr %.fca.0.extract179.i.i, ptr %i.bfm, align 8, !tbaa !74
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !198
  %i.bfn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 32
  store ptr %.fca.0.extract179.i.i, ptr %i.bfn, align 8, !tbaa !74
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 40
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !198
  %i.bfo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 48
  store ptr %.fca.0.extract179.i.i, ptr %i.bfo, align 8, !tbaa !74
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 56
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !198
  %i.bfp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 64
  store ptr %.fca.0.extract179.i.i, ptr %i.bfp, align 8, !tbaa !74
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 72
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !198
  %i.bfq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 80
  store ptr %.fca.0.extract179.i.i, ptr %i.bfq, align 8, !tbaa !74
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 88
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !198
  %i.bfr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 96
  store ptr %.fca.0.extract179.i.i, ptr %i.bfr, align 8, !tbaa !74
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 104
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.6, align 8, !tbaa !198
  %i.bfs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 112
  store ptr %.fca.0.extract179.i.i, ptr %i.bfs, align 8, !tbaa !74
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 120
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.i.i.7, align 8, !tbaa !198
  %i.bft = add nsw i64 %.068.i.i.i.i.i.i.i.i, -8  ; 2 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.bft, 0
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4

_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i: ; preds = %bb.iy
  %.not.i272.i.i = icmp eq i64 %i.bfe, 0
  br i1 %.not.i272.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i, label %.lr.ph.i.i.i.i.i.i396.i

.lr.ph.i.i.i.i.i.i396.i:                          ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i
  store ptr %.fca.0.extract179.i.i, ptr %i.bbk, align 8, !tbaa !74
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i, align 8, !tbaa !198
  %.not.i.i.i.i.i.i397.i = icmp eq i64 %i.bfe, 1
  br i1 %.not.i.i.i.i.i.i397.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i, label %.lr.ph.i.i.i.i.i.i396.i.1

.lr.ph.i.i.i.i.i.i396.i.1:                        ; preds = %.lr.ph.i.i.i.i.i.i396.i
  store ptr %.fca.0.extract179.i.i, ptr %i.bbs, align 8, !tbaa !74
  store i32 %.fca.1.extract180.i.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.i.i.1, align 8, !tbaa !198
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i

_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i396.i, %.lr.ph.i.i.i.i.i.i396.i.1, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i
  %i.bfv = phi ptr [ %i.bfi, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bbk, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i ], [ %i.bfi, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bbk, %.lr.ph.i.i.i.i.i.i396.i.1 ], [ %i.bbk, %.lr.ph.i.i.i.i.i.i396.i ]
  %storemerge.i.i.i = trunc i64 %i.bfb to i32
  store i32 %storemerge.i.i.i, ptr %i.bbl, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bfv, ptr noundef nonnull readonly align 8 dereferenceable(12) %27, i64 12, i1 false), !tbaa.struct !217
  br i1 %.not.i373.i, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i
  %i.bfw = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.0170.0.copyload.i.i = load i16, ptr %17, align 8, !tbaa !214
  %.sroa.2172.0.copyload.i.i = load ptr, ptr %i.bbd, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.bfx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bfw, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %.sroa.0170.0.copyload.i.i, ptr %.sroa.2172.0.copyload.i.i) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %.fca.0.extract166.i.i = extractvalue { ptr, i32 } %i.bfx, 0
  %.fca.1.extract167.i.i = extractvalue { ptr, i32 } %i.bfx, 1
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i
  %.sroa.0173.0.i.i = phi ptr [ %.fca.0.extract166.i.i, %bb.iz ], [ %.sroa.0500.0.i, %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i ]
  %.sroa.5175.0.i.i = phi i32 [ %.fca.1.extract167.i.i, %bb.iz ], [ %i.bda, %_ZN4llvm11SmallVectorINS_7SDValueELj2EEC2EmRKS1_.exit.i.i ]
  %i.bfy = load ptr, ptr %19, align 8, !tbaa !43  ; 3 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 16
  store ptr %.sroa.0173.0.i.i, ptr %i.bfz, align 8, !tbaa !74
  %.sroa.5175.0..sroa_idx176.i.i = getelementptr inbounds nuw i8, ptr %i.bfy, i64 24
  store i32 %.sroa.5175.0.i.i, ptr %.sroa.5175.0..sroa_idx176.i.i, align 8, !tbaa !198
  %i.bga = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.0160.0.copyload.i.i = load i16, ptr %16, align 8, !tbaa !214
  %.sroa.2162.0.copyload.i.i = load ptr, ptr %i.bbb, align 8, !tbaa !216
  store ptr %i.bfy, ptr %20, align 8, !tbaa !383
  %i.bgb = load i32, ptr %i.bbl, align 8, !tbaa !76
  %i.bgc = zext i32 %i.bgb to i64
  store i64 %i.bgc, ptr %i.bbn, align 8, !tbaa !384
  %i.bgd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bga, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 %.sroa.0160.0.copyload.i.i, ptr %.sroa.2162.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %20) #36 ; 2 uses
  %.fca.0.extract156.i.i = extractvalue { ptr, i32 } %i.bgd, 0
  %.fca.1.extract157.i.i = extractvalue { ptr, i32 } %i.bgd, 1
  store ptr null, ptr %26, align 8, !tbaa !74
  store i32 0, ptr %.sroa.2508.0..sroa_idx.i, align 8, !tbaa !198
  %i.bge = load ptr, ptr %19, align 8, !tbaa !43  ; 2 uses
  %i.bgf = icmp eq ptr %i.bge, %i.bbk
  br i1 %i.bgf, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit.i.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call void @free(ptr noundef %i.bge) #36
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit.i.i: ; preds = %bb.jb, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.ka

bb.jc:                                            ; preds = %bb.ix, %bb.iw
  %i.bgg = shl i64 %.pn.i.i.i.i, 1
  %i.bgh = icmp eq i64 %.pn.i.i263.i.i, %i.bgg
  br i1 %i.bgh, label %bb.jd, label %bb.jn

bb.jd:                                            ; preds = %bb.jc
  %i.bgi = load ptr, ptr %i.akf, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %i.bgj = load ptr, ptr %i.bgi, align 8, !tbaa !45
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 1672
  %i.bgl = load ptr, ptr %i.bgk, align 8
  %i.bgm = call noundef zeroext i1 %i.bgl(ptr noundef nonnull align 8 dereferenceable(518435) %i.bgi, i16 %.sroa.0.0.copyload.i.i367.i, ptr %.sroa.21.0.copyload.i.i369.i, i16 %.sroa.0.0.copyload.i.i.i370.i, ptr %.sroa.21.0.copyload.i.i.i372.i, i32 noundef %i.bdv) #36, !inline_history !1692
  br i1 %i.bgm, label %bb.je, label %_ZN12_GLOBAL__N_111DAGCombiner21createBuildVecShuffleERKN4llvm5SDLocEPNS1_6SDNodeENS1_8ArrayRefIiEENS1_7SDValueES9_jb.exit.thread.i

bb.je:                                            ; preds = %bb.jd
  br i1 %.not.i373.i, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.bgn = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0144.0.copyload.i.i = load i16, ptr %16, align 8, !tbaa !214
  %.sroa.2146.0.copyload.i.i = load ptr, ptr %i.bbb, align 8, !tbaa !216
  %i.bgo = zext i32 %i.bdv to i64
  %i.bgp = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.bgn, i64 noundef %i.bgo, ptr noundef nonnull align 8 dereferenceable(12) %35, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract140.i.i = extractvalue { ptr, i32 } %i.bgp, 0
  %.fca.1.extract141.i.i = extractvalue { ptr, i32 } %i.bgp, 1
  store ptr %.fca.0.extract140.i.i, ptr %21, align 8
  store i32 %.fca.1.extract141.i.i, ptr %.sroa.2143.0..sroa_idx.i.i, align 8
  %i.bgq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bgn, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %35, i16 %.sroa.0144.0.copyload.i.i, ptr %.sroa.2146.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %27, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21) #36 ; 2 uses
  %.fca.0.extract136.i.i = extractvalue { ptr, i32 } %i.bgq, 0 ; 2 uses
  %.fca.1.extract137.i.i = extractvalue { ptr, i32 } %i.bgq, 1 ; 2 uses
  store ptr %.fca.0.extract136.i.i, ptr %26, align 8, !tbaa !74
  store i32 %.fca.1.extract137.i.i, ptr %.sroa.2508.0..sroa_idx.i, align 8, !tbaa !198
  %i.bgr = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0130.0.copyload.i.i = load i16, ptr %16, align 8, !tbaa !214
  %.sroa.2132.0.copyload.i.i = load ptr, ptr %i.bbb, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.bdd, ptr %12, align 8, !tbaa !74
  store i32 %i.bde, ptr %.sroa.211.0..sroa_idx.i.i.i, align 8, !tbaa !198
  %i.bgs = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.bgr, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %35, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract1.i.i.i = extractvalue { ptr, i32 } %i.bgs, 0
  %.fca.1.extract2.i.i.i = extractvalue { ptr, i32 } %i.bgs, 1
  store ptr %.fca.0.extract1.i.i.i, ptr %13, align 8
  store i32 %.fca.1.extract2.i.i.i, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_111DAGCombiner22visitEXTRACT_SUBVECTOREPN4llvm6SDNodeE:bb.a
  %i.jn = load ptr, ptr %i.jk, align 8, !tbaa !45
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1672
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = call noundef zeroext i1 %i.jp(ptr noundef nonnull align 8 dereferenceable(518435) %i.jk, i16 %i.ix, ptr %.sroa.2312.0.copyload, i16 %.sroa.0.0.copyload.i.i496, ptr %.sroa.21.0.copyload.i.i498, i32 noundef %i.jm) #36
  br i1 %i.jq, label %bb.ap, label %.critedge13

bb.ap:                                            ; preds = %bb.ao
  %i.jr = load i16, ptr %44, align 8, !tbaa !387  ; 2 uses
  %.not.i519 = icmp eq i16 %i.jr, 0
  br i1 %.not.i519, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit, label %.split853

.split853:                                        ; preds = %bb.ap
  %i.js = add i16 %i.jr, -19
  %spec.select.i.i520 = icmp ult i16 %i.js, 144
  br i1 %spec.select.i.i520, label %bb.aq, label %.critedge13

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit:        ; preds = %bb.ap
  %i.jt = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %44) #37
  br i1 %i.jt, label %bb.aq, label %.critedge13

bb.aq:                                            ; preds = %.split853, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit
  %i.ju = load i16, ptr %41, align 8, !tbaa !387  ; 3 uses
  %.not.i521 = icmp eq i16 %i.ju, 0
  br i1 %.not.i521, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit523, label %.split854

.split854:                                        ; preds = %bb.aq
  %i.jv = add i16 %i.ju, -19
  %spec.select.i.i522 = icmp ult i16 %i.jv, 144
  br i1 %spec.select.i.i522, label %bb.ar, label %.critedge13

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit523:     ; preds = %bb.aq
  %i.jw = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %41) #37
  br i1 %i.jw, label %bb.ar, label %.critedge13

bb.ar:                                            ; preds = %.split854, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit523
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0795.0.copyload, i64 48
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !212
  %i.jz = zext i32 %.sroa.48.0.copyload to i64
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.jz ; 2 uses
  %.sroa.0.0.copyload.i.i524 = load i16, ptr %i.ka, align 8, !tbaa !214 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i525 = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %.sroa.21.0.copyload.i.i526 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i525, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i524, ptr %45, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %.sroa.21.0.copyload.i.i526, ptr %i.kb, align 8
  %.not.i529 = icmp eq i16 %.sroa.0.0.copyload.i.i524, 0
  br i1 %.not.i529, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit531, label %.split855

.split855:                                        ; preds = %bb.ar
  %i.kc = add i16 %.sroa.0.0.copyload.i.i524, -19
  %spec.select.i.i530 = icmp ult i16 %i.kc, 144
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br i1 %spec.select.i.i530, label %.critedge427, label %bb.as

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit531:     ; preds = %bb.ar
  %i.kd = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %45) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br i1 %i.kd, label %.critedge427, label %bb.as

.critedge427:                                     ; preds = %.split855, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit531
  %i.ke = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %.sroa.2306.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !216
  store ptr %.sroa.0787.0.copyload, ptr %46, align 8, !tbaa !74
  %.sroa.6789.0..sroa_idx790 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store <2 x i32> %i.ic, ptr %.sroa.6789.0..sroa_idx790, align 8
  %i.kf = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.ke, i64 noundef %i.jl, ptr noundef nonnull align 8 dereferenceable(12) %42, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract300 = extractvalue { ptr, i32 } %i.kf, 0
  %.fca.1.extract301 = extractvalue { ptr, i32 } %i.kf, 1
  store ptr %.fca.0.extract300, ptr %47, align 8
  %.sroa.2303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 %.fca.1.extract301, ptr %.sroa.2303.0..sroa_idx, align 8
  %i.kg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ke, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %i.ju, ptr %.sroa.2306.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47) #36 ; 2 uses
  %.fca.0.extract296 = extractvalue { ptr, i32 } %i.kg, 0
  %.fca.1.extract297 = extractvalue { ptr, i32 } %i.kg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #36
  br label %bb.he

.critedge13:                                      ; preds = %.split854, %.split853, %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit518, %bb.an, %bb.ao, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit523
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br label %bb.as

bb.as:                                            ; preds = %.split855, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit531, %.critedge13
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #36
  %.pr856 = load i32, ptr %i.w, align 8, !tbaa !72
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNK4llvm7SDValue9hasOneUseEv.exit489.thread
  %i.kh = phi i32 [ %.pr856, %bb.as ], [ %i.hx, %_ZNK4llvm7SDValue9hasOneUseEv.exit489.thread ] ; 2 uses
  %i.ki = icmp eq i32 %i.kh, 248
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #36
  br i1 %i.ki, label %bb.au, label %.critedge15

bb.au:                                            ; preds = %bb.at
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0795.0.copyload, i64 40 ; 4 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !204 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !193
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !211
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !212
  %i.kq = zext i32 %i.kn to i64
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.kp, i64 %i.kq ; 2 uses
  %.sroa.0.0.copyload.i.i532 = load i16, ptr %i.kr, align 8, !tbaa !214 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i533 = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %.sroa.21.0.copyload.i.i534 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i533, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i532, ptr %48, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %.sroa.21.0.copyload.i.i534, ptr %i.ks, align 8
  %.not.i537 = icmp eq i16 %.sroa.0.0.copyload.i.i532, 0
  br i1 %.not.i537, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split857

.split857:                                        ; preds = %bb.au
  %i.kt = add i16 %.sroa.0.0.copyload.i.i532, -19
  %spec.select.i.i538 = icmp ult i16 %i.kt, 197
  br i1 %spec.select.i.i538, label %bb.av, label %.critedge15

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.au
  %i.ku = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #37
  br i1 %i.ku, label %bb.av, label %.critedge15

bb.av:                                            ; preds = %.split857, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !324, !range !52, !noundef !53
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.aw, label %.critedge17

bb.aw:                                            ; preds = %bb.av
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0293.0.copyload = load i16, ptr %41, align 8, !tbaa !214 ; 3 uses
  %.sroa.2295.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !216
  %.not.i.i.i539 = icmp eq i16 %.sroa.0293.0.copyload, 1
  %i.la = icmp eq ptr %.sroa.2295.0.copyload, null
  %.not4.i.i540 = select i1 %.not.i.i.i539, i1 %i.la, i1 false
  br i1 %.not4.i.i540, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit547, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i541 = icmp eq i16 %.sroa.0293.0.copyload, 0
  br i1 %.not.i.i541, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit547.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i542

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i542: ; preds = %bb.ax
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 112
  %i.lc = zext i16 %.sroa.0293.0.copyload to i64  ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !398
  %.not.i543.not = icmp eq ptr %i.le, null
  br i1 %.not.i543.not, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit547.thread, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit547

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit547.thread: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i542, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  br label %.thread986

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit547: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i542, %bb.aw
  %.pre-phi.i546 = phi i64 [ %i.lc, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i542 ], [ 1, %bb.aw ]
  %i.lf = getelementptr inbounds nuw [537 x i8], ptr %i.kz, i64 %.pre-phi.i546
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 6432
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !400
  %i.li = icmp eq i8 %i.lh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  br i1 %i.li, label %bb.ay, label %.thread986

.critedge17:                                      ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge17, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit547
  %.sroa.0784.0.copyload = load ptr, ptr %i.kk, align 8, !tbaa !74
  %.sroa.5785.0.copyload = load i32, ptr %i.km, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #36
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0784.0.copyload, i64 48
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !212
  %i.ll = zext i32 %.sroa.5785.0.copyload to i64
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %i.ll ; 2 uses
  %.sroa.0.0.copyload.i.i548 = load i16, ptr %i.lm, align 8, !tbaa !214 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i549 = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.sroa.21.0.copyload.i.i550 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i549, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i548, ptr %49, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %.sroa.21.0.copyload.i.i550, ptr %i.ln, align 8
  %.not.i.i553 = icmp eq i16 %.sroa.0.0.copyload.i.i548, 0
  br i1 %.not.i.i553, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lo = zext i16 %.sroa.0.0.copyload.i.i548 to i64
  %i.lp = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 -2
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !379
  %i.ls = add i16 %.sroa.0.0.copyload.i.i548, -163
  %spec.select.i.i.i.i554 = icmp ult i16 %i.ls, 53
  %.sroa.2.0.insert.shift.i.i.i.i555 = select i1 %spec.select.i.i.i.i554, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i556 = zext i16 %i.lr to i64
  %.sroa.0.0.insert.insert.i.i.i.i557 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i555, %.sroa.0.0.insert.ext.i.i.i.i556
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit560

bb.ba:                                            ; preds = %bb.ay
  %i.lt = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %49) #37
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit560

_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit560: ; preds = %bb.az, %bb.ba
  %.sroa.0.0.in.i.i558 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i.i557, %bb.az ], [ %i.lt, %bb.ba ]
  %.sroa.0.0.extract.trunc.i559 = trunc i64 %.sroa.0.0.in.i.i558 to i32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #36
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0795.0.copyload, i64 48
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !212
  %i.lw = zext i32 %.sroa.48.0.copyload to i64
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.lw ; 2 uses
  %.sroa.0.0.copyload.i.i561 = load i16, ptr %i.lx, align 8, !tbaa !214 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i562 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.sroa.21.0.copyload.i.i563 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i562, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i561, ptr %50, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %.sroa.21.0.copyload.i.i563, ptr %i.ly, align 8
  %.not.i.i566 = icmp eq i16 %.sroa.0.0.copyload.i.i561, 0
  br i1 %.not.i.i566, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit560
  %i.lz = zext i16 %.sroa.0.0.copyload.i.i561 to i64
  %i.ma = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.lz
  %i.mb = getelementptr i8, ptr %i.ma, i64 -2
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !379
  %i.md = add i16 %.sroa.0.0.copyload.i.i561, -163
  %spec.select.i.i.i.i567 = icmp ult i16 %i.md, 53
  %.sroa.2.0.insert.shift.i.i.i.i568 = select i1 %spec.select.i.i.i.i567, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i569 = zext i16 %i.mc to i64
  %.sroa.0.0.insert.insert.i.i.i.i570 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i568, %.sroa.0.0.insert.ext.i.i.i.i569
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit573

bb.bc:                                            ; preds = %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit560
  %i.me = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %50) #37
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit573

_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit573: ; preds = %bb.bb, %bb.bc
  %.sroa.0.0.in.i.i571 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i.i570, %bb.bb ], [ %i.me, %bb.bc ]
  %.sroa.0.0.extract.trunc.i572 = trunc i64 %.sroa.0.0.in.i.i571 to i32 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #36
  %i.mf = urem i32 %.sroa.0.0.extract.trunc.i559, %.sroa.0.0.extract.trunc.i572
  %i.mg = udiv i32 %.sroa.0.0.extract.trunc.i559, %.sroa.0.0.extract.trunc.i572 ; 2 uses
  %i.mh = icmp eq i32 %i.mf, 0
  br i1 %i.mh, label %bb.bd, label %.critedge429

bb.bd:                                            ; preds = %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit573
  %i.mi = call i64 @_ZNK4llvm3EVT21getVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %41) ; 2 uses
  %.sroa.0.0.extract.trunc.i574 = trunc i64 %i.mi to i32
  %.sroa.6.0.extract.shift.i = and i64 %i.mi, 1095216660480
  %i.mj = mul i32 %i.mg, %.sroa.0.0.extract.trunc.i574
  %.sroa.0.0.insert.ext.i = zext i32 %i.mj to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6.0.extract.shift.i, %.sroa.0.0.insert.ext.i
  %i.mk = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 80
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !491
  %i.mn = call { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %49) ; 2 uses
  %i.mo = extractvalue { i16, ptr } %i.mn, 0
  %i.mp = extractvalue { i16, ptr } %i.mn, 1
  %i.mq = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, i16 %i.mo, ptr %i.mp, i64 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.mr = extractvalue { i16, ptr } %i.mq, 0      ; 4 uses
  %i.ms = extractvalue { i16, ptr } %i.mq, 1      ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.not.i.i.i.i575 = icmp eq i16 %i.mr, 1
  %i.mv = icmp eq ptr %i.ms, null
  %.not4.i.i.i576 = select i1 %.not.i.i.i.i575, i1 %i.mv, i1 false
  br i1 %.not4.i.i.i576, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit582, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not.i16.i577 = icmp eq i16 %i.mr, 0
  br i1 %.not.i16.i577, label %.critedge429, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i578

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i578: ; preds = %bb.be
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 112
  %i.mx = zext i16 %i.mr to i64                   ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !398
  %.not.i579 = icmp eq ptr %i.mz, null
  br i1 %.not.i579, label %.critedge429, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit582

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit582: ; preds = %bb.bd, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i578
  %.pre-phi = phi i64 [ %i.mx, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i578 ], [ 1, %bb.bd ]
  %i.na = getelementptr inbounds nuw [537 x i8], ptr %i.mu, i64 %.pre-phi
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 6351
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !400
  %i.nd = and i8 %i.nc, -5
  %spec.select.i580 = icmp eq i8 %i.nd, 0
  br i1 %spec.select.i580, label %bb.bf, label %.critedge429

bb.bf:                                            ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit582
  %i.ne = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.nf = zext i32 %i.mg to i64
  %i.ng = mul i64 %.0.i.i.i.i, %i.nf
  %i.nh = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.ne, i64 noundef %i.ng, ptr noundef nonnull align 8 dereferenceable(12) %42, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract264 = extractvalue { ptr, i32 } %i.nh, 0
  %.fca.1.extract265 = extractvalue { ptr, i32 } %i.nh, 1
  %i.ni = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.nj = load ptr, ptr %i.kj, align 8, !tbaa !204
  store ptr %.fca.0.extract264, ptr %51, align 8, !tbaa !74
  %.sroa.4269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 %.fca.1.extract265, ptr %.sroa.4269.0..sroa_idx, align 8, !tbaa !198
  %i.nk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ni, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %i.mr, ptr %i.ms, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.nj, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %51) #36
  br label %.critedge436

.critedge429:                                     ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i578, %bb.be, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit582, %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit573
  %i.nl = urem i32 %.sroa.0.0.extract.trunc.i572, %.sroa.0.0.extract.trunc.i559
  %i.nm = udiv i32 %.sroa.0.0.extract.trunc.i572, %.sroa.0.0.extract.trunc.i559 ; 3 uses
  %i.nn = icmp eq i32 %i.nl, 0
  br i1 %i.nn, label %62, label %.critedge432

62:                                               ; preds = %.critedge429
  %63 = call i64 @_ZNK4llvm3EVT21getVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %41)
  %.not.i583 = icmp ugt i32 %.sroa.0.0.extract.trunc.i559, %.sroa.0.0.extract.trunc.i572
  br i1 %.not.i583, label %.critedge432, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit: ; preds = %62
  %.sroa.0780.0.extract.trunc = trunc i64 %63 to i32
  %i.no = urem i32 %.sroa.0780.0.extract.trunc, %i.nm
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %bb.bg, label %.critedge432

bb.bg:                                            ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit
  %i.nq = call i64 @_ZNK4llvm3EVT21getVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %41) ; 3 uses
  %.sroa.0775.0.extract.trunc = trunc i64 %i.nq to i32
  %i.nr = udiv i32 %.sroa.0775.0.extract.trunc, %i.nm ; 2 uses
  %i.ns = call { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %49) ; 2 uses
  %i.nt = extractvalue { i16, ptr } %i.ns, 0      ; 5 uses
  %i.nu = extractvalue { i16, ptr } %i.ns, 1      ; 3 uses
  %i.nv = zext i32 %i.nm to i64                   ; 2 uses
  %i.nw = urem i64 %.0.i.i.i.i, %i.nv
  %i.nx = udiv i64 %.0.i.i.i.i, %i.nv             ; 2 uses
  %i.ny = icmp eq i64 %i.nw, 0
  br i1 %i.ny, label %bb.bh, label %.critedge432

bb.bh:                                            ; preds = %bb.bg
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.nr to i64
  %i.nz = and i64 %i.nq, 1095216660480
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.nz, %.sroa.0.0.insert.ext.i.i
  %i.oa = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 80
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !491
  %i.od = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, i16 %i.nt, ptr %i.nu, i64 %.sroa.0.0.insert.insert.i.i) ; 2 uses
  %i.oe = extractvalue { i16, ptr } %i.od, 0      ; 4 uses
  %i.of = extractvalue { i16, ptr } %i.od, 1      ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !347, !nonnull !53, !align !197 ; 4 uses
  %.not.i.i.i.i584 = icmp eq i16 %i.oe, 1
  %i.oi = icmp eq ptr %i.of, null
  %.not4.i.i.i585 = select i1 %.not.i.i.i.i584, i1 %i.oi, i1 false
  br i1 %.not4.i.i.i585, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not.i16.i586 = icmp eq i16 %i.oe, 0
  br i1 %.not.i16.i586, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i587

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i587: ; preds = %bb.bi
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 112
  %i.ok = zext i16 %i.oe to i64                   ; 2 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ok
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !398
  %.not.i588 = icmp eq ptr %i.om, null
  br i1 %.not.i588, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591: ; preds = %bb.bh, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i587
  %.pre-phi935 = phi i64 [ %i.ok, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i587 ], [ 1, %bb.bh ]
  %i.on = getelementptr inbounds nuw [537 x i8], ptr %i.oh, i64 %.pre-phi935
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 6351
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !400
  %i.oq = and i8 %i.op, -5
  %spec.select.i589 = icmp eq i8 %i.oq, 0
  br i1 %spec.select.i589, label %bb.bj, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591.thread

bb.bj:                                            ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591
  %i.or = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.os = and i64 %i.nx, 4294967295
  %i.ot = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.or, i64 noundef %i.os, ptr noundef nonnull align 8 dereferenceable(12) %42, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract216 = extractvalue { ptr, i32 } %i.ot, 0
  %.fca.1.extract217 = extractvalue { ptr, i32 } %i.ot, 1
  %i.ou = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.ov = load ptr, ptr %i.kj, align 8, !tbaa !204
  store ptr %.fca.0.extract216, ptr %52, align 8, !tbaa !74
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i32 %.fca.1.extract217, ptr %.sroa.4221.0..sroa_idx, align 8, !tbaa !198
  %i.ow = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ou, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %i.oe, ptr %i.of, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ov, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %52) #36
  br label %.critedge436

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591.thread: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i587, %bb.bi, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591
  %i.ox = and i64 %i.nq, 4294967296
  %.not909 = icmp eq i64 %i.ox, 0
  %i.oy = icmp eq i32 %i.nr, 1
  %i.oz = select i1 %.not909, i1 %i.oy, i1 false
  br i1 %i.oz, label %bb.bk, label %.critedge432

bb.bk:                                            ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591.thread
  %.not.i.i.i.i592 = icmp eq i16 %i.nt, 1
  %i.pa = icmp eq ptr %i.nu, null
  %.not4.i.i.i593 = select i1 %.not.i.i.i.i592, i1 %i.pa, i1 false
  br i1 %.not4.i.i.i593, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit599, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not.i16.i594 = icmp eq i16 %i.nt, 0
  br i1 %.not.i16.i594, label %.critedge432, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i595

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i595: ; preds = %bb.bl
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oh, i64 112
  %i.pc = zext i16 %i.nt to i64                   ; 2 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !398
  %.not.i596 = icmp eq ptr %i.pe, null
  br i1 %.not.i596, label %.critedge432, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit599

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit599: ; preds = %bb.bk, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i595
  %.pre-phi937 = phi i64 [ %i.pc, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i595 ], [ 1, %bb.bk ]
  %i.pf = getelementptr inbounds nuw [537 x i8], ptr %i.oh, i64 %.pre-phi937
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 6348
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !400
  %i.pi = and i8 %i.ph, -5
  %spec.select.i597 = icmp eq i8 %i.pi, 0
  br i1 %spec.select.i597, label %bb.bm, label %.critedge432

bb.bm:                                            ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit599
  %i.pj = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.pk = and i64 %i.nx, 4294967295
  %i.pl = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.pj, i64 noundef %i.pk, ptr noundef nonnull align 8 dereferenceable(12) %42, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract186 = extractvalue { ptr, i32 } %i.pl, 0
  %.fca.1.extract187 = extractvalue { ptr, i32 } %i.pl, 1
  %i.pm = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.pn = load ptr, ptr %i.kj, align 8, !tbaa !204
  store ptr %.fca.0.extract186, ptr %53, align 8, !tbaa !74
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 %.fca.1.extract187, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !198
  %i.po = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.pm, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %i.nt, ptr %i.nu, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.pn, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %53) #36
  br label %.critedge436

.critedge432:                                     ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i595, %bb.bl, %62, %bb.bg, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit599, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit591.thread, %.critedge429, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #36
  %.pre = load i32, ptr %i.w, align 8, !tbaa !72
  br label %bb.bn

.critedge15:                                      ; preds = %.split857, %bb.at, %_ZNK4llvm3EVT8isVectorEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  br label %bb.bn

.thread986:                                       ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit547.thread, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit547
  %.sroa.0153.0.copyload.pre925987 = load i16, ptr %41, align 8, !tbaa !214
  %.sroa.2155.0.copyload.pre927988 = load ptr, ptr %i.f, align 8, !tbaa !216
  br label %bb.cf

bb.bn:                                            ; preds = %.critedge432, %.critedge15
  %i.pp = phi i32 [ %i.kh, %.critedge15 ], [ %.pre, %.critedge432 ]
  %i.pq = icmp eq i32 %i.pp, 165
  %.sroa.0153.0.copyload.pre925 = load i16, ptr %41, align 8, !tbaa !214 ; 12 uses
  %.sroa.2155.0.copyload.pre927 = load ptr, ptr %i.f, align 8, !tbaa !216 ; 6 uses
  br i1 %i.pq, label %bb.bo, label %bb.cf

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  store i16 %.sroa.0153.0.copyload.pre925, ptr %31, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sroa.2155.0.copyload.pre927, ptr %i.pr, align 8
  %.not.i.i600 = icmp eq i16 %.sroa.0153.0.copyload.pre925, 0 ; 3 uses
  br i1 %.not.i.i600, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ps = zext i16 %.sroa.0153.0.copyload.pre925 to i64
  %i.pt = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ps
  %i.pu = getelementptr i8, ptr %i.pt, i64 -2
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !379
  %i.pw = add i16 %.sroa.0153.0.copyload.pre925, -163
  %spec.select.i.i.i.i601 = icmp ult i16 %i.pw, 53
  %.sroa.2.0.insert.shift.i.i.i.i602 = select i1 %spec.select.i.i.i.i601, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i603 = zext i16 %i.pv to i64
  %.sroa.0.0.insert.insert.i.i.i.i604 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i602, %.sroa.0.0.insert.ext.i.i.i.i603
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.px = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %31) #37
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit.i

_ZNK4llvm3EVT21getVectorElementCountEv.exit.i:    ; preds = %bb.bq, %bb.bp
  %.sroa.0.0.in.i.i605 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i.i604, %bb.bp ], [ %i.px, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0795.0.copyload, i64 40
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !204 ; 5 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !193
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !211
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !212
  %i.qf = zext i32 %i.qc to i64
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %i.qf ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.qg, align 8, !tbaa !214 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %32, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.qh, align 8
  %.not.i28.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0 ; 2 uses
  br i1 %.not.i28.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit.i
  %i.qi = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.qj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 -2
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !379
  %i.qm = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i.i29.i = icmp ult i16 %i.qm, 53
  %.sroa.2.0.insert.shift.i.i.i30.i = select i1 %spec.select.i.i.i29.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i31.i = zext i16 %i.ql to i64
  %.sroa.0.0.insert.insert.i.i.i32.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i30.i, %.sroa.0.0.insert.ext.i.i.i31.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit35.i

bb.bs:                                            ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit.i
  %i.qn = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %32) #37
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit35.i

_ZNK4llvm3EVT21getVectorElementCountEv.exit35.i:  ; preds = %bb.bs, %bb.br
  %.sroa.0.0.in.i33.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i32.i, %bb.br ], [ %i.qn, %bb.bs ] ; 4 uses
  %.sroa.060.0.extract.trunc.i = trunc i64 %.sroa.0.0.in.i33.i to i32 ; 3 uses
  %i.qo = and i64 %.sroa.0.0.in.i33.i, 4294967295 ; 2 uses
  %i.qp = udiv i64 %.0.i.i.i.i, %i.qo             ; 5 uses
  %i.qq = urem i64 %.0.i.i.i.i, %i.qo
  %i.qr = trunc i64 %i.qp to i32
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0795.0.copyload, i64 64
  %i.qt = load i16, ptr %i.qs, align 8, !tbaa !205
  %i.qu = zext i16 %i.qt to i32
  %.not.i606 = icmp ugt i32 %i.qu, %i.qr
  br i1 %.not.i606, label %bb.bt, label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread

bb.bt:                                            ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit35.i
  br i1 %.not.i.i600, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qv = zext i16 %.sroa.0153.0.copyload.pre925 to i64
  %i.qw = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 -2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !379
  %i.qz = add i16 %.sroa.0153.0.copyload.pre925, -163
  %spec.select.i.i.i37.i = icmp ult i16 %i.qz, 53
  %.sroa.2.0.insert.shift.i.i.i38.i = select i1 %spec.select.i.i.i37.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i39.i = zext i16 %i.qy to i64
  %.sroa.0.0.insert.insert.i.i.i40.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i38.i, %.sroa.0.0.insert.ext.i.i.i39.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit43.i

bb.bv:                                            ; preds = %bb.bt
  %i.ra = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %31) #37
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit43.i

_ZNK4llvm3EVT21getVectorElementCountEv.exit43.i:  ; preds = %bb.bv, %bb.bu
  %.sroa.0.0.in.i41.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i40.i, %bb.bu ], [ %i.ra, %bb.bv ]
  br i1 %.not.i28.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit43.i
  %i.rb = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.rc = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.rb
  %i.rd = getelementptr i8, ptr %i.rc, i64 -2
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !379
  %i.rf = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i.i45.i = icmp ult i16 %i.rf, 53
  %.sroa.2.0.insert.shift.i.i.i46.i = select i1 %spec.select.i.i.i45.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i47.i = zext i16 %i.re to i64
  %.sroa.0.0.insert.insert.i.i.i48.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i46.i, %.sroa.0.0.insert.ext.i.i.i47.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit51.i

bb.bx:                                            ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit43.i
  %i.rg = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %32) #37
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit51.i

_ZNK4llvm3EVT21getVectorElementCountEv.exit51.i:  ; preds = %bb.bx, %bb.bw
  %.sroa.0.0.in.i49.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i48.i, %bb.bw ], [ %i.rg, %bb.bx ]
  %i.rh = trunc i64 %.sroa.0.0.in.i41.i to i40
  %i.ri = trunc i64 %.sroa.0.0.in.i49.i to i40
  %i.rj = icmp eq i40 %i.rh, %i.ri
  br i1 %i.rj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit51.i
  %i.rk = and i64 %i.qp, 4294967295
  %i.rl = getelementptr inbounds nuw [40 x i8], ptr %i.pz, i64 %i.rk ; 2 uses
  %.sroa.087.0.copyload.i = load ptr, ptr %i.rl, align 8, !tbaa !74
  %.sroa.888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %.sroa.888.0.copyload.i = load i32, ptr %.sroa.888.0..sroa_idx.i, align 8, !tbaa !198
  br label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit

bb.bz:                                            ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit51.i
  %.sroa.060.4.extract.shift91.i = lshr i64 %.sroa.0.0.in.i33.i, 32
  %.sroa.060.4.extract.trunc.i = trunc i64 %.sroa.060.4.extract.shift91.i to i8
  %.sroa.074.4.extract.shift92.i = lshr i64 %.sroa.0.0.in.i.i605, 32
  %.sroa.074.4.extract.trunc.i = trunc i64 %.sroa.074.4.extract.shift92.i to i8
  %.not.i52.i = icmp eq i8 %.sroa.060.4.extract.trunc.i, %.sroa.074.4.extract.trunc.i
  br i1 %.not.i52.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.i, label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.i: ; preds = %bb.bz
  %.sroa.074.0.extract.trunc.i = trunc i64 %.sroa.0.0.in.i.i605 to i32 ; 3 uses
  %i.rm = urem i32 %.sroa.060.0.extract.trunc.i, %.sroa.074.0.extract.trunc.i
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %bb.ca, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit54.i

bb.ca:                                            ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.i
  %i.ro = mul i64 %i.qp, %.sroa.0.0.in.i33.i
  %i.rp = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %i.rq = and i64 %i.qp, 4294967295
  %i.rr = getelementptr inbounds nuw [40 x i8], ptr %i.pz, i64 %i.rq ; 2 uses
  %.sroa.011.0.copyload.i = load ptr, ptr %i.rr, align 8, !tbaa !74
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %.sroa.212.0.copyload.i = load i32, ptr %.sroa.212.0..sroa_idx.i, align 8, !tbaa !198
  %i.rs = sub i64 %.0.i.i.i.i, %i.ro
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  store ptr %.sroa.011.0.copyload.i, ptr %29, align 8, !tbaa !74
  %.sroa.211.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.sroa.212.0.copyload.i, ptr %.sroa.211.0..sroa_idx.i.i, align 8, !tbaa !198
  %i.rt = and i64 %i.rs, 4294967295
  %i.ru = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.rp, i64 noundef %i.rt, ptr noundef nonnull align 8 dereferenceable(12) %42, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { ptr, i32 } %i.ru, 0
  %.fca.1.extract2.i.i = extractvalue { ptr, i32 } %i.ru, 1
  store ptr %.fca.0.extract1.i.i, ptr %30, align 8
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.fca.1.extract2.i.i, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  %i.rv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.rp, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.0153.0.copyload.pre925, ptr %.sroa.2155.0.copyload.pre927, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  %.fca.0.extract7.i = extractvalue { ptr, i32 } %i.rv, 0
  %.fca.1.extract8.i = extractvalue { ptr, i32 } %i.rv, 1
  br label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit54.i: ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.i
  %i.rw = urem i32 %.sroa.074.0.extract.trunc.i, %.sroa.060.0.extract.trunc.i
  %i.rx = udiv i32 %.sroa.074.0.extract.trunc.i, %.sroa.060.0.extract.trunc.i
  %i.ry = icmp eq i32 %i.rw, 0
  %i.rz = icmp eq i64 %i.qq, 0
  %or.cond = select i1 %i.ry, i1 %i.rz, i1 false
  br i1 %or.cond, label %bb.cb, label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread

bb.cb:                                            ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit54.i
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !324, !range !52, !noundef !53
  %i.sc = trunc nuw i8 %i.sb to i1
  br i1 %i.sc, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.sd, align 8, !tbaa !347 ; 2 uses
  %.not.i.i.i.i.i747 = icmp eq i16 %.sroa.0153.0.copyload.pre925, 1
  %i.se = icmp eq ptr %.sroa.2155.0.copyload.pre927, null
  %.not4.i.i.i.i748 = select i1 %.not.i.i.i.i.i747, i1 %i.se, i1 false
  br i1 %.not4.i.i.i.i748, label %_ZN12_GLOBAL__N_111DAGCombiner12hasOperationEjN4llvm3EVTE.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not.i.i600, label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i750

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i750: ; preds = %bb.cd
  %i.sf = getelementptr inbounds nuw i8, ptr %.val.i, i64 112
  %i.sg = zext i16 %.sroa.0153.0.copyload.pre925 to i64 ; 2 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.sg
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !398
  %.not.i.i.i751.not = icmp eq ptr %i.si, null
  br i1 %.not.i.i.i751.not, label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread, label %_ZN12_GLOBAL__N_111DAGCombiner12hasOperationEjN4llvm3EVTE.exit

_ZN12_GLOBAL__N_111DAGCombiner12hasOperationEjN4llvm3EVTE.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i750, %bb.cc
  %.pre-phi.i.i.i = phi i64 [ %i.sg, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i750 ], [ 1, %bb.cc ]
  %i.sj = getelementptr inbounds nuw [537 x i8], ptr %.val.i, i64 %.pre-phi.i.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 6349
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !400
  %i.sm = icmp eq i8 %i.sl, 0
  br i1 %i.sm, label %bb.ce, label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread

bb.ce:                                            ; preds = %_ZN12_GLOBAL__N_111DAGCombiner12hasOperationEjN4llvm3EVTE.exit, %bb.cb
  %i.sn = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.so = and i64 %i.qp, 4294967295
  %i.sp = zext i32 %i.rx to i64
  %i.sq = getelementptr inbounds nuw [40 x i8], ptr %i.pz, i64 %i.so
  store ptr %i.sq, ptr %33, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.sp, ptr %i.sr, align 8
  %i.ss = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_5SDUseEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.sn, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.0153.0.copyload.pre925, ptr %.sroa.2155.0.copyload.pre927, ptr noundef nonnull byval(%"class.llvm::ArrayRef.124") align 8 %33) #36 ; 2 uses
  %.fca.0.extract.i609 = extractvalue { ptr, i32 } %i.ss, 0
  %.fca.1.extract.i610 = extractvalue { ptr, i32 } %i.ss, 1
  br label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit

_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread: ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit35.i, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit54.i, %_ZN12_GLOBAL__N_111DAGCombiner12hasOperationEjN4llvm3EVTE.exit, %bb.bz, %bb.cd, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i750
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  br label %bb.cf

_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit: ; preds = %bb.by, %bb.ca, %bb.ce
  %.sroa.888.0.i = phi i32 [ %.sroa.888.0.copyload.i, %bb.by ], [ %.fca.1.extract8.i, %bb.ca ], [ %.fca.1.extract.i610, %bb.ce ]
  %.sroa.087.0.i = phi ptr [ %.sroa.087.0.copyload.i, %bb.by ], [ %.fca.0.extract7.i, %bb.ca ], [ %.fca.0.extract.i609, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  %.not910 = icmp eq ptr %.sroa.087.0.i, null
  br i1 %.not910, label %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit._crit_edge, label %bb.he

_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit._crit_edge: ; preds = %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit
  %.sroa.0153.0.copyload.pre = load i16, ptr %41, align 8, !tbaa !214
  %.sroa.2155.0.copyload.pre = load ptr, ptr %i.f, align 8, !tbaa !216
  br label %bb.cf

bb.cf:                                            ; preds = %.thread986, %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit._crit_edge, %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread, %bb.bn
  %.sroa.2155.0.copyload = phi ptr [ %.sroa.2155.0.copyload.pre, %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit._crit_edge ], [ %.sroa.2155.0.copyload.pre927, %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread ], [ %.sroa.2155.0.copyload.pre927, %bb.bn ], [ %.sroa.2155.0.copyload.pre927988, %.thread986 ] ; 3 uses
  %.sroa.0153.0.copyload = phi i16 [ %.sroa.0153.0.copyload.pre, %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit._crit_edge ], [ %.sroa.0153.0.copyload.pre925, %_ZN12_GLOBAL__N_111DAGCombiner37foldExtractSubvectorFromConcatVectorsEN4llvm3EVTENS1_7SDValueEmRKNS1_5SDLocE.exit.thread ], [ %.sroa.0153.0.copyload.pre925, %bb.bn ], [ %.sroa.0153.0.copyload.pre925987, %.thread986 ] ; 7 uses
  %i.st = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 7 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 3 uses
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !324, !range !52, !noundef !53 ; 2 uses
  %i.sw = trunc nuw i8 %i.sv to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  store i16 %.sroa.0153.0.copyload, ptr %19, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 7 uses
  store ptr %.sroa.2155.0.copyload, ptr %i.sx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0795.0.copyload, i64 48 ; 3 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !212 ; 2 uses
  %i.ta = zext i32 %.sroa.48.0.copyload to i64    ; 2 uses
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.sz, i64 %i.ta ; 2 uses
  %.sroa.0.0.copyload.i.i.i611 = load i16, ptr %i.tb, align 8, !tbaa !214 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i612 = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %.sroa.21.0.copyload.i.i.i613 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i612, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i.i611, ptr %20, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i.i.i613, ptr %i.tc, align 8
  %.not.i.i614 = icmp eq i16 %.sroa.0153.0.copyload, 0 ; 3 uses
  br i1 %.not.i.i614, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.cf
  %i.td = add i16 %.sroa.0153.0.copyload, -19
  %spec.select.i.i.i615 = icmp ult i16 %i.td, 144
  br i1 %spec.select.i.i.i615, label %bb.cg, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i:      ; preds = %bb.cf
  %i.te = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %19) #37
  br i1 %i.te, label %bb.cg, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread

bb.cg:                                            ; preds = %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i, %.split.i
  %.not.i132.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i611, 0 ; 2 uses
  br i1 %.not.i132.i, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit134.i, label %.split177.i

.split177.i:                                      ; preds = %bb.cg
  %i.tf = add i16 %.sroa.0.0.copyload.i.i.i611, -19
  %spec.select.i.i133.i = icmp ult i16 %i.tf, 144
  br i1 %spec.select.i.i133.i, label %bb.ch, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit134.i:   ; preds = %bb.cg
  %i.tg = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %20) #37
  br i1 %i.tg, label %bb.ch, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread

bb.ch:                                            ; preds = %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit134.i, %.split177.i
  %i.th = load i32, ptr %i.w, align 8, !tbaa !72
  %.not.i618 = icmp eq i32 %i.th, 171
  br i1 %.not.i618, label %bb.ci, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.0795.0.copyload, i64 56
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !195 ; 2 uses
  %.not.i.i.i619 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i619, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.i

_ZNK4llvm6SDNode9hasOneUseEv.exit.i:              ; preds = %bb.ci
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !357
  %i.tm = icmp eq ptr %i.tl, null
  br i1 %i.tm, label %bb.cj, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread

bb.cj:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !218 ; 8 uses
  br i1 %i.sw, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %.not.i.i.i.i.i635 = icmp eq i16 %.sroa.0153.0.copyload, 1
  %i.tp = icmp eq ptr %.sroa.2155.0.copyload, null
  %.not4.i.i.i.i636 = select i1 %.not.i.i.i.i.i635, i1 %i.tp, i1 false
  br i1 %.not4.i.i.i.i636, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  br i1 %.not.i.i614, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i637

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i637: ; preds = %bb.cl
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 112
  %i.tr = zext nneg i16 %.sroa.0153.0.copyload to i64 ; 2 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %i.tr
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !398
  %.not.i135.i = icmp eq ptr %i.tt, null
  br i1 %.not.i135.i, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i637, %bb.ck
  %.pre-phi.i638 = phi i64 [ %i.tr, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i637 ], [ 1, %bb.ck ] ; 2 uses
  %i.tu = getelementptr inbounds nuw [537 x i8], ptr %i.to, i64 %.pre-phi.i638
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 6355
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !400
  %i.tx = and i8 %i.tw, -5
  %spec.select.i.i639 = icmp eq i8 %i.tx, 0
  br i1 %spec.select.i.i639, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i, label %_ZL37foldExtractSubvectorFromShuffleVectorN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread

bb.cm:                                            ; preds = %bb.cj
  br i1 %.not.i.i614, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %._ZNK4llvm3MVT20getVectorNumElementsEv.exit.i_crit_edge.i

._ZNK4llvm3MVT20getVectorNumElementsEv.exit.i_crit_edge.i: ; preds = %bb.cm
  %.pre208.i = zext nneg i16 %.sroa.0153.0.copyload to i64
  br label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %bb.cm
  %i.ty = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %19) #37
  br i1 %i.ty, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i:   ; preds = %._ZNK4llvm3MVT20getVectorNumElementsEv.exit.i_crit_edge.i, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i
  %.pre-phi209.i = phi i64 [ %.pre208.i, %._ZNK4llvm3MVT20getVectorNumElementsEv.exit.i_crit_edge.i ], [ %.pre-phi.i638, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i ]
  %i.tz = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %.pre-phi209.i
  %i.ua = getelementptr i8, ptr %i.tz, i64 -2
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !379
  %i.uc = zext i16 %i.ub to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i

bb.co:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  %i.ud = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %19) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i:     ; preds = %bb.co, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i
  %i.ue = phi i32 [ %i.uc, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i ], [ %i.ud, %bb.co ] ; 8 uses
  br i1 %.not.i132.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i142.i, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i141.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i142.i:    ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_111DAGCombiner22visitEXTRACT_SUBVECTOREPN4llvm6SDNodeE:bb.a
  %i.acc = zext i16 %.sroa.0143.0.copyload to i64
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %i.acc
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !398
  %.not.i55.i.i = icmp eq ptr %i.ace, null
  br i1 %.not.i55.i.i, label %_ZL30narrowInsertExtractVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i, %bb.ee
  %.not.i17.i.i.i = icmp ult i32 %i.aas, 537
  br i1 %.not.i17.i.i.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread78.i.i

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i.i: ; preds = %bb.eg
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aar, i64 6184
  %i.acg = zext nneg i32 %i.aas to i64
  %i.ach = zext i16 %.sroa.0143.0.copyload to i64
  %i.aci = getelementptr inbounds nuw [537 x i8], ptr %i.acf, i64 %i.ach
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.acg
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !400
  %i.acl = and i8 %i.ack, -5
  %spec.select.i.i.i660 = icmp eq i8 %i.acl, 0
  br i1 %spec.select.i.i.i660, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread78.i.i, label %_ZL30narrowInsertExtractVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread.i

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread78.i.i: ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i.i, %bb.eg, %._crit_edge.i.i.i.i
  %i.acm = call fastcc { ptr, i32 } @_ZL15getSubVectorSrcN4llvm7SDValueEjNS_3EVTE(ptr nonnull %.sroa.061.0.copyload.i.i, i32 noundef %i.ab, i16 %.sroa.0143.0.copyload, ptr %.sroa.2145.0.copyload) ; 2 uses
  %.fca.0.extract14.i.i = extractvalue { ptr, i32 } %i.acm, 0 ; 2 uses
  %i.acn = call fastcc { ptr, i32 } @_ZL15getSubVectorSrcN4llvm7SDValueEjNS_3EVTE(ptr nonnull %.sroa.059.0.copyload.i.i, i32 noundef %i.ab, i16 %.sroa.0143.0.copyload, ptr %.sroa.2145.0.copyload) ; 2 uses
  %.fca.0.extract5.i.i = extractvalue { ptr, i32 } %i.acn, 0 ; 2 uses
  %i.aco = icmp ne ptr %.fca.0.extract14.i.i, null
  %i.acp = icmp ne ptr %.fca.0.extract5.i.i, null
  %or.cond.i.i = select i1 %i.aco, i1 %i.acp, i1 false
  br i1 %or.cond.i.i, label %_ZL30narrowInsertExtractVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.i, label %_ZL30narrowInsertExtractVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread.i

_ZL30narrowInsertExtractVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread.i: ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread78.i.i, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.i.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i, %bb.ef, %._crit_edge.i.i.i.i, %bb.ed, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i.i, %bb.ec, %bb.dz, %bb.dy, %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.eh

_ZL30narrowInsertExtractVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.i: ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread78.i.i
  %.fca.1.extract6.i.i = extractvalue { ptr, i32 } %i.acn, 1
  %.fca.1.extract15.i.i = extractvalue { ptr, i32 } %i.acm, 1
  store ptr %.fca.0.extract14.i.i, ptr %3, align 8, !tbaa !74
  %.sroa.557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract15.i.i, ptr %.sroa.557.0..sroa_idx.i.i, align 8, !tbaa !198
  store ptr %.fca.0.extract5.i.i, ptr %4, align 8, !tbaa !74
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract6.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !198
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.0795.0.copyload, i64 28
  %.sroa.0.0.copyload.i.i.i659 = load i32, ptr %i.acq, align 4, !tbaa !198
  %i.acr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i32 noundef %i.aas, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.0143.0.copyload, ptr %.sroa.2145.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, i32 %.sroa.0.0.copyload.i.i.i659) #36 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i32 } %i.acr, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not330.i = icmp eq ptr %.fca.0.extract.i.i, null
  br i1 %.not330.i, label %bb.eh, label %_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread874

_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread874: ; preds = %_ZL30narrowInsertExtractVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.i
  %.fca.1.extract.i.i = extractvalue { ptr, i32 } %i.acr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.he

bb.eh:                                            ; preds = %_ZL30narrowInsertExtractVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.i, %_ZL30narrowInsertExtractVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread.i
  %i.acs = load ptr, ptr %i.aaq, align 8, !tbaa !218 ; 5 uses
  %i.act = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr nonnull %.sroa.0795.0.copyload, i32 %.sroa.48.0.copyload) #36 ; 2 uses
  %.fca.0.extract192.i = extractvalue { ptr, i32 } %i.act, 0 ; 9 uses
  %.fca.1.extract193.i = extractvalue { ptr, i32 } %i.act, 1 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.fca.0.extract192.i, i64 24
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !72 ; 6 uses
  %i.acw = load ptr, ptr %i.acs, align 8, !tbaa !45
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 1384
  %i.acy = load ptr, ptr %i.acx, align 8
  %i.acz = call noundef zeroext i1 %i.acy(ptr noundef nonnull align 8 dereferenceable(518435) %i.acs, i32 noundef %i.acv) #36, !inline_history !1721
  br i1 %i.acz, label %bb.ei, label %.sink.split

bb.ei:                                            ; preds = %bb.eh
  %i.ada = getelementptr inbounds nuw i8, ptr %.fca.0.extract192.i, i64 66
  %i.adb = load i16, ptr %i.ada, align 2, !tbaa !350
  %.not.i643 = icmp eq i16 %i.adb, 1
  br i1 %.not.i643, label %bb.ej, label %.sink.split

bb.ej:                                            ; preds = %bb.ei
  %i.adc = icmp eq i32 %i.acv, 100
  br i1 %i.adc, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.add = getelementptr inbounds nuw i8, ptr %.fca.0.extract192.i, i64 40
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !204 ; 2 uses
  %.sroa.0179.0.copyload.i = load ptr, ptr %i.ade, align 8, !tbaa !74
  %.sroa.2180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %.sroa.2180.0.copyload.i = load i32, ptr %.sroa.2180.0..sroa_idx.i, align 8, !tbaa !198
  %i.adf = call noundef ptr @_ZN4llvm21isConstOrConstSplatFPENS_7SDValueEb(ptr %.sroa.0179.0.copyload.i, i32 %.sroa.2180.0.copyload.i, i1 noundef zeroext true) #36 ; 2 uses
  %.not241.i = icmp eq ptr %i.adf, null
  br i1 %.not241.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 88
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !660 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 24 ; 2 uses
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !75
  %.not.i.i.i.i249.i = icmp eq ptr %i.adj, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adh, i64 32
  %i.adl = load ptr, ptr %i.adk, align 8
  %.0.i.i.i.i.i656 = select i1 %.not.i.i.i.i249.i, ptr %i.adl, ptr %i.adi
  %i.adm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i656, i64 20
  %i.adn = load i8, ptr %i.adm, align 4
  %i.ado = and i8 %i.adn, 15
  %i.adp = icmp eq i8 %i.ado, 11
  br i1 %i.adp, label %.sink.split, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.adq = getelementptr inbounds nuw i8, ptr %.fca.0.extract192.i, i64 48
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !212
  %i.ads = zext i32 %.fca.1.extract193.i to i64
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %i.adr, i64 %i.ads ; 2 uses
  %.sroa.0.0.copyload.i.i250.i = load i16, ptr %i.adt, align 8, !tbaa !214 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i644 = getelementptr inbounds nuw i8, ptr %i.adt, i64 8
  %.sroa.21.0.copyload.i.i.i645 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i644, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i250.i, ptr %6, align 8
  %i.adu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i.i645, ptr %i.adu, align 8
  %.not.i251.i = icmp eq i16 %.sroa.0.0.copyload.i.i250.i, 0
  br i1 %.not.i251.i, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i655, label %.split.i646

.split.i646:                                      ; preds = %bb.em
  %i.adv = add i16 %.sroa.0.0.copyload.i.i250.i, -19
  %spec.select.i.i252.i = icmp ult i16 %i.adv, 144
  br i1 %spec.select.i.i252.i, label %bb.en, label %.sink.split.sink.split

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i655:   ; preds = %bb.em
  %i.adw = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  br i1 %i.adw, label %bb.eo, label %.sink.split.sink.split

bb.en:                                            ; preds = %.split.i646
  %i.adx = zext nneg i16 %.sroa.0.0.copyload.i.i250.i to i64
  %i.ady = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.adx ; 2 uses
  %i.adz = getelementptr i8, ptr %i.ady, i64 -16
  %.sroa.0.0.copyload.i.i254.i = load i64, ptr %i.adz, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ady, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i255.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i254.i, 0
  %.fca.1.insert.i.i256.i = insertvalue { i64, i8 } %.fca.0.insert.i.i255.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

bb.eo:                                            ; preds = %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i655
  %i.aea = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i:            ; preds = %bb.eo, %bb.en
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i256.i, %bb.en ], [ %i.aea, %bb.eo ] ; 2 uses
  %.fca.1.extract174.i = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.aeb = trunc nuw i8 %.fca.1.extract174.i to i1
  br i1 %i.aeb, label %bb.ep, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.ep:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %.fca.0.extract173.i = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.aec = trunc i64 %.fca.0.extract173.i to i32  ; 2 uses
  %i.aed = load i16, ptr %5, align 8, !tbaa !387  ; 2 uses
  %.not.i257.i = icmp eq i16 %i.aed, 0
  br i1 %.not.i257.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.aee = zext i16 %i.aed to i64
  %i.aef = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr i8, ptr %i.aef, i64 -16
  %.sroa.0.0.copyload.i.i258.i = load i64, ptr %i.aeg, align 16
  %.sroa.2.0..sroa_idx.i.i259.i = getelementptr i8, ptr %i.aef, i64 -8
  %.sroa.2.0.copyload.i.i260.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i259.i, align 8
  %.fca.0.insert.i.i261.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i258.i, 0
  %.fca.1.insert.i.i262.i = insertvalue { i64, i8 } %.fca.0.insert.i.i261.i, i8 %.sroa.2.0.copyload.i.i260.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit264.i

bb.er:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.aeh = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit264.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit264.i:         ; preds = %bb.er, %bb.eq
  %.pn.i263.i = phi { i64, i8 } [ %.fca.1.insert.i.i262.i, %bb.eq ], [ %i.aeh, %bb.er ] ; 2 uses
  %.fca.1.extract168.i = extractvalue { i64, i8 } %.pn.i263.i, 1
  %i.aei = trunc nuw i8 %.fca.1.extract168.i to i1
  br i1 %i.aei, label %bb.es, label %_ZNK4llvm8TypeSizecvmEv.exit265.i

bb.es:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit264.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit265.i:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit264.i
  %.fca.0.extract167.i = extractvalue { i64, i8 } %.pn.i263.i, 0
  %i.aej = trunc i64 %.fca.0.extract167.i to i32  ; 2 uses
  %i.aek = urem i32 %i.aec, %i.aej
  %i.ael = udiv i32 %i.aec, %i.aej                ; 3 uses
  %.not242.i = icmp eq i32 %i.aek, 0
  br i1 %.not242.i, label %bb.et, label %.sink.split.sink.split

bb.et:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit265.i
  %i.aem = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.aen = urem i32 %i.aem, %i.ael
  %i.aeo = udiv i32 %i.aem, %i.ael
  %.not243.i = icmp eq i32 %i.aen, 0
  br i1 %.not243.i, label %bb.eu, label %.sink.split.sink.split

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aan, i64 80
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !491
  %i.aer = call { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  %i.aes = extractvalue { i16, ptr } %i.aer, 0
  %i.aet = extractvalue { i16, ptr } %i.aer, 1
  %i.aeu = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.aeq, i16 %i.aes, ptr %i.aet, i32 noundef %i.aeo, i1 noundef zeroext false) ; 2 uses
  %i.aev = extractvalue { i16, ptr } %i.aeu, 0    ; 2 uses
  store i16 %i.aev, ptr %7, align 8
  %i.aew = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  %i.aex = extractvalue { i16, ptr } %i.aeu, 1    ; 2 uses
  store ptr %i.aex, ptr %i.aew, align 8
  %i.aey = call noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase33isOperationLegalOrCustomOrPromoteEjNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.acs, i32 noundef %i.acv, i16 %i.aev, ptr %i.aex, i1 noundef zeroext %i.aao)
  br i1 %i.aey, label %bb.ev, label %_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread886

bb.ev:                                            ; preds = %bb.eu
  %i.aez = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.afa = udiv i32 %i.ab, %i.aez                 ; 3 uses
  %i.afb = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.afc = mul i32 %i.afb, %i.afa                 ; 4 uses
  %.sroa.0150.0.copyload.i = load i16, ptr %7, align 8, !tbaa !214
  %.sroa.2152.0.copyload.i = load ptr, ptr %i.aew, align 8, !tbaa !216
  %.sroa.0147.0.copyload.i = load i16, ptr %6, align 8, !tbaa !214
  %.sroa.2149.0.copyload.i = load ptr, ptr %i.adu, align 8, !tbaa !216
  %i.afd = load ptr, ptr %i.acs, align 8, !tbaa !45
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 1672
  %i.aff = load ptr, ptr %i.afe, align 8
  %i.afg = call noundef zeroext i1 %i.aff(ptr noundef nonnull align 8 dereferenceable(518435) %i.acs, i16 %.sroa.0150.0.copyload.i, ptr %.sroa.2152.0.copyload.i, i16 %.sroa.0147.0.copyload.i, ptr %.sroa.2149.0.copyload.i, i32 noundef %i.afc) #36, !inline_history !1721
  br i1 %i.afg, label %bb.ew, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i

bb.ew:                                            ; preds = %bb.ev
  %i.afh = getelementptr inbounds nuw i8, ptr %.fca.0.extract192.i, i64 56
  %.sroa.018.022.i.i.i = load ptr, ptr %i.afh, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.sroa.018.022.i.i.i, null
  br i1 %.not23.i.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i, label %.lr.ph.i.i.i

bb.ex:                                            ; preds = %.lr.ph.i.i.i
  %.214.i.i.i = select i1 %i.afl, i32 %.01224.i.i.i, i32 0 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 32
  %.sroa.018.0.i.i.i = load ptr, ptr %i.afi, align 8, !tbaa !210 ; 2 uses
  %.not.i.i266.i = icmp eq ptr %.sroa.018.0.i.i.i, null
  br i1 %.not.i.i266.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ew, %bb.ex
  %.sroa.018.025.i.i.i = phi ptr [ %.sroa.018.0.i.i.i, %bb.ex ], [ %.sroa.018.022.i.i.i, %bb.ew ] ; 2 uses
  %.01224.i.i.i = phi i32 [ %.214.i.i.i, %bb.ex ], [ 1, %bb.ew ] ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 8
  %i.afk = load i32, ptr %i.afj, align 8, !tbaa !211
  %i.afl = icmp ne i32 %i.afk, %.fca.1.extract193.i ; 2 uses
  %i.afm = icmp ne i32 %.01224.i.i.i, 0
  %cond.i.i.i = select i1 %i.afl, i1 true, i1 %i.afm
  br i1 %cond.i.i.i, label %bb.ex, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i

_ZNK4llvm7SDValue9hasOneUseEv.exit.i:             ; preds = %bb.ex
  %i.afn = icmp eq i32 %.214.i.i.i, 0
  br i1 %i.afn, label %bb.ey, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i

bb.ey:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0795.0.copyload, i64 56
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !195 ; 2 uses
  %.not.i.i267.i = icmp eq ptr %i.afp, null
  br i1 %.not.i.i267.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.i653

_ZNK4llvm6SDNode9hasOneUseEv.exit.i653:           ; preds = %bb.ey
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 32
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !357
  %i.afs = icmp eq ptr %i.afr, null
  br i1 %i.afs, label %bb.ez, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i

bb.ez:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.i653
  %i.aft = zext i32 %i.afc to i64
  %i.afu = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i64 noundef %i.aft, ptr noundef nonnull align 8 dereferenceable(12) %42, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract135.i = extractvalue { ptr, i32 } %i.afu, 0 ; 2 uses
  %.fca.1.extract136.i = extractvalue { ptr, i32 } %i.afu, 1 ; 2 uses
  %.sroa.0129.0.copyload.i = load i16, ptr %7, align 8, !tbaa !214
  %.sroa.2131.0.copyload.i = load ptr, ptr %i.aew, align 8, !tbaa !216
  %i.afv = getelementptr inbounds nuw i8, ptr %.fca.0.extract192.i, i64 40 ; 2 uses
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !204
  store ptr %.fca.0.extract135.i, ptr %8, align 8, !tbaa !74
  %.sroa.5141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract136.i, ptr %.sroa.5141.0..sroa_idx.i, align 8, !tbaa !198
  %i.afx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.0129.0.copyload.i, ptr %.sroa.2131.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.afw, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #36 ; 2 uses
  %.fca.0.extract125.i = extractvalue { ptr, i32 } %i.afx, 0
  %.fca.1.extract126.i = extractvalue { ptr, i32 } %i.afx, 1
  %.sroa.0119.0.copyload.i = load i16, ptr %7, align 8, !tbaa !214
  %.sroa.2121.0.copyload.i = load ptr, ptr %i.aew, align 8, !tbaa !216
  %i.afy = load ptr, ptr %i.afv, align 8, !tbaa !204
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 40
  store ptr %.fca.0.extract135.i, ptr %9, align 8, !tbaa !74
  %.sroa.5141.0..sroa_idx142.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract136.i, ptr %.sroa.5141.0..sroa_idx142.i, align 8, !tbaa !198
  %i.aga = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.0119.0.copyload.i, ptr %.sroa.2121.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.afz, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #36 ; 2 uses
  %.fca.0.extract115.i = extractvalue { ptr, i32 } %i.aga, 0
  %.fca.1.extract116.i = extractvalue { ptr, i32 } %i.aga, 1
  %.sroa.0109.0.copyload.i = load i16, ptr %7, align 8, !tbaa !214
  %.sroa.2111.0.copyload.i = load ptr, ptr %i.aew, align 8, !tbaa !216
  store ptr %.fca.0.extract125.i, ptr %10, align 8, !tbaa !74
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract126.i, ptr %.sroa.4133.0..sroa_idx.i, align 8, !tbaa !198
  store ptr %.fca.0.extract115.i, ptr %11, align 8, !tbaa !74
  %.sroa.4123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract116.i, ptr %.sroa.4123.0..sroa_idx.i, align 8, !tbaa !198
  %i.agb = getelementptr inbounds nuw i8, ptr %.fca.0.extract192.i, i64 28
  %.sroa.0.0.copyload.i.i654 = load i32, ptr %i.agb, align 4, !tbaa !198
  %i.agc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i32 noundef %i.acv, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.0109.0.copyload.i, ptr %.sroa.2111.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, i32 %.sroa.0.0.copyload.i.i654) #36
  br label %_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i:      ; preds = %.lr.ph.i.i.i, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i653, %bb.ey, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, %bb.ew, %bb.ev
  %.not244.i = icmp ne i32 %i.ael, 2
  %i.agd = add i32 %i.acv, -196
  %or.cond3.i = icmp ult i32 %i.agd, -3
  %or.cond.i647 = or i1 %or.cond3.i, %.not244.i
  br i1 %or.cond.i647, label %_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread886, label %bb.fa

bb.fa:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i
  %i.age = getelementptr inbounds nuw i8, ptr %.fca.0.extract192.i, i64 40 ; 4 uses
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !204 ; 2 uses
  %.sroa.089.0.copyload.i = load ptr, ptr %i.agf, align 8, !tbaa !74
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %.sroa.290.0.copyload.i = load i32, ptr %.sroa.290.0..sroa_idx.i, align 8, !tbaa !198
  %i.agg = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.089.0.copyload.i, i32 %.sroa.290.0.copyload.i) #36
  %.fca.0.extract85.i = extractvalue { ptr, i32 } %i.agg, 0 ; 3 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.fca.0.extract85.i, i64 24
  %i.agi = load i32, ptr %i.agh, align 8, !tbaa !72
  %i.agj = icmp eq i32 %i.agi, 165
  br i1 %i.agj, label %bb.fb, label %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit.i"

bb.fb:                                            ; preds = %bb.fa
  %i.agk = getelementptr inbounds nuw i8, ptr %.fca.0.extract85.i, i64 64
  %i.agl = load i16, ptr %i.agk, align 8, !tbaa !205
  %i.agm = icmp eq i16 %i.agl, 2
  br i1 %i.agm, label %bb.fc, label %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit.i"

bb.fc:                                            ; preds = %bb.fb
  %i.agn = getelementptr inbounds nuw i8, ptr %.fca.0.extract85.i, i64 40
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !204
  %i.agp = zext i32 %i.afa to i64
  %i.agq = getelementptr inbounds nuw [40 x i8], ptr %i.ago, i64 %i.agp ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.agq, align 8, !tbaa !74
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %.sroa.44.0.copyload.i.i = load i32, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !198
  br label %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit.i"

"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit.i": ; preds = %bb.fc, %bb.fb, %bb.fa
  %.sroa.44.0.i.i = phi i32 [ %.sroa.44.0.copyload.i.i, %bb.fc ], [ 0, %bb.fb ], [ 0, %bb.fa ]
  %.sroa.03.0.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %bb.fc ], [ null, %bb.fb ], [ null, %bb.fa ] ; 2 uses
  %i.agr = load ptr, ptr %i.age, align 8, !tbaa !204 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 40
  %.sroa.076.0.copyload.i = load ptr, ptr %i.ags, align 8, !tbaa !74
  %.sroa.277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agr, i64 48
  %.sroa.277.0.copyload.i = load i32, ptr %.sroa.277.0..sroa_idx.i, align 8, !tbaa !198
  %i.agt = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.076.0.copyload.i, i32 %.sroa.277.0.copyload.i) #36
  %.fca.0.extract72.i = extractvalue { ptr, i32 } %i.agt, 0 ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.fca.0.extract72.i, i64 24
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !72
  %i.agw = icmp eq i32 %i.agv, 165
  br i1 %i.agw, label %bb.fd, label %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit277.i"

bb.fd:                                            ; preds = %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit.i"
  %i.agx = getelementptr inbounds nuw i8, ptr %.fca.0.extract72.i, i64 64
  %i.agy = load i16, ptr %i.agx, align 8, !tbaa !205
  %i.agz = icmp eq i16 %i.agy, 2
  br i1 %i.agz, label %bb.fe, label %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit277.i"

bb.fe:                                            ; preds = %bb.fd
  %i.aha = getelementptr inbounds nuw i8, ptr %.fca.0.extract72.i, i64 40
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !204
  %i.ahc = zext i32 %i.afa to i64
  %i.ahd = getelementptr inbounds nuw [40 x i8], ptr %i.ahb, i64 %i.ahc ; 2 uses
  %.sroa.03.0.copyload.i274.i = load ptr, ptr %i.ahd, align 8, !tbaa !74
  %.sroa.44.0..sroa_idx.i275.i = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %.sroa.44.0.copyload.i276.i = load i32, ptr %.sroa.44.0..sroa_idx.i275.i, align 8, !tbaa !198
  br label %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit277.i"

"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit277.i": ; preds = %bb.fe, %bb.fd, %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit.i"
  %.sroa.44.0.i270.i = phi i32 [ %.sroa.44.0.copyload.i276.i, %bb.fe ], [ 0, %bb.fd ], [ 0, %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit.i" ]
  %.sroa.03.0.i271.i = phi ptr [ %.sroa.03.0.copyload.i274.i, %bb.fe ], [ null, %bb.fd ], [ null, %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit.i" ] ; 3 uses
  %.not331.i = icmp eq ptr %.sroa.03.0.i.i, null
  br i1 %.not331.i, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit277.i"
  %.not332.i = icmp eq ptr %.sroa.03.0.i271.i, null
  br i1 %.not332.i, label %_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread886, label %.thread320.i

.thread320.i:                                     ; preds = %bb.ff
  %i.ahe = zext i32 %i.afc to i64
  %i.ahf = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i64 noundef %i.ahe, ptr noundef nonnull align 8 dereferenceable(12) %42, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract56.i = extractvalue { ptr, i32 } %i.ahf, 0
  %.fca.1.extract57.i = extractvalue { ptr, i32 } %i.ahf, 1
  %.sroa.040.0.copyload.i = load i16, ptr %7, align 8, !tbaa !214
  %.sroa.242.0.copyload.i = load ptr, ptr %i.aew, align 8, !tbaa !216
  %i.ahg = load ptr, ptr %i.age, align 8, !tbaa !204
  store ptr %.fca.0.extract56.i, ptr %12, align 8, !tbaa !74
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract57.i, ptr %.sroa.562.0..sroa_idx.i, align 8, !tbaa !198
  %i.ahh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.040.0.copyload.i, ptr %.sroa.242.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ahg, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #36 ; 2 uses
  %.sroa.554.0324.i = extractvalue { ptr, i32 } %i.ahh, 1
  %.sroa.053.0325.i = extractvalue { ptr, i32 } %i.ahh, 0
  br label %bb.fh

bb.fg:                                            ; preds = %"_ZZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEbENK3$_0clES1_.exit277.i"
  %i.ahi = zext i32 %i.afc to i64
  %i.ahj = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i64 noundef %i.ahi, ptr noundef nonnull align 8 dereferenceable(12) %42, i1 noundef zeroext false) #36 ; 2 uses
  %.sroa.050.0.copyload.i = load i16, ptr %7, align 8, !tbaa !214
  %.sroa.252.0.copyload.i = load ptr, ptr %i.aew, align 8, !tbaa !216
  %i.ahk = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i16 %.sroa.050.0.copyload.i, ptr %.sroa.252.0.copyload.i, ptr nonnull %.sroa.03.0.i.i, i32 %.sroa.44.0.i.i) #36 ; 2 uses
  %.sroa.554.0.i = extractvalue { ptr, i32 } %i.ahk, 1 ; 2 uses
  %.sroa.053.0.i = extractvalue { ptr, i32 } %i.ahk, 0 ; 2 uses
  %.not333.i = icmp eq ptr %.sroa.03.0.i271.i, null
  br i1 %.not333.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.thread320.i
  %.sroa.053.0329.i = phi ptr [ %.sroa.053.0325.i, %.thread320.i ], [ %.sroa.053.0.i, %bb.fg ]
  %.sroa.554.0327.i = phi i32 [ %.sroa.554.0324.i, %.thread320.i ], [ %.sroa.554.0.i, %bb.fg ]
  %.sroa.032.0.copyload.i = load i16, ptr %7, align 8, !tbaa !214
  %.sroa.234.0.copyload.i = load ptr, ptr %i.aew, align 8, !tbaa !216
  %i.ahl = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i16 %.sroa.032.0.copyload.i, ptr %.sroa.234.0.copyload.i, ptr nonnull %.sroa.03.0.i271.i, i32 %.sroa.44.0.i270.i) #36
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %.fca.1.extract57315.i = extractvalue { ptr, i32 } %i.ahj, 1
  %.fca.0.extract56314.i = extractvalue { ptr, i32 } %i.ahj, 0
  %.sroa.022.0.copyload.i = load i16, ptr %7, align 8, !tbaa !214
  %.sroa.224.0.copyload.i = load ptr, ptr %i.aew, align 8, !tbaa !216
  %i.ahm = load ptr, ptr %i.age, align 8, !tbaa !204
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 40
  store ptr %.fca.0.extract56314.i, ptr %13, align 8, !tbaa !74
  %.sroa.562.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract57315.i, ptr %.sroa.562.0..sroa_idx63.i, align 8, !tbaa !198
  %i.aho = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.022.0.copyload.i, ptr %.sroa.224.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ahn, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13) #36
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.sroa.053.0328.i = phi ptr [ %.sroa.053.0329.i, %bb.fh ], [ %.sroa.053.0.i, %bb.fi ]
  %.sroa.554.0326.i = phi i32 [ %.sroa.554.0327.i, %bb.fh ], [ %.sroa.554.0.i, %bb.fi ]
  %.pn246.i = phi { ptr, i32 } [ %i.ahl, %bb.fh ], [ %i.aho, %bb.fi ] ; 2 uses
  %.sroa.5.0.i = extractvalue { ptr, i32 } %.pn246.i, 1
  %.sroa.035.0.i = extractvalue { ptr, i32 } %.pn246.i, 0
  %.sroa.014.0.copyload.i648 = load i16, ptr %7, align 8, !tbaa !214
  %.sroa.216.0.copyload.i649 = load ptr, ptr %i.aew, align 8, !tbaa !216
  store ptr %.sroa.053.0328.i, ptr %14, align 8, !tbaa !74
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.554.0326.i, ptr %.sroa.554.0..sroa_idx.i, align 8, !tbaa !198
  store ptr %.sroa.035.0.i, ptr %15, align 8, !tbaa !74
  %.sroa.5.0..sroa_idx.i650 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i650, align 8, !tbaa !198
  %i.ahp = getelementptr inbounds nuw i8, ptr %.fca.0.extract192.i, i64 28
  %.sroa.0.0.copyload.i278.i = load i32, ptr %i.ahp, align 4, !tbaa !198
  %i.ahq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i32 noundef %i.acv, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.014.0.copyload.i648, ptr %.sroa.216.0.copyload.i649, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, i32 %.sroa.0.0.copyload.i278.i) #36
  br label %_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit

_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread886: ; preds = %bb.eu, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.sink.split.sink.split

_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit: ; preds = %bb.ez, %bb.fj
  %.sink340.i = phi { ptr, i32 } [ %i.ahq, %bb.fj ], [ %i.agc, %bb.ez ] ; 2 uses
  %.fca.0.extract9.i = extractvalue { ptr, i32 } %.sink340.i, 0
  %.fca.1.extract10.i = extractvalue { ptr, i32 } %.sink340.i, 1
  %.sroa.06.0.copyload.i = load i16, ptr %5, align 8, !tbaa !214
  %.sroa.28.0.copyload.i = load ptr, ptr %i.aap, align 8, !tbaa !216
  %i.ahr = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aan, i16 %.sroa.06.0.copyload.i, ptr %.sroa.28.0.copyload.i, ptr %.fca.0.extract9.i, i32 %.fca.1.extract10.i) #36 ; 2 uses
  %.fca.0.extract.i651 = extractvalue { ptr, i32 } %i.ahr, 0 ; 2 uses
  %.fca.1.extract.i652 = extractvalue { ptr, i32 } %i.ahr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %.not912 = icmp eq ptr %.fca.0.extract.i651, null
  br i1 %.not912, label %bb.fk, label %bb.he

.sink.split.sink.split:                           ; preds = %bb.et, %.split.i646, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit.i655, %_ZNK4llvm8TypeSizecvmEv.exit265.i, %_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit.thread886
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.el, %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.fk

bb.fk:                                            ; preds = %.sink.split, %_ZL26narrowExtractedVectorBinOpN4llvm3EVTENS_7SDValueEjRKNS_5SDLocERNS_12SelectionDAGEb.exit
  %i.ahs = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0795.0.copyload, i32 %.sroa.48.0.copyload) #36 ; 2 uses
  %.fca.0.extract126 = extractvalue { ptr, i32 } %i.ahs, 0 ; 9 uses
  %.fca.1.extract127 = extractvalue { ptr, i32 } %i.ahs, 1 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.fca.0.extract126, i64 24 ; 2 uses
  %i.ahu = load i32, ptr %i.aht, align 8, !tbaa !72 ; 2 uses
  %i.ahv = icmp eq i32 %i.ahu, 162
  br i1 %i.ahv, label %bb.fl, label %bb.gb

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #36
  %i.ahw = getelementptr inbounds nuw i8, ptr %.fca.0.extract126, i64 48
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !212
  %i.ahy = zext i32 %.fca.1.extract127 to i64
  %i.ahz = getelementptr inbounds nuw [16 x i8], ptr %i.ahx, i64 %i.ahy ; 2 uses
  %.sroa.0.0.copyload.i.i663 = load i16, ptr %i.ahz, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i664 = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %.sroa.21.0.copyload.i.i665 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i664, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i663, ptr %54, align 8
  %i.aia = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %.sroa.21.0.copyload.i.i665, ptr %i.aia, align 8
  %i.aib = load i16, ptr %41, align 8, !tbaa !387 ; 2 uses
  %.not.i668 = icmp eq i16 %i.aib, 0
  br i1 %.not.i668, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aic = zext i16 %i.aib to i64
  %i.aid = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aic ; 2 uses
  %i.aie = getelementptr i8, ptr %i.aid, i64 -16
  %.sroa.0.0.copyload.i.i669 = load i64, ptr %i.aie, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.aid, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i670 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i669, 0
  %.fca.1.insert.i.i671 = insertvalue { i64, i8 } %.fca.0.insert.i.i670, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.fn:                                            ; preds = %bb.fl
  %i.aif = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %41) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.fm, %bb.fn
  %.pn.i672 = phi { i64, i8 } [ %.fca.1.insert.i.i671, %bb.fm ], [ %i.aif, %bb.fn ] ; 2 uses
  %.fca.1.extract121 = extractvalue { i64, i8 } %.pn.i672, 1
  %i.aig = trunc nuw i8 %.fca.1.extract121 to i1
  br i1 %i.aig, label %bb.fo, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.fo:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract120 = extractvalue { i64, i8 } %.pn.i672, 0
  %i.aih = trunc i64 %.fca.0.extract120 to i32    ; 2 uses
  %i.aii = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %54) ; 2 uses
  %i.aij = trunc i64 %i.aii to i32                ; 2 uses
  %i.aik = urem i32 %i.aih, %i.aij
  %i.ail = udiv i32 %i.aih, %i.aij                ; 3 uses
  %i.aim = icmp eq i32 %i.aik, 0
  br i1 %i.aim, label %bb.fp, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682.thread

bb.fp:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ain = load i16, ptr %54, align 8, !tbaa !387 ; 2 uses
  %.not.i673 = icmp eq i16 %i.ain, 0
  br i1 %.not.i673, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aio = zext i16 %i.ain to i64
  %i.aip = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.aio
  %i.aiq = getelementptr i8, ptr %i.aip, i64 -2
  %i.air = load i16, ptr %i.aiq, align 2, !tbaa !214
  %i.ais = insertvalue { i16, ptr } poison, i16 %i.air, 0
  %i.ait = insertvalue { i16, ptr } %i.ais, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.fr:                                            ; preds = %bb.fp
  %i.aiu = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %54) #36
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.fq, %bb.fr
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.ait, %bb.fq ], [ %i.aiu, %bb.fr ] ; 2 uses
  %i.aiv = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 4 uses
  %i.aiw = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1 ; 4 uses
  %i.aix = icmp eq i32 %i.ail, 1                  ; 2 uses
  br i1 %i.aix, label %.thread891, label %bb.fs

bb.fs:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.aiy = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 80
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !491
  %i.ajb = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.aja, i16 %i.aiv, ptr %i.aiw, i32 noundef %i.ail, i1 noundef zeroext false) ; 2 uses
  %i.ajc = extractvalue { i16, ptr } %i.ajb, 0    ; 5 uses
  %i.ajd = extractvalue { i16, ptr } %i.ajb, 1    ; 3 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ajf = load i32, ptr %i.aje, align 8, !tbaa !321
  %i.ajg = icmp slt i32 %i.ajf, 3
  br i1 %i.ajg, label %.thread891, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.not.i.i.i674 = icmp eq i16 %i.ajc, 1
  %i.ajj = icmp eq ptr %i.ajd, null
  %.not4.i.i675 = select i1 %.not.i.i.i674, i1 %i.ajj, i1 false
  br i1 %.not4.i.i675, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.not.i.i676 = icmp eq i16 %i.ajc, 0
  br i1 %.not.i.i676, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i677

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i677: ; preds = %bb.fu
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 112
  %i.ajl = zext i16 %i.ajc to i64                 ; 2 uses
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %i.ajl
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !398
  %.not.i678.not = icmp eq ptr %i.ajn, null
  br i1 %.not.i678.not, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682.thread, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i677, %bb.ft
  %.pre-phi.i681 = phi i64 [ %i.ajl, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i677 ], [ 1, %bb.ft ]
  %i.ajo = getelementptr inbounds nuw [537 x i8], ptr %i.aji, i64 %.pre-phi.i681
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 6346
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !400
  %i.ajr = icmp eq i8 %i.ajq, 0
  br i1 %i.ajr, label %.thread891, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682.thread

.thread891:                                       ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682, %bb.fs
  %.sroa.10.0898 = phi ptr [ %i.ajd, %bb.fs ], [ %i.ajd, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682 ], [ %i.aiw, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ]
  %.sroa.0111.0895 = phi i16 [ %i.ajc, %bb.fs ], [ %i.ajc, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682 ], [ %i.aiv, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ] ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ajt = load i8, ptr %i.ajs, align 2, !tbaa !325, !range !52, !noundef !53
  %i.aju = trunc nuw i8 %i.ajt to i1
  br i1 %i.aju, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.thread891
  %.not.i683 = icmp eq i16 %.sroa.0111.0895, 0
  br i1 %.not.i683, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.fv
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !347, !nonnull !53, !align !197
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 112
  %i.ajy = zext i16 %.sroa.0111.0895 to i64
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.ajx, i64 %i.ajy
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !398
  %.not913 = icmp eq ptr %i.aka, null
  br i1 %.not913, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682.thread, label %bb.fw

bb.fw:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %.thread891
  %i.akb = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %41)
  %i.akc = mul i64 %i.akb, %.0.i.i.i.i
  %i.akd = and i64 %i.aii, 4294967295
  %i.ake = udiv i64 %i.akc, %i.akd                ; 2 uses
  br i1 %i.aix, label %bb.fx, label %bb.ga

bb.fx:                                            ; preds = %bb.fw
  %i.akf = getelementptr inbounds nuw i8, ptr %.fca.0.extract126, i64 40
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !204
  %i.akh = and i64 %i.ake, 4294967295
  %i.aki = getelementptr inbounds nuw [40 x i8], ptr %i.akg, i64 %i.akh ; 3 uses
  %.sroa.0761.0.copyload = load ptr, ptr %i.aki, align 8, !tbaa !74 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aki, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !198 ; 3 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.sroa.0761.0.copyload, i64 48
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !212
  %i.akl = zext i32 %.sroa.7.0.copyload to i64
  %i.akm = getelementptr inbounds nuw [16 x i8], ptr %i.akk, i64 %i.akl ; 2 uses
  %.sroa.0.0.copyload.i.i684 = load i16, ptr %i.akm, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i685 = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  %.sroa.21.0.copyload.i.i686 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i685, align 8, !tbaa !216
  %.not.i689 = icmp ne i16 %i.aiv, %.sroa.0.0.copyload.i.i684
  %i.akn = icmp ne ptr %i.aiw, %.sroa.21.0.copyload.i.i686
  %i.ako = select i1 %.not.i689, i1 true, i1 %i.akn
  br i1 %i.ako, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aki, i64 12
  %.sroa.10.0.copyload765 = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %i.akp = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  store ptr %.sroa.0761.0.copyload, ptr %55, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx763 = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx763, align 8, !tbaa !198
  %.sroa.10.0..sroa_idx766 = getelementptr inbounds nuw i8, ptr %55, i64 12
  store i32 %.sroa.10.0.copyload765, ptr %.sroa.10.0..sroa_idx766, align 4
  %i.akq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.akp, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %i.aiv, ptr %i.aiw, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %55) #36 ; 2 uses
  %.fca.0.extract89 = extractvalue { ptr, i32 } %i.akq, 0
  %.fca.1.extract90 = extractvalue { ptr, i32 } %i.akq, 1
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.sroa.7.0 = phi i32 [ %.fca.1.extract90, %bb.fy ], [ %.sroa.7.0.copyload, %bb.fx ]
  %.sroa.0761.0 = phi ptr [ %.fca.0.extract89, %bb.fy ], [ %.sroa.0761.0.copyload, %bb.fx ]
  %i.akr = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.086.0.copyload = load i16, ptr %41, align 8, !tbaa !214
  %.sroa.288.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.aks = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.akr, i16 %.sroa.086.0.copyload, ptr %.sroa.288.0.copyload, ptr %.sroa.0761.0, i32 %.sroa.7.0) #36
  br label %.critedge438

bb.ga:                                            ; preds = %bb.fw
  %i.akt = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.aku = getelementptr inbounds nuw i8, ptr %.fca.0.extract126, i64 40
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !204
  %i.akw = and i64 %i.ake, 4294967295
  %i.akx = zext i32 %i.ail to i64
  %i.aky = getelementptr inbounds nuw [40 x i8], ptr %i.akv, i64 %i.akw
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.aky, ptr %2, align 8, !tbaa !210
  %.sroa.26.0..sroa_idx.i694 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.akx, ptr %.sroa.26.0..sroa_idx.i694, align 8, !tbaa !367
  %i.akz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_5SDUseEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.akt, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %42, i16 %.sroa.0111.0895, ptr %.sroa.10.0898, ptr noundef nonnull byval(%"class.llvm::ArrayRef.124") align 8 %2) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.fca.0.extract69 = extractvalue { ptr, i32 } %i.akz, 0
  %.fca.1.extract70 = extractvalue { ptr, i32 } %i.akz, 1
  %i.ala = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.066.0.copyload = load i16, ptr %41, align 8, !tbaa !214
  %.sroa.268.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.alb = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ala, i16 %.sroa.066.0.copyload, ptr %.sroa.268.0.copyload, ptr %.fca.0.extract69, i32 %.fca.1.extract70) #36
  br label %.critedge438

.critedge438:                                     ; preds = %bb.ga, %bb.fz
  %.pn = phi { ptr, i32 } [ %i.aks, %bb.fz ], [ %i.alb, %bb.ga ] ; 2 uses
  %.sroa.0840.1 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.24.1 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #36
  br label %bb.he

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682.thread: ; preds = %bb.fv, %bb.fu, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i677, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682, %_ZNK4llvm8TypeSizecvmEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #36
  %.pr900 = load i32, ptr %i.aht, align 8, !tbaa !72
  br label %bb.gb

bb.gb:                                            ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682.thread, %bb.fk
  %i.alc = phi i32 [ %.pr900, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit682.thread ], [ %i.ahu, %bb.fk ]
  %i.ald = icmp eq i32 %i.alc, 166
  br i1 %i.ald, label %bb.gc, label %bb.gj

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #36
  %i.ale = getelementptr inbounds nuw i8, ptr %.fca.0.extract126, i64 40 ; 4 uses
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !204 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 40
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !193
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 48
  %i.alj = load i32, ptr %i.ali, align 8, !tbaa !211
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alh, i64 48
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !212
  %i.alm = zext i32 %i.alj to i64
  %i.aln = getelementptr inbounds nuw [16 x i8], ptr %i.all, i64 %i.alm ; 2 uses
  %.sroa.0.0.copyload.i.i695 = load i16, ptr %i.aln, align 8, !tbaa !214 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i696 = getelementptr inbounds nuw i8, ptr %i.aln, i64 8
  %.sroa.21.0.copyload.i.i697 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i696, align 8, !tbaa !216 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i695, ptr %56, align 8
  %i.alo = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %.sroa.21.0.copyload.i.i697, ptr %i.alo, align 8
  %i.alp = call noundef zeroext i1 @_ZNK4llvm3EVT6bitsEqES0_(ptr noundef nonnull align 8 dereferenceable(16) %41, i16 %.sroa.0.0.copyload.i.i695, ptr %.sroa.21.0.copyload.i.i697)
  br i1 %i.alp, label %bb.gd, label %.critedge443

bb.gd:                                            ; preds = %bb.gc
  %i.alq = load ptr, ptr %i.ale, align 8, !tbaa !204
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 80
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !193
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 88
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !403 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 24 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !405
  %i.aly = icmp ult i32 %i.alx, 65
  %i.alz = load ptr, ptr %i.alv, align 8
  %spec.select.i.i.i.i.i700 = select i1 %i.aly, ptr %i.alv, ptr %i.alz
  %.0.i.i.i.i.i701 = load i64, ptr %spec.select.i.i.i.i.i700, align 8, !tbaa !75
  %i.ama = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %56)
  %i.amb = mul i64 %i.ama, %.0.i.i.i.i.i701
  %i.amc = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %41)
  %i.amd = mul i64 %i.amc, %.0.i.i.i.i
  %i.ame = icmp eq i64 %i.amb, %i.amd
  br i1 %i.ame, label %bb.ge, label %bb.gi

bb.ge:                                            ; preds = %bb.gd
  %i.amf = load i8, ptr %i.su, align 1, !tbaa !324, !range !52, !noundef !53
  %i.amg = trunc nuw i8 %i.amf to i1
  %.sroa.049.0.copyload.pre = load i16, ptr %41, align 8, !tbaa !214 ; 4 uses
  %.sroa.251.0.copyload.pre = load ptr, ptr %i.f, align 8, !tbaa !216 ; 2 uses
  br i1 %i.amg, label %bb.gf, label %bb.gh

end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_111DAGCombiner21visitINSERT_SUBVECTOREPN4llvm6SDNodeE:bb.a
  br i1 %.not.i467, label %_ZNK4llvm3EVT8isVectorEv.exit469, label %.split832

.split832:                                        ; preds = %bb.cd
  %i.ob = add i16 %.sroa.0.0.copyload.i.i462, -19
  %spec.select.i.i468 = icmp ult i16 %i.ob, 197
  br i1 %spec.select.i.i468, label %bb.ce, label %.critedge13

_ZNK4llvm3EVT8isVectorEv.exit469:                 ; preds = %bb.cd
  %i.oc = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %31) #37
  br i1 %i.oc, label %bb.ce, label %.critedge13

bb.ce:                                            ; preds = %.split832, %_ZNK4llvm3EVT8isVectorEv.exit469
  %i.od = load ptr, ptr %i.ne, align 8, !tbaa !212
  %i.oe = getelementptr inbounds nuw [16 x i8], ptr %i.od, i64 %i.ng ; 2 uses
  %.sroa.0.0.copyload.i.i470 = load i16, ptr %i.oe, align 8, !tbaa !214 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i471 = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %.sroa.21.0.copyload.i.i472 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i471, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i470, ptr %32, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.sroa.21.0.copyload.i.i472, ptr %i.of, align 8
  %.not.i475 = icmp eq i16 %.sroa.0.0.copyload.i.i470, 0
  br i1 %.not.i475, label %_ZNK4llvm3EVT8isVectorEv.exit477, label %.split833

.split833:                                        ; preds = %bb.ce
  %i.og = add i16 %.sroa.0.0.copyload.i.i470, -19
  %spec.select.i.i476 = icmp ult i16 %i.og, 197
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br i1 %spec.select.i.i476, label %bb.cf, label %bb.cz

_ZNK4llvm3EVT8isVectorEv.exit477:                 ; preds = %bb.ce
  %i.oh = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %32) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br i1 %i.oh, label %bb.cf, label %bb.cz

bb.cf:                                            ; preds = %.split833, %_ZNK4llvm3EVT8isVectorEv.exit477
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !352
  store i64 %i.oj, ptr %33, align 8, !tbaa !352
  %i.ok = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !351
  store i32 %i.om, ptr %i.ok, align 8, !tbaa !396
  %i.on = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 80
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !491 ; 2 uses
  %i.oq = call i64 @_ZNK4llvm3EVT21getVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %2) ; 4 uses
  %i.or = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.os = and i64 %i.or, 4294967295               ; 4 uses
  %i.ot = load i16, ptr %29, align 8, !tbaa !387  ; 7 uses
  %.not.i478 = icmp eq i16 %i.ot, 0               ; 4 uses
  br i1 %.not.i478, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ou = zext i16 %i.ot to i64
  %i.ov = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ou ; 2 uses
  %i.ow = getelementptr i8, ptr %i.ov, i64 -16
  %.sroa.0.0.copyload.i.i479 = load i64, ptr %i.ow, align 16
  %.sroa.2.0..sroa_idx.i.i480 = getelementptr i8, ptr %i.ov, i64 -8
  %.sroa.2.0.copyload.i.i481 = load i8, ptr %.sroa.2.0..sroa_idx.i.i480, align 8
  %.fca.0.insert.i.i482 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i479, 0
  %.fca.1.insert.i.i483 = insertvalue { i64, i8 } %.fca.0.insert.i.i482, i8 %.sroa.2.0.copyload.i.i481, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit485

bb.ch:                                            ; preds = %bb.cf
  %i.ox = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit485

_ZNK4llvm3EVT13getSizeInBitsEv.exit485:           ; preds = %bb.cg, %bb.ch
  %.pn.i484 = phi { i64, i8 } [ %.fca.1.insert.i.i483, %bb.cg ], [ %i.ox, %bb.ch ] ; 2 uses
  %.fca.1.extract158 = extractvalue { i64, i8 } %.pn.i484, 1
  %i.oy = trunc nuw i8 %.fca.1.extract158 to i1
  br i1 %i.oy, label %bb.ci, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.ci:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit485
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit485
  %.fca.0.extract157 = extractvalue { i64, i8 } %.pn.i484, 0
  %i.oz = urem i64 %i.os, %.fca.0.extract157
  %i.pa = icmp eq i64 %i.oz, 0
  br i1 %i.pa, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  br i1 %.not.i478, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pb = zext i16 %i.ot to i64
  %i.pc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.pb ; 2 uses
  %i.pd = getelementptr i8, ptr %i.pc, i64 -16
  %.sroa.0.0.copyload.i.i487 = load i64, ptr %i.pd, align 16
  %.sroa.2.0..sroa_idx.i.i488 = getelementptr i8, ptr %i.pc, i64 -8
  %.sroa.2.0.copyload.i.i489 = load i8, ptr %.sroa.2.0..sroa_idx.i.i488, align 8
  %.fca.0.insert.i.i490 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i487, 0
  %.fca.1.insert.i.i491 = insertvalue { i64, i8 } %.fca.0.insert.i.i490, i8 %.sroa.2.0.copyload.i.i489, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit493

bb.cl:                                            ; preds = %bb.cj
  %i.pe = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit493

_ZNK4llvm3EVT13getSizeInBitsEv.exit493:           ; preds = %bb.ck, %bb.cl
  %.pn.i492 = phi { i64, i8 } [ %.fca.1.insert.i.i491, %bb.ck ], [ %i.pe, %bb.cl ] ; 2 uses
  %.fca.1.extract152 = extractvalue { i64, i8 } %.pn.i492, 1
  %i.pf = trunc nuw i8 %.fca.1.extract152 to i1
  br i1 %i.pf, label %bb.cm, label %_ZNK4llvm8TypeSizecvmEv.exit494

bb.cm:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit493
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit494:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit493
  %.fca.0.extract151 = extractvalue { i64, i8 } %.pn.i492, 0
  %i.pg = udiv i64 %i.os, %.fca.0.extract151      ; 2 uses
  %.sroa.2147.0.copyload = load ptr, ptr %i.nt, align 8, !tbaa !216
  %.sroa.6.0.extract.shift.i = and i64 %i.oq, 1095216660480
  %i.ph = mul i64 %i.pg, %i.oq
  %.sroa.0.0.insert.ext.i = and i64 %i.ph, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, %.sroa.6.0.extract.shift.i
  %i.pi = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.op, i16 %i.ot, ptr %.sroa.2147.0.copyload, i64 %.sroa.0.0.insert.insert.i)
  %i.pj = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.pk = mul i64 %i.pg, %.0.i.i.i.i
  %i.pl = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.pj, i64 noundef %i.pk, ptr noundef nonnull align 8 dereferenceable(12) %33, i1 noundef zeroext false) #36
  br label %bb.cx

bb.cn:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  br i1 %.not.i478, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pm = zext i16 %i.ot to i64
  %i.pn = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.pm ; 2 uses
  %i.po = getelementptr i8, ptr %i.pn, i64 -16
  %.sroa.0.0.copyload.i.i496 = load i64, ptr %i.po, align 16
  %.sroa.2.0..sroa_idx.i.i497 = getelementptr i8, ptr %i.pn, i64 -8
  %.sroa.2.0.copyload.i.i498 = load i8, ptr %.sroa.2.0..sroa_idx.i.i497, align 8
  %.fca.0.insert.i.i499 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i496, 0
  %.fca.1.insert.i.i500 = insertvalue { i64, i8 } %.fca.0.insert.i.i499, i8 %.sroa.2.0.copyload.i.i498, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit502

bb.cp:                                            ; preds = %bb.cn
  %i.pp = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit502

_ZNK4llvm3EVT13getSizeInBitsEv.exit502:           ; preds = %bb.co, %bb.cp
  %.pn.i501 = phi { i64, i8 } [ %.fca.1.insert.i.i500, %bb.co ], [ %i.pp, %bb.cp ] ; 2 uses
  %.fca.1.extract133 = extractvalue { i64, i8 } %.pn.i501, 1
  %i.pq = trunc nuw i8 %.fca.1.extract133 to i1
  br i1 %i.pq, label %bb.cq, label %_ZNK4llvm8TypeSizecvmEv.exit503

bb.cq:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit502
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit503:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit502
  %.fca.0.extract132 = extractvalue { i64, i8 } %.pn.i501, 0
  %i.pr = urem i64 %.fca.0.extract132, %i.os
  %i.ps = icmp eq i64 %i.pr, 0
  br i1 %i.ps, label %bb.cr, label %.thread835

bb.cr:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit503
  br i1 %.not.i478, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pt = zext i16 %i.ot to i64
  %i.pu = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.pt ; 2 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 -16
  %.sroa.0.0.copyload.i.i505 = load i64, ptr %i.pv, align 16
  %.sroa.2.0..sroa_idx.i.i506 = getelementptr i8, ptr %i.pu, i64 -8
  %.sroa.2.0.copyload.i.i507 = load i8, ptr %.sroa.2.0..sroa_idx.i.i506, align 8
  %.fca.0.insert.i.i508 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i505, 0
  %.fca.1.insert.i.i509 = insertvalue { i64, i8 } %.fca.0.insert.i.i508, i8 %.sroa.2.0.copyload.i.i507, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit511

bb.ct:                                            ; preds = %bb.cr
  %i.pw = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit511

_ZNK4llvm3EVT13getSizeInBitsEv.exit511:           ; preds = %bb.cs, %bb.ct
  %.pn.i510 = phi { i64, i8 } [ %.fca.1.insert.i.i509, %bb.cs ], [ %i.pw, %bb.ct ] ; 2 uses
  %.fca.1.extract125 = extractvalue { i64, i8 } %.pn.i510, 1
  %i.px = trunc nuw i8 %.fca.1.extract125 to i1
  br i1 %i.px, label %bb.cu, label %_ZNK4llvm8TypeSizecvmEv.exit512

bb.cu:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit511
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit512:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit511
  %.fca.0.extract124 = extractvalue { i64, i8 } %.pn.i510, 0
  %i.py = udiv i64 %.fca.0.extract124, %i.os      ; 2 uses
  %i.pz = trunc i64 %i.py to i32                  ; 3 uses
  %.not.i513 = icmp eq i32 %i.pz, 0
  br i1 %.not.i513, label %.thread835, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit512
  %.sroa.0595.0.extract.trunc = trunc i64 %i.oq to i32 ; 2 uses
  %i.qa = urem i32 %.sroa.0595.0.extract.trunc, %i.pz
  %i.qb = udiv i32 %.sroa.0595.0.extract.trunc, %i.pz
  %i.qc = icmp eq i32 %i.qa, 0
  br i1 %i.qc, label %bb.cv, label %.thread835

bb.cv:                                            ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit
  %i.qd = and i64 %i.py, 4294967295               ; 2 uses
  %i.qe = urem i64 %.0.i.i.i.i, %i.qd
  %i.qf = udiv i64 %.0.i.i.i.i, %i.qd
  %i.qg = icmp eq i64 %i.qe, 0
  br i1 %i.qg, label %bb.cw, label %.thread835

bb.cw:                                            ; preds = %bb.cv
  %.sroa.2120.0.copyload = load ptr, ptr %i.nt, align 8, !tbaa !216
  %i.qh = and i64 %i.oq, 1095216660480
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.qb to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.qh, %.sroa.0.0.insert.ext.i.i
  %i.qi = call { i16, ptr } @_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.op, i16 %i.ot, ptr %.sroa.2120.0.copyload, i64 %.sroa.0.0.insert.insert.i.i)
  %i.qj = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.qk = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.qj, i64 noundef %i.qf, ptr noundef nonnull align 8 dereferenceable(12) %33, i1 noundef zeroext false) #36
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %_ZNK4llvm8TypeSizecvmEv.exit494
  %.pn = phi { i16, ptr } [ %i.pi, %_ZNK4llvm8TypeSizecvmEv.exit494 ], [ %i.qi, %bb.cw ] ; 2 uses
  %.pn863 = phi { ptr, i32 } [ %i.pl, %_ZNK4llvm8TypeSizecvmEv.exit494 ], [ %i.qk, %bb.cw ] ; 2 uses
  %.sroa.0601.0 = extractvalue { ptr, i32 } %.pn863, 0 ; 2 uses
  %.sroa.8.0 = extractvalue { ptr, i32 } %.pn863, 1
  %.sroa.0602.0 = extractvalue { i16, ptr } %.pn, 0 ; 3 uses
  %.sroa.9605.0 = extractvalue { i16, ptr } %.pn, 1 ; 3 uses
  %.not865 = icmp eq ptr %.sroa.0601.0, null
  br i1 %.not865, label %.thread835, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val347 = load ptr, ptr %i.ql, align 8, !tbaa !347
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 33
  %.val348 = load i8, ptr %i.qm, align 1, !tbaa !324, !range !52, !noundef !53
  %i.qn = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111DAGCombiner12hasOperationEjN4llvm3EVTE(ptr %.val347, i8 %.val348, i32 noundef 166, i16 %.sroa.0602.0, ptr %.sroa.9605.0)
  br i1 %i.qn, label %.critedge337, label %.thread835

.critedge337:                                     ; preds = %bb.cy
  %i.qo = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.qp = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.qo, i16 %.sroa.0602.0, ptr %.sroa.9605.0, ptr nonnull %.fca.0.extract176, i32 %.fca.1.extract177) #36 ; 2 uses
  %.fca.0.extract95 = extractvalue { ptr, i32 } %i.qp, 0
  %.fca.1.extract96 = extractvalue { ptr, i32 } %i.qp, 1
  %i.qq = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  store ptr %.fca.0.extract95, ptr %34, align 8, !tbaa !74
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %.fca.1.extract96, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !198
  store ptr %.fca.0.extract169, ptr %35, align 8, !tbaa !74
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %.fca.1.extract170, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !198
  store ptr %.sroa.0601.0, ptr %36, align 8, !tbaa !74
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !198
  %i.qr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.qq, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %33, i16 %.sroa.0602.0, ptr %.sroa.9605.0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36) #36 ; 2 uses
  %.fca.0.extract85 = extractvalue { ptr, i32 } %i.qr, 0
  %.fca.1.extract86 = extractvalue { ptr, i32 } %i.qr, 1
  %i.qs = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.082.0.copyload = load i16, ptr %2, align 8, !tbaa !214
  %.sroa.284.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.qt = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.qs, i16 %.sroa.082.0.copyload, ptr %.sroa.284.0.copyload, ptr %.fca.0.extract85, i32 %.fca.1.extract86) #36 ; 2 uses
  %.fca.0.extract75 = extractvalue { ptr, i32 } %i.qt, 0
  %.fca.1.extract76 = extractvalue { ptr, i32 } %i.qt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %bb.du

.thread835:                                       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit512, %_ZNK4llvm8TypeSizecvmEv.exit503, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit, %bb.cv, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  %.pr841.pre.pre = load i32, ptr %i.x, align 8, !tbaa !72
  br label %bb.cz

.critedge13:                                      ; preds = %.split832, %bb.cc, %_ZNK4llvm3EVT8isVectorEv.exit469
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %bb.cz

bb.cz:                                            ; preds = %.split833, %_ZNK4llvm3EVT8isVectorEv.exit477, %.critedge13, %.thread835
  %.pr841.pre = phi i32 [ %i.nv, %.split833 ], [ %i.nv, %_ZNK4llvm3EVT8isVectorEv.exit477 ], [ %i.nv, %.critedge13 ], [ %.pr841.pre.pre, %.thread835 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %thread-pre-split840

thread-pre-split840:                              ; preds = %bb.cz, %bb.bw, %.critedge11.thread
  %i.qu = phi i32 [ %.pr849, %.critedge11.thread ], [ %.pr841.pre, %bb.cz ], [ %.pr849, %bb.bw ]
  switch i32 %i.qu, label %.critedge341.thread [
    i32 166, label %bb.da
    i32 165, label %bb.df
  ]

bb.da:                                            ; preds = %thread-pre-split840
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.0748.0.copyload, i64 56
  %.sroa.018.022.i.i514 = load ptr, ptr %i.qv, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i515 = icmp eq ptr %.sroa.018.022.i.i514, null
  br i1 %.not23.i.i515, label %.critedge341.thread, label %.lr.ph.i.i516

bb.db:                                            ; preds = %.lr.ph.i.i516
  %.214.i.i519 = select i1 %i.qz, i32 %.01224.i.i518, i32 0 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i517, i64 32
  %.sroa.018.0.i.i523 = load ptr, ptr %i.qw, align 8, !tbaa !210 ; 2 uses
  %.not.i.i524 = icmp eq ptr %.sroa.018.0.i.i523, null
  br i1 %.not.i.i524, label %_ZNK4llvm7SDValue9hasOneUseEv.exit525, label %.lr.ph.i.i516

.lr.ph.i.i516:                                    ; preds = %bb.da, %bb.db
  %.sroa.018.025.i.i517 = phi ptr [ %.sroa.018.0.i.i523, %bb.db ], [ %.sroa.018.022.i.i514, %bb.da ] ; 2 uses
  %.01224.i.i518 = phi i32 [ %.214.i.i519, %bb.db ], [ 1, %bb.da ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i517, i64 8
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !211
  %i.qz = icmp ne i32 %i.qy, %.sroa.42.0.copyload ; 2 uses
  %i.ra = icmp ne i32 %.01224.i.i518, 0
  %cond.i.i520 = select i1 %i.qz, i1 true, i1 %i.ra
  br i1 %cond.i.i520, label %bb.db, label %.critedge341.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit525:            ; preds = %bb.db
  %i.rb = icmp eq i32 %.214.i.i519, 0
  br i1 %i.rb, label %bb.dc, label %.critedge341.thread

bb.dc:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit525
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0693.0.copyload, i64 48
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !212
  %i.re = zext i32 %.sroa.46.0.copyload to i64
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.rd, i64 %i.re ; 2 uses
  %.sroa.0.0.copyload.i.i526 = load i16, ptr %i.rf, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i527 = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %.sroa.21.0.copyload.i.i528 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i527, align 8, !tbaa !216
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.0748.0.copyload, i64 40 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !204 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 40
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !193
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 48
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !211
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !212
  %i.ro = zext i32 %i.rl to i64
  %i.rp = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.ro ; 2 uses
  %.sroa.0.0.copyload.i.i531 = load i16, ptr %i.rp, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i532 = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %.sroa.21.0.copyload.i.i533 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i532, align 8, !tbaa !216
  %.not.i.i536 = icmp eq i16 %.sroa.0.0.copyload.i.i526, %.sroa.0.0.copyload.i.i531
  %i.rq = icmp eq ptr %.sroa.21.0.copyload.i.i528, %.sroa.21.0.copyload.i.i533
  %.not4.i537 = select i1 %.not.i.i536, i1 %i.rq, i1 false
  br i1 %.not4.i537, label %bb.dd, label %.critedge341.thread

bb.dd:                                            ; preds = %bb.dc
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rh, i64 80
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !193
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 88
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !403 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 24 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !405
  %i.ry = icmp ult i32 %i.rx, 65
  %i.rz = load ptr, ptr %i.rv, align 8
  %spec.select.i.i.i.i.i = select i1 %i.ry, ptr %i.rv, ptr %i.rz
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !75
  %i.sa = and i64 %.0.i.i.i.i.i, 4294967295
  %.not = icmp ult i64 %.0.i.i.i.i, %i.sa
  br i1 %.not, label %bb.de, label %.critedge341.thread

bb.de:                                            ; preds = %bb.dd
  %i.sb = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !352
  store i64 %i.sd, ptr %37, align 8, !tbaa !352
  %i.se = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !351
  store i32 %i.sg, ptr %i.se, align 8, !tbaa !396
  %.sroa.069.0.copyload = load i16, ptr %2, align 8, !tbaa !214
  %.sroa.271.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !216
  store ptr %.sroa.0693.0.copyload, ptr %38, align 8, !tbaa !74
  %.sroa.46.0..sroa_idx736 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.sroa.46.0.copyload, ptr %.sroa.46.0..sroa_idx736, align 8, !tbaa !198
  %.sroa.53.0..sroa_idx746 = getelementptr inbounds nuw i8, ptr %38, i64 12
  store i32 %.sroa.53.0.copyload, ptr %.sroa.53.0..sroa_idx746, align 4
  store ptr %.sroa.0656.0.copyload, ptr %39, align 8, !tbaa !74
  %.sroa.15.0..sroa_idx676 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx676, align 8, !tbaa !198
  %.sroa.21.0..sroa_idx691 = getelementptr inbounds nuw i8, ptr %39, i64 12
  store i32 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx691, align 4
  %i.sh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.sb, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %37, i16 %.sroa.069.0.copyload, ptr %.sroa.271.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.rh, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39) #36 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.sh, 0 ; 2 uses
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.sh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  call fastcc void @_ZN12_GLOBAL__N_111DAGCombiner13AddToWorklistEPN4llvm6SDNodeEbb(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %.fca.0.extract65, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.si = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #36
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0748.0.copyload, i64 72
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !352
  store i64 %i.sk, ptr %40, align 8, !tbaa !352
  %i.sl = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0748.0.copyload, i64 68
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !351
  store i32 %i.sn, ptr %i.sl, align 8, !tbaa !396
  %.sroa.062.0.copyload = load i16, ptr %2, align 8, !tbaa !214
  %.sroa.264.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !216
  store ptr %.fca.0.extract65, ptr %41, align 8, !tbaa !74
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.fca.1.extract66, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !198
  %i.so = load ptr, ptr %i.rg, align 8, !tbaa !204 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 40
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 80
  %i.sr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.si, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %40, i16 %.sroa.062.0.copyload, ptr %.sroa.264.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.sp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.sq) #36 ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.sr, 0
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.sr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #36
  br label %bb.du

end_hunk_7
begin_hunk_8_@_ZL29combineConcatVectorOfExtractsPN4llvm6SDNodeERNS_12SelectionDAGE:bb.a
  %.sroa.7193.0252 = phi i32 [ %.fca.1.extract79, %.lr.ph257 ], [ %.sroa.7193.2219, %bb.ag ] ; 5 uses
  %.sroa.0179.0.copyload = load ptr, ptr %.0107256, align 8, !tbaa !74
  %.sroa.9.0..0107.sroa_idx = getelementptr inbounds nuw i8, ptr %.0107256, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..0107.sroa_idx, align 8, !tbaa !198
  %i.ar = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0179.0.copyload, i32 %.sroa.9.0.copyload) #36
  %.fca.0.extract55 = extractvalue { ptr, i32 } %i.ar, 0 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.fca.0.extract55, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !72 ; 2 uses
  %i.au = add i32 %i.at, -53
  %spec.select.i.i122 = icmp ult i32 %i.au, 2
  br i1 %spec.select.i.i122, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.av = load i32, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, %i.aq            ; 2 uses
  %i.ay = load i32, ptr %i.aj, align 4, !tbaa !77
  %i.az = zext i32 %i.ay to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.ax, %i.az
  br i1 %.not.i.i.i, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i, !prof !526

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.ah, i64 noundef %i.ax, i64 noundef 4) #36
  %.pre4.pre.i = load i32, ptr %i.ai, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i: ; preds = %bb.f, %bb.e
  %.pre4.i = phi i32 [ %i.av, %bb.e ], [ %.pre4.pre.i, %bb.f ] ; 2 uses
  br i1 %.not112246, label %.thread211, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i
  %i.ba = load ptr, ptr %6, align 8, !tbaa !43
  %i.bb = zext i32 %.pre4.i to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  call void @llvm.memset.p0.i64(ptr align 4 %i.bc, i8 -1, i64 %.idx.i.i.i.i.i132, i1 false), !tbaa !198
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !76
  br label %.thread211

.thread211:                                       ; preds = %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i
  %i.bd = phi i32 [ %.pre.i, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i ], [ %.pre4.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i ]
  %i.be = add i32 %i.bd, %i.ae
  store i32 %i.be, ptr %i.ai, align 8, !tbaa !76
  br label %bb.ag

bb.g:                                             ; preds = %bb.d
  %.not111 = icmp eq i32 %i.at, 167
  br i1 %.not111, label %bb.h, label %.thread197

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.fca.0.extract55, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !204 ; 3 uses
  %.sroa.0167.0.copyload = load ptr, ptr %i.bg, align 8, !tbaa !74 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !198 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !193
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !403 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !405
  %i.bo = icmp ult i32 %i.bn, 65
  %i.bp = load ptr, ptr %i.bl, align 8
  %spec.select.i.i.i.i.i = select i1 %i.bo, ptr %i.bl, ptr %i.bp
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !75
  %i.bq = trunc i64 %.0.i.i.i.i.i to i32          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0167.0.copyload, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !212
  %i.bt = zext i32 %.sroa.11.0.copyload to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i123 = load i16, ptr %i.bu, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i124 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.21.0.copyload.i.i125 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i124, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i123, ptr %7, align 8
  store ptr %.sroa.21.0.copyload.i.i125, ptr %i.ap, align 8
  %i.bv = call { ptr, i32 } @_ZN4llvm19peekThroughBitcastsENS_7SDValueE(ptr %.sroa.0167.0.copyload, i32 %.sroa.11.0.copyload) #36 ; 2 uses
  %.fca.0.extract43 = extractvalue { ptr, i32 } %i.bv, 0 ; 7 uses
  %.fca.1.extract44 = extractvalue { ptr, i32 } %i.bv, 1 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.fca.0.extract43, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !72
  %i.by = add i32 %i.bx, -53
  %spec.select.i.i128 = icmp ult i32 %i.by, 2
  br i1 %spec.select.i.i128, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, %i.aq            ; 2 uses
  %i.cc = load i32, ptr %i.aj, align 4, !tbaa !77
  %i.cd = zext i32 %i.cc to i64
  %.not.i.i.i129 = icmp samesign ugt i64 %i.cb, %i.cd
  br i1 %.not.i.i.i129, label %bb.j, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i130, !prof !526

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.ah, i64 noundef %i.cb, i64 noundef 4) #36
  %.pre4.pre.i138 = load i32, ptr %i.ai, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i130

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i130: ; preds = %bb.j, %bb.i
  %.pre4.i131 = phi i32 [ %i.bz, %bb.i ], [ %.pre4.pre.i138, %bb.j ] ; 2 uses
  br i1 %.not112246, label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit139, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i136

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i136: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i130
  %i.ce = load ptr, ptr %6, align 8, !tbaa !43
  %i.cf = zext i32 %.pre4.i131 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 -1, i64 %.idx.i.i.i.i.i132, i1 false), !tbaa !198
  %.pre.i137 = load i32, ptr %i.ai, align 8, !tbaa !76
  br label %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit139

_ZN4llvm15SmallVectorImplIiE6appendEmi.exit139:   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i130, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i136
  %i.ch = phi i32 [ %.pre.i137, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i136 ], [ %.pre4.i131, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i130 ]
  %i.ci = add i32 %i.ch, %i.ae
  store i32 %i.ci, ptr %i.ai, align 8, !tbaa !76
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.cj = load i16, ptr %7, align 8, !tbaa !387   ; 4 uses
  %.not.i140 = icmp eq i16 %i.cj, 0               ; 2 uses
  br i1 %.not.i140, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ck ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -16
  %.sroa.0.0.copyload.i.i141 = load i64, ptr %i.cm, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.cl, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i142 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i141, 0
  %.fca.1.insert.i.i143 = insertvalue { i64, i8 } %.fca.0.insert.i.i142, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.m:                                             ; preds = %bb.k
  %i.cn = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.l, %bb.m
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i143, %bb.l ], [ %i.cn, %bb.m ] ; 2 uses
  %.fca.0.extract39 = extractvalue { i64, i8 } %.pn.i, 0
  %.fca.1.extract40 = extractvalue { i64, i8 } %.pn.i, 1
  %i.co = load i16, ptr %4, align 8, !tbaa !387   ; 2 uses
  %.not.i144 = icmp eq i16 %i.co, 0
  br i1 %.not.i144, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cp ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.sroa.0.0.copyload.i.i145 = load i64, ptr %i.cr, align 16
  %.sroa.2.0..sroa_idx.i.i146 = getelementptr i8, ptr %i.cq, i64 -8
  %.sroa.2.0.copyload.i.i147 = load i8, ptr %.sroa.2.0..sroa_idx.i.i146, align 8
  %.fca.0.insert.i.i148 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i145, 0
  %.fca.1.insert.i.i149 = insertvalue { i64, i8 } %.fca.0.insert.i.i148, i8 %.sroa.2.0.copyload.i.i147, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit151

bb.o:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.cs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit151

_ZNK4llvm3EVT13getSizeInBitsEv.exit151:           ; preds = %bb.n, %bb.o
  %.pn.i150 = phi { i64, i8 } [ %.fca.1.insert.i.i149, %bb.n ], [ %i.cs, %bb.o ] ; 2 uses
  %.fca.0.extract35 = extractvalue { i64, i8 } %.pn.i150, 0
  %.fca.1.extract36 = extractvalue { i64, i8 } %.pn.i150, 1
  %.not.i152 = icmp ne i64 %.fca.0.extract39, %.fca.0.extract35
  %i.ct = icmp ne i8 %.fca.1.extract40, %.fca.1.extract36
  %i.cu = select i1 %.not.i152, i1 true, i1 %i.ct
  br i1 %i.cu, label %.thread225, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit151
  br i1 %.not.i140, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i157, label %.split.i154

.split.i154:                                      ; preds = %bb.p
  %i.cv = add i16 %i.cj, -163
  %spec.select.i.i.i155 = icmp ult i16 %i.cv, 53
  br i1 %spec.select.i.i.i155, label %bb.q, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i156

_ZNK4llvm3EVT16isScalableVectorEv.exit.i157:      ; preds = %bb.p
  %i.cw = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  br i1 %i.cw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i157, %.split.i154
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i156:  ; preds = %.split.i154
  %i.cx = zext i16 %i.cj to i64
  %i.cy = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 -2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !379
  %i.db = zext i16 %i.da to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit158

bb.r:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i157
  %i.dc = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit158

_ZNK4llvm3EVT20getVectorNumElementsEv.exit158:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i156, %bb.r
  %i.dd = phi i32 [ %i.db, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i156 ], [ %i.dc, %bb.r ] ; 4 uses
  %i.de = srem i32 %i.dd, %i.v
  %i.df = sdiv i32 %i.dd, %i.v
  %i.dg = icmp eq i32 %i.de, 0
  br i1 %i.dg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit158
  %i.dh = sdiv i32 %i.bq, %i.df
  br label %bb.v

bb.t:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit158
  %i.di = srem i32 %i.v, %i.dd
  %i.dj = sdiv i32 %i.v, %i.dd
  %i.dk = icmp eq i32 %i.di, 0
  br i1 %i.dk, label %bb.u, label %.thread225

bb.u:                                             ; preds = %bb.t
  %i.dl = mul nsw i32 %i.dj, %i.bq
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0108 = phi i32 [ %i.dh, %bb.s ], [ %i.dl, %bb.u ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0191.0253, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !72
  %i.do = add i32 %i.dn, -53
  %spec.select.i.i159 = icmp ult i32 %i.do, 2
  br i1 %spec.select.i.i159, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = icmp eq ptr %.sroa.0191.0253, %.fca.0.extract43
  %i.dq = icmp eq i32 %.sroa.7193.0252, %.fca.1.extract44
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %i.dr, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not112246, label %.loopexit, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.x, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.0109249 = phi i32 [ %i.ea, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ 0, %bb.x ] ; 2 uses
  %i.ds = add nsw i32 %.0109249, %.0108           ; 2 uses
  %i.dt = load i32, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.du = load i32, ptr %i.aj, align 4, !tbaa !77
  %.not.i160 = icmp ult i32 %i.dt, %i.du
  br i1 %.not.i160, label %bb.z, label %bb.y, !prof !78

bb.y:                                             ; preds = %.lr.ph250
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.ds)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.z:                                             ; preds = %.lr.ph250
  %i.dv = zext i32 %i.dt to i64
  %i.dw = load ptr, ptr %6, align 8, !tbaa !43
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dv
  store i32 %i.ds, ptr %i.dx, align 1
  %i.dy = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.ai, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.y, %bb.z
  %i.ea = add nuw nsw i32 %.0109249, 1            ; 2 uses
  %.not113 = icmp eq i32 %i.ea, %i.ae
  br i1 %.not113, label %.loopexit, label %.lr.ph250, !llvm.loop !2785

bb.aa:                                            ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0187.0255, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !72
  %i.ed = add i32 %i.ec, -53
  %spec.select.i.i161 = icmp ult i32 %i.ed, 2
  br i1 %spec.select.i.i161, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = icmp eq ptr %.sroa.0187.0255, %.fca.0.extract43
  %i.ef = icmp eq i32 %.sroa.7.0254, %.fca.1.extract44
  %i.eg = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %i.eg, label %bb.ac, label %.thread225

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %.not112246, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.eh = add i32 %.0108, %i.v
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163
  %.0110247 = phi i32 [ 0, %.lr.ph ], [ %i.eq, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163 ] ; 2 uses
  %i.ei = add i32 %i.eh, %.0110247                ; 2 uses
  %i.ej = load i32, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.ek = load i32, ptr %i.aj, align 4, !tbaa !77
  %.not.i162 = icmp ult i32 %i.ej, %i.ek
  br i1 %.not.i162, label %bb.af, label %bb.ae, !prof !78

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.ei)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163

bb.af:                                            ; preds = %bb.ad
  %i.el = zext i32 %i.ej to i64
  %i.em = load ptr, ptr %6, align 8, !tbaa !43
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.el
  store i32 %i.ei, ptr %i.en, align 1
  %i.eo = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.ai, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163: ; preds = %bb.ae, %bb.af
  %i.eq = add nuw nsw i32 %.0110247, 1            ; 2 uses
  %.not112 = icmp eq i32 %i.eq, %i.ae
  br i1 %.not112, label %.loopexit, label %bb.ad, !llvm.loop !2786

.thread225:                                       ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit151, %bb.t, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.thread197

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %bb.ac, %bb.x, %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit139
  %.sroa.7193.1 = phi i32 [ %.sroa.7193.0252, %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit139 ], [ %.fca.1.extract44, %bb.x ], [ %.sroa.7193.0252, %bb.ac ], [ %.fca.1.extract44, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ %.sroa.7193.0252, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163 ]
  %.sroa.0191.1 = phi ptr [ %.sroa.0191.0253, %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit139 ], [ %.fca.0.extract43, %bb.x ], [ %.sroa.0191.0253, %bb.ac ], [ %.fca.0.extract43, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ %.sroa.0191.0253, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163 ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0254, %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit139 ], [ %.sroa.7.0254, %bb.x ], [ %.fca.1.extract44, %bb.ac ], [ %.sroa.7.0254, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ %.fca.1.extract44, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163 ]
  %.sroa.0187.1 = phi ptr [ %.sroa.0187.0255, %_ZN4llvm15SmallVectorImplIiE6appendEmi.exit139 ], [ %.sroa.0187.0255, %bb.x ], [ %.fca.0.extract43, %bb.ac ], [ %.sroa.0187.0255, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ %.fca.0.extract43, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %.thread211
  %.sroa.0187.2222 = phi ptr [ %.sroa.0187.0255, %.thread211 ], [ %.sroa.0187.1, %.loopexit ] ; 2 uses
  %.sroa.7.2221 = phi i32 [ %.sroa.7.0254, %.thread211 ], [ %.sroa.7.1, %.loopexit ] ; 2 uses
  %.sroa.0191.2220 = phi ptr [ %.sroa.0191.0253, %.thread211 ], [ %.sroa.0191.1, %.loopexit ] ; 2 uses
  %.sroa.7193.2219 = phi i32 [ %.sroa.7193.0252, %.thread211 ], [ %.sroa.7193.1, %.loopexit ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0107256, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.er, %i.ao
  br i1 %.not, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.ag, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119
  %.sroa.7193.0.lcssa = phi i32 [ %.fca.1.extract79, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119 ], [ %.sroa.7193.2219, %bb.ag ]
  %.sroa.0191.0.lcssa = phi ptr [ %.fca.0.extract78, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119 ], [ %.sroa.0191.2220, %bb.ag ]
  %.sroa.7.0.lcssa = phi i32 [ %.fca.1.extract72, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119 ], [ %.sroa.7.2221, %bb.ag ]
  %.sroa.0187.0.lcssa = phi ptr [ %.fca.0.extract71, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit119 ], [ %.sroa.0187.2222, %bb.ag ]
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !218
  %.sroa.023.0.copyload = load i16, ptr %4, align 8, !tbaa !214 ; 2 uses
  %.sroa.225.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !352
  store i64 %i.ev, ptr %8, align 8, !tbaa !352
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !351
  store i32 %i.ey, ptr %i.ew, align 8, !tbaa !396
  %i.ez = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.023.0.copyload, ptr %.sroa.225.0.copyload, ptr %.sroa.0191.0.lcssa, i32 %.sroa.7193.0.lcssa) #36 ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.ez, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.ez, 1
  %.sroa.08.0.copyload = load i16, ptr %4, align 8, !tbaa !214
  %.sroa.210.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.fa = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.08.0.copyload, ptr %.sroa.210.0.copyload, ptr %.sroa.0187.0.lcssa, i32 %.sroa.7.0.lcssa) #36 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.fa, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.fa, 1
  store ptr %.fca.0.extract2, ptr %9, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract3, ptr %.sroa.25.0..sroa_idx, align 8
  %i.fb = load ptr, ptr %6, align 8, !tbaa !43
  store ptr %i.fb, ptr %10, align 8, !tbaa !573
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fd = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.fe = zext i32 %i.fd to i64
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !574
  %i.ff = call { ptr, i32 } @_ZNK4llvm14TargetLowering23buildLegalVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_15MutableArrayRefIiEERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %i.et, i16 %.sroa.023.0.copyload, ptr %.sroa.225.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %.fca.0.extract11, i32 %.fca.1.extract12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef") align 8 %10, ptr noundef nonnull align 8 dereferenceable(920) %1) #36 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ff, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ff, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.thread197

.thread197:                                       ; preds = %bb.g, %.thread225, %.critedge
  %.sroa.12.3 = phi i32 [ %.fca.1.extract, %.critedge ], [ 0, %.thread225 ], [ 0, %bb.g ]
  %.sroa.0196.3 = phi ptr [ %.fca.0.extract, %.critedge ], [ null, %.thread225 ], [ null, %bb.g ]
  %i.fg = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ah
  br i1 %i.fh, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %.thread197
  call void @free(ptr noundef %i.fg) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit:            ; preds = %.thread197, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit, %.split, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit
  %.sroa.12.4 = phi i32 [ %.sroa.12.3, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit ], [ 0, %.split ], [ 0, %_ZNK4llvm3EVT16isScalableVectorEv.exit ]
  %.sroa.0196.4 = phi ptr [ %.sroa.0196.3, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit ], [ null, %.split ], [ null, %_ZNK4llvm3EVT16isScalableVectorEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0196.4, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.12.4, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL42combineConcatVectorOfShuffleAndItsOperandsPN4llvm6SDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(518435) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 14 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 11 uses
  %17 = alloca %"class.llvm::SmallVector.1281", align 8 ; 10 uses
end_hunk_8
begin_hunk_9_@_ZL24combineTruncationShufflePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGE:bb.a

bb.g:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

.split.i.i40:                                     ; preds = %.split.i
  %i.ag = zext i16 %i.ad to i64                   ; 2 uses
  %i.ah = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !379
  %i.ak = zext i16 %i.aj to i32                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.al = add i16 %i.ad, -19
  %spec.select.i.i.i.i41 = icmp ult i16 %i.al, 197
  br i1 %spec.select.i.i.i.i41, label %bb.h, label %bb.j

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.am = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.an = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #37
  br i1 %i.an, label %bb.i, label %bb.j

bb.h:                                             ; preds = %.split.i.i40
  %i.ao = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ag
  %i.ap = getelementptr i8, ptr %i.ao, i64 -2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !214
  %i.ar = insertvalue { i16, ptr } poison, i16 %i.aq, 0
  %i.as = insertvalue { i16, ptr } %i.ar, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.i:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.at = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #36
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.j:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i40
  %i.au = phi i32 [ %i.am, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %i.ak, %.split.i.i40 ]
  %.sroa.31.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.av = insertvalue { i16, ptr } poison, i16 %i.ad, 0
  %i.aw = insertvalue { i16, ptr } %i.av, ptr %.sroa.31.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.j, %bb.i, %bb.h
  %i.ax = phi i32 [ %i.au, %bb.j ], [ %i.ak, %bb.h ], [ %i.am, %bb.i ] ; 3 uses
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.aw, %bb.j ], [ %i.as, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %i.ay = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.ay, ptr %7, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.ba, ptr %i.az, align 8
  %.not.i.i42 = icmp eq i16 %i.ay, 0
  br i1 %.not.i.i42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.bb = zext i16 %i.ay to i64
  %i.bc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bd, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.l:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.be = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  %i.bf = extractvalue { i64, i8 } %i.be, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.k, %bb.l
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.k ], [ %i.bf, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.080.0.copyload, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !212
  %i.bi = zext i32 %.sroa.682.0.copyload to i64   ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bi ; 2 uses
  %.sroa.0.0.copyload.i.i.i43 = load i16, ptr %i.bj, align 8, !tbaa !214 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !216 ; 2 uses
  %.fca.0.insert.i.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i43, 0
  %.fca.1.insert.i.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i43, ptr %6, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.bk, align 8
  %.not.i.i.i44 = icmp eq i16 %.sroa.0.0.copyload.i.i.i43, 0
  br i1 %.not.i.i.i44, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i49, label %.split.i.i45

.split.i.i45:                                     ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.bl = add i16 %.sroa.0.0.copyload.i.i.i43, -19
  %spec.select.i.i.i.i46 = icmp ult i16 %i.bl, 197
  br i1 %spec.select.i.i.i.i46, label %bb.m, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i47

_ZNK4llvm3EVT8isVectorEv.exit.i.i49:              ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.bm = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  br i1 %i.bm, label %bb.n, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i47

bb.m:                                             ; preds = %.split.i.i45
  %i.bn = zext nneg i16 %.sroa.0.0.copyload.i.i.i43 to i64
  %i.bo = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !214
  %i.br = insertvalue { i16, ptr } poison, i16 %i.bq, 0
  %i.bs = insertvalue { i16, ptr } %i.br, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i47

bb.n:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i49
  %i.bt = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #36
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i47

_ZNK4llvm3EVT13getScalarTypeEv.exit.i47:          ; preds = %bb.n, %bb.m, %_ZNK4llvm3EVT8isVectorEv.exit.i.i49, %.split.i.i45
  %.fca.1.insert.merged.i.i48 = phi { i16, ptr } [ %i.bt, %bb.n ], [ %i.bs, %bb.m ], [ %.fca.1.insert.i.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i49 ], [ %.fca.1.insert.i.i.i, %.split.i.i45 ] ; 2 uses
  %i.bu = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i48, 0 ; 3 uses
  store i16 %i.bu, ptr %5, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bw = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i48, 1
  store ptr %i.bw, ptr %i.bv, align 8
  %.not.i.i1.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.i1.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i47
  %i.bx = zext i16 %i.bu to i64
  %i.by = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bz, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit

bb.p:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i47
  %i.ca = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  %i.cb = extractvalue { i64, i8 } %i.ca, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit: ; preds = %bb.o, %bb.p
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.o ], [ %i.cb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.cc = trunc i64 %.pn.i.i.i to i32             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.cd = getelementptr inbounds nuw i8, ptr %.fca.0.extract22, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !212
  %i.cf = zext i32 %.fca.1.extract23 to i64
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %.sroa.0.0.copyload.i.i.i50 = load i16, ptr %i.cg, align 8, !tbaa !214 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i51 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.21.0.copyload.i.i.i52 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i51, align 8, !tbaa !216 ; 2 uses
  %.fca.0.insert.i.i.i53 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i50, 0
  %.fca.1.insert.i.i.i54 = insertvalue { i16, ptr } %.fca.0.insert.i.i.i53, ptr %.sroa.21.0.copyload.i.i.i52, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i50, ptr %4, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i52, ptr %i.ch, align 8
  %.not.i.i.i55 = icmp eq i16 %.sroa.0.0.copyload.i.i.i50, 0
  br i1 %.not.i.i.i55, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i63, label %.split.i.i56

.split.i.i56:                                     ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit
  %i.ci = add i16 %.sroa.0.0.copyload.i.i.i50, -19
  %spec.select.i.i.i.i57 = icmp ult i16 %i.ci, 197
  br i1 %spec.select.i.i.i.i57, label %bb.q, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i58

_ZNK4llvm3EVT8isVectorEv.exit.i.i63:              ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit
  %i.cj = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br i1 %i.cj, label %bb.r, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i58

bb.q:                                             ; preds = %.split.i.i56
  %i.ck = zext nneg i16 %.sroa.0.0.copyload.i.i.i50 to i64
  %i.cl = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !214
  %i.co = insertvalue { i16, ptr } poison, i16 %i.cn, 0
  %i.cp = insertvalue { i16, ptr } %i.co, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i58

bb.r:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i63
  %i.cq = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #36
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i58

_ZNK4llvm3EVT13getScalarTypeEv.exit.i58:          ; preds = %bb.r, %bb.q, %_ZNK4llvm3EVT8isVectorEv.exit.i.i63, %.split.i.i56
  %.fca.1.insert.merged.i.i59 = phi { i16, ptr } [ %i.cq, %bb.r ], [ %i.cp, %bb.q ], [ %.fca.1.insert.i.i.i54, %_ZNK4llvm3EVT8isVectorEv.exit.i.i63 ], [ %.fca.1.insert.i.i.i54, %.split.i.i56 ] ; 2 uses
  %i.cr = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i59, 0 ; 3 uses
  store i16 %i.cr, ptr %3, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i59, 1
  store ptr %i.ct, ptr %i.cs, align 8
  %.not.i.i1.i60 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.i1.i60, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i58
  %i.cu = zext i16 %i.cr to i64
  %i.cv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -16
  %.sroa.0.0.copyload.i.i.i.i61 = load i64, ptr %i.cw, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit64

bb.t:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i58
  %i.cx = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #37
  %i.cy = extractvalue { i64, i8 } %i.cx, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit64

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit64: ; preds = %bb.s, %bb.t
  %.pn.i.i.i62 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i61, %bb.s ], [ %i.cy, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.cz = trunc i64 %.pn.i.i.i62 to i32           ; 2 uses
  %i.da = urem i32 %i.cz, %i.cc
  %i.db = udiv i32 %i.cz, %i.cc
  %.not34 = icmp eq i32 %i.da, 0
  %i.dc = trunc i64 %.pn.i.i to i32
  %.not35 = icmp eq i32 %i.dc, %i.cc
  %or.cond96 = select i1 %.not34, i1 %.not35, i1 false
  br i1 %or.cond96, label %bb.u, label %"_ZZL24combineTruncationShufflePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGEENK3$_0clEj.exit"

bb.u:                                             ; preds = %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit64
  %i.dd = load i16, ptr %9, align 8, !tbaa !387   ; 3 uses
  %.not.i65 = icmp eq i16 %i.dd, 0
  br i1 %.not.i65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = zext i16 %i.dd to i64
  %i.df = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.de ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 -16
  %.sroa.0.0.copyload.i.i66 = load i64, ptr %i.dg, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.df, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i66, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.w:                                             ; preds = %bb.u
  %i.dh = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.v, %bb.w
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i, %bb.v ], [ %i.dh, %bb.w ] ; 2 uses
  %.fca.0.extract11 = extractvalue { i64, i8 } %.pn.i, 0
  %.fca.1.extract12 = extractvalue { i64, i8 } %.pn.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.di = load ptr, ptr %i.bg, align 8, !tbaa !212
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.bi ; 2 uses
  %.sroa.0.0.copyload.i.i.i67 = load i16, ptr %i.dj, align 8, !tbaa !214 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i68 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.21.0.copyload.i.i.i69 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i68, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i.i67, ptr %2, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i69, ptr %i.dk, align 8
  %.not.i.i70 = icmp eq i16 %.sroa.0.0.copyload.i.i.i67, 0
  br i1 %.not.i.i70, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.dl = zext i16 %.sroa.0.0.copyload.i.i.i67 to i64
  %i.dm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.dn, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.dm, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.y:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.do = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #37
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.x, %bb.y
  %.pn.i.i71 = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.x ], [ %i.do, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.fca.0.extract7 = extractvalue { i64, i8 } %.pn.i.i71, 0
  %.fca.1.extract8 = extractvalue { i64, i8 } %.pn.i.i71, 1
  %.not.i72 = icmp ne i64 %.fca.0.extract11, %.fca.0.extract7
  %i.dp = icmp ne i8 %.fca.1.extract12, %.fca.1.extract8
  %i.dq = select i1 %.not.i72, i1 true, i1 %i.dp
  br i1 %i.dq, label %"_ZZL24combineTruncationShufflePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGEENK3$_0clEj.exit", label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.not1.i = icmp eq i32 %i.ax, 0
  br i1 %.not1.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.dr = zext i32 %i.ax to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ac ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !198 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %indvars6.i = trunc i64 %indvars.iv.i to i32
  %i.dv = mul i32 %i.db, %indvars6.i              ; 2 uses
  %i.dw = icmp ult i32 %i.dv, %i.ax
  %i.dx = icmp eq i32 %i.dt, %i.dv
  %or.cond.i73 = and i1 %i.dw, %i.dx
  br i1 %or.cond.i73, label %bb.ac, label %"_ZZL24combineTruncationShufflePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGEENK3$_0clEj.exit"

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i74 = icmp eq i64 %indvars.iv.next.i, %i.dr
  br i1 %.not.i74, label %.loopexit, label %bb.aa, !llvm.loop !2831

.loopexit:                                        ; preds = %bb.ac, %bb.z
  %.sroa.26.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !216
  %i.dy = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %i.dd, ptr %.sroa.26.0.copyload, ptr %.sroa.080.0.copyload, i32 %.sroa.682.0.copyload) #36 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.dy, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.dy, 1
  br label %"_ZZL24combineTruncationShufflePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGEENK3$_0clEj.exit"

"_ZZL24combineTruncationShufflePN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGEENK3$_0clEj.exit": ; preds = %bb.ab, %bb.d, %.loopexit, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit, %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit64, %_ZNK4llvm3EVT9isIntegerEv.exit
  %.sroa.14.3 = phi i32 [ 0, %_ZNK4llvm3EVT9isIntegerEv.exit ], [ 0, %bb.d ], [ 0, %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit64 ], [ 0, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit ], [ %.fca.1.extract, %.loopexit ], [ 0, %bb.ab ]
  %.sroa.088.3 = phi ptr [ null, %_ZNK4llvm3EVT9isIntegerEv.exit ], [ null, %bb.d ], [ null, %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit64 ], [ null, %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit ], [ %.fca.0.extract, %.loopexit ], [ null, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.088.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.14.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL25partitionShuffleOfConcatsPN4llvm6SDNodeERNS_12SelectionDAGE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  %6 = alloca %"class.llvm::SmallVector.295", align 8 ; 14 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::ArrayRef.292", align 8 ; 3 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %14 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !214 ; 6 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !216 ; 3 uses
  store i16 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.c, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0 ; 2 uses
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.d = add i16 %.sroa.0.0.copyload.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.d, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.e = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.f = zext i16 %.sroa.0.0.copyload.i to i64
  %i.g = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !379
  %i.j = zext i16 %i.i to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.k = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.l = phi i32 [ %i.j, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !204  ; 4 uses
  %.sroa.0178.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !74 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.0170.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !74 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i16 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !571  ; 3 uses
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.s = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #37
  br i1 %i.s, label %bb.d, label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

bb.d:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit:    ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit, %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.t, ptr %6, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  store i32 0, ptr %i.u, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  store i32 4, ptr %i.v, align 4, !tbaa !77
end_hunk_9
begin_hunk_10_@_ZL23combineShuffleOfScalarsPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringE:bb.a

declare void @_ZN4llvm21narrowShuffleMaskEltsEiNS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL23combineShuffleOfBitcastPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(518435) %2, i1 noundef zeroext %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 11 uses
  %7 = alloca %"class.llvm::SmallVector.1448", align 8 ; 10 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"class.llvm::ArrayRef.292", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %.sroa.0105.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !74 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.093.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !74 ; 4 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.e, align 8, !tbaa !214 ; 4 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0105.0.copyload, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !72
  %.not = icmp eq i32 %i.h, 248
  br i1 %.not, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0105.0.copyload, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !204  ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !193
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !211
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !212
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.q, align 8, !tbaa !214 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !216 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.r, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.b
  %i.s = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i = icmp ult i16 %i.s, 197
  br i1 %spec.select.i.i, label %bb.c, label %.critedge

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.b
  %i.t = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 24 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %i.w = add i32 %i.v, -53
  %spec.select.i.i70 = icmp ult i32 %i.w, 2
  br i1 %spec.select.i.i70, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not67 = icmp eq i32 %i.v, 248
  br i1 %.not67, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !204  ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !193
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !211
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !212
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i.i71 = load i16, ptr %i.af, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i72 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.21.0.copyload.i.i73 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i72, align 8, !tbaa !216
  %.not.i76 = icmp ne i16 %.sroa.0.0.copyload.i.i71, %.sroa.0.0.copyload.i.i
  %i.ag = icmp ne ptr %.sroa.21.0.copyload.i.i73, %.sroa.21.0.copyload.i.i
  %i.ah = select i1 %.not.i76, i1 true, i1 %i.ag
  br i1 %i.ah, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %bb.c, %bb.e
  %.sroa.050.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !74 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.050.0.copyload, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !72
  %.not.i77 = icmp eq i32 %i.aj, 162
  br i1 %.not.i77, label %bb.f, label %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread114

bb.f:                                             ; preds = %.critedge2
  %.sroa.251.0.copyload = load i32, ptr %i.l, align 8, !tbaa !198
  %i.ak = call fastcc noundef zeroext i1 @_ZL26isConstantOrConstantVectorN4llvm7SDValueEbb(ptr nonnull %.sroa.050.0.copyload, i32 %.sroa.251.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.ak, label %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread, label %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit

_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit: ; preds = %bb.f
  %i.al = call noundef zeroext i1 @_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE(ptr noundef nonnull %.sroa.050.0.copyload) #36
  br i1 %i.al, label %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread, label %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread114

_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread: ; preds = %bb.f, %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit
  %i.am = load i32, ptr %i.u, align 8, !tbaa !72
  %i.an = add i32 %i.am, -53
  %spec.select.i.i78 = icmp ult i32 %i.an, 2
  br i1 %spec.select.i.i78, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !204 ; 2 uses
  %.sroa.047.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !74 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.047.0.copyload, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !72
  %.not.i79 = icmp eq i32 %i.ar, 162
  br i1 %.not.i79, label %bb.h, label %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread114

bb.h:                                             ; preds = %bb.g
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.248.0.copyload = load i32, ptr %.sroa.248.0..sroa_idx, align 8, !tbaa !198
  %i.as = call fastcc noundef zeroext i1 @_ZL26isConstantOrConstantVectorN4llvm7SDValueEbb(ptr nonnull %.sroa.047.0.copyload, i32 %.sroa.248.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.as, label %.critedge, label %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit81

_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit81: ; preds = %bb.h
  %i.at = call noundef zeroext i1 @_ZN4llvm3ISD32isBuildVectorOfConstantFPSDNodesEPKNS_6SDNodeE(ptr noundef nonnull %.sroa.047.0.copyload) #36
  br i1 %i.at, label %.critedge, label %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread114

_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread114: ; preds = %bb.g, %.critedge2, %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit81, %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread114
  %i.au = add i16 %.sroa.0.0.copyload.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.au, 53
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread114
  %i.av = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.aw = zext i16 %.sroa.0.0.copyload.i to i64
  %i.ax = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !379
  %i.ba = zext i16 %i.az to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.j:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.bb = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.j
  %i.bc = phi i32 [ %i.ba, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.bb, %bb.j ] ; 3 uses
  %i.bd = load i16, ptr %6, align 8, !tbaa !387   ; 5 uses
  %.not.i.i82 = icmp eq i16 %i.bd, 0              ; 2 uses
  br i1 %.not.i.i82, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i86, label %.split.i83

.split.i83:                                       ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.be = add i16 %i.bd, -163
  %spec.select.i.i.i84 = icmp ult i16 %i.be, 53
  br i1 %spec.select.i.i.i84, label %bb.k, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i85

_ZNK4llvm3EVT16isScalableVectorEv.exit.i86:       ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.bf = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i86, %.split.i83
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i85:   ; preds = %.split.i83
  %i.bg = zext i16 %i.bd to i64
  %i.bh = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !379
  %i.bk = zext i16 %i.bj to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit87

bb.l:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i86
  %i.bl = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit87

_ZNK4llvm3EVT20getVectorNumElementsEv.exit87:     ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i85, %bb.l
  %i.bm = phi i32 [ %i.bk, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i85 ], [ %i.bl, %bb.l ] ; 3 uses
  %.not68 = icmp sgt i32 %i.bc, %i.bm
  br i1 %.not68, label %bb.m, label %.critedge

bb.m:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit87
  %i.bn = srem i32 %i.bc, %i.bm
  %i.bo = sdiv i32 %i.bc, %i.bm
  %.not69 = icmp eq i32 %i.bn, 0
  br i1 %.not69, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  br i1 %3, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.sroa.240.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !216
  %.not.i.i.i.i = icmp eq i16 %i.bd, 1
  %i.bp = icmp eq ptr %.sroa.240.0.copyload, null
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.bp, i1 false
  br i1 %.not4.i.i.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i.i82, label %.critedge, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.br = zext i16 %i.bd to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !398
  %.not.i88 = icmp eq ptr %i.bt, null
  br i1 %.not.i88, label %.critedge, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit: ; preds = %bb.o, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  %.pre-phi = phi i64 [ %i.br, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 1, %bb.o ]
  %i.bu = getelementptr inbounds nuw [537 x i8], ptr %2, i64 %.pre-phi
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 6355
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !400
  %i.bx = and i8 %i.bw, -5
  %spec.select.i = icmp eq i8 %i.bx, 0
  br i1 %spec.select.i, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, %bb.n
  %i.by = call { ptr, i64 } @_ZNK4llvm19ShuffleVectorSDNode7getMaskEv(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  %i.ca = extractvalue { ptr, i64 } %i.by, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.cb, ptr %7, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.cc, align 8, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 12, ptr %i.cd, align 4, !tbaa !77
  %i.ce = call noundef zeroext i1 @_ZN4llvm20widenShuffleMaskEltsEiNS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef %i.bo, ptr %i.bz, i64 %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %7) #36
  br i1 %i.ce, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %7, align 8, !tbaa !43
  %i.cg = load i32, ptr %i.cc, align 8, !tbaa !76
  %i.ch = zext i32 %i.cg to i64
  %.sroa.031.0.copyload = load i16, ptr %6, align 8, !tbaa !214
  %.sroa.233.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !216
  %i.ci = load ptr, ptr %2, align 8, !tbaa !45
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 600
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(518435) %2, ptr %i.cf, i64 %i.ch, i16 %.sroa.031.0.copyload, ptr %.sroa.233.0.copyload) #36
  br i1 %i.cl, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !352
  store i64 %i.cn, ptr %8, align 8, !tbaa !352
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !351
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !396
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !204 ; 2 uses
  %.sroa.0105.0.copyload109 = load ptr, ptr %i.cr, align 8, !tbaa !74
  %.sroa.9.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.9.0.copyload111 = load i32, ptr %.sroa.9.0..sroa_idx110, align 8, !tbaa !198
  %i.cs = load i32, ptr %i.u, align 8, !tbaa !72
  %i.ct = add i32 %i.cs, -53
  %spec.select.i.i90 = icmp ult i32 %i.ct, 2
  br i1 %spec.select.i.i90, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.023.0.copyload = load i16, ptr %6, align 8, !tbaa !214
  %.sroa.225.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.cu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.023.0.copyload, ptr %.sroa.225.0.copyload) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.cu, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.cu, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.093.0.copyload, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !204 ; 2 uses
  %.sroa.026.0.copyload = load ptr, ptr %i.cw, align 8, !tbaa !74
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !198
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.026.0 = phi ptr [ %.fca.0.extract19, %bb.t ], [ %.sroa.026.0.copyload, %bb.u ]
  %.sroa.5.0 = phi i32 [ %.fca.1.extract20, %bb.t ], [ %.sroa.5.0.copyload, %bb.u ]
  %.sroa.015.0.copyload = load i16, ptr %6, align 8, !tbaa !214
  %.sroa.217.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !216
  store ptr %.sroa.026.0, ptr %9, align 8, !tbaa !74
  %.sroa.12.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.5.0, ptr %.sroa.12.0..sroa_idx101, align 8, !tbaa !198
  %.sroa.13.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx103, align 4
  %i.cx = load ptr, ptr %7, align 8, !tbaa !43
  store ptr %i.cx, ptr %10, align 8, !tbaa !573
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cz = load i32, ptr %i.cc, align 8, !tbaa !76
  %i.da = zext i32 %i.cz to i64
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !574
  %i.db = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.015.0.copyload, ptr %.sroa.217.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %.sroa.0105.0.copyload109, i32 %.sroa.9.0.copyload111, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.292") align 8 %10) #36 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.db, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.db, 1
  %.sroa.05.0.copyload = load i16, ptr %5, align 8, !tbaa !214
  %.sroa.27.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.dc = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.05.0.copyload, ptr %.sroa.27.0.copyload, ptr %.fca.0.extract8, i32 %.fca.1.extract9) #36 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.dc, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.dc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.q, %bb.v
  %.sroa.14.0 = phi i32 [ %.fca.1.extract, %bb.v ], [ 0, %bb.q ], [ 0, %bb.r ]
  %.sroa.0112.0 = phi ptr [ %.fca.0.extract, %bb.v ], [ null, %bb.q ], [ null, %bb.r ]
  %i.dd = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cb
  br i1 %i.de, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef %i.dd) #36
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.p, %bb.h, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit87, %bb.m, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread, %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit81, %bb.e, %.split, %bb.d, %_ZNK4llvm3EVT8isVectorEv.exit, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit
  %.sroa.14.1 = phi i32 [ 0, %bb.e ], [ %.sroa.14.0, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ], [ 0, %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit ], [ 0, %bb.d ], [ 0, %.split ], [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit87 ], [ 0, %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit81 ], [ 0, %bb.h ], [ 0, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ]
  %.sroa.0112.1 = phi ptr [ null, %bb.e ], [ %.sroa.0112.0, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ], [ null, %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit.thread ], [ null, %_ZNK4llvm3EVT8isVectorEv.exit ], [ null, %bb.d ], [ null, %.split ], [ null, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit87 ], [ null, %_ZL24isAnyConstantBuildVectorN4llvm7SDValueEb.exit81 ], [ null, %bb.h ], [ null, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit ], [ null, %bb.m ], [ null, %bb.p ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %.critedge
  %.sroa.14.2 = phi i32 [ %.sroa.14.1, %.critedge ], [ 0, %bb.a ]
  %.sroa.0112.2 = phi ptr [ %.sroa.0112.1, %.critedge ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0112.2, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.14.2, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEENK3$_1clEbPNS1_19ShuffleVectorSDNodeES6_NS1_7SDValueERKNS1_14TargetLoweringERS7_SB_RNS1_15SmallVectorImplIiEE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr %4, i32 %5, ptr noundef nonnull align 8 dereferenceable(518435) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212  ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.b, align 8, !tbaa !214 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %11, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !571
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.a
  %i.f = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i.i.i.i = icmp ult i16 %i.f, 53
  br i1 %spec.select.i.i.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i:     ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #37
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, %.split.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i: ; preds = %.split.i.i.i
  %i.h = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.i = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !379
  %i.l = zext i16 %i.k to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i
  %i.m = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #37
  br label %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit

_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i, %bb.c
  %i.n = phi i32 [ %i.l, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i ], [ %i.m, %bb.c ]
  %i.o = zext i32 %i.n to i64
end_hunk_10
begin_hunk_11_@_ZL36canCombineShuffleToExtendVectorInregjN4llvm3EVTESt8functionIFbjEERNS_12SelectionDAGERKNS_14TargetLoweringEbb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.s = add nsw i16 %2, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.s, 197
  br i1 %spec.select.i.i.i.i, label %bb.c, label %bb.e

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.t = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.u = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #37
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.split.i.i
  %i.v = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.n
  %i.w = getelementptr i8, ptr %i.v, i64 -2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !214
  %i.y = insertvalue { i16, ptr } poison, i16 %i.x, 0
  %i.z = insertvalue { i16, ptr } %i.y, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.d:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.aa = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #36
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.ab = phi i32 [ %i.t, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %i.r, %.split.i.i ]
  %i.ac = insertvalue { i16, ptr } poison, i16 %2, 0
  %i.ad = insertvalue { i16, ptr } %i.ac, ptr %3, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = phi i32 [ %i.ab, %bb.e ], [ %i.r, %bb.c ], [ %i.t, %bb.d ] ; 4 uses
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.ad, %bb.e ], [ %i.z, %bb.c ], [ %i.aa, %bb.d ] ; 2 uses
  %i.af = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.af, ptr %8, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.ah, ptr %i.ag, align 8
  %.not.i.i33 = icmp eq i16 %i.af, 0
  br i1 %.not.i.i33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ai = zext i16 %i.af to i64
  %i.aj = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ak, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.al = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #37
  %i.am = extractvalue { i64, i8 } %i.al, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.f, %bb.g
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.f ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.an = trunc i64 %.pn.i.i to i32
  %.not3265 = icmp ugt i32 %i.ae, 2
  br i1 %.not3265, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 6184
  %i.ar = zext nneg i32 %1 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.thread58
  %.02966 = phi i32 [ 2, %.lr.ph ], [ %i.bw, %.thread58 ] ; 5 uses
  %i.au = add i32 %.02966, -1
  %i.av = and i32 %i.au, %i.ae
  %.not31 = icmp eq i32 %i.av, 0
  br i1 %.not31, label %bb.i, label %.thread58

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !491 ; 2 uses
  %i.ax = mul i32 %.02966, %i.an                  ; 3 uses
  %i.ay = call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.ax)
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %.split.i.i34, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

.split.i.i34:                                     ; preds = %bb.i
  %i.ba = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ax, i1 true) ; 2 uses
  %i.bb = icmp samesign ult i32 %i.ba, 10
  br i1 %i.bb, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i:              ; preds = %.split.i.i34
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.ba to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  %i.bc = insertvalue { i16, ptr } poison, i16 %switch.offset.i.i, 0
  %i.bd = insertvalue { i16, ptr } %i.bc, ptr null, 1
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i:       ; preds = %.split.i.i34, %bb.i
  %i.be = call { i16, ptr } @_ZN4llvm3EVT20getExtendedIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %i.ax) #36
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !491
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i
  %i.bf = phi ptr [ %.pre, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i ], [ %i.aw, %_ZN4llvm3MVT12getIntegerVTEj.exit.i ]
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.be, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i ], [ %i.bd, %_ZN4llvm3MVT12getIntegerVTEj.exit.i ] ; 2 uses
  %i.bg = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.bh = call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %.02966, i1 true)
  %i.bi = lshr i32 %i.ae, %i.bh                   ; 2 uses
  %i.bj = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.bg, i32 noundef %i.bi) ; 2 uses
  %.not.i35 = icmp eq i16 %i.bj, 0
  br i1 %.not.i35, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit: ; preds = %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit
  %i.bk = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %i.bl = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i16 %i.bg, ptr %i.bk, i32 noundef %i.bi, i1 noundef zeroext false) #36 ; 2 uses
  %i.bm = extractvalue { i16, ptr } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { i16, ptr } %i.bl, 1
  %.not.i36 = icmp eq i16 %i.bm, 0
  br i1 %.not.i36, label %.thread58, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit
  %.sroa.0.0.i50 = phi i16 [ %i.bm, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ %i.bj, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit ] ; 2 uses
  %.sroa.3.0.i48 = phi ptr [ %i.bn, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ null, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit ]
  %i.bo = zext i16 %.sroa.0.0.i50 to i64          ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !398
  %.not62 = icmp eq ptr %i.bq, null
  br i1 %.not62, label %.thread58, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  br i1 %7, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, label %bb.k

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit: ; preds = %bb.j
  %gep = getelementptr inbounds nuw [537 x i8], ptr %invariant.gep, i64 %i.bo
  %i.br = load i8, ptr %gep, align 1, !tbaa !400
  %i.bs = and i8 %i.br, -5
  %spec.select.i = icmp eq i8 %i.bs, 0
  br i1 %spec.select.i, label %bb.k, label %.thread58

bb.k:                                             ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.02966, ptr %i.a, align 4, !tbaa !198
  %i.bt = load ptr, ptr %i.as, align 8, !tbaa !47
  %.not.i.i38 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i38, label %bb.l, label %_ZNKSt8functionIFbjEEclEj.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZSt25__throw_bad_function_callv() #39
  unreachable

_ZNKSt8functionIFbjEEclEj.exit:                   ; preds = %bb.k
  %i.bu = load ptr, ptr %i.at, align 8, !tbaa !998
  %i.bv = call noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #36, !inline_history !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bv, label %bb.m, label %.thread58

.thread58:                                        ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit, %_ZNKSt8functionIFbjEEclEj.exit, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %bb.h
  %i.bw = shl i32 %.02966, 1                      ; 2 uses
  %.not32 = icmp ult i32 %i.bw, %i.ae
  br i1 %.not32, label %bb.h, label %.critedge, !llvm.loop !2866

bb.m:                                             ; preds = %_ZNKSt8functionIFbjEEclEj.exit
  store i16 %.sroa.0.0.i50, ptr %0, align 8, !tbaa !214
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i48, ptr %.sroa.640.0..sroa_idx, align 8, !tbaa !216
  br label %.critedge

.critedge:                                        ; preds = %.thread58, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit, %_ZNK4llvm3EVT9isIntegerEv.exit, %_ZNK4llvm3EVT9isIntegerEv.exit.thread, %bb.m
  %.sink = phi i8 [ 1, %bb.m ], [ 0, %_ZNK4llvm3EVT9isIntegerEv.exit ], [ 0, %_ZNK4llvm3EVT9isIntegerEv.exit.thread ], [ 0, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ], [ 0, %.thread58 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bx, align 8, !tbaa !528
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbjEZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_0E9_M_invokeERKSt9_Any_dataOj"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #28 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !371   ; 2 uses
  %.val2 = load i32, ptr %.val, align 8           ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val3 = load ptr, ptr %i.a, align 8
  %.val4 = load i32, ptr %1, align 4, !tbaa !198  ; 2 uses
  %.not1.i.i.i = icmp eq i32 %.val2, 0
  br i1 %.not1.i.i.i, label %"_ZSt10__invoke_rIbRZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS0_12SelectionDAGERKNS0_14TargetLoweringEbE3$_0JjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.b = zext i32 %.val2 to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.val3, i64 %indvars.iv.i.i.i
  %i.d = load i32, ptr %i.c, align 4, !tbaa !198  ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = trunc nuw i64 %indvars.iv.i.i.i to i32   ; 2 uses
  %i.g = urem i32 %i.f, %.val4
  %i.h = udiv i32 %i.f, %.val4
  %i.i = icmp eq i32 %i.g, 0
  %i.j = icmp eq i32 %i.d, %i.h
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.c, label %"_ZSt10__invoke_rIbRZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS0_12SelectionDAGERKNS0_14TargetLoweringEbE3$_0JjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.b
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIbRZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS0_12SelectionDAGERKNS0_14TargetLoweringEbE3$_0JjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %.lr.ph.i.i.i, !llvm.loop !2867

"_ZSt10__invoke_rIbRZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS0_12SelectionDAGERKNS0_14TargetLoweringEbE3$_0JjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %bb.b, %bb.c, %bb.a
  %.not.lcssa.i.i.i = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.not.lcssa.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbjEZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !371
  store ptr %.val, ptr %0, align 8, !tbaa !371
  br label %"_ZNSt14_Function_base13_Base_managerIZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !870
  br label %"_ZNSt14_Function_base13_Base_managerIZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val5, i64 24, i1 false), !tbaa.struct !2868
  store ptr %i.a, ptr %0, align 8, !tbaa !371
  br label %"_ZNSt14_Function_base13_Base_managerIZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !371 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 24) #38
  br label %"_ZNSt14_Function_base13_Base_managerIZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL36combineShuffleToAnyExtendVectorInregPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8SmallSetINS_7SDValueELj16ESt4lessIS1_EE10insertImplIRKS1_EESt4pairINS_16SmallSetIteratorIS1_Lj16ES3_EEbEOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1475") align 8 %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load i64, ptr %i.a, align 8, !tbaa !826
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.e = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN4llvm7SDValueES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %2) ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i8 } %i.e, 0
  %.fca.1.extract12 = extractvalue { ptr, i8 } %i.e, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !43     ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76   ; 4 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %.not11.i = icmp eq i32 %i.h, 0
  %.sroa.05.0.copyload.pre = load ptr, ptr %2, align 8, !tbaa !74 ; 3 uses
  %.sroa.26.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.26.0.copyload.pre = load i32, ptr %.sroa.26.0..sroa_idx.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not11.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.0812.i = phi ptr [ %i.q, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %i.k = load ptr, ptr %.0812.i, align 8, !tbaa !193
  %i.l = icmp eq ptr %i.k, %.sroa.05.0.copyload.pre
  %i.m = getelementptr inbounds nuw i8, ptr %.0812.i, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, %.sroa.26.0.copyload.pre
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %_ZNK4llvm8SmallSetINS_7SDValueELj16ESt4lessIS1_EE5vfindERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0812.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.j
  br i1 %.not.i, label %_ZNK4llvm8SmallSetINS_7SDValueELj16ESt4lessIS1_EE5vfindERKS1_.exit, label %.lr.ph.i, !llvm.loop !2869

_ZNK4llvm8SmallSetINS_7SDValueELj16ESt4lessIS1_EE5vfindERKS1_.exit: ; preds = %.lr.ph.i, %bb.d
  %.1.i = phi ptr [ %.0812.i, %.lr.ph.i ], [ %i.j, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.i
  %.not = icmp eq ptr %.1.i, %i.r
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNK4llvm8SmallSetINS_7SDValueELj16ESt4lessIS1_EE5vfindERKS1_.exit
  %i.s = icmp ult i32 %i.h, 16
  br i1 %i.s, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.c, %bb.e
  %i.t = phi ptr [ %.1.i, %bb.e ], [ %i.f, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !77
  %.not.i20 = icmp ult i32 %i.h, %i.v
  br i1 %.not.i20, label %bb.g, label %bb.f, !prof !78

bb.f:                                             ; preds = %.thread
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.05.0.copyload.pre, i32 %.sroa.26.0.copyload.pre)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.g:                                             ; preds = %.thread
  store ptr %.sroa.05.0.copyload.pre, ptr %i.t, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %.sroa.26.0.copyload.pre, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.w = load i32, ptr %i.g, align 8, !tbaa !76
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.g, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.f, %bb.g
  %i.y = phi i32 [ %.pre, %bb.f ], [ %i.x, %bb.g ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !43
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  tail call void @_ZNSt3setIN4llvm7SDValueESt4lessIS1_ESaIS1_EE6insertISt13move_iteratorIPS1_EEEvT_SA_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr %i.f, ptr nonnull %.1.i)
  store i32 0, ptr %i.g, align 8, !tbaa !76
  %i.ae = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN4llvm7SDValueES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ae, 0
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm8SmallSetINS_7SDValueELj16ESt4lessIS1_EE5vfindERKS1_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %bb.h, %bb.b
  %.sink44 = phi i8 [ 0, %bb.b ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ 0, %bb.h ], [ 1, %_ZNK4llvm8SmallSetINS_7SDValueELj16ESt4lessIS1_EE5vfindERKS1_.exit ]
  %.1.i.sink = phi ptr [ %.fca.0.extract11, %bb.b ], [ %i.ac, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %.fca.0.extract, %bb.h ], [ %.1.i, %_ZNK4llvm8SmallSetINS_7SDValueELj16ESt4lessIS1_EE5vfindERKS1_.exit ]
  %.sink = phi i8 [ %.fca.1.extract12, %bb.b ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ 1, %bb.h ], [ 0, %_ZNK4llvm8SmallSetINS_7SDValueELj16ESt4lessIS1_EE5vfindERKS1_.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink44, ptr %i.af, align 8, !tbaa !2870
  %i.ag = ptrtoint ptr %.1.i.sink to i64
  store i64 %i.ag, ptr %0, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ah, align 8, !tbaa !1001
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3setIN4llvm7SDValueESt4lessIS1_ESaIS1_EE6insertISt13move_iteratorIPS1_EEEvT_SA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not7.i = icmp eq ptr %1, %2
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIN4llvm7SDValueES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE22_M_insert_range_uniqueISt13move_iteratorIPS1_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %i.b, align 8, !tbaa !826
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIN4llvm7SDValueES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i, %.lr.ph.i
  %i.f = phi i64 [ %.pre, %.lr.ph.i ], [ %i.bf, %_ZNSt8_Rb_treeIN4llvm7SDValueES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i ] ; 3 uses
  %.sroa.04.08.i = phi ptr [ %1, %.lr.ph.i ], [ %i.bg, %_ZNSt8_Rb_treeIN4llvm7SDValueES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i ] ; 10 uses
  %.not.i4 = icmp eq i64 %i.f, 0
  br i1 %.not.i4, label %_ZNKSt4lessIN4llvm7SDValueEEclERKS1_S4_.exit.thread79.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !1004 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !74   ; 2 uses
  %i.l = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !74 ; 2 uses
  %i.m = icmp ult ptr %i.k, %i.l
  br i1 %i.m, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult ptr %i.l, %i.k
  br i1 %i.n, label %_ZNKSt4lessIN4llvm7SDValueEEclERKS1_S4_.exit.thread79.i, label %_ZNKSt4lessIN4llvm7SDValueEEclERKS1_S4_.exit.i

_ZNKSt4lessIN4llvm7SDValueEEclERKS1_S4_.exit.i:   ; preds = %bb.d
  %i.o = load i32, ptr %i.i, align 8, !tbaa !198
  %i.p = load i32, ptr %i.j, align 8, !tbaa !198
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %bb.h, label %_ZNKSt4lessIN4llvm7SDValueEEclERKS1_S4_.exit.thread79.i

_ZNKSt4lessIN4llvm7SDValueEEclERKS1_S4_.exit.thread79.i: ; preds = %_ZNKSt4lessIN4llvm7SDValueEEclERKS1_S4_.exit.i, %bb.d, %bb.b
  %.02124.i.i = load ptr, ptr %i.d, align 8, !tbaa !1004 ; 2 uses
  %.not25.i.i = icmp eq ptr %.02124.i.i, null
  br i1 %.not25.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

end_hunk_11
